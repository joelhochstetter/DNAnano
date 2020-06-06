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
	<24.464491, 34.990444, 35.455494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338158, 35.069538, 35.084301>,  <24.262358, 35.116993, 34.861584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.338158, 35.069538, 35.084301>,  <24.464491, 34.990444, 35.455494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.338158, 35.069538, 35.084301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735763, -0.566500, -0.371121,
		-0.599086, -0.799987, 0.033431,
		-0.315831, 0.197736, -0.927983,
		24.243408, 35.128860, 34.805904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.516228, 34.370560, 35.164742>,  <24.464491, 34.990444, 35.455494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.516228, 34.370560, 35.164742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550396, 34.664330, 34.895424>,  <24.570896, 34.840591, 34.733833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.550396, 34.664330, 34.895424>,  <24.516228, 34.370560, 35.164742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.550396, 34.664330, 34.895424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757614, -0.486761, -0.434838,
		-0.647089, -0.472954, -0.597988,
		0.085419, 0.734424, -0.673294,
		24.576021, 34.884655, 34.693436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.622990, 34.180920, 34.447094>,  <24.516228, 34.370560, 35.164742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.622990, 34.180920, 34.447094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810331, 34.534149, 34.458572>,  <24.922735, 34.746086, 34.465458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.810331, 34.534149, 34.458572>,  <24.622990, 34.180920, 34.447094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.810331, 34.534149, 34.458572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876150, -0.468381, 0.113934,
		0.114053, -0.028220, -0.993074,
		0.468352, 0.883076, 0.028695,
		24.950836, 34.799072, 34.467182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.211798, 34.357784, 33.910973>,  <24.622990, 34.180920, 34.447094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.211798, 34.357784, 33.910973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237213, 34.497406, 34.284950>,  <25.252462, 34.581181, 34.509338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.237213, 34.497406, 34.284950>,  <25.211798, 34.357784, 33.910973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.237213, 34.497406, 34.284950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775014, -0.607480, 0.174129,
		0.628741, 0.713533, -0.309119,
		0.063537, 0.349054, 0.934946,
		25.256273, 34.602123, 34.565434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.926880, 34.667362, 34.089710>,  <25.211798, 34.357784, 33.910973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.926880, 34.667362, 34.089710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724644, 34.495655, 34.389072>,  <25.603302, 34.392632, 34.568687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.724644, 34.495655, 34.389072>,  <25.926880, 34.667362, 34.089710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.724644, 34.495655, 34.389072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808047, -0.539619, 0.236371,
		0.302385, 0.724251, 0.619696,
		-0.505592, -0.429268, 0.748402,
		25.572966, 34.366875, 34.613594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.202696, 34.840340, 34.777695>,  <25.926880, 34.667362, 34.089710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.202696, 34.840340, 34.777695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041630, 34.475185, 34.804508>,  <25.944990, 34.256092, 34.820599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.041630, 34.475185, 34.804508>,  <26.202696, 34.840340, 34.777695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.041630, 34.475185, 34.804508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910488, -0.391916, 0.131957,
		-0.094188, 0.114172, 0.988986,
		-0.402665, -0.912889, 0.067038,
		25.920830, 34.201317, 34.824619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970001, 34.898209, 34.570625>,  <26.202696, 34.840340, 34.777695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970001, 34.898209, 34.570625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333450, 34.949974, 34.729450>,  <27.551519, 34.981033, 34.824745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.333450, 34.949974, 34.729450>,  <26.970001, 34.898209, 34.570625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.333450, 34.949974, 34.729450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355293, 0.260160, -0.897822,
		-0.219488, 0.956854, 0.190408,
		0.908621, 0.129411, 0.397065,
		27.606037, 34.988796, 34.848568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.329679, 35.589764, 34.581535>,  <26.970001, 34.898209, 34.570625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.329679, 35.589764, 34.581535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626957, 35.322247, 34.573681>,  <27.805323, 35.161736, 34.568970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.626957, 35.322247, 34.573681>,  <27.329679, 35.589764, 34.581535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.626957, 35.322247, 34.573681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483033, 0.556615, -0.675913,
		0.462972, 0.492850, 0.736719,
		0.743193, -0.668789, -0.019635,
		27.849915, 35.121609, 34.567791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.790545, 35.997387, 34.312431>,  <27.329679, 35.589764, 34.581535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.790545, 35.997387, 34.312431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975992, 35.643063, 34.304451>,  <28.087261, 35.430470, 34.299664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975992, 35.643063, 34.304451>,  <27.790545, 35.997387, 34.312431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975992, 35.643063, 34.304451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475175, 0.267577, -0.838219,
		0.747842, 0.379133, 0.544969,
		0.463618, -0.885811, -0.019951,
		28.115078, 35.377319, 34.298466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.476381, 36.141850, 34.211105>,  <27.790545, 35.997387, 34.312431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.476381, 36.141850, 34.211105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434044, 35.763805, 34.087448>,  <28.408642, 35.536980, 34.013252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.434044, 35.763805, 34.087448>,  <28.476381, 36.141850, 34.211105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.434044, 35.763805, 34.087448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561507, 0.199778, -0.802993,
		0.820675, -0.258579, 0.509539,
		-0.105843, -0.945106, -0.309147,
		28.402290, 35.480274, 33.994705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.151365, 35.990810, 34.086067>,  <28.476381, 36.141850, 34.211105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.151365, 35.990810, 34.086067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918205, 35.761703, 33.855534>,  <28.778309, 35.624237, 33.717213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.918205, 35.761703, 33.855534>,  <29.151365, 35.990810, 34.086067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.918205, 35.761703, 33.855534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598548, 0.177015, -0.781285,
		0.549517, -0.800375, 0.239648,
		-0.582899, -0.572770, -0.576336,
		28.743336, 35.589874, 33.682632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633057, 35.809845, 33.587376>,  <29.151365, 35.990810, 34.086067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633057, 35.809845, 33.587376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276382, 35.715302, 33.432957>,  <29.062378, 35.658573, 33.340305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.276382, 35.715302, 33.432957>,  <29.633057, 35.809845, 33.587376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.276382, 35.715302, 33.432957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339928, 0.213516, -0.915893,
		0.298911, -0.947915, -0.110042,
		-0.891684, -0.236364, -0.386045,
		29.008877, 35.644394, 33.317142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.773148, 35.425323, 33.079502>,  <29.633057, 35.809845, 33.587376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.773148, 35.425323, 33.079502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422005, 35.598831, 32.998295>,  <29.211319, 35.702934, 32.949570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.422005, 35.598831, 32.998295>,  <29.773148, 35.425323, 33.079502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.422005, 35.598831, 32.998295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310251, 0.192136, -0.931036,
		-0.364848, -0.880300, -0.303245,
		-0.877856, 0.433768, -0.203013,
		29.158648, 35.728962, 32.937389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622194, 35.142578, 32.546337>,  <29.773148, 35.425323, 33.079502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622194, 35.142578, 32.546337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362461, 35.446754, 32.550331>,  <29.206621, 35.629261, 32.552727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.362461, 35.446754, 32.550331>,  <29.622194, 35.142578, 32.546337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.362461, 35.446754, 32.550331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282206, 0.253124, -0.925358,
		-0.706205, -0.598049, -0.378962,
		-0.649334, 0.760438, 0.009985,
		29.167662, 35.674885, 32.553326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.419630, 35.086060, 31.840725>,  <29.622194, 35.142578, 32.546337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.419630, 35.086060, 31.840725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315599, 35.457977, 31.944912>,  <29.253181, 35.681129, 32.007423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315599, 35.457977, 31.944912>,  <29.419630, 35.086060, 31.840725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315599, 35.457977, 31.944912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313022, 0.336367, -0.888186,
		-0.913443, -0.149465, -0.378528,
		-0.260077, 0.929794, 0.260466,
		29.237576, 35.736916, 32.023052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058060, 35.325748, 31.263958>,  <29.419630, 35.086060, 31.840725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058060, 35.325748, 31.263958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183195, 35.638203, 31.480091>,  <29.258276, 35.825676, 31.609770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.183195, 35.638203, 31.480091>,  <29.058060, 35.325748, 31.263958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.183195, 35.638203, 31.480091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337205, 0.440485, -0.832025,
		-0.887932, 0.442494, -0.125601,
		0.312841, 0.781136, 0.540331,
		29.277048, 35.872543, 31.642191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832817, 36.054161, 30.929096>,  <29.058060, 35.325748, 31.263958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832817, 36.054161, 30.929096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123434, 36.151119, 31.186274>,  <29.297804, 36.209293, 31.340580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.123434, 36.151119, 31.186274>,  <28.832817, 36.054161, 30.929096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.123434, 36.151119, 31.186274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479458, 0.491416, -0.727070,
		-0.492195, 0.836512, 0.240814,
		0.726543, 0.242400, 0.642945,
		29.341396, 36.223839, 31.379156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.005306, 36.863098, 30.951197>,  <28.832817, 36.054161, 30.929096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.005306, 36.863098, 30.951197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334940, 36.684784, 31.091005>,  <29.532721, 36.577797, 31.174891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.334940, 36.684784, 31.091005>,  <29.005306, 36.863098, 30.951197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.334940, 36.684784, 31.091005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552099, 0.493970, -0.671699,
		0.126778, 0.746506, 0.653189,
		0.824083, -0.445782, 0.349521,
		29.582165, 36.551048, 31.195862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.631388, 37.457840, 31.089600>,  <29.005306, 36.863098, 30.951197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.631388, 37.457840, 31.089600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823893, 37.107422, 31.077419>,  <29.939396, 36.897171, 31.070110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823893, 37.107422, 31.077419>,  <29.631388, 37.457840, 31.089600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823893, 37.107422, 31.077419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718855, 0.414311, -0.558206,
		0.501631, 0.246753, 0.829144,
		0.481262, -0.876048, -0.030452,
		29.968271, 36.844608, 31.068283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.304394, 37.629551, 30.913065>,  <29.631388, 37.457840, 31.089600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.304394, 37.629551, 30.913065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324171, 37.231140, 30.883450>,  <30.336037, 36.992092, 30.865681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.324171, 37.231140, 30.883450>,  <30.304394, 37.629551, 30.913065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324171, 37.231140, 30.883450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762907, 0.085504, -0.640829,
		0.644615, -0.024799, 0.764105,
		0.049442, -0.996029, -0.074037,
		30.339003, 36.932331, 30.861238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.151535, 37.457546, 30.935471>,  <30.304394, 37.629551, 30.913065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.151535, 37.457546, 30.935471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010885, 37.112991, 30.788843>,  <30.926495, 36.906258, 30.700867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.010885, 37.112991, 30.788843>,  <31.151535, 37.457546, 30.935471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.010885, 37.112991, 30.788843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484266, 0.167741, -0.858690,
		0.801152, -0.479456, 0.358158,
		-0.351626, -0.861385, -0.366571,
		30.905397, 36.854576, 30.678871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720890, 36.948788, 30.762844>,  <31.151535, 37.457546, 30.935471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720890, 36.948788, 30.762844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392826, 36.907074, 30.537823>,  <31.195988, 36.882046, 30.402811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.392826, 36.907074, 30.537823>,  <31.720890, 36.948788, 30.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.392826, 36.907074, 30.537823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556227, 0.084924, -0.826680,
		0.133986, -0.990915, -0.011644,
		-0.820158, -0.104287, -0.562552,
		31.146778, 36.875790, 30.369057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.949482, 36.419445, 30.413355>,  <31.720890, 36.948788, 30.762844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.949482, 36.419445, 30.413355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651434, 36.602154, 30.218971>,  <31.472605, 36.711781, 30.102341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.651434, 36.602154, 30.218971>,  <31.949482, 36.419445, 30.413355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.651434, 36.602154, 30.218971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590198, 0.112281, -0.799412,
		-0.310587, -0.882468, -0.353251,
		-0.745119, 0.456775, -0.485958,
		31.427898, 36.739185, 30.073183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856607, 36.077377, 29.755224>,  <31.949482, 36.419445, 30.413355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856607, 36.077377, 29.755224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700577, 36.439613, 29.688599>,  <31.606958, 36.656956, 29.648624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.700577, 36.439613, 29.688599>,  <31.856607, 36.077377, 29.755224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700577, 36.439613, 29.688599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678383, 0.160332, -0.717001,
		-0.622605, -0.392678, -0.676880,
		-0.390076, 0.905592, -0.166563,
		31.583553, 36.711292, 29.638630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038757, 36.220306, 29.038103>,  <31.856607, 36.077377, 29.755224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038757, 36.220306, 29.038103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981705, 36.581493, 29.200239>,  <31.947474, 36.798206, 29.297522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.981705, 36.581493, 29.200239>,  <32.038757, 36.220306, 29.038103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.981705, 36.581493, 29.200239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549012, 0.412929, -0.726688,
		-0.823555, 0.118889, -0.554638,
		-0.142631, 0.902970, 0.405341,
		31.938915, 36.852383, 29.321842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789371, 36.685112, 28.516399>,  <32.038757, 36.220306, 29.038103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789371, 36.685112, 28.516399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982412, 36.906876, 28.787611>,  <32.098236, 37.039932, 28.950338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.982412, 36.906876, 28.787611>,  <31.789371, 36.685112, 28.516399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.982412, 36.906876, 28.787611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516364, 0.445193, -0.731555,
		-0.707435, 0.703159, -0.071427,
		0.482601, 0.554410, 0.678031,
		32.127193, 37.073200, 28.991020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.623234, 37.154690, 27.940636>,  <31.789371, 36.685112, 28.516399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.623234, 37.154690, 27.940636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430321, 37.457592, 27.764465>,  <31.314573, 37.639332, 27.658764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.430321, 37.457592, 27.764465>,  <31.623234, 37.154690, 27.940636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.430321, 37.457592, 27.764465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405264, -0.638589, -0.654191,
		-0.776638, -0.137015, 0.614866,
		-0.482280, 0.757252, -0.440425,
		31.285637, 37.684769, 27.632338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085548, 37.179810, 27.447205>,  <31.623234, 37.154690, 27.940636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085548, 37.179810, 27.447205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691164, 37.205723, 27.508764>,  <30.454533, 37.221272, 27.545700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.691164, 37.205723, 27.508764>,  <31.085548, 37.179810, 27.447205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.691164, 37.205723, 27.508764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130856, 0.872292, 0.471150,
		-0.103721, 0.484674, -0.868523,
		-0.985961, 0.064783, 0.153897,
		30.395376, 37.225159, 27.554934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.826576, 37.879551, 27.228357>,  <31.085548, 37.179810, 27.447205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.826576, 37.879551, 27.228357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571501, 37.706635, 27.483379>,  <30.418455, 37.602886, 27.636393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.571501, 37.706635, 27.483379>,  <30.826576, 37.879551, 27.228357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.571501, 37.706635, 27.483379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083345, 0.784101, 0.615012,
		-0.765772, 0.445324, -0.463984,
		-0.637689, -0.432288, 0.637557,
		30.380194, 37.576946, 27.674646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.358435, 38.400677, 27.415485>,  <30.826576, 37.879551, 27.228357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.358435, 38.400677, 27.415485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373619, 38.119717, 27.699795>,  <30.382730, 37.951141, 27.870380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373619, 38.119717, 27.699795>,  <30.358435, 38.400677, 27.415485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373619, 38.119717, 27.699795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017740, 0.711647, 0.702313,
		-0.999122, -0.014051, 0.039475,
		0.037960, -0.702397, 0.710773,
		30.385008, 37.908997, 27.913027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263210, 39.060646, 27.139549>,  <30.358435, 38.400677, 27.415485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263210, 39.060646, 27.139549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491722, 39.044292, 27.467443>,  <30.628830, 39.034481, 27.664181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.491722, 39.044292, 27.467443>,  <30.263210, 39.060646, 27.139549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491722, 39.044292, 27.467443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046167, 0.995577, 0.081826,
		-0.819456, -0.084590, 0.566866,
		0.571280, -0.040882, 0.819736,
		30.663107, 39.032028, 27.713364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024744, 39.642609, 27.441742>,  <30.263210, 39.060646, 27.139549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024744, 39.642609, 27.441742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314417, 39.506260, 27.681532>,  <30.488220, 39.424450, 27.825405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.314417, 39.506260, 27.681532>,  <30.024744, 39.642609, 27.441742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.314417, 39.506260, 27.681532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178432, 0.932311, 0.314577,
		-0.666127, -0.120845, 0.735984,
		0.724181, -0.340871, 0.599475,
		30.531672, 39.403999, 27.861374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.871090, 39.832088, 28.193743>,  <30.024744, 39.642609, 27.441742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.871090, 39.832088, 28.193743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257668, 39.774261, 28.108810>,  <30.489614, 39.739567, 28.057852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.257668, 39.774261, 28.108810>,  <29.871090, 39.832088, 28.193743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.257668, 39.774261, 28.108810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211589, 0.916711, 0.338925,
		0.145648, -0.372479, 0.916540,
		0.966445, -0.144566, -0.212330,
		30.547602, 39.730892, 28.045111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352154, 39.866497, 28.803064>,  <29.871090, 39.832088, 28.193743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352154, 39.866497, 28.803064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561598, 39.976494, 28.480522>,  <30.687263, 40.042492, 28.286997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.561598, 39.976494, 28.480522>,  <30.352154, 39.866497, 28.803064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561598, 39.976494, 28.480522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156881, 0.899167, 0.408518,
		0.837389, -0.340406, 0.427672,
		0.523610, 0.274995, -0.806356,
		30.718681, 40.058990, 28.238615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.985163, 39.746647, 29.390566>,  <30.352154, 39.866497, 28.803064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.985163, 39.746647, 29.390566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999027, 40.141010, 29.456026>,  <31.007347, 40.377628, 29.495302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.999027, 40.141010, 29.456026>,  <30.985163, 39.746647, 29.390566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999027, 40.141010, 29.456026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237803, -0.150908, 0.959519,
		0.970695, -0.072176, 0.229221,
		0.034663, 0.985909, 0.163649,
		31.009426, 40.436783, 29.505121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564934, 40.079330, 29.743532>,  <30.985163, 39.746647, 29.390566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564934, 40.079330, 29.743532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201832, 40.240620, 29.789820>,  <30.983971, 40.337395, 29.817593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.201832, 40.240620, 29.789820>,  <31.564934, 40.079330, 29.743532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201832, 40.240620, 29.789820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037631, -0.196468, 0.979788,
		0.417810, 0.893762, 0.163171,
		-0.907755, 0.403225, 0.115720,
		30.929506, 40.361588, 29.824535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586273, 40.620903, 30.210121>,  <31.564934, 40.079330, 29.743532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586273, 40.620903, 30.210121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245451, 40.412766, 30.187336>,  <31.040956, 40.287884, 30.173664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.245451, 40.412766, 30.187336>,  <31.586273, 40.620903, 30.210121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245451, 40.412766, 30.187336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064862, -0.212940, 0.974910,
		-0.519415, 0.826984, 0.215187,
		-0.852057, -0.520340, -0.056964,
		30.989834, 40.256664, 30.170246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172472, 40.730949, 30.857420>,  <31.586273, 40.620903, 30.210121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172472, 40.730949, 30.857420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025553, 40.394936, 30.697702>,  <30.937401, 40.193329, 30.601871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.025553, 40.394936, 30.697702>,  <31.172472, 40.730949, 30.857420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.025553, 40.394936, 30.697702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160994, -0.365399, 0.916823,
		-0.916063, 0.401033, -0.001029,
		-0.367300, -0.840033, -0.399293,
		30.915363, 40.142925, 30.577915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.634594, 40.539623, 31.323217>,  <31.172472, 40.730949, 30.857420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.634594, 40.539623, 31.323217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677214, 40.201405, 31.113955>,  <30.702785, 39.998474, 30.988398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.677214, 40.201405, 31.113955>,  <30.634594, 40.539623, 31.323217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.677214, 40.201405, 31.113955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149567, -0.533795, 0.832281,
		-0.982994, -0.010430, -0.183341,
		0.106547, -0.845549, -0.523157,
		30.709177, 39.947739, 30.957006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976181, 40.067520, 31.376610>,  <30.634594, 40.539623, 31.323217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976181, 40.067520, 31.376610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291679, 39.837151, 31.290638>,  <30.480978, 39.698929, 31.239056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.291679, 39.837151, 31.290638>,  <29.976181, 40.067520, 31.376610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.291679, 39.837151, 31.290638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193795, -0.564768, 0.802172,
		-0.583383, -0.591051, -0.557067,
		0.788738, -0.575930, -0.214934,
		30.528303, 39.664375, 31.226160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705158, 39.443245, 31.356174>,  <29.976181, 40.067520, 31.376610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705158, 39.443245, 31.356174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097403, 39.399807, 31.421423>,  <30.332748, 39.373745, 31.460573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097403, 39.399807, 31.421423>,  <29.705158, 39.443245, 31.356174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097403, 39.399807, 31.421423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195945, -0.555114, 0.808365,
		0.002766, -0.824655, -0.565630,
		0.980611, -0.108596, 0.163123,
		30.391586, 39.367229, 31.470360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.747231, 38.723335, 31.471796>,  <29.705158, 39.443245, 31.356174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.747231, 38.723335, 31.471796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097454, 38.869419, 31.598299>,  <30.307589, 38.957069, 31.674200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.097454, 38.869419, 31.598299>,  <29.747231, 38.723335, 31.471796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.097454, 38.869419, 31.598299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049140, -0.583907, 0.810332,
		0.480606, -0.725034, -0.493298,
		0.875559, 0.365210, 0.316257,
		30.360123, 38.978981, 31.693176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.156406, 38.199867, 31.659473>,  <29.747231, 38.723335, 31.471796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.156406, 38.199867, 31.659473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307299, 38.510208, 31.861759>,  <30.397835, 38.696411, 31.983131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.307299, 38.510208, 31.861759>,  <30.156406, 38.199867, 31.659473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307299, 38.510208, 31.861759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106560, -0.506071, 0.855884,
		0.919969, -0.376755, -0.108230,
		0.377230, 0.775854, 0.505716,
		30.420467, 38.742966, 32.013474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719877, 37.890862, 31.947130>,  <30.156406, 38.199867, 31.659473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719877, 37.890862, 31.947130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661396, 38.232601, 32.146614>,  <30.626308, 38.437645, 32.266304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661396, 38.232601, 32.146614>,  <30.719877, 37.890862, 31.947130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661396, 38.232601, 32.146614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112436, -0.486511, 0.866409,
		0.982844, 0.182744, -0.024931,
		-0.146202, 0.854348, 0.498712,
		30.617535, 38.488907, 32.296227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.236515, 37.962559, 32.360577>,  <30.719877, 37.890862, 31.947130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.236515, 37.962559, 32.360577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927578, 38.163868, 32.515598>,  <30.742216, 38.284653, 32.608612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.927578, 38.163868, 32.515598>,  <31.236515, 37.962559, 32.360577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.927578, 38.163868, 32.515598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183148, -0.407776, 0.894525,
		0.608228, 0.761861, 0.222770,
		-0.772344, 0.503275, 0.387555,
		30.695875, 38.314850, 32.631866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515486, 38.340038, 32.989735>,  <31.236515, 37.962559, 32.360577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515486, 38.340038, 32.989735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118071, 38.334774, 33.034832>,  <30.879622, 38.331615, 33.061890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.118071, 38.334774, 33.034832>,  <31.515486, 38.340038, 32.989735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118071, 38.334774, 33.034832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110196, -0.350069, 0.930220,
		0.027227, 0.936631, 0.349256,
		-0.993537, -0.013159, 0.112744,
		30.820009, 38.330826, 33.068657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366802, 38.501587, 33.813210>,  <31.515486, 38.340038, 32.989735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366802, 38.501587, 33.813210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057581, 38.309868, 33.646999>,  <30.872047, 38.194836, 33.547272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.057581, 38.309868, 33.646999>,  <31.366802, 38.501587, 33.813210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.057581, 38.309868, 33.646999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172939, -0.470993, 0.865019,
		-0.610309, 0.740568, 0.281215,
		-0.773055, -0.479296, -0.415524,
		30.825665, 38.166080, 33.522343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850122, 38.542866, 34.368946>,  <31.366802, 38.501587, 33.813210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850122, 38.542866, 34.368946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718834, 38.254387, 34.124931>,  <30.640060, 38.081299, 33.978523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.718834, 38.254387, 34.124931>,  <30.850122, 38.542866, 34.368946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.718834, 38.254387, 34.124931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378134, -0.491494, 0.784505,
		-0.865613, 0.488165, -0.111392,
		-0.328220, -0.721199, -0.610036,
		30.620367, 38.038029, 33.941921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352962, 38.218647, 34.719543>,  <30.850122, 38.542866, 34.368946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352962, 38.218647, 34.719543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445395, 37.939480, 34.448395>,  <30.500854, 37.771980, 34.285706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.445395, 37.939480, 34.448395>,  <30.352962, 38.218647, 34.719543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.445395, 37.939480, 34.448395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159885, -0.714500, 0.681122,
		-0.959708, -0.049012, -0.276693,
		0.231081, -0.697917, -0.677875,
		30.514719, 37.730106, 34.245033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.864456, 37.730099, 34.872616>,  <30.352962, 38.218647, 34.719543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.864456, 37.730099, 34.872616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135368, 37.519291, 34.667271>,  <30.297916, 37.392807, 34.544064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135368, 37.519291, 34.667271>,  <29.864456, 37.730099, 34.872616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135368, 37.519291, 34.667271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102801, -0.758712, 0.643264,
		-0.728503, -0.382899, -0.568042,
		0.677285, -0.527014, -0.513361,
		30.338552, 37.361187, 34.513260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.600267, 37.056168, 34.649075>,  <29.864456, 37.730099, 34.872616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.600267, 37.056168, 34.649075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987358, 36.967281, 34.601532>,  <30.219612, 36.913948, 34.573006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.987358, 36.967281, 34.601532>,  <29.600267, 37.056168, 34.649075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.987358, 36.967281, 34.601532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170442, -0.924545, 0.340832,
		-0.185627, -0.309573, -0.932581,
		0.967725, -0.222219, -0.118857,
		30.277676, 36.900616, 34.565876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.596289, 36.400349, 34.579762>,  <29.600267, 37.056168, 34.649075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.596289, 36.400349, 34.579762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977501, 36.468742, 34.679756>,  <30.206228, 36.509781, 34.739754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.977501, 36.468742, 34.679756>,  <29.596289, 36.400349, 34.579762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.977501, 36.468742, 34.679756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070256, -0.927688, 0.366686,
		0.294606, -0.331901, -0.896130,
		0.953033, 0.170987, 0.249984,
		30.263411, 36.520039, 34.754753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.936600, 35.826340, 34.382519>,  <29.596289, 36.400349, 34.579762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.936600, 35.826340, 34.382519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184803, 35.991714, 34.649063>,  <30.333725, 36.090939, 34.808990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.184803, 35.991714, 34.649063>,  <29.936600, 35.826340, 34.382519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.184803, 35.991714, 34.649063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137912, -0.894021, 0.426270,
		0.771977, -0.172605, -0.611767,
		0.620509, 0.413441, 0.666359,
		30.370956, 36.115746, 34.848972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542524, 35.482281, 34.411591>,  <29.936600, 35.826340, 34.382519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542524, 35.482281, 34.411591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502993, 35.627483, 34.782204>,  <30.479273, 35.714603, 35.004570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.502993, 35.627483, 34.782204>,  <30.542524, 35.482281, 34.411591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.502993, 35.627483, 34.782204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061816, -0.927053, 0.369800,
		0.993183, 0.093821, 0.069181,
		-0.098829, 0.363002, 0.926532,
		30.473345, 35.736385, 35.060162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748556, 34.895473, 34.781609>,  <30.542524, 35.482281, 34.411591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748556, 34.895473, 34.781609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650692, 35.127560, 35.092346>,  <30.591972, 35.266811, 35.278790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.650692, 35.127560, 35.092346>,  <30.748556, 34.895473, 34.781609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.650692, 35.127560, 35.092346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052125, -0.792164, 0.608078,
		0.968206, 0.189266, 0.163568,
		-0.244661, 0.580220, 0.776844,
		30.577293, 35.301624, 35.325397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.270266, 34.849812, 35.297417>,  <30.748556, 34.895473, 34.781609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.270266, 34.849812, 35.297417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941006, 34.982941, 35.481441>,  <30.743450, 35.062817, 35.591858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.941006, 34.982941, 35.481441>,  <31.270266, 34.849812, 35.297417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.941006, 34.982941, 35.481441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009650, -0.801901, 0.597379,
		0.567744, 0.496171, 0.656872,
		-0.823149, 0.332819, 0.460063,
		30.694061, 35.082787, 35.619461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378288, 34.618107, 35.970879>,  <31.270266, 34.849812, 35.297417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378288, 34.618107, 35.970879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990948, 34.715794, 35.950268>,  <30.758543, 34.774406, 35.937901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990948, 34.715794, 35.950268>,  <31.378288, 34.618107, 35.970879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990948, 34.715794, 35.950268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202448, -0.647742, 0.734469,
		0.145995, 0.721655, 0.676683,
		-0.968349, 0.244222, -0.051531,
		30.700443, 34.789059, 35.934807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103258, 34.991852, 36.594620>,  <31.378288, 34.618107, 35.970879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103258, 34.991852, 36.594620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820932, 34.747398, 36.451321>,  <30.651537, 34.600727, 36.365341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.820932, 34.747398, 36.451321>,  <31.103258, 34.991852, 36.594620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.820932, 34.747398, 36.451321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262557, -0.244013, 0.933553,
		-0.657941, 0.752977, 0.011771,
		-0.705817, -0.611132, -0.358246,
		30.609188, 34.564060, 36.343845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.478575, 35.211346, 36.936039>,  <31.103258, 34.991852, 36.594620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.478575, 35.211346, 36.936039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453779, 34.826683, 36.829170>,  <30.438902, 34.595886, 36.765049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.453779, 34.826683, 36.829170>,  <30.478575, 35.211346, 36.936039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453779, 34.826683, 36.829170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071380, -0.262731, 0.962225,
		-0.995521, 0.078719, -0.052356,
		-0.061990, -0.961653, -0.267173,
		30.435183, 34.538189, 36.749020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.990810, 35.110973, 37.333061>,  <30.478575, 35.211346, 36.936039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.990810, 35.110973, 37.333061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224342, 34.791317, 37.275757>,  <30.364462, 34.599525, 37.241375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.224342, 34.791317, 37.275757>,  <29.990810, 35.110973, 37.333061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224342, 34.791317, 37.275757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024377, -0.193634, 0.980771,
		-0.811511, -0.569109, -0.132529,
		0.583828, -0.799138, -0.143263,
		30.399490, 34.551575, 37.232777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796577, 34.370197, 37.402119>,  <29.990810, 35.110973, 37.333061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796577, 34.370197, 37.402119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178169, 34.359146, 37.521561>,  <30.407124, 34.352516, 37.593224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.178169, 34.359146, 37.521561>,  <29.796577, 34.370197, 37.402119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.178169, 34.359146, 37.521561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299866, -0.079676, 0.950648,
		-0.002467, -0.996438, -0.084292,
		0.953978, -0.027622, 0.298601,
		30.464363, 34.350861, 37.611141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.964260, 33.741444, 37.809097>,  <29.796577, 34.370197, 37.402119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.964260, 33.741444, 37.809097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200655, 34.044472, 37.919960>,  <30.342491, 34.226288, 37.986477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.200655, 34.044472, 37.919960>,  <29.964260, 33.741444, 37.809097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200655, 34.044472, 37.919960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322447, -0.093088, 0.941999,
		0.739435, -0.646077, 0.189264,
		0.590986, 0.757575, 0.277158,
		30.377951, 34.271744, 38.003109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230646, 33.549358, 38.347504>,  <29.964260, 33.741444, 37.809097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230646, 33.549358, 38.347504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259424, 33.947544, 38.372410>,  <30.276691, 34.186455, 38.387352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.259424, 33.947544, 38.372410>,  <30.230646, 33.549358, 38.347504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.259424, 33.947544, 38.372410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348144, -0.033438, 0.936844,
		0.934676, -0.089079, 0.344159,
		0.071945, 0.995463, 0.062266,
		30.281008, 34.246181, 38.391090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596386, 33.796665, 38.887867>,  <30.230646, 33.549358, 38.347504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596386, 33.796665, 38.887867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319239, 34.073097, 38.805561>,  <30.152950, 34.238956, 38.756180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.319239, 34.073097, 38.805561>,  <30.596386, 33.796665, 38.887867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.319239, 34.073097, 38.805561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399904, -0.130836, 0.907171,
		0.600011, 0.710833, 0.367020,
		-0.692867, 0.691085, -0.205762,
		30.111380, 34.280422, 38.743832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541256, 33.727352, 39.617680>,  <30.596386, 33.796665, 38.887867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541256, 33.727352, 39.617680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692154, 33.425137, 39.403446>,  <30.782692, 33.243809, 39.274906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.692154, 33.425137, 39.403446>,  <30.541256, 33.727352, 39.617680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.692154, 33.425137, 39.403446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385219, -0.397896, 0.832637,
		-0.842195, -0.520426, 0.140943,
		0.377245, -0.755537, -0.535584,
		30.805328, 33.198475, 39.242771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383493, 33.060204, 40.061951>,  <30.541256, 33.727352, 39.617680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383493, 33.060204, 40.061951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683758, 32.994049, 39.806087>,  <30.863916, 32.954357, 39.652569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.683758, 32.994049, 39.806087>,  <30.383493, 33.060204, 40.061951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683758, 32.994049, 39.806087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502082, -0.486503, 0.715002,
		-0.429441, -0.857883, -0.282164,
		0.750662, -0.165382, -0.639652,
		30.908957, 32.944435, 39.614193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.602047, 32.407494, 40.218189>,  <30.383493, 33.060204, 40.061951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.602047, 32.407494, 40.218189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894234, 32.620274, 40.046864>,  <31.069546, 32.747940, 39.944069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.894234, 32.620274, 40.046864>,  <30.602047, 32.407494, 40.218189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894234, 32.620274, 40.046864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663096, -0.402302, 0.631234,
		0.163475, -0.745105, -0.646602,
		0.730465, 0.531950, -0.428311,
		31.113373, 32.779858, 39.918369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133600, 31.960606, 40.262199>,  <30.602047, 32.407494, 40.218189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133600, 31.960606, 40.262199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317394, 32.310162, 40.198711>,  <31.427670, 32.519894, 40.160618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317394, 32.310162, 40.198711>,  <31.133600, 31.960606, 40.262199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317394, 32.310162, 40.198711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719324, -0.261313, 0.643653,
		0.521007, -0.409916, -0.748679,
		0.459483, 0.873891, -0.158716,
		31.455238, 32.572330, 40.151096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880562, 31.847290, 40.066826>,  <31.133600, 31.960606, 40.262199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880562, 31.847290, 40.066826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818340, 32.213154, 40.216064>,  <31.781008, 32.432671, 40.305607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.818340, 32.213154, 40.216064>,  <31.880562, 31.847290, 40.066826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818340, 32.213154, 40.216064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793149, -0.109494, 0.599104,
		0.588828, 0.389117, -0.708428,
		-0.155553, 0.914658, 0.373101,
		31.771675, 32.487553, 40.327995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.575699, 32.091793, 40.182762>,  <31.880562, 31.847290, 40.066826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.575699, 32.091793, 40.182762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349049, 32.340412, 40.399136>,  <32.213058, 32.489586, 40.528961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.349049, 32.340412, 40.399136>,  <32.575699, 32.091793, 40.182762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.349049, 32.340412, 40.399136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706313, 0.028297, 0.707334,
		0.424338, 0.782862, -0.455044,
		-0.566621, 0.621552, 0.540938,
		32.179062, 32.526878, 40.561417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969048, 32.590881, 40.288086>,  <32.575699, 32.091793, 40.182762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969048, 32.590881, 40.288086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692669, 32.619331, 40.575844>,  <32.526840, 32.636402, 40.748497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.692669, 32.619331, 40.575844>,  <32.969048, 32.590881, 40.288086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.692669, 32.619331, 40.575844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722898, 0.064572, 0.687931,
		0.002475, 0.995375, -0.096030,
		-0.690950, 0.071123, 0.719395,
		32.485382, 32.640667, 40.791664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.228924, 33.101280, 40.767708>,  <32.969048, 32.590881, 40.288086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.228924, 33.101280, 40.767708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962437, 32.902889, 40.990475>,  <32.802544, 32.783855, 41.124134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.962437, 32.902889, 40.990475>,  <33.228924, 33.101280, 40.767708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962437, 32.902889, 40.990475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619367, 0.047970, 0.783635,
		-0.415383, 0.867008, 0.275235,
		-0.666215, -0.495980, 0.556922,
		32.762573, 32.754097, 41.157551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.158054, 33.398758, 41.451759>,  <33.228924, 33.101280, 40.767708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.158054, 33.398758, 41.451759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005245, 33.038212, 41.533348>,  <32.913559, 32.821884, 41.582302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005245, 33.038212, 41.533348>,  <33.158054, 33.398758, 41.451759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005245, 33.038212, 41.533348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455119, 0.008593, 0.890389,
		-0.804317, 0.432977, 0.406945,
		-0.382021, -0.901364, 0.203968,
		32.890640, 32.767803, 41.594540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147938, 33.422009, 42.084763>,  <33.158054, 33.398758, 41.451759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147938, 33.422009, 42.084763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112518, 33.027653, 42.027943>,  <33.091267, 32.791039, 41.993851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.112518, 33.027653, 42.027943>,  <33.147938, 33.422009, 42.084763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.112518, 33.027653, 42.027943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570804, -0.167094, 0.803904,
		-0.816298, -0.009899, 0.577546,
		-0.088547, -0.985891, -0.142049,
		33.085953, 32.731884, 41.985329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.947742, 33.084126, 42.744843>,  <33.147938, 33.422009, 42.084763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.947742, 33.084126, 42.744843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102406, 32.795616, 42.514969>,  <33.195202, 32.622513, 42.377045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102406, 32.795616, 42.514969>,  <32.947742, 33.084126, 42.744843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102406, 32.795616, 42.514969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495268, -0.363264, 0.789144,
		-0.777950, -0.589752, 0.216764,
		0.386657, -0.721271, -0.574687,
		33.218403, 32.579235, 42.342564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691040, 32.447105, 42.973442>,  <32.947742, 33.084126, 42.744843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691040, 32.447105, 42.973442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024364, 32.348038, 42.775757>,  <33.224361, 32.288597, 42.657146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.024364, 32.348038, 42.775757>,  <32.691040, 32.447105, 42.973442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024364, 32.348038, 42.775757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369053, -0.416367, 0.830926,
		-0.411580, -0.874810, -0.255555,
		0.833307, -0.247679, -0.494220,
		33.274357, 32.273739, 42.627491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795048, 31.716003, 43.036877>,  <32.691040, 32.447105, 42.973442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795048, 31.716003, 43.036877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160187, 31.865948, 42.972137>,  <33.379269, 31.955915, 42.933292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160187, 31.865948, 42.972137>,  <32.795048, 31.716003, 43.036877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160187, 31.865948, 42.972137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336694, -0.466820, 0.817751,
		0.230988, -0.800972, -0.552347,
		0.912843, 0.374862, -0.161853,
		33.434040, 31.978407, 42.923580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170815, 31.108303, 43.102779>,  <32.795048, 31.716003, 43.036877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170815, 31.108303, 43.102779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424225, 31.414219, 43.149681>,  <33.576271, 31.597769, 43.177822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424225, 31.414219, 43.149681>,  <33.170815, 31.108303, 43.102779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424225, 31.414219, 43.149681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338739, -0.410407, 0.846653,
		0.695634, -0.496654, -0.519065,
		0.633522, 0.764788, 0.117257,
		33.614281, 31.643656, 43.184856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839466, 30.840168, 43.262989>,  <33.170815, 31.108303, 43.102779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839466, 30.840168, 43.262989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848080, 31.219444, 43.389778>,  <33.853249, 31.447010, 43.465851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.848080, 31.219444, 43.389778>,  <33.839466, 30.840168, 43.262989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848080, 31.219444, 43.389778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392928, -0.299563, 0.869407,
		0.919317, 0.105829, -0.379020,
		0.021532, 0.948189, 0.316977,
		33.854538, 31.503901, 43.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453453, 30.877617, 43.640656>,  <33.839466, 30.840168, 43.262989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453453, 30.877617, 43.640656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213249, 31.178473, 43.749226>,  <34.069126, 31.358986, 43.814369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213249, 31.178473, 43.749226>,  <34.453453, 30.877617, 43.640656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213249, 31.178473, 43.749226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176557, -0.206349, 0.962418,
		0.779882, 0.625864, -0.008881,
		-0.600510, 0.752140, 0.271428,
		34.033096, 31.404114, 43.830654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846542, 31.159384, 44.347446>,  <34.453453, 30.877617, 43.640656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846542, 31.159384, 44.347446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480789, 31.318037, 44.315002>,  <34.261337, 31.413229, 44.295536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480789, 31.318037, 44.315002>,  <34.846542, 31.159384, 44.347446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480789, 31.318037, 44.315002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113573, -0.059011, 0.991776,
		0.388583, 0.916079, 0.099005,
		-0.914387, 0.396632, -0.081111,
		34.206474, 31.437027, 44.290668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.774963, 31.856430, 44.792301>,  <34.846542, 31.159384, 44.347446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.774963, 31.856430, 44.792301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410889, 31.702013, 44.732254>,  <34.192444, 31.609362, 44.696224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.410889, 31.702013, 44.732254>,  <34.774963, 31.856430, 44.792301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410889, 31.702013, 44.732254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186980, 0.059539, 0.980558,
		-0.369601, 0.920557, -0.126374,
		-0.910184, -0.386044, -0.150120,
		34.137833, 31.586201, 44.687218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.351517, 32.243057, 45.307980>,  <34.774963, 31.856430, 44.792301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.351517, 32.243057, 45.307980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142464, 31.916908, 45.208355>,  <34.017033, 31.721220, 45.148579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142464, 31.916908, 45.208355>,  <34.351517, 32.243057, 45.307980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142464, 31.916908, 45.208355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272296, -0.117196, 0.955050,
		-0.807906, 0.566957, -0.160771,
		-0.522631, -0.815368, -0.249064,
		33.985676, 31.672298, 45.133636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.652027, 32.290970, 45.622089>,  <34.351517, 32.243057, 45.307980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.652027, 32.290970, 45.622089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713665, 31.902315, 45.550339>,  <33.750648, 31.669123, 45.507290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713665, 31.902315, 45.550339>,  <33.652027, 32.290970, 45.622089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713665, 31.902315, 45.550339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136229, -0.200705, 0.970134,
		-0.978620, -0.125055, -0.163292,
		0.154094, -0.971637, -0.179378,
		33.759892, 31.610825, 45.496525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.128345, 31.848879, 46.108734>,  <33.652027, 32.290970, 45.622089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.128345, 31.848879, 46.108734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400711, 31.590246, 45.971161>,  <33.564129, 31.435066, 45.888618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.400711, 31.590246, 45.971161>,  <33.128345, 31.848879, 46.108734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400711, 31.590246, 45.971161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039980, -0.501734, 0.864097,
		-0.731272, -0.574626, -0.367488,
		0.680914, -0.646582, -0.343931,
		33.604984, 31.396273, 45.867981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.934731, 31.297110, 46.447418>,  <33.128345, 31.848879, 46.108734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.934731, 31.297110, 46.447418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306469, 31.222929, 46.319721>,  <33.529514, 31.178421, 46.243103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.306469, 31.222929, 46.319721>,  <32.934731, 31.297110, 46.447418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306469, 31.222929, 46.319721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142063, -0.618491, 0.772843,
		-0.340777, -0.763594, -0.548448,
		0.929349, -0.185453, -0.319246,
		33.585274, 31.167294, 46.223946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088711, 30.503021, 46.589855>,  <32.934731, 31.297110, 46.447418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088711, 30.503021, 46.589855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409718, 30.741539, 46.581879>,  <33.602322, 30.884649, 46.577091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409718, 30.741539, 46.581879>,  <33.088711, 30.503021, 46.589855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409718, 30.741539, 46.581879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378799, -0.483414, 0.789190,
		0.460948, -0.640895, -0.613824,
		0.802519, 0.596292, -0.019942,
		33.650475, 30.920427, 46.575897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648685, 30.014414, 46.618561>,  <33.088711, 30.503021, 46.589855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648685, 30.014414, 46.618561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784573, 30.365313, 46.754223>,  <33.866104, 30.575851, 46.835621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.784573, 30.365313, 46.754223>,  <33.648685, 30.014414, 46.618561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.784573, 30.365313, 46.754223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528966, -0.476374, 0.702327,
		0.777682, -0.059187, -0.625866,
		0.339715, 0.877249, 0.339159,
		33.886486, 30.628487, 46.855972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422306, 29.883169, 46.731083>,  <33.648685, 30.014414, 46.618561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422306, 29.883169, 46.731083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329201, 30.195549, 46.962925>,  <34.273338, 30.382977, 47.102028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.329201, 30.195549, 46.962925>,  <34.422306, 29.883169, 46.731083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.329201, 30.195549, 46.962925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342539, -0.491950, 0.800408,
		0.910214, 0.384839, -0.153000,
		-0.232760, 0.780951, 0.579602,
		34.259373, 30.429834, 47.136806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798195, 29.715733, 47.317356>,  <34.422306, 29.883169, 46.731083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798195, 29.715733, 47.317356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589146, 30.023653, 47.463928>,  <34.463715, 30.208405, 47.551872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.589146, 30.023653, 47.463928>,  <34.798195, 29.715733, 47.317356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589146, 30.023653, 47.463928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259100, -0.266058, 0.928483,
		0.812237, 0.580191, -0.060406,
		-0.522626, 0.769800, 0.366430,
		34.432358, 30.254593, 47.573856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.234470, 30.116529, 47.711071>,  <34.798195, 29.715733, 47.317356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.234470, 30.116529, 47.711071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873798, 30.220680, 47.849163>,  <34.657394, 30.283171, 47.932018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.873798, 30.220680, 47.849163>,  <35.234470, 30.116529, 47.711071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.873798, 30.220680, 47.849163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333893, -0.088059, 0.938489,
		0.274760, 0.961483, -0.007536,
		-0.901678, 0.260375, 0.345228,
		34.603294, 30.298792, 47.952732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.346107, 30.522156, 48.352417>,  <35.234470, 30.116529, 47.711071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.346107, 30.522156, 48.352417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966648, 30.402166, 48.392567>,  <34.738972, 30.330172, 48.416656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.966648, 30.402166, 48.392567>,  <35.346107, 30.522156, 48.352417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.966648, 30.402166, 48.392567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154985, -0.164152, 0.974184,
		-0.275754, 0.939717, 0.202215,
		-0.948651, -0.299975, 0.100376,
		34.682053, 30.312174, 48.422680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.944679, 30.912247, 48.909500>,  <35.346107, 30.522156, 48.352417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.944679, 30.912247, 48.909500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766899, 30.558437, 48.852814>,  <34.660233, 30.346151, 48.818802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.766899, 30.558437, 48.852814>,  <34.944679, 30.912247, 48.909500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766899, 30.558437, 48.852814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120868, -0.097535, 0.987865,
		-0.887612, 0.456186, -0.063561,
		-0.444450, -0.884524, -0.141712,
		34.633564, 30.293079, 48.810299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.388988, 30.781574, 49.510830>,  <34.944679, 30.912247, 48.909500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.388988, 30.781574, 49.510830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480007, 30.424068, 49.356216>,  <34.534618, 30.209564, 49.263451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.480007, 30.424068, 49.356216>,  <34.388988, 30.781574, 49.510830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480007, 30.424068, 49.356216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010629, -0.394639, 0.918775,
		-0.973710, -0.213170, -0.080298,
		0.227544, -0.893767, -0.386530,
		34.548271, 30.155939, 49.240257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846046, 30.324636, 49.848156>,  <34.388988, 30.781574, 49.510830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846046, 30.324636, 49.848156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125896, 30.079300, 49.701553>,  <34.293808, 29.932098, 49.613590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.125896, 30.079300, 49.701553>,  <33.846046, 30.324636, 49.848156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125896, 30.079300, 49.701553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075939, -0.446221, 0.891695,
		-0.710459, -0.651689, -0.265612,
		0.699629, -0.613343, -0.366510,
		34.335785, 29.895298, 49.591599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.724289, 29.713337, 50.093170>,  <33.846046, 30.324636, 49.848156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.724289, 29.713337, 50.093170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113503, 29.680239, 50.007046>,  <34.347031, 29.660379, 49.955372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.113503, 29.680239, 50.007046>,  <33.724289, 29.713337, 50.093170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.113503, 29.680239, 50.007046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164952, -0.402861, 0.900274,
		-0.161231, -0.911513, -0.378349,
		0.973034, -0.082743, -0.215310,
		34.405415, 29.655416, 49.942451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928360, 29.133982, 50.421295>,  <33.724289, 29.713337, 50.093170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928360, 29.133982, 50.421295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292141, 29.290680, 50.365543>,  <34.510410, 29.384699, 50.332092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.292141, 29.290680, 50.365543>,  <33.928360, 29.133982, 50.421295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292141, 29.290680, 50.365543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268776, -0.298115, 0.915908,
		0.317254, -0.870438, -0.376414,
		0.909456, 0.391746, -0.139375,
		34.564980, 29.408203, 50.323730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389248, 28.615618, 50.524872>,  <33.928360, 29.133982, 50.421295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389248, 28.615618, 50.524872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579243, 28.956747, 50.611664>,  <34.693241, 29.161425, 50.663738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.579243, 28.956747, 50.611664>,  <34.389248, 28.615618, 50.524872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579243, 28.956747, 50.611664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294698, -0.386490, 0.873944,
		0.829180, -0.351170, -0.434903,
		0.474988, 0.852822, 0.216981,
		34.721741, 29.212593, 50.676758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.056190, 28.472147, 50.777695>,  <34.389248, 28.615618, 50.524872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.056190, 28.472147, 50.777695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052082, 28.854044, 50.896599>,  <35.049618, 29.083181, 50.967941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.052082, 28.854044, 50.896599>,  <35.056190, 28.472147, 50.777695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052082, 28.854044, 50.896599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545968, -0.243696, 0.801580,
		0.837743, 0.170527, -0.518755,
		-0.010273, 0.954742, 0.297257,
		35.049000, 29.140467, 50.985775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719929, 28.711737, 50.802666>,  <35.056190, 28.472147, 50.777695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719929, 28.711737, 50.802666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 28.933664, 51.054646>,  <35.372120, 29.066820, 51.205833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502548, 28.933664, 51.054646>,  <35.719929, 28.711737, 50.802666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502548, 28.933664, 51.054646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683992, -0.142365, 0.715463,
		0.486635, 0.819700, -0.302123,
		-0.543453, 0.554819, 0.629949,
		35.339512, 29.100109, 51.243629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172695, 29.164062, 51.221161>,  <35.719929, 28.711737, 50.802666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172695, 29.164062, 51.221161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823715, 29.160629, 51.416611>,  <35.614326, 29.158569, 51.533878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.823715, 29.160629, 51.416611>,  <36.172695, 29.164062, 51.221161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823715, 29.160629, 51.416611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486008, -0.120008, 0.865676,
		0.051210, 0.992736, 0.108872,
		-0.872453, -0.008581, 0.488623,
		35.561981, 29.158054, 51.563198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.318882, 29.519157, 51.831013>,  <36.172695, 29.164062, 51.221161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.318882, 29.519157, 51.831013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986568, 29.315628, 51.921253>,  <35.787182, 29.193510, 51.975399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986568, 29.315628, 51.921253>,  <36.318882, 29.519157, 51.831013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986568, 29.315628, 51.921253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352073, -0.166471, 0.921050,
		-0.431094, 0.844622, 0.317444,
		-0.830784, -0.508822, 0.225604,
		35.737331, 29.162981, 51.988934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161774, 29.706152, 52.448109>,  <36.318882, 29.519157, 51.831013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161774, 29.706152, 52.448109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950325, 29.367264, 52.427032>,  <35.823456, 29.163931, 52.414387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.950325, 29.367264, 52.427032>,  <36.161774, 29.706152, 52.448109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.950325, 29.367264, 52.427032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421676, -0.315966, 0.849915,
		-0.736714, 0.427065, 0.524279,
		-0.528623, -0.847220, -0.052694,
		35.791737, 29.113098, 52.411224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784458, 29.745897, 53.074482>,  <36.161774, 29.706152, 52.448109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784458, 29.745897, 53.074482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833088, 29.377977, 52.925251>,  <35.862267, 29.157225, 52.835712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.833088, 29.377977, 52.925251>,  <35.784458, 29.745897, 53.074482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833088, 29.377977, 52.925251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368213, -0.307249, 0.877506,
		-0.921758, -0.244053, 0.301330,
		0.121575, -0.919802, -0.373073,
		35.869560, 29.102037, 52.813328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531681, 29.414978, 53.651844>,  <35.784458, 29.745897, 53.074482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531681, 29.414978, 53.651844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710491, 29.132202, 53.432610>,  <35.817776, 28.962536, 53.301067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710491, 29.132202, 53.432610>,  <35.531681, 29.414978, 53.651844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710491, 29.132202, 53.432610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242065, -0.494256, 0.834934,
		-0.861147, -0.505909, -0.049819,
		0.447025, -0.706941, -0.548090,
		35.844597, 28.920120, 53.268181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521503, 28.641369, 53.937820>,  <35.531681, 29.414978, 53.651844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521503, 28.641369, 53.937820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850868, 28.636757, 53.710888>,  <36.048485, 28.633989, 53.574726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.850868, 28.636757, 53.710888>,  <35.521503, 28.641369, 53.937820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.850868, 28.636757, 53.710888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526104, -0.359132, 0.770869,
		-0.212636, -0.933215, -0.289646,
		0.823408, -0.011530, -0.567333,
		36.097889, 28.633297, 53.540688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796104, 27.964775, 53.944561>,  <35.521503, 28.641369, 53.937820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796104, 27.964775, 53.944561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100250, 28.208450, 53.854454>,  <36.282738, 28.354654, 53.800392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100250, 28.208450, 53.854454>,  <35.796104, 27.964775, 53.944561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100250, 28.208450, 53.854454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532239, -0.385630, 0.753665,
		0.372255, -0.692951, -0.617451,
		0.760360, 0.609187, -0.225263,
		36.328358, 28.391207, 53.786877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.384537, 27.636305, 54.213810>,  <35.796104, 27.964775, 53.944561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.384537, 27.636305, 54.213810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537086, 27.996658, 54.130901>,  <36.628616, 28.212870, 54.081158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537086, 27.996658, 54.130901>,  <36.384537, 27.636305, 54.213810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537086, 27.996658, 54.130901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705158, -0.138531, 0.695386,
		0.597748, -0.411363, -0.688097,
		0.381379, 0.900883, -0.207269,
		36.651501, 28.266924, 54.068722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584595, 27.549370, 54.957775>,  <36.384537, 27.636305, 54.213810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584595, 27.549370, 54.957775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784195, 27.228979, 54.825451>,  <36.903954, 27.036745, 54.746056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.784195, 27.228979, 54.825451>,  <36.584595, 27.549370, 54.957775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.784195, 27.228979, 54.825451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070582, -0.342905, 0.936715,
		-0.863723, -0.490770, -0.114575,
		0.499000, -0.800976, -0.330814,
		36.933895, 26.988688, 54.726208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253609, 26.984179, 55.323757>,  <36.584595, 27.549370, 54.957775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253609, 26.984179, 55.323757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621971, 26.887259, 55.201630>,  <36.842987, 26.829107, 55.128353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621971, 26.887259, 55.201630>,  <36.253609, 26.984179, 55.323757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621971, 26.887259, 55.201630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090029, -0.629913, 0.771430,
		-0.379244, -0.737903, -0.558277,
		0.920907, -0.242299, -0.305323,
		36.898243, 26.814569, 55.110031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399212, 26.332573, 55.419540>,  <36.253609, 26.984179, 55.323757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399212, 26.332573, 55.419540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778214, 26.456524, 55.387997>,  <37.005615, 26.530895, 55.369072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.778214, 26.456524, 55.387997>,  <36.399212, 26.332573, 55.419540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.778214, 26.456524, 55.387997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265043, -0.623153, 0.735821,
		0.178875, -0.718091, -0.672569,
		0.947500, 0.309879, -0.078858,
		37.062462, 26.549488, 55.364338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504070, 26.217812, 54.709625>,  <36.399212, 26.332573, 55.419540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504070, 26.217812, 54.709625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640331, 25.865545, 54.577942>,  <36.722088, 25.654186, 54.498932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640331, 25.865545, 54.577942>,  <36.504070, 26.217812, 54.709625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640331, 25.865545, 54.577942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051216, 0.367018, -0.928803,
		0.938792, 0.299540, 0.170130,
		0.340655, -0.880666, -0.329213,
		36.742527, 25.601345, 54.479179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.160221, 26.298685, 54.478706>,  <36.504070, 26.217812, 54.709625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.160221, 26.298685, 54.478706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021183, 25.979010, 54.282551>,  <36.937759, 25.787205, 54.164856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.021183, 25.979010, 54.282551>,  <37.160221, 26.298685, 54.478706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021183, 25.979010, 54.282551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106143, 0.486100, -0.867433,
		0.931619, -0.353563, -0.084136,
		-0.347591, -0.799187, -0.490389,
		36.916904, 25.739254, 54.135433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.537464, 26.409641, 53.875916>,  <37.160221, 26.298685, 54.478706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.537464, 26.409641, 53.875916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268490, 26.127302, 53.786819>,  <37.107105, 25.957899, 53.733360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.268490, 26.127302, 53.786819>,  <37.537464, 26.409641, 53.875916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.268490, 26.127302, 53.786819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142105, 0.418456, -0.897051,
		0.726387, -0.571556, -0.381688,
		-0.672435, -0.705845, -0.222740,
		37.066761, 25.915548, 53.719997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720810, 26.063389, 53.138397>,  <37.537464, 26.409641, 53.875916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720810, 26.063389, 53.138397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338512, 26.011290, 53.243916>,  <37.109135, 25.980030, 53.307228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.338512, 26.011290, 53.243916>,  <37.720810, 26.063389, 53.138397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.338512, 26.011290, 53.243916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288121, 0.233016, -0.928811,
		0.059502, -0.963712, -0.260229,
		-0.955743, -0.130243, 0.263801,
		37.051788, 25.972216, 53.323055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.476707, 25.571472, 52.765251>,  <37.720810, 26.063389, 53.138397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.476707, 25.571472, 52.765251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187805, 25.833178, 52.854946>,  <37.014462, 25.990200, 52.908764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187805, 25.833178, 52.854946>,  <37.476707, 25.571472, 52.765251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187805, 25.833178, 52.854946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128019, 0.192152, -0.972979,
		-0.679673, -0.731449, -0.055025,
		-0.722258, 0.654264, 0.224240,
		36.971127, 26.029457, 52.922218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876873, 25.439714, 52.380894>,  <37.476707, 25.571472, 52.765251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876873, 25.439714, 52.380894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860680, 25.829275, 52.470226>,  <36.850964, 26.063011, 52.523827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.860680, 25.829275, 52.470226>,  <36.876873, 25.439714, 52.380894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.860680, 25.829275, 52.470226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071158, 0.220137, -0.972870,
		-0.996643, -0.055280, 0.060388,
		-0.040487, 0.973901, 0.223331,
		36.848534, 26.121445, 52.537224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.163006, 25.757601, 52.126236>,  <36.876873, 25.439714, 52.380894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.163006, 25.757601, 52.126236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481281, 25.999285, 52.143230>,  <36.672249, 26.144295, 52.153427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481281, 25.999285, 52.143230>,  <36.163006, 25.757601, 52.126236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481281, 25.999285, 52.143230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110813, 0.214180, -0.970488,
		-0.595479, 0.767501, 0.237376,
		0.795692, 0.604209, 0.042490,
		36.719990, 26.180548, 52.155979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850803, 26.460642, 51.838909>,  <36.163006, 25.757601, 52.126236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850803, 26.460642, 51.838909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250031, 26.460152, 51.814045>,  <36.489567, 26.459858, 51.799126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.250031, 26.460152, 51.814045>,  <35.850803, 26.460642, 51.838909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250031, 26.460152, 51.814045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057640, 0.356408, -0.932551,
		0.023295, 0.934330, 0.355648,
		0.998066, -0.001224, -0.062157,
		36.549450, 26.459784, 51.795399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872528, 26.955627, 51.334461>,  <35.850803, 26.460642, 51.838909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872528, 26.955627, 51.334461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 26.786135, 51.358418>,  <36.450966, 26.684439, 51.372791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.234051, 26.786135, 51.358418>,  <35.872528, 26.955627, 51.334461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.234051, 26.786135, 51.358418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171661, 0.230787, -0.957742,
		0.392003, 0.875894, 0.281324,
		0.903807, -0.423730, 0.059888,
		36.505192, 26.659016, 51.376385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362663, 27.449821, 51.047867>,  <35.872528, 26.955627, 51.334461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362663, 27.449821, 51.047867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551361, 27.098928, 51.012276>,  <36.664581, 26.888393, 50.990921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.551361, 27.098928, 51.012276>,  <36.362663, 27.449821, 51.047867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.551361, 27.098928, 51.012276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120668, 0.164195, -0.979020,
		0.873439, 0.451112, 0.183312,
		0.471746, -0.877233, -0.088980,
		36.692886, 26.835758, 50.985580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918976, 27.618505, 50.719845>,  <36.362663, 27.449821, 51.047867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918976, 27.618505, 50.719845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867996, 27.228439, 50.647392>,  <36.837410, 26.994400, 50.603920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.867996, 27.228439, 50.647392>,  <36.918976, 27.618505, 50.719845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.867996, 27.228439, 50.647392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085376, 0.171160, -0.981537,
		0.988164, -0.140561, 0.061442,
		-0.127449, -0.975165, -0.181134,
		36.829762, 26.935890, 50.593052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.374168, 27.446941, 50.159164>,  <36.918976, 27.618505, 50.719845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.374168, 27.446941, 50.159164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097824, 27.157877, 50.167915>,  <36.932018, 26.984438, 50.173168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.097824, 27.157877, 50.167915>,  <37.374168, 27.446941, 50.159164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097824, 27.157877, 50.167915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022694, -0.008573, -0.999705,
		0.722634, -0.691151, -0.010477,
		-0.690858, -0.722659, 0.021880,
		36.890568, 26.941080, 50.174480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689491, 26.919865, 49.799248>,  <37.374168, 27.446941, 50.159164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689491, 26.919865, 49.799248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292110, 26.874834, 49.791458>,  <37.053680, 26.847816, 49.786785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.292110, 26.874834, 49.791458>,  <37.689491, 26.919865, 49.799248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.292110, 26.874834, 49.791458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012698, 0.060604, -0.998081,
		0.113546, -0.991793, -0.058777,
		-0.993452, -0.112582, -0.019476,
		36.994076, 26.841061, 49.785614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.622059, 26.594852, 49.215275>,  <37.689491, 26.919865, 49.799248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.622059, 26.594852, 49.215275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251278, 26.729183, 49.282192>,  <37.028809, 26.809782, 49.322342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.251278, 26.729183, 49.282192>,  <37.622059, 26.594852, 49.215275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251278, 26.729183, 49.282192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143392, 0.094932, -0.985102,
		-0.346705, -0.937128, -0.039842,
		-0.926949, 0.335827, 0.167290,
		36.973194, 26.829931, 49.332378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.106716, 26.288986, 48.651249>,  <37.622059, 26.594852, 49.215275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.106716, 26.288986, 48.651249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951481, 26.626678, 48.799122>,  <36.858341, 26.829294, 48.887844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.951481, 26.626678, 48.799122>,  <37.106716, 26.288986, 48.651249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951481, 26.626678, 48.799122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244690, 0.292337, -0.924481,
		-0.888546, -0.449236, 0.093123,
		-0.388087, 0.844231, 0.369679,
		36.835056, 26.879948, 48.910027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.623924, 26.333759, 48.244385>,  <37.106716, 26.288986, 48.651249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.623924, 26.333759, 48.244385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670578, 26.700792, 48.396404>,  <36.698570, 26.921013, 48.487617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.670578, 26.700792, 48.396404>,  <36.623924, 26.333759, 48.244385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670578, 26.700792, 48.396404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309612, 0.397188, -0.863934,
		-0.943682, -0.016903, 0.330421,
		0.116636, 0.917582, 0.380052,
		36.705570, 26.976067, 48.510422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013603, 26.662460, 48.029507>,  <36.623924, 26.333759, 48.244385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013603, 26.662460, 48.029507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262360, 26.955976, 48.138908>,  <36.411613, 27.132086, 48.204548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.262360, 26.955976, 48.138908>,  <36.013603, 26.662460, 48.029507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.262360, 26.955976, 48.138908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267162, 0.527103, -0.806713,
		-0.736122, 0.428619, 0.523842,
		0.621892, 0.733790, 0.273501,
		36.448929, 27.176113, 48.220959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566013, 27.306555, 48.022129>,  <36.013603, 26.662460, 48.029507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566013, 27.306555, 48.022129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939041, 27.450493, 48.010620>,  <36.162857, 27.536856, 48.003716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939041, 27.450493, 48.010620>,  <35.566013, 27.306555, 48.022129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939041, 27.450493, 48.010620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282951, 0.679143, -0.677277,
		-0.224174, 0.639748, 0.735166,
		0.932569, 0.359844, -0.028771,
		36.218811, 27.558447, 48.001987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507423, 28.080965, 48.081539>,  <35.566013, 27.306555, 48.022129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507423, 28.080965, 48.081539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855297, 27.976393, 47.914062>,  <36.064022, 27.913649, 47.813576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855297, 27.976393, 47.914062>,  <35.507423, 28.080965, 48.081539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855297, 27.976393, 47.914062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186430, 0.611439, -0.769017,
		0.457051, 0.746858, 0.483019,
		0.869683, -0.261431, -0.418695,
		36.116203, 27.897963, 47.788452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.873051, 28.725584, 47.872002>,  <35.507423, 28.080965, 48.081539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.873051, 28.725584, 47.872002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023849, 28.431267, 47.646976>,  <36.114330, 28.254677, 47.511959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.023849, 28.431267, 47.646976>,  <35.873051, 28.725584, 47.872002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023849, 28.431267, 47.646976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098048, 0.572267, -0.814185,
		0.921008, 0.362108, 0.143603,
		0.377002, -0.735792, -0.562566,
		36.136951, 28.210529, 47.478207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194969, 29.139290, 47.432659>,  <35.873051, 28.725584, 47.872002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194969, 29.139290, 47.432659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155930, 28.787548, 47.246235>,  <36.132507, 28.576504, 47.134380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.155930, 28.787548, 47.246235>,  <36.194969, 29.139290, 47.432659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155930, 28.787548, 47.246235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107703, 0.474880, -0.873435,
		0.989381, -0.035051, -0.141057,
		-0.097600, -0.879352, -0.466062,
		36.126648, 28.523743, 47.106415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.690201, 29.245049, 46.896038>,  <36.194969, 29.139290, 47.432659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.690201, 29.245049, 46.896038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437988, 28.947294, 46.808113>,  <36.286659, 28.768642, 46.755360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.437988, 28.947294, 46.808113>,  <36.690201, 29.245049, 46.896038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.437988, 28.947294, 46.808113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200037, 0.429486, -0.880640,
		0.749941, -0.511304, -0.419710,
		-0.630534, -0.744386, -0.219810,
		36.248829, 28.723978, 46.742168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968018, 29.013762, 46.298649>,  <36.690201, 29.245049, 46.896038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968018, 29.013762, 46.298649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584377, 28.901848, 46.315796>,  <36.354191, 28.834700, 46.326084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.584377, 28.901848, 46.315796>,  <36.968018, 29.013762, 46.298649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.584377, 28.901848, 46.315796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147034, 0.363046, -0.920097,
		0.241864, -0.888774, -0.389337,
		-0.959106, -0.279784, 0.042872,
		36.296646, 28.817913, 46.328659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.911938, 28.416685, 45.805340>,  <36.968018, 29.013762, 46.298649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.911938, 28.416685, 45.805340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530930, 28.530909, 45.847607>,  <36.302326, 28.599442, 45.872967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.530930, 28.530909, 45.847607>,  <36.911938, 28.416685, 45.805340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.530930, 28.530909, 45.847607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067571, 0.140144, -0.987823,
		-0.296888, -0.948059, -0.114194,
		-0.952519, 0.285557, 0.105668,
		36.245174, 28.616575, 45.879307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713837, 28.030022, 45.244534>,  <36.911938, 28.416685, 45.805340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713837, 28.030022, 45.244534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451298, 28.311203, 45.354122>,  <36.293774, 28.479912, 45.419876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.451298, 28.311203, 45.354122>,  <36.713837, 28.030022, 45.244534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451298, 28.311203, 45.354122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364476, 0.022521, -0.930940,
		-0.660580, -0.710877, 0.241429,
		-0.656347, 0.702956, 0.273975,
		36.254395, 28.522089, 45.436314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.031868, 27.897818, 44.986343>,  <36.713837, 28.030022, 45.244534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.031868, 27.897818, 44.986343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986126, 28.285988, 45.071381>,  <35.958679, 28.518890, 45.122402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986126, 28.285988, 45.071381>,  <36.031868, 27.897818, 44.986343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986126, 28.285988, 45.071381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311061, 0.168262, -0.935376,
		-0.943485, -0.173095, 0.282620,
		-0.114355, 0.970426, 0.212596,
		35.951820, 28.577116, 45.135159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300701, 28.142525, 44.899387>,  <36.031868, 27.897818, 44.986343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300701, 28.142525, 44.899387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527542, 28.471487, 44.881298>,  <35.663647, 28.668863, 44.870445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.527542, 28.471487, 44.881298>,  <35.300701, 28.142525, 44.899387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.527542, 28.471487, 44.881298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421564, 0.242652, -0.873730,
		-0.707585, 0.514560, 0.484305,
		0.567104, 0.822404, -0.045223,
		35.697674, 28.718208, 44.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.880951, 28.622379, 44.611080>,  <35.300701, 28.142525, 44.899387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.880951, 28.622379, 44.611080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225807, 28.818283, 44.559147>,  <35.432720, 28.935825, 44.527988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.225807, 28.818283, 44.559147>,  <34.880951, 28.622379, 44.611080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.225807, 28.818283, 44.559147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152591, 0.006633, -0.988267,
		-0.483150, 0.871834, 0.080451,
		0.862138, 0.489757, -0.129830,
		35.484447, 28.965210, 44.520199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.762821, 29.255026, 44.230701>,  <34.880951, 28.622379, 44.611080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.762821, 29.255026, 44.230701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152645, 29.194723, 44.164360>,  <35.386539, 29.158543, 44.124557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.152645, 29.194723, 44.164360>,  <34.762821, 29.255026, 44.230701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.152645, 29.194723, 44.164360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134090, 0.200763, -0.970419,
		0.179593, 0.967971, 0.175441,
		0.974559, -0.150756, -0.165851,
		35.445011, 29.149496, 44.114605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026634, 29.859089, 43.819435>,  <34.762821, 29.255026, 44.230701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026634, 29.859089, 43.819435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258598, 29.538799, 43.759373>,  <35.397778, 29.346626, 43.723335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258598, 29.538799, 43.759373>,  <35.026634, 29.859089, 43.819435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258598, 29.538799, 43.759373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020854, 0.169667, -0.985281,
		0.814413, 0.574506, 0.081693,
		0.579910, -0.800722, -0.150160,
		35.432571, 29.298582, 43.714325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650223, 30.084188, 43.415089>,  <35.026634, 29.859089, 43.819435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650223, 30.084188, 43.415089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612713, 29.689528, 43.361835>,  <35.590206, 29.452730, 43.329884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.612713, 29.689528, 43.361835>,  <35.650223, 30.084188, 43.415089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612713, 29.689528, 43.361835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005085, 0.134197, -0.990942,
		0.995581, -0.092248, -0.017601,
		-0.093774, -0.986652, -0.133135,
		35.584579, 29.393532, 43.321896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.057930, 30.007990, 42.793247>,  <35.650223, 30.084188, 43.415089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.057930, 30.007990, 42.793247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879612, 29.655882, 42.858234>,  <35.772621, 29.444618, 42.897228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.879612, 29.655882, 42.858234>,  <36.057930, 30.007990, 42.793247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.879612, 29.655882, 42.858234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110391, -0.126056, -0.985862,
		0.888303, -0.457425, -0.040979,
		-0.445792, -0.880268, 0.162472,
		35.745872, 29.391802, 42.906975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.377136, 29.482779, 42.310032>,  <36.057930, 30.007990, 42.793247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.377136, 29.482779, 42.310032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000500, 29.388313, 42.406063>,  <35.774517, 29.331635, 42.463680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000500, 29.388313, 42.406063>,  <36.377136, 29.482779, 42.310032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000500, 29.388313, 42.406063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184692, -0.233986, -0.954536,
		0.281600, -0.943121, 0.176702,
		-0.941589, -0.236162, 0.240077,
		35.718021, 29.317465, 42.478085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182453, 28.869045, 41.922318>,  <36.377136, 29.482779, 42.310032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182453, 28.869045, 41.922318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838238, 29.042816, 42.028706>,  <35.631706, 29.147079, 42.092537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.838238, 29.042816, 42.028706>,  <36.182453, 28.869045, 41.922318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838238, 29.042816, 42.028706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351391, -0.128272, -0.927400,
		-0.368773, -0.891525, 0.263038,
		-0.860541, 0.434430, 0.265971,
		35.580074, 29.173145, 42.108498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.620262, 28.363487, 41.766582>,  <36.182453, 28.869045, 41.922318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.620262, 28.363487, 41.766582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 28.723995, 41.787056>,  <35.344921, 28.940300, 41.799339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448174, 28.723995, 41.787056>,  <35.620262, 28.363487, 41.766582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448174, 28.723995, 41.787056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464034, -0.172159, -0.868927,
		-0.774327, -0.397581, 0.492287,
		-0.430221, 0.901272, 0.051183,
		35.319107, 28.994377, 41.802410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.036076, 28.333838, 41.377914>,  <35.620262, 28.363487, 41.766582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.036076, 28.333838, 41.377914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034672, 28.730076, 41.432629>,  <35.033829, 28.967819, 41.465458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.034672, 28.730076, 41.432629>,  <35.036076, 28.333838, 41.377914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.034672, 28.730076, 41.432629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559624, 0.111411, -0.821224,
		-0.828739, -0.079429, 0.553970,
		-0.003511, 0.990595, 0.136781,
		35.033619, 29.027254, 41.473663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.377335, 28.473576, 41.237583>,  <35.036076, 28.333838, 41.377914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.377335, 28.473576, 41.237583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600246, 28.803055, 41.195702>,  <34.733994, 29.000742, 41.170574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.600246, 28.803055, 41.195702>,  <34.377335, 28.473576, 41.237583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.600246, 28.803055, 41.195702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408612, 0.162281, -0.898165,
		-0.722825, 0.543311, 0.427008,
		0.557279, 0.823698, -0.104703,
		34.767429, 29.050163, 41.164291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.930775, 28.998104, 41.046310>,  <34.377335, 28.473576, 41.237583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.930775, 28.998104, 41.046310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290131, 29.140205, 40.943012>,  <34.505745, 29.225466, 40.881035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.290131, 29.140205, 40.943012>,  <33.930775, 28.998104, 41.046310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290131, 29.140205, 40.943012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356678, 0.247048, -0.900971,
		-0.256275, 0.901533, 0.348657,
		0.898390, 0.355254, -0.258244,
		34.559647, 29.246782, 40.865540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.747696, 29.642420, 40.755711>,  <33.930775, 28.998104, 41.046310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.747696, 29.642420, 40.755711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111462, 29.541685, 40.623318>,  <34.329720, 29.481243, 40.543880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.111462, 29.541685, 40.623318>,  <33.747696, 29.642420, 40.755711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.111462, 29.541685, 40.623318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244021, 0.321349, -0.914980,
		0.336788, 0.912859, 0.230785,
		0.909411, -0.251838, -0.330983,
		34.384285, 29.466133, 40.524021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.011326, 30.281965, 40.362816>,  <33.747696, 29.642420, 40.755711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.011326, 30.281965, 40.362816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188496, 29.949329, 40.228786>,  <34.294796, 29.749748, 40.148369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.188496, 29.949329, 40.228786>,  <34.011326, 30.281965, 40.362816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.188496, 29.949329, 40.228786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164999, 0.291747, -0.942157,
		0.881245, 0.472592, -0.007989,
		0.442925, -0.831589, -0.335077,
		34.321373, 29.699852, 40.128262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.302315, 30.543722, 39.796951>,  <34.011326, 30.281965, 40.362816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.302315, 30.543722, 39.796951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289719, 30.146875, 39.748428>,  <34.282162, 29.908768, 39.719315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.289719, 30.146875, 39.748428>,  <34.302315, 30.543722, 39.796951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289719, 30.146875, 39.748428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418199, 0.123313, -0.899946,
		0.907809, 0.022387, -0.418786,
		-0.031495, -0.992115, -0.121307,
		34.280270, 29.849241, 39.712036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594662, 30.481127, 39.167107>,  <34.302315, 30.543722, 39.796951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594662, 30.481127, 39.167107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392307, 30.145945, 39.248989>,  <34.270893, 29.944836, 39.298119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.392307, 30.145945, 39.248989>,  <34.594662, 30.481127, 39.167107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.392307, 30.145945, 39.248989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531250, 0.115690, -0.839279,
		0.679597, -0.533333, -0.503691,
		-0.505887, -0.837957, 0.204711,
		34.240540, 29.894558, 39.310402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.588314, 30.086418, 38.587395>,  <34.594662, 30.481127, 39.167107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.588314, 30.086418, 38.587395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265659, 29.977821, 38.797394>,  <34.072067, 29.912664, 38.923393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265659, 29.977821, 38.797394>,  <34.588314, 30.086418, 38.587395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265659, 29.977821, 38.797394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572505, 0.138182, -0.808173,
		0.146839, -0.952479, -0.266874,
		-0.806645, -0.271458, 0.525009,
		34.023666, 29.896374, 38.954895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294083, 30.255507, 38.581882>,  <34.588314, 30.086418, 38.587395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294083, 30.255507, 38.581882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439606, 29.905918, 38.710766>,  <35.526920, 29.696165, 38.788097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439606, 29.905918, 38.710766>,  <35.294083, 30.255507, 38.581882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439606, 29.905918, 38.710766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854000, -0.451074, -0.259260,
		0.371926, -0.180845, -0.910476,
		0.363806, -0.873972, 0.322208,
		35.548748, 29.643726, 38.807426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766041, 30.566376, 39.077187>,  <35.294083, 30.255507, 38.581882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766041, 30.566376, 39.077187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640732, 30.793549, 39.381638>,  <35.565544, 30.929853, 39.564308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640732, 30.793549, 39.381638>,  <35.766041, 30.566376, 39.077187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640732, 30.793549, 39.381638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781958, 0.300530, -0.546099,
		-0.538889, -0.766245, 0.349953,
		-0.313274, 0.567935, 0.761123,
		35.546749, 30.963928, 39.609974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501060, 30.457043, 38.994545>,  <35.766041, 30.566376, 39.077187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501060, 30.457043, 38.994545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566689, 30.838577, 39.095169>,  <36.606064, 31.067497, 39.155544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.566689, 30.838577, 39.095169>,  <36.501060, 30.457043, 38.994545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566689, 30.838577, 39.095169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.892436, -0.252175, 0.374120,
		0.420285, 0.163119, -0.892610,
		0.164068, 0.953835, 0.251558,
		36.615910, 31.124727, 39.170635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105221, 30.625233, 38.653904>,  <36.501060, 30.457043, 38.994545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105221, 30.625233, 38.653904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066277, 30.865379, 38.971413>,  <37.042912, 31.009468, 39.161919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.066277, 30.865379, 38.971413>,  <37.105221, 30.625233, 38.653904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.066277, 30.865379, 38.971413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880707, -0.319503, 0.349674,
		0.463547, 0.733128, -0.497642,
		-0.097358, 0.600368, 0.793776,
		37.037067, 31.045490, 39.209545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760136, 30.803579, 38.802601>,  <37.105221, 30.625233, 38.653904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760136, 30.803579, 38.802601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577831, 30.889656, 39.148079>,  <37.468449, 30.941303, 39.355366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.577831, 30.889656, 39.148079>,  <37.760136, 30.803579, 38.802601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.577831, 30.889656, 39.148079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851473, -0.177354, 0.493497,
		0.259377, 0.960332, -0.102400,
		-0.455759, 0.215193, 0.863699,
		37.441105, 30.954214, 39.407188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162193, 31.351427, 39.084198>,  <37.760136, 30.803579, 38.802601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162193, 31.351427, 39.084198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937855, 31.213259, 39.385166>,  <37.803253, 31.130358, 39.565746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.937855, 31.213259, 39.385166>,  <38.162193, 31.351427, 39.084198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.937855, 31.213259, 39.385166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808268, -0.031590, 0.587966,
		-0.179327, 0.937916, 0.296909,
		-0.560843, -0.345420, 0.752423,
		37.769604, 31.109632, 39.610893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421864, 31.678175, 39.741188>,  <38.162193, 31.351427, 39.084198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421864, 31.678175, 39.741188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208786, 31.377014, 39.895786>,  <38.080940, 31.196318, 39.988544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.208786, 31.377014, 39.895786>,  <38.421864, 31.678175, 39.741188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.208786, 31.377014, 39.895786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731872, -0.180495, 0.657103,
		-0.424974, 0.632898, 0.647176,
		-0.532692, -0.752902, 0.386495,
		38.048977, 31.151144, 40.011734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.256237, 31.770487, 40.486320>,  <38.421864, 31.678175, 39.741188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.256237, 31.770487, 40.486320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224934, 31.374220, 40.441689>,  <38.206150, 31.136459, 40.414909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.224934, 31.374220, 40.441689>,  <38.256237, 31.770487, 40.486320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224934, 31.374220, 40.441689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636285, -0.135794, 0.759408,
		-0.767474, -0.011565, 0.640975,
		-0.078258, -0.990670, -0.111577,
		38.201458, 31.077019, 40.408215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074982, 31.489340, 41.173481>,  <38.256237, 31.770487, 40.486320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074982, 31.489340, 41.173481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196278, 31.152559, 40.994972>,  <38.269054, 30.950491, 40.887867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.196278, 31.152559, 40.994972>,  <38.074982, 31.489340, 41.173481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196278, 31.152559, 40.994972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334650, -0.344405, 0.877151,
		-0.892219, -0.415334, 0.177322,
		0.303240, -0.841952, -0.446276,
		38.287251, 30.899973, 40.861088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.979588, 30.933537, 41.685890>,  <38.074982, 31.489340, 41.173481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.979588, 30.933537, 41.685890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237244, 30.772341, 41.425835>,  <38.391838, 30.675623, 41.269802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237244, 30.772341, 41.425835>,  <37.979588, 30.933537, 41.685890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237244, 30.772341, 41.425835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396646, -0.550769, 0.734388,
		-0.654027, -0.730925, -0.194930,
		0.644144, -0.402991, -0.650136,
		38.430489, 30.651443, 41.230793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.935246, 30.267405, 41.885689>,  <37.979588, 30.933537, 41.685890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.935246, 30.267405, 41.885689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266155, 30.305676, 41.664249>,  <38.464699, 30.328638, 41.531387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.266155, 30.305676, 41.664249>,  <37.935246, 30.267405, 41.885689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266155, 30.305676, 41.664249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452185, -0.698164, 0.555063,
		-0.333394, -0.709516, -0.620834,
		0.827270, 0.095677, -0.553597,
		38.514336, 30.334379, 41.498169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.150169, 29.610905, 41.920799>,  <37.935246, 30.267405, 41.885689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.150169, 29.610905, 41.920799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460075, 29.831148, 41.796501>,  <38.646019, 29.963295, 41.721920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.460075, 29.831148, 41.796501>,  <38.150169, 29.610905, 41.920799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.460075, 29.831148, 41.796501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619234, -0.561643, 0.548731,
		0.127606, -0.617565, -0.776099,
		0.774768, 0.550609, -0.310748,
		38.692505, 29.996330, 41.703278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.646713, 29.124105, 41.718212>,  <38.150169, 29.610905, 41.920799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.646713, 29.124105, 41.718212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838203, 29.466013, 41.798405>,  <38.953098, 29.671158, 41.846519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.838203, 29.466013, 41.798405>,  <38.646713, 29.124105, 41.718212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838203, 29.466013, 41.798405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526784, -0.462325, 0.713270,
		0.702370, -0.235846, -0.671604,
		0.478722, 0.854770, 0.200484,
		38.981819, 29.722445, 41.858551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278488, 28.919880, 41.886772>,  <38.646713, 29.124105, 41.718212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278488, 28.919880, 41.886772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256763, 29.288942, 42.039486>,  <39.243729, 29.510380, 42.131115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.256763, 29.288942, 42.039486>,  <39.278488, 28.919880, 41.886772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.256763, 29.288942, 42.039486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320252, -0.346051, 0.881866,
		0.945774, 0.170161, -0.276688,
		-0.054311, 0.922656, 0.381781,
		39.240471, 29.565739, 42.154018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855885, 28.975588, 42.276463>,  <39.278488, 28.919880, 41.886772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855885, 28.975588, 42.276463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578083, 29.222925, 42.423607>,  <39.411404, 29.371328, 42.511894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578083, 29.222925, 42.423607>,  <39.855885, 28.975588, 42.276463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578083, 29.222925, 42.423607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066081, -0.454293, 0.888398,
		0.716451, 0.641302, 0.274646,
		-0.694501, 0.618345, 0.367856,
		39.369732, 29.408428, 42.533962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.129303, 29.196177, 42.956356>,  <39.855885, 28.975588, 42.276463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.129303, 29.196177, 42.956356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742939, 29.297091, 42.979595>,  <39.511120, 29.357639, 42.993538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.742939, 29.297091, 42.979595>,  <40.129303, 29.196177, 42.956356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.742939, 29.297091, 42.979595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027067, -0.124789, 0.991814,
		0.257469, 0.959573, 0.113706,
		-0.965907, 0.252283, 0.058102,
		39.453167, 29.372776, 42.997025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.095036, 29.618809, 43.508392>,  <40.129303, 29.196177, 42.956356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.095036, 29.618809, 43.508392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724350, 29.478193, 43.455299>,  <39.501938, 29.393824, 43.423443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.724350, 29.478193, 43.455299>,  <40.095036, 29.618809, 43.508392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.724350, 29.478193, 43.455299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072384, -0.179617, 0.981070,
		-0.368725, 0.918781, 0.141008,
		-0.926716, -0.351539, -0.132734,
		39.446335, 29.372732, 43.415478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.691662, 29.951305, 44.016209>,  <40.095036, 29.618809, 43.508392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.691662, 29.951305, 44.016209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503197, 29.614042, 43.912601>,  <39.390118, 29.411684, 43.850437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.503197, 29.614042, 43.912601>,  <39.691662, 29.951305, 44.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.503197, 29.614042, 43.912601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110433, -0.234954, 0.965713,
		-0.875107, 0.483609, 0.017589,
		-0.471160, -0.843160, -0.259016,
		39.361847, 29.361094, 43.834896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.129704, 29.990528, 44.411831>,  <39.691662, 29.951305, 44.016209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.129704, 29.990528, 44.411831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148651, 29.607334, 44.298676>,  <39.160019, 29.377419, 44.230782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148651, 29.607334, 44.298676>,  <39.129704, 29.990528, 44.411831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148651, 29.607334, 44.298676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310297, -0.283307, 0.907443,
		-0.949459, 0.044790, -0.310680,
		0.047373, -0.957983, -0.282886,
		39.162865, 29.319939, 44.213810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534981, 29.616602, 44.653805>,  <39.129704, 29.990528, 44.411831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534981, 29.616602, 44.653805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805729, 29.325718, 44.608181>,  <38.968178, 29.151188, 44.580807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.805729, 29.325718, 44.608181>,  <38.534981, 29.616602, 44.653805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.805729, 29.325718, 44.608181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194309, -0.325972, 0.925195,
		-0.709994, -0.604074, -0.361944,
		0.676870, -0.727212, -0.114061,
		39.008789, 29.107553, 44.573963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231071, 29.070934, 44.927528>,  <38.534981, 29.616602, 44.653805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231071, 29.070934, 44.927528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613182, 28.952732, 44.922997>,  <38.842449, 28.881811, 44.920277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613182, 28.952732, 44.922997>,  <38.231071, 29.070934, 44.927528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613182, 28.952732, 44.922997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118692, -0.418207, 0.900564,
		-0.270858, -0.858941, -0.434576,
		0.955274, -0.295506, -0.011325,
		38.899765, 28.864080, 44.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.264679, 28.412041, 45.178894>,  <38.231071, 29.070934, 44.927528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.264679, 28.412041, 45.178894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647015, 28.503628, 45.252594>,  <38.876415, 28.558580, 45.296814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.647015, 28.503628, 45.252594>,  <38.264679, 28.412041, 45.178894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.647015, 28.503628, 45.252594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077354, -0.408810, 0.909335,
		0.283529, -0.883430, -0.373045,
		0.955839, 0.228966, 0.184246,
		38.933765, 28.572317, 45.307869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468601, 27.862654, 45.521946>,  <38.264679, 28.412041, 45.178894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468601, 27.862654, 45.521946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726852, 28.158489, 45.598026>,  <38.881802, 28.335991, 45.643673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726852, 28.158489, 45.598026>,  <38.468601, 27.862654, 45.521946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726852, 28.158489, 45.598026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206569, -0.408914, 0.888887,
		0.735186, -0.534598, -0.416781,
		0.645625, 0.739591, 0.190196,
		38.920540, 28.380367, 45.655087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049835, 27.581722, 45.914040>,  <38.468601, 27.862654, 45.521946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049835, 27.581722, 45.914040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048218, 27.971001, 46.006016>,  <39.047249, 28.204569, 46.061199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.048218, 27.971001, 46.006016>,  <39.049835, 27.581722, 45.914040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.048218, 27.971001, 46.006016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139330, -0.227146, 0.963842,
		0.990238, 0.035935, -0.134676,
		-0.004045, 0.973198, 0.229936,
		39.047005, 28.262960, 46.074997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.494087, 27.547100, 46.539310>,  <39.049835, 27.581722, 45.914040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.494087, 27.547100, 46.539310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368225, 27.926596, 46.551254>,  <39.292709, 28.154293, 46.558418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.368225, 27.926596, 46.551254>,  <39.494087, 27.547100, 46.539310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.368225, 27.926596, 46.551254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038277, -0.018748, 0.999091,
		0.948435, 0.315509, -0.030416,
		-0.314652, 0.948737, 0.029858,
		39.273830, 28.211216, 46.560211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.868530, 28.065460, 47.016808>,  <39.494087, 27.547100, 46.539310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.868530, 28.065460, 47.016808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493710, 28.198145, 46.973167>,  <39.268818, 28.277756, 46.946983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.493710, 28.198145, 46.973167>,  <39.868530, 28.065460, 47.016808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.493710, 28.198145, 46.973167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082334, 0.093752, 0.992185,
		0.339346, 0.938712, -0.060540,
		-0.937051, 0.331710, -0.109103,
		39.212593, 28.297657, 46.940437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841381, 28.549330, 47.509354>,  <39.868530, 28.065460, 47.016808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841381, 28.549330, 47.509354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455700, 28.471451, 47.437347>,  <39.224293, 28.424723, 47.394142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455700, 28.471451, 47.437347>,  <39.841381, 28.549330, 47.509354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455700, 28.471451, 47.437347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221071, 0.215356, 0.951183,
		-0.146426, 0.956930, -0.250688,
		-0.964203, -0.194698, -0.180016,
		39.166439, 28.413042, 47.383343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.543732, 29.098787, 47.820797>,  <39.841381, 28.549330, 47.509354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.543732, 29.098787, 47.820797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273335, 28.808039, 47.772316>,  <39.111095, 28.633589, 47.743229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273335, 28.808039, 47.772316>,  <39.543732, 29.098787, 47.820797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273335, 28.808039, 47.772316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245431, 0.066995, 0.967096,
		-0.694835, 0.683498, -0.223686,
		-0.675994, -0.726872, -0.121201,
		39.070538, 28.589977, 47.735954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.999859, 29.396832, 48.125435>,  <39.543732, 29.098787, 47.820797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.999859, 29.396832, 48.125435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913044, 29.006802, 48.107014>,  <38.860954, 28.772783, 48.095963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913044, 29.006802, 48.107014>,  <38.999859, 29.396832, 48.125435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913044, 29.006802, 48.107014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362091, 0.036604, 0.931424,
		-0.906523, 0.218831, -0.361011,
		-0.217039, -0.975076, -0.046055,
		38.847931, 28.714279, 48.093197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436779, 29.278255, 48.543797>,  <38.999859, 29.396832, 48.125435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436779, 29.278255, 48.543797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596920, 28.911732, 48.539940>,  <38.693005, 28.691818, 48.537624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.596920, 28.911732, 48.539940>,  <38.436779, 29.278255, 48.543797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.596920, 28.911732, 48.539940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205430, -0.100000, 0.973549,
		-0.893037, -0.387785, -0.228273,
		0.400355, -0.916309, -0.009641,
		38.717026, 28.636839, 48.537048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.976273, 28.883261, 48.865604>,  <38.436779, 29.278255, 48.543797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.976273, 28.883261, 48.865604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317650, 28.675819, 48.886337>,  <38.522476, 28.551353, 48.898777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.317650, 28.675819, 48.886337>,  <37.976273, 28.883261, 48.865604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317650, 28.675819, 48.886337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162495, -0.170266, 0.971908,
		-0.495211, -0.837889, -0.229583,
		0.853441, -0.518606, 0.051835,
		38.573681, 28.520237, 48.901886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852673, 28.371504, 49.352917>,  <37.976273, 28.883261, 48.865604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852673, 28.371504, 49.352917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251560, 28.375902, 49.323452>,  <38.490894, 28.378540, 49.305775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251560, 28.375902, 49.323452>,  <37.852673, 28.371504, 49.352917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251560, 28.375902, 49.323452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074465, -0.162386, 0.983913,
		-0.001143, -0.986666, -0.162753,
		0.997223, 0.010995, -0.073658,
		38.550728, 28.379200, 49.301353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093353, 27.807966, 49.736824>,  <37.852673, 28.371504, 49.352917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093353, 27.807966, 49.736824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413048, 28.044695, 49.694935>,  <38.604866, 28.186731, 49.669800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.413048, 28.044695, 49.694935>,  <38.093353, 27.807966, 49.736824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413048, 28.044695, 49.694935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235726, -0.148393, 0.960423,
		0.552858, -0.792293, -0.258109,
		0.799238, 0.591821, -0.104724,
		38.652821, 28.222240, 49.663517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687458, 27.480814, 50.138489>,  <38.093353, 27.807966, 49.736824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687458, 27.480814, 50.138489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744144, 27.873867, 50.090572>,  <38.778156, 28.109699, 50.061821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744144, 27.873867, 50.090572>,  <38.687458, 27.480814, 50.138489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744144, 27.873867, 50.090572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210370, 0.088353, 0.973621,
		0.967296, -0.163174, -0.194196,
		0.141711, 0.982633, -0.119791,
		38.786659, 28.168657, 50.054634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171467, 27.572752, 50.567448>,  <38.687458, 27.480814, 50.138489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171467, 27.572752, 50.567448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025150, 27.940821, 50.511612>,  <38.937363, 28.161661, 50.478111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.025150, 27.940821, 50.511612>,  <39.171467, 27.572752, 50.567448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.025150, 27.940821, 50.511612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000357, 0.150123, 0.988667,
		0.930698, 0.361593, -0.055241,
		-0.365788, 0.920170, -0.139590,
		38.915413, 28.216871, 50.469734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474106, 27.843540, 51.083595>,  <39.171467, 27.572752, 50.567448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474106, 27.843540, 51.083595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208271, 28.124250, 50.980961>,  <39.048771, 28.292677, 50.919380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208271, 28.124250, 50.980961>,  <39.474106, 27.843540, 51.083595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208271, 28.124250, 50.980961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034943, 0.313822, 0.948839,
		0.746390, 0.639555, -0.184041,
		-0.664590, 0.701773, -0.256582,
		39.008892, 28.334782, 50.903988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655510, 28.464413, 51.415749>,  <39.474106, 27.843540, 51.083595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655510, 28.464413, 51.415749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280064, 28.559034, 51.315319>,  <39.054794, 28.615808, 51.255062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.280064, 28.559034, 51.315319>,  <39.655510, 28.464413, 51.415749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.280064, 28.559034, 51.315319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200125, 0.219412, 0.954887,
		0.280972, 0.946520, -0.158603,
		-0.938619, 0.236556, -0.251071,
		38.998478, 28.630001, 51.239998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561775, 29.168175, 51.740723>,  <39.655510, 28.464413, 51.415749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561775, 29.168175, 51.740723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206779, 28.988363, 51.700165>,  <38.993782, 28.880476, 51.675831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206779, 28.988363, 51.700165>,  <39.561775, 29.168175, 51.740723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206779, 28.988363, 51.700165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181423, 0.138585, 0.973591,
		-0.423604, 0.882451, -0.204548,
		-0.887494, -0.449527, -0.101392,
		38.940533, 28.853506, 51.669746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.195995, 29.685661, 52.134476>,  <39.561775, 29.168175, 51.740723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.195995, 29.685661, 52.134476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973385, 29.354397, 52.107853>,  <38.839817, 29.155638, 52.091881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.973385, 29.354397, 52.107853>,  <39.195995, 29.685661, 52.134476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.973385, 29.354397, 52.107853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436613, 0.223366, 0.871480,
		-0.706857, 0.514062, -0.485894,
		-0.556527, -0.828160, -0.066558,
		38.806427, 29.105949, 52.087887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751156, 30.170050, 52.214493>,  <39.195995, 29.685661, 52.134476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751156, 30.170050, 52.214493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103767, 30.176220, 52.403248>,  <39.315334, 30.179922, 52.516502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.103767, 30.176220, 52.403248>,  <38.751156, 30.170050, 52.214493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103767, 30.176220, 52.403248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339637, 0.673553, -0.656486,
		-0.327966, 0.738978, 0.588515,
		0.881524, 0.015424, 0.471886,
		39.368225, 30.180847, 52.544815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001255, 30.816074, 52.111237>,  <38.751156, 30.170050, 52.214493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001255, 30.816074, 52.111237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333805, 30.614861, 52.205704>,  <39.533333, 30.494133, 52.262386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.333805, 30.614861, 52.205704>,  <39.001255, 30.816074, 52.111237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.333805, 30.614861, 52.205704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532875, 0.601041, -0.595646,
		0.157682, 0.621053, 0.767743,
		0.831372, -0.503034, 0.236171,
		39.583218, 30.463951, 52.276554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.399548, 31.269646, 52.426899>,  <39.001255, 30.816074, 52.111237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.399548, 31.269646, 52.426899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621716, 30.983496, 52.257313>,  <39.755016, 30.811806, 52.155560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621716, 30.983496, 52.257313>,  <39.399548, 31.269646, 52.426899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621716, 30.983496, 52.257313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366566, 0.668258, -0.647349,
		0.746417, 0.204138, 0.633395,
		0.555420, -0.715374, -0.423969,
		39.788342, 30.768883, 52.130123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.943859, 31.515345, 52.144516>,  <39.399548, 31.269646, 52.426899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.943859, 31.515345, 52.144516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973442, 31.172279, 51.940968>,  <39.991192, 30.966440, 51.818840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973442, 31.172279, 51.940968>,  <39.943859, 31.515345, 52.144516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973442, 31.172279, 51.940968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550816, 0.460500, -0.696090,
		0.831344, -0.228812, 0.506471,
		0.073956, -0.857662, -0.508867,
		39.995628, 30.914980, 51.788307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630512, 31.539106, 51.885803>,  <39.943859, 31.515345, 52.144516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.630512, 31.539106, 51.885803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437096, 31.255056, 51.681095>,  <40.321045, 31.084627, 51.558270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.437096, 31.255056, 51.681095>,  <40.630512, 31.539106, 51.885803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.437096, 31.255056, 51.681095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390976, 0.347886, -0.852123,
		0.783152, -0.612127, 0.109424,
		-0.483540, -0.710124, -0.511775,
		40.292034, 31.042019, 51.527561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.039394, 31.469505, 51.269817>,  <40.630512, 31.539106, 51.885803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.039394, 31.469505, 51.269817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684063, 31.311787, 51.175671>,  <40.470863, 31.217155, 51.119183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.684063, 31.311787, 51.175671>,  <41.039394, 31.469505, 51.269817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.684063, 31.311787, 51.175671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102154, 0.330017, -0.938431,
		0.447696, -0.857681, -0.252885,
		-0.888331, -0.394299, -0.235363,
		40.417564, 31.193497, 51.105061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.269421, 31.215111, 50.627640>,  <41.039394, 31.469505, 51.269817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.269421, 31.215111, 50.627640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869473, 31.210087, 50.623638>,  <40.629505, 31.207073, 50.621239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.869473, 31.210087, 50.623638>,  <41.269421, 31.215111, 50.627640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869473, 31.210087, 50.623638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004848, 0.357869, -0.933759,
		0.015307, -0.933687, -0.357762,
		-0.999871, -0.012558, -0.010004,
		40.569511, 31.206320, 50.620636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.075558, 30.811859, 50.069614>,  <41.269421, 31.215111, 50.627640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.075558, 30.811859, 50.069614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751957, 31.036478, 50.139103>,  <40.557796, 31.171249, 50.180798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.751957, 31.036478, 50.139103>,  <41.075558, 30.811859, 50.069614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.751957, 31.036478, 50.139103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115646, 0.137712, -0.983698,
		-0.576319, -0.815903, -0.046468,
		-0.809001, 0.561550, 0.173722,
		40.509258, 31.204943, 50.191219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.701050, 30.627567, 49.544506>,  <41.075558, 30.811859, 50.069614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.701050, 30.627567, 49.544506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523167, 30.959482, 49.679379>,  <40.416435, 31.158630, 49.760303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.523167, 30.959482, 49.679379>,  <40.701050, 30.627567, 49.544506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.523167, 30.959482, 49.679379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345193, 0.188590, -0.919389,
		-0.826484, -0.525253, 0.202568,
		-0.444709, 0.829785, 0.337180,
		40.389755, 31.208418, 49.780533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019897, 30.517141, 49.396931>,  <40.701050, 30.627567, 49.544506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019897, 30.517141, 49.396931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082336, 30.910551, 49.433395>,  <40.119801, 31.146597, 49.455276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082336, 30.910551, 49.433395>,  <40.019897, 30.517141, 49.396931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082336, 30.910551, 49.433395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561664, 0.164304, -0.810887,
		-0.812507, 0.075371, 0.578058,
		0.156094, 0.983526, 0.091165,
		40.129166, 31.205608, 49.460747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334435, 30.787073, 49.330692>,  <40.019897, 30.517141, 49.396931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334435, 30.787073, 49.330692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597332, 31.078304, 49.252781>,  <39.755070, 31.253042, 49.206032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597332, 31.078304, 49.252781>,  <39.334435, 30.787073, 49.330692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597332, 31.078304, 49.252781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468739, 0.192496, -0.862107,
		-0.590185, 0.657914, 0.467794,
		0.657241, 0.728076, -0.194781,
		39.794506, 31.296726, 49.194347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.923134, 31.203381, 49.055729>,  <39.334435, 30.787073, 49.330692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.923134, 31.203381, 49.055729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287125, 31.314745, 48.932816>,  <39.505520, 31.381563, 48.859066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.287125, 31.314745, 48.932816>,  <38.923134, 31.203381, 49.055729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.287125, 31.314745, 48.932816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349343, 0.115542, -0.929844,
		-0.223374, 0.953487, 0.202402,
		0.909980, 0.278411, -0.307285,
		39.560120, 31.398268, 48.840630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813839, 31.815008, 48.563374>,  <38.923134, 31.203381, 49.055729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813839, 31.815008, 48.563374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191570, 31.708242, 48.486423>,  <39.418209, 31.644184, 48.440254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191570, 31.708242, 48.486423>,  <38.813839, 31.815008, 48.563374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191570, 31.708242, 48.486423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205601, -0.022245, -0.978383,
		0.256864, 0.963464, -0.075885,
		0.944325, -0.266913, -0.192375,
		39.474869, 31.628168, 48.428711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.857777, 32.188068, 47.940159>,  <38.813839, 31.815008, 48.563374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.857777, 32.188068, 47.940159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169285, 31.939104, 47.971462>,  <39.356190, 31.789724, 47.990246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.169285, 31.939104, 47.971462>,  <38.857777, 32.188068, 47.940159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169285, 31.939104, 47.971462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108180, 0.010366, -0.994077,
		0.617916, 0.782620, 0.075405,
		0.778766, -0.622414, 0.078258,
		39.402916, 31.752380, 47.994938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.505943, 32.463802, 47.751499>,  <38.857777, 32.188068, 47.940159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.505943, 32.463802, 47.751499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479603, 32.070709, 47.682331>,  <39.463799, 31.834854, 47.640831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.479603, 32.070709, 47.682331>,  <39.505943, 32.463802, 47.751499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479603, 32.070709, 47.682331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028414, 0.175076, -0.984145,
		0.997425, -0.059896, -0.039452,
		-0.065853, -0.982731, -0.172923,
		39.459846, 31.775890, 47.630455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.955578, 32.379368, 47.242016>,  <39.505943, 32.463802, 47.751499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.955578, 32.379368, 47.242016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771694, 32.024303, 47.231190>,  <39.661366, 31.811266, 47.224693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.771694, 32.024303, 47.231190>,  <39.955578, 32.379368, 47.242016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.771694, 32.024303, 47.231190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032896, 0.047478, -0.998330,
		0.887460, -0.458051, -0.051027,
		-0.459709, -0.887657, -0.027067,
		39.633781, 31.758007, 47.223068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355659, 31.959940, 46.758358>,  <39.955578, 32.379368, 47.242016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355659, 31.959940, 46.758358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986214, 31.807194, 46.771759>,  <39.764545, 31.715546, 46.779800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.986214, 31.807194, 46.771759>,  <40.355659, 31.959940, 46.758358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986214, 31.807194, 46.771759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025866, -0.149289, -0.988455,
		0.382461, -0.912080, 0.147762,
		-0.923610, -0.381868, 0.033505,
		39.709129, 31.692633, 46.781811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.414742, 31.304188, 46.484810>,  <40.355659, 31.959940, 46.758358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.414742, 31.304188, 46.484810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030453, 31.398571, 46.426392>,  <39.799877, 31.455200, 46.391338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.030453, 31.398571, 46.426392>,  <40.414742, 31.304188, 46.484810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030453, 31.398571, 46.426392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091633, -0.227029, -0.969567,
		-0.261939, -0.944870, 0.196491,
		-0.960724, 0.235962, -0.146049,
		39.742233, 31.469358, 46.382576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.185631, 30.729973, 46.031498>,  <40.414742, 31.304188, 46.484810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.185631, 30.729973, 46.031498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951660, 31.050358, 45.980392>,  <39.811279, 31.242588, 45.949730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951660, 31.050358, 45.980392>,  <40.185631, 30.729973, 46.031498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951660, 31.050358, 45.980392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169158, -0.033586, -0.985017,
		-0.793251, -0.597774, -0.115843,
		-0.584926, 0.800961, -0.127760,
		39.776184, 31.290646, 45.942066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953720, 30.593243, 45.440063>,  <40.185631, 30.729973, 46.031498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953720, 30.593243, 45.440063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782013, 30.953421, 45.468143>,  <39.678989, 31.169527, 45.484989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.782013, 30.953421, 45.468143>,  <39.953720, 30.593243, 45.440063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782013, 30.953421, 45.468143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047405, 0.055152, -0.997352,
		-0.901934, -0.431455, 0.019011,
		-0.429264, 0.900447, 0.070196,
		39.653233, 31.223555, 45.489201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.363941, 30.566387, 44.945240>,  <39.953720, 30.593243, 45.440063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.363941, 30.566387, 44.945240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505165, 30.932800, 45.021381>,  <39.589901, 31.152647, 45.067066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.505165, 30.932800, 45.021381>,  <39.363941, 30.566387, 44.945240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505165, 30.932800, 45.021381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025166, 0.194088, -0.980661,
		-0.935263, 0.351022, 0.045472,
		0.353059, 0.916031, 0.190357,
		39.611084, 31.207609, 45.078487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.039345, 30.906916, 44.400303>,  <39.363941, 30.566387, 44.945240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.039345, 30.906916, 44.400303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299744, 31.191797, 44.505356>,  <39.455982, 31.362726, 44.568386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299744, 31.191797, 44.505356>,  <39.039345, 30.906916, 44.400303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299744, 31.191797, 44.505356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249213, 0.126281, -0.960180,
		-0.717008, 0.690522, -0.095283,
		0.650993, 0.712203, 0.262632,
		39.495041, 31.405458, 44.584145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.841743, 31.513769, 44.013298>,  <39.039345, 30.906916, 44.400303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.841743, 31.513769, 44.013298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225395, 31.565443, 44.113998>,  <39.455585, 31.596447, 44.174419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.225395, 31.565443, 44.113998>,  <38.841743, 31.513769, 44.013298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225395, 31.565443, 44.113998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185200, 0.386079, -0.903683,
		-0.213939, 0.913375, 0.346375,
		0.959130, 0.129184, 0.251754,
		39.513134, 31.604198, 44.189526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096577, 32.234280, 43.820656>,  <38.841743, 31.513769, 44.013298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.096577, 32.234280, 43.820656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425182, 32.008522, 43.853085>,  <39.622345, 31.873068, 43.872543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.425182, 32.008522, 43.853085>,  <39.096577, 32.234280, 43.820656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.425182, 32.008522, 43.853085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335764, 0.363935, -0.868800,
		0.460837, 0.740956, 0.488481,
		0.821518, -0.564390, 0.081072,
		39.671638, 31.839205, 43.877407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.641510, 32.690147, 43.644600>,  <39.096577, 32.234280, 43.820656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.641510, 32.690147, 43.644600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789948, 32.326820, 43.567394>,  <39.879009, 32.108826, 43.521072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.789948, 32.326820, 43.567394>,  <39.641510, 32.690147, 43.644600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789948, 32.326820, 43.567394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286744, 0.309783, -0.906538,
		0.883215, 0.281063, 0.375412,
		0.371091, -0.908316, -0.193012,
		39.901276, 32.054325, 43.509491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277485, 32.770092, 43.346371>,  <39.641510, 32.690147, 43.644600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.277485, 32.770092, 43.346371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161385, 32.407135, 43.224789>,  <40.091724, 32.189362, 43.151840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.161385, 32.407135, 43.224789>,  <40.277485, 32.770092, 43.346371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.161385, 32.407135, 43.224789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193605, 0.255381, -0.947258,
		0.937160, -0.333793, 0.101550,
		-0.290254, -0.907393, -0.303957,
		40.074306, 32.134918, 43.133602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.916790, 32.455364, 43.020752>,  <40.277485, 32.770092, 43.346371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.916790, 32.455364, 43.020752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586639, 32.262585, 42.903130>,  <40.388550, 32.146915, 42.832558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.586639, 32.262585, 42.903130>,  <40.916790, 32.455364, 43.020752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.586639, 32.262585, 42.903130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293034, 0.079485, -0.952792,
		0.482574, -0.872584, 0.075624,
		-0.825380, -0.481954, -0.294054,
		40.339024, 32.118000, 42.814915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113056, 31.910589, 42.413445>,  <40.916790, 32.455364, 43.020752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113056, 31.910589, 42.413445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721764, 31.985893, 42.378536>,  <40.486988, 32.031075, 42.357590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721764, 31.985893, 42.378536>,  <41.113056, 31.910589, 42.413445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721764, 31.985893, 42.378536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134180, 0.253060, -0.958100,
		-0.158288, -0.948956, -0.272813,
		-0.978234, 0.188262, -0.087274,
		40.428295, 32.042370, 42.352352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.905437, 31.620584, 41.759823>,  <41.113056, 31.910589, 42.413445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.905437, 31.620584, 41.759823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597740, 31.863785, 41.838406>,  <40.413120, 32.009705, 41.885555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.597740, 31.863785, 41.838406>,  <40.905437, 31.620584, 41.759823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.597740, 31.863785, 41.838406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044608, 0.255618, -0.965748,
		-0.637395, -0.751661, -0.169511,
		-0.769245, 0.608002, 0.196460,
		40.366966, 32.046185, 41.897343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443005, 31.610146, 41.090775>,  <40.905437, 31.620584, 41.759823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443005, 31.610146, 41.090775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343147, 31.947355, 41.281345>,  <40.283234, 32.149681, 41.395687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.343147, 31.947355, 41.281345>,  <40.443005, 31.610146, 41.090775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.343147, 31.947355, 41.281345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236451, 0.424043, -0.874230,
		-0.939025, -0.330901, 0.093473,
		-0.249647, 0.843026, 0.476429,
		40.268253, 32.200264, 41.424274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.855980, 31.754990, 40.784698>,  <40.443005, 31.610146, 41.090775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.855980, 31.754990, 40.784698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989796, 32.108276, 40.916157>,  <40.070087, 32.320248, 40.995029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.989796, 32.108276, 40.916157>,  <39.855980, 31.754990, 40.784698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.989796, 32.108276, 40.916157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045963, 0.363614, -0.930415,
		-0.941259, 0.296159, 0.162240,
		0.334543, 0.883218, 0.328643,
		40.090160, 32.373241, 41.014751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.500202, 32.228863, 40.405163>,  <39.855980, 31.754990, 40.784698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.500202, 32.228863, 40.405163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793690, 32.472965, 40.524654>,  <39.969784, 32.619427, 40.596352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.793690, 32.472965, 40.524654>,  <39.500202, 32.228863, 40.405163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.793690, 32.472965, 40.524654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006724, 0.433121, -0.901311,
		-0.679421, 0.663316, 0.313685,
		0.733718, 0.610260, 0.298732,
		40.013805, 32.656044, 40.614273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349384, 32.953415, 40.152687>,  <39.500202, 32.228863, 40.405163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349384, 32.953415, 40.152687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738827, 32.968849, 40.242672>,  <39.972492, 32.978111, 40.296665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738827, 32.968849, 40.242672>,  <39.349384, 32.953415, 40.152687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738827, 32.968849, 40.242672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186293, 0.435136, -0.880881,
		-0.131881, 0.899537, 0.416461,
		0.973603, 0.038588, 0.224964,
		40.030907, 32.980427, 40.310162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446617, 33.609741, 40.046875>,  <39.349384, 32.953415, 40.152687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446617, 33.609741, 40.046875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799294, 33.424374, 40.011398>,  <40.010899, 33.313152, 39.990112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.799294, 33.424374, 40.011398>,  <39.446617, 33.609741, 40.046875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799294, 33.424374, 40.011398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201250, 0.539371, -0.817666,
		0.426760, 0.703078, 0.568821,
		0.881688, -0.463423, -0.088687,
		40.063801, 33.285347, 39.984791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.894363, 34.059078, 39.913868>,  <39.446617, 33.609741, 40.046875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.894363, 34.059078, 39.913868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084881, 33.736385, 39.773968>,  <40.199192, 33.542770, 39.690029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.084881, 33.736385, 39.773968>,  <39.894363, 34.059078, 39.913868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.084881, 33.736385, 39.773968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223072, 0.495613, -0.839409,
		0.850520, 0.321785, 0.416017,
		0.476292, -0.806736, -0.349748,
		40.227768, 33.494366, 39.669044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568424, 34.324253, 39.706738>,  <39.894363, 34.059078, 39.913868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568424, 34.324253, 39.706738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489086, 33.984444, 39.511204>,  <40.441483, 33.780556, 39.393883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.489086, 33.984444, 39.511204>,  <40.568424, 34.324253, 39.706738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489086, 33.984444, 39.511204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243912, 0.440275, -0.864098,
		0.949297, -0.290627, 0.119882,
		-0.198349, -0.849526, -0.488839,
		40.429581, 33.729588, 39.364552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.000259, 34.314903, 39.105564>,  <40.568424, 34.324253, 39.706738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.000259, 34.314903, 39.105564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722744, 34.045261, 39.004177>,  <40.556236, 33.883476, 38.943344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722744, 34.045261, 39.004177>,  <41.000259, 34.314903, 39.105564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722744, 34.045261, 39.004177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010063, 0.360992, -0.932515,
		0.720110, -0.644416, -0.257235,
		-0.693787, -0.674102, -0.253469,
		40.514606, 33.843033, 38.928135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.200401, 34.069614, 38.458397>,  <41.000259, 34.314903, 39.105564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.200401, 34.069614, 38.458397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810810, 33.979458, 38.467896>,  <40.577057, 33.925362, 38.473595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.810810, 33.979458, 38.467896>,  <41.200401, 34.069614, 38.458397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.810810, 33.979458, 38.467896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086023, 0.270705, -0.958811,
		0.209681, -0.935904, -0.283050,
		-0.973979, -0.225394, 0.023748,
		40.518616, 33.911839, 38.475021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.017891, 33.938961, 37.793812>,  <41.200401, 34.069614, 38.458397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.017891, 33.938961, 37.793812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639439, 33.973064, 37.918755>,  <40.412369, 33.993526, 37.993721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.639439, 33.973064, 37.918755>,  <41.017891, 33.938961, 37.793812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.639439, 33.973064, 37.918755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269795, 0.325798, -0.906127,
		-0.179017, -0.941588, -0.285246,
		-0.946131, 0.085255, 0.312359,
		40.355598, 33.998642, 38.012463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600201, 33.502480, 37.448669>,  <41.017891, 33.938961, 37.793812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600201, 33.502480, 37.448669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401188, 33.830093, 37.562965>,  <40.281780, 34.026661, 37.631542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401188, 33.830093, 37.562965>,  <40.600201, 33.502480, 37.448669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401188, 33.830093, 37.562965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094452, 0.276290, -0.956422,
		-0.862290, -0.502835, -0.060102,
		-0.497528, 0.819037, 0.285736,
		40.251930, 34.075806, 37.648685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.878857, 34.146084, 36.997105>,  <40.600201, 33.502480, 37.448669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.878857, 34.146084, 36.997105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191490, 33.920208, 37.103127>,  <41.379070, 33.784683, 37.166740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.191490, 33.920208, 37.103127>,  <40.878857, 34.146084, 36.997105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.191490, 33.920208, 37.103127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480198, 0.273439, -0.833451,
		0.398161, 0.778693, 0.484876,
		0.781586, -0.564685, 0.265054,
		41.425964, 33.750801, 37.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.343567, 34.523804, 36.746586>,  <40.878857, 34.146084, 36.997105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.343567, 34.523804, 36.746586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523991, 34.171791, 36.806030>,  <41.632244, 33.960583, 36.841698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.523991, 34.171791, 36.806030>,  <41.343567, 34.523804, 36.746586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.523991, 34.171791, 36.806030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709387, 0.252467, -0.658050,
		0.541588, 0.402240, 0.738163,
		0.451056, -0.880036, 0.148611,
		41.659306, 33.907780, 36.850613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067753, 34.640778, 36.805828>,  <41.343567, 34.523804, 36.746586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067753, 34.640778, 36.805828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034946, 34.260357, 36.686646>,  <42.015263, 34.032104, 36.615135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034946, 34.260357, 36.686646>,  <42.067753, 34.640778, 36.805828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034946, 34.260357, 36.686646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745033, 0.140067, -0.652156,
		0.661967, -0.275472, 0.697076,
		-0.082014, -0.951050, -0.297955,
		42.010342, 33.975040, 36.597260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.676250, 34.214123, 36.870510>,  <42.067753, 34.640778, 36.805828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.676250, 34.214123, 36.870510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452877, 34.090740, 36.562481>,  <42.318851, 34.016712, 36.377663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.452877, 34.090740, 36.562481>,  <42.676250, 34.214123, 36.870510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.452877, 34.090740, 36.562481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752558, 0.202189, -0.626719,
		0.349014, -0.929503, 0.119220,
		-0.558432, -0.308454, -0.770071,
		42.285347, 33.998203, 36.331459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118206, 33.860500, 36.414574>,  <42.676250, 34.214123, 36.870510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118206, 33.860500, 36.414574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934734, 34.192032, 36.286415>,  <42.824650, 34.390949, 36.209518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.934734, 34.192032, 36.286415>,  <43.118206, 33.860500, 36.414574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.934734, 34.192032, 36.286415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517485, -0.542265, -0.661935,
		-0.722371, -0.137817, 0.677633,
		-0.458683, 0.828828, -0.320398,
		42.797131, 34.440681, 36.190296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063831, 34.070435, 35.706326>,  <43.118206, 33.860500, 36.414574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063831, 34.070435, 35.706326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116158, 34.335308, 35.411190>,  <43.147552, 34.494232, 35.234108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.116158, 34.335308, 35.411190>,  <43.063831, 34.070435, 35.706326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.116158, 34.335308, 35.411190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544789, -0.573781, -0.611540,
		-0.828307, 0.481966, 0.285687,
		0.130819, 0.662182, -0.737836,
		43.155403, 34.533962, 35.189838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.394699, 34.179855, 35.331650>,  <43.063831, 34.070435, 35.706326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.394699, 34.179855, 35.331650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751434, 34.206486, 35.152679>,  <42.965477, 34.222462, 35.045296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.751434, 34.206486, 35.152679>,  <42.394699, 34.179855, 35.331650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.751434, 34.206486, 35.152679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266405, -0.722079, -0.638459,
		-0.365580, 0.688600, -0.626244,
		0.891841, 0.066573, -0.447424,
		43.018986, 34.226460, 35.018452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.504475, 34.219643, 34.528133>,  <42.394699, 34.179855, 35.331650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.504475, 34.219643, 34.528133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818607, 34.031223, 34.688812>,  <43.007088, 33.918171, 34.785221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.818607, 34.031223, 34.688812>,  <42.504475, 34.219643, 34.528133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818607, 34.031223, 34.688812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119403, -0.751939, -0.648329,
		0.607448, 0.461191, -0.646769,
		0.785334, -0.471052, 0.401697,
		43.054207, 33.889908, 34.809322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004417, 34.113297, 34.037819>,  <42.504475, 34.219643, 34.528133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004417, 34.113297, 34.037819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098221, 33.827072, 34.301022>,  <43.154503, 33.655338, 34.458942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.098221, 33.827072, 34.301022>,  <43.004417, 34.113297, 34.037819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.098221, 33.827072, 34.301022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126340, -0.693579, -0.709216,
		0.963869, 0.083184, -0.253055,
		0.234509, -0.715562, 0.658009,
		43.168575, 33.612404, 34.498425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382973, 33.622501, 33.645824>,  <43.004417, 34.113297, 34.037819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382973, 33.622501, 33.645824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257755, 33.423607, 33.969494>,  <43.182625, 33.304272, 34.163696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.257755, 33.423607, 33.969494>,  <43.382973, 33.622501, 33.645824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.257755, 33.423607, 33.969494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223026, -0.789683, -0.571542,
		0.923182, -0.359382, 0.136305,
		-0.313039, -0.497238, 0.809173,
		43.163845, 33.274437, 34.212246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.679947, 33.030045, 33.518597>,  <43.382973, 33.622501, 33.645824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.679947, 33.030045, 33.518597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386509, 32.964828, 33.782490>,  <43.210445, 32.925697, 33.940826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.386509, 32.964828, 33.782490>,  <43.679947, 33.030045, 33.518597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.386509, 32.964828, 33.782490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190225, -0.882720, -0.429674,
		0.652419, -0.440705, 0.616545,
		-0.733596, -0.163045, 0.659737,
		43.166431, 32.915916, 33.980412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.807327, 32.354519, 33.741837>,  <43.679947, 33.030045, 33.518597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.807327, 32.354519, 33.741837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429878, 32.441177, 33.841942>,  <43.203407, 32.493172, 33.902004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.429878, 32.441177, 33.841942>,  <43.807327, 32.354519, 33.741837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.429878, 32.441177, 33.841942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278882, -0.927610, -0.248527,
		0.178306, -0.304311, 0.935736,
		-0.943627, 0.216646, 0.250265,
		43.146790, 32.506172, 33.917023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.665371, 31.785357, 34.078556>,  <43.807327, 32.354519, 33.741837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.665371, 31.785357, 34.078556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328552, 31.957544, 33.948532>,  <43.126461, 32.060856, 33.870518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.328552, 31.957544, 33.948532>,  <43.665371, 31.785357, 34.078556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.328552, 31.957544, 33.948532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291321, -0.870087, -0.397594,
		-0.453979, -0.240095, 0.858055,
		-0.842043, 0.430468, -0.325056,
		43.075939, 32.086685, 33.851017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140621, 31.366753, 34.226540>,  <43.665371, 31.785357, 34.078556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140621, 31.366753, 34.226540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969616, 31.579599, 33.934216>,  <42.867012, 31.707308, 33.758820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.969616, 31.579599, 33.934216>,  <43.140621, 31.366753, 34.226540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.969616, 31.579599, 33.934216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512177, -0.808715, -0.289230,
		-0.744924, 0.250657, 0.618272,
		-0.427508, 0.532119, -0.730812,
		42.841362, 31.739235, 33.714973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456524, 31.151281, 34.249397>,  <43.140621, 31.366753, 34.226540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456524, 31.151281, 34.249397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528496, 31.312263, 33.890366>,  <42.571678, 31.408852, 33.674946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.528496, 31.312263, 33.890366>,  <42.456524, 31.151281, 34.249397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.528496, 31.312263, 33.890366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511040, -0.741428, -0.434882,
		-0.840513, 0.536950, 0.072263,
		0.179932, 0.402453, -0.897583,
		42.582474, 31.432999, 33.621090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.845993, 30.904793, 33.869034>,  <42.456524, 31.151281, 34.249397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.845993, 30.904793, 33.869034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088402, 31.025465, 33.574627>,  <42.233849, 31.097868, 33.397984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.088402, 31.025465, 33.574627>,  <41.845993, 30.904793, 33.869034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.088402, 31.025465, 33.574627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298319, -0.771557, -0.561876,
		-0.737390, 0.560078, -0.377583,
		0.606022, 0.301682, -0.736020,
		42.270206, 31.115969, 33.353821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401592, 30.871601, 33.227295>,  <41.845993, 30.904793, 33.869034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401592, 30.871601, 33.227295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794613, 30.857681, 33.154213>,  <42.030426, 30.849329, 33.110363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.794613, 30.857681, 33.154213>,  <41.401592, 30.871601, 33.227295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.794613, 30.857681, 33.154213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126676, -0.844486, -0.520381,
		-0.136185, 0.534446, -0.834159,
		0.982551, -0.034800, -0.182708,
		42.089378, 30.847240, 33.099400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.530079, 30.820137, 32.507198>,  <41.401592, 30.871601, 33.227295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.530079, 30.820137, 32.507198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858818, 30.654581, 32.663795>,  <42.056061, 30.555246, 32.757751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.858818, 30.654581, 32.663795>,  <41.530079, 30.820137, 32.507198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.858818, 30.654581, 32.663795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039475, -0.726890, -0.685618,
		0.568342, 0.548018, -0.613730,
		0.821845, -0.413892, 0.391489,
		42.105373, 30.530413, 32.781242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.807388, 30.514835, 31.968941>,  <41.530079, 30.820137, 32.507198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.807388, 30.514835, 31.968941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032951, 30.337614, 32.247711>,  <42.168289, 30.231281, 32.414974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.032951, 30.337614, 32.247711>,  <41.807388, 30.514835, 31.968941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032951, 30.337614, 32.247711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138380, -0.781281, -0.608647,
		0.814159, 0.439664, -0.379263,
		0.563911, -0.443053, 0.696928,
		42.202126, 30.204699, 32.456791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475544, 30.258535, 31.638884>,  <41.807388, 30.514835, 31.968941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475544, 30.258535, 31.638884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430695, 30.040356, 31.971127>,  <42.403786, 29.909447, 32.170471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.430695, 30.040356, 31.971127>,  <42.475544, 30.258535, 31.638884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.430695, 30.040356, 31.971127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000271, -0.835897, -0.548887,
		0.993694, -0.061320, 0.093875,
		-0.112127, -0.545451, 0.830609,
		42.397057, 29.876720, 32.220310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932384, 29.621323, 31.590576>,  <42.475544, 30.258535, 31.638884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932384, 29.621323, 31.590576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698547, 29.522081, 31.899561>,  <42.558247, 29.462538, 32.084953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.698547, 29.522081, 31.899561>,  <42.932384, 29.621323, 31.590576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.698547, 29.522081, 31.899561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209858, -0.873456, -0.439357,
		0.783718, -0.418952, 0.458548,
		-0.584591, -0.248102, 0.772463,
		42.523170, 29.447651, 32.131298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150848, 29.007383, 31.947914>,  <42.932384, 29.621323, 31.590576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150848, 29.007383, 31.947914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755367, 29.044977, 31.994619>,  <42.518078, 29.067533, 32.022640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.755367, 29.044977, 31.994619>,  <43.150848, 29.007383, 31.947914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.755367, 29.044977, 31.994619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131778, -0.916243, -0.378330,
		0.071423, -0.389443, 0.918277,
		-0.988703, 0.093987, 0.116761,
		42.458755, 29.073174, 32.029648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896553, 28.313335, 32.071941>,  <43.150848, 29.007383, 31.947914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896553, 28.313335, 32.071941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565742, 28.497620, 31.943085>,  <42.367256, 28.608191, 31.865770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.565742, 28.497620, 31.943085>,  <42.896553, 28.313335, 32.071941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.565742, 28.497620, 31.943085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259517, -0.821208, -0.508202,
		-0.498682, -0.336693, 0.798720,
		-0.827023, 0.460713, -0.322144,
		42.317635, 28.635834, 31.846441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.424469, 27.846182, 32.157715>,  <42.896553, 28.313335, 32.071941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.424469, 27.846182, 32.157715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258438, 28.107716, 31.904665>,  <42.158821, 28.264635, 31.752834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.258438, 28.107716, 31.904665>,  <42.424469, 27.846182, 32.157715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.258438, 28.107716, 31.904665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476517, -0.748586, -0.461033,
		-0.775014, 0.110095, 0.622280,
		-0.415073, 0.653833, -0.632627,
		42.133915, 28.303865, 31.714876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773304, 27.546316, 32.059380>,  <42.424469, 27.846182, 32.157715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773304, 27.546316, 32.059380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816883, 27.802542, 31.755325>,  <41.843029, 27.956278, 31.572893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816883, 27.802542, 31.755325>,  <41.773304, 27.546316, 32.059380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816883, 27.802542, 31.755325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250678, -0.722269, -0.644584,
		-0.961920, 0.260776, 0.081886,
		0.108948, 0.640565, -0.760136,
		41.849567, 27.994711, 31.527285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.268600, 27.233881, 31.650904>,  <41.773304, 27.546316, 32.059380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.268600, 27.233881, 31.650904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495750, 27.454960, 31.406923>,  <41.632042, 27.587606, 31.260534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495750, 27.454960, 31.406923>,  <41.268600, 27.233881, 31.650904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495750, 27.454960, 31.406923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161453, -0.651841, -0.740970,
		-0.807122, 0.519260, -0.280933,
		0.567879, 0.552695, -0.609951,
		41.666115, 27.620768, 31.223938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837189, 27.293001, 31.088634>,  <41.268600, 27.233881, 31.650904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837189, 27.293001, 31.088634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213699, 27.362026, 30.972546>,  <41.439606, 27.403440, 30.902893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.213699, 27.362026, 30.972546>,  <40.837189, 27.293001, 31.088634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213699, 27.362026, 30.972546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100958, -0.676379, -0.729602,
		-0.322202, 0.716054, -0.619235,
		0.941272, 0.172563, -0.290222,
		41.496082, 27.413795, 30.885479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873394, 27.192495, 30.281517>,  <40.837189, 27.293001, 31.088634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873394, 27.192495, 30.281517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257526, 27.161852, 30.388765>,  <41.488007, 27.143465, 30.453114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.257526, 27.161852, 30.388765>,  <40.873394, 27.192495, 30.281517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.257526, 27.161852, 30.388765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092256, -0.820084, -0.564757,
		0.263146, 0.567092, -0.780488,
		0.960335, -0.076609, 0.268120,
		41.545628, 27.138868, 30.469202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.121090, 26.601980, 30.019852>,  <40.873394, 27.192495, 30.281517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.121090, 26.601980, 30.019852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472382, 26.686380, 30.191523>,  <41.683155, 26.737020, 30.294525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.472382, 26.686380, 30.191523>,  <41.121090, 26.601980, 30.019852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.472382, 26.686380, 30.191523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396761, -0.822503, -0.407517,
		0.267015, 0.528174, -0.806062,
		0.878228, 0.211001, 0.429179,
		41.735851, 26.749681, 30.320276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.388367, 26.783253, 29.334145>,  <41.121090, 26.601980, 30.019852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.388367, 26.783253, 29.334145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495445, 27.082342, 29.577208>,  <41.559692, 27.261797, 29.723045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.495445, 27.082342, 29.577208>,  <41.388367, 26.783253, 29.334145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495445, 27.082342, 29.577208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652994, 0.604536, -0.456218,
		-0.708475, -0.274668, 0.650093,
		0.267696, 0.747726, 0.607655,
		41.575752, 27.306660, 29.759504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803673, 27.130348, 29.510206>,  <41.388367, 26.783253, 29.334145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803673, 27.130348, 29.510206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060726, 27.422369, 29.603195>,  <41.214958, 27.597582, 29.658989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.060726, 27.422369, 29.603195>,  <40.803673, 27.130348, 29.510206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.060726, 27.422369, 29.603195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641299, 0.678562, -0.358174,
		-0.419233, 0.081090, 0.904250,
		0.642634, 0.730053, 0.232473,
		41.253517, 27.641384, 29.672937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462490, 27.600140, 29.770084>,  <40.803673, 27.130348, 29.510206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.462490, 27.600140, 29.770084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775280, 27.808460, 29.633097>,  <40.962952, 27.933453, 29.550905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.775280, 27.808460, 29.633097>,  <40.462490, 27.600140, 29.770084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.775280, 27.808460, 29.633097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623257, 0.645965, -0.440772,
		-0.008332, 0.558117, 0.829720,
		0.781973, 0.520802, -0.342468,
		41.009872, 27.964701, 29.530355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.345707, 28.286774, 29.826662>,  <40.462490, 27.600140, 29.770084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.345707, 28.286774, 29.826662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629894, 28.324957, 29.547773>,  <40.800407, 28.347868, 29.380440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.629894, 28.324957, 29.547773>,  <40.345707, 28.286774, 29.826662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629894, 28.324957, 29.547773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391519, 0.876884, -0.278902,
		0.584757, 0.471127, 0.660377,
		0.710473, 0.095460, -0.697220,
		40.843037, 28.353596, 29.338608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665054, 28.919044, 29.887671>,  <40.345707, 28.286774, 29.826662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665054, 28.919044, 29.887671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694996, 28.805092, 29.505417>,  <40.712959, 28.736721, 29.276064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694996, 28.805092, 29.505417>,  <40.665054, 28.919044, 29.887671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694996, 28.805092, 29.505417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156385, 0.943113, -0.293397,
		0.984856, 0.171408, 0.026041,
		0.074851, -0.284881, -0.955636,
		40.717449, 28.719627, 29.218725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.189331, 29.362411, 29.425196>,  <40.665054, 28.919044, 29.887671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.189331, 29.362411, 29.425196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896683, 29.219704, 29.192835>,  <40.721092, 29.134079, 29.053419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.896683, 29.219704, 29.192835>,  <41.189331, 29.362411, 29.425196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.896683, 29.219704, 29.192835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071086, 0.887403, -0.455481,
		0.677995, -0.291946, -0.674604,
		-0.731622, -0.356769, -0.580901,
		40.677197, 29.112673, 29.018564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.574959, 29.867147, 29.041365>,  <41.189331, 29.362411, 29.425196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.574959, 29.867147, 29.041365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819996, 29.609343, 28.858355>,  <41.967018, 29.454659, 28.748549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.819996, 29.609343, 28.858355>,  <41.574959, 29.867147, 29.041365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.819996, 29.609343, 28.858355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777088, 0.596892, 0.199633,
		0.144426, -0.477831, 0.866498,
		0.612597, -0.644513, -0.457523,
		42.003777, 29.415989, 28.721098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.035149, 29.464214, 29.451969>,  <41.574959, 29.867147, 29.041365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.035149, 29.464214, 29.451969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189079, 29.537487, 29.090118>,  <42.281437, 29.581451, 28.873009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.189079, 29.537487, 29.090118>,  <42.035149, 29.464214, 29.451969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189079, 29.537487, 29.090118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642822, 0.650131, 0.405104,
		0.662335, -0.737410, 0.132435,
		0.384828, 0.183183, -0.904628,
		42.304527, 29.592442, 28.818729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.753784, 29.323635, 29.493258>,  <42.035149, 29.464214, 29.451969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.753784, 29.323635, 29.493258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630661, 29.617245, 29.251112>,  <42.556786, 29.793409, 29.105825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.630661, 29.617245, 29.251112>,  <42.753784, 29.323635, 29.493258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.630661, 29.617245, 29.251112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644078, 0.629058, 0.435258,
		0.700297, -0.255924, -0.666398,
		-0.307810, 0.734022, -0.605363,
		42.538319, 29.837452, 29.069504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296623, 29.676657, 28.981628>,  <42.753784, 29.323635, 29.493258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296623, 29.676657, 28.981628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014378, 29.919813, 29.127275>,  <42.845032, 30.065706, 29.214663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014378, 29.919813, 29.127275>,  <43.296623, 29.676657, 28.981628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014378, 29.919813, 29.127275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677597, 0.428514, 0.597694,
		0.207304, 0.668464, -0.714270,
		-0.705611, 0.607891, 0.364117,
		42.802692, 30.102180, 29.236511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.641617, 30.291601, 29.036848>,  <43.296623, 29.676657, 28.981628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.641617, 30.291601, 29.036848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313972, 30.366367, 29.253778>,  <43.117386, 30.411226, 29.383936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.313972, 30.366367, 29.253778>,  <43.641617, 30.291601, 29.036848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313972, 30.366367, 29.253778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537079, 0.581991, 0.610601,
		-0.201499, 0.791423, -0.577103,
		-0.819112, 0.186914, 0.542327,
		43.068237, 30.422441, 29.416477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.500305, 31.001028, 29.124592>,  <43.641617, 30.291601, 29.036848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.500305, 31.001028, 29.124592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285187, 30.855215, 29.428669>,  <43.156116, 30.767727, 29.611115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.285187, 30.855215, 29.428669>,  <43.500305, 31.001028, 29.124592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.285187, 30.855215, 29.428669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431635, 0.655498, 0.619689,
		-0.724200, 0.661392, -0.195180,
		-0.537797, -0.364532, 0.760191,
		43.123848, 30.745855, 29.656727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254745, 31.602423, 29.451601>,  <43.500305, 31.001028, 29.124592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254745, 31.602423, 29.451601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267494, 31.296463, 29.708944>,  <43.275143, 31.112886, 29.863350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.267494, 31.296463, 29.708944>,  <43.254745, 31.602423, 29.451601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.267494, 31.296463, 29.708944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518750, 0.562859, 0.643496,
		-0.854332, 0.313236, 0.414730,
		0.031869, -0.764900, 0.643360,
		43.277054, 31.066994, 29.901953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105957, 31.889154, 30.088079>,  <43.254745, 31.602423, 29.451601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105957, 31.889154, 30.088079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251865, 31.533987, 30.200180>,  <43.339413, 31.320887, 30.267441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.251865, 31.533987, 30.200180>,  <43.105957, 31.889154, 30.088079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.251865, 31.533987, 30.200180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382818, 0.417393, 0.824156,
		-0.848758, -0.193345, 0.492165,
		0.364773, -0.887919, 0.280250,
		43.361298, 31.267611, 30.284254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.895630, 31.723564, 30.786449>,  <43.105957, 31.889154, 30.088079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.895630, 31.723564, 30.786449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215363, 31.492533, 30.720142>,  <43.407200, 31.353914, 30.680359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215363, 31.492533, 30.720142>,  <42.895630, 31.723564, 30.786449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215363, 31.492533, 30.720142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398893, 0.303713, 0.865242,
		-0.449398, -0.757735, 0.473158,
		0.799328, -0.577578, -0.165767,
		43.455162, 31.319260, 30.670412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083122, 31.404047, 31.446558>,  <42.895630, 31.723564, 30.786449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083122, 31.404047, 31.446558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424355, 31.377615, 31.239525>,  <43.629093, 31.361755, 31.115305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424355, 31.377615, 31.239525>,  <43.083122, 31.404047, 31.446558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424355, 31.377615, 31.239525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516420, 0.248821, 0.819389,
		0.074638, -0.966293, 0.246390,
		0.853077, -0.066083, -0.517584,
		43.680279, 31.357790, 31.084249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.560246, 30.985619, 31.930252>,  <43.083122, 31.404047, 31.446558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.560246, 30.985619, 31.930252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793037, 31.130972, 31.639254>,  <43.932713, 31.218184, 31.464655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.793037, 31.130972, 31.639254>,  <43.560246, 30.985619, 31.930252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.793037, 31.130972, 31.639254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610332, 0.396010, 0.686055,
		0.537396, -0.843285, 0.008686,
		0.581980, 0.363382, -0.727498,
		43.967632, 31.239986, 31.421003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.184788, 30.696331, 32.025826>,  <43.560246, 30.985619, 31.930252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.184788, 30.696331, 32.025826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251740, 31.030458, 31.816359>,  <44.291908, 31.230936, 31.690680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.251740, 31.030458, 31.816359>,  <44.184788, 30.696331, 32.025826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.251740, 31.030458, 31.816359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737938, 0.246084, 0.628403,
		0.653783, -0.491613, -0.575225,
		0.167377, 0.835320, -0.523666,
		44.301952, 31.281054, 31.659258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.875557, 30.851830, 32.103031>,  <44.184788, 30.696331, 32.025826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.875557, 30.851830, 32.103031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786716, 31.215263, 31.961527>,  <44.733410, 31.433323, 31.876625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.786716, 31.215263, 31.961527>,  <44.875557, 30.851830, 32.103031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.786716, 31.215263, 31.961527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755137, 0.389813, 0.527080,
		0.616796, -0.150070, -0.772685,
		-0.222104, 0.908584, -0.353758,
		44.720085, 31.487839, 31.855400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567661, 31.199135, 31.882687>,  <44.875557, 30.851830, 32.103031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567661, 31.199135, 31.882687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290859, 31.477262, 31.960306>,  <45.124779, 31.644138, 32.006878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.290859, 31.477262, 31.960306>,  <45.567661, 31.199135, 31.882687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290859, 31.477262, 31.960306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681098, 0.539797, 0.494696,
		0.239224, 0.474501, -0.847125,
		-0.692009, 0.695318, 0.194050,
		45.083256, 31.685858, 32.018520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889053, 31.812666, 31.979256>,  <45.567661, 31.199135, 31.882687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889053, 31.812666, 31.979256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531998, 31.924747, 32.120495>,  <45.317764, 31.991997, 32.205238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.531998, 31.924747, 32.120495>,  <45.889053, 31.812666, 31.979256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.531998, 31.924747, 32.120495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448831, 0.625032, 0.638659,
		-0.041742, 0.728574, -0.683694,
		-0.892641, 0.280205, 0.353097,
		45.264206, 32.008808, 32.226425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.839619, 32.609844, 32.060139>,  <45.889053, 31.812666, 31.979256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.839619, 32.609844, 32.060139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586491, 32.428558, 32.311260>,  <45.434612, 32.319786, 32.461933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.586491, 32.428558, 32.311260>,  <45.839619, 32.609844, 32.060139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.586491, 32.428558, 32.311260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197135, 0.689781, 0.696664,
		-0.748782, 0.564626, -0.347165,
		-0.632822, -0.453211, 0.627803,
		45.396645, 32.292595, 32.499599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421761, 33.187744, 32.448856>,  <45.839619, 32.609844, 32.060139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421761, 33.187744, 32.448856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378681, 32.851715, 32.661526>,  <45.352833, 32.650097, 32.789127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.378681, 32.851715, 32.661526>,  <45.421761, 33.187744, 32.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.378681, 32.851715, 32.661526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124723, 0.519144, 0.845537,
		-0.986329, 0.157379, 0.048863,
		-0.107703, -0.840072, 0.531675,
		45.346371, 32.599693, 32.821030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.072021, 33.466949, 32.994289>,  <45.421761, 33.187744, 32.448856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.072021, 33.466949, 32.994289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194023, 33.110867, 33.129639>,  <45.267223, 32.897217, 33.210850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194023, 33.110867, 33.129639>,  <45.072021, 33.466949, 32.994289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194023, 33.110867, 33.129639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120098, 0.388422, 0.913622,
		-0.944749, -0.238018, 0.225382,
		0.305002, -0.890211, 0.338376,
		45.285522, 32.843803, 33.231152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.574928, 33.349728, 33.575436>,  <45.072021, 33.466949, 32.994289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.574928, 33.349728, 33.575436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915146, 33.146648, 33.630302>,  <45.119278, 33.024799, 33.663223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.915146, 33.146648, 33.630302>,  <44.574928, 33.349728, 33.575436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.915146, 33.146648, 33.630302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019968, 0.229449, 0.973116,
		-0.525522, -0.830418, 0.185019,
		0.850546, -0.507699, 0.137163,
		45.170311, 32.994339, 33.671452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429634, 32.992306, 34.210972>,  <44.574928, 33.349728, 33.575436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429634, 32.992306, 34.210972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825737, 32.998543, 34.155632>,  <45.063400, 33.002285, 34.122429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.825737, 32.998543, 34.155632>,  <44.429634, 32.992306, 34.210972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.825737, 32.998543, 34.155632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135081, 0.133155, 0.981847,
		0.033727, -0.990973, 0.129753,
		0.990260, 0.015587, -0.138352,
		45.122814, 33.003220, 34.114128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.698009, 32.462704, 34.687847>,  <44.429634, 32.992306, 34.210972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.698009, 32.462704, 34.687847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007370, 32.696136, 34.588818>,  <45.192986, 32.836197, 34.529400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.007370, 32.696136, 34.588818>,  <44.698009, 32.462704, 34.687847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.007370, 32.696136, 34.588818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230675, 0.104683, 0.967383,
		0.590461, -0.805281, -0.053656,
		0.773398, 0.583579, -0.247569,
		45.239391, 32.871212, 34.514545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.379417, 32.238987, 35.143734>,  <44.698009, 32.462704, 34.687847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.379417, 32.238987, 35.143734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417931, 32.616371, 35.016857>,  <45.441040, 32.842800, 34.940731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.417931, 32.616371, 35.016857>,  <45.379417, 32.238987, 35.143734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.417931, 32.616371, 35.016857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016877, 0.320172, 0.947209,
		0.995211, -0.085846, 0.046750,
		0.096282, 0.943462, -0.317190,
		45.446815, 32.899410, 34.921700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.945862, 32.631756, 35.491741>,  <45.379417, 32.238987, 35.143734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.945862, 32.631756, 35.491741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655212, 32.879604, 35.373024>,  <45.480824, 33.028313, 35.301792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655212, 32.879604, 35.373024>,  <45.945862, 32.631756, 35.491741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655212, 32.879604, 35.373024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024405, 0.408440, 0.912459,
		0.686603, 0.670257, -0.281660,
		-0.726623, 0.619623, -0.296793,
		45.437225, 33.065491, 35.283985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.109371, 33.401501, 35.498646>,  <45.945862, 32.631756, 35.491741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.109371, 33.401501, 35.498646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732201, 33.290085, 35.571640>,  <45.505898, 33.223236, 35.615437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732201, 33.290085, 35.571640>,  <46.109371, 33.401501, 35.498646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732201, 33.290085, 35.571640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126215, 0.208175, 0.969914,
		-0.308148, 0.937592, -0.161138,
		-0.942929, -0.278539, 0.182487,
		45.449322, 33.206524, 35.626385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.401226, 34.127472, 35.764053>,  <46.109371, 33.401501, 35.498646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.401226, 34.127472, 35.764053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481735, 34.235912, 35.387543>,  <46.530041, 34.300976, 35.161636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.481735, 34.235912, 35.387543>,  <46.401226, 34.127472, 35.764053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.481735, 34.235912, 35.387543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674824, 0.658145, 0.333854,
		0.710003, -0.702387, -0.050485,
		0.201268, 0.271106, -0.941272,
		46.542114, 34.317245, 35.105160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.078545, 33.943638, 35.573368>,  <46.401226, 34.127472, 35.764053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.078545, 33.943638, 35.573368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986000, 34.254967, 35.339893>,  <46.930473, 34.441765, 35.199810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.986000, 34.254967, 35.339893>,  <47.078545, 33.943638, 35.573368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.986000, 34.254967, 35.339893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811923, 0.484998, 0.324898,
		0.535962, -0.398741, -0.744144,
		-0.231358, 0.778320, -0.583687,
		46.916592, 34.488464, 35.164787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.615242, 34.079147, 34.957542>,  <47.078545, 33.943638, 35.573368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.615242, 34.079147, 34.957542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419575, 34.390984, 35.113983>,  <47.302174, 34.578083, 35.207848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.419575, 34.390984, 35.113983>,  <47.615242, 34.079147, 34.957542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.419575, 34.390984, 35.113983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850956, 0.328237, 0.410041,
		0.191287, 0.533391, -0.823956,
		-0.489165, 0.779586, 0.391105,
		47.272827, 34.624859, 35.231316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.974464, 34.840008, 34.882114>,  <47.615242, 34.079147, 34.957542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.974464, 34.840008, 34.882114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730553, 34.855247, 35.198776>,  <47.584206, 34.864391, 35.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.730553, 34.855247, 35.198776>,  <47.974464, 34.840008, 34.882114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.730553, 34.855247, 35.198776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747796, 0.358623, 0.558739,
		-0.262620, 0.932705, -0.247170,
		-0.609780, 0.038097, 0.791655,
		47.547619, 34.866676, 35.436272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.522533, 33.927498, 47.330124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168022, 33.751392, 47.272598>,  <35.955315, 33.645729, 47.238083>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.168022, 33.751392, 47.272598>,  <36.522533, 33.927498, 47.330124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.168022, 33.751392, 47.272598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118965, 0.083692, -0.989365,
		0.447613, -0.893962, -0.021799,
		-0.886279, -0.440259, -0.143812,
		35.902138, 33.619316, 47.229454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584450, 33.552914, 46.663414>,  <36.522533, 33.927498, 47.330124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584450, 33.552914, 46.663414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185974, 33.561176, 46.697323>,  <35.946888, 33.566135, 46.717670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.185974, 33.561176, 46.697323>,  <36.584450, 33.552914, 46.663414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185974, 33.561176, 46.697323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083113, 0.071217, -0.993992,
		-0.026574, -0.997247, -0.069228,
		-0.996185, 0.020660, 0.084776,
		35.887119, 33.567375, 46.722755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412575, 32.984203, 46.220024>,  <36.584450, 33.552914, 46.663414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412575, 32.984203, 46.220024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076996, 33.198418, 46.258739>,  <35.875648, 33.326946, 46.281971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.076996, 33.198418, 46.258739>,  <36.412575, 32.984203, 46.220024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.076996, 33.198418, 46.258739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117668, -0.004856, -0.993041,
		-0.531338, -0.844499, 0.067089,
		-0.838948, 0.535534, 0.096790,
		35.825310, 33.359077, 46.287777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859417, 32.665524, 45.791428>,  <36.412575, 32.984203, 46.220024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859417, 32.665524, 45.791428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735970, 33.041187, 45.851734>,  <35.661900, 33.266586, 45.887920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.735970, 33.041187, 45.851734>,  <35.859417, 32.665524, 45.791428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.735970, 33.041187, 45.851734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253200, 0.071671, -0.964755,
		-0.916865, -0.335920, 0.215676,
		-0.308623, 0.939160, 0.150768,
		35.643383, 33.322937, 45.896965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.225872, 32.629562, 45.629845>,  <35.859417, 32.665524, 45.791428>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.225872, 32.629562, 45.629845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347843, 33.006680, 45.575939>,  <35.421024, 33.232948, 45.543594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.347843, 33.006680, 45.575939>,  <35.225872, 32.629562, 45.629845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347843, 33.006680, 45.575939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330269, -0.028045, -0.943470,
		-0.893276, 0.332198, 0.302824,
		0.304926, 0.942793, -0.134767,
		35.439320, 33.289516, 45.535507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699329, 32.921646, 45.227158>,  <35.225872, 32.629562, 45.629845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699329, 32.921646, 45.227158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026649, 33.141743, 45.160683>,  <35.223042, 33.273800, 45.120796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.026649, 33.141743, 45.160683>,  <34.699329, 32.921646, 45.227158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026649, 33.141743, 45.160683> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138502, -0.091851, -0.986094,
		-0.557851, 0.829940, 0.001047,
		0.818303, 0.550239, -0.166187,
		35.272141, 33.306816, 45.110828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482674, 33.343197, 44.669498>,  <34.699329, 32.921646, 45.227158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482674, 33.343197, 44.669498> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877895, 33.403732, 44.681149>,  <35.115028, 33.440052, 44.688137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.877895, 33.403732, 44.681149>,  <34.482674, 33.343197, 44.669498>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.877895, 33.403732, 44.681149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028438, 0.006708, -0.999573,
		-0.151467, 0.988460, 0.002324,
		0.988053, 0.151336, 0.029126,
		35.174313, 33.449135, 44.689888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571735, 33.973129, 44.379520>,  <34.482674, 33.343197, 44.669498>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571735, 33.973129, 44.379520> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941738, 33.825546, 44.343212>,  <35.163738, 33.736996, 44.321426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.941738, 33.825546, 44.343212>,  <34.571735, 33.973129, 44.379520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941738, 33.825546, 44.343212> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016158, 0.200482, -0.979564,
		0.379617, 0.907566, 0.179485,
		0.925003, -0.368959, -0.090771,
		35.219238, 33.714859, 44.315979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.866531, 34.521076, 43.929035>,  <34.571735, 33.973129, 44.379520>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.866531, 34.521076, 43.929035> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072979, 34.178528, 43.922741>,  <35.196850, 33.973000, 43.918964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.072979, 34.178528, 43.922741>,  <34.866531, 34.521076, 43.929035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072979, 34.178528, 43.922741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149091, 0.107912, -0.982917,
		0.843439, 0.504960, 0.183373,
		0.516122, -0.856370, -0.015733,
		35.227818, 33.921616, 43.918022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545086, 34.719826, 43.641624>,  <34.866531, 34.521076, 43.929035>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545086, 34.719826, 43.641624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472260, 34.328510, 43.602020>,  <35.428562, 34.093719, 43.578259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472260, 34.328510, 43.602020>,  <35.545086, 34.719826, 43.641624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472260, 34.328510, 43.602020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364208, 0.026440, -0.930943,
		0.913348, -0.205557, 0.351486,
		-0.182068, -0.978288, -0.099015,
		35.417641, 34.035023, 43.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132233, 34.414589, 43.363754>,  <35.545086, 34.719826, 43.641624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132233, 34.414589, 43.363754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840305, 34.161140, 43.261082>,  <35.665150, 34.009071, 43.199478>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.840305, 34.161140, 43.261082>,  <36.132233, 34.414589, 43.363754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.840305, 34.161140, 43.261082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406492, -0.100326, -0.908129,
		0.549658, -0.767111, 0.330782,
		-0.729822, -0.633620, -0.256680,
		35.621357, 33.971054, 43.184078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.502441, 33.884640, 43.117767>,  <36.132233, 34.414589, 43.363754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.502441, 33.884640, 43.117767> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135422, 33.853012, 42.961895>,  <35.915211, 33.834038, 42.868370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.135422, 33.853012, 42.961895>,  <36.502441, 33.884640, 43.117767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.135422, 33.853012, 42.961895> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391789, -0.012521, -0.919970,
		0.067862, -0.996790, 0.042466,
		-0.917549, -0.079069, -0.389682,
		35.860157, 33.829292, 42.844990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580276, 33.320900, 42.630001>,  <36.502441, 33.884640, 43.117767>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580276, 33.320900, 42.630001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254936, 33.535427, 42.539818>,  <36.059734, 33.664143, 42.485706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.254936, 33.535427, 42.539818>,  <36.580276, 33.320900, 42.630001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254936, 33.535427, 42.539818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188338, -0.123936, -0.974253,
		-0.550448, -0.834870, -0.000206,
		-0.813349, 0.536314, -0.225458,
		36.010933, 33.696320, 42.472179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.437412, 33.087925, 42.002499>,  <36.580276, 33.320900, 42.630001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.437412, 33.087925, 42.002499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244392, 33.437229, 42.029510>,  <36.128582, 33.646812, 42.045715>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.244392, 33.437229, 42.029510>,  <36.437412, 33.087925, 42.002499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.244392, 33.437229, 42.029510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222419, 0.196742, -0.954894,
		-0.847160, -0.445761, -0.289167,
		-0.482545, 0.873264, 0.067526,
		36.099628, 33.699207, 42.049767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.048740, 33.070518, 41.421539>,  <36.437412, 33.087925, 42.002499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.048740, 33.070518, 41.421539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082794, 33.452572, 41.535015>,  <36.103226, 33.681805, 41.603100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.082794, 33.452572, 41.535015>,  <36.048740, 33.070518, 41.421539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.082794, 33.452572, 41.535015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254421, 0.254442, -0.933022,
		-0.963339, 0.151612, -0.221343,
		0.085138, 0.955130, 0.283687,
		36.108337, 33.739109, 41.620121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.426010, 33.570999, 41.162388>,  <36.048740, 33.070518, 41.421539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.426010, 33.570999, 41.162388> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726791, 33.819191, 41.251442>,  <35.907261, 33.968105, 41.304874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.726791, 33.819191, 41.251442>,  <35.426010, 33.570999, 41.162388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726791, 33.819191, 41.251442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082621, 0.423777, -0.901991,
		-0.654015, 0.659863, 0.369926,
		0.751956, 0.620479, 0.222637,
		35.952377, 34.005333, 41.318233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396366, 34.185837, 40.765720>,  <35.426010, 33.570999, 41.162388>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396366, 34.185837, 40.765720> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773472, 34.240147, 40.887547>,  <35.999737, 34.272732, 40.960644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.773472, 34.240147, 40.887547>,  <35.396366, 34.185837, 40.765720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773472, 34.240147, 40.887547> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228599, 0.401812, -0.886730,
		-0.242775, 0.905600, 0.347776,
		0.942764, 0.135774, 0.304569,
		36.056301, 34.280880, 40.978916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471783, 34.919170, 40.631058>,  <35.396366, 34.185837, 40.765720>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471783, 34.919170, 40.631058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824432, 34.730412, 40.633930>,  <36.036022, 34.617157, 40.635654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.824432, 34.730412, 40.633930>,  <35.471783, 34.919170, 40.631058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824432, 34.730412, 40.633930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180009, 0.322159, -0.929414,
		0.436278, 0.820685, 0.368969,
		0.881623, -0.471900, 0.007179,
		36.088921, 34.588840, 40.636086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.967606, 35.421848, 40.402596>,  <35.471783, 34.919170, 40.631058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.967606, 35.421848, 40.402596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199524, 35.102623, 40.336956>,  <36.338676, 34.911087, 40.297573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.199524, 35.102623, 40.336956>,  <35.967606, 35.421848, 40.402596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.199524, 35.102623, 40.336956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115811, 0.280086, -0.952964,
		0.806489, 0.533520, 0.254818,
		0.579796, -0.798065, -0.164098,
		36.373463, 34.863205, 40.287727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.448868, 35.728592, 39.980656>,  <35.967606, 35.421848, 40.402596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.448868, 35.728592, 39.980656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515072, 35.338104, 39.924644>,  <36.554794, 35.103813, 39.891037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.515072, 35.338104, 39.924644>,  <36.448868, 35.728592, 39.980656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.515072, 35.338104, 39.924644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067213, 0.152819, -0.985966,
		0.983915, 0.153775, 0.090908,
		0.165509, -0.976217, -0.140026,
		36.564724, 35.045238, 39.882637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124958, 35.618649, 39.694283>,  <36.448868, 35.728592, 39.980656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124958, 35.618649, 39.694283> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935551, 35.280499, 39.595387>,  <36.821907, 35.077610, 39.536049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.935551, 35.280499, 39.595387>,  <37.124958, 35.618649, 39.694283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.935551, 35.280499, 39.595387> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297087, 0.110961, -0.948381,
		0.829170, -0.522525, 0.198607,
		-0.473515, -0.845373, -0.247241,
		36.793495, 35.026886, 39.521214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531841, 35.043201, 39.285542>,  <37.124958, 35.618649, 39.694283>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531841, 35.043201, 39.285542> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147552, 35.074657, 39.179092>,  <36.916977, 35.093533, 39.115223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.147552, 35.074657, 39.179092>,  <37.531841, 35.043201, 39.285542>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147552, 35.074657, 39.179092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274881, 0.401154, -0.873794,
		0.038039, -0.912629, -0.407016,
		-0.960725, 0.078643, -0.266124,
		36.859333, 35.098251, 39.099255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.893753, 35.550133, 38.793762>,  <37.531841, 35.043201, 39.285542>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.893753, 35.550133, 38.793762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263668, 35.678875, 38.874935>,  <38.485615, 35.756119, 38.923637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.263668, 35.678875, 38.874935>,  <37.893753, 35.550133, 38.793762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.263668, 35.678875, 38.874935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095461, -0.320024, 0.942588,
		0.368323, -0.891062, -0.265228,
		0.924784, 0.321858, 0.202934,
		38.541103, 35.775433, 38.935814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.253666, 35.056248, 39.261475>,  <37.893753, 35.550133, 38.793762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.253666, 35.056248, 39.261475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474892, 35.380775, 39.337250>,  <38.607628, 35.575493, 39.382713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.474892, 35.380775, 39.337250>,  <38.253666, 35.056248, 39.261475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474892, 35.380775, 39.337250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181790, -0.339412, 0.922904,
		0.813064, -0.475987, -0.335206,
		0.553063, 0.811317, 0.189434,
		38.640812, 35.624172, 39.394081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.884872, 34.838753, 39.539829>,  <38.253666, 35.056248, 39.261475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.884872, 34.838753, 39.539829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783546, 35.206802, 39.659298>,  <38.722752, 35.427631, 39.730980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.783546, 35.206802, 39.659298>,  <38.884872, 34.838753, 39.539829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.783546, 35.206802, 39.659298> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089411, -0.285147, 0.954304,
		0.963242, 0.268446, -0.010036,
		-0.253318, 0.920124, 0.298667,
		38.707550, 35.482838, 39.748898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199871, 34.828442, 40.156338>,  <38.884872, 34.838753, 39.539829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199871, 34.828442, 40.156338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009720, 35.179665, 40.178349>,  <38.895630, 35.390400, 40.191555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.009720, 35.179665, 40.178349>,  <39.199871, 34.828442, 40.156338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.009720, 35.179665, 40.178349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097162, -0.009765, 0.995220,
		0.874402, 0.478448, -0.080673,
		-0.475374, 0.878061, 0.055026,
		38.867107, 35.443085, 40.194855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.645897, 35.322014, 40.484066>,  <39.199871, 34.828442, 40.156338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.645897, 35.322014, 40.484066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260250, 35.413551, 40.537891>,  <39.028862, 35.468475, 40.570187>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.260250, 35.413551, 40.537891>,  <39.645897, 35.322014, 40.484066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.260250, 35.413551, 40.537891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123889, -0.060456, 0.990453,
		0.234796, 0.971584, 0.029935,
		-0.964118, 0.228845, 0.134563,
		38.971016, 35.482204, 40.578259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637398, 35.878582, 40.924328>,  <39.645897, 35.322014, 40.484066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637398, 35.878582, 40.924328> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250931, 35.780022, 40.954819>,  <39.019051, 35.720886, 40.973114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.250931, 35.780022, 40.954819>,  <39.637398, 35.878582, 40.924328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.250931, 35.780022, 40.954819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083135, -0.017752, 0.996380,
		-0.244154, 0.969006, 0.037636,
		-0.966166, -0.246399, 0.076224,
		38.961082, 35.706100, 40.977688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.243427, 36.366104, 41.360161>,  <39.637398, 35.878582, 40.924328>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.243427, 36.366104, 41.360161> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039631, 36.022728, 41.383797>,  <38.917355, 35.816700, 41.397980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.039631, 36.022728, 41.383797>,  <39.243427, 36.366104, 41.360161>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.039631, 36.022728, 41.383797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161927, -0.028204, 0.986400,
		-0.845103, 0.512129, 0.153375,
		-0.509490, -0.858445, 0.059092,
		38.886784, 35.765194, 41.401524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.775124, 36.430935, 41.929279>,  <39.243427, 36.366104, 41.360161>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.775124, 36.430935, 41.929279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816463, 36.036766, 41.875217>,  <38.841267, 35.800266, 41.842781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.816463, 36.036766, 41.875217>,  <38.775124, 36.430935, 41.929279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.816463, 36.036766, 41.875217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099961, -0.124905, 0.987120,
		-0.989610, -0.115527, 0.085595,
		0.103348, -0.985420, -0.135156,
		38.847469, 35.741138, 41.834671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368946, 36.200436, 42.452015>,  <38.775124, 36.430935, 41.929279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368946, 36.200436, 42.452015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569901, 35.872478, 42.342190>,  <38.690472, 35.675705, 42.276295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.569901, 35.872478, 42.342190>,  <38.368946, 36.200436, 42.452015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569901, 35.872478, 42.342190> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030472, -0.334134, 0.942033,
		-0.864106, -0.464899, -0.192849,
		0.502387, -0.819892, -0.274561,
		38.720615, 35.626511, 42.259823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928722, 35.675068, 42.722885>,  <38.368946, 36.200436, 42.452015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928722, 35.675068, 42.722885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302975, 35.542332, 42.674751>,  <38.527527, 35.462688, 42.645870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.302975, 35.542332, 42.674751>,  <37.928722, 35.675068, 42.722885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302975, 35.542332, 42.674751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014891, -0.377712, 0.925803,
		-0.352668, -0.864418, -0.358340,
		0.935630, -0.331837, -0.120335,
		38.583664, 35.442780, 42.638649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901466, 34.992886, 42.951332>,  <37.928722, 35.675068, 42.722885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901466, 34.992886, 42.951332> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296661, 35.051125, 42.972080>,  <38.533779, 35.086067, 42.984528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.296661, 35.051125, 42.972080>,  <37.901466, 34.992886, 42.951332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.296661, 35.051125, 42.972080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002102, -0.348226, 0.937408,
		0.154546, -0.926035, -0.344347,
		0.987983, 0.145597, 0.051871,
		38.593056, 35.094803, 42.987640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110996, 34.509235, 43.394321>,  <37.901466, 34.992886, 42.951332>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110996, 34.509235, 43.394321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408447, 34.776550, 43.402428>,  <38.586918, 34.936939, 43.407291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.408447, 34.776550, 43.402428>,  <38.110996, 34.509235, 43.394321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.408447, 34.776550, 43.402428> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082808, -0.122133, 0.989053,
		0.663451, -0.733805, -0.146161,
		0.743623, 0.668292, 0.020264,
		38.631535, 34.977039, 43.408508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618912, 34.095318, 43.629360>,  <38.110996, 34.509235, 43.394321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618912, 34.095318, 43.629360> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713581, 34.479240, 43.689701>,  <38.770382, 34.709595, 43.725906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.713581, 34.479240, 43.689701>,  <38.618912, 34.095318, 43.629360>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.713581, 34.479240, 43.689701> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323197, -0.224198, 0.919390,
		0.916257, -0.168844, -0.363269,
		0.236678, 0.959806, 0.150853,
		38.784584, 34.767181, 43.734959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371887, 34.126568, 43.892124>,  <38.618912, 34.095318, 43.629360>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371887, 34.126568, 43.892124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162212, 34.445896, 44.010723>,  <39.036407, 34.637493, 44.081882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.162212, 34.445896, 44.010723>,  <39.371887, 34.126568, 43.892124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162212, 34.445896, 44.010723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193557, -0.227363, 0.954380,
		0.829313, 0.557666, -0.035339,
		-0.524190, 0.798320, 0.296496,
		39.004955, 34.685390, 44.099670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791256, 34.414566, 44.475029>,  <39.371887, 34.126568, 43.892124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791256, 34.414566, 44.475029> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405434, 34.506981, 44.526043>,  <39.173943, 34.562428, 44.556652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405434, 34.506981, 44.526043>,  <39.791256, 34.414566, 44.475029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405434, 34.506981, 44.526043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114756, -0.067970, 0.991066,
		0.237638, 0.970568, 0.039048,
		-0.964551, 0.231034, 0.127531,
		39.116070, 34.576290, 44.564301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798058, 34.662022, 45.167301>,  <39.791256, 34.414566, 44.475029>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798058, 34.662022, 45.167301> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406513, 34.649384, 45.086468>,  <39.171589, 34.641800, 45.037968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.406513, 34.649384, 45.086468>,  <39.798058, 34.662022, 45.167301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406513, 34.649384, 45.086468> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197576, -0.109478, 0.974155,
		-0.052901, 0.993487, 0.100921,
		-0.978859, -0.031594, -0.202081,
		39.112854, 34.639904, 45.025845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.431511, 35.054829, 45.720638>,  <39.798058, 34.662022, 45.167301>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.431511, 35.054829, 45.720638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142803, 34.839466, 45.546661>,  <38.969578, 34.710247, 45.442276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.142803, 34.839466, 45.546661>,  <39.431511, 35.054829, 45.720638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.142803, 34.839466, 45.546661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383812, -0.211587, 0.898843,
		-0.575970, 0.815690, -0.053930,
		-0.721767, -0.538405, -0.434940,
		38.926273, 34.677944, 45.416180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.754257, 35.247478, 46.041901>,  <39.431511, 35.054829, 45.720638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.754257, 35.247478, 46.041901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695423, 34.885826, 45.881447>,  <38.660122, 34.668835, 45.785175>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.695423, 34.885826, 45.881447>,  <38.754257, 35.247478, 46.041901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695423, 34.885826, 45.881447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429557, -0.306917, 0.849283,
		-0.890981, 0.297226, -0.343234,
		-0.147085, -0.904134, -0.401133,
		38.651299, 34.614586, 45.761108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<37.963795, 35.061344, 46.021515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162956, 34.714523, 46.014397>,  <38.282455, 34.506432, 46.010128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.162956, 34.714523, 46.014397>,  <37.963795, 35.061344, 46.021515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.162956, 34.714523, 46.014397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437414, -0.268796, 0.858148,
		-0.748838, -0.419494, -0.513094,
		0.497906, -0.867049, -0.017792,
		38.312328, 34.454411, 46.009060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.665089, 34.729958, 46.471798>,  <37.963795, 35.061344, 46.021515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.665089, 34.729958, 46.471798> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931034, 34.434395, 46.428047>,  <38.090603, 34.257057, 46.401794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931034, 34.434395, 46.428047>,  <37.665089, 34.729958, 46.471798>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931034, 34.434395, 46.428047> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282644, -0.384415, 0.878827,
		-0.691421, -0.553388, -0.464433,
		0.664868, -0.738910, -0.109381,
		38.130493, 34.212723, 46.395233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381409, 33.972652, 46.452709>,  <37.665089, 34.729958, 46.471798>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381409, 33.972652, 46.452709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751102, 33.933922, 46.600449>,  <37.972919, 33.910683, 46.689091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.751102, 33.933922, 46.600449>,  <37.381409, 33.972652, 46.452709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751102, 33.933922, 46.600449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378785, -0.354372, 0.854952,
		0.048101, -0.930078, -0.364200,
		0.924234, -0.096829, 0.369345,
		38.028374, 33.904873, 46.711250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319817, 33.413742, 46.914566>,  <37.381409, 33.972652, 46.452709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319817, 33.413742, 46.914566> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677319, 33.561440, 47.016441>,  <37.891819, 33.650059, 47.077568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.677319, 33.561440, 47.016441>,  <37.319817, 33.413742, 46.914566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677319, 33.561440, 47.016441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193423, -0.195052, 0.961531,
		0.404718, -0.908632, -0.102908,
		0.893751, 0.369245, 0.254692,
		37.945442, 33.672215, 47.092850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684723, 32.848526, 47.337811>,  <37.319817, 33.413742, 46.914566>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684723, 32.848526, 47.337811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.829567, 33.212578, 47.418343>,  <37.916473, 33.431011, 47.466663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.829567, 33.212578, 47.418343>,  <37.684723, 32.848526, 47.337811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829567, 33.212578, 47.418343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077228, -0.185957, 0.979518,
		0.928932, -0.370238, 0.002952,
		0.362106, 0.910134, 0.201334,
		37.938198, 33.485619, 47.478745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270782, 32.794197, 47.786880>,  <37.684723, 32.848526, 47.337811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270782, 32.794197, 47.786880> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132851, 33.165867, 47.840149>,  <38.050091, 33.388866, 47.872112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.132851, 33.165867, 47.840149>,  <38.270782, 32.794197, 47.786880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.132851, 33.165867, 47.840149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024975, -0.132743, 0.990836,
		0.938333, 0.344995, 0.022567,
		-0.344829, 0.929171, 0.133173,
		38.029404, 33.444618, 47.880100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.683121, 33.121677, 48.269669>,  <38.270782, 32.794197, 47.786880>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.683121, 33.121677, 48.269669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344543, 33.333527, 48.291695>,  <38.141396, 33.460636, 48.304909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.344543, 33.333527, 48.291695>,  <38.683121, 33.121677, 48.269669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.344543, 33.333527, 48.291695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108416, 0.070177, 0.991626,
		0.521322, 0.845326, -0.116820,
		-0.846445, 0.529621, 0.055062,
		38.090611, 33.492413, 48.308212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820667, 33.598412, 48.720318>,  <38.683121, 33.121677, 48.269669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820667, 33.598412, 48.720318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420830, 33.609848, 48.720795>,  <38.180927, 33.616711, 48.721081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.420830, 33.609848, 48.720795>,  <38.820667, 33.598412, 48.720318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420830, 33.609848, 48.720795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001037, -0.005420, 0.999985,
		0.028594, 0.999577, 0.005388,
		-0.999591, 0.028588, 0.001191,
		38.120953, 33.618423, 48.721153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521088, 34.184582, 49.020344>,  <38.820667, 33.598412, 48.720318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521088, 34.184582, 49.020344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264027, 33.880211, 49.056107>,  <38.109791, 33.697590, 49.077564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.264027, 33.880211, 49.056107>,  <38.521088, 34.184582, 49.020344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.264027, 33.880211, 49.056107> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182636, -0.038811, 0.982414,
		-0.744074, 0.647678, 0.163914,
		-0.642649, -0.760926, 0.089411,
		38.071232, 33.651932, 49.082932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.234959, 34.235485, 49.686672>,  <38.521088, 34.184582, 49.020344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.234959, 34.235485, 49.686672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221016, 33.854301, 49.566238>,  <38.212650, 33.625591, 49.493980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.221016, 33.854301, 49.566238>,  <38.234959, 34.235485, 49.686672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.221016, 33.854301, 49.566238> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160852, -0.302687, 0.939419,
		-0.986363, -0.015683, 0.163837,
		-0.034858, -0.952961, -0.301082,
		38.210560, 33.568413, 49.475914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816280, 33.957619, 50.246025>,  <38.234959, 34.235485, 49.686672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816280, 33.957619, 50.246025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934669, 33.627323, 50.053963>,  <38.005703, 33.429146, 49.938725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.934669, 33.627323, 50.053963>,  <37.816280, 33.957619, 50.246025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934669, 33.627323, 50.053963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084191, -0.478169, 0.874223,
		-0.951480, -0.299168, -0.072003,
		0.295969, -0.825743, -0.480156,
		38.023460, 33.379601, 49.909916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349968, 33.414230, 50.460629>,  <37.816280, 33.957619, 50.246025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.349968, 33.414230, 50.460629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690022, 33.247894, 50.331409>,  <37.894054, 33.148094, 50.253880>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.690022, 33.247894, 50.331409>,  <37.349968, 33.414230, 50.460629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690022, 33.247894, 50.331409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108709, -0.461670, 0.880366,
		-0.515229, -0.783543, -0.347274,
		0.850130, -0.415838, -0.323044,
		37.945061, 33.123142, 50.234497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.274994, 32.690475, 50.626537>,  <37.349968, 33.414230, 50.460629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.274994, 32.690475, 50.626537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.661694, 32.785774, 50.589359>,  <37.893711, 32.842953, 50.567051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.661694, 32.785774, 50.589359>,  <37.274994, 32.690475, 50.626537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.661694, 32.785774, 50.589359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172429, -0.338845, 0.924906,
		0.188867, -0.910176, -0.368659,
		0.966746, 0.238252, -0.092945,
		37.951717, 32.857250, 50.561478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.621597, 32.105877, 50.837086>,  <37.274994, 32.690475, 50.626537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.621597, 32.105877, 50.837086> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897789, 32.393906, 50.864616>,  <38.063503, 32.566723, 50.881134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.897789, 32.393906, 50.864616>,  <37.621597, 32.105877, 50.837086>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.897789, 32.393906, 50.864616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190728, -0.273016, 0.942913,
		0.697758, -0.637931, -0.325849,
		0.690476, 0.720073, 0.068828,
		38.104931, 32.609928, 50.885265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.225998, 31.771360, 51.067482>,  <37.621597, 32.105877, 50.837086>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.225998, 31.771360, 51.067482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270657, 32.158794, 51.156368>,  <38.297451, 32.391254, 51.209702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270657, 32.158794, 51.156368>,  <38.225998, 31.771360, 51.067482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270657, 32.158794, 51.156368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160424, -0.238252, 0.957862,
		0.980713, -0.071293, -0.181984,
		0.111647, 0.968583, 0.222220,
		38.304150, 32.449368, 51.223034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798653, 31.740583, 51.402138>,  <38.225998, 31.771360, 51.067482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798653, 31.740583, 51.402138> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625679, 32.086876, 51.502949>,  <38.521896, 32.294651, 51.563435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.625679, 32.086876, 51.502949>,  <38.798653, 31.740583, 51.402138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625679, 32.086876, 51.502949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237022, -0.160537, 0.958148,
		0.869957, 0.474068, -0.135776,
		-0.432430, 0.865729, 0.252025,
		38.495949, 32.346596, 51.578556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282074, 32.013218, 51.799702>,  <38.798653, 31.740583, 51.402138>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282074, 32.013218, 51.799702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946232, 32.207794, 51.896400>,  <38.744728, 32.324539, 51.954422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.946232, 32.207794, 51.896400>,  <39.282074, 32.013218, 51.799702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946232, 32.207794, 51.896400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211046, -0.117967, 0.970332,
		0.500529, 0.865712, -0.003617,
		-0.839601, 0.486442, 0.241751,
		38.694351, 32.353725, 51.968925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453850, 32.359592, 52.325336>,  <39.282074, 32.013218, 51.799702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453850, 32.359592, 52.325336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056316, 32.368233, 52.368832>,  <38.817795, 32.373417, 52.394928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.056316, 32.368233, 52.368832>,  <39.453850, 32.359592, 52.325336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.056316, 32.368233, 52.368832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107323, -0.058560, 0.992498,
		0.027802, 0.998050, 0.055881,
		-0.993835, 0.021596, 0.108742,
		38.758167, 32.374710, 52.401455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460335, 32.798985, 52.827908>,  <39.453850, 32.359592, 52.325336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460335, 32.798985, 52.827908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117649, 32.593967, 52.804779>,  <38.912037, 32.470955, 52.790901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.117649, 32.593967, 52.804779>,  <39.460335, 32.798985, 52.827908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.117649, 32.593967, 52.804779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021523, -0.147530, 0.988823,
		-0.515347, 0.845892, 0.137422,
		-0.856711, -0.512545, -0.057823,
		38.860634, 32.440205, 52.787434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968266, 33.081161, 53.255760>,  <39.460335, 32.798985, 52.827908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968266, 33.081161, 53.255760> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889313, 32.690945, 53.217056>,  <38.841942, 32.456814, 53.193832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.889313, 32.690945, 53.217056>,  <38.968266, 33.081161, 53.255760>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889313, 32.690945, 53.217056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051413, -0.108869, 0.992726,
		-0.978977, 0.190974, 0.071645,
		-0.197385, -0.975539, -0.096762,
		38.830097, 32.398281, 53.188026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738548, 33.039604, 53.850555>,  <38.968266, 33.081161, 53.255760>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738548, 33.039604, 53.850555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739990, 32.660610, 53.722637>,  <38.740856, 32.433216, 53.645885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.739990, 32.660610, 53.722637>,  <38.738548, 33.039604, 53.850555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.739990, 32.660610, 53.722637> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050826, -0.319556, 0.946203,
		-0.998701, 0.012847, -0.049307,
		0.003601, -0.947480, -0.319794,
		38.741070, 32.376366, 53.626698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224571, 32.627411, 54.235767>,  <38.738548, 33.039604, 53.850555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.224571, 32.627411, 54.235767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502808, 32.378574, 54.092018>,  <38.669750, 32.229271, 54.005768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.502808, 32.378574, 54.092018>,  <38.224571, 32.627411, 54.235767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.502808, 32.378574, 54.092018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051566, -0.455700, 0.888638,
		-0.716582, -0.636663, -0.284904,
		0.695594, -0.622091, -0.359377,
		38.711487, 32.191948, 53.984203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.864292, 32.006905, 53.906715>,  <38.224571, 32.627411, 54.235767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.864292, 32.006905, 53.906715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204674, 32.028587, 54.115688>,  <38.408901, 32.041599, 54.241074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.204674, 32.028587, 54.115688>,  <37.864292, 32.006905, 53.906715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204674, 32.028587, 54.115688> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337308, -0.706045, 0.622675,
		0.402618, -0.706089, -0.582526,
		0.850953, 0.054210, 0.522436,
		38.459961, 32.044849, 54.272419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210373, 31.298189, 54.014961>,  <37.864292, 32.006905, 53.906715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210373, 31.298189, 54.014961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270679, 31.565414, 54.306431>,  <38.306862, 31.725750, 54.481312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.270679, 31.565414, 54.306431>,  <38.210373, 31.298189, 54.014961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.270679, 31.565414, 54.306431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502234, -0.583123, 0.638537,
		0.851488, -0.462231, 0.247611,
		0.150764, 0.668065, 0.728670,
		38.315910, 31.765835, 54.525032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.516911, 31.102484, 53.852676>,  <38.210373, 31.298189, 54.014961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.516911, 31.102484, 53.852676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244858, 30.873806, 54.036232>,  <37.081627, 30.736599, 54.146366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.244858, 30.873806, 54.036232>,  <37.516911, 31.102484, 53.852676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.244858, 30.873806, 54.036232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720193, 0.404169, -0.563887,
		0.136901, -0.714010, -0.686620,
		-0.680132, -0.571697, 0.458894,
		37.040817, 30.702297, 54.173901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.302834, 30.808376, 53.295483>,  <37.516911, 31.102484, 53.852676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.302834, 30.808376, 53.295483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031986, 30.798510, 53.589668>,  <36.869480, 30.792589, 53.766178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.031986, 30.798510, 53.589668>,  <37.302834, 30.808376, 53.295483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031986, 30.798510, 53.589668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678099, 0.409108, -0.610584,
		-0.285824, -0.912152, -0.293739,
		-0.677117, -0.024665, 0.735462,
		36.828850, 30.791111, 53.810307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819370, 30.678621, 52.893112>,  <37.302834, 30.808376, 53.295483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819370, 30.678621, 52.893112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645508, 30.771132, 53.241268>,  <36.541191, 30.826637, 53.450161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.645508, 30.771132, 53.241268>,  <36.819370, 30.678621, 52.893112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.645508, 30.771132, 53.241268> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781131, 0.384191, -0.492170,
		-0.448223, -0.893817, 0.013663,
		-0.434661, 0.231275, 0.870392,
		36.515110, 30.840513, 53.502384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.156570, 30.472120, 52.833263>,  <36.819370, 30.678621, 52.893112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.156570, 30.472120, 52.833263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146648, 30.757835, 53.113029>,  <36.140697, 30.929264, 53.280888>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146648, 30.757835, 53.113029>,  <36.156570, 30.472120, 52.833263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146648, 30.757835, 53.113029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669173, 0.507905, -0.542438,
		-0.742692, -0.481483, 0.465385,
		-0.024803, 0.714288, 0.699413,
		36.139206, 30.972122, 53.322853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483620, 30.543083, 52.985233>,  <36.156570, 30.472120, 52.833263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483620, 30.543083, 52.985233> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672005, 30.888395, 53.057831>,  <35.785038, 31.095583, 53.101391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.672005, 30.888395, 53.057831>,  <35.483620, 30.543083, 52.985233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672005, 30.888395, 53.057831> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549531, 0.448052, -0.705170,
		-0.690077, 0.232375, 0.685416,
		0.470966, 0.863279, 0.181493,
		35.813293, 31.147379, 53.112278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.940575, 31.188387, 52.906361>,  <35.483620, 30.543083, 52.985233>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.940575, 31.188387, 52.906361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313255, 31.332111, 52.885082>,  <35.536865, 31.418346, 52.872314>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313255, 31.332111, 52.885082>,  <34.940575, 31.188387, 52.906361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313255, 31.332111, 52.885082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277536, 0.609740, -0.742422,
		-0.234324, 0.706479, 0.667817,
		0.931701, 0.359310, -0.053196,
		35.592766, 31.439905, 52.869122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897125, 31.934704, 52.854713>,  <34.940575, 31.188387, 52.906361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897125, 31.934704, 52.854713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240650, 31.816978, 52.686993>,  <35.446766, 31.746344, 52.586361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.240650, 31.816978, 52.686993>,  <34.897125, 31.934704, 52.854713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.240650, 31.816978, 52.686993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266869, 0.441638, -0.856584,
		0.437287, 0.847546, 0.300741,
		0.858814, -0.294314, -0.419306,
		35.498295, 31.728683, 52.561199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067169, 32.441097, 52.445400>,  <34.897125, 31.934704, 52.854713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067169, 32.441097, 52.445400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322285, 32.167191, 52.304367>,  <35.475353, 32.002846, 52.219746>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.322285, 32.167191, 52.304367>,  <35.067169, 32.441097, 52.445400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.322285, 32.167191, 52.304367> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147698, 0.340543, -0.928556,
		0.755913, 0.644302, 0.116058,
		0.637793, -0.684766, -0.352583,
		35.513622, 31.961761, 52.198593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.470665, 32.813377, 52.009407>,  <35.067169, 32.441097, 52.445400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.470665, 32.813377, 52.009407> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513206, 32.434536, 51.888294>,  <35.538731, 32.207230, 51.815624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.513206, 32.434536, 51.888294>,  <35.470665, 32.813377, 52.009407>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.513206, 32.434536, 51.888294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037659, 0.308130, -0.950599,
		0.993615, 0.089696, 0.068437,
		0.106353, -0.947107, -0.302784,
		35.545113, 32.150406, 51.797459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.989544, 32.814072, 51.573135>,  <35.470665, 32.813377, 52.009407>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.989544, 32.814072, 51.573135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839939, 32.457874, 51.469486>,  <35.750175, 32.244156, 51.407299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.839939, 32.457874, 51.469486>,  <35.989544, 32.814072, 51.573135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.839939, 32.457874, 51.469486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165918, 0.210644, -0.963379,
		0.912462, -0.403306, 0.068966,
		-0.374010, -0.890490, -0.259121,
		35.727737, 32.190727, 51.391750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.500214, 32.388981, 51.267818>,  <35.989544, 32.814072, 51.573135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.500214, 32.388981, 51.267818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146080, 32.250679, 51.143471>,  <35.933601, 32.167698, 51.068863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.146080, 32.250679, 51.143471>,  <36.500214, 32.388981, 51.267818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146080, 32.250679, 51.143471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240407, 0.231892, -0.942566,
		0.397985, -0.909219, -0.122180,
		-0.885331, -0.345754, -0.310873,
		35.880482, 32.146954, 51.050209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660324, 32.087463, 50.549438>,  <36.500214, 32.388981, 51.267818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660324, 32.087463, 50.549438> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264290, 32.141285, 50.565590>,  <36.026669, 32.173580, 50.575279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264290, 32.141285, 50.565590>,  <36.660324, 32.087463, 50.549438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264290, 32.141285, 50.565590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010774, 0.213857, -0.976806,
		-0.140071, -0.967554, -0.210287,
		-0.990083, 0.134556, 0.040380,
		35.967266, 32.181652, 50.577705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370296, 31.690186, 49.978764>,  <36.660324, 32.087463, 50.549438>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370296, 31.690186, 49.978764> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.116070, 31.986372, 50.066193>,  <35.963535, 32.164082, 50.118649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.116070, 31.986372, 50.066193>,  <36.370296, 31.690186, 49.978764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116070, 31.986372, 50.066193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061575, 0.330819, -0.941683,
		-0.769590, -0.585041, -0.255850,
		-0.635563, 0.740464, 0.218571,
		35.925400, 32.208511, 50.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849472, 31.607262, 49.506626>,  <36.370296, 31.690186, 49.978764>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849472, 31.607262, 49.506626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810375, 31.977222, 49.653595>,  <35.786915, 32.199200, 49.741776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.810375, 31.977222, 49.653595>,  <35.849472, 31.607262, 49.506626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.810375, 31.977222, 49.653595> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161095, 0.349618, -0.922939,
		-0.982087, -0.149403, 0.114824,
		-0.097745, 0.924904, 0.367423,
		35.781052, 32.254692, 49.763821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170074, 31.889555, 49.188812>,  <35.849472, 31.607262, 49.506626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170074, 31.889555, 49.188812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396629, 32.195786, 49.310863>,  <35.532562, 32.379524, 49.384094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.396629, 32.195786, 49.310863>,  <35.170074, 31.889555, 49.188812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396629, 32.195786, 49.310863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110503, 0.437437, -0.892434,
		-0.816699, 0.471743, 0.332356,
		0.566385, 0.765576, 0.305126,
		35.566544, 32.425457, 49.402401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823154, 32.428318, 48.985756>,  <35.170074, 31.889555, 49.188812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823154, 32.428318, 48.985756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199760, 32.554096, 49.034222>,  <35.425724, 32.629562, 49.063301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.199760, 32.554096, 49.034222>,  <34.823154, 32.428318, 48.985756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199760, 32.554096, 49.034222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033258, 0.444512, -0.895155,
		-0.335337, 0.838769, 0.428971,
		0.941511, 0.314445, 0.121165,
		35.482212, 32.648430, 49.070572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769016, 33.140442, 48.815853>,  <34.823154, 32.428318, 48.985756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769016, 33.140442, 48.815853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163792, 33.080891, 48.791260>,  <35.400658, 33.045158, 48.776505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.163792, 33.080891, 48.791260>,  <34.769016, 33.140442, 48.815853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163792, 33.080891, 48.791260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019436, 0.488974, -0.872082,
		0.159900, 0.859499, 0.485482,
		0.986942, -0.148882, -0.061481,
		35.459873, 33.036224, 48.772816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997219, 33.783890, 48.587555>,  <34.769016, 33.140442, 48.815853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997219, 33.783890, 48.587555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292797, 33.524292, 48.515148>,  <35.470142, 33.368534, 48.471703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.292797, 33.524292, 48.515148>,  <34.997219, 33.783890, 48.587555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292797, 33.524292, 48.515148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129659, 0.400618, -0.907025,
		0.661173, 0.646770, 0.380182,
		0.738944, -0.648995, -0.181018,
		35.514481, 33.329594, 48.460842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517609, 34.172035, 48.386402>,  <34.997219, 33.783890, 48.587555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517609, 34.172035, 48.386402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552975, 33.805519, 48.230148>,  <35.574196, 33.585609, 48.136398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.552975, 33.805519, 48.230148>,  <35.517609, 34.172035, 48.386402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.552975, 33.805519, 48.230148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051996, 0.395879, -0.916830,
		0.994726, 0.060752, 0.082646,
		0.088417, -0.916291, -0.390632,
		35.579498, 33.530632, 48.112957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.059750, 34.250488, 47.868263>,  <35.517609, 34.172035, 48.386402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.059750, 34.250488, 47.868263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899300, 33.894947, 47.779682>,  <35.803032, 33.681622, 47.726532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.899300, 33.894947, 47.779682>,  <36.059750, 34.250488, 47.868263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899300, 33.894947, 47.779682> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153186, 0.173261, -0.972890,
		0.903125, -0.424170, 0.066661,
		-0.401121, -0.888853, -0.221453,
		35.778965, 33.628292, 47.713245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.808296, 27.093662, 30.916647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.434158, 27.109613, 30.776054>,  <42.209675, 27.119184, 30.691698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.434158, 27.109613, 30.776054>,  <42.808296, 27.093662, 30.916647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434158, 27.109613, 30.776054> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095561, 0.928196, 0.359610,
		0.340583, 0.369948, -0.864374,
		-0.935345, 0.039877, -0.351481,
		42.153553, 27.121576, 30.670610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.740585, 27.664488, 30.470150>,  <42.808296, 27.093662, 30.916647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.740585, 27.664488, 30.470150> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378738, 27.574230, 30.614788>,  <42.161629, 27.520075, 30.701571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.378738, 27.574230, 30.614788>,  <42.740585, 27.664488, 30.470150>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.378738, 27.574230, 30.614788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055604, 0.903595, 0.424763,
		-0.422581, 0.364142, -0.829955,
		-0.904618, -0.225646, 0.361595,
		42.107353, 27.506536, 30.723267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.346016, 28.210430, 30.312262>,  <42.740585, 27.664488, 30.470150>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.346016, 28.210430, 30.312262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161663, 28.033155, 30.619812>,  <42.051052, 27.926790, 30.804342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161663, 28.033155, 30.619812>,  <42.346016, 28.210430, 30.312262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161663, 28.033155, 30.619812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029031, 0.873445, 0.486056,
		-0.886985, 0.201694, -0.415424,
		-0.460885, -0.443184, 0.768878,
		42.023399, 27.900200, 30.850475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.903439, 28.764204, 30.470676>,  <42.346016, 28.210430, 30.312262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.903439, 28.764204, 30.470676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876415, 28.532539, 30.795641>,  <41.860203, 28.393541, 30.990620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.876415, 28.532539, 30.795641>,  <41.903439, 28.764204, 30.470676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.876415, 28.532539, 30.795641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079507, 0.808555, 0.583024,
		-0.994542, 0.103981, -0.008578,
		-0.067559, -0.579160, 0.812410,
		41.856148, 28.358791, 31.039364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.583492, 29.180737, 30.942461>,  <41.903439, 28.764204, 30.470676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.583492, 29.180737, 30.942461> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726112, 28.897356, 31.186089>,  <41.811684, 28.727327, 31.332266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.726112, 28.897356, 31.186089>,  <41.583492, 29.180737, 30.942461>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726112, 28.897356, 31.186089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063751, 0.668846, 0.740662,
		-0.932099, -0.225253, 0.283641,
		0.356549, -0.708453, 0.609070,
		41.833076, 28.684820, 31.368809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.249458, 29.405912, 31.619827>,  <41.583492, 29.180737, 30.942461>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.249458, 29.405912, 31.619827> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562592, 29.171968, 31.704782>,  <41.750473, 29.031601, 31.755754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.562592, 29.171968, 31.704782>,  <41.249458, 29.405912, 31.619827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.562592, 29.171968, 31.704782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189640, 0.549352, 0.813787,
		-0.592628, -0.596783, 0.540965,
		0.782834, -0.584861, 0.212387,
		41.797443, 28.996510, 31.768499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173138, 29.229349, 32.314648>,  <41.249458, 29.405912, 31.619827>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173138, 29.229349, 32.314648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558147, 29.177185, 32.219540>,  <41.789154, 29.145885, 32.162476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.558147, 29.177185, 32.219540>,  <41.173138, 29.229349, 32.314648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.558147, 29.177185, 32.219540> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269650, 0.553533, 0.787966,
		0.028856, -0.822553, 0.567955,
		0.962526, -0.130412, -0.237774,
		41.846905, 29.138062, 32.148209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.577744, 29.083242, 32.949406>,  <41.173138, 29.229349, 32.314648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.577744, 29.083242, 32.949406> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865120, 29.231228, 32.713787>,  <42.037544, 29.320019, 32.572418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.865120, 29.231228, 32.713787>,  <41.577744, 29.083242, 32.949406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.865120, 29.231228, 32.713787> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265940, 0.636397, 0.724068,
		0.642760, -0.676841, 0.358812,
		0.718426, 0.369979, -0.589050,
		42.080650, 29.342218, 32.537075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130646, 29.241894, 33.397186>,  <41.577744, 29.083242, 32.949406>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130646, 29.241894, 33.397186> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244656, 29.420275, 33.057800>,  <42.313061, 29.527304, 32.854168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.244656, 29.420275, 33.057800>,  <42.130646, 29.241894, 33.397186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.244656, 29.420275, 33.057800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057052, 0.875717, 0.479442,
		0.956820, -0.185060, 0.224160,
		0.285026, 0.445951, -0.848462,
		42.330162, 29.554060, 32.803261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.805019, 29.646065, 33.452198>,  <42.130646, 29.241894, 33.397186>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.805019, 29.646065, 33.452198> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613049, 29.808544, 33.141155>,  <42.497868, 29.906033, 32.954529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.613049, 29.808544, 33.141155>,  <42.805019, 29.646065, 33.452198>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.613049, 29.808544, 33.141155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113434, 0.907646, 0.404118,
		0.869946, 0.105739, -0.481678,
		-0.479924, 0.406199, -0.777608,
		42.469070, 29.930405, 32.907871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209427, 30.231020, 33.350342>,  <42.805019, 29.646065, 33.452198>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209427, 30.231020, 33.350342> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888531, 30.327253, 33.131790>,  <42.695995, 30.384995, 33.000660>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.888531, 30.327253, 33.131790>,  <43.209427, 30.231020, 33.350342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.888531, 30.327253, 33.131790> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188856, 0.970476, 0.150032,
		0.566346, 0.017174, -0.823989,
		-0.802238, 0.240585, -0.546382,
		42.647858, 30.399429, 32.967876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.381260, 30.717916, 32.878300>,  <43.209427, 30.231020, 33.350342>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.381260, 30.717916, 32.878300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989536, 30.768198, 32.941727>,  <42.754501, 30.798367, 32.979782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.989536, 30.768198, 32.941727>,  <43.381260, 30.717916, 32.878300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.989536, 30.768198, 32.941727> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178039, 0.907701, 0.379976,
		-0.096170, 0.400347, -0.911303,
		-0.979313, 0.125706, 0.158571,
		42.695744, 30.805910, 32.989300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215015, 31.342865, 32.544304>,  <43.381260, 30.717916, 32.878300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215015, 31.342865, 32.544304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.920723, 31.280863, 32.808025>,  <42.744148, 31.243662, 32.966259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.920723, 31.280863, 32.808025>,  <43.215015, 31.342865, 32.544304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.920723, 31.280863, 32.808025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025029, 0.966570, 0.255177,
		-0.676815, 0.204242, -0.707253,
		-0.735728, -0.155006, 0.659301,
		42.700005, 31.234362, 33.005817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908367, 31.980669, 32.453945>,  <43.215015, 31.342865, 32.544304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908367, 31.980669, 32.453945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798271, 31.830318, 32.807884>,  <42.732212, 31.740108, 33.020248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.798271, 31.830318, 32.807884>,  <42.908367, 31.980669, 32.453945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.798271, 31.830318, 32.807884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084535, 0.907373, 0.411739,
		-0.957652, 0.188128, -0.217971,
		-0.275241, -0.375876, 0.884850,
		42.715698, 31.717556, 33.073338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.368217, 32.454548, 32.775528>,  <42.908367, 31.980669, 32.453945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.368217, 32.454548, 32.775528> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.534744, 32.237556, 33.067390>,  <42.634659, 32.107361, 33.242508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.534744, 32.237556, 33.067390>,  <42.368217, 32.454548, 32.775528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.534744, 32.237556, 33.067390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114126, 0.827336, 0.549991,
		-0.902029, -0.145697, 0.406345,
		0.416316, -0.542482, 0.729654,
		42.659637, 32.074810, 33.286285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018349, 32.636368, 33.407562>,  <42.368217, 32.454548, 32.775528>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018349, 32.636368, 33.407562> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346676, 32.469570, 33.563702>,  <42.543674, 32.369492, 33.657387>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.346676, 32.469570, 33.563702>,  <42.018349, 32.636368, 33.407562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346676, 32.469570, 33.563702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048806, 0.732105, 0.679441,
		-0.569098, -0.538647, 0.621278,
		0.820820, -0.416991, 0.390351,
		42.592922, 32.344475, 33.680805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914253, 32.865185, 34.157604>,  <42.018349, 32.636368, 33.407562>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914253, 32.865185, 34.157604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288521, 32.756771, 34.067207>,  <42.513081, 32.691723, 34.012970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.288521, 32.756771, 34.067207>,  <41.914253, 32.865185, 34.157604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.288521, 32.756771, 34.067207> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347690, 0.598530, 0.721715,
		-0.060349, -0.753858, 0.654260,
		0.935665, -0.271034, -0.225989,
		42.569221, 32.675461, 33.999413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.123051, 32.640385, 34.783684>,  <41.914253, 32.865185, 34.157604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.123051, 32.640385, 34.783684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417400, 32.772282, 34.547119>,  <42.594009, 32.851418, 34.405182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.417400, 32.772282, 34.547119>,  <42.123051, 32.640385, 34.783684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417400, 32.772282, 34.547119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411538, 0.475797, 0.777338,
		0.537710, -0.815408, 0.214425,
		0.735870, 0.329738, -0.591412,
		42.638161, 32.871204, 34.369694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691975, 32.690002, 35.264763>,  <42.123051, 32.640385, 34.783684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691975, 32.690002, 35.264763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840862, 32.879765, 34.945667>,  <42.930195, 32.993622, 34.754208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.840862, 32.879765, 34.945667>,  <42.691975, 32.690002, 35.264763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.840862, 32.879765, 34.945667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203823, 0.796741, 0.568910,
		0.905486, -0.374360, 0.199873,
		0.372224, 0.474402, -0.797742,
		42.952530, 33.022087, 34.706345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.334297, 32.842777, 35.520508>,  <42.691975, 32.690002, 35.264763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.334297, 32.842777, 35.520508> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280514, 33.072758, 35.197681>,  <43.248245, 33.210747, 35.003986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.280514, 33.072758, 35.197681>,  <43.334297, 32.842777, 35.520508>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.280514, 33.072758, 35.197681> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357815, 0.787678, 0.501530,
		0.924062, -0.221345, -0.311636,
		-0.134457, 0.574952, -0.807063,
		43.240177, 33.245243, 34.955563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.972893, 33.216503, 35.484337>,  <43.334297, 32.842777, 35.520508>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.972893, 33.216503, 35.484337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689816, 33.413952, 35.282146>,  <43.519970, 33.532421, 35.160831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.689816, 33.413952, 35.282146>,  <43.972893, 33.216503, 35.484337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.689816, 33.413952, 35.282146> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219006, 0.833473, 0.507306,
		0.671715, 0.248318, -0.697952,
		-0.707697, 0.493621, -0.505473,
		43.477505, 33.562038, 35.130505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.679478, 33.458641, 35.497879>,  <43.972893, 33.216503, 35.484337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.679478, 33.458641, 35.497879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046066, 33.618149, 35.510860>,  <45.266022, 33.713852, 35.518650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.046066, 33.618149, 35.510860>,  <44.679478, 33.458641, 35.497879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.046066, 33.618149, 35.510860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212634, -0.416755, -0.883800,
		-0.338907, 0.816883, -0.466738,
		0.916476, 0.398771, 0.032456,
		45.321011, 33.737782, 35.520596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.837025, 34.005516, 35.044304>,  <44.679478, 33.458641, 35.497879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.837025, 34.005516, 35.044304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158077, 33.774086, 35.102310>,  <45.350708, 33.635227, 35.137112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.158077, 33.774086, 35.102310>,  <44.837025, 34.005516, 35.044304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.158077, 33.774086, 35.102310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024763, -0.210586, -0.977261,
		0.595955, 0.787976, -0.154697,
		0.802636, -0.578573, 0.145013,
		45.398869, 33.600513, 35.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.477440, 34.092865, 34.458954>,  <44.837025, 34.005516, 35.044304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.477440, 34.092865, 34.458954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491470, 33.727913, 34.622089>,  <45.499889, 33.508942, 34.719971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.491470, 33.727913, 34.622089>,  <45.477440, 34.092865, 34.458954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.491470, 33.727913, 34.622089> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130630, -0.400400, -0.906981,
		0.990811, 0.085088, 0.105140,
		0.035075, -0.912381, 0.407836,
		45.501991, 33.454197, 34.744442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108570, 33.716896, 34.202049>,  <45.477440, 34.092865, 34.458954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108570, 33.716896, 34.202049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825226, 33.446377, 34.282890>,  <45.655220, 33.284065, 34.331394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.825226, 33.446377, 34.282890>,  <46.108570, 33.716896, 34.202049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.825226, 33.446377, 34.282890> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130587, -0.406947, -0.904069,
		0.693666, -0.614014, 0.376581,
		-0.708360, -0.676299, 0.202104,
		45.612717, 33.243488, 34.343521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.390469, 33.059296, 33.947906>,  <46.108570, 33.716896, 34.202049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.390469, 33.059296, 33.947906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.999142, 33.005047, 34.010521>,  <45.764347, 32.972496, 34.048088>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.999142, 33.005047, 34.010521>,  <46.390469, 33.059296, 33.947906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.999142, 33.005047, 34.010521> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059686, -0.539100, -0.840124,
		0.198330, -0.831250, 0.519315,
		-0.978316, -0.135626, 0.156533,
		45.705647, 32.964359, 34.057480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.283802, 32.343372, 33.893673>,  <46.390469, 33.059296, 33.947906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.283802, 32.343372, 33.893673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935558, 32.526398, 33.821369>,  <45.726612, 32.636211, 33.777988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.935558, 32.526398, 33.821369>,  <46.283802, 32.343372, 33.893673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.935558, 32.526398, 33.821369> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140901, -0.583927, -0.799485,
		-0.471361, -0.670573, 0.572845,
		-0.870612, 0.457560, -0.180756,
		45.674374, 32.663666, 33.767143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794342, 31.761181, 33.708736>,  <46.283802, 32.343372, 33.893673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794342, 31.761181, 33.708736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607727, 32.089317, 33.576443>,  <45.495758, 32.286198, 33.497066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.607727, 32.089317, 33.576443>,  <45.794342, 31.761181, 33.708736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.607727, 32.089317, 33.576443> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383163, -0.524456, -0.760350,
		-0.797203, -0.228003, 0.559001,
		-0.466533, 0.820341, -0.330736,
		45.467766, 32.335419, 33.477222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.057121, 31.653400, 33.611576>,  <45.794342, 31.761181, 33.708736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.057121, 31.653400, 33.611576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171913, 31.945629, 33.363735>,  <45.240788, 32.120968, 33.215031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171913, 31.945629, 33.363735>,  <45.057121, 31.653400, 33.611576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171913, 31.945629, 33.363735> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424611, -0.482784, -0.765915,
		-0.858691, 0.482889, 0.171662,
		0.286976, 0.730574, -0.619602,
		45.258007, 32.164803, 33.177856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.508858, 31.672876, 33.203953>,  <45.057121, 31.653400, 33.611576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.508858, 31.672876, 33.203953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.787846, 31.858919, 32.985886>,  <44.955238, 31.970545, 32.855045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.787846, 31.858919, 32.985886>,  <44.508858, 31.672876, 33.203953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.787846, 31.858919, 32.985886> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483742, -0.255691, -0.837027,
		-0.528700, 0.847525, 0.046653,
		0.697474, 0.465105, -0.545168,
		44.997089, 31.998451, 32.822334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.165371, 32.228390, 32.847649>,  <44.508858, 31.672876, 33.203953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.165371, 32.228390, 32.847649> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512749, 32.152210, 32.664547>,  <44.721176, 32.106503, 32.554688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.512749, 32.152210, 32.664547>,  <44.165371, 32.228390, 32.847649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.512749, 32.152210, 32.664547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491054, -0.203103, -0.847122,
		0.068359, 0.960458, -0.269902,
		0.868443, -0.190445, -0.457752,
		44.773281, 32.095078, 32.527222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.254234, 32.624775, 32.164215>,  <44.165371, 32.228390, 32.847649>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.254234, 32.624775, 32.164215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474606, 32.295601, 32.108711>,  <44.606827, 32.098095, 32.075409>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.474606, 32.295601, 32.108711>,  <44.254234, 32.624775, 32.164215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.474606, 32.295601, 32.108711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432412, -0.139272, -0.890855,
		0.713792, 0.550798, -0.432577,
		0.550927, -0.822937, -0.138761,
		44.639885, 32.048721, 32.067081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.160122, 32.521358, 31.530470>,  <44.254234, 32.624775, 32.164215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.160122, 32.521358, 31.530470> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379471, 32.193890, 31.598654>,  <44.511082, 31.997408, 31.639565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.379471, 32.193890, 31.598654>,  <44.160122, 32.521358, 31.530470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.379471, 32.193890, 31.598654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386761, -0.429032, -0.816301,
		0.741418, 0.381712, -0.551902,
		0.548376, -0.818674, 0.170461,
		44.543983, 31.948288, 31.649792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.568584, 32.345997, 30.896503>,  <44.160122, 32.521358, 31.530470>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.568584, 32.345997, 30.896503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478054, 32.036758, 31.133520>,  <44.423737, 31.851215, 31.275730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.478054, 32.036758, 31.133520>,  <44.568584, 32.345997, 30.896503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.478054, 32.036758, 31.133520> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429512, -0.466783, -0.773067,
		0.874241, -0.429466, -0.226410,
		-0.226322, -0.773093, 0.592542,
		44.410156, 31.804831, 31.311283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.784573, 31.817020, 30.526983>,  <44.568584, 32.345997, 30.896503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.784573, 31.817020, 30.526983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531311, 31.662571, 30.795319>,  <44.379353, 31.569902, 30.956320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.531311, 31.662571, 30.795319>,  <44.784573, 31.817020, 30.526983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.531311, 31.662571, 30.795319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494807, -0.464559, -0.734405,
		0.595215, -0.796928, 0.103082,
		-0.633155, -0.386123, 0.670838,
		44.341366, 31.546734, 30.996571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.707432, 31.114191, 30.359928>,  <44.784573, 31.817020, 30.526983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.707432, 31.114191, 30.359928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396214, 31.184387, 30.601206>,  <44.209484, 31.226505, 30.745974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.396214, 31.184387, 30.601206>,  <44.707432, 31.114191, 30.359928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.396214, 31.184387, 30.601206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560729, -0.626927, -0.540874,
		0.283241, -0.759055, 0.586182,
		-0.778047, 0.175492, 0.603196,
		44.162800, 31.237034, 30.782166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468605, 30.527294, 30.519131>,  <44.707432, 31.114191, 30.359928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468605, 30.527294, 30.519131> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154453, 30.769609, 30.570040>,  <43.965961, 30.914999, 30.600584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.154453, 30.769609, 30.570040>,  <44.468605, 30.527294, 30.519131>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.154453, 30.769609, 30.570040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552034, -0.592413, -0.586775,
		-0.280064, -0.531100, 0.799685,
		-0.785380, 0.605788, 0.127272,
		43.918839, 30.951345, 30.608221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904968, 30.087601, 30.504725>,  <44.468605, 30.527294, 30.519131>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904968, 30.087601, 30.504725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742863, 30.448759, 30.447397>,  <43.645599, 30.665455, 30.413002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.742863, 30.448759, 30.447397>,  <43.904968, 30.087601, 30.504725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.742863, 30.448759, 30.447397> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652086, -0.395369, -0.646890,
		-0.640737, -0.168707, 0.748995,
		-0.405265, 0.902896, -0.143317,
		43.621284, 30.719627, 30.404402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.225426, 29.955957, 30.659731>,  <43.904968, 30.087601, 30.504725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.225426, 29.955957, 30.659731> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255600, 30.287392, 30.437828>,  <43.273705, 30.486252, 30.304688>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255600, 30.287392, 30.437828>,  <43.225426, 29.955957, 30.659731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255600, 30.287392, 30.437828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766232, -0.307863, -0.564012,
		-0.638121, 0.467616, 0.611667,
		0.075431, 0.828587, -0.554756,
		43.278229, 30.535967, 30.271400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498390, 30.235233, 30.681379>,  <43.225426, 29.955957, 30.659731>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498390, 30.235233, 30.681379> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701763, 30.388983, 30.373158>,  <42.823788, 30.481232, 30.188225>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.701763, 30.388983, 30.373158>,  <42.498390, 30.235233, 30.681379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.701763, 30.388983, 30.373158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705828, -0.326562, -0.628621,
		-0.493258, 0.863490, 0.105265,
		0.508433, 0.384372, -0.770555,
		42.854294, 30.504293, 30.141991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.062103, 30.657919, 30.252386>,  <42.498390, 30.235233, 30.681379>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.062103, 30.657919, 30.252386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349007, 30.560223, 29.991344>,  <42.521149, 30.501606, 29.834719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.349007, 30.560223, 29.991344>,  <42.062103, 30.657919, 30.252386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.349007, 30.560223, 29.991344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695786, -0.200298, -0.689755,
		0.037750, 0.948803, -0.313603,
		0.717256, -0.244239, -0.652603,
		42.564182, 30.486950, 29.795563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887951, 30.949974, 29.541437>,  <42.062103, 30.657919, 30.252386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887951, 30.949974, 29.541437> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161682, 30.667179, 29.470034>,  <42.325920, 30.497503, 29.427191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.161682, 30.667179, 29.470034>,  <41.887951, 30.949974, 29.541437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.161682, 30.667179, 29.470034> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426582, -0.189617, -0.884349,
		0.591374, 0.681334, -0.431348,
		0.684328, -0.706986, -0.178511,
		42.366982, 30.455084, 29.416481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.575954, 35.825047, 43.379253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302975, 35.534794, 43.414413>,  <39.139187, 35.360641, 43.435509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302975, 35.534794, 43.414413>,  <39.575954, 35.825047, 43.379253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302975, 35.534794, 43.414413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058220, -0.065912, -0.996125,
		0.728609, -0.684924, 0.002735,
		-0.682450, -0.725627, 0.087900,
		39.098240, 35.317104, 43.440784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.841660, 35.317154, 42.972012>,  <39.575954, 35.825047, 43.379253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.841660, 35.317154, 42.972012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445576, 35.265530, 42.993259>,  <39.207924, 35.234554, 43.006008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445576, 35.265530, 42.993259>,  <39.841660, 35.317154, 42.972012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.445576, 35.265530, 42.993259> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048437, -0.039134, -0.998059,
		0.130886, -0.990864, 0.032499,
		-0.990213, -0.129058, 0.053116,
		39.148510, 35.226814, 43.009193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.750351, 34.816711, 42.530674>,  <39.841660, 35.317154, 42.972012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.750351, 34.816711, 42.530674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403999, 35.013241, 42.568306>,  <39.196186, 35.131157, 42.590885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403999, 35.013241, 42.568306>,  <39.750351, 34.816711, 42.530674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403999, 35.013241, 42.568306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073583, 0.060931, -0.995426,
		-0.494807, -0.868844, -0.016606,
		-0.865882, 0.491322, 0.094081,
		39.144234, 35.160637, 42.596531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.229416, 34.451504, 42.174416>,  <39.750351, 34.816711, 42.530674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.229416, 34.451504, 42.174416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113766, 34.834415, 42.176109>,  <39.044376, 35.064163, 42.177128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.113766, 34.834415, 42.176109>,  <39.229416, 34.451504, 42.174416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113766, 34.834415, 42.176109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237669, -0.067495, -0.968999,
		-0.927318, -0.281172, 0.247031,
		-0.289129, 0.957281, 0.004237,
		39.027027, 35.121601, 42.177380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665195, 34.445568, 41.822636>,  <39.229416, 34.451504, 42.174416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665195, 34.445568, 41.822636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737514, 34.837803, 41.792248>,  <38.780907, 35.073143, 41.774017>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737514, 34.837803, 41.792248>,  <38.665195, 34.445568, 41.822636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.737514, 34.837803, 41.792248> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227991, -0.033350, -0.973092,
		-0.956730, 0.193250, 0.217535,
		0.180795, 0.980583, -0.075967,
		38.791752, 35.131977, 41.769459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.129719, 34.720768, 41.389263>,  <38.665195, 34.445568, 41.822636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.129719, 34.720768, 41.389263> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364262, 35.044460, 41.403866>,  <38.504990, 35.238674, 41.412628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364262, 35.044460, 41.403866>,  <38.129719, 34.720768, 41.389263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.364262, 35.044460, 41.403866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160361, 0.160132, -0.973983,
		-0.794020, 0.565250, 0.223663,
		0.586359, 0.809228, 0.036505,
		38.540169, 35.287228, 41.414818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.762802, 35.190804, 41.016090>,  <38.129719, 34.720768, 41.389263>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.762802, 35.190804, 41.016090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133057, 35.342129, 41.012581>,  <38.355209, 35.432926, 41.010475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.133057, 35.342129, 41.012581>,  <37.762802, 35.190804, 41.016090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.133057, 35.342129, 41.012581> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114333, 0.257490, -0.959493,
		-0.360734, 0.889142, 0.281596,
		0.925634, 0.378318, -0.008773,
		38.410748, 35.455624, 41.009949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783669, 35.820595, 40.891289>,  <37.762802, 35.190804, 41.016090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.783669, 35.820595, 40.891289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146664, 35.709206, 40.765480>,  <38.364460, 35.642372, 40.689995>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146664, 35.709206, 40.765480>,  <37.783669, 35.820595, 40.891289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.146664, 35.709206, 40.765480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123543, 0.538689, -0.833397,
		0.401511, 0.795152, 0.454448,
		0.907483, -0.278474, -0.314526,
		38.418907, 35.625664, 40.671124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091068, 36.440079, 40.513260>,  <37.783669, 35.820595, 40.891289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091068, 36.440079, 40.513260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331535, 36.142132, 40.397491>,  <38.475815, 35.963364, 40.328030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.331535, 36.142132, 40.397491>,  <38.091068, 36.440079, 40.513260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.331535, 36.142132, 40.397491> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068723, 0.409018, -0.909935,
		0.796162, 0.527134, 0.297078,
		0.601168, -0.744872, -0.289418,
		38.511887, 35.918671, 40.310665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.650658, 36.698425, 40.149658>,  <38.091068, 36.440079, 40.513260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.650658, 36.698425, 40.149658> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667648, 36.319393, 40.022987>,  <38.677841, 36.091972, 39.946983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667648, 36.319393, 40.022987>,  <38.650658, 36.698425, 40.149658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667648, 36.319393, 40.022987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255309, 0.316736, -0.913507,
		0.965926, -0.042047, 0.255381,
		0.042478, -0.947581, -0.316678,
		38.680393, 36.035118, 39.927982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238934, 36.676762, 39.680359>,  <38.650658, 36.698425, 40.149658>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238934, 36.676762, 39.680359> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029587, 36.348640, 39.588112>,  <38.903980, 36.151768, 39.532764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.029587, 36.348640, 39.588112>,  <39.238934, 36.676762, 39.680359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029587, 36.348640, 39.588112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003146, 0.272506, -0.962149,
		0.852101, -0.502832, -0.145201,
		-0.523367, -0.820305, -0.230621,
		38.872578, 36.102551, 39.518925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609066, 36.246044, 39.277370>,  <39.238934, 36.676762, 39.680359>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609066, 36.246044, 39.277370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225315, 36.167976, 39.195881>,  <38.995064, 36.121136, 39.146988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225315, 36.167976, 39.195881>,  <39.609066, 36.246044, 39.277370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.225315, 36.167976, 39.195881> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117094, 0.381502, -0.916921,
		0.256676, -0.903529, -0.343152,
		-0.959378, -0.195171, -0.203720,
		38.937500, 36.109425, 39.134766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.526428, 35.886971, 38.660149>,  <39.609066, 36.246044, 39.277370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.526428, 35.886971, 38.660149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182358, 36.081539, 38.721458>,  <38.975914, 36.198280, 38.758244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.182358, 36.081539, 38.721458>,  <39.526428, 35.886971, 38.660149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182358, 36.081539, 38.721458> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018707, 0.270236, -0.962612,
		-0.509652, -0.830884, -0.223352,
		-0.860177, 0.486420, 0.153270,
		38.924305, 36.227467, 38.767441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.085396, 35.631546, 38.169624>,  <39.526428, 35.886971, 38.660149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.085396, 35.631546, 38.169624> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017307, 36.001377, 38.305962>,  <38.976452, 36.223278, 38.387764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.017307, 36.001377, 38.305962>,  <39.085396, 35.631546, 38.169624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.017307, 36.001377, 38.305962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038049, 0.339470, -0.939847,
		-0.984671, -0.172953, -0.022606,
		-0.170223, 0.924580, 0.340846,
		38.966240, 36.278751, 38.408215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462925, 34.924633, 38.381001>,  <39.085396, 35.631546, 38.169624>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462925, 34.924633, 38.381001> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701412, 34.693077, 38.158504>,  <39.844505, 34.554142, 38.025005>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.701412, 34.693077, 38.158504>,  <39.462925, 34.924633, 38.381001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701412, 34.693077, 38.158504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049852, -0.718217, 0.694031,
		-0.801272, -0.386065, -0.457074,
		0.596220, -0.578894, -0.556242,
		39.880280, 34.519409, 37.991631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.204216, 34.259842, 38.445839>,  <39.462925, 34.924633, 38.381001>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.204216, 34.259842, 38.445839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566936, 34.175762, 38.299675>,  <39.784569, 34.125313, 38.211975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566936, 34.175762, 38.299675>,  <39.204216, 34.259842, 38.445839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566936, 34.175762, 38.299675> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077630, -0.768729, 0.634846,
		-0.414348, -0.604046, -0.680767,
		0.906801, -0.210200, -0.365413,
		39.838978, 34.112701, 38.190052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266434, 33.514084, 38.661179>,  <39.204216, 34.259842, 38.445839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266434, 33.514084, 38.661179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640438, 33.623878, 38.571369>,  <39.864841, 33.689754, 38.517483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.640438, 33.623878, 38.571369>,  <39.266434, 33.514084, 38.661179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.640438, 33.623878, 38.571369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354594, -0.731886, 0.581899,
		-0.004603, -0.623697, -0.781652,
		0.935009, 0.274490, -0.224528,
		39.920940, 33.706226, 38.504009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699165, 32.924999, 38.578060>,  <39.266434, 33.514084, 38.661179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699165, 32.924999, 38.578060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954376, 33.215271, 38.681065>,  <40.107502, 33.389435, 38.742867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.954376, 33.215271, 38.681065>,  <39.699165, 32.924999, 38.578060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954376, 33.215271, 38.681065> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363504, -0.578667, 0.730075,
		0.678814, -0.372201, -0.632992,
		0.638026, 0.725680, 0.257510,
		40.145782, 33.432976, 38.758316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.294155, 32.604420, 38.689457>,  <39.699165, 32.924999, 38.578060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.294155, 32.604420, 38.689457> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310631, 32.948265, 38.893169>,  <40.320515, 33.154572, 39.015396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310631, 32.948265, 38.893169>,  <40.294155, 32.604420, 38.689457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.310631, 32.948265, 38.893169> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257178, -0.501658, 0.825953,
		0.965486, 0.096955, -0.241737,
		0.041189, 0.859616, 0.509278,
		40.322987, 33.206150, 39.045952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.861622, 32.536942, 39.141941>,  <40.294155, 32.604420, 38.689457>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.861622, 32.536942, 39.141941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654449, 32.825100, 39.326447>,  <40.530144, 32.997997, 39.437149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654449, 32.825100, 39.326447>,  <40.861622, 32.536942, 39.141941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.654449, 32.825100, 39.326447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125757, -0.469246, 0.874067,
		0.846125, 0.510718, 0.152444,
		-0.517936, 0.720400, 0.461267,
		40.499069, 33.041222, 39.464828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175995, 32.683849, 39.871967>,  <40.861622, 32.536942, 39.141941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175995, 32.683849, 39.871967> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818077, 32.856239, 39.918625>,  <40.603329, 32.959675, 39.946621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.818077, 32.856239, 39.918625>,  <41.175995, 32.683849, 39.871967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.818077, 32.856239, 39.918625> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025671, -0.211158, 0.977115,
		0.445745, 0.877309, 0.177879,
		-0.894792, 0.430978, 0.116644,
		40.549641, 32.985531, 39.953617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.279533, 32.987404, 40.556877>,  <41.175995, 32.683849, 39.871967>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.279533, 32.987404, 40.556877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889679, 33.017799, 40.472679>,  <40.655766, 33.036037, 40.422161>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.889679, 33.017799, 40.472679>,  <41.279533, 32.987404, 40.556877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889679, 33.017799, 40.472679> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219431, -0.139802, 0.965560,
		0.043942, 0.987260, 0.152930,
		-0.974638, 0.075987, -0.210492,
		40.597286, 33.040596, 40.409531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990749, 33.386162, 41.054653>,  <41.279533, 32.987404, 40.556877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990749, 33.386162, 41.054653> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697155, 33.147617, 40.924656>,  <40.521000, 33.004490, 40.846657>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.697155, 33.147617, 40.924656>,  <40.990749, 33.386162, 41.054653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.697155, 33.147617, 40.924656> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238440, -0.221786, 0.945493,
		-0.635934, 0.771469, 0.020592,
		-0.733985, -0.596362, -0.324990,
		40.476959, 32.968708, 40.827160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469101, 33.456947, 41.567474>,  <40.990749, 33.386162, 41.054653>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.469101, 33.456947, 41.567474> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354702, 33.119579, 41.385551>,  <40.286060, 32.917160, 41.276398>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354702, 33.119579, 41.385551>,  <40.469101, 33.456947, 41.567474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354702, 33.119579, 41.385551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123093, -0.438365, 0.890328,
		-0.950290, 0.310619, 0.021554,
		-0.286001, -0.843417, -0.454809,
		40.268902, 32.866554, 41.249107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857925, 33.281193, 42.012730>,  <40.469101, 33.456947, 41.567474>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.857925, 33.281193, 42.012730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999817, 32.952694, 41.833969>,  <40.084949, 32.755592, 41.726711>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.999817, 32.952694, 41.833969>,  <39.857925, 33.281193, 42.012730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999817, 32.952694, 41.833969> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230714, -0.540087, 0.809368,
		-0.906058, -0.183996, -0.381056,
		0.354724, -0.821250, -0.446900,
		40.106236, 32.706318, 41.699898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.366898, 32.822231, 42.236385>,  <39.857925, 33.281193, 42.012730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.366898, 32.822231, 42.236385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665585, 32.584984, 42.115974>,  <39.844795, 32.442635, 42.043728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665585, 32.584984, 42.115974>,  <39.366898, 32.822231, 42.236385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665585, 32.584984, 42.115974> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150454, -0.591465, 0.792169,
		-0.647902, -0.546235, -0.530895,
		0.746717, -0.593124, -0.301029,
		39.889599, 32.407047, 42.025665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135639, 32.149651, 42.229694>,  <39.366898, 32.822231, 42.236385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135639, 32.149651, 42.229694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531570, 32.146095, 42.286503>,  <39.769127, 32.143963, 42.320587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.531570, 32.146095, 42.286503>,  <39.135639, 32.149651, 42.229694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531570, 32.146095, 42.286503> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120385, -0.584437, 0.802459,
		0.075870, -0.811390, -0.579560,
		0.989824, -0.008888, 0.142020,
		39.828518, 32.143429, 42.329109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.266876, 31.425425, 42.434246>,  <39.135639, 32.149651, 42.229694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.266876, 31.425425, 42.434246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597790, 31.622154, 42.542850>,  <39.796337, 31.740192, 42.608013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597790, 31.622154, 42.542850>,  <39.266876, 31.425425, 42.434246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597790, 31.622154, 42.542850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001627, -0.485387, 0.874298,
		0.561788, -0.722847, -0.402351,
		0.827280, 0.491824, 0.271509,
		39.845974, 31.769701, 42.624302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.614075, 30.817528, 42.065342>,  <39.266876, 31.425425, 42.434246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.614075, 30.817528, 42.065342> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404621, 30.482893, 42.000935>,  <39.278950, 30.282112, 41.962288>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404621, 30.482893, 42.000935>,  <39.614075, 30.817528, 42.065342>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404621, 30.482893, 42.000935> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272053, 0.343312, -0.898957,
		0.807335, -0.426922, -0.407367,
		-0.523638, -0.836585, -0.161023,
		39.247528, 30.231918, 41.952629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674068, 30.714588, 41.343838>,  <39.614075, 30.817528, 42.065342>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674068, 30.714588, 41.343838> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378006, 30.462620, 41.437962>,  <39.200367, 30.311440, 41.494434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.378006, 30.462620, 41.437962>,  <39.674068, 30.714588, 41.343838>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378006, 30.462620, 41.437962> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418376, 0.157440, -0.894524,
		0.526432, -0.760534, -0.380074,
		-0.740156, -0.629921, 0.235308,
		39.155960, 30.273643, 41.508553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554260, 30.581852, 40.750092>,  <39.674068, 30.714588, 41.343838>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554260, 30.581852, 40.750092> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238338, 30.458158, 40.961967>,  <39.048786, 30.383942, 41.089092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238338, 30.458158, 40.961967>,  <39.554260, 30.581852, 40.750092>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238338, 30.458158, 40.961967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589816, 0.145967, -0.794236,
		0.168305, -0.939710, -0.297690,
		-0.789804, -0.309256, 0.529688,
		39.001396, 30.365387, 41.120876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206394, 30.190596, 40.263271>,  <39.554260, 30.581852, 40.750092>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206394, 30.190596, 40.263271> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960606, 30.323078, 40.549690>,  <38.813133, 30.402569, 40.721542>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960606, 30.323078, 40.549690>,  <39.206394, 30.190596, 40.263271>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960606, 30.323078, 40.549690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636480, 0.328176, -0.697993,
		-0.466171, -0.884647, 0.009152,
		-0.614474, 0.331209, 0.716046,
		38.776264, 30.422441, 40.764503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612713, 29.842367, 40.200176>,  <39.206394, 30.190596, 40.263271>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612713, 29.842367, 40.200176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516251, 30.175798, 40.398972>,  <38.458374, 30.375856, 40.518250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.516251, 30.175798, 40.398972>,  <38.612713, 29.842367, 40.200176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.516251, 30.175798, 40.398972> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774339, 0.143427, -0.616302,
		-0.585016, -0.533458, 0.610884,
		-0.241154, 0.833578, 0.496984,
		38.443905, 30.425871, 40.548065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.962959, 29.834146, 40.264080>,  <38.612713, 29.842367, 40.200176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.962959, 29.834146, 40.264080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023533, 30.225422, 40.320950>,  <38.059875, 30.460188, 40.355072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023533, 30.225422, 40.320950>,  <37.962959, 29.834146, 40.264080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023533, 30.225422, 40.320950> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832311, 0.203772, -0.515494,
		-0.533222, -0.040270, 0.845016,
		0.151432, 0.978190, 0.142173,
		38.068962, 30.518879, 40.363602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.293392, 30.148270, 40.505066>,  <37.962959, 29.834146, 40.264080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.293392, 30.148270, 40.505066> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510544, 30.452116, 40.361809>,  <37.640835, 30.634424, 40.275856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510544, 30.452116, 40.361809>,  <37.293392, 30.148270, 40.505066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.510544, 30.452116, 40.361809> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796134, 0.329759, -0.507375,
		-0.267309, 0.560573, 0.783776,
		0.542878, 0.759616, -0.358143,
		37.673409, 30.680000, 40.254364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884529, 30.656275, 40.617168>,  <37.293392, 30.148270, 40.505066>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884529, 30.656275, 40.617168> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150703, 30.777987, 40.344517>,  <37.310406, 30.851013, 40.180927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150703, 30.777987, 40.344517>,  <36.884529, 30.656275, 40.617168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.150703, 30.777987, 40.344517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725194, 0.479923, -0.493728,
		0.176898, 0.822854, 0.540016,
		0.665432, 0.304277, -0.681627,
		37.350334, 30.869270, 40.140030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738491, 31.294691, 40.472427>,  <36.884529, 30.656275, 40.617168>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.738491, 31.294691, 40.472427> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957134, 31.193821, 40.153023>,  <37.088322, 31.133299, 39.961380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.957134, 31.193821, 40.153023>,  <36.738491, 31.294691, 40.472427>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957134, 31.193821, 40.153023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584837, 0.567512, -0.579565,
		0.599320, 0.783796, 0.162725,
		0.546609, -0.252178, -0.798514,
		37.121117, 31.118168, 39.913467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.944580, 31.893404, 40.220020>,  <36.738491, 31.294691, 40.472427>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.944580, 31.893404, 40.220020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966549, 31.642138, 39.909565>,  <36.979729, 31.491377, 39.723293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.966549, 31.642138, 39.909565>,  <36.944580, 31.893404, 40.220020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.966549, 31.642138, 39.909565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696892, 0.532558, -0.480337,
		0.715070, 0.567265, -0.408516,
		0.054920, -0.628166, -0.776138,
		36.983025, 31.453688, 39.676723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900322, 32.301903, 39.532761>,  <36.944580, 31.893404, 40.220020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900322, 32.301903, 39.532761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787197, 31.926847, 39.451920>,  <36.719322, 31.701813, 39.403416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787197, 31.926847, 39.451920>,  <36.900322, 32.301903, 39.532761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.787197, 31.926847, 39.451920> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743914, 0.347425, -0.570866,
		0.605483, -0.011099, -0.795780,
		-0.282810, -0.937642, -0.202104,
		36.702354, 31.645555, 39.391289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803329, 32.218235, 38.841835>,  <36.900322, 32.301903, 39.532761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803329, 32.218235, 38.841835> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549595, 31.974556, 39.032200>,  <36.397354, 31.828348, 39.146420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549595, 31.974556, 39.032200>,  <36.803329, 32.218235, 38.841835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.549595, 31.974556, 39.032200> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771934, 0.466028, -0.432361,
		0.041607, -0.641634, -0.765881,
		-0.634340, -0.609199, 0.475909,
		36.359291, 31.791796, 39.174973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<40.098244, 29.058281, 45.448284> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740326, 28.885523, 45.403015>,  <39.525574, 28.781868, 45.375854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.740326, 28.885523, 45.403015>,  <40.098244, 29.058281, 45.448284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740326, 28.885523, 45.403015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114042, 0.023971, -0.993187,
		0.431666, -0.901605, 0.027806,
		-0.894795, -0.431896, -0.113168,
		39.471886, 28.755955, 45.369064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136318, 28.572571, 44.826313>,  <40.098244, 29.058281, 45.448284>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136318, 28.572571, 44.826313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746609, 28.654839, 44.863159>,  <39.512783, 28.704199, 44.885265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.746609, 28.654839, 44.863159>,  <40.136318, 28.572571, 44.826313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.746609, 28.654839, 44.863159> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103300, -0.044308, -0.993663,
		-0.200284, -0.977618, 0.064414,
		-0.974276, 0.205669, 0.092113,
		39.454327, 28.716539, 44.890793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819939, 28.200129, 44.259579>,  <40.136318, 28.572571, 44.826313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819939, 28.200129, 44.259579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514687, 28.438122, 44.360474>,  <39.331535, 28.580917, 44.421009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.514687, 28.438122, 44.360474>,  <39.819939, 28.200129, 44.259579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514687, 28.438122, 44.360474> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250722, 0.087147, -0.964128,
		-0.595621, -0.799000, 0.082670,
		-0.763134, 0.594982, 0.252233,
		39.285748, 28.616617, 44.436142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238087, 28.052151, 43.851273>,  <39.819939, 28.200129, 44.259579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238087, 28.052151, 43.851273> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197094, 28.430948, 43.973061>,  <39.172497, 28.658226, 44.046135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.197094, 28.430948, 43.973061>,  <39.238087, 28.052151, 43.851273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197094, 28.430948, 43.973061> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367768, 0.248325, -0.896148,
		-0.924253, -0.203813, 0.322825,
		-0.102481, 0.946992, 0.304471,
		39.166351, 28.715046, 44.064404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581581, 28.342747, 43.471428>,  <39.238087, 28.052151, 43.851273>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581581, 28.342747, 43.471428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820431, 28.643492, 43.583248>,  <38.963741, 28.823938, 43.650341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820431, 28.643492, 43.583248>,  <38.581581, 28.342747, 43.471428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820431, 28.643492, 43.583248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119980, 0.428297, -0.895638,
		-0.793126, 0.501266, 0.345955,
		0.597124, 0.751861, 0.279551,
		38.999569, 28.869049, 43.667114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276077, 28.937305, 43.250374>,  <38.581581, 28.342747, 43.471428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276077, 28.937305, 43.250374> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651291, 29.064430, 43.305637>,  <38.876419, 29.140705, 43.338795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.651291, 29.064430, 43.305637>,  <38.276077, 28.937305, 43.250374>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.651291, 29.064430, 43.305637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003472, 0.407267, -0.913303,
		-0.346525, 0.856230, 0.383134,
		0.938034, 0.317812, 0.138155,
		38.932701, 29.159775, 43.347084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241138, 29.768438, 43.062359>,  <38.276077, 28.937305, 43.250374>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241138, 29.768438, 43.062359> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618832, 29.636816, 43.057476>,  <38.845448, 29.557842, 43.054546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.618832, 29.636816, 43.057476>,  <38.241138, 29.768438, 43.062359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618832, 29.636816, 43.057476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117919, 0.372509, -0.920506,
		0.307442, 0.867733, 0.390537,
		0.944232, -0.329054, -0.012203,
		38.902100, 29.538099, 43.053814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664703, 30.385370, 42.949211>,  <38.241138, 29.768438, 43.062359>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664703, 30.385370, 42.949211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868523, 30.062521, 42.829937>,  <38.990814, 29.868811, 42.758373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.868523, 30.062521, 42.829937>,  <38.664703, 30.385370, 42.949211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868523, 30.062521, 42.829937> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249519, 0.470261, -0.846519,
		0.823468, 0.356942, 0.441014,
		0.509550, -0.807123, -0.298181,
		39.021389, 29.820385, 42.740482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189110, 30.720127, 42.670551>,  <38.664703, 30.385370, 42.949211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189110, 30.720127, 42.670551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161808, 30.358500, 42.501789>,  <39.145428, 30.141523, 42.400532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.161808, 30.358500, 42.501789>,  <39.189110, 30.720127, 42.670551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161808, 30.358500, 42.501789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043972, 0.419751, -0.906573,
		0.996698, -0.080433, 0.011102,
		-0.068258, -0.904068, -0.421902,
		39.141331, 30.087278, 42.375217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882351, 30.877340, 42.845734>,  <39.189110, 30.720127, 42.670551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882351, 30.877340, 42.845734> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967537, 31.257181, 42.937737>,  <40.018650, 31.485085, 42.992939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.967537, 31.257181, 42.937737>,  <39.882351, 30.877340, 42.845734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.967537, 31.257181, 42.937737> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125527, -0.206865, 0.970283,
		0.968962, -0.235509, 0.075146,
		0.212965, 0.949601, 0.230007,
		40.031425, 31.542061, 43.006737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387032, 30.869951, 43.271408>,  <39.882351, 30.877340, 42.845734>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387032, 30.869951, 43.271408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201077, 31.213524, 43.357304>,  <40.089504, 31.419668, 43.408840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.201077, 31.213524, 43.357304>,  <40.387032, 30.869951, 43.271408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.201077, 31.213524, 43.357304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003383, -0.240818, 0.970564,
		0.885363, 0.451930, 0.109047,
		-0.464888, 0.858933, 0.214740,
		40.061611, 31.471203, 43.421726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642330, 30.974983, 43.910789>,  <40.387032, 30.869951, 43.271408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642330, 30.974983, 43.910789> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349174, 31.246920, 43.921310>,  <40.173283, 31.410082, 43.927624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.349174, 31.246920, 43.921310>,  <40.642330, 30.974983, 43.910789>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.349174, 31.246920, 43.921310> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036856, -0.078271, 0.996251,
		0.679353, 0.729169, 0.082420,
		-0.732886, 0.679843, 0.026300,
		40.129311, 31.450872, 43.929199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769108, 31.443447, 44.475601>,  <40.642330, 30.974983, 43.910789>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769108, 31.443447, 44.475601> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389538, 31.533920, 44.387623>,  <40.161797, 31.588203, 44.334835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.389538, 31.533920, 44.387623>,  <40.769108, 31.443447, 44.475601>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.389538, 31.533920, 44.387623> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194681, 0.128801, 0.972373,
		0.248262, 0.965532, -0.078189,
		-0.948928, 0.226181, -0.219947,
		40.104858, 31.601774, 44.321640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516304, 32.163063, 44.795307>,  <40.769108, 31.443447, 44.475601>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516304, 32.163063, 44.795307> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190830, 31.934919, 44.750378>,  <39.995548, 31.798033, 44.723419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.190830, 31.934919, 44.750378>,  <40.516304, 32.163063, 44.795307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190830, 31.934919, 44.750378> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209661, 0.107724, 0.971822,
		-0.542186, 0.814303, -0.207234,
		-0.813681, -0.570357, -0.112322,
		39.946728, 31.763813, 44.716682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068146, 32.424267, 45.310764>,  <40.516304, 32.163063, 44.795307>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068146, 32.424267, 45.310764> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926445, 32.058998, 45.230145>,  <39.841423, 31.839836, 45.181774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.926445, 32.058998, 45.230145>,  <40.068146, 32.424267, 45.310764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926445, 32.058998, 45.230145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266784, -0.107879, 0.957700,
		-0.896287, 0.393038, -0.205403,
		-0.354254, -0.913172, -0.201547,
		39.820168, 31.785046, 45.169682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360363, 32.456371, 45.423969>,  <40.068146, 32.424267, 45.310764>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360363, 32.456371, 45.423969> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468143, 32.072163, 45.451649>,  <39.532814, 31.841637, 45.468254>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.468143, 32.072163, 45.451649>,  <39.360363, 32.456371, 45.423969>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468143, 32.072163, 45.451649> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311742, -0.019016, 0.949976,
		-0.911159, -0.277548, -0.304559,
		0.269456, -0.960523, 0.069197,
		39.548981, 31.784006, 45.472408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801285, 32.129604, 45.807529>,  <39.360363, 32.456371, 45.423969>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801285, 32.129604, 45.807529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103065, 31.870960, 45.852604>,  <39.284134, 31.715775, 45.879646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.103065, 31.870960, 45.852604>,  <38.801285, 32.129604, 45.807529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.103065, 31.870960, 45.852604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209709, -0.074794, 0.974899,
		-0.621948, -0.759148, -0.192028,
		0.754455, -0.646607, 0.112682,
		39.329403, 31.676979, 45.886410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.499603, 31.682024, 46.239220>,  <38.801285, 32.129604, 45.807529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.499603, 31.682024, 46.239220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894230, 31.625160, 46.271400>,  <39.131008, 31.591042, 46.290707>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.894230, 31.625160, 46.271400>,  <38.499603, 31.682024, 46.239220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894230, 31.625160, 46.271400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107455, -0.193897, 0.975119,
		-0.123021, -0.970667, -0.206568,
		0.986570, -0.142157, 0.080449,
		39.190201, 31.582512, 46.295536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.541828, 31.111912, 46.615265>,  <38.499603, 31.682024, 46.239220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.541828, 31.111912, 46.615265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903385, 31.262646, 46.696224>,  <39.120319, 31.353086, 46.744801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.903385, 31.262646, 46.696224>,  <38.541828, 31.111912, 46.615265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903385, 31.262646, 46.696224> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095669, -0.283094, 0.954309,
		0.416918, -0.881959, -0.219835,
		0.903896, 0.376837, 0.202403,
		39.174553, 31.375696, 46.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.994667, 30.666687, 47.128117>,  <38.541828, 31.111912, 46.615265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.994667, 30.666687, 47.128117> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182106, 31.018663, 47.159424>,  <39.294567, 31.229849, 47.178207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.182106, 31.018663, 47.159424>,  <38.994667, 30.666687, 47.128117>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182106, 31.018663, 47.159424> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145381, -0.164202, 0.975655,
		0.871368, -0.445809, -0.204870,
		0.468596, 0.879939, 0.078268,
		39.322685, 31.282644, 47.182903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609116, 30.513126, 47.398609>,  <38.994667, 30.666687, 47.128117>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609116, 30.513126, 47.398609> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559864, 30.905334, 47.459824>,  <39.530315, 31.140659, 47.496552>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.559864, 30.905334, 47.459824>,  <39.609116, 30.513126, 47.398609>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559864, 30.905334, 47.459824> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239736, -0.120250, 0.963362,
		0.962999, 0.155303, -0.220260,
		-0.123127, 0.980521, 0.153032,
		39.522926, 31.199492, 47.505733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040394, 30.655270, 47.973991>,  <39.609116, 30.513126, 47.398609>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040394, 30.655270, 47.973991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863159, 31.013853, 47.976551>,  <39.756817, 31.229002, 47.978085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.863159, 31.013853, 47.976551>,  <40.040394, 30.655270, 47.973991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863159, 31.013853, 47.976551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324673, 0.153815, 0.933235,
		0.835621, 0.415579, -0.359209,
		-0.443085, 0.896457, 0.006396,
		39.730232, 31.282789, 47.978470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615646, 31.098051, 48.017815>,  <40.040394, 30.655270, 47.973991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615646, 31.098051, 48.017815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271702, 31.240032, 48.164593>,  <40.065334, 31.325220, 48.252663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.271702, 31.240032, 48.164593>,  <40.615646, 31.098051, 48.017815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271702, 31.240032, 48.164593> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454224, 0.203752, 0.867275,
		0.233073, 0.912412, -0.336426,
		-0.859859, 0.354951, 0.366950,
		40.013744, 31.346518, 48.274677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.442562, 30.578745, 48.548214> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787743, 30.476229, 48.374031>,  <33.994850, 30.414719, 48.269520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.787743, 30.476229, 48.374031>,  <33.442562, 30.578745, 48.548214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787743, 30.476229, 48.374031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215317, 0.593127, -0.775783,
		0.457110, 0.763227, 0.456657,
		0.862954, -0.256292, -0.435460,
		34.046627, 30.399342, 48.243393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.523529, 31.057154, 48.054314>,  <33.442562, 30.578745, 48.548214>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.523529, 31.057154, 48.054314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822182, 30.833496, 47.910149>,  <34.001373, 30.699301, 47.823650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.822182, 30.833496, 47.910149>,  <33.523529, 31.057154, 48.054314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822182, 30.833496, 47.910149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199414, 0.328741, -0.923127,
		0.634644, 0.761108, 0.133947,
		0.746633, -0.559146, -0.360409,
		34.046173, 30.665752, 47.802025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953640, 31.506067, 47.733406>,  <33.523529, 31.057154, 48.054314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953640, 31.506067, 47.733406> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047089, 31.162994, 47.550190>,  <34.103157, 30.957150, 47.440262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.047089, 31.162994, 47.550190>,  <33.953640, 31.506067, 47.733406>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.047089, 31.162994, 47.550190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109630, 0.444835, -0.888878,
		0.966127, 0.257876, 0.009895,
		0.233622, -0.857684, -0.458038,
		34.117176, 30.905689, 47.412777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.526649, 31.646338, 47.230350>,  <33.953640, 31.506067, 47.733406>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.526649, 31.646338, 47.230350> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350174, 31.314117, 47.094387>,  <34.244289, 31.114786, 47.012810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.350174, 31.314117, 47.094387>,  <34.526649, 31.646338, 47.230350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350174, 31.314117, 47.094387> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044525, 0.398556, -0.916063,
		0.896308, -0.389023, -0.212819,
		-0.441190, -0.830551, -0.339908,
		34.217815, 31.064953, 46.992416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814629, 31.466070, 46.632343>,  <34.526649, 31.646338, 47.230350>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814629, 31.466070, 46.632343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451626, 31.298346, 46.622478>,  <34.233826, 31.197710, 46.616558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.451626, 31.298346, 46.622478>,  <34.814629, 31.466070, 46.632343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451626, 31.298346, 46.622478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111871, 0.297881, -0.948025,
		0.404867, -0.857579, -0.317238,
		-0.907506, -0.419314, -0.024664,
		34.179375, 31.172552, 46.615078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.864727, 31.080360, 46.047806>,  <34.814629, 31.466070, 46.632343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.864727, 31.080360, 46.047806> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467800, 31.090639, 46.096226>,  <34.229645, 31.096806, 46.125278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.467800, 31.090639, 46.096226>,  <34.864727, 31.080360, 46.047806>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467800, 31.090639, 46.096226> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116709, 0.130761, -0.984521,
		-0.041127, -0.991081, -0.126757,
		-0.992314, 0.025696, 0.121045,
		34.170105, 31.098349, 46.132538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536140, 30.572460, 45.615318>,  <34.864727, 31.080360, 46.047806>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536140, 30.572460, 45.615318> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248806, 30.832857, 45.713463>,  <34.076405, 30.989096, 45.772350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.248806, 30.832857, 45.713463>,  <34.536140, 30.572460, 45.615318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.248806, 30.832857, 45.713463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196875, 0.148042, -0.969187,
		-0.667259, -0.744506, 0.021820,
		-0.718335, 0.650995, 0.245357,
		34.033306, 31.028156, 45.787071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991253, 30.379665, 45.196445>,  <34.536140, 30.572460, 45.615318>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991253, 30.379665, 45.196445> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908794, 30.759033, 45.292782>,  <33.859318, 30.986654, 45.350582>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.908794, 30.759033, 45.292782>,  <33.991253, 30.379665, 45.196445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908794, 30.759033, 45.292782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103792, 0.223546, -0.969151,
		-0.973000, -0.224788, 0.052354,
		-0.206150, 0.948418, 0.240842,
		33.846951, 31.043558, 45.365036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.458588, 30.558281, 44.782921>,  <33.991253, 30.379665, 45.196445>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.458588, 30.558281, 44.782921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610188, 30.908390, 44.903091>,  <33.701149, 31.118456, 44.975193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.610188, 30.908390, 44.903091>,  <33.458588, 30.558281, 44.782921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610188, 30.908390, 44.903091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130366, 0.371911, -0.919069,
		-0.916167, 0.309163, 0.255061,
		0.379002, 0.875272, 0.300428,
		33.723888, 31.170971, 44.993221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.990788, 31.102005, 44.666950>,  <33.458588, 30.558281, 44.782921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.990788, 31.102005, 44.666950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328434, 31.316008, 44.680988>,  <33.531021, 31.444410, 44.689411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.328434, 31.316008, 44.680988>,  <32.990788, 31.102005, 44.666950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328434, 31.316008, 44.680988> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124878, 0.259847, -0.957541,
		-0.521413, 0.803894, 0.286152,
		0.844118, 0.535008, 0.035099,
		33.581669, 31.476509, 44.691517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.882446, 31.711464, 44.302143>,  <32.990788, 31.102005, 44.666950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.882446, 31.711464, 44.302143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.276398, 31.642534, 44.309246>,  <33.512768, 31.601177, 44.313507>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.276398, 31.642534, 44.309246>,  <32.882446, 31.711464, 44.302143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.276398, 31.642534, 44.309246> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059059, 0.237609, -0.969564,
		0.162858, 0.955953, 0.244194,
		0.984880, -0.172323, 0.017762,
		33.571861, 31.590837, 44.314575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267754, 32.359982, 44.154999>,  <32.882446, 31.711464, 44.302143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267754, 32.359982, 44.154999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532001, 32.074566, 44.061665>,  <33.690552, 31.903316, 44.005665>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.532001, 32.074566, 44.061665>,  <33.267754, 32.359982, 44.154999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.532001, 32.074566, 44.061665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171776, 0.446239, -0.878273,
		0.730801, 0.540127, 0.417364,
		0.660623, -0.713536, -0.233331,
		33.730190, 31.860504, 43.991665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869907, 32.745289, 43.873940>,  <33.267754, 32.359982, 44.154999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869907, 32.745289, 43.873940> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895386, 32.365498, 43.751019>,  <33.910671, 32.137623, 43.677265>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.895386, 32.365498, 43.751019>,  <33.869907, 32.745289, 43.873940>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.895386, 32.365498, 43.751019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054788, 0.304134, -0.951052,
		0.996464, 0.077415, -0.032648,
		0.063697, -0.949478, -0.307300,
		33.914494, 32.080654, 43.658829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421062, 32.648602, 43.262821>,  <33.869907, 32.745289, 43.873940>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421062, 32.648602, 43.262821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174484, 32.335445, 43.229168>,  <34.026539, 32.147552, 43.208977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.174484, 32.335445, 43.229168>,  <34.421062, 32.648602, 43.262821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.174484, 32.335445, 43.229168> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174944, 0.240356, -0.954790,
		0.767718, -0.573856, -0.285128,
		-0.616444, -0.782891, -0.084133,
		33.989552, 32.100578, 43.203930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164574, 32.725845, 43.311600>,  <34.421062, 32.648602, 43.262821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164574, 32.725845, 43.311600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229137, 33.109978, 43.402561>,  <35.267876, 33.340458, 43.457138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.229137, 33.109978, 43.402561>,  <35.164574, 32.725845, 43.311600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229137, 33.109978, 43.402561> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049085, -0.237953, 0.970036,
		0.985666, -0.145410, -0.085546,
		0.161409, 0.960330, 0.227405,
		35.277561, 33.398075, 43.470783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778225, 32.724739, 43.678074>,  <35.164574, 32.725845, 43.311600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778225, 32.724739, 43.678074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606209, 33.076214, 43.761002>,  <35.502998, 33.287098, 43.810757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.606209, 33.076214, 43.761002>,  <35.778225, 32.724739, 43.678074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606209, 33.076214, 43.761002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286618, -0.084879, 0.954278,
		0.856106, 0.469796, -0.215345,
		-0.430037, 0.878685, 0.207318,
		35.477196, 33.339821, 43.823196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271481, 33.022346, 44.206543>,  <35.778225, 32.724739, 43.678074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271481, 33.022346, 44.206543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940182, 33.243858, 44.240772>,  <35.741402, 33.376766, 44.261311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.940182, 33.243858, 44.240772>,  <36.271481, 33.022346, 44.206543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940182, 33.243858, 44.240772> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156934, 0.082638, 0.984146,
		0.537933, 0.828549, -0.155352,
		-0.828251, 0.553784, 0.085574,
		35.691708, 33.409992, 44.266445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.433403, 33.591820, 44.669498>,  <36.271481, 33.022346, 44.206543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.433403, 33.591820, 44.669498> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036194, 33.548073, 44.687164>,  <35.797871, 33.521824, 44.697765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.036194, 33.548073, 44.687164>,  <36.433403, 33.591820, 44.669498>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.036194, 33.548073, 44.687164> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019500, 0.217057, 0.975964,
		-0.116324, 0.970013, -0.213410,
		-0.993020, -0.109367, 0.044164,
		35.738289, 33.515263, 44.700413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196045, 34.264385, 44.884796>,  <36.433403, 33.591820, 44.669498>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196045, 34.264385, 44.884796> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944035, 33.964607, 44.966175>,  <35.792828, 33.784740, 45.015003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.944035, 33.964607, 44.966175>,  <36.196045, 34.264385, 44.884796>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.944035, 33.964607, 44.966175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063962, 0.311170, 0.948199,
		-0.773933, 0.584381, -0.243983,
		-0.630029, -0.749448, 0.203446,
		35.755024, 33.739773, 45.027210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.847107, 34.525261, 45.478973>,  <36.196045, 34.264385, 44.884796>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.847107, 34.525261, 45.478973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751057, 34.136963, 45.478619>,  <35.693428, 33.903984, 45.478405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.751057, 34.136963, 45.478619>,  <35.847107, 34.525261, 45.478973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.751057, 34.136963, 45.478619> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105532, -0.027012, 0.994049,
		-0.964989, 0.238603, 0.108930,
		-0.240125, -0.970742, -0.000886,
		35.679020, 33.845741, 45.478352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277641, 34.545624, 46.035309>,  <35.847107, 34.525261, 45.478973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277641, 34.545624, 46.035309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402428, 34.168644, 45.987190>,  <35.477299, 33.942455, 45.958321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402428, 34.168644, 45.987190>,  <35.277641, 34.545624, 46.035309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402428, 34.168644, 45.987190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077108, -0.151313, 0.985474,
		-0.946960, -0.298157, -0.119875,
		0.311964, -0.942447, -0.120297,
		35.496017, 33.885910, 45.951099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.798733, 34.193737, 46.398972>,  <35.277641, 34.545624, 46.035309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.798733, 34.193737, 46.398972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108402, 33.941410, 46.378071>,  <35.294205, 33.790016, 46.365532>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.108402, 33.941410, 46.378071>,  <34.798733, 34.193737, 46.398972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108402, 33.941410, 46.378071> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059114, -0.154236, 0.986264,
		-0.630209, -0.760449, -0.156695,
		0.774172, -0.630815, -0.052247,
		35.340652, 33.752167, 46.362396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593777, 33.610924, 46.750103>,  <34.798733, 34.193737, 46.398972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593777, 33.610924, 46.750103> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993469, 33.598667, 46.759842>,  <35.233284, 33.591312, 46.765686>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.993469, 33.598667, 46.759842>,  <34.593777, 33.610924, 46.750103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993469, 33.598667, 46.759842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031137, -0.245427, 0.968915,
		-0.023715, -0.968931, -0.246193,
		0.999234, -0.030643, 0.024349,
		35.293240, 33.589474, 46.767147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.737812, 33.091835, 47.145172>,  <34.593777, 33.610924, 46.750103>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.737812, 33.091835, 47.145172> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096085, 33.267971, 47.170025>,  <35.311047, 33.373653, 47.184937>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096085, 33.267971, 47.170025>,  <34.737812, 33.091835, 47.145172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096085, 33.267971, 47.170025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094206, -0.324417, 0.941211,
		0.434613, -0.837168, -0.332056,
		0.895676, 0.440344, 0.062130,
		35.364788, 33.400074, 47.188663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267250, 32.506901, 47.315838>,  <34.737812, 33.091835, 47.145172>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267250, 32.506901, 47.315838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418667, 32.850494, 47.453739>,  <35.509518, 33.056652, 47.536480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.418667, 32.850494, 47.453739>,  <35.267250, 32.506901, 47.315838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.418667, 32.850494, 47.453739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354584, -0.478633, 0.803231,
		0.854971, -0.181815, -0.485765,
		0.378543, 0.858984, 0.344749,
		35.532230, 33.108189, 47.557163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.914440, 32.383194, 47.648357>,  <35.267250, 32.506901, 47.315838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.914440, 32.383194, 47.648357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799042, 32.739304, 47.789318>,  <35.729801, 32.952969, 47.873894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.799042, 32.739304, 47.789318>,  <35.914440, 32.383194, 47.648357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.799042, 32.739304, 47.789318> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281134, -0.273063, 0.920000,
		0.915278, 0.364488, -0.171508,
		-0.288497, 0.890272, 0.352398,
		35.712494, 33.006386, 47.895039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462952, 32.506596, 48.074245>,  <35.914440, 32.383194, 47.648357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462952, 32.506596, 48.074245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184875, 32.764259, 48.201851>,  <36.018028, 32.918858, 48.278416>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.184875, 32.764259, 48.201851>,  <36.462952, 32.506596, 48.074245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.184875, 32.764259, 48.201851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161200, -0.292789, 0.942491,
		0.700519, 0.706634, 0.099705,
		-0.695189, 0.644161, 0.319013,
		35.976318, 32.957508, 48.297554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.713238, 32.843788, 48.584969>,  <36.462952, 32.506596, 48.074245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.713238, 32.843788, 48.584969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320011, 32.881180, 48.648018>,  <36.084076, 32.903614, 48.685848>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.320011, 32.881180, 48.648018>,  <36.713238, 32.843788, 48.584969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320011, 32.881180, 48.648018> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132224, -0.233745, 0.963265,
		0.126890, 0.967794, 0.217426,
		-0.983065, 0.093480, 0.157625,
		36.025093, 32.909225, 48.695305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818577, 33.550724, 48.690933>,  <36.713238, 32.843788, 48.584969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818577, 33.550724, 48.690933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216492, 33.587395, 48.708790>,  <37.455242, 33.609398, 48.719501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.216492, 33.587395, 48.708790>,  <36.818577, 33.550724, 48.690933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.216492, 33.587395, 48.708790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013529, 0.315251, -0.948912,
		-0.101062, 0.944570, 0.312368,
		0.994788, 0.091673, 0.044639,
		37.514927, 33.614895, 48.722183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008999, 34.189350, 48.345310>,  <36.818577, 33.550724, 48.690933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008999, 34.189350, 48.345310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353306, 33.986183, 48.332100>,  <37.559891, 33.864281, 48.324173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.353306, 33.986183, 48.332100>,  <37.008999, 34.189350, 48.345310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.353306, 33.986183, 48.332100> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163836, 0.337906, -0.926810,
		0.481905, 0.792361, 0.374075,
		0.860770, -0.507921, -0.033022,
		37.611538, 33.833805, 48.322193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.460270, 34.614704, 47.987190>,  <37.008999, 34.189350, 48.345310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.460270, 34.614704, 47.987190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647968, 34.262386, 47.961872>,  <37.760590, 34.050995, 47.946682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.647968, 34.262386, 47.961872>,  <37.460270, 34.614704, 47.987190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647968, 34.262386, 47.961872> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351071, 0.251847, -0.901844,
		0.810280, 0.400968, 0.427401,
		0.469250, -0.880794, -0.063298,
		37.788742, 33.998150, 47.942883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319447, 34.690765, 47.844139>,  <37.460270, 34.614704, 47.987190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319447, 34.690765, 47.844139> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231365, 34.319489, 47.724159>,  <38.178516, 34.096722, 47.652172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.231365, 34.319489, 47.724159>,  <38.319447, 34.690765, 47.844139>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231365, 34.319489, 47.724159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420794, 0.187031, -0.887666,
		0.880025, -0.321683, 0.349394,
		-0.220200, -0.928192, -0.299954,
		38.165306, 34.041031, 47.634174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.972599, 34.386688, 47.580421>,  <38.319447, 34.690765, 47.844139>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.972599, 34.386688, 47.580421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673801, 34.167717, 47.429523>,  <38.494522, 34.036335, 47.338985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.673801, 34.167717, 47.429523>,  <38.972599, 34.386688, 47.580421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673801, 34.167717, 47.429523> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381225, 0.112173, -0.917652,
		0.544666, -0.829301, 0.124900,
		-0.746998, -0.547428, -0.377247,
		38.449703, 34.003487, 47.316349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210865, 33.839108, 47.157368>,  <38.972599, 34.386688, 47.580421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210865, 33.839108, 47.157368> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.842075, 33.873875, 47.006420>,  <38.620800, 33.894733, 46.915852>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.842075, 33.873875, 47.006420>,  <39.210865, 33.839108, 47.157368>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842075, 33.873875, 47.006420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383207, 0.064357, -0.921418,
		-0.055802, -0.994134, -0.092643,
		-0.921975, 0.086919, -0.377368,
		38.565483, 33.899948, 46.893211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.153336, 33.408230, 46.521255>,  <39.210865, 33.839108, 47.157368>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.153336, 33.408230, 46.521255> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849705, 33.666599, 46.488777>,  <38.667526, 33.821621, 46.469292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.849705, 33.666599, 46.488777>,  <39.153336, 33.408230, 46.521255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849705, 33.666599, 46.488777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236516, 0.157426, -0.958789,
		-0.606519, -0.746997, -0.272269,
		-0.759075, 0.645920, -0.081195,
		38.621983, 33.860374, 46.464420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026604, 33.375393, 45.795921>,  <39.153336, 33.408230, 46.521255>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026604, 33.375393, 45.795921> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807407, 33.694660, 45.896027>,  <38.675888, 33.886219, 45.956089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.807407, 33.694660, 45.896027>,  <39.026604, 33.375393, 45.795921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807407, 33.694660, 45.896027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223893, 0.428227, -0.875496,
		-0.805963, -0.423732, -0.413370,
		-0.547992, 0.798168, 0.250265,
		38.643009, 33.934109, 45.971107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.443127, 33.423416, 45.343910>,  <39.026604, 33.375393, 45.795921>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.443127, 33.423416, 45.343910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527473, 33.795406, 45.464359>,  <38.578083, 34.018600, 45.536629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.527473, 33.795406, 45.464359>,  <38.443127, 33.423416, 45.343910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.527473, 33.795406, 45.464359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053077, 0.318489, -0.946440,
		-0.976073, 0.183590, 0.116519,
		0.210866, 0.929978, 0.301124,
		38.590733, 34.074398, 45.554695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.051743, 33.766819, 44.966766>,  <38.443127, 33.423416, 45.343910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.051743, 33.766819, 44.966766> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312805, 34.046913, 45.082504>,  <38.469440, 34.214970, 45.151947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.312805, 34.046913, 45.082504>,  <38.051743, 33.766819, 44.966766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312805, 34.046913, 45.082504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020790, 0.398295, -0.917022,
		-0.757372, 0.592481, 0.274506,
		0.652652, 0.700234, 0.289340,
		38.508602, 34.256985, 45.169308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833302, 34.469788, 44.749420>,  <38.051743, 33.766819, 44.966766>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833302, 34.469788, 44.749420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215305, 34.542198, 44.843380>,  <38.444508, 34.585644, 44.899757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.215305, 34.542198, 44.843380>,  <37.833302, 34.469788, 44.749420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.215305, 34.542198, 44.843380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093799, 0.567037, -0.818334,
		-0.281336, 0.803554, 0.524548,
		0.955014, 0.181025, 0.234901,
		38.501808, 34.596504, 44.913849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024837, 35.089798, 44.610802>,  <37.833302, 34.469788, 44.749420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024837, 35.089798, 44.610802> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413292, 34.998329, 44.637920>,  <38.646366, 34.943447, 44.654190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413292, 34.998329, 44.637920>,  <38.024837, 35.089798, 44.610802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413292, 34.998329, 44.637920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175691, 0.493617, -0.851748,
		0.161308, 0.839077, 0.519547,
		0.971140, -0.228674, 0.067794,
		38.704636, 34.929726, 44.658260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347809, 35.744698, 44.373516>,  <38.024837, 35.089798, 44.610802>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347809, 35.744698, 44.373516> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561531, 35.412804, 44.308952>,  <38.689766, 35.213665, 44.270214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.561531, 35.412804, 44.308952>,  <38.347809, 35.744698, 44.373516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.561531, 35.412804, 44.308952> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291173, 0.359926, -0.886381,
		0.793559, 0.426600, 0.433908,
		0.534305, -0.829738, -0.161409,
		38.721821, 35.163883, 44.260529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.872330, 36.047703, 43.986084>,  <38.347809, 35.744698, 44.373516>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.872330, 36.047703, 43.986084> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910889, 35.653584, 43.929653>,  <38.934025, 35.417114, 43.895794>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.910889, 35.653584, 43.929653>,  <38.872330, 36.047703, 43.986084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.910889, 35.653584, 43.929653> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274331, 0.162546, -0.947798,
		0.956791, 0.052668, 0.285967,
		0.096401, -0.985294, -0.141074,
		38.939808, 35.357994, 43.887329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.660227, 38.013161, 29.757559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731802, 37.646324, 29.615057>,  <31.774748, 37.426220, 29.529556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.731802, 37.646324, 29.615057>,  <31.660227, 38.013161, 29.757559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731802, 37.646324, 29.615057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.755134, -0.360132, 0.547793,
		-0.630677, 0.170998, -0.756972,
		0.178938, -0.917096, -0.356254,
		31.785484, 37.371197, 29.508181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.023624, 37.828995, 29.448473>,  <31.660227, 38.013161, 29.757559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.023624, 37.828995, 29.448473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216839, 37.482208, 29.497528>,  <31.332767, 37.274136, 29.526960>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.216839, 37.482208, 29.497528>,  <31.023624, 37.828995, 29.448473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.216839, 37.482208, 29.497528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718888, -0.312711, 0.620815,
		-0.499879, -0.388037, -0.774305,
		0.483034, -0.866971, 0.122638,
		31.361750, 37.222118, 29.534319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.397337, 37.346783, 29.400288>,  <31.023624, 37.828995, 29.448473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.397337, 37.346783, 29.400288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.717688, 37.195385, 29.585907>,  <30.909899, 37.104546, 29.697279>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.717688, 37.195385, 29.585907>,  <30.397337, 37.346783, 29.400288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.717688, 37.195385, 29.585907> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598195, -0.541248, 0.590942,
		0.027500, -0.750863, -0.659885,
		0.800878, -0.378489, 0.464047,
		30.957951, 37.081837, 29.725121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.159342, 36.692329, 29.564409>,  <30.397337, 37.346783, 29.400288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.159342, 36.692329, 29.564409> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478291, 36.724991, 29.803587>,  <30.669659, 36.744587, 29.947094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.478291, 36.724991, 29.803587>,  <30.159342, 36.692329, 29.564409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478291, 36.724991, 29.803587> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503384, -0.456526, 0.733613,
		0.332875, -0.885956, -0.322919,
		0.797370, 0.081649, 0.597943,
		30.717501, 36.749485, 29.982969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214800, 36.000225, 29.880108>,  <30.159342, 36.692329, 29.564409>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214800, 36.000225, 29.880108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405945, 36.250221, 30.127020>,  <30.520632, 36.400219, 30.275167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.405945, 36.250221, 30.127020>,  <30.214800, 36.000225, 29.880108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405945, 36.250221, 30.127020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447309, -0.431651, 0.783321,
		0.756016, -0.650436, 0.073292,
		0.477864, 0.624988, 0.617281,
		30.549305, 36.437717, 30.312204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.476007, 35.668816, 30.490368>,  <30.214800, 36.000225, 29.880108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.476007, 35.668816, 30.490368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426252, 36.049744, 30.601810>,  <30.396399, 36.278301, 30.668676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.426252, 36.049744, 30.601810>,  <30.476007, 35.668816, 30.490368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.426252, 36.049744, 30.601810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473263, -0.303730, 0.826904,
		0.872095, -0.028996, 0.488476,
		-0.124388, 0.952316, 0.278605,
		30.388935, 36.335438, 30.685392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504881, 35.645187, 31.097416>,  <30.476007, 35.668816, 30.490368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504881, 35.645187, 31.097416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345070, 36.011219, 31.075481>,  <30.249184, 36.230839, 31.062321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.345070, 36.011219, 31.075481>,  <30.504881, 35.645187, 31.097416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.345070, 36.011219, 31.075481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594545, -0.213121, 0.775303,
		0.697778, 0.342355, 0.629204,
		-0.399526, 0.915080, -0.054834,
		30.225212, 36.285744, 31.059031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.596458, 35.986309, 31.778442>,  <30.504881, 35.645187, 31.097416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.596458, 35.986309, 31.778442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295635, 36.154308, 31.575264>,  <30.115141, 36.255108, 31.453356>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.295635, 36.154308, 31.575264>,  <30.596458, 35.986309, 31.778442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295635, 36.154308, 31.575264> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591440, -0.089928, 0.801319,
		0.290873, 0.903059, 0.316034,
		-0.752058, 0.419997, -0.507948,
		30.070017, 36.280308, 31.422880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337036, 36.464409, 32.226109>,  <30.596458, 35.986309, 31.778442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337036, 36.464409, 32.226109> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051531, 36.401840, 31.953030>,  <29.880228, 36.364300, 31.789183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.051531, 36.401840, 31.953030>,  <30.337036, 36.464409, 32.226109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.051531, 36.401840, 31.953030> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693331, 0.019801, 0.720347,
		-0.099159, 0.987492, -0.122584,
		-0.713764, -0.156420, -0.682695,
		29.837402, 36.354916, 31.748220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737602, 36.997940, 32.230896>,  <30.337036, 36.464409, 32.226109>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737602, 36.997940, 32.230896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631289, 36.638172, 32.092098>,  <29.567499, 36.422314, 32.008820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631289, 36.638172, 32.092098>,  <29.737602, 36.997940, 32.230896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631289, 36.638172, 32.092098> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765947, -0.021550, 0.642542,
		-0.585391, 0.436561, -0.683178,
		-0.265786, -0.899417, -0.346998,
		29.551552, 36.368347, 31.987999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.088953, 36.935184, 32.477421>,  <29.737602, 36.997940, 32.230896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.088953, 36.935184, 32.477421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117840, 36.557457, 32.349018>,  <29.135172, 36.330822, 32.271976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.117840, 36.557457, 32.349018>,  <29.088953, 36.935184, 32.477421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.117840, 36.557457, 32.349018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659739, -0.286607, 0.694695,
		-0.748017, 0.161612, -0.643702,
		0.072218, -0.944319, -0.321008,
		29.139505, 36.274162, 32.252716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.391289, 36.727028, 32.572395>,  <29.088953, 36.935184, 32.477421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.391289, 36.727028, 32.572395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623074, 36.401142, 32.563709>,  <28.762144, 36.205612, 32.558498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.623074, 36.401142, 32.563709>,  <28.391289, 36.727028, 32.572395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.623074, 36.401142, 32.563709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596868, -0.442366, 0.669374,
		-0.554953, -0.374913, -0.742608,
		0.579461, -0.814710, -0.021719,
		28.796911, 36.156731, 32.557194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966070, 36.095608, 32.570995>,  <28.391289, 36.727028, 32.572395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966070, 36.095608, 32.570995> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325970, 35.971710, 32.693966>,  <28.541910, 35.897373, 32.767746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.325970, 35.971710, 32.693966>,  <27.966070, 36.095608, 32.570995>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.325970, 35.971710, 32.693966> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433951, -0.560404, 0.705431,
		-0.046222, -0.768118, -0.638637,
		0.899750, -0.309744, 0.307423,
		28.595894, 35.878788, 32.786194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792259, 35.447765, 32.903027>,  <27.966070, 36.095608, 32.570995>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792259, 35.447765, 32.903027> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165857, 35.497585, 33.036976>,  <28.390017, 35.527477, 33.117344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.165857, 35.497585, 33.036976>,  <27.792259, 35.447765, 32.903027>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.165857, 35.497585, 33.036976> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223534, -0.527455, 0.819649,
		0.278720, -0.840403, -0.464798,
		0.933995, 0.124554, 0.334871,
		28.446056, 35.534950, 33.137436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.009293, 34.810654, 33.026253>,  <27.792259, 35.447765, 32.903027>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.009293, 34.810654, 33.026253> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263546, 35.039112, 33.234009>,  <28.416098, 35.176186, 33.358662>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.263546, 35.039112, 33.234009>,  <28.009293, 34.810654, 33.026253>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263546, 35.039112, 33.234009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254766, -0.479906, 0.839514,
		0.728742, -0.665946, -0.159535,
		0.635633, 0.571145, 0.519388,
		28.454235, 35.210457, 33.389824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.333370, 34.346615, 33.392315>,  <28.009293, 34.810654, 33.026253>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.333370, 34.346615, 33.392315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351788, 34.696106, 33.586006>,  <28.362839, 34.905800, 33.702221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.351788, 34.696106, 33.586006>,  <28.333370, 34.346615, 33.392315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.351788, 34.696106, 33.586006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378499, -0.433335, 0.817899,
		0.924456, -0.220938, 0.310754,
		0.046044, 0.873732, 0.484224,
		28.365601, 34.958225, 33.731274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650026, 34.171242, 33.978756>,  <28.333370, 34.346615, 33.392315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650026, 34.171242, 33.978756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463169, 34.508427, 34.085480>,  <28.351055, 34.710739, 34.149513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.463169, 34.508427, 34.085480>,  <28.650026, 34.171242, 33.978756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.463169, 34.508427, 34.085480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254068, -0.417005, 0.872672,
		0.846893, 0.339874, 0.408971,
		-0.467142, 0.842966, 0.266808,
		28.323027, 34.761318, 34.165524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.856823, 34.243664, 34.668739>,  <28.650026, 34.171242, 33.978756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.856823, 34.243664, 34.668739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549360, 34.495937, 34.626026>,  <28.364883, 34.647301, 34.600399>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.549360, 34.495937, 34.626026>,  <28.856823, 34.243664, 34.668739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.549360, 34.495937, 34.626026> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243582, -0.134241, 0.960545,
		0.591469, 0.764339, 0.256809,
		-0.768656, 0.630687, -0.106780,
		28.318764, 34.685143, 34.593990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889513, 34.588123, 35.255798>,  <28.856823, 34.243664, 34.668739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889513, 34.588123, 35.255798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512270, 34.600193, 35.123356>,  <28.285923, 34.607433, 35.043888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.512270, 34.600193, 35.123356>,  <28.889513, 34.588123, 35.255798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512270, 34.600193, 35.123356> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330906, 0.011686, 0.943591,
		0.032340, 0.999476, -0.001037,
		-0.943109, 0.030173, -0.331111,
		28.229338, 34.609245, 35.024021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561829, 34.375793, 35.534233>,  <28.889513, 34.588123, 35.255798>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561829, 34.375793, 35.534233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855877, 34.458500, 35.792488>,  <30.032305, 34.508125, 35.947441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.855877, 34.458500, 35.792488>,  <29.561829, 34.375793, 35.534233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855877, 34.458500, 35.792488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248251, 0.804101, -0.540178,
		-0.630849, 0.557375, 0.539780,
		0.735119, 0.206770, 0.645636,
		30.076412, 34.520531, 35.986179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440193, 35.026577, 35.920437>,  <29.561829, 34.375793, 35.534233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440193, 35.026577, 35.920437> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832369, 34.949348, 35.905125>,  <30.067675, 34.903011, 35.895939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.832369, 34.949348, 35.905125>,  <29.440193, 35.026577, 35.920437>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.832369, 34.949348, 35.905125> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176519, 0.948517, -0.262978,
		0.087082, 0.251077, 0.964042,
		0.980438, -0.193072, -0.038279,
		30.126501, 34.891426, 35.893642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.671772, 35.561558, 36.302135>,  <29.440193, 35.026577, 35.920437>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.671772, 35.561558, 36.302135> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982824, 35.417736, 36.095829>,  <30.169456, 35.331444, 35.972046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.982824, 35.417736, 36.095829>,  <29.671772, 35.561558, 36.302135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.982824, 35.417736, 36.095829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183107, 0.914295, -0.361298,
		0.601467, 0.186516, 0.776820,
		0.777630, -0.359550, -0.515766,
		30.216114, 35.309872, 35.941101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.095827, 36.169804, 36.091927>,  <29.671772, 35.561558, 36.302135>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.095827, 36.169804, 36.091927> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299913, 35.899319, 35.879353>,  <30.422365, 35.737030, 35.751808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.299913, 35.899319, 35.879353>,  <30.095827, 36.169804, 36.091927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.299913, 35.899319, 35.879353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325599, 0.723791, -0.608368,
		0.796032, 0.137363, 0.589461,
		0.510214, -0.676209, -0.531436,
		30.452978, 35.696457, 35.719921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.721073, 36.407646, 36.105892>,  <30.095827, 36.169804, 36.091927>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.721073, 36.407646, 36.105892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648987, 36.209747, 35.765835>,  <30.605734, 36.091007, 35.561802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.648987, 36.209747, 35.765835>,  <30.721073, 36.407646, 36.105892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648987, 36.209747, 35.765835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240110, 0.816022, -0.525790,
		0.953870, -0.298885, -0.028268,
		-0.180218, -0.494748, -0.850145,
		30.594921, 36.061321, 35.510792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.249952, 36.523464, 35.660973>,  <30.721073, 36.407646, 36.105892>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.249952, 36.523464, 35.660973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950277, 36.409157, 35.421955>,  <30.770472, 36.340572, 35.278545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950277, 36.409157, 35.421955>,  <31.249952, 36.523464, 35.660973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950277, 36.409157, 35.421955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237958, 0.725788, -0.645452,
		0.618137, -0.625754, -0.475751,
		-0.749188, -0.285769, -0.597540,
		30.725521, 36.323425, 35.242695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488705, 36.710346, 35.104271>,  <31.249952, 36.523464, 35.660973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488705, 36.710346, 35.104271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111473, 36.656494, 34.982628>,  <30.885134, 36.624184, 34.909641>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.111473, 36.656494, 34.982628>,  <31.488705, 36.710346, 35.104271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111473, 36.656494, 34.982628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130784, 0.690603, -0.711311,
		0.305780, -0.710593, -0.633685,
		-0.943077, -0.134628, -0.304107,
		30.828550, 36.616104, 34.891396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.522596, 36.685677, 34.389172>,  <31.488705, 36.710346, 35.104271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.522596, 36.685677, 34.389172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132650, 36.746708, 34.454113>,  <30.898684, 36.783325, 34.493076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.132650, 36.746708, 34.454113>,  <31.522596, 36.685677, 34.389172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.132650, 36.746708, 34.454113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001040, 0.731802, -0.681516,
		-0.222793, -0.664218, -0.713567,
		-0.974865, 0.152579, 0.162350,
		30.840191, 36.792480, 34.502819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348787, 36.877827, 33.786991>,  <31.522596, 36.685677, 34.389172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348787, 36.877827, 33.786991> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033775, 36.988518, 34.007252>,  <30.844769, 37.054932, 34.139408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.033775, 36.988518, 34.007252>,  <31.348787, 36.877827, 33.786991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.033775, 36.988518, 34.007252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213054, 0.716174, -0.664608,
		-0.578278, -0.640717, -0.505051,
		-0.787530, 0.276725, 0.550655,
		30.797516, 37.071537, 34.172447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709459, 36.807144, 33.390427>,  <31.348787, 36.877827, 33.786991>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709459, 36.807144, 33.390427> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647850, 37.095390, 33.660831>,  <30.610884, 37.268337, 33.823074>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647850, 37.095390, 33.660831>,  <30.709459, 36.807144, 33.390427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647850, 37.095390, 33.660831> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218178, 0.642485, -0.734582,
		-0.963678, -0.260634, 0.058264,
		-0.154024, 0.720613, 0.676013,
		30.601643, 37.311573, 33.863636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.094948, 37.107632, 33.242294>,  <30.709459, 36.807144, 33.390427>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.094948, 37.107632, 33.242294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277689, 37.398586, 33.447117>,  <30.387335, 37.573158, 33.570011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277689, 37.398586, 33.447117>,  <30.094948, 37.107632, 33.242294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277689, 37.398586, 33.447117> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193012, 0.642980, -0.741164,
		-0.868349, 0.239772, 0.434142,
		0.456855, 0.727383, 0.512052,
		30.414745, 37.616802, 33.600731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.616167, 37.738705, 33.174137>,  <30.094948, 37.107632, 33.242294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.616167, 37.738705, 33.174137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975779, 37.880093, 33.277519>,  <30.191545, 37.964928, 33.339550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.975779, 37.880093, 33.277519>,  <29.616167, 37.738705, 33.174137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975779, 37.880093, 33.277519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045527, 0.662492, -0.747684,
		-0.435512, 0.660424, 0.611694,
		0.899031, 0.353474, 0.258456,
		30.245487, 37.986134, 33.355057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576981, 38.449539, 33.253128>,  <29.616167, 37.738705, 33.174137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576981, 38.449539, 33.253128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962429, 38.376160, 33.175381>,  <30.193699, 38.332130, 33.128731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.962429, 38.376160, 33.175381>,  <29.576981, 38.449539, 33.253128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962429, 38.376160, 33.175381> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009375, 0.749988, -0.661385,
		0.267107, 0.635502, 0.724424,
		0.963621, -0.183452, -0.194369,
		30.251516, 38.321125, 33.117069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798683, 39.112080, 33.077774>,  <29.576981, 38.449539, 33.253128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798683, 39.112080, 33.077774> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108122, 38.883816, 32.967579>,  <30.293785, 38.746857, 32.901463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.108122, 38.883816, 32.967579>,  <29.798683, 39.112080, 33.077774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108122, 38.883816, 32.967579> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148837, 0.586213, -0.796368,
		0.615951, 0.575065, 0.538428,
		0.773597, -0.570661, -0.275488,
		30.340200, 38.712616, 32.884933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466702, 39.574856, 32.997948>,  <29.798683, 39.112080, 33.077774>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466702, 39.574856, 32.997948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515633, 39.248379, 32.772076>,  <30.544991, 39.052490, 32.636555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.515633, 39.248379, 32.772076>,  <30.466702, 39.574856, 32.997948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.515633, 39.248379, 32.772076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101716, 0.576264, -0.810909,
		0.987264, 0.041760, 0.153514,
		0.122328, -0.816196, -0.564677,
		30.552332, 39.003521, 32.602673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.064751, 39.697319, 32.657322>,  <30.466702, 39.574856, 32.997948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.064751, 39.697319, 32.657322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871210, 39.406818, 32.461998>,  <30.755085, 39.232517, 32.344803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.871210, 39.406818, 32.461998>,  <31.064751, 39.697319, 32.657322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.871210, 39.406818, 32.461998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223464, 0.436951, -0.871285,
		0.846138, -0.530694, -0.049130,
		-0.483853, -0.726249, -0.488312,
		30.726053, 39.188942, 32.315506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.488420, 39.379566, 32.140331>,  <31.064751, 39.697319, 32.657322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.488420, 39.379566, 32.140331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129166, 39.277252, 31.997265>,  <30.913612, 39.215866, 31.911425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.129166, 39.277252, 31.997265>,  <31.488420, 39.379566, 32.140331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129166, 39.277252, 31.997265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267733, 0.327147, -0.906253,
		0.348822, -0.909695, -0.225338,
		-0.898133, -0.255790, -0.357671,
		30.859724, 39.200520, 31.889963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.683687, 39.038898, 31.535364>,  <31.488420, 39.379566, 32.140331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.683687, 39.038898, 31.535364> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299725, 39.147770, 31.508526>,  <31.069347, 39.213093, 31.492422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.299725, 39.147770, 31.508526>,  <31.683687, 39.038898, 31.535364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.299725, 39.147770, 31.508526> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204228, 0.515039, -0.832482,
		-0.192026, -0.812806, -0.549975,
		-0.959905, 0.272179, -0.067096,
		31.011753, 39.229424, 31.488398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504948, 38.891766, 30.834463>,  <31.683687, 39.038898, 31.535364>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504948, 38.891766, 30.834463> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.217260, 39.133194, 30.972116>,  <31.044647, 39.278049, 31.054708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.217260, 39.133194, 30.972116>,  <31.504948, 38.891766, 30.834463>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217260, 39.133194, 30.972116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021569, 0.475675, -0.879357,
		-0.694448, -0.639873, -0.329096,
		-0.719219, 0.603570, 0.344133,
		31.001495, 39.314266, 31.075356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.888323, 38.821918, 30.410055>,  <31.504948, 38.891766, 30.834463>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.888323, 38.821918, 30.410055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829962, 39.180733, 30.576929>,  <30.794945, 39.396019, 30.677053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.829962, 39.180733, 30.576929>,  <30.888323, 38.821918, 30.410055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.829962, 39.180733, 30.576929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208995, 0.384231, -0.899271,
		-0.966971, -0.218396, 0.131415,
		-0.145904, 0.897034, 0.417184,
		30.786190, 39.449844, 30.702084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.258787, 39.079533, 30.209896>,  <30.888323, 38.821918, 30.410055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.258787, 39.079533, 30.209896> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493935, 39.392078, 30.293684>,  <30.635023, 39.579605, 30.343958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.493935, 39.392078, 30.293684>,  <30.258787, 39.079533, 30.209896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493935, 39.392078, 30.293684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218542, 0.402709, -0.888856,
		-0.778878, 0.476751, 0.407500,
		0.587867, 0.781367, 0.209471,
		30.670294, 39.626488, 30.356525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.908108, 39.522808, 30.006596>,  <30.258787, 39.079533, 30.209896>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.908108, 39.522808, 30.006596> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249941, 39.725159, 30.053545>,  <30.455042, 39.846569, 30.081715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.249941, 39.725159, 30.053545>,  <29.908108, 39.522808, 30.006596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249941, 39.725159, 30.053545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053289, 0.310247, -0.949161,
		-0.516571, 0.804884, 0.292090,
		0.854584, 0.505874, 0.117373,
		30.506317, 39.876923, 30.088757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837631, 40.043072, 29.586836>,  <29.908108, 39.522808, 30.006596>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837631, 40.043072, 29.586836> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234720, 40.041000, 29.634968>,  <30.472973, 40.039757, 29.663847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.234720, 40.041000, 29.634968>,  <29.837631, 40.043072, 29.586836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.234720, 40.041000, 29.634968> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119778, 0.147168, -0.981832,
		-0.012622, 0.989098, 0.146717,
		0.992721, -0.005180, 0.120330,
		30.532536, 40.039448, 29.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.674503, 31.751225, 48.285980> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332844, 31.689531, 48.484631>,  <40.127850, 31.652515, 48.603821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.332844, 31.689531, 48.484631>,  <40.674503, 31.751225, 48.285980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332844, 31.689531, 48.484631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477533, 0.145475, 0.866487,
		-0.205889, 0.977266, -0.050605,
		-0.854150, -0.154234, 0.496629,
		40.076599, 31.643261, 48.633617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566334, 32.291801, 48.889126>,  <40.674503, 31.751225, 48.285980>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566334, 32.291801, 48.889126> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320484, 31.995676, 48.998066>,  <40.172974, 31.818001, 49.063431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.320484, 31.995676, 48.998066>,  <40.566334, 32.291801, 48.889126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.320484, 31.995676, 48.998066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330864, 0.071478, 0.940968,
		-0.716076, 0.668453, 0.201011,
		-0.614625, -0.740312, 0.272351,
		40.136097, 31.773582, 49.079773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.203770, 32.495380, 49.506313>,  <40.566334, 32.291801, 48.889126>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.203770, 32.495380, 49.506313> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.180885, 32.096584, 49.485390>,  <40.167156, 31.857307, 49.472836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.180885, 32.096584, 49.485390>,  <40.203770, 32.495380, 49.506313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.180885, 32.096584, 49.485390> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207716, -0.063137, 0.976150,
		-0.976515, 0.044978, 0.210703,
		-0.057208, -0.996991, -0.052312,
		40.163723, 31.797487, 49.469696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965782, 32.355610, 50.150776>,  <40.203770, 32.495380, 49.506313>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965782, 32.355610, 50.150776> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106174, 31.997141, 50.042191>,  <40.190411, 31.782061, 49.977039>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.106174, 31.997141, 50.042191>,  <39.965782, 32.355610, 50.150776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106174, 31.997141, 50.042191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171036, -0.223672, 0.959540,
		-0.920629, -0.383212, 0.074772,
		0.350983, -0.896169, -0.271462,
		40.211468, 31.728291, 49.960751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.568832, 31.991854, 50.549568>,  <39.965782, 32.355610, 50.150776>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.568832, 31.991854, 50.549568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.856869, 31.746752, 50.419334>,  <40.029690, 31.599689, 50.341194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.856869, 31.746752, 50.419334>,  <39.568832, 31.991854, 50.549568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856869, 31.746752, 50.419334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043028, -0.507749, 0.860430,
		-0.692549, -0.605574, -0.391989,
		0.720086, -0.612756, -0.325584,
		40.072895, 31.562925, 50.321659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269066, 31.303917, 50.518414>,  <39.568832, 31.991854, 50.549568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269066, 31.303917, 50.518414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.665443, 31.261427, 50.551262>,  <39.903271, 31.235933, 50.570972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.665443, 31.261427, 50.551262>,  <39.269066, 31.303917, 50.518414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.665443, 31.261427, 50.551262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120678, -0.436477, 0.891586,
		-0.058862, -0.893423, -0.445343,
		0.990945, -0.106223, 0.082125,
		39.962727, 31.229559, 50.575901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327953, 30.618305, 50.704201>,  <39.269066, 31.303917, 50.518414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327953, 30.618305, 50.704201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.671280, 30.798388, 50.802677>,  <39.877277, 30.906437, 50.861763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.671280, 30.798388, 50.802677>,  <39.327953, 30.618305, 50.704201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.671280, 30.798388, 50.802677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023628, -0.444609, 0.895413,
		0.512579, -0.774363, -0.370977,
		0.858315, 0.450205, 0.246194,
		39.928776, 30.933449, 50.876534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718014, 30.130148, 50.853104>,  <39.327953, 30.618305, 50.704201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718014, 30.130148, 50.853104> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911831, 30.416235, 51.054569>,  <40.028122, 30.587887, 51.175449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.911831, 30.416235, 51.054569>,  <39.718014, 30.130148, 50.853104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911831, 30.416235, 51.054569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112996, -0.519776, 0.846797,
		0.867438, -0.467223, -0.171038,
		0.484544, 0.715217, 0.503667,
		40.057194, 30.630800, 51.205669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.336327, 29.794228, 51.145527>,  <39.718014, 30.130148, 50.853104>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.336327, 29.794228, 51.145527> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253082, 30.122293, 51.358704>,  <40.203136, 30.319132, 51.486610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.253082, 30.122293, 51.358704>,  <40.336327, 29.794228, 51.145527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.253082, 30.122293, 51.358704> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144474, -0.564667, 0.812575,
		0.967376, 0.092111, 0.236006,
		-0.208112, 0.820163, 0.532938,
		40.190647, 30.368341, 51.518585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580685, 29.719000, 51.776424>,  <40.336327, 29.794228, 51.145527>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.580685, 29.719000, 51.776424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.341595, 30.020100, 51.886768>,  <40.198143, 30.200760, 51.952976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.341595, 30.020100, 51.886768>,  <40.580685, 29.719000, 51.776424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.341595, 30.020100, 51.886768> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252392, -0.503279, 0.826443,
		0.760938, 0.424358, 0.490809,
		-0.597722, 0.752748, 0.275860,
		40.162277, 30.245924, 51.969524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.663780, 29.802481, 52.497681>,  <40.580685, 29.719000, 51.776424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.663780, 29.802481, 52.497681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325504, 30.008673, 52.442425>,  <40.122540, 30.132389, 52.409271>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.325504, 30.008673, 52.442425>,  <40.663780, 29.802481, 52.497681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.325504, 30.008673, 52.442425> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339933, -0.320780, 0.884051,
		0.411399, 0.794594, 0.446510,
		-0.845693, 0.515481, -0.138141,
		40.071796, 30.163317, 52.400982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539299, 30.043665, 53.172020>,  <40.663780, 29.802481, 52.497681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539299, 30.043665, 53.172020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192436, 30.067640, 52.974258>,  <39.984318, 30.082026, 52.855602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.192436, 30.067640, 52.974258>,  <40.539299, 30.043665, 53.172020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192436, 30.067640, 52.974258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485439, -0.323532, 0.812205,
		-0.111274, 0.944317, 0.309651,
		-0.867161, 0.059940, -0.494409,
		39.932289, 30.085623, 52.825935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.022514, 30.611101, 53.432648>,  <40.539299, 30.043665, 53.172020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.022514, 30.611101, 53.432648> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863319, 30.289997, 53.255024>,  <39.767803, 30.097336, 53.148449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.863319, 30.289997, 53.255024>,  <40.022514, 30.611101, 53.432648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.863319, 30.289997, 53.255024> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313296, -0.336009, 0.888225,
		-0.862237, 0.492622, -0.117774,
		-0.397986, -0.802758, -0.444056,
		39.743923, 30.049170, 53.121807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258308, 30.458038, 53.579323>,  <40.022514, 30.611101, 53.432648>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258308, 30.458038, 53.579323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438885, 30.115822, 53.477932>,  <39.547230, 29.910492, 53.417095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.438885, 30.115822, 53.477932>,  <39.258308, 30.458038, 53.579323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.438885, 30.115822, 53.477932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451480, -0.464034, 0.762128,
		-0.769656, -0.229612, -0.595742,
		0.451438, -0.855542, -0.253481,
		39.574318, 29.859159, 53.401886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.430531, 31.172607, 53.617344>,  <39.258308, 30.458038, 53.579323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.430531, 31.172607, 53.617344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218174, 31.495026, 53.721992>,  <39.090759, 31.688477, 53.784782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.218174, 31.495026, 53.721992>,  <39.430531, 31.172607, 53.617344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.218174, 31.495026, 53.721992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413686, 0.022930, -0.910131,
		-0.739606, -0.591409, 0.321276,
		-0.530893, 0.806046, 0.261617,
		39.058907, 31.736839, 53.800476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997650, 31.224796, 53.083607>,  <39.430531, 31.172607, 53.617344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997650, 31.224796, 53.083607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900433, 31.559069, 53.280609>,  <38.842102, 31.759632, 53.398811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.900433, 31.559069, 53.280609>,  <38.997650, 31.224796, 53.083607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.900433, 31.559069, 53.280609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539765, 0.305355, -0.784482,
		-0.805969, -0.456501, 0.376858,
		-0.243041, 0.835683, 0.492510,
		38.827518, 31.809772, 53.428364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.278599, 31.233242, 53.065350>,  <38.997650, 31.224796, 53.083607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.278599, 31.233242, 53.065350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455494, 31.590885, 53.093628>,  <38.561630, 31.805471, 53.110596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.455494, 31.590885, 53.093628>,  <38.278599, 31.233242, 53.065350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455494, 31.590885, 53.093628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567759, 0.340092, -0.749658,
		-0.694319, 0.291386, 0.658039,
		0.442234, 0.894109, 0.070695,
		38.588165, 31.859118, 53.114838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805283, 31.656963, 52.684189>,  <38.278599, 31.233242, 53.065350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805283, 31.656963, 52.684189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098438, 31.919777, 52.754826>,  <38.274330, 32.077465, 52.797207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.098438, 31.919777, 52.754826>,  <37.805283, 31.656963, 52.684189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098438, 31.919777, 52.754826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357576, 0.592810, -0.721606,
		-0.578807, 0.465708, 0.669401,
		0.732886, 0.657033, 0.176596,
		38.318306, 32.116886, 52.807804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518414, 32.310688, 52.624454>,  <37.805283, 31.656963, 52.684189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518414, 32.310688, 52.624454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911072, 32.322376, 52.549076>,  <38.146667, 32.329388, 52.503849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.911072, 32.322376, 52.549076>,  <37.518414, 32.310688, 52.624454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911072, 32.322376, 52.549076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169148, 0.589766, -0.789662,
		0.088067, 0.807046, 0.583885,
		0.981648, 0.029220, -0.188448,
		38.205566, 32.331142, 52.492542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591846, 32.912823, 52.302418>,  <37.518414, 32.310688, 52.624454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591846, 32.912823, 52.302418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942410, 32.748676, 52.201618>,  <38.152748, 32.650188, 52.141140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.942410, 32.748676, 52.201618>,  <37.591846, 32.912823, 52.302418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.942410, 32.748676, 52.201618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013314, 0.543740, -0.839148,
		0.481382, 0.732082, 0.482003,
		0.876410, -0.410368, -0.252000,
		38.205334, 32.625565, 52.126019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998577, 33.466553, 51.984577>,  <37.591846, 32.912823, 52.302418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998577, 33.466553, 51.984577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155464, 33.119202, 51.863201>,  <38.249596, 32.910789, 51.790375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.155464, 33.119202, 51.863201>,  <37.998577, 33.466553, 51.984577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.155464, 33.119202, 51.863201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158419, 0.388711, -0.907638,
		0.906127, 0.307923, 0.290029,
		0.392220, -0.868382, -0.303441,
		38.273129, 32.858688, 51.772167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517445, 33.648651, 51.613110>,  <37.998577, 33.466553, 51.984577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517445, 33.648651, 51.613110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.463108, 33.273350, 51.485847>,  <38.430508, 33.048168, 51.409489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.463108, 33.273350, 51.485847>,  <38.517445, 33.648651, 51.613110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.463108, 33.273350, 51.485847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128838, 0.301680, -0.944664,
		0.982318, -0.169314, 0.079903,
		-0.135839, -0.938255, -0.318159,
		38.422356, 32.991875, 51.390400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998589, 33.540287, 50.967907>,  <38.517445, 33.648651, 51.613110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998589, 33.540287, 50.967907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726669, 33.248081, 50.941891>,  <38.563519, 33.072758, 50.926281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.726669, 33.248081, 50.941891>,  <38.998589, 33.540287, 50.967907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726669, 33.248081, 50.941891> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011315, 0.099125, -0.995011,
		0.733314, -0.675668, -0.075651,
		-0.679795, -0.730511, -0.065045,
		38.522732, 33.028927, 50.922379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271736, 33.105659, 50.465794>,  <38.998589, 33.540287, 50.967907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271736, 33.105659, 50.465794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888744, 32.992805, 50.489910>,  <38.658951, 32.925095, 50.504379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.888744, 32.992805, 50.489910>,  <39.271736, 33.105659, 50.465794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.888744, 32.992805, 50.489910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084863, 0.075689, -0.993514,
		0.275738, -0.956385, -0.096413,
		-0.957480, -0.282132, 0.060292,
		38.601501, 32.908165, 50.507999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.112137, 32.786781, 49.813793>,  <39.271736, 33.105659, 50.465794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.112137, 32.786781, 49.813793> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746811, 32.863453, 49.957523>,  <38.527615, 32.909454, 50.043762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.746811, 32.863453, 49.957523>,  <39.112137, 32.786781, 49.813793>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.746811, 32.863453, 49.957523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367632, -0.008432, -0.929933,
		-0.175218, -0.981422, 0.078168,
		-0.913316, 0.191678, 0.359324,
		38.472816, 32.920956, 50.065319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682442, 32.351952, 49.456570>,  <39.112137, 32.786781, 49.813793>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682442, 32.351952, 49.456570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467846, 32.667282, 49.577045>,  <38.339088, 32.856480, 49.649330>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.467846, 32.667282, 49.577045>,  <38.682442, 32.351952, 49.456570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.467846, 32.667282, 49.577045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344997, 0.120829, -0.930794,
		-0.770165, -0.603270, 0.207148,
		-0.536491, 0.788331, 0.301185,
		38.306900, 32.903782, 49.667400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076172, 32.329826, 49.102772>,  <38.682442, 32.351952, 49.456570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076172, 32.329826, 49.102772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119335, 32.709362, 49.221474>,  <38.145233, 32.937084, 49.292694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.119335, 32.709362, 49.221474>,  <38.076172, 32.329826, 49.102772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119335, 32.709362, 49.221474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227508, 0.314141, -0.921713,
		-0.967779, 0.031944, 0.249766,
		0.107905, 0.948839, 0.296752,
		38.151707, 32.994015, 49.310501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405624, 32.728710, 49.086418>,  <38.076172, 32.329826, 49.102772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405624, 32.728710, 49.086418> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751083, 32.921574, 49.027596>,  <37.958359, 33.037292, 48.992302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.751083, 32.921574, 49.027596>,  <37.405624, 32.728710, 49.086418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.751083, 32.921574, 49.027596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224835, 0.107348, -0.968466,
		-0.451170, 0.869481, 0.201118,
		0.863652, 0.482161, -0.147058,
		38.010178, 33.066223, 48.983479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.666576, 33.119457, 49.259567>,  <37.405624, 32.728710, 49.086418>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.666576, 33.119457, 49.259567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294575, 32.992027, 49.186241>,  <36.071373, 32.915569, 49.142246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.294575, 32.992027, 49.186241>,  <36.666576, 33.119457, 49.259567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.294575, 32.992027, 49.186241> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182305, -0.033259, 0.982679,
		-0.319150, 0.947315, -0.027146,
		-0.930004, -0.318571, -0.183315,
		36.015572, 32.896458, 49.131245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202568, 33.527737, 49.632370>,  <36.666576, 33.119457, 49.259567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202568, 33.527737, 49.632370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029190, 33.174534, 49.560333>,  <35.925163, 32.962612, 49.517109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.029190, 33.174534, 49.560333>,  <36.202568, 33.527737, 49.632370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029190, 33.174534, 49.560333> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214764, -0.092876, 0.972240,
		-0.875217, 0.460087, -0.149382,
		-0.433441, -0.883003, -0.180097,
		35.899158, 32.909634, 49.506306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749191, 33.508183, 50.127419>,  <36.202568, 33.527737, 49.632370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749191, 33.508183, 50.127419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742371, 33.123875, 50.016685>,  <35.738277, 32.893291, 49.950245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742371, 33.123875, 50.016685>,  <35.749191, 33.508183, 50.127419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742371, 33.123875, 50.016685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241626, -0.264711, 0.933566,
		-0.970220, 0.082810, -0.227632,
		-0.017052, -0.960766, -0.276837,
		35.737255, 32.835644, 49.933636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.098389, 33.129761, 50.480824>,  <35.749191, 33.508183, 50.127419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.098389, 33.129761, 50.480824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373829, 32.853058, 50.393833>,  <35.539093, 32.687035, 50.341640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.373829, 32.853058, 50.393833>,  <35.098389, 33.129761, 50.480824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.373829, 32.853058, 50.393833> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047119, -0.341958, 0.938533,
		-0.723609, -0.636027, -0.268068,
		0.688600, -0.691762, -0.217475,
		35.580410, 32.645531, 50.328590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.704620, 32.423183, 50.680450>,  <35.098389, 33.129761, 50.480824>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.704620, 32.423183, 50.680450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099308, 32.368156, 50.645885>,  <35.336121, 32.335140, 50.625145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099308, 32.368156, 50.645885>,  <34.704620, 32.423183, 50.680450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099308, 32.368156, 50.645885> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030613, -0.364960, 0.930520,
		-0.159546, -0.920804, -0.355900,
		0.986715, -0.137566, -0.086417,
		35.395321, 32.326885, 50.619961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743198, 31.618906, 50.870754>,  <34.704620, 32.423183, 50.680450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743198, 31.618906, 50.870754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110321, 31.772461, 50.911255>,  <35.330597, 31.864594, 50.935555>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.110321, 31.772461, 50.911255>,  <34.743198, 31.618906, 50.870754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110321, 31.772461, 50.911255> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076970, -0.422251, 0.903205,
		0.389486, -0.821177, -0.417094,
		0.917810, 0.383889, 0.101255,
		35.385666, 31.887629, 50.941631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.134377, 31.070707, 51.133598>,  <34.743198, 31.618906, 50.870754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.134377, 31.070707, 51.133598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342644, 31.402328, 51.215160>,  <35.467606, 31.601301, 51.264099>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.342644, 31.402328, 51.215160>,  <35.134377, 31.070707, 51.133598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342644, 31.402328, 51.215160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043776, -0.264443, 0.963407,
		0.852635, -0.492691, -0.173981,
		0.520670, 0.829051, 0.203905,
		35.498844, 31.651043, 51.276333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395870, 30.386127, 50.827168>,  <35.134377, 31.070707, 51.133598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395870, 30.386127, 50.827168> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197643, 30.041088, 50.786503>,  <35.078705, 29.834064, 50.762104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197643, 30.041088, 50.786503>,  <35.395870, 30.386127, 50.827168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197643, 30.041088, 50.786503> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164321, 0.208043, -0.964218,
		0.852883, -0.461132, -0.244843,
		-0.495569, -0.862598, -0.101662,
		35.048973, 29.782309, 50.756004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388977, 30.286741, 50.132679>,  <35.395870, 30.386127, 50.827168>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388977, 30.286741, 50.132679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148361, 29.979872, 50.221756>,  <35.003994, 29.795750, 50.275204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.148361, 29.979872, 50.221756>,  <35.388977, 30.286741, 50.132679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148361, 29.979872, 50.221756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238206, -0.093830, -0.966672,
		0.762503, -0.634536, -0.126304,
		-0.601537, -0.767177, 0.222696,
		34.967899, 29.749720, 50.288567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.619240, 29.722878, 49.619682>,  <35.388977, 30.286741, 50.132679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.619240, 29.722878, 49.619682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233753, 29.670933, 49.712967>,  <35.002460, 29.639767, 49.768940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.233753, 29.670933, 49.712967>,  <35.619240, 29.722878, 49.619682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233753, 29.670933, 49.712967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246889, 0.101483, -0.963715,
		0.101483, -0.986325, -0.129862,
		0.963715, 0.129862, -0.233214,
		34.944637, 29.631975, 49.782932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296963, 29.248537, 49.068241>,  <35.619240, 29.722878, 49.619682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296963, 29.248537, 49.068241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994785, 29.449369, 49.236629>,  <34.813477, 29.569870, 49.337662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.994785, 29.449369, 49.236629>,  <35.296963, 29.248537, 49.068241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.994785, 29.449369, 49.236629> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354755, 0.226733, -0.907051,
		-0.550861, -0.834569, 0.006831,
		-0.755448, 0.502082, 0.420966,
		34.768150, 29.599995, 49.362919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693954, 28.965368, 48.682426>,  <35.296963, 29.248537, 49.068241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693954, 28.965368, 48.682426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638805, 29.319818, 48.859409>,  <34.605717, 29.532490, 48.965599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.638805, 29.319818, 48.859409>,  <34.693954, 28.965368, 48.682426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.638805, 29.319818, 48.859409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437820, 0.346184, -0.829741,
		-0.888428, -0.308118, 0.340234,
		-0.137875, 0.886126, 0.442460,
		34.597443, 29.585657, 48.992146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.958389, 29.236921, 48.543983>,  <34.693954, 28.965368, 48.682426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.958389, 29.236921, 48.543983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170490, 29.564526, 48.631668>,  <34.297752, 29.761087, 48.684280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.170490, 29.564526, 48.631668>,  <33.958389, 29.236921, 48.543983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.170490, 29.564526, 48.631668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387939, 0.464277, -0.796210,
		-0.753879, 0.337152, 0.563910,
		0.530254, 0.819008, 0.219214,
		34.329567, 29.810228, 48.697433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.459026, 29.826084, 48.565094>,  <33.958389, 29.236921, 48.543983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.459026, 29.826084, 48.565094> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824203, 29.986431, 48.534515>,  <34.043308, 30.082640, 48.516167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.824203, 29.986431, 48.534515>,  <33.459026, 29.826084, 48.565094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.824203, 29.986431, 48.534515> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295255, 0.519498, -0.801840,
		-0.281717, 0.754604, 0.592629,
		0.912940, 0.400869, -0.076450,
		34.098087, 30.106691, 48.511581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<38.170750, 27.932154, 51.963806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297062, 28.311523, 51.974922>,  <38.372849, 28.539145, 51.981590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.297062, 28.311523, 51.974922>,  <38.170750, 27.932154, 51.963806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297062, 28.311523, 51.974922> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143599, -0.018822, -0.989457,
		-0.937902, 0.316444, -0.142136,
		0.315783, 0.948424, 0.027788,
		38.391796, 28.596050, 51.983257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811871, 28.261683, 51.491528>,  <38.170750, 27.932154, 51.963806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811871, 28.261683, 51.491528> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150452, 28.466877, 51.548603>,  <38.353600, 28.589994, 51.582848>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.150452, 28.466877, 51.548603>,  <37.811871, 28.261683, 51.491528>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150452, 28.466877, 51.548603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191828, -0.043810, -0.980450,
		-0.496706, 0.857278, -0.135488,
		0.846455, 0.512986, 0.142689,
		38.404388, 28.620773, 51.591412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.759552, 28.898348, 51.074322>,  <37.811871, 28.261683, 51.491528>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.759552, 28.898348, 51.074322> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143791, 28.807425, 51.138306>,  <38.374336, 28.752871, 51.176697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.143791, 28.807425, 51.138306>,  <37.759552, 28.898348, 51.074322>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143791, 28.807425, 51.138306> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139149, -0.104896, -0.984700,
		0.240607, 0.968157, -0.069133,
		0.960597, -0.227306, 0.159957,
		38.431969, 28.739233, 51.186295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074913, 29.173046, 50.575573>,  <37.759552, 28.898348, 51.074322>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074913, 29.173046, 50.575573> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.386055, 28.938721, 50.666584>,  <38.572739, 28.798126, 50.721191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.386055, 28.938721, 50.666584>,  <38.074913, 29.173046, 50.575573>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386055, 28.938721, 50.666584> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310554, 0.043561, -0.949557,
		0.546353, 0.809274, 0.215811,
		0.777853, -0.585814, 0.227524,
		38.619411, 28.762976, 50.734840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730740, 29.461267, 50.272606>,  <38.074913, 29.173046, 50.575573>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730740, 29.461267, 50.272606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.791298, 29.069613, 50.326820>,  <38.827633, 28.834620, 50.359348>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.791298, 29.069613, 50.326820>,  <38.730740, 29.461267, 50.272606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.791298, 29.069613, 50.326820> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186186, -0.106419, -0.976734,
		0.970780, 0.173110, 0.166190,
		0.151396, -0.979136, 0.135540,
		38.836716, 28.775871, 50.367481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194714, 29.367569, 49.756531>,  <38.730740, 29.461267, 50.272606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194714, 29.367569, 49.756531> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063530, 29.000690, 49.847038>,  <38.984821, 28.780563, 49.901340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.063530, 29.000690, 49.847038>,  <39.194714, 29.367569, 49.756531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.063530, 29.000690, 49.847038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008178, -0.236746, -0.971537,
		0.944658, -0.320472, 0.070141,
		-0.327956, -0.917196, 0.226265,
		38.965141, 28.725533, 49.914917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658840, 29.009426, 49.375237>,  <39.194714, 29.367569, 49.756531>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658840, 29.009426, 49.375237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.356342, 28.771749, 49.484798>,  <39.174843, 28.629143, 49.550533>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.356342, 28.771749, 49.484798>,  <39.658840, 29.009426, 49.375237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.356342, 28.771749, 49.484798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052864, -0.361770, -0.930768,
		0.652145, -0.718372, 0.242177,
		-0.756249, -0.594193, 0.273902,
		39.129467, 28.593493, 49.566971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871788, 28.410677, 49.148285>,  <39.658840, 29.009426, 49.375237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871788, 28.410677, 49.148285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.475010, 28.410284, 49.198936>,  <39.236942, 28.410049, 49.229328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.475010, 28.410284, 49.198936>,  <39.871788, 28.410677, 49.148285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475010, 28.410284, 49.198936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116810, -0.379089, -0.917958,
		0.048904, -0.925360, 0.375922,
		-0.991950, -0.000981, 0.126630,
		39.177425, 28.409990, 49.236927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600018, 27.634546, 48.959152>,  <39.871788, 28.410677, 49.148285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600018, 27.634546, 48.959152> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.319221, 27.919100, 48.945644>,  <39.150745, 28.089832, 48.937538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.319221, 27.919100, 48.945644>,  <39.600018, 27.634546, 48.959152>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.319221, 27.919100, 48.945644> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201671, -0.244042, -0.948563,
		-0.683035, -0.659072, 0.314781,
		-0.701991, 0.711384, -0.033773,
		39.108624, 28.132515, 48.935513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197292, 27.338127, 48.523300>,  <39.600018, 27.634546, 48.959152>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197292, 27.338127, 48.523300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.062080, 27.714573, 48.526024>,  <38.980953, 27.940439, 48.527657>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.062080, 27.714573, 48.526024>,  <39.197292, 27.338127, 48.523300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.062080, 27.714573, 48.526024> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363907, -0.124027, -0.923141,
		-0.867935, -0.314524, 0.384402,
		-0.338026, 0.941112, 0.006810,
		38.960674, 27.996906, 48.528069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.599003, 27.407330, 48.205452>,  <39.197292, 27.338127, 48.523300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.599003, 27.407330, 48.205452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716393, 27.787453, 48.163910>,  <38.786827, 28.015526, 48.138985>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.716393, 27.787453, 48.163910>,  <38.599003, 27.407330, 48.205452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716393, 27.787453, 48.163910> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209621, -0.042028, -0.976879,
		-0.932700, 0.308463, 0.186871,
		0.293478, 0.950307, -0.103860,
		38.804436, 28.072544, 48.132751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109432, 27.708979, 47.735252>,  <38.599003, 27.407330, 48.205452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109432, 27.708979, 47.735252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.440086, 27.932026, 47.704983>,  <38.638481, 28.065855, 47.686821>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.440086, 27.932026, 47.704983>,  <38.109432, 27.708979, 47.735252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440086, 27.932026, 47.704983> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056103, -0.052133, -0.997063,
		-0.559927, 0.828458, -0.011811,
		0.826640, 0.557620, -0.075670,
		38.688080, 28.099312, 47.682281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425880, 27.954029, 47.931820>,  <38.109432, 27.708979, 47.735252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425880, 27.954029, 47.931820> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040344, 27.849810, 47.954197>,  <36.809021, 27.787279, 47.967625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.040344, 27.849810, 47.954197>,  <37.425880, 27.954029, 47.931820>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040344, 27.849810, 47.954197> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177746, -0.472147, 0.863414,
		-0.198547, 0.842136, 0.501385,
		-0.963839, -0.260547, 0.055943,
		36.751194, 27.771645, 47.970982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147812, 28.257853, 48.550026>,  <37.425880, 27.954029, 47.931820>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147812, 28.257853, 48.550026> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.927635, 27.937990, 48.454052>,  <36.795528, 27.746073, 48.396469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.927635, 27.937990, 48.454052>,  <37.147812, 28.257853, 48.550026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.927635, 27.937990, 48.454052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148063, -0.376331, 0.914578,
		-0.821641, 0.467894, 0.325547,
		-0.550439, -0.799656, -0.239931,
		36.762505, 27.698093, 48.382072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.611656, 28.196169, 49.041050>,  <37.147812, 28.257853, 48.550026>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.611656, 28.196169, 49.041050> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.678089, 27.839014, 48.873638>,  <36.717949, 27.624722, 48.773190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.678089, 27.839014, 48.873638>,  <36.611656, 28.196169, 49.041050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678089, 27.839014, 48.873638> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094225, -0.436851, 0.894585,
		-0.981600, -0.109136, -0.156684,
		0.166079, -0.892889, -0.418530,
		36.727913, 27.571148, 48.748077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094177, 27.835735, 49.335995>,  <36.611656, 28.196169, 49.041050>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094177, 27.835735, 49.335995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.344784, 27.551472, 49.207970>,  <36.495148, 27.380913, 49.131153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.344784, 27.551472, 49.207970>,  <36.094177, 27.835735, 49.335995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.344784, 27.551472, 49.207970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123469, -0.495960, 0.859523,
		-0.769567, -0.498986, -0.398471,
		0.626515, -0.710660, -0.320065,
		36.532738, 27.338274, 49.111950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727345, 27.175247, 49.414612>,  <36.094177, 27.835735, 49.335995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727345, 27.175247, 49.414612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121166, 27.105215, 49.414566>,  <36.357460, 27.063196, 49.414539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121166, 27.105215, 49.414566>,  <35.727345, 27.175247, 49.414612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121166, 27.105215, 49.414566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080840, -0.455174, 0.886725,
		-0.155300, -0.873020, -0.462297,
		0.984554, -0.175080, -0.000114,
		36.416531, 27.052691, 49.414532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707348, 26.514814, 49.670219>,  <35.727345, 27.175247, 49.414612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707348, 26.514814, 49.670219> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086651, 26.638887, 49.697330>,  <36.314232, 26.713331, 49.713596>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.086651, 26.638887, 49.697330>,  <35.707348, 26.514814, 49.670219>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.086651, 26.638887, 49.697330> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028834, -0.296719, 0.954530,
		0.316191, -0.903185, -0.290310,
		0.948257, 0.310184, 0.067777,
		36.371128, 26.731943, 49.717663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077415, 25.984579, 50.049305>,  <35.707348, 26.514814, 49.670219>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077415, 25.984579, 50.049305> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352947, 26.271162, 50.093483>,  <36.518269, 26.443111, 50.119991>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.352947, 26.271162, 50.093483>,  <36.077415, 25.984579, 50.049305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.352947, 26.271162, 50.093483> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135199, -0.276657, 0.951411,
		0.712200, -0.640431, -0.287435,
		0.688834, 0.716456, 0.110449,
		36.559597, 26.486099, 50.126617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.641300, 25.637264, 50.426762>,  <36.077415, 25.984579, 50.049305>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.641300, 25.637264, 50.426762> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.664612, 26.035866, 50.450714>,  <36.678600, 26.275026, 50.465084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.664612, 26.035866, 50.450714>,  <36.641300, 25.637264, 50.426762>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.664612, 26.035866, 50.450714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328970, -0.075803, 0.941293,
		0.942540, -0.035160, -0.332237,
		0.058280, 0.996503, 0.059881,
		36.682095, 26.334816, 50.468678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.197666, 25.660408, 50.784012>,  <36.641300, 25.637264, 50.426762>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.197666, 25.660408, 50.784012> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051067, 26.027155, 50.847301>,  <36.963108, 26.247204, 50.885273>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.051067, 26.027155, 50.847301>,  <37.197666, 25.660408, 50.784012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.051067, 26.027155, 50.847301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236799, -0.072536, 0.968847,
		0.899782, 0.392545, -0.190530,
		-0.366496, 0.916868, 0.158220,
		36.941120, 26.302216, 50.894768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.673927, 26.079035, 51.215984>,  <37.197666, 25.660408, 50.784012>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.673927, 26.079035, 51.215984> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.309162, 26.232254, 51.274883>,  <37.090302, 26.324186, 51.310223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.309162, 26.232254, 51.274883>,  <37.673927, 26.079035, 51.215984>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309162, 26.232254, 51.274883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198982, 0.098928, 0.974997,
		0.358905, 0.918415, -0.166434,
		-0.911917, 0.383049, 0.147243,
		37.035587, 26.347168, 51.319057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.872356, 26.494923, 51.725445>,  <37.673927, 26.079035, 51.215984>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.872356, 26.494923, 51.725445> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473110, 26.477648, 51.742844>,  <37.233562, 26.467283, 51.753284>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.473110, 26.477648, 51.742844>,  <37.872356, 26.494923, 51.725445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.473110, 26.477648, 51.742844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034808, 0.184747, 0.982169,
		-0.050455, 0.981837, -0.182897,
		-0.998120, -0.043189, 0.043497,
		37.173676, 26.464691, 51.755894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730656, 27.005184, 52.177246>,  <37.872356, 26.494923, 51.725445>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730656, 27.005184, 52.177246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.424088, 26.748247, 52.177349>,  <37.240147, 26.594086, 52.177410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.424088, 26.748247, 52.177349>,  <37.730656, 27.005184, 52.177246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.424088, 26.748247, 52.177349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038526, 0.046369, 0.998181,
		-0.641187, 0.765013, -0.060285,
		-0.766417, -0.642343, 0.000258,
		37.194164, 26.555544, 52.177425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.183632, 27.375652, 52.686199>,  <37.730656, 27.005184, 52.177246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.183632, 27.375652, 52.686199> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103580, 26.985489, 52.649273>,  <37.055550, 26.751390, 52.627117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.103580, 26.985489, 52.649273>,  <37.183632, 27.375652, 52.686199>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.103580, 26.985489, 52.649273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124418, -0.068160, 0.989886,
		-0.971838, 0.209591, -0.107718,
		-0.200129, -0.975411, -0.092318,
		37.043541, 26.692865, 52.621578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843140, 27.877586, 53.064484>,  <37.183632, 27.375652, 52.686199>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843140, 27.877586, 53.064484> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092793, 28.102043, 53.281952>,  <37.242584, 28.236717, 53.412434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.092793, 28.102043, 53.281952>,  <36.843140, 27.877586, 53.064484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.092793, 28.102043, 53.281952> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776177, 0.365611, 0.513690,
		0.089483, -0.742594, 0.663737,
		0.624133, 0.561144, 0.543669,
		37.280033, 28.270386, 53.445053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521488, 28.079233, 52.436798>,  <36.843140, 27.877586, 53.064484>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521488, 28.079233, 52.436798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293491, 28.285366, 52.692780>,  <36.156693, 28.409046, 52.846367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.293491, 28.285366, 52.692780>,  <36.521488, 28.079233, 52.436798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293491, 28.285366, 52.692780> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678575, 0.143924, -0.720293,
		-0.463296, -0.844817, 0.267657,
		-0.569994, 0.515334, 0.639951,
		36.122494, 28.439966, 52.884766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874313, 27.847450, 52.374264>,  <36.521488, 28.079233, 52.436798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874313, 27.847450, 52.374264> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.886635, 28.227568, 52.498196>,  <35.894028, 28.455639, 52.572556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.886635, 28.227568, 52.498196>,  <35.874313, 27.847450, 52.374264>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.886635, 28.227568, 52.498196> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705709, 0.240189, -0.666546,
		-0.707832, -0.198119, 0.678029,
		0.030800, 0.950294, 0.309828,
		35.895874, 28.512655, 52.591145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.164940, 28.049028, 52.258659>,  <35.874313, 27.847450, 52.374264>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.164940, 28.049028, 52.258659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355907, 28.396591, 52.310928>,  <35.470486, 28.605129, 52.342289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.355907, 28.396591, 52.310928>,  <35.164940, 28.049028, 52.258659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355907, 28.396591, 52.310928> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608641, 0.434276, -0.664049,
		-0.633744, 0.237496, 0.736182,
		0.477415, 0.868908, 0.130670,
		35.499130, 28.657263, 52.350128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644547, 28.534927, 52.111546>,  <35.164940, 28.049028, 52.258659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644547, 28.534927, 52.111546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979687, 28.753199, 52.105354>,  <35.180771, 28.884161, 52.101639>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.979687, 28.753199, 52.105354>,  <34.644547, 28.534927, 52.111546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.979687, 28.753199, 52.105354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425854, 0.635605, -0.643937,
		-0.341544, 0.546116, 0.764922,
		0.837852, 0.545678, -0.015478,
		35.231041, 28.916903, 52.100712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454842, 29.289125, 52.237572>,  <34.644547, 28.534927, 52.111546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454842, 29.289125, 52.237572> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791348, 29.234066, 52.028450>,  <34.993252, 29.201031, 51.902977>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.791348, 29.234066, 52.028450>,  <34.454842, 29.289125, 52.237572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791348, 29.234066, 52.028450> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408861, 0.470693, -0.781844,
		0.353700, 0.871494, 0.339699,
		0.841266, -0.137648, -0.522804,
		35.043728, 29.192772, 51.871609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569420, 29.895428, 51.905781>,  <34.454842, 29.289125, 52.237572>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569420, 29.895428, 51.905781> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.781754, 29.621349, 51.706291>,  <34.909153, 29.456902, 51.586597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.781754, 29.621349, 51.706291>,  <34.569420, 29.895428, 51.905781>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781754, 29.621349, 51.706291> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254135, 0.432695, -0.864980,
		0.808477, 0.585900, 0.055555,
		0.530830, -0.685198, -0.498722,
		34.941002, 29.415791, 51.556675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092072, 30.286665, 51.495804>,  <34.569420, 29.895428, 51.905781>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092072, 30.286665, 51.495804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052250, 29.927969, 51.323318>,  <35.028358, 29.712751, 51.219830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.052250, 29.927969, 51.323318>,  <35.092072, 30.286665, 51.495804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052250, 29.927969, 51.323318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156908, 0.442090, -0.883140,
		0.982583, -0.020257, -0.184717,
		-0.099552, -0.896742, -0.431212,
		35.022385, 29.658947, 51.193954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677135, 30.857037, 51.539703>,  <35.092072, 30.286665, 51.495804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677135, 30.857037, 51.539703> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639191, 31.247643, 51.617081>,  <35.616425, 31.482006, 51.663509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.639191, 31.247643, 51.617081>,  <35.677135, 30.857037, 51.539703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639191, 31.247643, 51.617081> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244843, -0.165466, 0.955339,
		0.964911, 0.137994, -0.223395,
		-0.094867, 0.976514, 0.193447,
		35.610729, 31.540596, 51.675114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.423347, 31.202911, 51.744629>,  <35.677135, 30.857037, 51.539703>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.423347, 31.202911, 51.744629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121975, 31.421217, 51.891315>,  <35.941151, 31.552200, 51.979328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.121975, 31.421217, 51.891315>,  <36.423347, 31.202911, 51.744629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.121975, 31.421217, 51.891315> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336063, -0.159741, 0.928194,
		0.565152, 0.822573, -0.063056,
		-0.753435, 0.545762, 0.366714,
		35.895943, 31.584946, 52.001331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730499, 31.538603, 52.223591>,  <36.423347, 31.202911, 51.744629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730499, 31.538603, 52.223591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343109, 31.568310, 52.318710>,  <36.110676, 31.586134, 52.375782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.343109, 31.568310, 52.318710>,  <36.730499, 31.538603, 52.223591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.343109, 31.568310, 52.318710> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229504, -0.105302, 0.967595,
		0.096901, 0.991663, 0.084937,
		-0.968472, 0.074267, 0.237794,
		36.052567, 31.590590, 52.390049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663029, 32.145271, 52.770863>,  <36.730499, 31.538603, 52.223591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663029, 32.145271, 52.770863> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349705, 31.896704, 52.777237>,  <36.161709, 31.747562, 52.781059>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.349705, 31.896704, 52.777237>,  <36.663029, 32.145271, 52.770863>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.349705, 31.896704, 52.777237> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183916, -0.207191, 0.960857,
		-0.593797, 0.755583, 0.276585,
		-0.783314, -0.621422, 0.015934,
		36.114712, 31.710278, 52.782017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.302998, 32.283585, 53.481720>,  <36.663029, 32.145271, 52.770863>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.302998, 32.283585, 53.481720> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.148537, 31.933266, 53.365879>,  <36.055859, 31.723076, 53.296375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.148537, 31.933266, 53.365879>,  <36.302998, 32.283585, 53.481720>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.148537, 31.933266, 53.365879> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258314, -0.404066, 0.877499,
		-0.885528, 0.264040, 0.382261,
		-0.386153, -0.875793, -0.289607,
		36.032692, 31.670528, 53.278996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152706, 31.972109, 54.120983>,  <36.302998, 32.283585, 53.481720>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152706, 31.972109, 54.120983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.127377, 31.654039, 53.879757>,  <36.112179, 31.463198, 53.735020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.127377, 31.654039, 53.879757>,  <36.152706, 31.972109, 54.120983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127377, 31.654039, 53.879757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397569, -0.574361, 0.715575,
		-0.915384, -0.194448, 0.352507,
		-0.063324, -0.795172, -0.603068,
		36.108379, 31.415487, 53.698837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.898285, 31.335958, 54.521088>,  <36.152706, 31.972109, 54.120983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.898285, 31.335958, 54.521088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112595, 31.209217, 54.208027>,  <36.241180, 31.133171, 54.020191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.112595, 31.209217, 54.208027>,  <35.898285, 31.335958, 54.521088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.112595, 31.209217, 54.208027> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404169, -0.717591, 0.567196,
		-0.741345, -0.620214, -0.256404,
		0.535776, -0.316857, -0.782653,
		36.273327, 31.114161, 53.973232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816395, 30.609932, 54.629566>,  <35.898285, 31.335958, 54.521088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.816395, 30.609932, 54.629566> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.114975, 30.687344, 54.374897>,  <36.294125, 30.733791, 54.222095>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.114975, 30.687344, 54.374897>,  <35.816395, 30.609932, 54.629566>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114975, 30.687344, 54.374897> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574631, -0.669952, 0.470068,
		-0.335567, -0.716736, -0.611297,
		0.746454, 0.193531, -0.636673,
		36.338913, 30.745403, 54.183895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072231, 29.942791, 54.460674>,  <35.816395, 30.609932, 54.629566>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072231, 29.942791, 54.460674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.361347, 30.217781, 54.432514>,  <36.534817, 30.382774, 54.415619>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.361347, 30.217781, 54.432514>,  <36.072231, 29.942791, 54.460674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361347, 30.217781, 54.432514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585318, -0.554841, 0.591231,
		0.367395, -0.468541, -0.803424,
		0.722789, 0.687474, -0.070400,
		36.578182, 30.424023, 54.411396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.432919, 33.874138, 39.304768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640118, 33.836147, 38.964729>,  <35.764439, 33.813354, 38.760708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.640118, 33.836147, 38.964729>,  <35.432919, 33.874138, 39.304768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.640118, 33.836147, 38.964729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851639, 0.035595, -0.522920,
		0.079922, 0.994844, -0.062444,
		0.518000, -0.094972, -0.850092,
		35.795517, 33.807655, 38.709702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118454, 33.950939, 39.265594>,  <35.432919, 33.874138, 39.304768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118454, 33.950939, 39.265594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351387, 34.266075, 39.345787>,  <36.491146, 34.455158, 39.393902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.351387, 34.266075, 39.345787>,  <36.118454, 33.950939, 39.265594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.351387, 34.266075, 39.345787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061236, -0.203397, 0.977180,
		0.810638, -0.581324, -0.070202,
		0.582337, 0.787840, 0.200480,
		36.526089, 34.502426, 39.405930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.729992, 33.754494, 39.694977>,  <36.118454, 33.950939, 39.265594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.729992, 33.754494, 39.694977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707863, 34.148773, 39.758644>,  <36.694588, 34.385342, 39.796844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.707863, 34.148773, 39.758644>,  <36.729992, 33.754494, 39.694977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.707863, 34.148773, 39.758644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038315, -0.157199, 0.986823,
		0.997733, 0.060689, -0.029071,
		-0.055319, 0.985700, 0.159168,
		36.691265, 34.444485, 39.806393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171852, 33.850819, 40.119591>,  <36.729992, 33.754494, 39.694977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171852, 33.850819, 40.119591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923927, 34.161682, 40.163132>,  <36.775173, 34.348202, 40.189259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.923927, 34.161682, 40.163132>,  <37.171852, 33.850819, 40.119591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.923927, 34.161682, 40.163132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086930, -0.069865, 0.993762,
		0.779919, 0.625410, -0.024256,
		-0.619814, 0.777162, 0.108856,
		36.737984, 34.394833, 40.195789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.252140, 34.067345, 40.791744>,  <37.171852, 33.850819, 40.119591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.252140, 34.067345, 40.791744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902954, 34.251556, 40.727444>,  <36.693443, 34.362083, 40.688866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.902954, 34.251556, 40.727444>,  <37.252140, 34.067345, 40.791744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.902954, 34.251556, 40.727444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186913, -0.011434, 0.982310,
		0.450543, 0.887572, 0.096060,
		-0.872969, 0.460528, -0.160747,
		36.641064, 34.389713, 40.679218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.231876, 34.667313, 41.205101>,  <37.252140, 34.067345, 40.791744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.231876, 34.667313, 41.205101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857796, 34.543171, 41.136890>,  <36.633347, 34.468685, 41.095963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.857796, 34.543171, 41.136890>,  <37.231876, 34.667313, 41.205101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.857796, 34.543171, 41.136890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132375, -0.140247, 0.981228,
		-0.328443, 0.940219, 0.090076,
		-0.935201, -0.310354, -0.170525,
		36.577236, 34.450066, 41.085732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.800560, 34.979115, 41.578663>,  <37.231876, 34.667313, 41.205101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.800560, 34.979115, 41.578663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560287, 34.665607, 41.515549>,  <36.416122, 34.477505, 41.477680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.560287, 34.665607, 41.515549>,  <36.800560, 34.979115, 41.578663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.560287, 34.665607, 41.515549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348904, 0.079416, 0.933787,
		-0.719338, 0.615961, -0.321162,
		-0.600682, -0.783763, -0.157784,
		36.380081, 34.430477, 41.468212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.102634, 35.005341, 41.871372>,  <36.800560, 34.979115, 41.578663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.102634, 35.005341, 41.871372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098690, 34.608349, 41.822563>,  <36.096325, 34.370155, 41.793278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.098690, 34.608349, 41.822563>,  <36.102634, 35.005341, 41.871372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098690, 34.608349, 41.822563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537169, -0.097672, 0.837801,
		-0.843417, 0.073811, -0.532165,
		-0.009861, -0.992478, -0.122027,
		36.095734, 34.310604, 41.785954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.534016, 34.866085, 42.162430>,  <36.102634, 35.005341, 41.871372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.534016, 34.866085, 42.162430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686436, 34.498543, 42.121426>,  <35.777889, 34.278019, 42.096825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686436, 34.498543, 42.121426>,  <35.534016, 34.866085, 42.162430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686436, 34.498543, 42.121426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486552, -0.293571, 0.822851,
		-0.786173, -0.263673, -0.558935,
		0.381050, -0.918854, -0.102507,
		35.800751, 34.222885, 42.090675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927151, 34.404736, 42.166512>,  <35.534016, 34.866085, 42.162430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927151, 34.404736, 42.166512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258991, 34.207489, 42.271282>,  <35.458096, 34.089142, 42.334145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.258991, 34.207489, 42.271282>,  <34.927151, 34.404736, 42.166512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258991, 34.207489, 42.271282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413883, -0.228206, 0.881262,
		-0.374788, -0.839501, -0.393411,
		0.829599, -0.493113, 0.261926,
		35.507870, 34.059555, 42.349861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676113, 33.679359, 42.307568>,  <34.927151, 34.404736, 42.166512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676113, 33.679359, 42.307568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020119, 33.766739, 42.492027>,  <35.226521, 33.819168, 42.602703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.020119, 33.766739, 42.492027>,  <34.676113, 33.679359, 42.307568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020119, 33.766739, 42.492027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396735, -0.282101, 0.873510,
		0.320909, -0.934184, -0.155944,
		0.860011, 0.218449, 0.461152,
		35.278122, 33.832272, 42.630371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.676952, 33.185444, 42.777164>,  <34.676113, 33.679359, 42.307568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.676952, 33.185444, 42.777164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980061, 33.407146, 42.914913>,  <35.161926, 33.540169, 42.997562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980061, 33.407146, 42.914913>,  <34.676952, 33.185444, 42.777164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980061, 33.407146, 42.914913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251718, -0.238606, 0.937926,
		0.602017, -0.797415, -0.041293,
		0.757769, 0.554254, 0.344368,
		35.207390, 33.573421, 43.018223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621433, 32.413029, 42.548130>,  <34.676952, 33.185444, 42.777164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621433, 32.413029, 42.548130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261253, 32.274471, 42.653362>,  <34.045147, 32.191338, 42.716503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.261253, 32.274471, 42.653362>,  <34.621433, 32.413029, 42.548130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.261253, 32.274471, 42.653362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344225, 0.197736, -0.917829,
		0.265909, -0.917013, -0.297287,
		-0.900445, -0.346392, 0.263080,
		33.991119, 32.170555, 42.732285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364090, 32.159359, 41.915554>,  <34.621433, 32.413029, 42.548130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364090, 32.159359, 41.915554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029999, 32.182175, 42.134331>,  <33.829544, 32.195862, 42.265598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.029999, 32.182175, 42.134331>,  <34.364090, 32.159359, 41.915554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029999, 32.182175, 42.134331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544798, 0.049478, -0.837106,
		-0.074809, -0.997145, -0.010250,
		-0.835223, 0.057039, 0.546944,
		33.779430, 32.199287, 42.298412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.800659, 31.747274, 41.603855>,  <34.364090, 32.159359, 41.915554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.800659, 31.747274, 41.603855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617725, 32.002342, 41.851799>,  <33.507965, 32.155384, 42.000565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.617725, 32.002342, 41.851799>,  <33.800659, 31.747274, 41.603855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.617725, 32.002342, 41.851799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824579, -0.043041, -0.564107,
		-0.333035, -0.769107, 0.545493,
		-0.457337, 0.637669, 0.619855,
		33.480522, 32.193642, 42.037754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099392, 31.460209, 41.740738>,  <33.800659, 31.747274, 41.603855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099392, 31.460209, 41.740738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085587, 31.851171, 41.824150>,  <33.077301, 32.085751, 41.874199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.085587, 31.851171, 41.824150>,  <33.099392, 31.460209, 41.740738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085587, 31.851171, 41.824150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823077, 0.090552, -0.560664,
		-0.566879, -0.190990, 0.801355,
		-0.034516, 0.977406, 0.208532,
		33.075233, 32.144394, 41.886711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406284, 31.607216, 41.863441>,  <33.099392, 31.460209, 41.740738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406284, 31.607216, 41.863441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563416, 31.966015, 41.782364>,  <32.657696, 32.181293, 41.733719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.563416, 31.966015, 41.782364>,  <32.406284, 31.607216, 41.863441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.563416, 31.966015, 41.782364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782876, 0.210551, -0.585469,
		-0.482485, 0.388673, 0.784946,
		0.392827, 0.896996, -0.202695,
		32.681263, 32.235115, 41.721554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.853394, 32.162048, 41.844646>,  <32.406284, 31.607216, 41.863441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.853394, 32.162048, 41.844646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141575, 32.348099, 41.638885>,  <32.314484, 32.459728, 41.515430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141575, 32.348099, 41.638885>,  <31.853394, 32.162048, 41.844646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141575, 32.348099, 41.638885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684416, 0.357181, -0.635607,
		-0.111900, 0.809990, 0.575669,
		0.720454, 0.465122, -0.514401,
		32.357712, 32.487637, 41.484566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558311, 32.815540, 41.667000>,  <31.853394, 32.162048, 41.844646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558311, 32.815540, 41.667000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856680, 32.774326, 41.403793>,  <32.035702, 32.749596, 41.245869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.856680, 32.774326, 41.403793>,  <31.558311, 32.815540, 41.667000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.856680, 32.774326, 41.403793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588686, 0.360115, -0.723716,
		0.311532, 0.927200, 0.207961,
		0.745920, -0.103037, -0.658017,
		32.080456, 32.743416, 41.206387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570023, 33.413799, 41.268326>,  <31.558311, 32.815540, 41.667000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570023, 33.413799, 41.268326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727711, 33.125340, 41.040455>,  <31.822325, 32.952263, 40.903732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.727711, 33.125340, 41.040455>,  <31.570023, 33.413799, 41.268326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.727711, 33.125340, 41.040455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514353, 0.340568, -0.787054,
		0.761597, 0.603290, -0.236666,
		0.394222, -0.721148, -0.569680,
		31.845978, 32.908997, 40.869553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659777, 33.713161, 40.692936>,  <31.570023, 33.413799, 41.268326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659777, 33.713161, 40.692936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745169, 33.341423, 40.572441>,  <31.796404, 33.118382, 40.500145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.745169, 33.341423, 40.572441>,  <31.659777, 33.713161, 40.692936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745169, 33.341423, 40.572441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392766, 0.200688, -0.897474,
		0.894518, 0.309909, -0.322172,
		0.213479, -0.929344, -0.301240,
		31.809212, 33.062618, 40.482067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.919409, 33.761402, 40.071041>,  <31.659777, 33.713161, 40.692936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.919409, 33.761402, 40.071041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791134, 33.382565, 40.076313>,  <31.714169, 33.155262, 40.079475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.791134, 33.382565, 40.076313>,  <31.919409, 33.761402, 40.071041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.791134, 33.382565, 40.076313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539221, 0.171106, -0.824599,
		0.778717, -0.271544, -0.565564,
		-0.320687, -0.947094, 0.013179,
		31.694927, 33.098438, 40.080265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137596, 33.430626, 39.421715>,  <31.919409, 33.761402, 40.071041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137596, 33.430626, 39.421715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817270, 33.240940, 39.568035>,  <31.625074, 33.127129, 39.655827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.817270, 33.240940, 39.568035>,  <32.137596, 33.430626, 39.421715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817270, 33.240940, 39.568035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515811, 0.235733, -0.823632,
		0.304353, -0.848260, -0.433387,
		-0.800818, -0.474220, 0.365796,
		31.577024, 33.098675, 39.677773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897779, 33.034012, 38.869930>,  <32.137596, 33.430626, 39.421715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897779, 33.034012, 38.869930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599379, 33.045792, 39.136047>,  <31.420338, 33.052860, 39.295719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.599379, 33.045792, 39.136047>,  <31.897779, 33.034012, 38.869930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.599379, 33.045792, 39.136047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638296, 0.253261, -0.726936,
		-0.189899, -0.966950, -0.170138,
		-0.746000, 0.029446, 0.665294,
		31.375578, 33.054626, 39.335636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081841, 32.583344, 39.393002>,  <31.897779, 33.034012, 38.869930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081841, 32.583344, 39.393002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462269, 32.460079, 39.384060>,  <32.690525, 32.386120, 39.378693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462269, 32.460079, 39.384060>,  <32.081841, 32.583344, 39.393002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462269, 32.460079, 39.384060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250439, -0.811260, 0.528334,
		-0.180948, -0.496885, -0.848742,
		0.951072, -0.308159, -0.022357,
		32.747589, 32.367630, 39.377354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186180, 31.924765, 39.048664>,  <32.081841, 32.583344, 39.393002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186180, 31.924765, 39.048664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483810, 31.965101, 39.312840>,  <32.662388, 31.989304, 39.471344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483810, 31.965101, 39.312840>,  <32.186180, 31.924765, 39.048664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483810, 31.965101, 39.312840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290081, -0.841736, 0.455339,
		0.601836, -0.530388, -0.597062,
		0.744074, 0.100843, 0.660442,
		32.707031, 31.995354, 39.510971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706097, 31.226181, 39.081158>,  <32.186180, 31.924765, 39.048664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706097, 31.226181, 39.081158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629345, 31.453186, 39.401436>,  <32.583294, 31.589388, 39.593601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.629345, 31.453186, 39.401436>,  <32.706097, 31.226181, 39.081158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.629345, 31.453186, 39.401436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307570, -0.809529, 0.500064,
		0.931978, -0.150317, 0.329882,
		-0.191881, 0.567511, 0.800695,
		32.571781, 31.623440, 39.641644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574898, 30.684898, 39.609615>,  <32.706097, 31.226181, 39.081158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574898, 30.684898, 39.609615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406044, 31.024817, 39.735886>,  <32.304733, 31.228767, 39.811649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.406044, 31.024817, 39.735886>,  <32.574898, 30.684898, 39.609615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.406044, 31.024817, 39.735886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613541, -0.524170, 0.590604,
		0.667361, 0.055633, 0.742654,
		-0.422134, 0.849794, 0.315677,
		32.279404, 31.279755, 39.830589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996407, 30.092884, 39.311913>,  <32.574898, 30.684898, 39.609615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996407, 30.092884, 39.311913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240978, 29.897614, 39.062805>,  <33.387722, 29.780451, 38.913342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.240978, 29.897614, 39.062805>,  <32.996407, 30.092884, 39.311913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.240978, 29.897614, 39.062805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552435, -0.300131, 0.777648,
		-0.566541, -0.819515, 0.086176,
		0.611431, -0.488176, -0.622765,
		33.424408, 29.751160, 38.875977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196796, 29.487289, 39.618286>,  <32.996407, 30.092884, 39.311913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196796, 29.487289, 39.618286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490330, 29.514977, 39.347969>,  <33.666451, 29.531590, 39.185780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490330, 29.514977, 39.347969>,  <33.196796, 29.487289, 39.618286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490330, 29.514977, 39.347969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662248, -0.294549, 0.688962,
		-0.151363, -0.953126, -0.261992,
		0.733837, 0.069220, -0.675790,
		33.710480, 29.535742, 39.145233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.600368, 28.805241, 39.423893>,  <33.196796, 29.487289, 39.618286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.600368, 28.805241, 39.423893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813046, 29.141897, 39.386070>,  <33.940651, 29.343891, 39.363377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.813046, 29.141897, 39.386070>,  <33.600368, 28.805241, 39.423893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813046, 29.141897, 39.386070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632120, -0.320051, 0.705685,
		0.563673, -0.434977, -0.702188,
		0.531693, 0.841642, -0.094554,
		33.972553, 29.394390, 39.357704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341248, 28.604063, 39.307198>,  <33.600368, 28.805241, 39.423893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341248, 28.604063, 39.307198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279079, 28.962212, 39.474125>,  <34.241779, 29.177101, 39.574280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.279079, 28.962212, 39.474125>,  <34.341248, 28.604063, 39.307198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.279079, 28.962212, 39.474125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630241, -0.235430, 0.739844,
		0.760684, 0.378000, -0.527708,
		-0.155423, 0.895371, 0.417319,
		34.232452, 29.230824, 39.599319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.031063, 28.739059, 39.616207>,  <34.341248, 28.604063, 39.307198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.031063, 28.739059, 39.616207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825069, 29.043299, 39.774338>,  <34.701473, 29.225842, 39.869217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.825069, 29.043299, 39.774338>,  <35.031063, 28.739059, 39.616207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825069, 29.043299, 39.774338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553520, -0.057076, 0.830878,
		0.654528, 0.646708, -0.391614,
		-0.514984, 0.760599, 0.395324,
		34.670574, 29.271479, 39.892937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517799, 29.137680, 39.961666>,  <35.031063, 28.739059, 39.616207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517799, 29.137680, 39.961666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175156, 29.236214, 40.143013>,  <34.969570, 29.295334, 40.251820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.175156, 29.236214, 40.143013>,  <35.517799, 29.137680, 39.961666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175156, 29.236214, 40.143013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422266, -0.170227, 0.890345,
		0.296499, 0.954118, 0.041799,
		-0.856609, 0.246336, 0.453364,
		34.918171, 29.310114, 40.279022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.802120, 29.630505, 40.511230>,  <35.517799, 29.137680, 39.961666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.802120, 29.630505, 40.511230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439392, 29.501301, 40.619556>,  <35.221756, 29.423779, 40.684551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.439392, 29.501301, 40.619556>,  <35.802120, 29.630505, 40.511230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.439392, 29.501301, 40.619556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242006, 0.127082, 0.961916,
		-0.345123, 0.937825, -0.037070,
		-0.906820, -0.323008, 0.270818,
		35.167347, 29.404398, 40.700802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667355, 29.957556, 41.108280>,  <35.802120, 29.630505, 40.511230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667355, 29.957556, 41.108280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366383, 29.694153, 41.114204>,  <35.185799, 29.536112, 41.117760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.366383, 29.694153, 41.114204>,  <35.667355, 29.957556, 41.108280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366383, 29.694153, 41.114204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048015, 0.077264, 0.995854,
		-0.656922, 0.748598, -0.089754,
		-0.752429, -0.658507, 0.014813,
		35.140656, 29.496601, 41.118649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.250084, 30.267941, 41.561768>,  <35.667355, 29.957556, 41.108280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.250084, 30.267941, 41.561768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133324, 29.886740, 41.529335>,  <35.063267, 29.658018, 41.509876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.133324, 29.886740, 41.529335>,  <35.250084, 30.267941, 41.561768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.133324, 29.886740, 41.529335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016825, -0.079649, 0.996681,
		-0.956300, 0.292300, 0.007216,
		-0.291904, -0.953004, -0.081086,
		35.045753, 29.600838, 41.505009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610779, 30.102291, 41.969833>,  <35.250084, 30.267941, 41.561768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610779, 30.102291, 41.969833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846523, 29.782238, 41.925213>,  <34.987968, 29.590206, 41.898441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.846523, 29.782238, 41.925213>,  <34.610779, 30.102291, 41.969833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846523, 29.782238, 41.925213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040275, -0.108809, 0.993247,
		-0.806866, -0.589872, -0.031902,
		0.589360, -0.800132, -0.111551,
		35.023331, 29.542198, 41.891747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435295, 29.607435, 42.563335>,  <34.610779, 30.102291, 41.969833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435295, 29.607435, 42.563335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778278, 29.472565, 42.407860>,  <34.984070, 29.391644, 42.314575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.778278, 29.472565, 42.407860>,  <34.435295, 29.607435, 42.563335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.778278, 29.472565, 42.407860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299415, -0.287388, 0.909812,
		-0.418473, -0.896504, -0.145467,
		0.857456, -0.337177, -0.388691,
		35.035515, 29.371412, 42.291252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.576706, 28.905115, 42.820087>,  <34.435295, 29.607435, 42.563335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.576706, 28.905115, 42.820087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939896, 29.034126, 42.713089>,  <35.157810, 29.111534, 42.648888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939896, 29.034126, 42.713089>,  <34.576706, 28.905115, 42.820087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939896, 29.034126, 42.713089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375127, -0.341220, 0.861887,
		0.186708, -0.882918, -0.430809,
		0.907975, 0.322529, -0.267498,
		35.212288, 29.130884, 42.632839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911861, 28.370653, 43.017021>,  <34.576706, 28.905115, 42.820087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911861, 28.370653, 43.017021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184216, 28.659302, 42.966972>,  <35.347630, 28.832491, 42.936943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.184216, 28.659302, 42.966972>,  <34.911861, 28.370653, 43.017021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.184216, 28.659302, 42.966972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434265, -0.260219, 0.862380,
		0.589752, -0.641521, -0.490555,
		0.680887, 0.721621, -0.125125,
		35.388481, 28.875788, 42.929436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518238, 28.107470, 43.265457>,  <34.911861, 28.370653, 43.017021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518238, 28.107470, 43.265457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554588, 28.505814, 43.264332>,  <35.576397, 28.744820, 43.263657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.554588, 28.505814, 43.264332>,  <35.518238, 28.107470, 43.265457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.554588, 28.505814, 43.264332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469233, -0.040330, 0.882153,
		0.878386, -0.081486, -0.470955,
		0.090877, 0.995858, -0.002811,
		35.581852, 28.804571, 43.263489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247681, 28.362995, 43.457783>,  <35.518238, 28.107470, 43.265457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247681, 28.362995, 43.457783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987278, 28.650051, 43.556721>,  <35.831036, 28.822285, 43.616085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.987278, 28.650051, 43.556721>,  <36.247681, 28.362995, 43.457783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.987278, 28.650051, 43.556721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308733, -0.047356, 0.949969,
		0.693448, 0.694803, -0.190730,
		-0.651009, 0.717639, 0.247348,
		35.791977, 28.865343, 43.630924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673710, 28.948933, 43.857601>,  <36.247681, 28.362995, 43.457783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673710, 28.948933, 43.857601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286884, 29.026154, 43.923950>,  <36.054787, 29.072487, 43.963760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.286884, 29.026154, 43.923950>,  <36.673710, 28.948933, 43.857601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286884, 29.026154, 43.923950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180702, 0.061803, 0.981594,
		0.179250, 0.979240, -0.094653,
		-0.967066, 0.193055, 0.165873,
		35.996765, 29.084070, 43.973713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743752, 29.327259, 44.467117>,  <36.673710, 28.948933, 43.857601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743752, 29.327259, 44.467117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365559, 29.196991, 44.467175>,  <36.138641, 29.118830, 44.467209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.365559, 29.196991, 44.467175>,  <36.743752, 29.327259, 44.467117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365559, 29.196991, 44.467175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046497, -0.134552, 0.989815,
		-0.322335, 0.935860, 0.142360,
		-0.945483, -0.325671, 0.000144,
		36.081913, 29.099289, 44.467216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.456448, 29.724216, 44.925480>,  <36.743752, 29.327259, 44.467117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.456448, 29.724216, 44.925480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195763, 29.422493, 44.893757>,  <36.039352, 29.241459, 44.874722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.195763, 29.422493, 44.893757>,  <36.456448, 29.724216, 44.925480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.195763, 29.422493, 44.893757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020219, -0.087250, 0.995981,
		-0.758197, 0.650696, 0.041611,
		-0.651712, -0.754309, -0.079309,
		36.000248, 29.196199, 44.869965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878292, 29.848412, 45.373222>,  <36.456448, 29.724216, 44.925480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878292, 29.848412, 45.373222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899822, 29.456802, 45.294621>,  <35.912739, 29.221836, 45.247459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.899822, 29.456802, 45.294621>,  <35.878292, 29.848412, 45.373222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.899822, 29.456802, 45.294621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276656, -0.203708, 0.939130,
		-0.959461, 0.003817, -0.281817,
		0.053824, -0.979024, -0.196506,
		35.915970, 29.163095, 45.235668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458744, 29.532749, 45.770237>,  <35.878292, 29.848412, 45.373222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458744, 29.532749, 45.770237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694473, 29.230028, 45.657139>,  <35.835911, 29.048395, 45.589279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.694473, 29.230028, 45.657139>,  <35.458744, 29.532749, 45.770237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.694473, 29.230028, 45.657139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049294, -0.383006, 0.922430,
		-0.806391, -0.529674, -0.263021,
		0.589325, -0.756804, -0.282743,
		35.871269, 29.002987, 45.572315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.026581, 28.963463, 45.924885>,  <35.458744, 29.532749, 45.770237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.026581, 28.963463, 45.924885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412563, 28.858656, 45.919048>,  <35.644154, 28.795773, 45.915546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.412563, 28.858656, 45.919048>,  <35.026581, 28.963463, 45.924885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.412563, 28.858656, 45.919048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127193, -0.515598, 0.847337,
		-0.229538, -0.815785, -0.530854,
		0.964953, -0.262017, -0.014587,
		35.702049, 28.780050, 45.914673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067341, 28.289228, 46.190014>,  <35.026581, 28.963463, 45.924885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067341, 28.289228, 46.190014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438759, 28.433308, 46.225937>,  <35.661610, 28.519756, 46.247490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.438759, 28.433308, 46.225937>,  <35.067341, 28.289228, 46.190014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.438759, 28.433308, 46.225937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187539, -0.663930, 0.723897,
		0.320371, -0.655327, -0.684038,
		0.928543, 0.360200, 0.089805,
		35.717323, 28.541367, 46.252880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512115, 27.739498, 46.375298>,  <35.067341, 28.289228, 46.190014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512115, 27.739498, 46.375298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755417, 28.046249, 46.457203>,  <35.901398, 28.230301, 46.506348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.755417, 28.046249, 46.457203>,  <35.512115, 27.739498, 46.375298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.755417, 28.046249, 46.457203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371619, -0.503088, 0.780258,
		0.701378, -0.398498, -0.590990,
		0.608251, 0.766878, 0.204765,
		35.937893, 28.276314, 46.518631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.205143, 27.482470, 46.435726>,  <35.512115, 27.739498, 46.375298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.205143, 27.482470, 46.435726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197952, 27.824743, 46.642601>,  <36.193638, 28.030107, 46.766724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.197952, 27.824743, 46.642601>,  <36.205143, 27.482470, 46.435726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.197952, 27.824743, 46.642601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403578, -0.467048, 0.786760,
		0.914769, 0.222866, -0.336940,
		-0.017975, 0.855685, 0.517184,
		36.192558, 28.081450, 46.797756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.768127, 27.398264, 46.803905>,  <36.205143, 27.482470, 46.435726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.768127, 27.398264, 46.803905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574699, 27.684420, 47.005650>,  <36.458641, 27.856113, 47.126694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574699, 27.684420, 47.005650>,  <36.768127, 27.398264, 46.803905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574699, 27.684420, 47.005650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372744, -0.353045, 0.858150,
		0.791973, 0.602972, -0.095935,
		-0.483571, 0.715391, 0.504356,
		36.429626, 27.899036, 47.156956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286495, 27.687164, 47.216236>,  <36.768127, 27.398264, 46.803905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286495, 27.687164, 47.216236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936424, 27.775480, 47.388428>,  <36.726379, 27.828470, 47.491741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936424, 27.775480, 47.388428>,  <37.286495, 27.687164, 47.216236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936424, 27.775480, 47.388428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378375, -0.242113, 0.893428,
		0.301484, 0.944793, 0.128351,
		-0.875180, 0.220789, 0.430480,
		36.673870, 27.841717, 47.517570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.918682, 28.119411, 47.180305>,  <37.286495, 27.687164, 47.216236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.918682, 28.119411, 47.180305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306343, 28.184019, 47.254768>,  <38.538940, 28.222784, 47.299446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306343, 28.184019, 47.254768>,  <37.918682, 28.119411, 47.180305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306343, 28.184019, 47.254768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149148, 0.216931, -0.964726,
		-0.196204, 0.962732, 0.186149,
		0.969154, 0.161519, 0.186153,
		38.597088, 28.232475, 47.310616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059196, 28.830755, 46.906528>,  <37.918682, 28.119411, 47.180305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059196, 28.830755, 46.906528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411327, 28.641199, 46.914951>,  <38.622608, 28.527466, 46.920006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.411327, 28.641199, 46.914951>,  <38.059196, 28.830755, 46.906528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.411327, 28.641199, 46.914951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189278, 0.310225, -0.931630,
		0.434960, 0.824128, 0.362798,
		0.880332, -0.473891, 0.021054,
		38.675426, 28.499031, 46.921268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577606, 29.243761, 46.734703>,  <38.059196, 28.830755, 46.906528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577606, 29.243761, 46.734703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793251, 28.916603, 46.654297>,  <38.922638, 28.720308, 46.606052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793251, 28.916603, 46.654297>,  <38.577606, 29.243761, 46.734703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793251, 28.916603, 46.654297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235639, 0.375609, -0.896322,
		0.808602, 0.435847, 0.395222,
		0.539108, -0.817897, -0.201015,
		38.954983, 28.671234, 46.593994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066776, 29.491697, 46.478878>,  <38.577606, 29.243761, 46.734703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066776, 29.491697, 46.478878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078979, 29.112013, 46.353611>,  <39.086300, 28.884203, 46.278450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078979, 29.112013, 46.353611>,  <39.066776, 29.491697, 46.478878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078979, 29.112013, 46.353611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296534, 0.307799, -0.904061,
		0.954535, -0.065287, 0.290862,
		0.030504, -0.949209, -0.313165,
		39.088131, 28.827250, 46.259663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767467, 29.378138, 46.088932>,  <39.066776, 29.491697, 46.478878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767467, 29.378138, 46.088932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513737, 29.093996, 45.966930>,  <39.361500, 28.923512, 45.893730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.513737, 29.093996, 45.966930>,  <39.767467, 29.378138, 46.088932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513737, 29.093996, 45.966930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305081, 0.132494, -0.943065,
		0.710322, -0.691260, 0.132672,
		-0.634325, -0.710355, -0.305004,
		39.323441, 28.880890, 45.875431>
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
