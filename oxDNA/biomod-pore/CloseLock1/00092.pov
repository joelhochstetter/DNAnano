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
	<24.416580, 35.299625, 35.018818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306730, 34.920609, 35.084236>,  <24.240820, 34.693199, 35.123486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.306730, 34.920609, 35.084236>,  <24.416580, 35.299625, 35.018818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.306730, 34.920609, 35.084236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961493, -0.268720, 0.057626,
		-0.010656, 0.173072, 0.984851,
		-0.274623, -0.947542, 0.163544,
		24.224344, 34.636345, 35.133301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.776793, 35.104347, 35.674339>,  <24.416580, 35.299625, 35.018818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.776793, 35.104347, 35.674339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696222, 34.822693, 35.401981>,  <24.647881, 34.653702, 35.238567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.696222, 34.822693, 35.401981>,  <24.776793, 35.104347, 35.674339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.696222, 34.822693, 35.401981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963826, -0.266357, -0.009673,
		-0.174550, -0.658213, 0.732316,
		-0.201424, -0.704137, -0.680896,
		24.635796, 34.611450, 35.197712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.998045, 34.372082, 35.818604>,  <24.776793, 35.104347, 35.674339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.998045, 34.372082, 35.818604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977076, 34.399746, 35.420113>,  <24.964495, 34.416344, 35.181019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.977076, 34.399746, 35.420113>,  <24.998045, 34.372082, 35.818604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.977076, 34.399746, 35.420113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966587, -0.247151, -0.068021,
		-0.250923, -0.966506, -0.053896,
		-0.052423, 0.069163, -0.996227,
		24.961349, 34.420494, 35.121246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.327993, 34.790535, 36.280144>,  <24.998045, 34.372082, 35.818604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.327993, 34.790535, 36.280144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209337, 34.717190, 36.655033>,  <25.138144, 34.673183, 36.879967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.209337, 34.717190, 36.655033>,  <25.327993, 34.790535, 36.280144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.209337, 34.717190, 36.655033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823522, 0.546031, -0.153826,
		-0.483546, -0.817453, -0.312976,
		-0.296640, -0.183360, 0.937221,
		25.120346, 34.662182, 36.936199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801754, 35.246418, 36.791370>,  <25.327993, 34.790535, 36.280144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801754, 35.246418, 36.791370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979692, 35.091724, 37.114494>,  <26.086456, 34.998909, 37.308369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.979692, 35.091724, 37.114494>,  <25.801754, 35.246418, 36.791370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.979692, 35.091724, 37.114494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511873, 0.630346, 0.583653,
		-0.734913, -0.673130, 0.082451,
		0.444847, -0.386730, 0.807806,
		26.113146, 34.975704, 37.356834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.273142, 35.026436, 36.311043>,  <25.801754, 35.246418, 36.791370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.273142, 35.026436, 36.311043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580818, 35.277798, 36.357437>,  <26.765425, 35.428616, 36.385273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.580818, 35.277798, 36.357437>,  <26.273142, 35.026436, 36.311043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.580818, 35.277798, 36.357437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626990, -0.707125, -0.326890,
		-0.123404, 0.324162, -0.937918,
		0.769191, 0.628405, 0.115985,
		26.811575, 35.466320, 36.392231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726868, 35.270187, 35.614128>,  <26.273142, 35.026436, 36.311043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726868, 35.270187, 35.614128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906057, 35.219353, 35.968117>,  <27.013571, 35.188850, 36.180508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.906057, 35.219353, 35.968117>,  <26.726868, 35.270187, 35.614128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.906057, 35.219353, 35.968117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695285, -0.572754, -0.434203,
		0.562050, 0.809816, -0.168217,
		0.447972, -0.127085, 0.884969,
		27.040449, 35.181229, 36.233608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.433466, 35.515064, 35.703976>,  <26.726868, 35.270187, 35.614128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.433466, 35.515064, 35.703976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393917, 35.185795, 35.927620>,  <27.370188, 34.988232, 36.061806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.393917, 35.185795, 35.927620>,  <27.433466, 35.515064, 35.703976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.393917, 35.185795, 35.927620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770220, -0.419064, -0.480777,
		0.630068, 0.383106, 0.675458,
		-0.098872, -0.823174, 0.559115,
		27.364256, 34.938843, 36.095356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058128, 35.283936, 35.621243>,  <27.433466, 35.515064, 35.703976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058128, 35.283936, 35.621243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874777, 34.982586, 35.809845>,  <27.764767, 34.801777, 35.923004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.874777, 34.982586, 35.809845>,  <28.058128, 35.283936, 35.621243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.874777, 34.982586, 35.809845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655116, -0.644915, -0.393583,
		0.600595, 0.128479, 0.789163,
		-0.458376, -0.753377, 0.471502,
		27.737265, 34.756573, 35.951294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603735, 34.884964, 35.908516>,  <28.058128, 35.283936, 35.621243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603735, 34.884964, 35.908516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297216, 34.628090, 35.900658>,  <28.113306, 34.473965, 35.895943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.297216, 34.628090, 35.900658>,  <28.603735, 34.884964, 35.908516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297216, 34.628090, 35.900658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593397, -0.695689, -0.404841,
		0.246314, -0.321889, 0.914176,
		-0.766296, -0.642187, -0.019650,
		28.067327, 34.435432, 35.894764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816835, 34.254276, 36.269428>,  <28.603735, 34.884964, 35.908516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816835, 34.254276, 36.269428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524982, 34.147640, 36.017536>,  <28.349871, 34.083656, 35.866402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.524982, 34.147640, 36.017536>,  <28.816835, 34.254276, 36.269428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524982, 34.147640, 36.017536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592046, -0.707115, -0.386614,
		-0.342225, -0.654918, 0.673769,
		-0.729632, -0.266593, -0.629734,
		28.306093, 34.067661, 35.828617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955889, 33.591827, 36.226704>,  <28.816835, 34.254276, 36.269428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955889, 33.591827, 36.226704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689363, 33.622238, 35.929989>,  <28.529448, 33.640484, 35.751961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689363, 33.622238, 35.929989>,  <28.955889, 33.591827, 36.226704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689363, 33.622238, 35.929989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407244, -0.796223, -0.447417,
		-0.624642, -0.600208, 0.499573,
		-0.666315, 0.076028, -0.741785,
		28.489470, 33.645046, 35.707455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.696087, 32.895164, 36.159729>,  <28.955889, 33.591827, 36.226704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.696087, 32.895164, 36.159729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619932, 33.079426, 35.812962>,  <28.574240, 33.189983, 35.604900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.619932, 33.079426, 35.812962>,  <28.696087, 32.895164, 36.159729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.619932, 33.079426, 35.812962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422455, -0.758683, -0.495916,
		-0.886163, -0.460651, -0.050162,
		-0.190387, 0.460654, -0.866921,
		28.562817, 33.217621, 35.552887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.360344, 32.378372, 35.689423>,  <28.696087, 32.895164, 36.159729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.360344, 32.378372, 35.689423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541185, 32.657394, 35.467064>,  <28.649691, 32.824806, 35.333649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.541185, 32.657394, 35.467064>,  <28.360344, 32.378372, 35.689423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.541185, 32.657394, 35.467064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419382, -0.716280, -0.557728,
		-0.787223, 0.019018, -0.616375,
		0.452104, 0.697553, -0.555896,
		28.676817, 32.866661, 35.300297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176157, 32.265884, 34.983673>,  <28.360344, 32.378372, 35.689423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176157, 32.265884, 34.983673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500237, 32.499626, 34.965321>,  <28.694685, 32.639874, 34.954308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.500237, 32.499626, 34.965321>,  <28.176157, 32.265884, 34.983673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.500237, 32.499626, 34.965321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364004, -0.562949, -0.742017,
		-0.459434, 0.584478, -0.668809,
		0.810198, 0.584357, -0.045885,
		28.743296, 32.674934, 34.951553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.287132, 32.306042, 34.280800>,  <28.176157, 32.265884, 34.983673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.287132, 32.306042, 34.280800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632679, 32.422161, 34.445461>,  <28.840008, 32.491833, 34.544258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632679, 32.422161, 34.445461>,  <28.287132, 32.306042, 34.280800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632679, 32.422161, 34.445461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498579, -0.609237, -0.616643,
		0.071782, 0.737940, -0.671038,
		0.863867, 0.290301, 0.411654,
		28.891840, 32.509251, 34.568958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.689053, 32.315975, 33.760201>,  <28.287132, 32.306042, 34.280800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.689053, 32.315975, 33.760201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959892, 32.292397, 34.053612>,  <29.122396, 32.278252, 34.229660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.959892, 32.292397, 34.053612>,  <28.689053, 32.315975, 33.760201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.959892, 32.292397, 34.053612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502416, -0.691294, -0.519317,
		0.537694, 0.720165, -0.438460,
		0.677099, -0.058944, 0.733527,
		29.163021, 32.274712, 34.273670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334026, 32.293724, 33.368080>,  <28.689053, 32.315975, 33.760201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334026, 32.293724, 33.368080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410824, 32.174187, 33.741997>,  <29.456903, 32.102467, 33.966347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.410824, 32.174187, 33.741997>,  <29.334026, 32.293724, 33.368080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410824, 32.174187, 33.741997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733253, -0.589408, -0.339027,
		0.652287, 0.750529, 0.105961,
		0.191995, -0.298839, 0.934790,
		29.468422, 32.084534, 34.022434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030823, 32.497162, 33.526051>,  <29.334026, 32.293724, 33.368080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030823, 32.497162, 33.526051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919075, 32.193226, 33.760857>,  <29.852026, 32.010864, 33.901741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.919075, 32.193226, 33.760857>,  <30.030823, 32.497162, 33.526051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919075, 32.193226, 33.760857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693000, -0.582726, -0.424478,
		0.664607, 0.288218, 0.689368,
		-0.279370, -0.759843, 0.587019,
		29.835264, 31.965273, 33.936962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.653877, 32.121960, 33.796112>,  <30.030823, 32.497162, 33.526051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.653877, 32.121960, 33.796112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382572, 31.836620, 33.866653>,  <30.219790, 31.665417, 33.908978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.382572, 31.836620, 33.866653>,  <30.653877, 32.121960, 33.796112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.382572, 31.836620, 33.866653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670815, -0.699048, -0.247668,
		0.299950, -0.049685, 0.952660,
		-0.678261, -0.713346, 0.176350,
		30.179094, 31.622616, 33.919559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.970896, 31.573156, 33.996883>,  <30.653877, 32.121960, 33.796112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.970896, 31.573156, 33.996883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628250, 31.372467, 33.948742>,  <30.422663, 31.252052, 33.919857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628250, 31.372467, 33.948742>,  <30.970896, 31.573156, 33.996883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628250, 31.372467, 33.948742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512347, -0.799606, -0.313259,
		0.060936, -0.330004, 0.942011,
		-0.856614, -0.501725, -0.120352,
		30.371265, 31.221951, 33.912636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966452, 30.895887, 34.340816>,  <30.970896, 31.573156, 33.996883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966452, 30.895887, 34.340816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685057, 30.859070, 34.058929>,  <30.516220, 30.836979, 33.889797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.685057, 30.859070, 34.058929>,  <30.966452, 30.895887, 34.340816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685057, 30.859070, 34.058929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382870, -0.884473, -0.266682,
		-0.598759, -0.457424, 0.657458,
		-0.703490, -0.092043, -0.704720,
		30.474010, 30.831457, 33.847515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787630, 30.264833, 34.424000>,  <30.966452, 30.895887, 34.340816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787630, 30.264833, 34.424000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687029, 30.374502, 34.052715>,  <30.626669, 30.440304, 33.829945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.687029, 30.374502, 34.052715>,  <30.787630, 30.264833, 34.424000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.687029, 30.374502, 34.052715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461403, -0.809080, -0.364000,
		-0.850796, -0.519827, 0.076982,
		-0.251502, 0.274170, -0.928212,
		30.611578, 30.456753, 33.774250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679800, 29.583004, 34.233063>,  <30.787630, 30.264833, 34.424000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679800, 29.583004, 34.233063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679398, 29.827990, 33.916862>,  <30.679157, 29.974981, 33.727142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679398, 29.827990, 33.916862>,  <30.679800, 29.583004, 34.233063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679398, 29.827990, 33.916862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351060, -0.739968, -0.573763,
		-0.936353, -0.278088, -0.214268,
		-0.001005, 0.612465, -0.790497,
		30.679096, 30.011728, 33.679714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.303444, 29.249723, 33.717934>,  <30.679800, 29.583004, 34.233063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.303444, 29.249723, 33.717934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572020, 29.510996, 33.577919>,  <30.733166, 29.667759, 33.493912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.572020, 29.510996, 33.577919>,  <30.303444, 29.249723, 33.717934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572020, 29.510996, 33.577919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366910, -0.703402, -0.608771,
		-0.643851, 0.280324, -0.711952,
		0.671441, 0.653180, -0.350032,
		30.773453, 29.706949, 33.472908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212065, 29.441692, 33.028896>,  <30.303444, 29.249723, 33.717934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212065, 29.441692, 33.028896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605932, 29.452782, 33.097786>,  <30.842253, 29.459435, 33.139118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.605932, 29.452782, 33.097786>,  <30.212065, 29.441692, 33.028896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.605932, 29.452782, 33.097786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143876, -0.687318, -0.711964,
		0.098635, 0.725827, -0.680768,
		0.984668, 0.027721, 0.172223,
		30.901333, 29.461098, 33.149452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.641073, 29.409025, 32.437584>,  <30.212065, 29.441692, 33.028896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.641073, 29.409025, 32.437584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875418, 29.263088, 32.727039>,  <31.016024, 29.175526, 32.900715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.875418, 29.263088, 32.727039>,  <30.641073, 29.409025, 32.437584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.875418, 29.263088, 32.727039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143820, -0.831952, -0.535884,
		0.797548, 0.418028, -0.434936,
		0.585861, -0.364841, 0.723642,
		31.051176, 29.153635, 32.944134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.369890, 28.851200, 32.194630>,  <30.641073, 29.409025, 32.437584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.369890, 28.851200, 32.194630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316877, 28.525997, 32.421417>,  <30.285070, 28.330875, 32.557487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.316877, 28.525997, 32.421417>,  <30.369890, 28.851200, 32.194630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316877, 28.525997, 32.421417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321720, -0.576327, -0.751228,
		0.937513, 0.082843, 0.337943,
		-0.132532, -0.813010, 0.566966,
		30.277119, 28.282095, 32.591507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.022728, 28.322166, 32.357803>,  <30.369890, 28.851200, 32.194630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.022728, 28.322166, 32.357803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652241, 28.176794, 32.317726>,  <30.429949, 28.089571, 32.293678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.652241, 28.176794, 32.317726>,  <31.022728, 28.322166, 32.357803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.652241, 28.176794, 32.317726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358373, -0.766331, -0.533203,
		0.117000, -0.529769, 0.840033,
		-0.926218, -0.363430, -0.100194,
		30.374374, 28.067764, 32.287666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269531, 28.518496, 33.095070>,  <31.022728, 28.322166, 32.357803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269531, 28.518496, 33.095070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466379, 28.783155, 32.868782>,  <31.584488, 28.941952, 32.733009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.466379, 28.783155, 32.868782>,  <31.269531, 28.518496, 33.095070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466379, 28.783155, 32.868782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212812, 0.721580, 0.658812,
		0.844115, -0.203821, 0.495909,
		0.492118, 0.661648, -0.565721,
		31.614016, 28.981649, 32.699066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933897, 28.785622, 33.433449>,  <31.269531, 28.518496, 33.095070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933897, 28.785622, 33.433449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723167, 29.016386, 33.183765>,  <31.596729, 29.154844, 33.033955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.723167, 29.016386, 33.183765>,  <31.933897, 28.785622, 33.433449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.723167, 29.016386, 33.183765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172482, 0.646538, 0.743127,
		0.832289, 0.499161, -0.241105,
		-0.526824, 0.576910, -0.624204,
		31.565121, 29.189459, 32.996506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.156212, 29.546608, 33.391468>,  <31.933897, 28.785622, 33.433449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.156212, 29.546608, 33.391468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764820, 29.516745, 33.314514>,  <31.529985, 29.498827, 33.268341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.764820, 29.516745, 33.314514>,  <32.156212, 29.546608, 33.391468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.764820, 29.516745, 33.314514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190529, 0.684969, 0.703219,
		0.079274, 0.724737, -0.684450,
		-0.978476, -0.074660, -0.192383,
		31.471277, 29.494347, 33.256798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896912, 30.158386, 33.387867>,  <32.156212, 29.546608, 33.391468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896912, 30.158386, 33.387867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614262, 29.898039, 33.498901>,  <31.444672, 29.741831, 33.565521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.614262, 29.898039, 33.498901>,  <31.896912, 30.158386, 33.387867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.614262, 29.898039, 33.498901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196767, 0.557570, 0.806473,
		-0.679680, 0.515254, -0.522061,
		-0.706624, -0.650868, 0.277584,
		31.402275, 29.702778, 33.582176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.457996, 30.196119, 32.709805>,  <31.896912, 30.158386, 33.387867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.457996, 30.196119, 32.709805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 30.500759, 32.516033>,  <32.733490, 30.683544, 32.399769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.630180, 30.500759, 32.516033>,  <32.457996, 30.196119, 32.709805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630180, 30.500759, 32.516033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161459, 0.593010, 0.788841,
		0.888054, -0.261345, 0.378231,
		0.430455, 0.761602, -0.484429,
		32.759315, 30.729240, 32.370705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.778358, 30.536030, 33.179710>,  <32.457996, 30.196119, 32.709805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.778358, 30.536030, 33.179710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740707, 30.801607, 32.882977>,  <32.718117, 30.960955, 32.704937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.740707, 30.801607, 32.882977>,  <32.778358, 30.536030, 33.179710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740707, 30.801607, 32.882977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005924, 0.745503, 0.666476,
		0.995542, 0.058342, -0.074108,
		-0.094131, 0.663944, -0.741834,
		32.712467, 31.000790, 32.660427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252800, 31.159975, 33.325741>,  <32.778358, 30.536030, 33.179710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252800, 31.159975, 33.325741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978832, 31.285423, 33.062675>,  <32.814449, 31.360693, 32.904835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978832, 31.285423, 33.062675>,  <33.252800, 31.159975, 33.325741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978832, 31.285423, 33.062675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032169, 0.888725, 0.457310,
		0.727905, 0.334378, -0.598620,
		-0.684923, 0.313621, -0.657664,
		32.773354, 31.379509, 32.865376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.451962, 31.814484, 33.054794>,  <33.252800, 31.159975, 33.325741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.451962, 31.814484, 33.054794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056255, 31.822281, 32.996868>,  <32.818832, 31.826960, 32.962112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056255, 31.822281, 32.996868>,  <33.451962, 31.814484, 33.054794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056255, 31.822281, 32.996868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060879, 0.845968, 0.529747,
		0.132838, 0.532877, -0.835701,
		-0.989266, 0.019494, -0.144818,
		32.759476, 31.828129, 32.953423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.282734, 32.540974, 32.852795>,  <33.451962, 31.814484, 33.054794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.282734, 32.540974, 32.852795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929348, 32.396210, 32.971794>,  <32.717316, 32.309353, 33.043194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.929348, 32.396210, 32.971794>,  <33.282734, 32.540974, 32.852795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.929348, 32.396210, 32.971794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257896, 0.905835, 0.336085,
		-0.391116, 0.220197, -0.893612,
		-0.883469, -0.361906, 0.297498,
		32.664307, 32.287640, 33.061043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.829952, 33.033867, 32.731842>,  <33.282734, 32.540974, 32.852795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.829952, 33.033867, 32.731842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645855, 32.800236, 32.999283>,  <32.535397, 32.660057, 33.159748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.645855, 32.800236, 32.999283>,  <32.829952, 33.033867, 32.731842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.645855, 32.800236, 32.999283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237489, 0.806661, 0.541199,
		-0.855438, 0.090297, -0.509973,
		-0.460244, -0.584075, 0.668604,
		32.507782, 32.625011, 33.199863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188705, 33.400051, 32.941490>,  <32.829952, 33.033867, 32.731842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.188705, 33.400051, 32.941490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250648, 33.122765, 33.223049>,  <32.287815, 32.956394, 33.391983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250648, 33.122765, 33.223049>,  <32.188705, 33.400051, 32.941490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250648, 33.122765, 33.223049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337897, 0.632358, 0.697100,
		-0.928356, -0.345797, -0.136309,
		0.154859, -0.693215, 0.703897,
		32.297108, 32.914799, 33.434219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648022, 33.446739, 33.406776>,  <32.188705, 33.400051, 32.941490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648022, 33.446739, 33.406776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888830, 33.228840, 33.640297>,  <32.033314, 33.098099, 33.780411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888830, 33.228840, 33.640297>,  <31.648022, 33.446739, 33.406776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888830, 33.228840, 33.640297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466159, 0.353826, 0.810865,
		-0.648281, -0.760300, -0.040929,
		0.602020, -0.544748, 0.583800,
		32.069435, 33.065414, 33.815437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.228863, 33.180950, 33.926411>,  <31.648022, 33.446739, 33.406776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.228863, 33.180950, 33.926411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597342, 33.175659, 34.081959>,  <31.818430, 33.172485, 34.175285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.597342, 33.175659, 34.081959>,  <31.228863, 33.180950, 33.926411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.597342, 33.175659, 34.081959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373174, 0.252910, 0.892624,
		-0.110156, -0.967399, 0.228043,
		0.921198, -0.013228, 0.388868,
		31.873701, 33.171692, 34.198620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.106119, 32.996380, 34.586449>,  <31.228863, 33.180950, 33.926411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.106119, 32.996380, 34.586449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478727, 33.138123, 34.619202>,  <31.702291, 33.223167, 34.638851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478727, 33.138123, 34.619202>,  <31.106119, 32.996380, 34.586449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478727, 33.138123, 34.619202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165002, 0.211141, 0.963428,
		0.324108, -0.910962, 0.255152,
		0.931519, 0.354355, 0.081878,
		31.758183, 33.244427, 34.643764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400145, 32.759365, 35.256939>,  <31.106119, 32.996380, 34.586449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400145, 32.759365, 35.256939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596125, 33.085945, 35.134724>,  <31.713713, 33.281895, 35.061394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.596125, 33.085945, 35.134724>,  <31.400145, 32.759365, 35.256939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596125, 33.085945, 35.134724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004719, 0.352966, 0.935624,
		0.871738, -0.456968, 0.176789,
		0.489950, 0.816453, -0.305537,
		31.743111, 33.330879, 35.043064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.891838, 32.832901, 35.778980>,  <31.400145, 32.759365, 35.256939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.891838, 32.832901, 35.778980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867180, 33.187943, 35.596394>,  <31.852385, 33.400967, 35.486839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.867180, 33.187943, 35.596394>,  <31.891838, 32.832901, 35.778980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.867180, 33.187943, 35.596394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061791, 0.453067, 0.889332,
		0.996184, 0.083028, 0.026917,
		-0.061645, 0.887601, -0.456468,
		31.848686, 33.454224, 35.459454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215145, 33.202827, 36.264591>,  <31.891838, 32.832901, 35.778980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215145, 33.202827, 36.264591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043358, 33.469883, 36.021343>,  <31.940285, 33.630116, 35.875393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.043358, 33.469883, 36.021343>,  <32.215145, 33.202827, 36.264591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043358, 33.469883, 36.021343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227484, 0.571694, 0.788300,
		0.873961, 0.476888, -0.093646,
		-0.429468, 0.667640, -0.608123,
		31.914516, 33.670174, 35.838905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474228, 33.936928, 36.414326>,  <32.215145, 33.202827, 36.264591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474228, 33.936928, 36.414326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106747, 33.957535, 36.257698>,  <31.886257, 33.969898, 36.163719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106747, 33.957535, 36.257698>,  <32.474228, 33.936928, 36.414326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106747, 33.957535, 36.257698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292293, 0.578086, 0.761828,
		0.265606, 0.814348, -0.516033,
		-0.918705, 0.051514, -0.391571,
		31.831135, 33.972988, 36.140228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213890, 34.587009, 36.753674>,  <32.474228, 33.936928, 36.414326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213890, 34.587009, 36.753674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878990, 34.468426, 36.569881>,  <31.678049, 34.397278, 36.459606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878990, 34.468426, 36.569881>,  <32.213890, 34.587009, 36.753674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878990, 34.468426, 36.569881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543577, 0.542573, 0.640420,
		0.059445, 0.785957, -0.615418,
		-0.837251, -0.296457, -0.459481,
		31.627815, 34.379490, 36.432037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.741829, 35.210209, 36.636333>,  <32.213890, 34.587009, 36.753674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.741829, 35.210209, 36.636333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512608, 34.882435, 36.631649>,  <31.375074, 34.685772, 36.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.512608, 34.882435, 36.631649>,  <31.741829, 35.210209, 36.636333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512608, 34.882435, 36.631649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676334, 0.464810, 0.571422,
		-0.462800, 0.335375, -0.820572,
		-0.573051, -0.819436, -0.011711,
		31.340693, 34.636604, 36.628136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007076, 35.385902, 36.407291>,  <31.741829, 35.210209, 36.636333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007076, 35.385902, 36.407291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955524, 35.029884, 36.582203>,  <30.924593, 34.816273, 36.687149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955524, 35.029884, 36.582203>,  <31.007076, 35.385902, 36.407291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955524, 35.029884, 36.582203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774488, 0.365727, 0.516152,
		-0.619322, -0.272143, -0.736464,
		-0.128877, -0.890046, 0.437274,
		30.916861, 34.762871, 36.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309357, 35.188961, 36.334503>,  <31.007076, 35.385902, 36.407291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309357, 35.188961, 36.334503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465176, 35.013634, 36.658512>,  <30.558668, 34.908440, 36.852917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465176, 35.013634, 36.658512>,  <30.309357, 35.188961, 36.334503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465176, 35.013634, 36.658512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732676, 0.385432, 0.560917,
		-0.558065, -0.811987, -0.170998,
		0.389549, -0.438315, 0.810020,
		30.582041, 34.882141, 36.901520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750572, 34.933872, 36.578888>,  <30.309357, 35.188961, 36.334503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750572, 34.933872, 36.578888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012648, 34.921448, 36.880817>,  <30.169893, 34.913994, 37.061977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012648, 34.921448, 36.880817>,  <29.750572, 34.933872, 36.578888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012648, 34.921448, 36.880817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699515, 0.352406, 0.621682,
		-0.285315, -0.935331, 0.209165,
		0.655190, -0.031061, 0.754825,
		30.209204, 34.912128, 37.107265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.360325, 34.526356, 37.062908>,  <29.750572, 34.933872, 36.578888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.360325, 34.526356, 37.062908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649693, 34.737408, 37.241020>,  <29.823313, 34.864040, 37.347885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649693, 34.737408, 37.241020>,  <29.360325, 34.526356, 37.062908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649693, 34.737408, 37.241020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641829, 0.276303, 0.715340,
		0.254397, -0.803288, 0.538527,
		0.723420, 0.527623, 0.445283,
		29.866718, 34.895699, 37.374603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.336182, 34.389103, 37.932259>,  <29.360325, 34.526356, 37.062908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.336182, 34.389103, 37.932259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517580, 34.732971, 37.838188>,  <29.626419, 34.939293, 37.781746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.517580, 34.732971, 37.838188>,  <29.336182, 34.389103, 37.932259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.517580, 34.732971, 37.838188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481692, 0.458423, 0.746875,
		0.749877, -0.225421, 0.621989,
		0.453495, 0.859671, -0.235177,
		29.653629, 34.990871, 37.767635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.467916, 34.678211, 38.623806>,  <29.336182, 34.389103, 37.932259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.467916, 34.678211, 38.623806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499859, 34.973602, 38.355991>,  <29.519024, 35.150837, 38.195305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.499859, 34.973602, 38.355991>,  <29.467916, 34.678211, 38.623806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.499859, 34.973602, 38.355991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622433, 0.561579, 0.545166,
		0.778588, 0.373205, 0.504498,
		0.079856, 0.738476, -0.669534,
		29.523815, 35.195145, 38.155132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580996, 35.266068, 39.084843>,  <29.467916, 34.678211, 38.623806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580996, 35.266068, 39.084843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465267, 35.411598, 38.730686>,  <29.395830, 35.498917, 38.518192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.465267, 35.411598, 38.730686>,  <29.580996, 35.266068, 39.084843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.465267, 35.411598, 38.730686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616848, 0.636429, 0.463095,
		0.731977, 0.680136, 0.040295,
		-0.289323, 0.363831, -0.885392,
		29.378469, 35.520748, 38.465069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530504, 35.979298, 39.169594>,  <29.580996, 35.266068, 39.084843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530504, 35.979298, 39.169594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287441, 35.885231, 38.866161>,  <29.141603, 35.828793, 38.684101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287441, 35.885231, 38.866161>,  <29.530504, 35.979298, 39.169594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287441, 35.885231, 38.866161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594849, 0.767632, 0.238529,
		0.526219, 0.596187, -0.606345,
		-0.607657, -0.235165, -0.758584,
		29.105145, 35.814682, 38.638588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.268793, 36.104084, 39.364388>,  <29.530504, 35.979298, 39.169594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.268793, 36.104084, 39.364388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556076, 36.208504, 39.106384>,  <30.728445, 36.271156, 38.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556076, 36.208504, 39.106384>,  <30.268793, 36.104084, 39.364388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556076, 36.208504, 39.106384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574774, 0.299891, 0.761380,
		0.392193, -0.917560, 0.065335,
		0.718205, 0.261055, -0.645005,
		30.771538, 36.286819, 38.912884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.902393, 35.855114, 39.628601>,  <30.268793, 36.104084, 39.364388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.902393, 35.855114, 39.628601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974291, 36.201927, 39.442719>,  <31.017429, 36.410015, 39.331188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.974291, 36.201927, 39.442719>,  <30.902393, 35.855114, 39.628601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974291, 36.201927, 39.442719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539325, 0.308218, 0.783664,
		0.822691, -0.391487, -0.412210,
		0.179744, 0.867029, -0.464707,
		31.028214, 36.462036, 39.303307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.528700, 36.112350, 39.858677>,  <30.902393, 35.855114, 39.628601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.528700, 36.112350, 39.858677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334517, 36.443810, 39.747200>,  <31.218006, 36.642685, 39.680313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.334517, 36.443810, 39.747200>,  <31.528700, 36.112350, 39.858677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334517, 36.443810, 39.747200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449398, 0.509955, 0.733476,
		0.749916, 0.230828, -0.619955,
		-0.485456, 0.828652, -0.278690,
		31.188879, 36.692406, 39.663593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998846, 36.522121, 39.558914>,  <31.528700, 36.112350, 39.858677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998846, 36.522121, 39.558914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725874, 36.731735, 39.762749>,  <31.562090, 36.857502, 39.885048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.725874, 36.731735, 39.762749>,  <31.998846, 36.522121, 39.558914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.725874, 36.731735, 39.762749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660645, 0.143868, 0.736784,
		0.312789, 0.839457, -0.444382,
		-0.682430, 0.524036, 0.509583,
		31.521145, 36.888947, 39.915623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.363617, 36.930241, 39.858692>,  <31.998846, 36.522121, 39.558914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.363617, 36.930241, 39.858692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025650, 36.903679, 40.070999>,  <31.822870, 36.887741, 40.198383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.025650, 36.903679, 40.070999>,  <32.363617, 36.930241, 39.858692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025650, 36.903679, 40.070999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532690, -0.014318, 0.846189,
		-0.048589, 0.997690, 0.047469,
		-0.844914, -0.066402, 0.530764,
		31.772175, 36.883759, 40.230228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.200005, 37.516064, 40.396938>,  <32.363617, 36.930241, 39.858692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.200005, 37.516064, 40.396938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016953, 37.176544, 40.502857>,  <31.907122, 36.972832, 40.566410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.016953, 37.176544, 40.502857>,  <32.200005, 37.516064, 40.396938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.016953, 37.176544, 40.502857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533619, -0.023964, 0.845386,
		-0.711215, 0.528176, 0.463900,
		-0.457630, -0.848796, 0.264801,
		31.879663, 36.921906, 40.582298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778774, 37.502522, 41.132168>,  <32.200005, 37.516064, 40.396938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778774, 37.502522, 41.132168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957033, 37.159763, 41.028534>,  <32.063988, 36.954109, 40.966354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957033, 37.159763, 41.028534>,  <31.778774, 37.502522, 41.132168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957033, 37.159763, 41.028534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594898, 0.067211, 0.800986,
		-0.668950, -0.511085, 0.539720,
		0.445647, -0.856898, -0.259083,
		32.090729, 36.902695, 40.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.980637, 37.207619, 41.799793>,  <31.778774, 37.502522, 41.132168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.980637, 37.207619, 41.799793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202126, 36.990017, 41.547619>,  <32.335018, 36.859455, 41.396313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202126, 36.990017, 41.547619>,  <31.980637, 37.207619, 41.799793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202126, 36.990017, 41.547619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716624, -0.074254, 0.693496,
		-0.424075, -0.835792, 0.348729,
		0.553724, -0.544002, -0.630438,
		32.368244, 36.826817, 41.358486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148960, 36.720406, 42.254429>,  <31.980637, 37.207619, 41.799793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148960, 36.720406, 42.254429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396378, 36.672234, 41.943840>,  <32.544827, 36.643330, 41.757488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396378, 36.672234, 41.943840>,  <32.148960, 36.720406, 42.254429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396378, 36.672234, 41.943840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741280, -0.238295, 0.627471,
		-0.260597, -0.963697, -0.058121,
		0.618541, -0.120433, -0.776468,
		32.581940, 36.636105, 41.710899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.463757, 36.015919, 42.246807>,  <32.148960, 36.720406, 42.254429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.463757, 36.015919, 42.246807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687496, 36.289238, 42.059090>,  <32.821739, 36.453228, 41.946461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687496, 36.289238, 42.059090>,  <32.463757, 36.015919, 42.246807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687496, 36.289238, 42.059090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732135, -0.141748, 0.666247,
		0.388724, -0.716248, -0.579553,
		0.559349, 0.683298, -0.469290,
		32.855301, 36.494228, 41.918304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.105263, 35.742588, 42.242023>,  <32.463757, 36.015919, 42.246807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.105263, 35.742588, 42.242023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176369, 36.132557, 42.188477>,  <33.219032, 36.366539, 42.156349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.176369, 36.132557, 42.188477>,  <33.105263, 35.742588, 42.242023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.176369, 36.132557, 42.188477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716218, -0.034884, 0.697004,
		0.674857, -0.219783, -0.704460,
		0.177764, 0.974925, -0.133871,
		33.229698, 36.425034, 42.148315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857162, 35.738220, 42.298042>,  <33.105263, 35.742588, 42.242023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857162, 35.738220, 42.298042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748989, 36.122818, 42.278488>,  <33.684086, 36.353577, 42.266754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748989, 36.122818, 42.278488>,  <33.857162, 35.738220, 42.298042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748989, 36.122818, 42.278488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743695, 0.240883, 0.623613,
		0.611378, 0.132287, -0.780203,
		-0.270434, 0.961496, -0.048889,
		33.667858, 36.411266, 42.263821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.453156, 36.111771, 42.092918>,  <33.857162, 35.738220, 42.298042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.453156, 36.111771, 42.092918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206310, 36.346874, 42.302189>,  <34.058205, 36.487934, 42.427753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206310, 36.346874, 42.302189>,  <34.453156, 36.111771, 42.092918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206310, 36.346874, 42.302189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749979, 0.238128, 0.617111,
		0.238128, 0.773199, -0.587756,
		-0.617111, 0.587756, 0.523178,
		34.021175, 36.523201, 42.459141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848656, 36.766407, 42.154892>,  <34.453156, 36.111771, 42.092918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848656, 36.766407, 42.154892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554024, 36.761147, 42.425381>,  <34.377243, 36.757988, 42.587673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.554024, 36.761147, 42.425381>,  <34.848656, 36.766407, 42.154892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.554024, 36.761147, 42.425381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662909, 0.184286, 0.725665,
		-0.134164, 0.982785, -0.127021,
		-0.736581, -0.013155, 0.676221,
		34.333050, 36.757198, 42.628246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006859, 37.353962, 42.542717>,  <34.848656, 36.766407, 42.154892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006859, 37.353962, 42.542717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761486, 37.145424, 42.780003>,  <34.614262, 37.020302, 42.922375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761486, 37.145424, 42.780003>,  <35.006859, 37.353962, 42.542717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761486, 37.145424, 42.780003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555292, 0.249377, 0.793386,
		-0.561563, 0.816094, 0.136524,
		-0.613431, -0.521347, 0.593211,
		34.577457, 36.989021, 42.957966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.041069, 37.890049, 43.075092>,  <35.006859, 37.353962, 42.542717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.041069, 37.890049, 43.075092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901802, 37.530338, 43.180977>,  <34.818241, 37.314510, 43.244507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.901802, 37.530338, 43.180977>,  <35.041069, 37.890049, 43.075092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.901802, 37.530338, 43.180977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514357, 0.052821, 0.855948,
		-0.783720, 0.434172, 0.444160,
		-0.348167, -0.899280, 0.264716,
		34.797352, 37.260555, 43.260391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.744801, 37.980831, 43.708851>,  <35.041069, 37.890049, 43.075092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.744801, 37.980831, 43.708851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832439, 37.594597, 43.652786>,  <34.885021, 37.362858, 43.619148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.832439, 37.594597, 43.652786>,  <34.744801, 37.980831, 43.708851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.832439, 37.594597, 43.652786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518963, -0.006320, 0.854774,
		-0.826242, -0.260014, 0.499717,
		0.219095, -0.965584, -0.140159,
		34.898167, 37.304920, 43.610737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482430, 37.573498, 44.294525>,  <34.744801, 37.980831, 43.708851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482430, 37.573498, 44.294525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760143, 37.331329, 44.138866>,  <34.926773, 37.186028, 44.045471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760143, 37.331329, 44.138866>,  <34.482430, 37.573498, 44.294525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760143, 37.331329, 44.138866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397040, -0.128789, 0.908720,
		-0.600275, -0.785418, 0.150959,
		0.694283, -0.605419, -0.389151,
		34.968430, 37.149704, 44.022121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.546375, 37.004906, 44.662952>,  <34.482430, 37.573498, 44.294525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.546375, 37.004906, 44.662952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908836, 36.997944, 44.493919>,  <35.126312, 36.993767, 44.392498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.908836, 36.997944, 44.493919>,  <34.546375, 37.004906, 44.662952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.908836, 36.997944, 44.493919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420918, -0.060500, 0.905079,
		-0.041326, -0.998016, -0.047493,
		0.906157, -0.017412, -0.422584,
		35.180683, 36.992722, 44.367146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785713, 36.418766, 44.924534>,  <34.546375, 37.004906, 44.662952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785713, 36.418766, 44.924534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102955, 36.628819, 44.801098>,  <35.293301, 36.754848, 44.727036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.102955, 36.628819, 44.801098>,  <34.785713, 36.418766, 44.924534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102955, 36.628819, 44.801098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365151, -0.004432, 0.930938,
		0.487496, -0.851010, -0.195267,
		0.793103, 0.525131, -0.308587,
		35.340885, 36.786358, 44.708523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.343994, 36.116066, 45.203342>,  <34.785713, 36.418766, 44.924534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.343994, 36.116066, 45.203342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470905, 36.489651, 45.137547>,  <35.547050, 36.713802, 45.098068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.470905, 36.489651, 45.137547>,  <35.343994, 36.116066, 45.203342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.470905, 36.489651, 45.137547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342796, 0.048772, 0.938143,
		0.884209, -0.354037, -0.304683,
		0.317277, 0.933959, -0.164487,
		35.566090, 36.769840, 45.088200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075169, 36.204250, 45.378056>,  <35.343994, 36.116066, 45.203342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075169, 36.204250, 45.378056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938290, 36.579857, 45.391586>,  <35.856163, 36.805222, 45.399704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.938290, 36.579857, 45.391586>,  <36.075169, 36.204250, 45.378056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938290, 36.579857, 45.391586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194191, 0.035454, 0.980323,
		0.919342, 0.342035, -0.194481,
		-0.342200, 0.939018, 0.033825,
		35.835629, 36.861561, 45.401733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482735, 36.596458, 45.939484>,  <36.075169, 36.204250, 45.378056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.482735, 36.596458, 45.939484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175606, 36.848557, 45.893463>,  <35.991329, 36.999817, 45.865852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.175606, 36.848557, 45.893463>,  <36.482735, 36.596458, 45.939484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.175606, 36.848557, 45.893463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067971, 0.258704, 0.963562,
		0.637043, 0.732028, -0.241478,
		-0.767826, 0.630244, -0.115049,
		35.945259, 37.037628, 45.858948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752041, 37.216187, 46.115566>,  <36.482735, 36.596458, 45.939484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752041, 37.216187, 46.115566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354107, 37.253174, 46.132294>,  <36.115345, 37.275368, 46.142330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.354107, 37.253174, 46.132294>,  <36.752041, 37.216187, 46.115566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.354107, 37.253174, 46.132294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085998, 0.549255, 0.831218,
		0.053895, 0.830522, -0.554372,
		-0.994837, 0.092473, 0.041821,
		36.055656, 37.280914, 46.144840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562813, 37.808609, 46.515968>,  <36.752041, 37.216187, 46.115566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562813, 37.808609, 46.515968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210968, 37.618519, 46.524384>,  <35.999863, 37.504463, 46.529430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.210968, 37.618519, 46.524384>,  <36.562813, 37.808609, 46.515968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.210968, 37.618519, 46.524384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208672, 0.425223, 0.880705,
		-0.427477, 0.770290, -0.473198,
		-0.879613, -0.475224, 0.021035,
		35.947083, 37.475952, 46.530693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.052067, 38.344376, 46.712067>,  <36.562813, 37.808609, 46.515968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.052067, 38.344376, 46.712067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900791, 37.989201, 46.816784>,  <35.810028, 37.776096, 46.879616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900791, 37.989201, 46.816784>,  <36.052067, 38.344376, 46.712067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900791, 37.989201, 46.816784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255437, 0.371913, 0.892431,
		-0.889790, 0.270634, -0.367465,
		-0.378187, -0.887941, 0.261794,
		35.787334, 37.722820, 46.895321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508930, 38.526737, 47.089104>,  <36.052067, 38.344376, 46.712067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508930, 38.526737, 47.089104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548557, 38.143784, 47.197620>,  <35.572334, 37.914009, 47.262730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.548557, 38.143784, 47.197620>,  <35.508930, 38.526737, 47.089104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.548557, 38.143784, 47.197620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296930, 0.231769, 0.926345,
		-0.949747, -0.172324, -0.261316,
		0.099067, -0.957386, 0.271290,
		35.578278, 37.856567, 47.279007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019768, 38.532215, 47.597931>,  <35.508930, 38.526737, 47.089104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019768, 38.532215, 47.597931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213070, 38.190678, 47.675312>,  <35.329052, 37.985756, 47.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213070, 38.190678, 47.675312>,  <35.019768, 38.532215, 47.597931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213070, 38.190678, 47.675312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082531, 0.175553, 0.981004,
		-0.871583, -0.490037, 0.014368,
		0.483251, -0.853841, 0.193452,
		35.358044, 37.934525, 47.733349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.664478, 38.210171, 48.148754>,  <35.019768, 38.532215, 47.597931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.664478, 38.210171, 48.148754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039684, 38.072273, 48.163094>,  <35.264809, 37.989536, 48.171696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.039684, 38.072273, 48.163094>,  <34.664478, 38.210171, 48.148754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039684, 38.072273, 48.163094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038767, -0.001573, 0.999247,
		-0.344428, -0.938695, -0.014840,
		0.938012, -0.344744, 0.035848,
		35.321087, 37.968849, 48.173847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.655663, 37.639858, 48.547817>,  <34.664478, 38.210171, 48.148754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.655663, 37.639858, 48.547817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031418, 37.776817, 48.554897>,  <35.256870, 37.858994, 48.559143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.031418, 37.776817, 48.554897>,  <34.655663, 37.639858, 48.547817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.031418, 37.776817, 48.554897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028763, 0.027271, 0.999214,
		0.341649, -0.939158, 0.035467,
		0.939387, 0.342401, 0.017696,
		35.313232, 37.879536, 48.560207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.893101, 37.353619, 49.138039>,  <34.655663, 37.639858, 48.547817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.893101, 37.353619, 49.138039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177673, 37.621029, 49.051376>,  <35.348415, 37.781475, 48.999378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.177673, 37.621029, 49.051376>,  <34.893101, 37.353619, 49.138039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.177673, 37.621029, 49.051376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197664, 0.105490, 0.974577,
		0.674383, -0.736171, -0.057094,
		0.711432, 0.668524, -0.216655,
		35.391102, 37.821587, 48.986382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.551472, 37.097248, 49.397137>,  <34.893101, 37.353619, 49.138039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.551472, 37.097248, 49.397137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556156, 37.495903, 49.364704>,  <35.558968, 37.735096, 49.345245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.556156, 37.495903, 49.364704>,  <35.551472, 37.097248, 49.397137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.556156, 37.495903, 49.364704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271988, 0.074853, 0.959385,
		0.962229, -0.033289, -0.270197,
		0.011712, 0.996639, -0.081080,
		35.559669, 37.794895, 49.340382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176876, 37.281445, 49.747543>,  <35.551472, 37.097248, 49.397137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176876, 37.281445, 49.747543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990414, 37.633854, 49.715275>,  <35.878536, 37.845299, 49.695915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.990414, 37.633854, 49.715275>,  <36.176876, 37.281445, 49.747543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.990414, 37.633854, 49.715275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355426, 0.269995, 0.894860,
		0.810170, 0.388468, -0.438996,
		-0.466151, 0.881019, -0.080670,
		35.850567, 37.898159, 49.691074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.608181, 37.677162, 49.903137>,  <36.176876, 37.281445, 49.747543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.608181, 37.677162, 49.903137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269081, 37.876244, 49.976467>,  <36.065620, 37.995693, 50.020466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.269081, 37.876244, 49.976467>,  <36.608181, 37.677162, 49.903137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.269081, 37.876244, 49.976467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313034, 0.190475, 0.930445,
		0.428168, 0.846173, -0.317274,
		-0.847751, 0.497705, 0.183326,
		36.014755, 38.025555, 50.031464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.814617, 38.037231, 50.450630>,  <36.608181, 37.677162, 49.903137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.814617, 38.037231, 50.450630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414764, 38.036583, 50.461521>,  <36.174854, 38.036194, 50.468056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.414764, 38.036583, 50.461521>,  <36.814617, 38.037231, 50.450630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414764, 38.036583, 50.461521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027246, -0.013210, 0.999542,
		-0.001262, 0.999911, 0.013250,
		-0.999628, -0.001622, 0.027226,
		36.114876, 38.036095, 50.469688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.627804, 38.624298, 50.802692>,  <36.814617, 38.037231, 50.450630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.627804, 38.624298, 50.802692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325764, 38.369225, 50.863594>,  <36.144539, 38.216179, 50.900135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.325764, 38.369225, 50.863594>,  <36.627804, 38.624298, 50.802692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325764, 38.369225, 50.863594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141506, 0.068239, 0.987583,
		-0.640158, 0.767267, 0.038709,
		-0.755098, -0.637687, 0.152257,
		36.099236, 38.177917, 50.909271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.339317, 38.830162, 51.429493>,  <36.627804, 38.624298, 50.802692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.339317, 38.830162, 51.429493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194805, 38.458950, 51.393196>,  <36.108097, 38.236221, 51.371418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.194805, 38.458950, 51.393196>,  <36.339317, 38.830162, 51.429493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.194805, 38.458950, 51.393196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040349, -0.112782, 0.992800,
		-0.931582, 0.355021, 0.078191,
		-0.361284, -0.928030, -0.090741,
		36.086418, 38.180542, 51.365974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917023, 38.750275, 52.057880>,  <36.339317, 38.830162, 51.429493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917023, 38.750275, 52.057880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027996, 38.393318, 51.915524>,  <36.094578, 38.179142, 51.830109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.027996, 38.393318, 51.915524>,  <35.917023, 38.750275, 52.057880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027996, 38.393318, 51.915524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098030, -0.342210, 0.934496,
		-0.955731, -0.294147, -0.007458,
		0.277431, -0.892395, -0.355896,
		36.111225, 38.125599, 51.808754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597134, 38.319370, 52.426662>,  <35.917023, 38.750275, 52.057880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597134, 38.319370, 52.426662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903660, 38.108223, 52.280178>,  <36.087574, 37.981533, 52.192287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903660, 38.108223, 52.280178>,  <35.597134, 38.319370, 52.426662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903660, 38.108223, 52.280178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251123, -0.278562, 0.927006,
		-0.591352, -0.802345, -0.080907,
		0.766316, -0.527869, -0.366215,
		36.133556, 37.949863, 52.170315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610569, 37.646660, 52.777752>,  <35.597134, 38.319370, 52.426662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610569, 37.646660, 52.777752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 37.674770, 52.621796>,  <36.198204, 37.691635, 52.528221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977840, 37.674770, 52.621796>,  <35.610569, 37.646660, 52.777752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977840, 37.674770, 52.621796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390671, -0.324033, 0.861614,
		-0.065788, -0.943432, -0.324974,
		0.918176, 0.070274, -0.389889,
		36.253292, 37.695854, 52.504829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.994617, 37.185917, 53.191116>,  <35.610569, 37.646660, 52.777752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.994617, 37.185917, 53.191116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288860, 37.403400, 53.029499>,  <36.465408, 37.533890, 52.932529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288860, 37.403400, 53.029499>,  <35.994617, 37.185917, 53.191116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288860, 37.403400, 53.029499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581814, -0.201624, 0.787934,
		0.346944, -0.814693, -0.464656,
		0.735610, 0.543713, -0.404047,
		36.509544, 37.566513, 52.908283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.435413, 36.630753, 53.215263>,  <35.994617, 37.185917, 53.191116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.435413, 36.630753, 53.215263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630733, 36.978256, 53.182232>,  <36.747925, 37.186760, 53.162415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.630733, 36.978256, 53.182232>,  <36.435413, 36.630753, 53.215263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.630733, 36.978256, 53.182232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517022, -0.211766, 0.829363,
		0.703032, -0.447669, -0.552573,
		0.488297, 0.868762, -0.082576,
		36.777222, 37.238884, 53.157459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105724, 36.451420, 53.204834>,  <36.435413, 36.630753, 53.215263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105724, 36.451420, 53.204834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084255, 36.829922, 53.332413>,  <37.071373, 37.057022, 53.408958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084255, 36.829922, 53.332413>,  <37.105724, 36.451420, 53.204834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084255, 36.829922, 53.332413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511123, -0.248356, 0.822844,
		0.857830, 0.207183, -0.470322,
		-0.053672, 0.946253, 0.318943,
		37.068153, 37.113796, 53.428097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841156, 36.679314, 53.407345>,  <37.105724, 36.451420, 53.204834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841156, 36.679314, 53.407345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589333, 36.922722, 53.600574>,  <37.438240, 37.068768, 53.716515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589333, 36.922722, 53.600574>,  <37.841156, 36.679314, 53.407345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589333, 36.922722, 53.600574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507431, -0.148809, 0.848746,
		0.588363, 0.779463, -0.215097,
		-0.629557, 0.608518, 0.483078,
		37.400467, 37.105278, 53.745499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.232140, 37.058567, 53.901840>,  <37.841156, 36.679314, 53.407345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.232140, 37.058567, 53.901840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857254, 37.091679, 54.037354>,  <37.632324, 37.111546, 54.118664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.857254, 37.091679, 54.037354>,  <38.232140, 37.058567, 53.901840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.857254, 37.091679, 54.037354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333405, -0.072349, 0.940003,
		0.102320, 0.993939, 0.040209,
		-0.937215, 0.082776, 0.338787,
		37.576088, 37.116512, 54.138988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198841, 37.584454, 54.419651>,  <38.232140, 37.058567, 53.901840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198841, 37.584454, 54.419651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893517, 37.331226, 54.471169>,  <37.710323, 37.179291, 54.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893517, 37.331226, 54.471169>,  <38.198841, 37.584454, 54.419651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893517, 37.331226, 54.471169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222972, -0.071057, 0.972232,
		-0.606337, 0.770829, 0.195395,
		-0.763308, -0.633067, 0.128789,
		37.664524, 37.141308, 54.509804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.882774, 37.860203, 55.045425>,  <38.198841, 37.584454, 54.419651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.882774, 37.860203, 55.045425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771812, 37.478394, 55.001728>,  <37.705235, 37.249310, 54.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.771812, 37.478394, 55.001728>,  <37.882774, 37.860203, 55.045425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.771812, 37.478394, 55.001728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097657, -0.141132, 0.985162,
		-0.955778, 0.262617, 0.132366,
		-0.277401, -0.954523, -0.109245,
		37.688591, 37.192036, 54.968956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.360989, 37.794899, 55.531143>,  <37.882774, 37.860203, 55.045425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.360989, 37.794899, 55.531143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481621, 37.424644, 55.439713>,  <37.554001, 37.202492, 55.384853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.481621, 37.424644, 55.439713>,  <37.360989, 37.794899, 55.531143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481621, 37.424644, 55.439713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087151, -0.265498, 0.960164,
		-0.949448, -0.269650, -0.160741,
		0.301585, -0.925635, -0.228577,
		37.572098, 37.146954, 55.371140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.914600, 37.336399, 55.892685>,  <37.360989, 37.794899, 55.531143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.914600, 37.336399, 55.892685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261570, 37.155193, 55.810364>,  <37.469753, 37.046471, 55.760971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261570, 37.155193, 55.810364>,  <36.914600, 37.336399, 55.892685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261570, 37.155193, 55.810364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239953, 0.018505, 0.970608,
		-0.435890, -0.891312, 0.124753,
		0.867423, -0.453013, -0.205807,
		37.521797, 37.019291, 55.748623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096218, 36.623112, 56.252934>,  <36.914600, 37.336399, 55.892685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096218, 36.623112, 56.252934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452438, 36.800472, 56.212288>,  <37.666168, 36.906887, 56.187901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.452438, 36.800472, 56.212288>,  <37.096218, 36.623112, 56.252934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.452438, 36.800472, 56.212288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241444, -0.271415, 0.931686,
		0.385527, -0.854244, -0.348763,
		0.890547, 0.443397, -0.101614,
		37.719601, 36.933491, 56.181805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488617, 36.244221, 56.643131>,  <37.096218, 36.623112, 56.252934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488617, 36.244221, 56.643131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716972, 36.571621, 56.668888>,  <37.853985, 36.768063, 56.684341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.716972, 36.571621, 56.668888>,  <37.488617, 36.244221, 56.643131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.716972, 36.571621, 56.668888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171759, -0.195754, 0.965494,
		0.802861, -0.540129, -0.252338,
		0.570887, 0.818499, 0.064391,
		37.888237, 36.817169, 56.688206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875732, 36.042145, 57.109531>,  <37.488617, 36.244221, 56.643131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875732, 36.042145, 57.109531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902306, 36.441261, 57.110538>,  <37.918251, 36.680729, 57.111145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.902306, 36.441261, 57.110538>,  <37.875732, 36.042145, 57.109531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.902306, 36.441261, 57.110538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120602, -0.010539, 0.992645,
		0.990475, -0.065642, -0.121035,
		0.066435, 0.997788, 0.002522,
		37.922237, 36.740597, 57.111294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588451, 36.440758, 57.296612>,  <37.875732, 36.042145, 57.109531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588451, 36.440758, 57.296612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231743, 36.588402, 57.401302>,  <38.017719, 36.676987, 57.464115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.231743, 36.588402, 57.401302>,  <38.588451, 36.440758, 57.296612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.231743, 36.588402, 57.401302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207345, -0.180773, 0.961420,
		0.402181, 0.911636, 0.084676,
		-0.891773, 0.369108, 0.261727,
		37.964211, 36.699135, 57.479820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.234428, 36.360336, 56.836079>,  <38.588451, 36.440758, 57.296612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.234428, 36.360336, 56.836079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066582, 36.510868, 56.505672>,  <38.965874, 36.601189, 56.307430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066582, 36.510868, 56.505672>,  <39.234428, 36.360336, 56.836079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066582, 36.510868, 56.505672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871375, 0.087855, 0.482689,
		0.254220, 0.922311, 0.291059,
		-0.419618, 0.376330, -0.826012,
		38.940697, 36.623768, 56.257870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.789703, 36.125450, 56.299843>,  <39.234428, 36.360336, 56.836079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.789703, 36.125450, 56.299843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837189, 35.893406, 56.622177>,  <38.865681, 35.754177, 56.815578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837189, 35.893406, 56.622177>,  <38.789703, 36.125450, 56.299843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837189, 35.893406, 56.622177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363078, -0.780735, -0.508554,
		0.924165, -0.232212, -0.303309,
		0.118712, -0.580113, 0.805839,
		38.872803, 35.719372, 56.863930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.262600, 35.512596, 56.316933>,  <38.789703, 36.125450, 56.299843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.262600, 35.512596, 56.316933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928616, 35.454979, 56.529385>,  <38.728226, 35.420410, 56.656857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928616, 35.454979, 56.529385>,  <39.262600, 35.512596, 56.316933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928616, 35.454979, 56.529385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158514, -0.861280, -0.482773,
		0.526988, -0.487287, 0.696301,
		-0.834959, -0.144042, 0.531126,
		38.678127, 35.411766, 56.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146626, 34.810699, 56.264225>,  <39.262600, 35.512596, 56.316933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146626, 34.810699, 56.264225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812904, 35.003464, 56.371342>,  <38.612671, 35.119122, 56.435612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812904, 35.003464, 56.371342>,  <39.146626, 34.810699, 56.264225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812904, 35.003464, 56.371342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546339, -0.657594, -0.518733,
		-0.073885, -0.579082, 0.811915,
		-0.834299, 0.481907, 0.267789,
		38.562614, 35.148037, 56.451679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669708, 34.232815, 56.389954>,  <39.146626, 34.810699, 56.264225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.669708, 34.232815, 56.389954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499962, 34.577538, 56.278809>,  <38.398113, 34.784370, 56.212120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.499962, 34.577538, 56.278809>,  <38.669708, 34.232815, 56.389954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.499962, 34.577538, 56.278809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676056, -0.505698, -0.535926,
		-0.602376, -0.039581, 0.797230,
		-0.424370, 0.861802, -0.277861,
		38.372650, 34.836079, 56.195450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856781, 34.129822, 56.477654>,  <38.669708, 34.232815, 56.389954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856781, 34.129822, 56.477654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976082, 34.402283, 56.210197>,  <38.047661, 34.565758, 56.049725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.976082, 34.402283, 56.210197>,  <37.856781, 34.129822, 56.477654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.976082, 34.402283, 56.210197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665325, -0.353927, -0.657327,
		-0.684389, 0.640911, 0.347628,
		0.298253, 0.681153, -0.668638,
		38.065559, 34.606628, 56.009605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276302, 34.469532, 56.202648>,  <37.856781, 34.129822, 56.477654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276302, 34.469532, 56.202648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591850, 34.434837, 55.959282>,  <37.781178, 34.414021, 55.813263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.591850, 34.434837, 55.959282>,  <37.276302, 34.469532, 56.202648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.591850, 34.434837, 55.959282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577686, -0.442430, -0.685955,
		-0.209685, 0.892599, -0.399124,
		0.788867, -0.086734, -0.608413,
		37.828510, 34.408817, 55.776756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.930138, 34.240410, 55.541634>,  <37.276302, 34.469532, 56.202648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.930138, 34.240410, 55.541634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309853, 34.243336, 55.415901>,  <37.537682, 34.245090, 55.340462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.309853, 34.243336, 55.415901>,  <36.930138, 34.240410, 55.541634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309853, 34.243336, 55.415901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297727, -0.300432, -0.906145,
		-0.101061, 0.953775, -0.283018,
		0.949287, 0.007314, -0.314326,
		37.594639, 34.245529, 55.321602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.975056, 34.659367, 55.010479>,  <36.930138, 34.240410, 55.541634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.975056, 34.659367, 55.010479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298420, 34.429226, 54.960770>,  <37.492439, 34.291142, 54.930946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.298420, 34.429226, 54.960770>,  <36.975056, 34.659367, 55.010479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298420, 34.429226, 54.960770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252956, -0.148950, -0.955943,
		0.531494, 0.804229, -0.265951,
		0.808410, -0.575352, -0.124269,
		37.540943, 34.256618, 54.923489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370117, 34.849110, 54.350700>,  <36.975056, 34.659367, 55.010479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370117, 34.849110, 54.350700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494938, 34.480919, 54.444798>,  <37.569832, 34.260002, 54.501255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.494938, 34.480919, 54.444798>,  <37.370117, 34.849110, 54.350700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494938, 34.480919, 54.444798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054494, -0.264543, -0.962833,
		0.948501, 0.287635, -0.132712,
		0.312053, -0.920480, 0.235245,
		37.588554, 34.204777, 54.515369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.765705, 34.657124, 53.833424>,  <37.370117, 34.849110, 54.350700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.765705, 34.657124, 53.833424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670330, 34.300285, 53.986950>,  <37.613106, 34.086182, 54.079063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670330, 34.300285, 53.986950>,  <37.765705, 34.657124, 53.833424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670330, 34.300285, 53.986950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252688, -0.324609, -0.911470,
		0.937709, -0.314310, -0.148025,
		-0.238434, -0.892098, 0.383811,
		37.598801, 34.032658, 54.102093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.990005, 34.172920, 53.366943>,  <37.765705, 34.657124, 53.833424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.990005, 34.172920, 53.366943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702675, 33.983345, 53.570667>,  <37.530277, 33.869602, 53.692902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.702675, 33.983345, 53.570667>,  <37.990005, 34.172920, 53.366943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.702675, 33.983345, 53.570667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263987, -0.491641, -0.829819,
		0.643677, -0.730531, 0.228046,
		-0.718325, -0.473934, 0.509309,
		37.487179, 33.841164, 53.723461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.000919, 33.535835, 53.173916>,  <37.990005, 34.172920, 53.366943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.000919, 33.535835, 53.173916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629139, 33.574142, 53.316437>,  <37.406071, 33.597126, 53.401947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.629139, 33.574142, 53.316437>,  <38.000919, 33.535835, 53.173916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.629139, 33.574142, 53.316437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365518, -0.370322, -0.853966,
		0.050166, -0.923954, 0.379200,
		-0.929451, 0.095765, 0.356300,
		37.350304, 33.602871, 53.423328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773487, 32.935524, 53.174351>,  <38.000919, 33.535835, 53.173916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773487, 32.935524, 53.174351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453342, 33.175308, 53.170853>,  <37.261257, 33.319180, 53.168755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453342, 33.175308, 53.170853>,  <37.773487, 32.935524, 53.174351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453342, 33.175308, 53.170853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308737, -0.424620, -0.851105,
		-0.513912, -0.678491, 0.524923,
		-0.800360, 0.599456, -0.008742,
		37.213234, 33.355145, 53.168228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277008, 32.558228, 52.865833>,  <37.773487, 32.935524, 53.174351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277008, 32.558228, 52.865833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119888, 32.925125, 52.839405>,  <37.025616, 33.145264, 52.823547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.119888, 32.925125, 52.839405>,  <37.277008, 32.558228, 52.865833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119888, 32.925125, 52.839405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489793, -0.269470, -0.829149,
		-0.778339, -0.293329, 0.555109,
		-0.392799, 0.917248, -0.066068,
		37.002048, 33.200298, 52.819584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565426, 32.477066, 52.680462>,  <37.277008, 32.558228, 52.865833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565426, 32.477066, 52.680462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661446, 32.849751, 52.571442>,  <36.719055, 33.073360, 52.506027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.661446, 32.849751, 52.571442>,  <36.565426, 32.477066, 52.680462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661446, 32.849751, 52.571442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435973, -0.147386, -0.887809,
		-0.867356, 0.331940, 0.370824,
		0.240045, 0.931715, -0.272553,
		36.733459, 33.129265, 52.489677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.963692, 32.667694, 52.291477>,  <36.565426, 32.477066, 52.680462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.963692, 32.667694, 52.291477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260616, 32.915630, 52.189674>,  <36.438770, 33.064392, 52.128593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.260616, 32.915630, 52.189674>,  <35.963692, 32.667694, 52.291477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.260616, 32.915630, 52.189674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315883, -0.011253, -0.948732,
		-0.590925, 0.784648, 0.187443,
		0.742311, 0.619839, -0.254507,
		36.483311, 33.101582, 52.113323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.672588, 33.074768, 51.729233>,  <35.963692, 32.667694, 52.291477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.672588, 33.074768, 51.729233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063133, 33.159027, 51.709866>,  <36.297459, 33.209583, 51.698246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.063133, 33.159027, 51.709866>,  <35.672588, 33.074768, 51.729233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063133, 33.159027, 51.709866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057198, 0.035769, -0.997722,
		-0.208433, 0.976908, 0.046972,
		0.976363, 0.210645, -0.048422,
		36.356041, 33.222221, 51.695339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.763226, 33.849945, 51.530399>,  <35.672588, 33.074768, 51.729233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.763226, 33.849945, 51.530399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100990, 33.659260, 51.432659>,  <36.303650, 33.544849, 51.374016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100990, 33.659260, 51.432659>,  <35.763226, 33.849945, 51.530399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100990, 33.659260, 51.432659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121852, 0.273258, -0.954192,
		0.521646, 0.835509, 0.172655,
		0.844415, -0.476712, -0.244352,
		36.354317, 33.516247, 51.359352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.146362, 34.280899, 50.970242>,  <35.763226, 33.849945, 51.530399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.146362, 34.280899, 50.970242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287807, 33.909245, 50.927055>,  <36.372673, 33.686253, 50.901142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.287807, 33.909245, 50.927055>,  <36.146362, 34.280899, 50.970242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.287807, 33.909245, 50.927055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150957, 0.057227, -0.986882,
		0.923131, 0.365270, -0.120025,
		0.353610, -0.929141, -0.107969,
		36.393890, 33.630501, 50.894665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.654942, 34.335022, 50.466705>,  <36.146362, 34.280899, 50.970242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.654942, 34.335022, 50.466705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496742, 33.968925, 50.497456>,  <36.401821, 33.749268, 50.515903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.496742, 33.968925, 50.497456>,  <36.654942, 34.335022, 50.466705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.496742, 33.968925, 50.497456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282729, 0.041687, -0.958293,
		0.873867, -0.400740, -0.275253,
		-0.395501, -0.915243, 0.076872,
		36.378094, 33.694351, 50.520515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017246, 33.904186, 50.040321>,  <36.654942, 34.335022, 50.466705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017246, 33.904186, 50.040321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639164, 33.785595, 50.094994>,  <36.412315, 33.714439, 50.127796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639164, 33.785595, 50.094994>,  <37.017246, 33.904186, 50.040321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639164, 33.785595, 50.094994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150909, 0.025550, -0.988217,
		0.289494, -0.954697, -0.068891,
		-0.945209, -0.296479, 0.136676,
		36.355602, 33.696651, 50.135998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.961552, 33.373417, 49.508053>,  <37.017246, 33.904186, 50.040321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.961552, 33.373417, 49.508053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586510, 33.441921, 49.629097>,  <36.361485, 33.483025, 49.701721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.586510, 33.441921, 49.629097>,  <36.961552, 33.373417, 49.508053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.586510, 33.441921, 49.629097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295860, 0.064260, -0.953067,
		-0.182670, -0.983128, -0.009580,
		-0.937603, 0.171262, 0.302607,
		36.305229, 33.493301, 49.719879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.579041, 33.015915, 49.022366>,  <36.961552, 33.373417, 49.508053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.579041, 33.015915, 49.022366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293785, 33.231716, 49.201420>,  <36.122631, 33.361195, 49.308853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293785, 33.231716, 49.201420>,  <36.579041, 33.015915, 49.022366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293785, 33.231716, 49.201420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497002, 0.061234, -0.865586,
		-0.494393, -0.839757, 0.224464,
		-0.713137, 0.539499, 0.447634,
		36.079845, 33.393566, 49.335709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894073, 32.595100, 48.899666>,  <36.579041, 33.015915, 49.022366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894073, 32.595100, 48.899666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811817, 32.980930, 48.965775>,  <35.762463, 33.212429, 49.005440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.811817, 32.980930, 48.965775>,  <35.894073, 32.595100, 48.899666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811817, 32.980930, 48.965775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620012, 0.002254, -0.784589,
		-0.757164, -0.263815, 0.597582,
		-0.205640, 0.964570, 0.165275,
		35.750126, 33.270302, 49.015358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.171280, 32.561001, 48.872749>,  <35.894073, 32.595100, 48.899666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.171280, 32.561001, 48.872749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315849, 32.929363, 48.814362>,  <35.402592, 33.150379, 48.779327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315849, 32.929363, 48.814362>,  <35.171280, 32.561001, 48.872749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315849, 32.929363, 48.814362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591975, 0.105684, -0.798997,
		-0.720374, 0.375185, 0.583350,
		0.361422, 0.920906, -0.145968,
		35.424274, 33.205635, 48.770573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637886, 32.922062, 48.802021>,  <35.171280, 32.561001, 48.872749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637886, 32.922062, 48.802021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918678, 33.163101, 48.650177>,  <35.087154, 33.307724, 48.559071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.918678, 33.163101, 48.650177>,  <34.637886, 32.922062, 48.802021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.918678, 33.163101, 48.650177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597695, 0.208620, -0.774105,
		-0.387279, 0.770295, 0.506616,
		0.701980, 0.602597, -0.379607,
		35.129272, 33.343880, 48.536293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280853, 33.536091, 48.502583>,  <34.637886, 32.922062, 48.802021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280853, 33.536091, 48.502583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642094, 33.500328, 48.334579>,  <34.858837, 33.478870, 48.233776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.642094, 33.500328, 48.334579>,  <34.280853, 33.536091, 48.502583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.642094, 33.500328, 48.334579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418481, 0.036139, -0.907507,
		0.096316, 0.995339, -0.004778,
		0.903104, -0.089407, -0.420011,
		34.913025, 33.473507, 48.208576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239246, 33.920555, 47.896679>,  <34.280853, 33.536091, 48.502583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239246, 33.920555, 47.896679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581264, 33.736607, 47.800831>,  <34.786476, 33.626240, 47.743320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.581264, 33.736607, 47.800831>,  <34.239246, 33.920555, 47.896679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.581264, 33.736607, 47.800831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329338, -0.124662, -0.935946,
		0.400539, 0.879194, -0.258043,
		0.855047, -0.459867, -0.239620,
		34.837780, 33.598648, 47.728943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.488323, 34.247913, 47.334545>,  <34.239246, 33.920555, 47.896679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.488323, 34.247913, 47.334545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681358, 33.899166, 47.301193>,  <34.797180, 33.689919, 47.281181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681358, 33.899166, 47.301193>,  <34.488323, 34.247913, 47.334545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681358, 33.899166, 47.301193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244147, -0.042487, -0.968807,
		0.841131, 0.487891, -0.233368,
		0.482588, -0.871870, -0.083380,
		34.826134, 33.637604, 47.276180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808956, 34.318153, 46.814484>,  <34.488323, 34.247913, 47.334545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808956, 34.318153, 46.814484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836819, 33.920616, 46.848961>,  <34.853539, 33.682095, 46.869648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836819, 33.920616, 46.848961>,  <34.808956, 34.318153, 46.814484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836819, 33.920616, 46.848961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066944, -0.090869, -0.993610,
		0.995322, 0.063443, -0.072861,
		0.069659, -0.993840, 0.086197,
		34.857716, 33.622463, 46.874821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.327232, 34.111115, 46.424534>,  <34.808956, 34.318153, 46.814484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.327232, 34.111115, 46.424534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083172, 33.796989, 46.466488>,  <34.936737, 33.608517, 46.491661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.083172, 33.796989, 46.466488>,  <35.327232, 34.111115, 46.424534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.083172, 33.796989, 46.466488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009477, -0.125143, -0.992094,
		0.792228, -0.606322, 0.068914,
		-0.610152, -0.785311, 0.104888,
		34.900127, 33.561398, 46.497955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.483044, 33.596252, 45.852238>,  <35.327232, 34.111115, 46.424534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.483044, 33.596252, 45.852238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116177, 33.492104, 45.972908>,  <34.896057, 33.429615, 46.045311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.116177, 33.492104, 45.972908>,  <35.483044, 33.596252, 45.852238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.116177, 33.492104, 45.972908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326227, 0.055825, -0.943641,
		0.228858, -0.963893, -0.136141,
		-0.917169, -0.260373, 0.301672,
		34.841026, 33.413990, 46.063408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298748, 33.154263, 45.324749>,  <35.483044, 33.596252, 45.852238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298748, 33.154263, 45.324749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947140, 33.248169, 45.490742>,  <34.736176, 33.304512, 45.590336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.947140, 33.248169, 45.490742>,  <35.298748, 33.154263, 45.324749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947140, 33.248169, 45.490742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423637, 0.014765, -0.905712,
		-0.218762, -0.971939, 0.086479,
		-0.879020, 0.234771, 0.414979,
		34.683434, 33.318600, 45.615234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.742107, 32.892479, 44.845901>,  <35.298748, 33.154263, 45.324749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.742107, 32.892479, 44.845901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524475, 33.136169, 45.076660>,  <34.393894, 33.282383, 45.215118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.524475, 33.136169, 45.076660>,  <34.742107, 32.892479, 44.845901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524475, 33.136169, 45.076660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717512, 0.018562, -0.696299,
		-0.434912, -0.792779, 0.427028,
		-0.544085, 0.609227, 0.576901,
		34.361248, 33.318939, 45.249729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.991745, 32.577766, 44.916580>,  <34.742107, 32.892479, 44.845901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.991745, 32.577766, 44.916580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980446, 32.973804, 44.971581>,  <33.973667, 33.211430, 45.004581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.980446, 32.973804, 44.971581>,  <33.991745, 32.577766, 44.916580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980446, 32.973804, 44.971581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574342, 0.096505, -0.812907,
		-0.818128, -0.101932, 0.565929,
		-0.028247, 0.990099, 0.137497,
		33.971973, 33.270836, 45.012829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252682, 32.837906, 45.027985>,  <33.991745, 32.577766, 44.916580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252682, 32.837906, 45.027985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473923, 33.140396, 44.888157>,  <33.606667, 33.321892, 44.804260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473923, 33.140396, 44.888157>,  <33.252682, 32.837906, 45.027985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473923, 33.140396, 44.888157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596835, 0.066914, -0.799569,
		-0.581265, 0.650878, 0.488353,
		0.553100, 0.756227, -0.349573,
		33.639854, 33.367264, 44.783283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770828, 33.247631, 44.779606>,  <33.252682, 32.837906, 45.027985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770828, 33.247631, 44.779606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115784, 33.367390, 44.616314>,  <33.322758, 33.439247, 44.518341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.115784, 33.367390, 44.616314>,  <32.770828, 33.247631, 44.779606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.115784, 33.367390, 44.616314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431650, 0.013541, -0.901939,
		-0.264511, 0.954032, 0.140913,
		0.862387, 0.299398, -0.408227,
		33.374500, 33.457211, 44.493847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.582336, 33.768112, 44.390942>,  <32.770828, 33.247631, 44.779606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.582336, 33.768112, 44.390942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940510, 33.670162, 44.242222>,  <33.155415, 33.611393, 44.152988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.940510, 33.670162, 44.242222>,  <32.582336, 33.768112, 44.390942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.940510, 33.670162, 44.242222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317780, 0.233331, -0.919006,
		0.311791, 0.941060, 0.131117,
		0.895434, -0.244872, -0.371801,
		33.209141, 33.596699, 44.130680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814072, 34.282764, 43.987801>,  <32.582336, 33.768112, 44.390942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814072, 34.282764, 43.987801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037437, 33.987206, 43.836967>,  <33.171459, 33.809868, 43.746468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037437, 33.987206, 43.836967>,  <32.814072, 34.282764, 43.987801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037437, 33.987206, 43.836967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167447, 0.344808, -0.923617,
		0.812484, 0.578907, 0.068821,
		0.558419, -0.738900, -0.377087,
		33.204964, 33.765537, 43.723843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342476, 34.593472, 43.538826>,  <32.814072, 34.282764, 43.987801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342476, 34.593472, 43.538826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305069, 34.209217, 43.434189>,  <33.282627, 33.978664, 43.371407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.305069, 34.209217, 43.434189>,  <33.342476, 34.593472, 43.538826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.305069, 34.209217, 43.434189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105958, 0.270855, -0.956771,
		0.989964, -0.061754, -0.127116,
		-0.093514, -0.960637, -0.261593,
		33.277016, 33.921024, 43.355713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.872383, 34.498447, 43.054340>,  <33.342476, 34.593472, 43.538826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.872383, 34.498447, 43.054340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588467, 34.220314, 43.009243>,  <33.418118, 34.053436, 42.982185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.588467, 34.220314, 43.009243>,  <33.872383, 34.498447, 43.054340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588467, 34.220314, 43.009243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078084, 0.236733, -0.968432,
		0.700072, -0.678580, -0.222325,
		-0.709790, -0.695332, -0.112744,
		33.375530, 34.011715, 42.975418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956116, 34.212742, 42.476677>,  <33.872383, 34.498447, 43.054340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.956116, 34.212742, 42.476677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574310, 34.109200, 42.535866>,  <33.345226, 34.047073, 42.571381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.574310, 34.109200, 42.535866>,  <33.956116, 34.212742, 42.476677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.574310, 34.109200, 42.535866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199711, 0.186546, -0.961933,
		0.221406, -0.947729, -0.229759,
		-0.954513, -0.258863, 0.147969,
		33.287956, 34.031544, 42.580257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.843975, 33.860207, 41.958462>,  <33.956116, 34.212742, 42.476677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.843975, 33.860207, 41.958462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480595, 33.965588, 42.088264>,  <33.262566, 34.028816, 42.166145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.480595, 33.965588, 42.088264>,  <33.843975, 33.860207, 41.958462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.480595, 33.965588, 42.088264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314023, 0.082226, -0.945848,
		-0.275871, -0.961161, 0.008033,
		-0.908452, 0.263454, 0.324511,
		33.208057, 34.044624, 42.185619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525742, 33.409081, 41.474751>,  <33.843975, 33.860207, 41.958462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525742, 33.409081, 41.474751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273140, 33.686302, 41.613827>,  <33.121578, 33.852634, 41.697273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.273140, 33.686302, 41.613827>,  <33.525742, 33.409081, 41.474751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.273140, 33.686302, 41.613827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287706, 0.206959, -0.935090,
		-0.720022, -0.690542, 0.068700,
		-0.631501, 0.693050, 0.347688,
		33.083691, 33.894218, 41.718132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.811924, 32.671711, 41.408932>,  <33.525742, 33.409081, 41.474751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.811924, 32.671711, 41.408932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167191, 32.651566, 41.226234>,  <34.380352, 32.639477, 41.116615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.167191, 32.651566, 41.226234>,  <33.811924, 32.671711, 41.408932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.167191, 32.651566, 41.226234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280388, -0.728085, 0.625519,
		-0.364055, -0.683634, -0.632542,
		0.888170, -0.050366, -0.456746,
		34.433643, 32.636456, 41.089211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937000, 31.956059, 41.261177>,  <33.811924, 32.671711, 41.408932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937000, 31.956059, 41.261177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269718, 32.177208, 41.280960>,  <34.469349, 32.309898, 41.292831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.269718, 32.177208, 41.280960>,  <33.937000, 31.956059, 41.261177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269718, 32.177208, 41.280960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352773, -0.595330, 0.721896,
		0.428563, -0.583022, -0.690231,
		0.831797, 0.552873, 0.049462,
		34.519257, 32.343071, 41.295799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460876, 31.562820, 41.230518>,  <33.937000, 31.956059, 41.261177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460876, 31.562820, 41.230518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652378, 31.871603, 41.397793>,  <34.767281, 32.056873, 41.498158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652378, 31.871603, 41.397793>,  <34.460876, 31.562820, 41.230518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652378, 31.871603, 41.397793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265180, -0.581222, 0.769325,
		0.836943, -0.257423, -0.482969,
		0.478754, 0.771955, 0.418186,
		34.796005, 32.103191, 41.523251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170177, 31.323153, 41.406567>,  <34.460876, 31.562820, 41.230518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170177, 31.323153, 41.406567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115952, 31.649944, 41.630768>,  <35.083416, 31.846020, 41.765289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115952, 31.649944, 41.630768>,  <35.170177, 31.323153, 41.406567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115952, 31.649944, 41.630768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398181, -0.473105, 0.785890,
		0.907235, 0.329719, -0.261172,
		-0.135561, 0.816981, 0.560505,
		35.075283, 31.895039, 41.798920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.799385, 31.511318, 41.617943>,  <35.170177, 31.323153, 41.406567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.799385, 31.511318, 41.617943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555511, 31.675083, 41.889431>,  <35.409187, 31.773342, 42.052322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.555511, 31.675083, 41.889431>,  <35.799385, 31.511318, 41.617943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555511, 31.675083, 41.889431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557936, -0.386550, 0.734361,
		0.563017, 0.826414, 0.007248,
		-0.609688, 0.409414, 0.678720,
		35.372604, 31.797907, 42.093048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.231800, 31.584436, 42.221390>,  <35.799385, 31.511318, 41.617943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.231800, 31.584436, 42.221390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860973, 31.622293, 42.366489>,  <35.638477, 31.645008, 42.453548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860973, 31.622293, 42.366489>,  <36.231800, 31.584436, 42.221390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860973, 31.622293, 42.366489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302793, -0.381475, 0.873380,
		0.221037, 0.919522, 0.324997,
		-0.927070, 0.094642, 0.362745,
		35.582851, 31.650686, 42.475311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327782, 32.004265, 42.787556>,  <36.231800, 31.584436, 42.221390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327782, 32.004265, 42.787556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970749, 31.839439, 42.860767>,  <35.756531, 31.740543, 42.904694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.970749, 31.839439, 42.860767>,  <36.327782, 32.004265, 42.787556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.970749, 31.839439, 42.860767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243640, -0.099213, 0.964778,
		-0.379393, 0.905737, 0.188951,
		-0.892581, -0.412066, 0.183033,
		35.702976, 31.715820, 42.915676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.100555, 32.333508, 43.279831>,  <36.327782, 32.004265, 42.787556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.100555, 32.333508, 43.279831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894039, 31.991226, 43.293755>,  <35.770130, 31.785856, 43.302109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.894039, 31.991226, 43.293755>,  <36.100555, 32.333508, 43.279831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.894039, 31.991226, 43.293755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241490, -0.106462, 0.964546,
		-0.821663, 0.506390, 0.261610,
		-0.516287, -0.855708, 0.034813,
		35.739155, 31.734514, 43.304199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.707615, 32.437778, 43.873142>,  <36.100555, 32.333508, 43.279831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.707615, 32.437778, 43.873142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721390, 32.043392, 43.807793>,  <35.729652, 31.806761, 43.768585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.721390, 32.043392, 43.807793>,  <35.707615, 32.437778, 43.873142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.721390, 32.043392, 43.807793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328351, -0.143233, 0.933633,
		-0.943928, -0.085792, 0.318810,
		0.034435, -0.985964, -0.163371,
		35.731720, 31.747602, 43.758781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.423862, 32.205708, 44.397854>,  <35.707615, 32.437778, 43.873142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.423862, 32.205708, 44.397854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602058, 31.879168, 44.250828>,  <35.708977, 31.683243, 44.162613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.602058, 31.879168, 44.250828>,  <35.423862, 32.205708, 44.397854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602058, 31.879168, 44.250828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147211, -0.338179, 0.929497,
		-0.883100, -0.468193, -0.030480,
		0.445491, -0.816352, -0.367569,
		35.735706, 31.634262, 44.140556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165127, 31.839920, 44.804359>,  <35.423862, 32.205708, 44.397854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165127, 31.839920, 44.804359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488842, 31.648825, 44.667641>,  <35.683071, 31.534168, 44.585609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488842, 31.648825, 44.667641>,  <35.165127, 31.839920, 44.804359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488842, 31.648825, 44.667641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336730, -0.099482, 0.936331,
		-0.481323, -0.872852, 0.080360,
		0.809284, -0.477737, -0.341798,
		35.731628, 31.505505, 44.565102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289127, 31.264185, 45.228683>,  <35.165127, 31.839920, 44.804359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289127, 31.264185, 45.228683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641396, 31.344618, 45.057114>,  <35.852757, 31.392878, 44.954170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.641396, 31.344618, 45.057114>,  <35.289127, 31.264185, 45.228683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641396, 31.344618, 45.057114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442559, -0.026261, 0.896355,
		0.168977, -0.979222, -0.112117,
		0.880675, 0.201081, -0.428926,
		35.905598, 31.404942, 44.928436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.731724, 30.804945, 45.501881>,  <35.289127, 31.264185, 45.228683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.731724, 30.804945, 45.501881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973957, 31.088228, 45.356709>,  <36.119297, 31.258198, 45.269608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.973957, 31.088228, 45.356709>,  <35.731724, 30.804945, 45.501881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.973957, 31.088228, 45.356709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474554, 0.044712, 0.879090,
		0.638806, -0.704587, -0.309006,
		0.605579, 0.708208, -0.362926,
		36.155632, 31.300690, 45.247829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320911, 30.520716, 45.722137>,  <35.731724, 30.804945, 45.501881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320911, 30.520716, 45.722137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364693, 30.913857, 45.662781>,  <36.390961, 31.149740, 45.627167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.364693, 30.913857, 45.662781>,  <36.320911, 30.520716, 45.722137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.364693, 30.913857, 45.662781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470922, 0.080197, 0.878522,
		0.875358, -0.166041, -0.454069,
		0.109455, 0.982852, -0.148394,
		36.397530, 31.208712, 45.618263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050892, 30.718853, 45.866905>,  <36.320911, 30.520716, 45.722137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050892, 30.718853, 45.866905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835197, 31.053650, 45.904144>,  <36.705780, 31.254528, 45.926487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.835197, 31.053650, 45.904144>,  <37.050892, 30.718853, 45.866905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.835197, 31.053650, 45.904144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583759, 0.291813, 0.757675,
		0.607000, 0.462914, -0.645958,
		-0.539237, 0.836992, 0.093100,
		36.673428, 31.304747, 45.932076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555031, 31.035391, 46.211685>,  <37.050892, 30.718853, 45.866905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555031, 31.035391, 46.211685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221962, 31.249388, 46.268867>,  <37.022121, 31.377787, 46.303177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221962, 31.249388, 46.268867>,  <37.555031, 31.035391, 46.211685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221962, 31.249388, 46.268867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387837, 0.379142, 0.840140,
		0.395268, 0.755006, -0.523191,
		-0.832674, 0.534993, 0.142957,
		36.972160, 31.409885, 46.311756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827412, 31.610823, 46.511421>,  <37.555031, 31.035391, 46.211685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827412, 31.610823, 46.511421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435833, 31.593830, 46.591274>,  <37.200886, 31.583633, 46.639187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.435833, 31.593830, 46.591274>,  <37.827412, 31.610823, 46.511421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.435833, 31.593830, 46.591274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181533, 0.265851, 0.946768,
		-0.093293, 0.963077, -0.252543,
		-0.978949, -0.042482, 0.199633,
		37.142147, 31.581085, 46.651165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.676899, 32.145073, 46.935490>,  <37.827412, 31.610823, 46.511421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.676899, 32.145073, 46.935490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355640, 31.913445, 46.991531>,  <37.162884, 31.774467, 47.025154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355640, 31.913445, 46.991531>,  <37.676899, 32.145073, 46.935490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355640, 31.913445, 46.991531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124693, 0.066567, 0.989960,
		-0.582585, 0.812554, 0.018743,
		-0.803148, -0.579073, 0.140100,
		37.114697, 31.739723, 47.033562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186817, 32.527260, 47.406372>,  <37.676899, 32.145073, 46.935490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186817, 32.527260, 47.406372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117500, 32.134014, 47.429897>,  <37.075912, 31.898067, 47.444012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117500, 32.134014, 47.429897>,  <37.186817, 32.527260, 47.406372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117500, 32.134014, 47.429897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007225, 0.060983, 0.998113,
		-0.984845, 0.172536, -0.017670,
		-0.173288, -0.983114, 0.058812,
		37.065514, 31.839081, 47.447540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819252, 32.445381, 47.992504>,  <37.186817, 32.527260, 47.406372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819252, 32.445381, 47.992504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911362, 32.059719, 47.939770>,  <36.966625, 31.828321, 47.908127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.911362, 32.059719, 47.939770>,  <36.819252, 32.445381, 47.992504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.911362, 32.059719, 47.939770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025130, -0.141326, 0.989644,
		-0.972802, -0.224574, -0.056773,
		0.230272, -0.964154, -0.131838,
		36.980442, 31.770473, 47.900219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468075, 32.173855, 48.500683>,  <36.819252, 32.445381, 47.992504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468075, 32.173855, 48.500683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760593, 31.917177, 48.408215>,  <36.936104, 31.763172, 48.352734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760593, 31.917177, 48.408215>,  <36.468075, 32.173855, 48.500683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760593, 31.917177, 48.408215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265171, -0.044784, 0.963161,
		-0.628405, -0.765654, 0.137408,
		0.731294, -0.641691, -0.231172,
		36.979980, 31.724670, 48.338863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426346, 31.595572, 49.052898>,  <36.468075, 32.173855, 48.500683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426346, 31.595572, 49.052898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 31.571577, 48.878296>,  <37.000874, 31.557180, 48.773533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785427, 31.571577, 48.878296>,  <36.426346, 31.595572, 49.052898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785427, 31.571577, 48.878296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420218, -0.181332, 0.889121,
		-0.132486, -0.981591, -0.137575,
		0.897700, -0.059984, -0.436506,
		37.054737, 31.553581, 48.747345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680305, 31.167013, 49.444576>,  <36.426346, 31.595572, 49.052898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680305, 31.167013, 49.444576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001339, 31.310616, 49.254005>,  <37.193958, 31.396776, 49.139664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.001339, 31.310616, 49.254005>,  <36.680305, 31.167013, 49.444576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001339, 31.310616, 49.254005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523807, -0.041925, 0.850805,
		0.285471, -0.932392, -0.221699,
		0.802578, 0.359007, -0.476425,
		37.242111, 31.418318, 49.111076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.230862, 30.732855, 49.664291>,  <36.680305, 31.167013, 49.444576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.230862, 30.732855, 49.664291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391613, 31.075871, 49.535843>,  <37.488064, 31.281681, 49.458775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.391613, 31.075871, 49.535843>,  <37.230862, 30.732855, 49.664291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.391613, 31.075871, 49.535843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561342, 0.046344, 0.826285,
		0.723455, -0.512324, -0.462749,
		0.401880, 0.857541, -0.321117,
		37.512177, 31.333132, 49.439507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999302, 30.654892, 49.586464>,  <37.230862, 30.732855, 49.664291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999302, 30.654892, 49.586464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926178, 31.045006, 49.636105>,  <37.882305, 31.279074, 49.665890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.926178, 31.045006, 49.636105>,  <37.999302, 30.654892, 49.586464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.926178, 31.045006, 49.636105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686037, 0.036126, 0.726670,
		0.704226, 0.217979, -0.675685,
		-0.182808, 0.975285, 0.124101,
		37.871334, 31.337591, 49.673336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549229, 30.900070, 49.903568>,  <37.999302, 30.654892, 49.586464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549229, 30.900070, 49.903568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337479, 31.235931, 49.952137>,  <38.210426, 31.437449, 49.981277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.337479, 31.235931, 49.952137>,  <38.549229, 30.900070, 49.903568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.337479, 31.235931, 49.952137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455654, 0.160668, 0.875537,
		0.715637, 0.518817, -0.467645,
		-0.529380, 0.839651, 0.121421,
		38.178665, 31.487827, 49.988564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.061489, 31.556377, 49.946617>,  <38.549229, 30.900070, 49.903568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.061489, 31.556377, 49.946617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715908, 31.628689, 50.134621>,  <38.508560, 31.672075, 50.247421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.715908, 31.628689, 50.134621>,  <39.061489, 31.556377, 49.946617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.715908, 31.628689, 50.134621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500666, 0.208146, 0.840243,
		0.054068, 0.961246, -0.270338,
		-0.863950, 0.180780, 0.470009,
		38.456722, 31.682922, 50.275623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106396, 32.224178, 50.388546>,  <39.061489, 31.556377, 49.946617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106396, 32.224178, 50.388546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819931, 31.987507, 50.536617>,  <38.648052, 31.845503, 50.625458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819931, 31.987507, 50.536617>,  <39.106396, 32.224178, 50.388546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819931, 31.987507, 50.536617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376846, 0.118610, 0.918651,
		-0.587453, 0.797400, 0.138029,
		-0.716161, -0.591680, 0.370175,
		38.605083, 31.810003, 50.647671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935482, 32.537533, 51.030972>,  <39.106396, 32.224178, 50.388546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935482, 32.537533, 51.030972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799255, 32.165218, 51.084114>,  <38.717522, 31.941830, 51.115997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.799255, 32.165218, 51.084114>,  <38.935482, 32.537533, 51.030972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799255, 32.165218, 51.084114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291838, 0.029672, 0.956008,
		-0.893783, 0.364353, 0.261534,
		-0.340564, -0.930788, 0.132852,
		38.697086, 31.885983, 51.123970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.560421, 32.616104, 51.542015>,  <38.935482, 32.537533, 51.030972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.560421, 32.616104, 51.542015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612831, 32.219551, 51.541668>,  <38.644276, 31.981621, 51.541462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612831, 32.219551, 51.541668>,  <38.560421, 32.616104, 51.542015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612831, 32.219551, 51.541668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339160, 0.044004, 0.939699,
		-0.931560, -0.123416, 0.342002,
		0.131024, -0.991379, -0.000865,
		38.652138, 31.922138, 51.541409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261238, 32.302868, 52.180000>,  <38.560421, 32.616104, 51.542015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261238, 32.302868, 52.180000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545090, 32.075436, 52.013561>,  <38.715401, 31.938976, 51.913700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.545090, 32.075436, 52.013561>,  <38.261238, 32.302868, 52.180000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.545090, 32.075436, 52.013561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525934, 0.034493, 0.849825,
		-0.468845, -0.821902, 0.323516,
		0.709632, -0.568584, -0.416094,
		38.757980, 31.904860, 51.888733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.489532, 31.808895, 52.729057>,  <38.261238, 32.302868, 52.180000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.489532, 31.808895, 52.729057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782444, 31.819639, 52.456867>,  <38.958191, 31.826086, 52.293552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.782444, 31.819639, 52.456867>,  <38.489532, 31.808895, 52.729057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782444, 31.819639, 52.456867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680719, 0.000048, 0.732545,
		0.019712, -0.999639, -0.018253,
		0.732280, 0.026865, -0.680474,
		39.002129, 31.827698, 52.252724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887970, 31.267193, 52.966919>,  <38.489532, 31.808895, 52.729057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887970, 31.267193, 52.966919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137280, 31.479742, 52.737423>,  <39.286865, 31.607271, 52.599728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.137280, 31.479742, 52.737423>,  <38.887970, 31.267193, 52.966919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.137280, 31.479742, 52.737423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705570, -0.065763, 0.705582,
		0.337198, -0.844580, -0.415911,
		0.623272, 0.531375, -0.573736,
		39.324261, 31.639154, 52.565304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596638, 30.920290, 52.971539>,  <38.887970, 31.267193, 52.966919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596638, 30.920290, 52.971539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647274, 31.305990, 52.878422>,  <39.677658, 31.537411, 52.822552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.647274, 31.305990, 52.878422>,  <39.596638, 30.920290, 52.971539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647274, 31.305990, 52.878422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674091, 0.088539, 0.733322,
		0.727719, -0.249756, -0.638786,
		0.126594, 0.964252, -0.232790,
		39.685253, 31.595266, 52.808586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.300293, 31.025618, 53.199795>,  <39.596638, 30.920290, 52.971539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.300293, 31.025618, 53.199795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139153, 31.387632, 53.145214>,  <40.042469, 31.604841, 53.112465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139153, 31.387632, 53.145214>,  <40.300293, 31.025618, 53.199795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139153, 31.387632, 53.145214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620210, 0.379572, 0.686487,
		0.673090, 0.191922, -0.714224,
		-0.402851, 0.905037, -0.136454,
		40.018295, 31.659143, 53.104279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.919949, 31.412449, 53.230122>,  <40.300293, 31.025618, 53.199795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.919949, 31.412449, 53.230122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631538, 31.686747, 53.269894>,  <40.458492, 31.851324, 53.293755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.631538, 31.686747, 53.269894>,  <40.919949, 31.412449, 53.230122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.631538, 31.686747, 53.269894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570413, 0.505944, 0.647031,
		0.393392, 0.523238, -0.755953,
		-0.721021, 0.685743, 0.099428,
		40.415234, 31.892469, 53.299721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.325939, 32.082127, 53.344990>,  <40.919949, 31.412449, 53.230122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.325939, 32.082127, 53.344990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955463, 32.112087, 53.492805>,  <40.733177, 32.130062, 53.581493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.955463, 32.112087, 53.492805>,  <41.325939, 32.082127, 53.344990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.955463, 32.112087, 53.492805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354717, 0.505383, 0.786615,
		-0.127841, 0.859638, -0.494650,
		-0.926192, 0.074899, 0.369538,
		40.677605, 32.134556, 53.603668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.267693, 32.791267, 53.427338>,  <41.325939, 32.082127, 53.344990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.267693, 32.791267, 53.427338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047604, 32.586689, 53.691360>,  <40.915550, 32.463940, 53.849773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.047604, 32.586689, 53.691360>,  <41.267693, 32.791267, 53.427338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047604, 32.586689, 53.691360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307583, 0.610753, 0.729639,
		-0.776306, 0.604485, -0.178735,
		-0.550219, -0.511448, 0.660061,
		40.882538, 32.433254, 53.889378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.866245, 33.509483, 53.391842>,  <41.267693, 32.791267, 53.427338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.866245, 33.509483, 53.391842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960636, 33.898186, 53.390877>,  <41.017269, 34.131409, 53.390297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.960636, 33.898186, 53.390877>,  <40.866245, 33.509483, 53.391842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960636, 33.898186, 53.390877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411915, 0.097779, -0.905961,
		-0.880137, 0.214780, 0.423354,
		0.235978, 0.971756, -0.002413,
		41.031429, 34.189713, 53.390152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192226, 33.849945, 53.383163>,  <40.866245, 33.509483, 53.391842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192226, 33.849945, 53.383163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480698, 34.101452, 53.266853>,  <40.653782, 34.252357, 53.197067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.480698, 34.101452, 53.266853>,  <40.192226, 33.849945, 53.383163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.480698, 34.101452, 53.266853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537683, 0.243384, -0.807256,
		-0.436805, 0.738522, 0.513601,
		0.721178, 0.628768, -0.290780,
		40.697052, 34.290081, 53.179619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856430, 34.563580, 53.225578>,  <40.192226, 33.849945, 53.383163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856430, 34.563580, 53.225578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199852, 34.515591, 53.026188>,  <40.405907, 34.486797, 52.906551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199852, 34.515591, 53.026188>,  <39.856430, 34.563580, 53.225578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199852, 34.515591, 53.026188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454964, 0.269998, -0.848592,
		0.236397, 0.955357, 0.177225,
		0.858559, -0.119974, -0.498480,
		40.457420, 34.479599, 52.876644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.795944, 35.081036, 52.685417>,  <39.856430, 34.563580, 53.225578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.795944, 35.081036, 52.685417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105701, 34.859173, 52.563656>,  <40.291557, 34.726055, 52.490597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.105701, 34.859173, 52.563656>,  <39.795944, 35.081036, 52.685417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.105701, 34.859173, 52.563656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308759, 0.088651, -0.947000,
		0.552247, 0.827342, -0.102605,
		0.774397, -0.554658, -0.304407,
		40.338020, 34.692776, 52.472332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.025368, 35.378857, 52.053722>,  <39.795944, 35.081036, 52.685417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.025368, 35.378857, 52.053722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198311, 35.018963, 52.029903>,  <40.302074, 34.803028, 52.015610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.198311, 35.018963, 52.029903>,  <40.025368, 35.378857, 52.053722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.198311, 35.018963, 52.029903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074634, 0.030107, -0.996757,
		0.898610, 0.435396, -0.054134,
		0.432354, -0.899735, -0.059549,
		40.328018, 34.749043, 52.012039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.568710, 35.432388, 51.564400>,  <40.025368, 35.378857, 52.053722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.568710, 35.432388, 51.564400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463875, 35.048683, 51.606583>,  <40.400974, 34.818459, 51.631893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.463875, 35.048683, 51.606583>,  <40.568710, 35.432388, 51.564400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463875, 35.048683, 51.606583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075458, -0.088568, -0.993208,
		0.962090, -0.268263, -0.049172,
		-0.262086, -0.959266, 0.105453,
		40.385250, 34.760902, 51.638218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.942173, 35.106354, 51.099571>,  <40.568710, 35.432388, 51.564400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.942173, 35.106354, 51.099571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604820, 34.897266, 51.149319>,  <40.402409, 34.771812, 51.179169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.604820, 34.897266, 51.149319>,  <40.942173, 35.106354, 51.099571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.604820, 34.897266, 51.149319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099104, -0.076166, -0.992158,
		0.528094, -0.849095, 0.012433,
		-0.843383, -0.522721, 0.124371,
		40.351807, 34.740452, 51.186630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910553, 34.663094, 50.558495>,  <40.942173, 35.106354, 51.099571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910553, 34.663094, 50.558495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545544, 34.583588, 50.701485>,  <40.326538, 34.535885, 50.787277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.545544, 34.583588, 50.701485>,  <40.910553, 34.663094, 50.558495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545544, 34.583588, 50.701485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248641, -0.424385, -0.870675,
		0.324765, -0.883397, 0.337842,
		-0.912527, -0.198763, 0.357474,
		40.271786, 34.523960, 50.808727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.693275, 34.043777, 50.122883>,  <40.910553, 34.663094, 50.558495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.693275, 34.043777, 50.122883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366840, 34.212044, 50.281391>,  <40.170979, 34.313004, 50.376495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.366840, 34.212044, 50.281391>,  <40.693275, 34.043777, 50.122883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.366840, 34.212044, 50.281391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476412, -0.101539, -0.873340,
		-0.327151, -0.901513, 0.283277,
		-0.816091, 0.420671, 0.396273,
		40.122013, 34.338245, 50.400272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.138901, 33.519493, 50.190971>,  <40.693275, 34.043777, 50.122883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.138901, 33.519493, 50.190971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952869, 33.872986, 50.170139>,  <39.841251, 34.085083, 50.157642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.952869, 33.872986, 50.170139>,  <40.138901, 33.519493, 50.190971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.952869, 33.872986, 50.170139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276610, -0.200948, -0.939738,
		-0.840944, -0.422649, 0.337907,
		-0.465081, 0.883735, -0.052077,
		39.813347, 34.138107, 50.154514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433937, 33.374447, 49.952038>,  <40.138901, 33.519493, 50.190971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433937, 33.374447, 49.952038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512043, 33.759323, 49.876072>,  <39.558907, 33.990250, 49.830494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.512043, 33.759323, 49.876072>,  <39.433937, 33.374447, 49.952038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512043, 33.759323, 49.876072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282638, -0.130217, -0.950347,
		-0.939142, 0.239247, 0.246524,
		0.195266, 0.962187, -0.189913,
		39.570621, 34.047977, 49.819099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815231, 33.659767, 49.732880>,  <39.433937, 33.374447, 49.952038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815231, 33.659767, 49.732880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112442, 33.892059, 49.599815>,  <39.290768, 34.031437, 49.519978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112442, 33.892059, 49.599815>,  <38.815231, 33.659767, 49.732880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112442, 33.892059, 49.599815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390893, -0.026888, -0.920043,
		-0.543243, 0.813650, 0.207026,
		0.743027, 0.580732, -0.332657,
		39.335350, 34.066280, 49.500019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.601147, 34.385963, 49.437923>,  <38.815231, 33.659767, 49.732880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.601147, 34.385963, 49.437923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942421, 34.257450, 49.273556>,  <39.147186, 34.180344, 49.174934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.942421, 34.257450, 49.273556>,  <38.601147, 34.385963, 49.437923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.942421, 34.257450, 49.273556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434778, -0.002817, -0.900533,
		0.288166, 0.946980, -0.142089,
		0.853187, -0.321280, -0.410915,
		39.198376, 34.161068, 49.150280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755032, 34.808121, 48.860069>,  <38.601147, 34.385963, 49.437923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755032, 34.808121, 48.860069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933197, 34.454819, 48.801472>,  <39.040096, 34.242836, 48.766312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.933197, 34.454819, 48.801472>,  <38.755032, 34.808121, 48.860069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.933197, 34.454819, 48.801472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390623, -0.044481, -0.919476,
		0.805617, 0.466775, -0.364833,
		0.445416, -0.883257, -0.146499,
		39.066822, 34.189842, 48.757523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.151840, 34.802872, 48.241306>,  <38.755032, 34.808121, 48.860069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.151840, 34.802872, 48.241306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109051, 34.406433, 48.273022>,  <39.083378, 34.168571, 48.292053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109051, 34.406433, 48.273022>,  <39.151840, 34.802872, 48.241306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109051, 34.406433, 48.273022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319880, -0.041205, -0.946562,
		0.941400, -0.126618, -0.312624,
		-0.106970, -0.991096, 0.079293,
		39.076962, 34.109104, 48.296810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.381077, 34.685871, 47.689823>,  <39.151840, 34.802872, 48.241306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.381077, 34.685871, 47.689823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188763, 34.357494, 47.813046>,  <39.073376, 34.160469, 47.886978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.188763, 34.357494, 47.813046>,  <39.381077, 34.685871, 47.689823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.188763, 34.357494, 47.813046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458148, -0.064363, -0.886543,
		0.747627, -0.567373, -0.345167,
		-0.480785, -0.820942, 0.308060,
		39.044529, 34.111214, 47.905464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349545, 34.218487, 47.110279>,  <39.381077, 34.685871, 47.689823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349545, 34.218487, 47.110279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049366, 34.100903, 47.347065>,  <38.869259, 34.030350, 47.489136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049366, 34.100903, 47.347065>,  <39.349545, 34.218487, 47.110279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049366, 34.100903, 47.347065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498421, -0.336503, -0.798963,
		0.434063, -0.894623, 0.106009,
		-0.750443, -0.293963, 0.591963,
		38.824234, 34.012714, 47.524654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210583, 33.617264, 46.942154>,  <39.349545, 34.218487, 47.110279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210583, 33.617264, 46.942154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858089, 33.725006, 47.097530>,  <38.646595, 33.789650, 47.190758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.858089, 33.725006, 47.097530>,  <39.210583, 33.617264, 46.942154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.858089, 33.725006, 47.097530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446027, -0.201730, -0.871989,
		-0.156513, -0.941676, 0.297909,
		-0.881229, 0.269353, 0.388439,
		38.593719, 33.805813, 47.214062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796574, 33.128918, 46.802849>,  <39.210583, 33.617264, 46.942154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796574, 33.128918, 46.802849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541103, 33.430664, 46.863548>,  <38.387821, 33.611710, 46.899967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.541103, 33.430664, 46.863548>,  <38.796574, 33.128918, 46.802849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541103, 33.430664, 46.863548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427733, -0.184119, -0.884955,
		-0.639637, -0.630109, 0.440258,
		-0.638678, 0.754363, 0.151749,
		38.349499, 33.656971, 46.909073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.283371, 32.906879, 46.504642>,  <38.796574, 33.128918, 46.802849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.283371, 32.906879, 46.504642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158108, 33.285889, 46.530342>,  <38.082951, 33.513294, 46.545761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.158108, 33.285889, 46.530342>,  <38.283371, 32.906879, 46.504642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.158108, 33.285889, 46.530342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651007, -0.164915, -0.740941,
		-0.691465, -0.273855, 0.668490,
		-0.313155, 0.947526, 0.064248,
		38.064163, 33.570148, 46.549618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.569344, 32.890926, 46.608685>,  <38.283371, 32.906879, 46.504642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.569344, 32.890926, 46.608685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628929, 33.251575, 46.446262>,  <37.664680, 33.467964, 46.348808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.628929, 33.251575, 46.446262>,  <37.569344, 32.890926, 46.608685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.628929, 33.251575, 46.446262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467787, -0.297527, -0.832258,
		-0.871197, 0.313927, 0.377446,
		0.148968, 0.901625, -0.406055,
		37.673618, 33.522064, 46.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968159, 33.029320, 46.196075>,  <37.569344, 32.890926, 46.608685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968159, 33.029320, 46.196075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245449, 33.292213, 46.077763>,  <37.411823, 33.449951, 46.006775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.245449, 33.292213, 46.077763>,  <36.968159, 33.029320, 46.196075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245449, 33.292213, 46.077763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266266, -0.147820, -0.952498,
		-0.669736, 0.739049, 0.072527,
		0.693222, 0.657233, -0.295784,
		37.453415, 33.489384, 45.989029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634506, 33.491215, 45.607292>,  <36.968159, 33.029320, 46.196075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634506, 33.491215, 45.607292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031017, 33.538635, 45.584236>,  <37.268925, 33.567089, 45.570400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031017, 33.538635, 45.584236>,  <36.634506, 33.491215, 45.607292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031017, 33.538635, 45.584236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042728, -0.124705, -0.991273,
		-0.124705, 0.985086, -0.118551,
		0.991273, 0.118551, -0.057642,
		37.328400, 33.574200, 45.566944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637779, 33.622753, 44.891785>,  <36.634506, 33.491215, 45.607292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637779, 33.622753, 44.891785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026646, 33.586514, 44.978214>,  <37.259964, 33.564770, 45.030071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026646, 33.586514, 44.978214>,  <36.637779, 33.622753, 44.891785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026646, 33.586514, 44.978214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193571, -0.208999, -0.958566,
		0.132008, 0.973710, -0.185643,
		0.972165, -0.090603, 0.216072,
		37.318295, 33.559334, 45.043037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.973877, 34.138573, 44.416603>,  <36.637779, 33.622753, 44.891785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.973877, 34.138573, 44.416603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217369, 33.837696, 44.517525>,  <37.363464, 33.657169, 44.578075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.217369, 33.837696, 44.517525>,  <36.973877, 34.138573, 44.416603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217369, 33.837696, 44.517525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039271, -0.289052, -0.956508,
		0.792408, 0.592160, -0.146414,
		0.608727, -0.752194, 0.252302,
		37.399986, 33.612038, 44.593216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.584515, 34.155594, 44.058609>,  <36.973877, 34.138573, 44.416603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.584515, 34.155594, 44.058609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579487, 33.770679, 44.167309>,  <37.576469, 33.539730, 44.232529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.579487, 33.770679, 44.167309>,  <37.584515, 34.155594, 44.058609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579487, 33.770679, 44.167309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300568, -0.262835, -0.916829,
		0.953677, 0.070154, 0.292537,
		-0.012569, -0.962287, 0.271746,
		37.575714, 33.481995, 44.248833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297714, 33.909283, 44.122765>,  <37.584515, 34.155594, 44.058609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297714, 33.909283, 44.122765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045860, 33.609058, 44.042553>,  <37.894749, 33.428925, 43.994427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045860, 33.609058, 44.042553>,  <38.297714, 33.909283, 44.122765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045860, 33.609058, 44.042553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566851, -0.267328, -0.779240,
		0.531263, -0.604307, 0.593778,
		-0.629634, -0.750565, -0.200531,
		37.856972, 33.383888, 43.982395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.734200, 33.432335, 43.934181>,  <38.297714, 33.909283, 44.122765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.734200, 33.432335, 43.934181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386421, 33.278969, 43.809566>,  <38.177753, 33.186951, 43.734798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.386421, 33.278969, 43.809566>,  <38.734200, 33.432335, 43.934181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386421, 33.278969, 43.809566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454281, -0.372681, -0.809159,
		0.194141, -0.845045, 0.498205,
		-0.869447, -0.383416, -0.311535,
		38.125587, 33.163944, 43.716106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.823616, 32.749439, 43.840553>,  <38.734200, 33.432335, 43.934181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.823616, 32.749439, 43.840553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518238, 32.841545, 43.599182>,  <38.335011, 32.896809, 43.454357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518238, 32.841545, 43.599182>,  <38.823616, 32.749439, 43.840553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518238, 32.841545, 43.599182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477035, -0.428822, -0.767170,
		-0.435426, -0.873547, 0.217531,
		-0.763441, 0.230276, -0.603432,
		38.289204, 32.910625, 43.418152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780663, 32.171352, 43.390018>,  <38.823616, 32.749439, 43.840553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780663, 32.171352, 43.390018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555958, 32.444569, 43.203308>,  <38.421135, 32.608498, 43.091282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.555958, 32.444569, 43.203308>,  <38.780663, 32.171352, 43.390018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.555958, 32.444569, 43.203308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259759, -0.390052, -0.883394,
		-0.785462, -0.617504, 0.041689,
		-0.561760, 0.683044, -0.466773,
		38.387428, 32.649483, 43.063274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.589577, 31.848745, 42.844425>,  <38.780663, 32.171352, 43.390018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.589577, 31.848745, 42.844425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526306, 32.227703, 42.733128>,  <38.488342, 32.455078, 42.666348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.526306, 32.227703, 42.733128>,  <38.589577, 31.848745, 42.844425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526306, 32.227703, 42.733128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343396, -0.211425, -0.915084,
		-0.925775, -0.240293, -0.291889,
		-0.158175, 0.947396, -0.278248,
		38.478855, 32.511921, 42.649654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.360424, 31.769995, 42.159241>,  <38.589577, 31.848745, 42.844425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.360424, 31.769995, 42.159241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496315, 32.139896, 42.227840>,  <38.577850, 32.361839, 42.269001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496315, 32.139896, 42.227840>,  <38.360424, 31.769995, 42.159241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496315, 32.139896, 42.227840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416416, 0.015605, -0.909040,
		-0.843315, 0.380244, -0.379781,
		0.339731, 0.924755, 0.171500,
		38.598236, 32.417324, 42.279289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.288651, 32.134377, 41.566841>,  <38.360424, 31.769995, 42.159241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.288651, 32.134377, 41.566841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579887, 32.326946, 41.762028>,  <38.754631, 32.442490, 41.879139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.579887, 32.326946, 41.762028>,  <38.288651, 32.134377, 41.566841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.579887, 32.326946, 41.762028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474151, 0.160385, -0.865712,
		-0.495038, 0.861688, -0.111493,
		0.728092, 0.481425, 0.487968,
		38.798313, 32.471375, 41.908417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384800, 32.644581, 41.083107>,  <38.288651, 32.134377, 41.566841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384800, 32.644581, 41.083107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697407, 32.623207, 41.331741>,  <38.884972, 32.610382, 41.480923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.697407, 32.623207, 41.331741>,  <38.384800, 32.644581, 41.083107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697407, 32.623207, 41.331741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623721, 0.044463, -0.780382,
		0.014065, 0.997581, 0.068079,
		0.781521, -0.053438, 0.621587,
		38.931862, 32.607174, 41.518219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.910439, 33.073795, 40.776070>,  <38.384800, 32.644581, 41.083107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.910439, 33.073795, 40.776070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148930, 32.907742, 41.050930>,  <39.292023, 32.808109, 41.215847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.148930, 32.907742, 41.050930>,  <38.910439, 33.073795, 40.776070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.148930, 32.907742, 41.050930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774621, 0.072643, -0.628239,
		0.210887, 0.906855, 0.364884,
		0.596228, -0.415134, 0.687150,
		39.327797, 32.783199, 41.257076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.415108, 33.561451, 41.061817>,  <38.910439, 33.073795, 40.776070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.415108, 33.561451, 41.061817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566559, 33.192101, 41.087200>,  <39.657429, 32.970490, 41.102428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.566559, 33.192101, 41.087200>,  <39.415108, 33.561451, 41.061817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.566559, 33.192101, 41.087200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701756, 0.241696, -0.670166,
		0.603476, 0.298272, 0.739494,
		0.378624, -0.923373, 0.063456,
		39.680145, 32.915089, 41.106236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208542, 33.691120, 41.292675>,  <39.415108, 33.561451, 41.061817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208542, 33.691120, 41.292675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175705, 33.332447, 41.118679>,  <40.156002, 33.117245, 41.014282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.175705, 33.332447, 41.118679>,  <40.208542, 33.691120, 41.292675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.175705, 33.332447, 41.118679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815712, 0.190317, -0.546254,
		0.572604, -0.399671, 0.715813,
		-0.082091, -0.896684, -0.434993,
		40.151077, 33.063442, 40.988182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.941551, 33.400536, 41.102829>,  <40.208542, 33.691120, 41.292675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.941551, 33.400536, 41.102829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714893, 33.161823, 40.875580>,  <40.578899, 33.018597, 40.739231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.714893, 33.161823, 40.875580>,  <40.941551, 33.400536, 41.102829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.714893, 33.161823, 40.875580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724066, -0.031572, -0.689008,
		0.393252, -0.801781, 0.450000,
		-0.566641, -0.596783, -0.568127,
		40.544903, 32.982788, 40.705143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398949, 32.921005, 40.881332>,  <40.941551, 33.400536, 41.102829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398949, 32.921005, 40.881332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109390, 32.909275, 40.605618>,  <40.935654, 32.902237, 40.440189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.109390, 32.909275, 40.605618>,  <41.398949, 32.921005, 40.881332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109390, 32.909275, 40.605618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688973, 0.021316, -0.724473,
		0.035950, -0.999342, 0.004785,
		-0.723895, -0.029341, -0.689286,
		40.892223, 32.900478, 40.398830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.616882, 32.436245, 40.440258>,  <41.398949, 32.921005, 40.881332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.616882, 32.436245, 40.440258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349632, 32.643520, 40.226681>,  <41.189285, 32.767887, 40.098534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349632, 32.643520, 40.226681>,  <41.616882, 32.436245, 40.440258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349632, 32.643520, 40.226681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640069, 0.034385, -0.767548,
		-0.379378, -0.854573, -0.354652,
		-0.668120, 0.518192, -0.533940,
		41.149197, 32.798977, 40.066498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.579487, 32.155117, 39.717247>,  <41.616882, 32.436245, 40.440258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.579487, 32.155117, 39.717247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442478, 32.530251, 39.694828>,  <41.360275, 32.755333, 39.681377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442478, 32.530251, 39.694828>,  <41.579487, 32.155117, 39.717247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442478, 32.530251, 39.694828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585646, 0.166485, -0.793285,
		-0.734642, -0.304538, -0.606265,
		-0.342520, 0.937837, -0.056045,
		41.339722, 32.811604, 39.678013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188042, 32.345627, 39.075035>,  <41.579487, 32.155117, 39.717247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188042, 32.345627, 39.075035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419281, 32.628536, 39.237793>,  <41.558025, 32.798283, 39.335449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.419281, 32.628536, 39.237793>,  <41.188042, 32.345627, 39.075035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.419281, 32.628536, 39.237793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634525, -0.076149, -0.769142,
		-0.513013, 0.702823, -0.492807,
		0.578097, 0.707278, 0.406893,
		41.592709, 32.840721, 39.359859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.352974, 32.849033, 38.577702>,  <41.188042, 32.345627, 39.075035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.352974, 32.849033, 38.577702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640118, 32.908829, 38.849678>,  <41.812405, 32.944706, 39.012863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.640118, 32.908829, 38.849678>,  <41.352974, 32.849033, 38.577702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.640118, 32.908829, 38.849678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689795, -0.020722, -0.723708,
		-0.094098, 0.988546, -0.117994,
		0.717864, 0.149491, 0.679944,
		41.855476, 32.953674, 39.053661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.733864, 33.516357, 38.494450>,  <41.352974, 32.849033, 38.577702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.733864, 33.516357, 38.494450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931946, 33.191589, 38.618099>,  <42.050797, 32.996727, 38.692287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.931946, 33.191589, 38.618099>,  <41.733864, 33.516357, 38.494450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.931946, 33.191589, 38.618099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617706, 0.078850, -0.782447,
		0.610909, 0.578420, 0.540574,
		0.495207, -0.811920, 0.309123,
		42.080509, 32.948013, 38.710835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.356709, 33.666092, 38.905746>,  <41.733864, 33.516357, 38.494450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.356709, 33.666092, 38.905746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353367, 33.345715, 38.666275>,  <42.351360, 33.153488, 38.522594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.353367, 33.345715, 38.666275>,  <42.356709, 33.666092, 38.905746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353367, 33.345715, 38.666275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675715, 0.436802, -0.593813,
		0.737116, -0.409496, 0.537562,
		-0.008356, -0.800948, -0.598676,
		42.350861, 33.105431, 38.486671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990936, 33.379848, 38.791946>,  <42.356709, 33.666092, 38.905746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990936, 33.379848, 38.791946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750538, 33.328327, 38.476425>,  <42.606297, 33.297413, 38.287113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.750538, 33.328327, 38.476425>,  <42.990936, 33.379848, 38.791946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.750538, 33.328327, 38.476425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609918, 0.563906, -0.556785,
		0.516526, -0.815733, -0.260348,
		-0.601000, -0.128803, -0.788802,
		42.570236, 33.289684, 38.239784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396008, 33.422791, 38.206013>,  <42.990936, 33.379848, 38.791946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396008, 33.422791, 38.206013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036560, 33.516857, 38.057858>,  <42.820892, 33.573296, 37.968964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036560, 33.516857, 38.057858>,  <43.396008, 33.422791, 38.206013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036560, 33.516857, 38.057858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427107, 0.661984, -0.615920,
		0.100347, -0.711670, -0.695310,
		-0.898616, 0.235166, -0.370387,
		42.766975, 33.587406, 37.946743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850395, 33.253189, 37.542759>,  <43.396008, 33.422791, 38.206013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850395, 33.253189, 37.542759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247395, 33.288761, 37.509201>,  <44.485596, 33.310104, 37.489067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.247395, 33.288761, 37.509201>,  <43.850395, 33.253189, 37.542759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.247395, 33.288761, 37.509201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030288, -0.843672, -0.536004,
		-0.118444, 0.529442, -0.840037,
		0.992499, 0.088930, -0.083892,
		44.545143, 33.315441, 37.484032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932346, 33.162548, 36.808342>,  <43.850395, 33.253189, 37.542759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932346, 33.162548, 36.808342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298721, 33.094456, 36.953712>,  <44.518547, 33.053600, 37.040936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.298721, 33.094456, 36.953712>,  <43.932346, 33.162548, 36.808342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298721, 33.094456, 36.953712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126163, -0.737527, -0.663428,
		0.380979, 0.653509, -0.654050,
		0.915936, -0.170235, 0.363431,
		44.573502, 33.043385, 37.062740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.388401, 33.050705, 36.226929>,  <43.932346, 33.162548, 36.808342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.388401, 33.050705, 36.226929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553299, 32.877403, 36.547516>,  <44.652237, 32.773422, 36.739868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553299, 32.877403, 36.547516>,  <44.388401, 33.050705, 36.226929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553299, 32.877403, 36.547516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294154, -0.769286, -0.567162,
		0.862280, 0.469564, -0.189690,
		0.412244, -0.433255, 0.801464,
		44.676971, 32.747425, 36.787956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.896172, 32.708565, 35.886108>,  <44.388401, 33.050705, 36.226929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.896172, 32.708565, 35.886108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892303, 32.512589, 36.234791>,  <44.889980, 32.395004, 36.444000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892303, 32.512589, 36.234791>,  <44.896172, 32.708565, 35.886108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892303, 32.512589, 36.234791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210521, -0.853202, -0.477208,
		0.977542, 0.178895, 0.111396,
		-0.009673, -0.489942, 0.871701,
		44.889400, 32.365604, 36.496300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.462257, 32.247974, 35.880558>,  <44.896172, 32.708565, 35.886108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.462257, 32.247974, 35.880558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231831, 32.112309, 36.178047>,  <45.093575, 32.030910, 36.356541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.231831, 32.112309, 36.178047>,  <45.462257, 32.247974, 35.880558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.231831, 32.112309, 36.178047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107960, -0.933452, -0.342070,
		0.810244, -0.116762, 0.574344,
		-0.576064, -0.339166, 0.743719,
		45.059013, 32.010559, 36.401161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.809284, 31.603224, 36.219307>,  <45.462257, 32.247974, 35.880558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.809284, 31.603224, 36.219307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421452, 31.573059, 36.312454>,  <45.188751, 31.554960, 36.368343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.421452, 31.573059, 36.312454>,  <45.809284, 31.603224, 36.219307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.421452, 31.573059, 36.312454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016054, -0.968903, -0.246920,
		0.244247, -0.235670, 0.940640,
		-0.969581, -0.075410, 0.232868,
		45.130577, 31.550436, 36.382313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.718845, 31.094849, 36.726891>,  <45.809284, 31.603224, 36.219307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.718845, 31.094849, 36.726891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349804, 31.115267, 36.573944>,  <45.128380, 31.127518, 36.482178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.349804, 31.115267, 36.573944>,  <45.718845, 31.094849, 36.726891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.349804, 31.115267, 36.573944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013208, -0.986446, -0.163554,
		-0.385531, -0.155945, 0.909422,
		-0.922600, 0.051044, -0.382365,
		45.073025, 31.130579, 36.459236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173923, 30.651638, 37.052464>,  <45.718845, 31.094849, 36.726891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173923, 30.651638, 37.052464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036022, 30.719967, 36.683254>,  <44.953281, 30.760963, 36.461731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.036022, 30.719967, 36.683254>,  <45.173923, 30.651638, 37.052464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.036022, 30.719967, 36.683254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030374, -0.980758, -0.192851,
		-0.938203, -0.094521, 0.332929,
		-0.344751, 0.170821, -0.923021,
		44.932598, 30.771214, 36.406349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.745426, 30.142395, 37.014961>,  <45.173923, 30.651638, 37.052464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.745426, 30.142395, 37.014961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785801, 30.267487, 36.637177>,  <44.810024, 30.342541, 36.410503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.785801, 30.267487, 36.637177>,  <44.745426, 30.142395, 37.014961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.785801, 30.267487, 36.637177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084690, -0.948568, -0.305035,
		-0.991282, -0.049198, -0.122228,
		0.100935, 0.312727, -0.944465,
		44.816082, 30.361305, 36.353836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.283226, 29.708939, 36.660927>,  <44.745426, 30.142395, 37.014961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.283226, 29.708939, 36.660927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560677, 29.819744, 36.394951>,  <44.727146, 29.886227, 36.235363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.560677, 29.819744, 36.394951>,  <44.283226, 29.708939, 36.660927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.560677, 29.819744, 36.394951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002295, -0.922246, -0.386598,
		-0.720333, 0.269680, -0.639056,
		0.693625, 0.277013, -0.664943,
		44.768764, 29.902847, 36.195469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981094, 29.669155, 36.017159>,  <44.283226, 29.708939, 36.660927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981094, 29.669155, 36.017159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370827, 29.679733, 35.927727>,  <44.604664, 29.686081, 35.874069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.370827, 29.679733, 35.927727>,  <43.981094, 29.669155, 36.017159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.370827, 29.679733, 35.927727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136572, -0.720071, -0.680328,
		-0.178986, 0.693396, -0.697973,
		0.974327, 0.026446, -0.223581,
		44.663124, 29.687668, 35.860653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.981312, 29.694187, 35.294888>,  <43.981094, 29.669155, 36.017159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.981312, 29.694187, 35.294888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347610, 29.564327, 35.389553>,  <44.567390, 29.486410, 35.446354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.347610, 29.564327, 35.389553>,  <43.981312, 29.694187, 35.294888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.347610, 29.564327, 35.389553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102943, -0.759015, -0.642883,
		0.388344, 0.564355, -0.728486,
		0.915747, -0.324652, 0.236662,
		44.622334, 29.466932, 35.460552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305473, 29.523487, 34.683170>,  <43.981312, 29.694187, 35.294888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305473, 29.523487, 34.683170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520641, 29.317783, 34.950356>,  <44.649742, 29.194361, 35.110668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.520641, 29.317783, 34.950356>,  <44.305473, 29.523487, 34.683170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.520641, 29.317783, 34.950356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022867, -0.783178, -0.621377,
		0.842684, 0.349527, -0.409529,
		0.537922, -0.514260, 0.667964,
		44.682018, 29.163506, 35.150745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.880707, 29.259472, 34.319462>,  <44.305473, 29.523487, 34.683170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.880707, 29.259472, 34.319462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830585, 29.019356, 34.635426>,  <44.800510, 28.875286, 34.825005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.830585, 29.019356, 34.635426>,  <44.880707, 29.259472, 34.319462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.830585, 29.019356, 34.635426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262001, -0.787939, -0.557232,
		0.956898, 0.137132, 0.256010,
		-0.125306, -0.600289, 0.789906,
		44.792995, 28.839270, 34.872398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.340321, 28.680552, 34.214012>,  <44.880707, 29.259472, 34.319462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.340321, 28.680552, 34.214012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065655, 28.550636, 34.474167>,  <44.900856, 28.472687, 34.630260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.065655, 28.550636, 34.474167>,  <45.340321, 28.680552, 34.214012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065655, 28.550636, 34.474167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028106, -0.905843, -0.422681,
		0.726431, -0.271960, 0.631138,
		-0.686664, -0.324787, 0.650389,
		44.859657, 28.453199, 34.669285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.562252, 28.019045, 34.322037>,  <45.340321, 28.680552, 34.214012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.562252, 28.019045, 34.322037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194782, 28.036880, 34.479031>,  <44.974300, 28.047583, 34.573227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.194782, 28.036880, 34.479031>,  <45.562252, 28.019045, 34.322037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194782, 28.036880, 34.479031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122359, -0.976860, -0.175421,
		0.375585, -0.209179, 0.902873,
		-0.918675, 0.044589, 0.392489,
		44.919178, 28.050257, 34.596779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.454151, 27.440908, 34.737961>,  <45.562252, 28.019045, 34.322037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.454151, 27.440908, 34.737961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090981, 27.554010, 34.614212>,  <44.873077, 27.621872, 34.539963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.090981, 27.554010, 34.614212>,  <45.454151, 27.440908, 34.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.090981, 27.554010, 34.614212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202095, -0.942020, -0.267871,
		-0.367179, -0.180685, 0.912432,
		-0.907930, 0.282755, -0.309375,
		44.818600, 27.638838, 34.521400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.071003, 26.847950, 34.870972>,  <45.454151, 27.440908, 34.737961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.071003, 26.847950, 34.870972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813946, 27.059332, 34.649071>,  <44.659714, 27.186161, 34.515930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.813946, 27.059332, 34.649071>,  <45.071003, 26.847950, 34.870972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.813946, 27.059332, 34.649071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385908, -0.848765, -0.361488,
		-0.661883, -0.018224, 0.749385,
		-0.642640, 0.528457, -0.554750,
		44.621155, 27.217869, 34.482647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442860, 26.444935, 34.910858>,  <45.071003, 26.847950, 34.870972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442860, 26.444935, 34.910858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414177, 26.674410, 34.584488>,  <44.396969, 26.812096, 34.388664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.414177, 26.674410, 34.584488>,  <44.442860, 26.444935, 34.910858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.414177, 26.674410, 34.584488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353980, -0.779422, -0.516913,
		-0.932500, 0.251759, 0.258961,
		-0.071703, 0.573688, -0.815929,
		44.392666, 26.846516, 34.339710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832691, 26.469219, 34.723808>,  <44.442860, 26.444935, 34.910858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832691, 26.469219, 34.723808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014767, 26.587214, 34.387764>,  <44.124012, 26.658010, 34.186138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.014767, 26.587214, 34.387764>,  <43.832691, 26.469219, 34.723808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.014767, 26.587214, 34.387764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310822, -0.831527, -0.460382,
		-0.834382, 0.470686, -0.286813,
		0.455188, 0.294987, -0.840111,
		44.151321, 26.675709, 34.135731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.347790, 26.256308, 34.110302>,  <43.832691, 26.469219, 34.723808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.347790, 26.256308, 34.110302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722591, 26.322462, 33.987228>,  <43.947472, 26.362154, 33.913383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.722591, 26.322462, 33.987228>,  <43.347790, 26.256308, 34.110302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.722591, 26.322462, 33.987228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048759, -0.810274, -0.584020,
		-0.345899, 0.562232, -0.751166,
		0.937004, 0.165385, -0.307687,
		44.003693, 26.372078, 33.894924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.164818, 26.271320, 33.356678>,  <43.347790, 26.256308, 34.110302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.164818, 26.271320, 33.356678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499405, 26.132547, 33.526367>,  <43.700157, 26.049284, 33.628181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.499405, 26.132547, 33.526367>,  <43.164818, 26.271320, 33.356678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.499405, 26.132547, 33.526367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019757, -0.792691, -0.609303,
		0.547666, 0.501279, -0.669912,
		0.836464, -0.346930, 0.424226,
		43.750343, 26.028469, 33.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.230995, 25.792269, 32.837040>,  <43.164818, 26.271320, 33.356678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.230995, 25.792269, 32.837040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046715, 25.960159, 32.524223>,  <42.936146, 26.060894, 32.336533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.046715, 25.960159, 32.524223>,  <43.230995, 25.792269, 32.837040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.046715, 25.960159, 32.524223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054077, -0.892753, -0.447290,
		-0.885899, -0.163784, 0.434002,
		-0.460715, 0.419723, -0.782032,
		42.908504, 26.086077, 32.289612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.804440, 25.692142, 32.428383>,  <43.230995, 25.792269, 32.837040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.804440, 25.692142, 32.428383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773930, 25.405882, 32.150673>,  <43.755623, 25.234125, 31.984047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.773930, 25.405882, 32.150673>,  <43.804440, 25.692142, 32.428383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.773930, 25.405882, 32.150673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875865, 0.380841, -0.296345,
		0.476490, 0.585492, -0.655863,
		-0.076272, -0.715653, -0.694279,
		43.751049, 25.191185, 31.942389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557564, 26.005535, 31.823513>,  <43.804440, 25.692142, 32.428383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557564, 26.005535, 31.823513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445820, 25.628830, 31.748640>,  <43.378773, 25.402807, 31.703716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.445820, 25.628830, 31.748640>,  <43.557564, 26.005535, 31.823513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445820, 25.628830, 31.748640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877466, 0.329554, -0.348494,
		0.389886, 0.066890, -0.918431,
		-0.279361, -0.941764, -0.187182,
		43.362011, 25.346300, 31.692486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.567013, 26.718388, 31.648865>,  <43.557564, 26.005535, 31.823513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.567013, 26.718388, 31.648865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237900, 26.893990, 31.793259>,  <43.040432, 26.999352, 31.879894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237900, 26.893990, 31.793259>,  <43.567013, 26.718388, 31.648865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237900, 26.893990, 31.793259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539829, -0.404901, -0.737997,
		-0.177820, -0.802079, 0.570132,
		-0.822778, 0.439004, 0.360986,
		42.991066, 27.025692, 31.901554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995472, 27.120501, 31.395102>,  <43.567013, 26.718388, 31.648865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995472, 27.120501, 31.395102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022907, 26.730566, 31.310261>,  <43.039368, 26.496605, 31.259356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.022907, 26.730566, 31.310261>,  <42.995472, 27.120501, 31.395102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022907, 26.730566, 31.310261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.867402, 0.046763, -0.495406,
		0.492859, 0.217956, -0.842369,
		0.068585, -0.974838, -0.212103,
		43.043484, 26.438114, 31.246630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447273, 27.218727, 30.926508>,  <42.995472, 27.120501, 31.395102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447273, 27.218727, 30.926508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302151, 27.437992, 30.625072>,  <42.215076, 27.569551, 30.444212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.302151, 27.437992, 30.625072>,  <42.447273, 27.218727, 30.926508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.302151, 27.437992, 30.625072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338862, 0.830930, 0.441280,
		0.868070, -0.095263, -0.487216,
		-0.362805, 0.548160, -0.753587,
		42.193310, 27.602440, 30.398996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.915394, 27.548630, 30.579556>,  <42.447273, 27.218727, 30.926508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.915394, 27.548630, 30.579556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593651, 27.783621, 30.544037>,  <42.400604, 27.924616, 30.522726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593651, 27.783621, 30.544037>,  <42.915394, 27.548630, 30.579556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593651, 27.783621, 30.544037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542097, 0.786814, 0.295052,
		0.243203, 0.189190, -0.951346,
		-0.804353, 0.587479, -0.088796,
		42.352345, 27.959864, 30.517399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052143, 28.286781, 30.272688>,  <42.915394, 27.548630, 30.579556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052143, 28.286781, 30.272688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742878, 28.337666, 30.521214>,  <42.557320, 28.368196, 30.670328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.742878, 28.337666, 30.521214>,  <43.052143, 28.286781, 30.272688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.742878, 28.337666, 30.521214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482018, 0.754541, 0.445339,
		-0.412155, 0.643805, -0.644704,
		-0.773167, 0.127210, 0.621314,
		42.510929, 28.375828, 30.707607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.808407, 29.001083, 30.285519>,  <43.052143, 28.286781, 30.272688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.808407, 29.001083, 30.285519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708958, 28.857414, 30.645336>,  <42.649288, 28.771212, 30.861227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708958, 28.857414, 30.645336>,  <42.808407, 29.001083, 30.285519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708958, 28.857414, 30.645336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419422, 0.797199, 0.434234,
		-0.873081, 0.485251, -0.047560,
		-0.248627, -0.359174, 0.899544,
		42.634369, 28.749662, 30.915199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354473, 29.448065, 30.695707>,  <42.808407, 29.001083, 30.285519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354473, 29.448065, 30.695707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569336, 29.229149, 30.952436>,  <42.698254, 29.097799, 31.106474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569336, 29.229149, 30.952436>,  <42.354473, 29.448065, 30.695707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569336, 29.229149, 30.952436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460841, 0.827733, 0.320132,
		-0.706464, 0.123818, 0.696834,
		0.537154, -0.547291, 0.641824,
		42.730484, 29.064962, 31.144983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.279911, 29.754753, 31.374962>,  <42.354473, 29.448065, 30.695707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.279911, 29.754753, 31.374962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625469, 29.553345, 31.369938>,  <42.832802, 29.432499, 31.366924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.625469, 29.553345, 31.369938>,  <42.279911, 29.754753, 31.374962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.625469, 29.553345, 31.369938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456179, 0.771607, 0.443310,
		-0.213525, -0.388701, 0.896280,
		0.863891, -0.503522, -0.012560,
		42.884636, 29.402288, 31.366169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.514145, 29.832325, 32.068989>,  <42.279911, 29.754753, 31.374962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.514145, 29.832325, 32.068989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821003, 29.733246, 31.832302>,  <43.005119, 29.673798, 31.690290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821003, 29.733246, 31.832302>,  <42.514145, 29.832325, 32.068989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821003, 29.733246, 31.832302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600244, 0.602542, 0.525976,
		0.226249, -0.758676, 0.610920,
		0.767150, -0.247699, -0.591715,
		43.051147, 29.658936, 31.654787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.079140, 29.928339, 32.507751>,  <42.514145, 29.832325, 32.068989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.079140, 29.928339, 32.507751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271149, 29.891325, 32.158806>,  <43.386353, 29.869116, 31.949438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.271149, 29.891325, 32.158806>,  <43.079140, 29.928339, 32.507751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.271149, 29.891325, 32.158806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794701, 0.467015, 0.387748,
		0.371526, -0.879394, 0.297715,
		0.480020, -0.092536, -0.872363,
		43.415154, 29.863564, 31.897097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.766750, 29.826460, 32.669674>,  <43.079140, 29.928339, 32.507751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.766750, 29.826460, 32.669674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817436, 29.928709, 32.286301>,  <43.847847, 29.990059, 32.056274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817436, 29.928709, 32.286301>,  <43.766750, 29.826460, 32.669674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817436, 29.928709, 32.286301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694234, 0.667288, 0.269752,
		0.708508, -0.699560, -0.092910,
		0.126710, 0.255623, -0.958437,
		43.855450, 30.005396, 31.998770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470825, 29.749739, 32.459194>,  <43.766750, 29.826460, 32.669674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470825, 29.749739, 32.459194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295464, 30.018316, 32.220207>,  <44.190247, 30.179462, 32.076817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.295464, 30.018316, 32.220207>,  <44.470825, 29.749739, 32.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295464, 30.018316, 32.220207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766729, 0.626253, 0.141191,
		0.468967, -0.396197, -0.789365,
		-0.438403, 0.671443, -0.597468,
		44.163944, 30.219749, 32.040966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.975391, 30.096687, 32.290886>,  <44.470825, 29.749739, 32.459194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.975391, 30.096687, 32.290886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687771, 30.348394, 32.172909>,  <44.515198, 30.499418, 32.102123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.687771, 30.348394, 32.172909>,  <44.975391, 30.096687, 32.290886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.687771, 30.348394, 32.172909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591108, 0.776967, 0.216595,
		0.365454, -0.018598, -0.930643,
		-0.719051, 0.629267, -0.294939,
		44.472057, 30.537174, 32.084427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.344929, 30.615480, 31.857618>,  <44.975391, 30.096687, 32.290886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.344929, 30.615480, 31.857618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008194, 30.796125, 31.975840>,  <44.806152, 30.904512, 32.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008194, 30.796125, 31.975840>,  <45.344929, 30.615480, 31.857618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008194, 30.796125, 31.975840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537242, 0.753648, 0.378663,
		-0.051734, 0.477557, -0.877077,
		-0.841840, 0.451613, 0.295553,
		44.755642, 30.931610, 32.064507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.404701, 31.460627, 31.757214>,  <45.344929, 30.615480, 31.857618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.404701, 31.460627, 31.757214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077229, 31.436754, 31.985670>,  <44.880745, 31.422430, 32.122746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.077229, 31.436754, 31.985670>,  <45.404701, 31.460627, 31.757214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.077229, 31.436754, 31.985670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363586, 0.715967, 0.595984,
		-0.444487, 0.695579, -0.564448,
		-0.818680, -0.059681, 0.571141,
		44.831623, 31.418850, 32.157013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317528, 32.196308, 32.010975>,  <45.404701, 31.460627, 31.757214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317528, 32.196308, 32.010975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083206, 31.964472, 32.237572>,  <44.942616, 31.825371, 32.373531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.083206, 31.964472, 32.237572>,  <45.317528, 32.196308, 32.010975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.083206, 31.964472, 32.237572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121484, 0.628287, 0.768438,
		-0.801297, 0.518973, -0.297641,
		-0.585802, -0.579589, 0.566492,
		44.907467, 31.790596, 32.407520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.949879, 32.675076, 32.395687>,  <45.317528, 32.196308, 32.010975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.949879, 32.675076, 32.395687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912373, 32.332520, 32.598785>,  <44.889870, 32.126987, 32.720646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.912373, 32.332520, 32.598785>,  <44.949879, 32.675076, 32.395687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.912373, 32.332520, 32.598785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110039, 0.497958, 0.860191,
		-0.989495, 0.136527, 0.047546,
		-0.093763, -0.856387, 0.507751,
		44.884243, 32.075603, 32.751110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.677460, 32.922688, 33.028225>,  <44.949879, 32.675076, 32.395687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.677460, 32.922688, 33.028225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815109, 32.554497, 33.102306>,  <44.897701, 32.333584, 33.146755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.815109, 32.554497, 33.102306>,  <44.677460, 32.922688, 33.028225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.815109, 32.554497, 33.102306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290268, 0.291886, 0.911344,
		-0.892929, -0.259857, 0.367630,
		0.344125, -0.920476, 0.185205,
		44.918346, 32.278355, 33.157867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385708, 32.730679, 33.695114>,  <44.677460, 32.922688, 33.028225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385708, 32.730679, 33.695114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710911, 32.514927, 33.607403>,  <44.906033, 32.385475, 33.554775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.710911, 32.514927, 33.607403>,  <44.385708, 32.730679, 33.695114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.710911, 32.514927, 33.607403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393477, 0.231376, 0.889742,
		-0.429171, -0.809652, 0.400344,
		0.813012, -0.539378, -0.219279,
		44.954815, 32.353115, 33.541618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.430138, 32.386501, 34.279770>,  <44.385708, 32.730679, 33.695114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.430138, 32.386501, 34.279770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778202, 32.386047, 34.082661>,  <44.987041, 32.385777, 33.964397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.778202, 32.386047, 34.082661>,  <44.430138, 32.386501, 34.279770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.778202, 32.386047, 34.082661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477809, 0.246480, 0.843176,
		0.120503, -0.969147, 0.215018,
		0.870160, -0.001133, -0.492769,
		45.039249, 32.385708, 33.934830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.892048, 32.022316, 34.645058>,  <44.430138, 32.386501, 34.279770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.892048, 32.022316, 34.645058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110767, 32.264130, 34.413353>,  <45.242001, 32.409218, 34.274330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110767, 32.264130, 34.413353>,  <44.892048, 32.022316, 34.645058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110767, 32.264130, 34.413353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438470, 0.382638, 0.813223,
		0.713268, -0.698663, -0.055842,
		0.546802, 0.604531, -0.579266,
		45.274807, 32.445488, 34.239574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.579159, 31.943413, 34.842480>,  <44.892048, 32.022316, 34.645058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.579159, 31.943413, 34.842480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554947, 32.306812, 34.677086>,  <45.540421, 32.524853, 34.577850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.554947, 32.306812, 34.677086>,  <45.579159, 31.943413, 34.842480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.554947, 32.306812, 34.677086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402869, 0.401239, 0.822620,
		0.913254, -0.116786, -0.390293,
		-0.060530, 0.908498, -0.413482,
		45.536789, 32.579361, 34.553040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.147934, 32.296936, 35.070885>,  <45.579159, 31.943413, 34.842480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.147934, 32.296936, 35.070885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920628, 32.596516, 34.934559>,  <45.784245, 32.776264, 34.852764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.920628, 32.596516, 34.934559>,  <46.147934, 32.296936, 35.070885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.920628, 32.596516, 34.934559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441876, 0.627157, 0.641420,
		0.694132, 0.213901, -0.687334,
		-0.568266, 0.748946, -0.340812,
		45.750149, 32.821201, 34.832314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558865, 32.809311, 35.140213>,  <46.147934, 32.296936, 35.070885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558865, 32.809311, 35.140213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235241, 33.038494, 35.087841>,  <46.041069, 33.176006, 35.056416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.235241, 33.038494, 35.087841>,  <46.558865, 32.809311, 35.140213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235241, 33.038494, 35.087841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432767, 0.731502, 0.526895,
		0.397667, 0.369625, -0.839785,
		-0.809057, 0.572960, -0.130933,
		45.992523, 33.210381, 35.048561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.782841, 33.453552, 34.951931>,  <46.558865, 32.809311, 35.140213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.782841, 33.453552, 34.951931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421104, 33.491524, 35.118378>,  <46.204063, 33.514305, 35.218246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.421104, 33.491524, 35.118378>,  <46.782841, 33.453552, 34.951931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.421104, 33.491524, 35.118378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368344, 0.666101, 0.648562,
		-0.215611, 0.739796, -0.637349,
		-0.904342, 0.094927, 0.416118,
		46.149803, 33.520000, 35.243214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.711395, 34.124802, 34.921486>,  <46.782841, 33.453552, 34.951931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.711395, 34.124802, 34.921486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458847, 33.974281, 35.192715>,  <46.307320, 33.883968, 35.355450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.458847, 33.974281, 35.192715>,  <46.711395, 34.124802, 34.921486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.458847, 33.974281, 35.192715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290586, 0.695873, 0.656750,
		-0.718982, 0.611687, -0.330005,
		-0.631367, -0.376297, 0.678068,
		46.269436, 33.861393, 35.396133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352104, 34.708336, 35.200443>,  <46.711395, 34.124802, 34.921486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352104, 34.708336, 35.200443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302689, 34.417183, 35.470238>,  <46.273041, 34.242493, 35.632114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.302689, 34.417183, 35.470238>,  <46.352104, 34.708336, 35.200443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.302689, 34.417183, 35.470238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055888, 0.683717, 0.727605,
		-0.990765, 0.052191, -0.125144,
		-0.123538, -0.727879, 0.674486,
		46.265629, 34.198818, 35.672585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307117, 35.401443, 34.757816>,  <46.352104, 34.708336, 35.200443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307117, 35.401443, 34.757816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455074, 35.409019, 35.129368>,  <46.543850, 35.413563, 35.352299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.455074, 35.409019, 35.129368>,  <46.307117, 35.401443, 34.757816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.455074, 35.409019, 35.129368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733708, -0.619293, -0.279550,
		0.569955, 0.784932, -0.242968,
		0.369896, 0.018937, 0.928880,
		46.566044, 35.414700, 35.408031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.006870, 35.450027, 34.605415>,  <46.307117, 35.401443, 34.757816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.006870, 35.450027, 34.605415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998024, 35.275772, 34.965355>,  <46.992718, 35.171219, 35.181320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.998024, 35.275772, 34.965355>,  <47.006870, 35.450027, 34.605415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.998024, 35.275772, 34.965355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764557, -0.587316, -0.265541,
		0.644177, 0.682114, 0.346058,
		-0.022116, -0.435637, 0.899851,
		46.991390, 35.145081, 35.235310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.603569, 35.563049, 34.821976>,  <47.006870, 35.450027, 34.605415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.603569, 35.563049, 34.821976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470615, 35.228943, 34.997181>,  <47.390842, 35.028481, 35.102303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.470615, 35.228943, 34.997181>,  <47.603569, 35.563049, 34.821976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.470615, 35.228943, 34.997181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824189, -0.483012, -0.295657,
		0.458516, 0.262733, 0.848961,
		-0.332379, -0.835267, 0.438010,
		47.370903, 34.978363, 35.128586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.085979, 35.275196, 35.233047>,  <47.603569, 35.563049, 34.821976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.085979, 35.275196, 35.233047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.875839, 34.960335, 35.103806>,  <47.749756, 34.771420, 35.026260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.875839, 34.960335, 35.103806>,  <48.085979, 35.275196, 35.233047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.875839, 34.960335, 35.103806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835448, -0.405176, -0.371295,
		0.161353, -0.464995, 0.870485,
		-0.525350, -0.787154, -0.323103,
		47.718235, 34.724190, 35.006874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<39.374603, 38.555912, 47.603577> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998165, 38.658379, 47.691868>,  <38.772301, 38.719860, 47.744843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.998165, 38.658379, 47.691868>,  <39.374603, 38.555912, 47.603577>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.998165, 38.658379, 47.691868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197050, 0.115009, -0.973624,
		-0.274794, -0.959767, -0.057757,
		-0.941095, 0.256165, 0.220726,
		38.715836, 38.735229, 47.758087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.926357, 37.968380, 47.375965>,  <39.374603, 38.555912, 47.603577>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.926357, 37.968380, 47.375965> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717667, 38.309338, 47.389946>,  <38.592453, 38.513912, 47.398335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.717667, 38.309338, 47.389946>,  <38.926357, 37.968380, 47.375965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.717667, 38.309338, 47.389946> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194506, -0.078961, -0.977718,
		-0.830644, -0.516900, 0.206992,
		-0.521727, 0.852396, 0.034952,
		38.561150, 38.565056, 47.400433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.308823, 37.829128, 47.318886>,  <38.926357, 37.968380, 47.375965>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.308823, 37.829128, 47.318886> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299431, 38.213039, 47.206970>,  <38.293797, 38.443386, 47.139820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.299431, 38.213039, 47.206970>,  <38.308823, 37.829128, 47.318886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.299431, 38.213039, 47.206970> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157350, -0.279926, -0.947039,
		-0.987264, 0.021789, 0.157593,
		-0.023479, 0.959774, -0.279789,
		38.292389, 38.500973, 47.123032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.675777, 37.926933, 46.941566>,  <38.308823, 37.829128, 47.318886>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.675777, 37.926933, 46.941566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933044, 38.219959, 46.852406>,  <38.087402, 38.395775, 46.798908>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.933044, 38.219959, 46.852406>,  <37.675777, 37.926933, 46.941566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.933044, 38.219959, 46.852406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228919, -0.093839, -0.968912,
		-0.730708, 0.674198, 0.107344,
		0.643165, 0.732565, -0.222906,
		38.125996, 38.439728, 46.785534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.320641, 38.356045, 46.671169>,  <37.675777, 37.926933, 46.941566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.320641, 38.356045, 46.671169> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688034, 38.442062, 46.538418>,  <37.908470, 38.493671, 46.458767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.688034, 38.442062, 46.538418>,  <37.320641, 38.356045, 46.671169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688034, 38.442062, 46.538418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323124, -0.075729, -0.943322,
		-0.227990, 0.973663, -0.000069,
		0.918483, 0.215046, -0.331879,
		37.963577, 38.506577, 46.438854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203945, 38.682671, 46.074318>,  <37.320641, 38.356045, 46.671169>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203945, 38.682671, 46.074318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588757, 38.599644, 46.003429>,  <37.819645, 38.549828, 45.960896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.588757, 38.599644, 46.003429>,  <37.203945, 38.682671, 46.074318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.588757, 38.599644, 46.003429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227060, -0.248374, -0.941676,
		0.151448, 0.946163, -0.286075,
		0.962033, -0.207571, -0.177220,
		37.877365, 38.537373, 45.950264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.402538, 39.016693, 45.502117>,  <37.203945, 38.682671, 46.074318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.402538, 39.016693, 45.502117> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668911, 38.718288, 45.501633>,  <37.828735, 38.539246, 45.501343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.668911, 38.718288, 45.501633>,  <37.402538, 39.016693, 45.502117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668911, 38.718288, 45.501633> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195068, -0.172560, -0.965490,
		0.720061, 0.643184, -0.260436,
		0.665929, -0.746014, -0.001210,
		37.868690, 38.494484, 45.501270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856125, 39.079285, 44.830551>,  <37.402538, 39.016693, 45.502117>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856125, 39.079285, 44.830551> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880756, 38.706806, 44.974266>,  <37.895535, 38.483318, 45.060493>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.880756, 38.706806, 44.974266>,  <37.856125, 39.079285, 44.830551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880756, 38.706806, 44.974266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121886, -0.364290, -0.923275,
		0.990632, 0.013063, -0.135933,
		0.061580, -0.931194, 0.359285,
		37.899231, 38.427448, 45.082050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.292812, 38.753605, 44.309006>,  <37.856125, 39.079285, 44.830551>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.292812, 38.753605, 44.309006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096100, 38.459793, 44.496033>,  <37.978073, 38.283504, 44.608250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.096100, 38.459793, 44.496033>,  <38.292812, 38.753605, 44.309006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096100, 38.459793, 44.496033> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008494, -0.532918, -0.846124,
		0.870680, -0.420076, 0.255837,
		-0.491777, -0.734530, 0.467569,
		37.948566, 38.239433, 44.636303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498787, 38.168102, 44.041454>,  <38.292812, 38.753605, 44.309006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498787, 38.168102, 44.041454> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171074, 38.028622, 44.223522>,  <37.974445, 37.944935, 44.332764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.171074, 38.028622, 44.223522>,  <38.498787, 38.168102, 44.041454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171074, 38.028622, 44.223522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192225, -0.580860, -0.790981,
		0.540204, -0.735534, 0.408862,
		-0.819286, -0.348698, 0.455171,
		37.925289, 37.924011, 44.360073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.557560, 37.417706, 44.163124>,  <38.498787, 38.168102, 44.041454>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.557560, 37.417706, 44.163124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174206, 37.526474, 44.128372>,  <37.944191, 37.591736, 44.107521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.174206, 37.526474, 44.128372>,  <38.557560, 37.417706, 44.163124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.174206, 37.526474, 44.128372> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107221, -0.624947, -0.773269,
		-0.264562, -0.731778, 0.628099,
		-0.958390, 0.271923, -0.086875,
		37.886688, 37.608051, 44.102310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219734, 36.805763, 43.786812>,  <38.557560, 37.417706, 44.163124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219734, 36.805763, 43.786812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927631, 37.076046, 43.746510>,  <37.752369, 37.238216, 43.722328>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.927631, 37.076046, 43.746510>,  <38.219734, 36.805763, 43.786812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927631, 37.076046, 43.746510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272051, -0.422901, -0.864374,
		-0.626671, -0.603803, 0.492651,
		-0.730254, 0.675705, -0.100755,
		37.708553, 37.278759, 43.716282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526932, 36.405590, 43.647995>,  <38.219734, 36.805763, 43.786812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526932, 36.405590, 43.647995> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529903, 36.779877, 43.506927>,  <37.531689, 37.004448, 43.422287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.529903, 36.779877, 43.506927>,  <37.526932, 36.405590, 43.647995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.529903, 36.779877, 43.506927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280923, -0.336518, -0.898798,
		-0.959701, 0.105753, 0.260364,
		0.007433, 0.935720, -0.352665,
		37.532135, 37.060593, 43.401127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061844, 36.375580, 43.100517>,  <37.526932, 36.405590, 43.647995>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061844, 36.375580, 43.100517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266609, 36.711182, 43.026737>,  <37.389469, 36.912540, 42.982468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.266609, 36.711182, 43.026737>,  <37.061844, 36.375580, 43.100517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266609, 36.711182, 43.026737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199027, -0.093043, -0.975567,
		-0.835664, 0.536116, 0.119354,
		0.511912, 0.839001, -0.184454,
		37.420181, 36.962883, 42.971401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.712463, 36.645195, 42.597893>,  <37.061844, 36.375580, 43.100517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.712463, 36.645195, 42.597893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052555, 36.854023, 42.570923>,  <37.256611, 36.979321, 42.554741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.052555, 36.854023, 42.570923>,  <36.712463, 36.645195, 42.597893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052555, 36.854023, 42.570923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026953, -0.171085, -0.984887,
		-0.525716, 0.835566, -0.159533,
		0.850233, 0.522071, -0.067421,
		37.307625, 37.010643, 42.550697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.653851, 37.157719, 41.935463>,  <36.712463, 36.645195, 42.597893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.653851, 37.157719, 41.935463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043266, 37.128086, 42.021931>,  <37.276917, 37.110306, 42.073811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.043266, 37.128086, 42.021931>,  <36.653851, 37.157719, 41.935463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043266, 37.128086, 42.021931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211350, -0.067769, -0.975058,
		0.086883, 0.994947, -0.050319,
		0.973541, -0.074081, 0.216170,
		37.335327, 37.105862, 42.086781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.821018, 37.634987, 41.465618>,  <36.653851, 37.157719, 41.935463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.821018, 37.634987, 41.465618> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136295, 37.405704, 41.555222>,  <37.325462, 37.268135, 41.608982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.136295, 37.405704, 41.555222>,  <36.821018, 37.634987, 41.465618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.136295, 37.405704, 41.555222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198501, -0.107752, -0.974160,
		0.582534, 0.812294, 0.028853,
		0.788195, -0.573208, 0.224010,
		37.372753, 37.233742, 41.622425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.355885, 37.890247, 41.003494>,  <36.821018, 37.634987, 41.465618>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.355885, 37.890247, 41.003494> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464706, 37.520355, 41.109974>,  <37.529999, 37.298420, 41.173862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.464706, 37.520355, 41.109974>,  <37.355885, 37.890247, 41.003494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.464706, 37.520355, 41.109974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272657, -0.191220, -0.942917,
		0.922845, 0.329108, 0.200111,
		0.272057, -0.924728, 0.266200,
		37.546322, 37.242935, 41.189835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057339, 37.779747, 40.734966>,  <37.355885, 37.890247, 41.003494>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057339, 37.779747, 40.734966> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895538, 37.415596, 40.769814>,  <37.798458, 37.197105, 40.790722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.895538, 37.415596, 40.769814>,  <38.057339, 37.779747, 40.734966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895538, 37.415596, 40.769814> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129958, -0.151513, -0.979875,
		0.905255, -0.385042, 0.179599,
		-0.404505, -0.910377, 0.087119,
		37.774185, 37.142483, 40.795948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544395, 37.288982, 40.526215>,  <38.057339, 37.779747, 40.734966>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544395, 37.288982, 40.526215> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190323, 37.107674, 40.484264>,  <37.977879, 36.998886, 40.459095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.190323, 37.107674, 40.484264>,  <38.544395, 37.288982, 40.526215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190323, 37.107674, 40.484264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270181, -0.317295, -0.909025,
		0.378760, -0.832987, 0.403329,
		-0.885180, -0.453274, -0.104879,
		37.924770, 36.971691, 40.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692577, 36.802528, 40.111717>,  <38.544395, 37.288982, 40.526215>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692577, 36.802528, 40.111717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294353, 36.764915, 40.113255>,  <38.055420, 36.742348, 40.114178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.294353, 36.764915, 40.113255>,  <38.692577, 36.802528, 40.111717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294353, 36.764915, 40.113255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044788, -0.509293, -0.859427,
		0.082767, -0.855441, 0.511245,
		-0.995562, -0.094029, 0.003840,
		37.995686, 36.736706, 40.114407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537273, 36.186859, 39.632610>,  <38.692577, 36.802528, 40.111717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537273, 36.186859, 39.632610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187824, 36.380066, 39.656200>,  <37.978153, 36.495991, 39.670353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.187824, 36.380066, 39.656200>,  <38.537273, 36.186859, 39.632610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.187824, 36.380066, 39.656200> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242939, -0.327931, -0.912930,
		-0.421623, -0.811882, 0.403832,
		-0.873621, 0.483019, 0.058975,
		37.925739, 36.524971, 39.673893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317261, 36.133129, 39.619568>,  <38.537273, 36.186859, 39.632610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317261, 36.133129, 39.619568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.632908, 35.890766, 39.659920>,  <39.822296, 35.745350, 39.684132>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.632908, 35.890766, 39.659920>,  <39.317261, 36.133129, 39.619568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.632908, 35.890766, 39.659920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021100, 0.190869, 0.981389,
		-0.613881, -0.772302, 0.163402,
		0.789117, -0.605903, 0.100875,
		39.869644, 35.708996, 39.690182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154270, 35.748131, 40.263245>,  <39.317261, 36.133129, 39.619568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154270, 35.748131, 40.263245> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540306, 35.663673, 40.201248>,  <39.771927, 35.612999, 40.164051>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.540306, 35.663673, 40.201248>,  <39.154270, 35.748131, 40.263245>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540306, 35.663673, 40.201248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159092, 0.002467, 0.987261,
		-0.208067, -0.977453, 0.035972,
		0.965089, -0.211139, -0.154991,
		39.829834, 35.600330, 40.154751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.302425, 35.201687, 40.744408>,  <39.154270, 35.748131, 40.263245>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.302425, 35.201687, 40.744408> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645752, 35.386105, 40.654308>,  <39.851749, 35.496754, 40.600250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.645752, 35.386105, 40.654308>,  <39.302425, 35.201687, 40.744408>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.645752, 35.386105, 40.654308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164622, 0.168346, 0.971884,
		0.486000, -0.871263, 0.068596,
		0.858315, 0.461043, -0.225245,
		39.903248, 35.524418, 40.586735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.748604, 35.015041, 41.201435>,  <39.302425, 35.201687, 40.744408>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.748604, 35.015041, 41.201435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937355, 35.346066, 41.079800>,  <40.050606, 35.544682, 41.006817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.937355, 35.346066, 41.079800>,  <39.748604, 35.015041, 41.201435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.937355, 35.346066, 41.079800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085587, 0.300281, 0.950003,
		0.877502, -0.474308, 0.070866,
		0.471874, 0.827564, -0.304091,
		40.078918, 35.594334, 40.988571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.371449, 35.159355, 41.700691>,  <39.748604, 35.015041, 41.201435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.371449, 35.159355, 41.700691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314854, 35.514393, 41.525349>,  <40.280895, 35.727417, 41.420143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.314854, 35.514393, 41.525349>,  <40.371449, 35.159355, 41.700691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.314854, 35.514393, 41.525349> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317929, 0.460097, 0.828995,
		0.937498, -0.022071, -0.347291,
		-0.141490, 0.887594, -0.438357,
		40.272408, 35.780670, 41.393841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.013000, 35.507004, 41.859180>,  <40.371449, 35.159355, 41.700691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.013000, 35.507004, 41.859180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758755, 35.792732, 41.742058>,  <40.606205, 35.964169, 41.671783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.758755, 35.792732, 41.742058>,  <41.013000, 35.507004, 41.859180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.758755, 35.792732, 41.742058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335810, 0.597342, 0.728295,
		0.695143, 0.364590, -0.619557,
		-0.635617, 0.714323, -0.292805,
		40.568069, 36.007030, 41.654217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.456059, 36.116669, 41.810314>,  <41.013000, 35.507004, 41.859180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.456059, 36.116669, 41.810314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072556, 36.217972, 41.861927>,  <40.842453, 36.278755, 41.892895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.072556, 36.217972, 41.861927>,  <41.456059, 36.116669, 41.810314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.072556, 36.217972, 41.861927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245019, 0.506299, 0.826817,
		0.144067, 0.824331, -0.547469,
		-0.958755, 0.253258, 0.129036,
		40.784927, 36.293949, 41.900639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.505672, 36.797928, 42.028694>,  <41.456059, 36.116669, 41.810314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.505672, 36.797928, 42.028694> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.140728, 36.681973, 42.144318>,  <40.921761, 36.612400, 42.213692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.140728, 36.681973, 42.144318>,  <41.505672, 36.797928, 42.028694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.140728, 36.681973, 42.144318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178263, 0.354321, 0.917975,
		-0.368529, 0.889057, -0.271594,
		-0.912364, -0.289885, 0.289063,
		40.867020, 36.595005, 42.231037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132740, 37.373199, 42.437508>,  <41.505672, 36.797928, 42.028694>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132740, 37.373199, 42.437508> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.954868, 37.030987, 42.543591>,  <40.848145, 36.825661, 42.607243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.954868, 37.030987, 42.543591>,  <41.132740, 37.373199, 42.437508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954868, 37.030987, 42.543591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139276, 0.226451, 0.964014,
		-0.884797, 0.465611, 0.018457,
		-0.444675, -0.855527, 0.265212,
		40.821465, 36.774330, 42.623154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650383, 37.610168, 42.901573>,  <41.132740, 37.373199, 42.437508>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650383, 37.610168, 42.901573> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707600, 37.220406, 42.970943>,  <40.741928, 36.986549, 43.012566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.707600, 37.220406, 42.970943>,  <40.650383, 37.610168, 42.901573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.707600, 37.220406, 42.970943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026669, 0.178958, 0.983495,
		-0.989358, -0.136052, 0.051584,
		0.143038, -0.974405, 0.173425,
		40.750511, 36.928085, 43.022972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.098503, 37.338737, 43.334736>,  <40.650383, 37.610168, 42.901573>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.098503, 37.338737, 43.334736> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.382961, 37.063026, 43.390114>,  <40.553635, 36.897598, 43.423340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.382961, 37.063026, 43.390114>,  <40.098503, 37.338737, 43.334736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382961, 37.063026, 43.390114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088578, 0.107506, 0.990251,
		-0.697442, -0.716476, 0.015397,
		0.711146, -0.689278, 0.138443,
		40.596306, 36.856243, 43.431648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.818455, 36.884377, 43.860001>,  <40.098503, 37.338737, 43.334736>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.818455, 36.884377, 43.860001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.213512, 36.827782, 43.886944>,  <40.450546, 36.793823, 43.903111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.213512, 36.827782, 43.886944>,  <39.818455, 36.884377, 43.860001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213512, 36.827782, 43.886944> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046528, 0.145683, 0.988237,
		-0.149636, -0.979162, 0.137300,
		0.987646, -0.141487, 0.067358,
		40.509808, 36.785336, 43.907150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861324, 36.359020, 44.374172>,  <39.818455, 36.884377, 43.860001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861324, 36.359020, 44.374172> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224751, 36.522953, 44.341793>,  <40.442806, 36.621311, 44.322365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.224751, 36.522953, 44.341793>,  <39.861324, 36.359020, 44.374172>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224751, 36.522953, 44.341793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119797, -0.069982, 0.990329,
		0.400205, -0.909472, -0.112680,
		0.908562, 0.409833, -0.080944,
		40.497318, 36.645905, 44.317509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.314365, 35.927624, 44.747654>,  <39.861324, 36.359020, 44.374172>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.314365, 35.927624, 44.747654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491127, 36.286076, 44.731277>,  <40.597183, 36.501144, 44.721451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.491127, 36.286076, 44.731277>,  <40.314365, 35.927624, 44.747654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.491127, 36.286076, 44.731277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076877, 0.007643, 0.997011,
		0.893763, -0.443730, -0.065514,
		0.441903, 0.896128, -0.040943,
		40.623699, 36.554913, 44.718994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819550, 35.908264, 45.266846>,  <40.314365, 35.927624, 44.747654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819550, 35.908264, 45.266846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.833366, 36.302811, 45.202477>,  <40.841656, 36.539539, 45.163853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.833366, 36.302811, 45.202477>,  <40.819550, 35.908264, 45.266846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.833366, 36.302811, 45.202477> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109731, 0.156305, 0.981594,
		0.993361, -0.051567, -0.102835,
		0.034544, 0.986362, -0.160926,
		40.843731, 36.598721, 45.154198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.365429, 36.182873, 45.675045>,  <40.819550, 35.908264, 45.266846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.365429, 36.182873, 45.675045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.126217, 36.496758, 45.609833>,  <40.982689, 36.685089, 45.570705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.126217, 36.496758, 45.609833>,  <41.365429, 36.182873, 45.675045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126217, 36.496758, 45.609833> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154102, 0.312196, 0.937436,
		0.786517, 0.535495, -0.307630,
		-0.598033, 0.784716, -0.163027,
		40.946808, 36.732174, 45.560925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.707466, 36.810268, 45.941654>,  <41.365429, 36.182873, 45.675045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.707466, 36.810268, 45.941654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315228, 36.884342, 45.915955>,  <41.079884, 36.928787, 45.900536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.315228, 36.884342, 45.915955>,  <41.707466, 36.810268, 45.941654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.315228, 36.884342, 45.915955> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027606, 0.194060, 0.980601,
		0.194060, 0.963353, -0.185183,
		-0.980601, 0.185183, -0.064253,
		41.021046, 36.939896, 45.896679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.696770, 37.362225, 46.392357>,  <41.707466, 36.810268, 45.941654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.696770, 37.362225, 46.392357> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.311794, 37.257595, 46.363270>,  <41.080807, 37.194817, 46.345818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.311794, 37.257595, 46.363270>,  <41.696770, 37.362225, 46.392357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311794, 37.257595, 46.363270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144943, 0.268573, 0.952292,
		-0.229560, 0.927065, -0.296398,
		-0.962441, -0.261570, -0.072718,
		41.023064, 37.179123, 46.341454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<41.118828, 37.968159, 46.863716> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.903221, 37.632984, 46.829468>,  <40.773857, 37.431881, 46.808918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.903221, 37.632984, 46.829468>,  <41.118828, 37.968159, 46.863716>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.903221, 37.632984, 46.829468> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263500, 0.071203, 0.962028,
		-0.800019, 0.541108, -0.259176,
		-0.539015, -0.837933, -0.085618,
		40.741516, 37.381603, 46.803783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.514294, 38.093891, 47.160763>,  <41.118828, 37.968159, 46.863716>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.514294, 38.093891, 47.160763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543869, 37.696125, 47.190891>,  <40.561615, 37.457466, 47.208969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.543869, 37.696125, 47.190891>,  <40.514294, 38.093891, 47.160763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.543869, 37.696125, 47.190891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430856, 0.036265, 0.901691,
		-0.899387, -0.099120, -0.425769,
		0.073936, -0.994414, 0.075323,
		40.566051, 37.397800, 47.213490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.845745, 37.876709, 47.251053>,  <40.514294, 38.093891, 47.160763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.845745, 37.876709, 47.251053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087597, 37.591801, 47.393654>,  <40.232708, 37.420856, 47.479214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.087597, 37.591801, 47.393654>,  <39.845745, 37.876709, 47.251053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087597, 37.591801, 47.393654> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402341, 0.113169, 0.908468,
		-0.687423, -0.692719, -0.218152,
		0.604625, -0.712274, 0.356504,
		40.268986, 37.378120, 47.500607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411568, 37.452816, 47.714676>,  <39.845745, 37.876709, 47.251053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411568, 37.452816, 47.714676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786140, 37.347488, 47.807430>,  <40.010883, 37.284294, 47.863083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.786140, 37.347488, 47.807430>,  <39.411568, 37.452816, 47.714676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786140, 37.347488, 47.807430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227307, 0.048155, 0.972632,
		-0.267274, -0.963508, -0.014759,
		0.936428, -0.263314, 0.231882,
		40.067070, 37.268494, 47.876995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346867, 37.056114, 48.297401>,  <39.411568, 37.452816, 47.714676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346867, 37.056114, 48.297401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743031, 37.110588, 48.306782>,  <39.980728, 37.143272, 48.312408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.743031, 37.110588, 48.306782>,  <39.346867, 37.056114, 48.297401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743031, 37.110588, 48.306782> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017367, -0.045685, 0.998805,
		0.137091, -0.989630, -0.042881,
		0.990406, 0.136182, 0.023450,
		40.040154, 37.151443, 48.313816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600338, 36.588428, 48.837658>,  <39.346867, 37.056114, 48.297401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600338, 36.588428, 48.837658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903061, 36.849754, 48.829384>,  <40.084694, 37.006550, 48.824421>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.903061, 36.849754, 48.829384>,  <39.600338, 36.588428, 48.837658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.903061, 36.849754, 48.829384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017307, 0.011600, 0.999783,
		0.653409, -0.757001, -0.002527,
		0.756807, 0.653311, -0.020681,
		40.130104, 37.045746, 48.823181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958530, 36.284134, 49.336220>,  <39.600338, 36.588428, 48.837658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958530, 36.284134, 49.336220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080692, 36.663464, 49.301796>,  <40.153992, 36.891060, 49.281143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.080692, 36.663464, 49.301796>,  <39.958530, 36.284134, 49.336220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080692, 36.663464, 49.301796> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056340, 0.072218, 0.995796,
		0.950553, -0.308972, -0.031372,
		0.305407, 0.948325, -0.086055,
		40.172314, 36.947960, 49.275978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533520, 36.373718, 49.801258>,  <39.958530, 36.284134, 49.336220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533520, 36.373718, 49.801258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381187, 36.733315, 49.714741>,  <40.289787, 36.949074, 49.662830>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.381187, 36.733315, 49.714741>,  <40.533520, 36.373718, 49.801258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.381187, 36.733315, 49.714741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012051, 0.238730, 0.971011,
		0.924566, 0.367185, -0.101750,
		-0.380832, 0.898990, -0.216297,
		40.266937, 37.003010, 49.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.006695, 36.831100, 50.052269>,  <40.533520, 36.373718, 49.801258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.006695, 36.831100, 50.052269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661934, 37.033100, 50.033897>,  <40.455078, 37.154301, 50.022873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.661934, 37.033100, 50.033897>,  <41.006695, 36.831100, 50.052269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661934, 37.033100, 50.033897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106044, 0.268077, 0.957543,
		0.495870, 0.820434, -0.284607,
		-0.861898, 0.504998, -0.045930,
		40.403366, 37.184601, 50.020119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127411, 37.447411, 50.256714>,  <41.006695, 36.831100, 50.052269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127411, 37.447411, 50.256714> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731182, 37.431511, 50.309158>,  <40.493446, 37.421970, 50.340626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.731182, 37.431511, 50.309158>,  <41.127411, 37.447411, 50.256714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731182, 37.431511, 50.309158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122576, 0.170285, 0.977741,
		-0.061189, 0.984593, -0.163807,
		-0.990571, -0.039749, 0.131107,
		40.434010, 37.419586, 50.348492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993641, 38.020229, 50.602837>,  <41.127411, 37.447411, 50.256714>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993641, 38.020229, 50.602837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687164, 37.774300, 50.677608>,  <40.503281, 37.626740, 50.722473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.687164, 37.774300, 50.677608>,  <40.993641, 38.020229, 50.602837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.687164, 37.774300, 50.677608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092734, 0.182058, 0.978905,
		-0.635889, 0.767361, -0.082475,
		-0.766189, -0.614826, 0.186929,
		40.457306, 37.589851, 50.733688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501190, 38.402752, 50.871796>,  <40.993641, 38.020229, 50.602837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501190, 38.402752, 50.871796> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.402596, 38.036579, 50.999065>,  <40.343441, 37.816875, 51.075428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.402596, 38.036579, 50.999065>,  <40.501190, 38.402752, 50.871796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402596, 38.036579, 50.999065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084349, 0.347324, 0.933944,
		-0.965469, 0.203365, -0.162826,
		-0.246485, -0.915428, 0.318177,
		40.328651, 37.761951, 51.094517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041618, 38.507153, 51.423946>,  <40.501190, 38.402752, 50.871796>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041618, 38.507153, 51.423946> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142014, 38.123089, 51.473083>,  <40.202251, 37.892651, 51.502567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.142014, 38.123089, 51.473083>,  <40.041618, 38.507153, 51.423946>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142014, 38.123089, 51.473083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163729, 0.167190, 0.972235,
		-0.954042, -0.223909, 0.199170,
		0.250992, -0.960163, 0.122846,
		40.217312, 37.835041, 51.509937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835258, 38.318485, 52.069283>,  <40.041618, 38.507153, 51.423946>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835258, 38.318485, 52.069283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.114513, 38.036289, 52.020481>,  <40.282066, 37.866970, 51.991199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.114513, 38.036289, 52.020481>,  <39.835258, 38.318485, 52.069283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.114513, 38.036289, 52.020481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363139, 0.202058, 0.909562,
		-0.617036, -0.679304, 0.397256,
		0.698137, -0.705492, -0.122005,
		40.323956, 37.824642, 51.983879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.832752, 38.049812, 52.740795>,  <39.835258, 38.318485, 52.069283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.832752, 38.049812, 52.740795> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159794, 37.903992, 52.562523>,  <40.356018, 37.816502, 52.455559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.159794, 37.903992, 52.562523>,  <39.832752, 38.049812, 52.740795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159794, 37.903992, 52.562523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504205, 0.079540, 0.859913,
		-0.278030, -0.927781, 0.248840,
		0.817604, -0.364548, -0.445677,
		40.405075, 37.794628, 52.428818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.983616, 37.335640, 53.014721>,  <39.832752, 38.049812, 52.740795>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.983616, 37.335640, 53.014721> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344963, 37.440060, 52.878616>,  <40.561771, 37.502712, 52.796951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.344963, 37.440060, 52.878616>,  <39.983616, 37.335640, 53.014721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.344963, 37.440060, 52.878616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358581, -0.024526, 0.933176,
		0.235262, -0.965013, -0.115764,
		0.903367, 0.261052, -0.340265,
		40.615974, 37.518375, 52.776535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495644, 36.883553, 53.299633>,  <39.983616, 37.335640, 53.014721>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495644, 36.883553, 53.299633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709469, 37.197109, 53.173294>,  <40.837765, 37.385242, 53.097492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.709469, 37.197109, 53.173294>,  <40.495644, 36.883553, 53.299633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709469, 37.197109, 53.173294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502645, 0.005544, 0.864475,
		0.679405, -0.620874, -0.391055,
		0.534562, 0.783891, -0.315846,
		40.869839, 37.432278, 53.078541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.192562, 36.683342, 53.418121>,  <40.495644, 36.883553, 53.299633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.192562, 36.683342, 53.418121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162674, 37.081707, 53.397850>,  <41.144741, 37.320728, 53.385685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.162674, 37.081707, 53.397850>,  <41.192562, 36.683342, 53.418121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162674, 37.081707, 53.397850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394750, 0.076212, 0.915622,
		0.915745, 0.048408, -0.398832,
		-0.074720, 0.995916, -0.050682,
		41.140259, 37.380482, 53.382645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.905964, 37.008869, 53.587875>,  <41.192562, 36.683342, 53.418121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.905964, 37.008869, 53.587875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636703, 37.296810, 53.655621>,  <41.475147, 37.469574, 53.696270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.636703, 37.296810, 53.655621>,  <41.905964, 37.008869, 53.587875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.636703, 37.296810, 53.655621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219197, -0.024509, 0.975373,
		0.706275, 0.693694, -0.141292,
		-0.673147, 0.719853, 0.169365,
		41.434761, 37.512768, 53.706429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193272, 37.408707, 54.105930>,  <41.905964, 37.008869, 53.587875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193272, 37.408707, 54.105930> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799576, 37.478642, 54.116596>,  <41.563358, 37.520603, 54.122997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.799576, 37.478642, 54.116596>,  <42.193272, 37.408707, 54.105930>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.799576, 37.478642, 54.116596> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025804, -0.007210, 0.999641,
		0.174964, 0.984572, 0.002585,
		-0.984237, 0.174834, 0.026667,
		41.504303, 37.531094, 54.124596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.083336, 38.034542, 54.520500>,  <42.193272, 37.408707, 54.105930>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.083336, 38.034542, 54.520500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745789, 37.820560, 54.503990>,  <41.543259, 37.692173, 54.494083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.745789, 37.820560, 54.503990>,  <42.083336, 38.034542, 54.520500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.745789, 37.820560, 54.503990> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030535, -0.124686, 0.991726,
		-0.535675, 0.835630, 0.121554,
		-0.843872, -0.534955, -0.041275,
		41.492626, 37.660072, 54.491608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.661160, 38.271767, 55.076290>,  <42.083336, 38.034542, 54.520500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.661160, 38.271767, 55.076290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545219, 37.899719, 54.986073>,  <41.475655, 37.676491, 54.931942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.545219, 37.899719, 54.986073>,  <41.661160, 38.271767, 55.076290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.545219, 37.899719, 54.986073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206344, -0.169387, 0.963706,
		-0.934565, 0.325866, -0.142828,
		-0.289846, -0.930118, -0.225544,
		41.458267, 37.620686, 54.918407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.972805, 38.224854, 55.380890>,  <41.661160, 38.271767, 55.076290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.972805, 38.224854, 55.380890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158264, 37.874474, 55.327599>,  <41.269539, 37.664246, 55.295624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.158264, 37.874474, 55.327599>,  <40.972805, 38.224854, 55.380890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.158264, 37.874474, 55.327599> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121939, -0.212017, 0.969629,
		-0.877589, -0.433320, -0.205113,
		0.463647, -0.875947, -0.133226,
		41.297359, 37.611691, 55.287632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603931, 38.571320, 55.943672>,  <40.972805, 38.224854, 55.380890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603931, 38.571320, 55.943672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217991, 38.567734, 56.048733>,  <39.986427, 38.565582, 56.111771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.217991, 38.567734, 56.048733>,  <40.603931, 38.571320, 55.943672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.217991, 38.567734, 56.048733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249651, -0.280988, -0.926672,
		0.082106, -0.959669, 0.268873,
		-0.964849, -0.008961, 0.262653,
		39.928535, 38.565044, 56.127529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221519, 37.942432, 55.542923>,  <40.603931, 38.571320, 55.943672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221519, 37.942432, 55.542923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981361, 38.244534, 55.648083>,  <39.837265, 38.425797, 55.711178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.981361, 38.244534, 55.648083>,  <40.221519, 37.942432, 55.542923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.981361, 38.244534, 55.648083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328174, 0.067098, -0.942231,
		-0.729266, -0.651986, 0.207570,
		-0.600394, 0.755256, 0.262898,
		39.801243, 38.471111, 55.726952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.689827, 37.834080, 55.186451>,  <40.221519, 37.942432, 55.542923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.689827, 37.834080, 55.186451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672832, 38.225601, 55.266598>,  <39.662636, 38.460514, 55.314686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.672832, 38.225601, 55.266598>,  <39.689827, 37.834080, 55.186451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.672832, 38.225601, 55.266598> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377192, 0.169989, -0.910401,
		-0.925160, -0.114254, 0.361974,
		-0.042486, 0.978800, 0.200362,
		39.660088, 38.519241, 55.326706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.980202, 38.101383, 54.975670>,  <39.689827, 37.834080, 55.186451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.980202, 38.101383, 54.975670> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198162, 38.436028, 54.998188>,  <39.328938, 38.636814, 55.011700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.198162, 38.436028, 54.998188>,  <38.980202, 38.101383, 54.975670>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.198162, 38.436028, 54.998188> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480053, 0.366308, -0.797099,
		-0.687482, 0.407315, 0.601218,
		0.544901, 0.836608, 0.056298,
		39.361633, 38.687012, 55.015076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.456524, 38.632225, 54.837410>,  <38.980202, 38.101383, 54.975670>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.456524, 38.632225, 54.837410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813454, 38.789188, 54.748169>,  <39.027611, 38.883366, 54.694626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.813454, 38.789188, 54.748169>,  <38.456524, 38.632225, 54.837410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.813454, 38.789188, 54.748169> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371273, 0.356920, -0.857184,
		-0.256733, 0.847719, 0.464178,
		0.892325, 0.392404, -0.223102,
		39.081150, 38.906910, 54.681240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276215, 39.231079, 54.520283>,  <38.456524, 38.632225, 54.837410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276215, 39.231079, 54.520283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659786, 39.187157, 54.415665>,  <38.889927, 39.160805, 54.352894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.659786, 39.187157, 54.415665>,  <38.276215, 39.231079, 54.520283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.659786, 39.187157, 54.415665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237599, 0.192716, -0.952054,
		0.154944, 0.975092, 0.158711,
		0.958926, -0.109805, -0.261541,
		38.947464, 39.154217, 54.337204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384243, 39.838993, 54.132099>,  <38.276215, 39.231079, 54.520283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384243, 39.838993, 54.132099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622547, 39.539745, 54.015213>,  <38.765530, 39.360195, 53.945080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.622547, 39.539745, 54.015213>,  <38.384243, 39.838993, 54.132099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622547, 39.539745, 54.015213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177633, 0.232090, -0.956337,
		0.783274, 0.621654, 0.005379,
		0.595759, -0.748118, -0.292216,
		38.801273, 39.315311, 53.927547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.666656, 40.161636, 53.580669>,  <38.384243, 39.838993, 54.132099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.666656, 40.161636, 53.580669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736462, 39.770653, 53.533138>,  <38.778343, 39.536064, 53.504620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.736462, 39.770653, 53.533138>,  <38.666656, 40.161636, 53.580669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.736462, 39.770653, 53.533138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145820, 0.093694, -0.984865,
		0.973798, 0.189199, -0.126182,
		0.174513, -0.977459, -0.118828,
		38.788815, 39.477417, 53.497490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051254, 40.072151, 53.079700>,  <38.666656, 40.161636, 53.580669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051254, 40.072151, 53.079700> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955875, 39.683704, 53.083031>,  <38.898647, 39.450634, 53.085030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.955875, 39.683704, 53.083031>,  <39.051254, 40.072151, 53.079700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.955875, 39.683704, 53.083031> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016718, -0.012680, -0.999780,
		0.971012, -0.238253, 0.019259,
		-0.238445, -0.971120, 0.008329,
		38.884342, 39.392368, 53.085529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286240, 39.915405, 52.508724>,  <39.051254, 40.072151, 53.079700>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286240, 39.915405, 52.508724> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047348, 39.600540, 52.570305>,  <38.904015, 39.411621, 52.607254>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.047348, 39.600540, 52.570305>,  <39.286240, 39.915405, 52.508724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.047348, 39.600540, 52.570305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127621, -0.096236, -0.987143,
		0.791855, -0.609195, -0.042983,
		-0.597225, -0.787160, 0.153951,
		38.868179, 39.364391, 52.616489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440334, 39.409176, 52.019104>,  <39.286240, 39.915405, 52.508724>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440334, 39.409176, 52.019104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059406, 39.331760, 52.113449>,  <38.830849, 39.285309, 52.170055>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.059406, 39.331760, 52.113449>,  <39.440334, 39.409176, 52.019104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.059406, 39.331760, 52.113449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187734, -0.237693, -0.953026,
		0.240516, -0.951863, 0.190024,
		-0.952317, -0.193544, 0.235866,
		38.773712, 39.273697, 52.184208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.339893, 38.759537, 51.747181>,  <39.440334, 39.409176, 52.019104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.339893, 38.759537, 51.747181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 38.926956, 51.802444>,  <38.765411, 39.027409, 51.835602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.980843, 38.926956, 51.802444>,  <39.339893, 38.759537, 51.747181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.980843, 38.926956, 51.802444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224037, -0.163336, -0.960796,
		-0.379573, -0.893386, 0.240385,
		-0.897625, 0.418548, 0.138154,
		38.711555, 39.052521, 51.843891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998482, 38.237934, 51.473114>,  <39.339893, 38.759537, 51.747181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998482, 38.237934, 51.473114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753899, 38.554443, 51.472103>,  <38.607151, 38.744350, 51.471497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.753899, 38.554443, 51.472103>,  <38.998482, 38.237934, 51.473114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753899, 38.554443, 51.472103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416940, -0.324896, -0.848884,
		-0.672521, -0.518002, 0.528573,
		-0.611455, 0.791275, -0.002524,
		38.570461, 38.791824, 51.471348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315712, 37.986359, 51.240536>,  <38.998482, 38.237934, 51.473114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315712, 37.986359, 51.240536> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308372, 38.381695, 51.180069>,  <38.303970, 38.618896, 51.143787>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.308372, 38.381695, 51.180069>,  <38.315712, 37.986359, 51.240536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.308372, 38.381695, 51.180069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447667, -0.143310, -0.882642,
		-0.894012, 0.051479, 0.445076,
		-0.018347, 0.988338, -0.151167,
		38.302868, 38.678196, 51.134720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.624626, 38.183411, 50.822269>,  <38.315712, 37.986359, 51.240536>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.624626, 38.183411, 50.822269> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881084, 38.484047, 50.760254>,  <38.034958, 38.664429, 50.723045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.881084, 38.484047, 50.760254>,  <37.624626, 38.183411, 50.822269>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.881084, 38.484047, 50.760254> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241807, 0.006115, -0.970305,
		-0.728327, 0.659598, 0.185661,
		0.641146, 0.751594, -0.155041,
		38.073429, 38.709526, 50.713741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.352184, 38.512020, 50.174301>,  <37.624626, 38.183411, 50.822269>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.352184, 38.512020, 50.174301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726162, 38.652390, 50.195187>,  <37.950550, 38.736610, 50.207718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.726162, 38.652390, 50.195187>,  <37.352184, 38.512020, 50.174301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.726162, 38.652390, 50.195187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075876, -0.054004, -0.995654,
		-0.346580, 0.934845, -0.077118,
		0.934947, 0.350925, 0.052215,
		38.006645, 38.757668, 50.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420086, 39.137161, 49.818684>,  <37.352184, 38.512020, 50.174301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420086, 39.137161, 49.818684> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803509, 39.023907, 49.806011>,  <38.033562, 38.955952, 49.798409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.803509, 39.023907, 49.806011>,  <37.420086, 39.137161, 49.818684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.803509, 39.023907, 49.806011> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034434, 0.225521, -0.973630,
		0.282820, 0.932187, 0.225924,
		0.958555, -0.283141, -0.031683,
		38.091076, 38.938965, 49.796505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.807289, 39.591705, 49.363132>,  <37.420086, 39.137161, 49.818684>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.807289, 39.591705, 49.363132> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035686, 39.263386, 49.369400>,  <38.172726, 39.066395, 49.373161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.035686, 39.263386, 49.369400>,  <37.807289, 39.591705, 49.363132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.035686, 39.263386, 49.369400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127407, 0.069741, -0.989396,
		0.811006, 0.566937, 0.144398,
		0.570996, -0.820803, 0.015671,
		38.206985, 39.017143, 49.374100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525208, 39.791245, 49.151779>,  <37.807289, 39.591705, 49.363132>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525208, 39.791245, 49.151779> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486984, 39.396664, 49.098438>,  <38.464050, 39.159916, 49.066433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.486984, 39.396664, 49.098438>,  <38.525208, 39.791245, 49.151779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.486984, 39.396664, 49.098438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214526, 0.110406, -0.970458,
		0.972032, -0.121344, 0.201069,
		-0.095560, -0.986451, -0.133350,
		38.458317, 39.100727, 49.058434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134491, 39.654346, 48.778461>,  <38.525208, 39.791245, 49.151779>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134491, 39.654346, 48.778461> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863430, 39.361660, 48.749111>,  <38.700794, 39.186050, 48.731499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.863430, 39.361660, 48.749111>,  <39.134491, 39.654346, 48.778461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.863430, 39.361660, 48.749111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140461, -0.030840, -0.989606,
		0.721845, -0.680914, 0.123676,
		-0.677651, -0.731713, -0.073380,
		38.660133, 39.142147, 48.727097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495552, 39.307968, 48.298012>,  <39.134491, 39.654346, 48.778461>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495552, 39.307968, 48.298012> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111298, 39.196869, 48.295540>,  <38.880745, 39.130211, 48.294056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.111298, 39.196869, 48.295540>,  <39.495552, 39.307968, 48.298012>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.111298, 39.196869, 48.295540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004460, 0.006827, -0.999967,
		0.277783, -0.960629, -0.005319,
		-0.960634, -0.277750, -0.006180,
		38.823109, 39.113544, 48.293686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<45.097862, 26.335070, 33.251156> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756775, 26.369654, 33.457222>,  <44.552124, 26.390404, 33.580860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.756775, 26.369654, 33.457222>,  <45.097862, 26.335070, 33.251156>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.756775, 26.369654, 33.457222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435491, 0.662293, 0.609685,
		-0.288478, 0.744240, -0.602402,
		-0.852718, 0.086460, 0.515166,
		44.500961, 26.395592, 33.611771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.845715, 26.981768, 33.050900>,  <45.097862, 26.335070, 33.251156>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.845715, 26.981768, 33.050900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647327, 26.892353, 33.386532>,  <44.528297, 26.838705, 33.587910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.647327, 26.892353, 33.386532>,  <44.845715, 26.981768, 33.050900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.647327, 26.892353, 33.386532> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113348, 0.941364, 0.317783,
		-0.860913, 0.252717, -0.441547,
		-0.495965, -0.223535, 0.839077,
		44.498539, 26.825293, 33.638256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.420151, 27.623808, 33.263695>,  <44.845715, 26.981768, 33.050900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.420151, 27.623808, 33.263695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397335, 27.388344, 33.586243>,  <44.383648, 27.247066, 33.779770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.397335, 27.388344, 33.586243>,  <44.420151, 27.623808, 33.263695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.397335, 27.388344, 33.586243> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107787, 0.799330, 0.591146,
		-0.992537, 0.120632, 0.017859,
		-0.057036, -0.588659, 0.806367,
		44.380222, 27.211746, 33.828152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.828632, 27.845211, 33.672626>,  <44.420151, 27.623808, 33.263695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.828632, 27.845211, 33.672626> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077061, 27.657965, 33.924065>,  <44.226120, 27.545616, 34.074928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077061, 27.657965, 33.924065>,  <43.828632, 27.845211, 33.672626>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077061, 27.657965, 33.924065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085698, 0.837787, 0.539230,
		-0.779053, -0.281032, 0.560444,
		0.621074, -0.468118, 0.628596,
		44.263382, 27.517529, 34.112644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.591587, 27.994196, 34.357567>,  <43.828632, 27.845211, 33.672626>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.591587, 27.994196, 34.357567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977051, 27.892294, 34.389736>,  <44.208328, 27.831154, 34.409039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.977051, 27.892294, 34.389736>,  <43.591587, 27.994196, 34.357567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.977051, 27.892294, 34.389736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159432, 0.789991, 0.592027,
		-0.214358, -0.557687, 0.801895,
		0.963656, -0.254753, 0.080428,
		44.266148, 27.815868, 34.413864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.699043, 27.971117, 35.051743>,  <43.591587, 27.994196, 34.357567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.699043, 27.971117, 35.051743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069332, 28.011147, 34.905853>,  <44.291504, 28.035164, 34.818321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.069332, 28.011147, 34.905853>,  <43.699043, 27.971117, 35.051743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.069332, 28.011147, 34.905853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109782, 0.851733, 0.512346,
		0.361916, -0.514331, 0.777483,
		0.925724, 0.100072, -0.364721,
		44.347050, 28.041168, 34.796436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.060276, 28.178593, 35.643066>,  <43.699043, 27.971117, 35.051743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.060276, 28.178593, 35.643066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296177, 28.249454, 35.327900>,  <44.437717, 28.291971, 35.138802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.296177, 28.249454, 35.327900>,  <44.060276, 28.178593, 35.643066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.296177, 28.249454, 35.327900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340237, 0.830326, 0.441358,
		0.732411, -0.528370, 0.429416,
		0.589756, 0.177153, -0.787911,
		44.473103, 28.302601, 35.091526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.742607, 28.166849, 35.927921>,  <44.060276, 28.178593, 35.643066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.742607, 28.166849, 35.927921> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751881, 28.387896, 35.594677>,  <44.757446, 28.520523, 35.394730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.751881, 28.387896, 35.594677>,  <44.742607, 28.166849, 35.927921>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.751881, 28.387896, 35.594677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479093, 0.725273, 0.494417,
		0.877458, -0.410600, -0.247941,
		0.023183, 0.552618, -0.833112,
		44.758835, 28.553680, 35.344742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.352264, 28.482859, 35.976810>,  <44.742607, 28.166849, 35.927921>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.352264, 28.482859, 35.976810> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161098, 28.714964, 35.713024>,  <45.046398, 28.854227, 35.554752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.161098, 28.714964, 35.713024>,  <45.352264, 28.482859, 35.976810>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161098, 28.714964, 35.713024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305903, 0.813698, 0.494286,
		0.823421, 0.034493, -0.566381,
		-0.477912, 0.580264, -0.659465,
		45.017723, 28.889044, 35.515186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.766644, 29.074966, 35.927422>,  <45.352264, 28.482859, 35.976810>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.766644, 29.074966, 35.927422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423008, 29.195950, 35.762260>,  <45.216827, 29.268539, 35.663162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.423008, 29.195950, 35.762260>,  <45.766644, 29.074966, 35.927422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.423008, 29.195950, 35.762260> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098582, 0.889394, 0.446386,
		0.502245, 0.342780, -0.793884,
		-0.859088, 0.302457, -0.412902,
		45.165283, 29.286686, 35.638390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.894810, 29.727993, 35.504948>,  <45.766644, 29.074966, 35.927422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.894810, 29.727993, 35.504948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509026, 29.716015, 35.609955>,  <45.277554, 29.708828, 35.672958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.509026, 29.716015, 35.609955>,  <45.894810, 29.727993, 35.504948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.509026, 29.716015, 35.609955> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074963, 0.921716, 0.380551,
		-0.253363, 0.386707, -0.886716,
		-0.964462, -0.029946, 0.262518,
		45.219688, 29.707031, 35.688709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.567974, 30.316717, 35.283947>,  <45.894810, 29.727993, 35.504948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.567974, 30.316717, 35.283947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311806, 30.193748, 35.565472>,  <45.158104, 30.119967, 35.734386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.311806, 30.193748, 35.565472>,  <45.567974, 30.316717, 35.283947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.311806, 30.193748, 35.565472> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262976, 0.948774, 0.175131,
		-0.721601, -0.072930, -0.688457,
		-0.640418, -0.307423, 0.703816,
		45.119678, 30.101522, 35.776615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.026905, 30.761015, 35.158054>,  <45.567974, 30.316717, 35.283947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.026905, 30.761015, 35.158054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957245, 30.631804, 35.530144>,  <44.915447, 30.554276, 35.753399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.957245, 30.631804, 35.530144>,  <45.026905, 30.761015, 35.158054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.957245, 30.631804, 35.530144> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252128, 0.927801, 0.274986,
		-0.951894, -0.186648, -0.243022,
		-0.174151, -0.323030, 0.930227,
		44.904999, 30.534895, 35.809212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.349022, 31.004362, 35.309376>,  <45.026905, 30.761015, 35.158054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.349022, 31.004362, 35.309376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535187, 30.929632, 35.655437>,  <44.646885, 30.884794, 35.863075>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.535187, 30.929632, 35.655437>,  <44.349022, 31.004362, 35.309376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.535187, 30.929632, 35.655437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201497, 0.929437, 0.309104,
		-0.861853, -0.318186, 0.394926,
		0.465412, -0.186825, 0.865152,
		44.674809, 30.873585, 35.914982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.949116, 31.326193, 35.876308>,  <44.349022, 31.004362, 35.309376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.949116, 31.326193, 35.876308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.297249, 31.260561, 36.062035>,  <44.506130, 31.221182, 36.173470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.297249, 31.260561, 36.062035>,  <43.949116, 31.326193, 35.876308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.297249, 31.260561, 36.062035> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102118, 0.862235, 0.496108,
		-0.481755, -0.479196, 0.733678,
		0.870336, -0.164080, 0.464320,
		44.558350, 31.211336, 36.201332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.832947, 31.556713, 36.595779>,  <43.949116, 31.326193, 35.876308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.832947, 31.556713, 36.595779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227894, 31.551344, 36.532631>,  <44.464863, 31.548122, 36.494743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.227894, 31.551344, 36.532631>,  <43.832947, 31.556713, 36.595779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.227894, 31.551344, 36.532631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094387, 0.850121, 0.518059,
		0.127252, -0.526416, 0.840650,
		0.987369, -0.013423, -0.157866,
		44.524105, 31.547318, 36.485271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.109173, 31.662235, 37.204308>,  <43.832947, 31.556713, 36.595779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.109173, 31.662235, 37.204308> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393005, 31.769272, 36.943577>,  <44.563305, 31.833494, 36.787136>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.393005, 31.769272, 36.943577>,  <44.109173, 31.662235, 37.204308>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.393005, 31.769272, 36.943577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177227, 0.827564, 0.532662,
		0.681967, -0.493491, 0.539803,
		0.709586, 0.267590, -0.651831,
		44.605881, 31.849548, 36.748028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730461, 31.690664, 37.597130>,  <44.109173, 31.662235, 37.204308>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730461, 31.690664, 37.597130> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773411, 31.921009, 37.272945>,  <44.799183, 32.059216, 37.078434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.773411, 31.921009, 37.272945>,  <44.730461, 31.690664, 37.597130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.773411, 31.921009, 37.272945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198226, 0.786410, 0.585034,
		0.974257, -0.223475, -0.029708,
		0.107379, 0.575863, -0.810464,
		44.805626, 32.093769, 37.029808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.145485, 32.235310, 37.897301>,  <44.730461, 31.690664, 37.597130>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.145485, 32.235310, 37.897301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028259, 32.392567, 37.548691>,  <44.957924, 32.486923, 37.339527>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.028259, 32.392567, 37.548691>,  <45.145485, 32.235310, 37.897301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.028259, 32.392567, 37.548691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160217, 0.918849, 0.360620,
		0.942572, -0.033947, -0.332274,
		-0.293068, 0.393146, -0.871520,
		44.940338, 32.510509, 37.287235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.651688, 32.808434, 37.748039>,  <45.145485, 32.235310, 37.897301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.651688, 32.808434, 37.748039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322983, 32.891171, 37.535656>,  <45.125759, 32.940815, 37.408226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322983, 32.891171, 37.535656>,  <45.651688, 32.808434, 37.748039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322983, 32.891171, 37.535656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007895, 0.927569, 0.373569,
		0.569772, 0.311178, -0.760611,
		-0.821765, 0.206844, -0.530959,
		45.076454, 32.953224, 37.376369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.835060, 33.379154, 37.369358>,  <45.651688, 32.808434, 37.748039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.835060, 33.379154, 37.369358> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436131, 33.373173, 37.397987>,  <45.196774, 33.369583, 37.415165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.436131, 33.373173, 37.397987>,  <45.835060, 33.379154, 37.369358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436131, 33.373173, 37.397987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014703, 0.917851, 0.396652,
		-0.071627, 0.396642, -0.915174,
		-0.997323, -0.014955, 0.071575,
		45.136932, 33.368687, 37.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.938778, 33.402390, 36.682655>,  <45.835060, 33.379154, 37.369358>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.938778, 33.402390, 36.682655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018505, 33.630253, 36.363716>,  <46.066341, 33.766972, 36.172352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.018505, 33.630253, 36.363716>,  <45.938778, 33.402390, 36.682655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.018505, 33.630253, 36.363716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534195, -0.618976, -0.575764,
		-0.821527, 0.540699, 0.180936,
		0.199320, 0.569661, -0.797344,
		46.078300, 33.801151, 36.124512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.392853, 33.521057, 36.326302>,  <45.938778, 33.402390, 36.682655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.392853, 33.521057, 36.326302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666439, 33.605446, 36.046967>,  <45.830589, 33.656078, 35.879364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.666439, 33.605446, 36.046967>,  <45.392853, 33.521057, 36.326302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.666439, 33.605446, 36.046967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550793, -0.478349, -0.683966,
		-0.478349, 0.852451, -0.210972,
		0.683966, 0.210972, -0.698342,
		45.871628, 33.668739, 35.837463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.958515, 33.681206, 35.761799>,  <45.392853, 33.521057, 36.326302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.958515, 33.681206, 35.761799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321087, 33.626579, 35.601929>,  <45.538631, 33.593803, 35.506008>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.321087, 33.626579, 35.601929>,  <44.958515, 33.681206, 35.761799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.321087, 33.626579, 35.601929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412287, -0.491516, -0.767092,
		-0.091686, 0.860094, -0.501829,
		0.906429, -0.136566, -0.399671,
		45.593014, 33.585609, 35.482029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.916435, 33.877350, 35.059006>,  <44.958515, 33.681206, 35.761799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.916435, 33.877350, 35.059006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242184, 33.645229, 35.061657>,  <45.437634, 33.505959, 35.063248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.242184, 33.645229, 35.061657>,  <44.916435, 33.877350, 35.059006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.242184, 33.645229, 35.061657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294225, -0.422694, -0.857183,
		0.500225, 0.696118, -0.514970,
		0.814375, -0.580301, 0.006627,
		45.486496, 33.471138, 35.063644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.183216, 33.869724, 34.342995>,  <44.916435, 33.877350, 35.059006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.183216, 33.869724, 34.342995> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337631, 33.543751, 34.515900>,  <45.430283, 33.348167, 34.619644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.337631, 33.543751, 34.515900>,  <45.183216, 33.869724, 34.342995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.337631, 33.543751, 34.515900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091115, -0.499980, -0.861231,
		0.917970, 0.293086, -0.267266,
		0.386042, -0.814936, 0.432263,
		45.453445, 33.299271, 34.645580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.650047, 33.720734, 33.889458>,  <45.183216, 33.869724, 34.342995>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.650047, 33.720734, 33.889458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593616, 33.375397, 34.083256>,  <45.559757, 33.168194, 34.199535>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.593616, 33.375397, 34.083256>,  <45.650047, 33.720734, 33.889458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.593616, 33.375397, 34.083256> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066900, -0.479962, -0.874735,
		0.987736, -0.155815, 0.009952,
		-0.141073, -0.863342, 0.484499,
		45.551296, 33.116394, 34.228607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.979851, 33.224651, 33.491619>,  <45.650047, 33.720734, 33.889458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.979851, 33.224651, 33.491619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770481, 32.981697, 33.730652>,  <45.644859, 32.835926, 33.874073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.770481, 32.981697, 33.730652>,  <45.979851, 33.224651, 33.491619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.770481, 32.981697, 33.730652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155050, -0.621728, -0.767733,
		0.837844, -0.494509, 0.231254,
		-0.523428, -0.607384, 0.597584,
		45.613453, 32.799480, 33.909927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.235630, 32.563919, 33.391613>,  <45.979851, 33.224651, 33.491619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.235630, 32.563919, 33.391613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876492, 32.475445, 33.543903>,  <45.661007, 32.422359, 33.635277>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.876492, 32.475445, 33.543903>,  <46.235630, 32.563919, 33.391613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.876492, 32.475445, 33.543903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123467, -0.703512, -0.699876,
		0.422648, -0.675387, 0.604336,
		-0.897844, -0.221185, 0.380725,
		45.607140, 32.409088, 33.658119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.068218, 31.795004, 33.356346>,  <46.235630, 32.563919, 33.391613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.068218, 31.795004, 33.356346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716309, 31.980986, 33.395985>,  <45.505165, 32.092575, 33.419769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.716309, 31.980986, 33.395985>,  <46.068218, 31.795004, 33.356346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.716309, 31.980986, 33.395985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424473, -0.674417, -0.604139,
		-0.214064, -0.573568, 0.790693,
		-0.879773, 0.464953, 0.099096,
		45.452377, 32.120472, 33.425713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.615528, 31.256929, 33.570774>,  <46.068218, 31.795004, 33.356346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.615528, 31.256929, 33.570774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.409527, 31.555578, 33.402332>,  <45.285927, 31.734768, 33.301270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.409527, 31.555578, 33.402332>,  <45.615528, 31.256929, 33.570774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.409527, 31.555578, 33.402332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484729, -0.658835, -0.575304,
		-0.706970, -0.092165, 0.701213,
		-0.515006, 0.746620, -0.421101,
		45.255024, 31.779564, 33.276001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.040627, 30.960955, 33.400021>,  <45.615528, 31.256929, 33.570774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.040627, 30.960955, 33.400021> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985664, 31.308374, 33.209549>,  <44.952686, 31.516827, 33.095268>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.985664, 31.308374, 33.209549>,  <45.040627, 30.960955, 33.400021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.985664, 31.308374, 33.209549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586865, -0.458660, -0.667248,
		-0.797940, 0.187768, 0.572744,
		-0.137407, 0.868547, -0.476177,
		44.944443, 31.568939, 33.066696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.291332, 31.143551, 33.301929>,  <45.040627, 30.960955, 33.400021>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.291332, 31.143551, 33.301929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496147, 31.344500, 33.023235>,  <44.619038, 31.465069, 32.856018>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.496147, 31.344500, 33.023235>,  <44.291332, 31.143551, 33.301929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.496147, 31.344500, 33.023235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603197, -0.367180, -0.708049,
		-0.611529, 0.782818, 0.115017,
		0.512041, 0.502370, -0.696734,
		44.649761, 31.495211, 32.814217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812618, 31.441347, 32.964733>,  <44.291332, 31.143551, 33.301929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812618, 31.441347, 32.964733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127602, 31.417257, 32.719368>,  <44.316593, 31.402803, 32.572147>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.127602, 31.417257, 32.719368>,  <43.812618, 31.441347, 32.964733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.127602, 31.417257, 32.719368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563143, -0.474853, -0.676302,
		-0.250551, 0.878002, -0.407844,
		0.787460, -0.060227, -0.613416,
		44.363838, 31.399189, 32.535343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557930, 31.525997, 32.295856>,  <43.812618, 31.441347, 32.964733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557930, 31.525997, 32.295856> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908844, 31.340014, 32.248230>,  <44.119392, 31.228422, 32.219654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.908844, 31.340014, 32.248230>,  <43.557930, 31.525997, 32.295856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.908844, 31.340014, 32.248230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413938, -0.607383, -0.678043,
		0.242943, 0.644126, -0.725314,
		0.877288, -0.464961, -0.119068,
		44.172031, 31.200525, 32.212509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653244, 31.448883, 31.621910>,  <43.557930, 31.525997, 32.295856>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653244, 31.448883, 31.621910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884197, 31.167143, 31.787085>,  <44.022770, 30.998098, 31.886190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.884197, 31.167143, 31.787085>,  <43.653244, 31.448883, 31.621910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.884197, 31.167143, 31.787085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283799, -0.647357, -0.707380,
		0.765562, 0.291239, -0.573668,
		0.577385, -0.704350, 0.412939,
		44.057411, 30.955837, 31.910967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.962257, 31.073744, 31.043772>,  <43.653244, 31.448883, 31.621910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.962257, 31.073744, 31.043772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994926, 30.812048, 31.344517>,  <44.014526, 30.655029, 31.524963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.994926, 30.812048, 31.344517>,  <43.962257, 31.073744, 31.043772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.994926, 30.812048, 31.344517> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354236, -0.724182, -0.591674,
		0.931583, -0.218014, -0.290901,
		0.081672, -0.654240, 0.751864,
		44.019428, 30.615776, 31.570076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959755, 30.438086, 30.752157>,  <43.962257, 31.073744, 31.043772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959755, 30.438086, 30.752157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881199, 30.331673, 31.129656>,  <43.834064, 30.267824, 31.356155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.881199, 30.331673, 31.129656>,  <43.959755, 30.438086, 30.752157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.881199, 30.331673, 31.129656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442817, -0.834684, -0.327438,
		0.874839, -0.482213, 0.046119,
		-0.196389, -0.266033, 0.943747,
		43.822281, 30.251863, 31.412781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.054020, 29.755753, 30.756668>,  <43.959755, 30.438086, 30.752157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.054020, 29.755753, 30.756668> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853691, 29.772148, 31.102499>,  <43.733494, 29.781986, 31.309998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.853691, 29.772148, 31.102499>,  <44.054020, 29.755753, 30.756668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.853691, 29.772148, 31.102499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608153, -0.727430, -0.317797,
		0.615895, -0.684956, 0.389240,
		-0.500822, 0.040988, 0.864579,
		43.703445, 29.784445, 31.361874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084503, 29.155096, 31.049351>,  <44.054020, 29.755753, 30.756668>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084503, 29.155096, 31.049351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768974, 29.318743, 31.232821>,  <43.579659, 29.416931, 31.342903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.768974, 29.318743, 31.232821>,  <44.084503, 29.155096, 31.049351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.768974, 29.318743, 31.232821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541053, -0.816262, -0.202430,
		0.291583, -0.407849, 0.865239,
		-0.788823, 0.409116, 0.458676,
		43.532326, 29.441477, 31.370422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.938934, 28.658619, 31.417952>,  <44.084503, 29.155096, 31.049351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.938934, 28.658619, 31.417952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609619, 28.885288, 31.404831>,  <43.412029, 29.021290, 31.396959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.609619, 28.885288, 31.404831>,  <43.938934, 28.658619, 31.417952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609619, 28.885288, 31.404831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549424, -0.810080, -0.204706,
		-0.142573, -0.150510, 0.978274,
		-0.823290, 0.566672, -0.032802,
		43.362633, 29.055290, 31.394991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.489212, 28.336098, 31.914455>,  <43.938934, 28.658619, 31.417952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.489212, 28.336098, 31.914455> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266251, 28.549047, 31.659618>,  <43.132473, 28.676817, 31.506716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.266251, 28.549047, 31.659618>,  <43.489212, 28.336098, 31.914455>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.266251, 28.549047, 31.659618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537288, -0.816307, -0.212048,
		-0.632950, 0.224105, 0.741048,
		-0.557401, 0.532372, -0.637090,
		43.099030, 28.708759, 31.468491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.780415, 36.552937, 43.873028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386444, 36.620697, 43.886982>,  <41.150063, 36.661354, 43.895355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386444, 36.620697, 43.886982>,  <41.780415, 36.552937, 43.873028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386444, 36.620697, 43.886982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115158, -0.491825, -0.863045,
		-0.129046, -0.854056, 0.503921,
		-0.984929, 0.169403, 0.034884,
		41.090965, 36.671516, 43.897446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.491066, 35.957787, 43.713455>,  <41.780415, 36.552937, 43.873028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.491066, 35.957787, 43.713455> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201656, 36.215519, 43.614376>,  <41.028011, 36.370159, 43.554928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201656, 36.215519, 43.614376>,  <41.491066, 35.957787, 43.713455>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201656, 36.215519, 43.614376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041128, -0.398429, -0.916277,
		-0.689072, -0.652761, 0.314773,
		-0.723524, 0.644327, -0.247699,
		40.984600, 36.408817, 43.540066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996105, 35.612309, 43.313671>,  <41.491066, 35.957787, 43.713455>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996105, 35.612309, 43.313671> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926529, 35.993786, 43.215523>,  <40.884781, 36.222672, 43.156631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.926529, 35.993786, 43.215523>,  <40.996105, 35.612309, 43.313671>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.926529, 35.993786, 43.215523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203113, -0.278561, -0.938695,
		-0.963581, -0.113442, 0.242162,
		-0.173944, 0.953695, -0.245375,
		40.874344, 36.279896, 43.141911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.273258, 35.630318, 42.952541>,  <40.996105, 35.612309, 43.313671>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.273258, 35.630318, 42.952541> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456474, 35.971729, 42.853191>,  <40.566406, 36.176575, 42.793583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456474, 35.971729, 42.853191>,  <40.273258, 35.630318, 42.952541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.456474, 35.971729, 42.853191> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351687, -0.082614, -0.932465,
		-0.816402, 0.514460, 0.262333,
		0.458043, 0.853525, -0.248376,
		40.593887, 36.227787, 42.778679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.742733, 36.018578, 42.594639>,  <40.273258, 35.630318, 42.952541>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.742733, 36.018578, 42.594639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080692, 36.206497, 42.492313>,  <40.283466, 36.319248, 42.430916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080692, 36.206497, 42.492313>,  <39.742733, 36.018578, 42.594639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.080692, 36.206497, 42.492313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221807, -0.127500, -0.966719,
		-0.486780, 0.873518, -0.003519,
		0.844895, 0.469799, -0.255817,
		40.334160, 36.347435, 42.415569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533127, 36.540306, 42.088894>,  <39.742733, 36.018578, 42.594639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533127, 36.540306, 42.088894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925663, 36.487408, 42.033066>,  <40.161186, 36.455669, 41.999569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925663, 36.487408, 42.033066>,  <39.533127, 36.540306, 42.088894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925663, 36.487408, 42.033066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159674, -0.156145, -0.974743,
		0.107108, 0.978842, -0.174348,
		0.981342, -0.132241, -0.139571,
		40.220066, 36.447735, 41.991196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625423, 36.863602, 41.498837>,  <39.533127, 36.540306, 42.088894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625423, 36.863602, 41.498837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926292, 36.604450, 41.546967>,  <40.106815, 36.448959, 41.575844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.926292, 36.604450, 41.546967>,  <39.625423, 36.863602, 41.498837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.926292, 36.604450, 41.546967> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081169, -0.272303, -0.958782,
		0.653943, 0.711407, -0.257408,
		0.752177, -0.647882, 0.120326,
		40.151947, 36.410084, 41.583065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.978706, 36.930073, 40.904629>,  <39.625423, 36.863602, 41.498837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.978706, 36.930073, 40.904629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087795, 36.575073, 41.053204>,  <40.153248, 36.362072, 41.142349>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.087795, 36.575073, 41.053204>,  <39.978706, 36.930073, 40.904629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.087795, 36.575073, 41.053204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051098, -0.372164, -0.926759,
		0.960734, 0.271729, -0.056148,
		0.272724, -0.887501, 0.371436,
		40.169613, 36.308823, 41.164635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612152, 36.664467, 40.589935>,  <39.978706, 36.930073, 40.904629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612152, 36.664467, 40.589935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431263, 36.328064, 40.708736>,  <40.322731, 36.126225, 40.780018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.431263, 36.328064, 40.708736>,  <40.612152, 36.664467, 40.589935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431263, 36.328064, 40.708736> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121419, -0.271845, -0.954651,
		0.883602, -0.467776, 0.020821,
		-0.452223, -0.841003, 0.297000,
		40.295597, 36.075764, 40.797836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973392, 36.145905, 40.251385>,  <40.612152, 36.664467, 40.589935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973392, 36.145905, 40.251385> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630539, 35.965176, 40.350327>,  <40.424828, 35.856739, 40.409691>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.630539, 35.965176, 40.350327>,  <40.973392, 36.145905, 40.251385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630539, 35.965176, 40.350327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069144, -0.374936, -0.924468,
		0.510433, -0.809495, 0.290130,
		-0.857133, -0.451819, 0.247352,
		40.373398, 35.829632, 40.424534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074760, 35.483986, 39.903393>,  <40.973392, 36.145905, 40.251385>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074760, 35.483986, 39.903393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 35.510750, 39.995270>,  <40.453342, 35.526806, 40.050396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.686375, 35.510750, 39.995270>,  <41.074760, 35.483986, 39.903393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686375, 35.510750, 39.995270> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239136, -0.299768, -0.923555,
		0.007064, -0.951663, 0.307063,
		-0.970961, 0.066906, 0.229694,
		40.395088, 35.530823, 40.064178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837700, 34.806923, 39.826969>,  <41.074760, 35.483986, 39.903393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837700, 34.806923, 39.826969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546524, 35.078960, 39.792152>,  <40.371819, 35.242184, 39.771263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.546524, 35.078960, 39.792152>,  <40.837700, 34.806923, 39.826969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.546524, 35.078960, 39.792152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229994, -0.361804, -0.903438,
		-0.645912, -0.637632, 0.419789,
		-0.727942, 0.680091, -0.087042,
		40.328140, 35.282986, 39.766041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256016, 34.485321, 39.721661>,  <40.837700, 34.806923, 39.826969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256016, 34.485321, 39.721661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191185, 34.855667, 39.585133>,  <40.152287, 35.077877, 39.503216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.191185, 34.855667, 39.585133>,  <40.256016, 34.485321, 39.721661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.191185, 34.855667, 39.585133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237884, -0.372349, -0.897088,
		-0.957675, -0.064204, 0.280599,
		-0.162077, 0.925869, -0.341316,
		40.142563, 35.133427, 39.482738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815056, 33.875648, 39.562744>,  <40.256016, 34.485321, 39.721661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815056, 33.875648, 39.562744> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898148, 33.485779, 39.529598>,  <40.948002, 33.251858, 39.509712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898148, 33.485779, 39.529598>,  <40.815056, 33.875648, 39.562744>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.898148, 33.485779, 39.529598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768938, -0.215066, 0.602063,
		-0.604634, -0.061350, -0.794137,
		0.207729, -0.974670, -0.082862,
		40.960464, 33.193378, 39.504738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.244598, 33.364983, 39.360050>,  <40.815056, 33.875648, 39.562744>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.244598, 33.364983, 39.360050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518562, 33.196575, 39.597923>,  <40.682941, 33.095531, 39.740646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518562, 33.196575, 39.597923>,  <40.244598, 33.364983, 39.360050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518562, 33.196575, 39.597923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717161, -0.245276, 0.652319,
		-0.128778, -0.873260, -0.469929,
		0.684907, -0.421020, 0.594681,
		40.724033, 33.070271, 39.776329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905602, 32.735229, 39.519096>,  <40.244598, 33.364983, 39.360050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905602, 32.735229, 39.519096> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210346, 32.774658, 39.775173>,  <40.393192, 32.798313, 39.928822>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.210346, 32.774658, 39.775173>,  <39.905602, 32.735229, 39.519096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210346, 32.774658, 39.775173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542744, -0.442319, 0.713991,
		0.353547, -0.891425, -0.283489,
		0.761862, 0.098568, 0.640196,
		40.438904, 32.804230, 39.967232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.942665, 32.145775, 39.856888>,  <39.905602, 32.735229, 39.519096>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.942665, 32.145775, 39.856888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141727, 32.382401, 40.110622>,  <40.261166, 32.524376, 40.262863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.141727, 32.382401, 40.110622>,  <39.942665, 32.145775, 39.856888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.141727, 32.382401, 40.110622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426798, -0.469660, 0.772828,
		0.755102, -0.655339, 0.018749,
		0.497659, 0.591566, 0.634338,
		40.291023, 32.559872, 40.300922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094475, 31.868660, 40.466156>,  <39.942665, 32.145775, 39.856888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094475, 31.868660, 40.466156> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119576, 32.227257, 40.641594>,  <40.134636, 32.442413, 40.746857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119576, 32.227257, 40.641594>,  <40.094475, 31.868660, 40.466156>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119576, 32.227257, 40.641594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653284, -0.295335, 0.697134,
		0.754508, -0.330271, 0.567132,
		0.062749, 0.896492, 0.438594,
		40.138401, 32.496204, 40.773170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.215832, 31.725754, 41.235817>,  <40.094475, 31.868660, 40.466156>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.215832, 31.725754, 41.235817> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046268, 32.084774, 41.187305>,  <39.944530, 32.300186, 41.158199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046268, 32.084774, 41.187305>,  <40.215832, 31.725754, 41.235817>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046268, 32.084774, 41.187305> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611083, -0.184597, 0.769741,
		0.668492, 0.400412, 0.626729,
		-0.423906, 0.897549, -0.121283,
		39.919098, 32.354038, 41.150921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.018169, 31.967123, 41.938919>,  <40.215832, 31.725754, 41.235817>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.018169, 31.967123, 41.938919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810211, 32.249565, 41.746620>,  <39.685436, 32.419029, 41.631241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810211, 32.249565, 41.746620>,  <40.018169, 31.967123, 41.938919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.810211, 32.249565, 41.746620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622368, 0.072388, 0.779370,
		0.585119, 0.704395, 0.401825,
		-0.519897, 0.706107, -0.480749,
		39.654243, 32.461399, 41.602394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929588, 32.595081, 42.384872>,  <40.018169, 31.967123, 41.938919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929588, 32.595081, 42.384872> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627548, 32.578716, 42.123138>,  <39.446323, 32.568897, 41.966099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627548, 32.578716, 42.123138>,  <39.929588, 32.595081, 42.384872>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.627548, 32.578716, 42.123138> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650332, 0.173168, 0.739649,
		0.083052, 0.984042, -0.157363,
		-0.755096, -0.040909, -0.654336,
		39.401020, 32.566444, 41.926838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609112, 33.255203, 42.492496>,  <39.929588, 32.595081, 42.384872>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609112, 33.255203, 42.492496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340439, 33.022137, 42.309486>,  <39.179234, 32.882294, 42.199680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.340439, 33.022137, 42.309486>,  <39.609112, 33.255203, 42.492496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.340439, 33.022137, 42.309486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639791, 0.144867, 0.754772,
		-0.373504, 0.799692, -0.470093,
		-0.671687, -0.582671, -0.457527,
		39.138931, 32.847336, 42.172230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050449, 33.631531, 42.459496>,  <39.609112, 33.255203, 42.492496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050449, 33.631531, 42.459496> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915012, 33.257805, 42.414936>,  <38.833752, 33.033569, 42.388199>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915012, 33.257805, 42.414936>,  <39.050449, 33.631531, 42.459496>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.915012, 33.257805, 42.414936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687940, 0.165041, 0.706753,
		-0.641945, 0.315937, -0.698635,
		-0.338592, -0.934315, -0.111399,
		38.813435, 32.977509, 42.381516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.434063, 33.777054, 42.366623>,  <39.050449, 33.631531, 42.459496>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.434063, 33.777054, 42.366623> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440136, 33.389542, 42.465599>,  <38.443779, 33.157032, 42.524982>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440136, 33.389542, 42.465599>,  <38.434063, 33.777054, 42.366623>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.440136, 33.389542, 42.465599> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686093, 0.169920, 0.707392,
		-0.727355, -0.180509, -0.662096,
		0.015187, -0.968785, 0.247438,
		38.444691, 33.098907, 42.539829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.733559, 33.555107, 42.416573>,  <38.434063, 33.777054, 42.366623>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.733559, 33.555107, 42.416573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927315, 33.269009, 42.618084>,  <38.043568, 33.097351, 42.738991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927315, 33.269009, 42.618084>,  <37.733559, 33.555107, 42.416573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.927315, 33.269009, 42.618084> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628045, 0.116583, 0.769394,
		-0.609038, -0.689080, -0.392735,
		0.484388, -0.715246, 0.503777,
		38.072632, 33.054436, 42.769218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209114, 33.104713, 42.716301>,  <37.733559, 33.555107, 42.416573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209114, 33.104713, 42.716301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542175, 33.051186, 42.931252>,  <37.742012, 33.019070, 43.060223>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.542175, 33.051186, 42.931252>,  <37.209114, 33.104713, 42.716301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542175, 33.051186, 42.931252> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505919, 0.210853, 0.836413,
		-0.225239, -0.968314, 0.107865,
		0.832654, -0.133822, 0.537381,
		37.791973, 33.011040, 43.092464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003189, 32.918167, 43.325405>,  <37.209114, 33.104713, 42.716301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003189, 32.918167, 43.325405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381207, 32.936527, 43.454891>,  <37.608017, 32.947544, 43.532581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381207, 32.936527, 43.454891>,  <37.003189, 32.918167, 43.325405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381207, 32.936527, 43.454891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325305, 0.032770, 0.945041,
		0.032770, -0.998408, 0.045900,
		-0.945041, -0.045900, -0.323713,
		37.664719, 32.950298, 43.552006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201080, 32.274124, 43.848957>,  <37.003189, 32.918167, 43.325405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201080, 32.274124, 43.848957> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389366, 32.625549, 43.881351>,  <37.502338, 32.836403, 43.900787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.389366, 32.625549, 43.881351>,  <37.201080, 32.274124, 43.848957>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.389366, 32.625549, 43.881351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292786, 0.068958, 0.953688,
		0.832288, -0.472628, 0.289689,
		0.470716, 0.878560, 0.080986,
		37.530582, 32.889118, 43.905647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984116, 31.702961, 44.377666>,  <37.201080, 32.274124, 43.848957>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984116, 31.702961, 44.377666> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655357, 31.558592, 44.553951>,  <36.458103, 31.471970, 44.659721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.655357, 31.558592, 44.553951>,  <36.984116, 31.702961, 44.377666>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.655357, 31.558592, 44.553951> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387629, -0.212564, -0.896973,
		0.417417, -0.908048, 0.034801,
		-0.821892, -0.360922, 0.440714,
		36.408791, 31.450315, 44.686165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818501, 31.053724, 44.059948>,  <36.984116, 31.702961, 44.377666>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818501, 31.053724, 44.059948> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473434, 31.186392, 44.212685>,  <36.266396, 31.265993, 44.304325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473434, 31.186392, 44.212685>,  <36.818501, 31.053724, 44.059948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473434, 31.186392, 44.212685> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448617, -0.153149, -0.880505,
		-0.233562, -0.930880, 0.280911,
		-0.862665, 0.331674, 0.381838,
		36.214634, 31.285892, 44.327236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365074, 30.515257, 43.788013>,  <36.818501, 31.053724, 44.059948>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365074, 30.515257, 43.788013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161884, 30.843430, 43.892971>,  <36.039970, 31.040333, 43.955944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161884, 30.843430, 43.892971>,  <36.365074, 30.515257, 43.788013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.161884, 30.843430, 43.892971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403945, 0.042155, -0.913812,
		-0.760781, -0.570188, 0.309996,
		-0.507977, 0.820432, 0.262395,
		36.009491, 31.089560, 43.971691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.649689, 30.431551, 43.636868>,  <36.365074, 30.515257, 43.788013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.649689, 30.431551, 43.636868> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679695, 30.828720, 43.673695>,  <35.697701, 31.067022, 43.695789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679695, 30.828720, 43.673695>,  <35.649689, 30.431551, 43.636868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.679695, 30.828720, 43.673695> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519577, 0.117722, -0.846275,
		-0.851124, 0.015652, 0.524731,
		0.075018, 0.992924, 0.092064,
		35.702202, 31.126596, 43.701313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.037510, 30.638721, 43.404316>,  <35.649689, 30.431551, 43.636868>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.037510, 30.638721, 43.404316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265484, 30.965206, 43.366413>,  <35.402267, 31.161097, 43.343670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.265484, 30.965206, 43.366413>,  <35.037510, 30.638721, 43.404316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.265484, 30.965206, 43.366413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369463, 0.151545, -0.916805,
		-0.733945, 0.557526, 0.387929,
		0.569932, 0.816210, -0.094759,
		35.436462, 31.210070, 43.337986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.635334, 31.001806, 43.018085>,  <35.037510, 30.638721, 43.404316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.635334, 31.001806, 43.018085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970440, 31.216520, 42.978062>,  <35.171505, 31.345348, 42.954048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.970440, 31.216520, 42.978062>,  <34.635334, 31.001806, 43.018085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.970440, 31.216520, 42.978062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407957, 0.493520, -0.768120,
		-0.362933, 0.684324, 0.632439,
		0.837765, 0.536785, -0.100060,
		35.221771, 31.377556, 42.948044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407120, 31.793139, 43.020725>,  <34.635334, 31.001806, 43.018085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407120, 31.793139, 43.020725> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766308, 31.736629, 42.854015>,  <34.981819, 31.702724, 42.753990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766308, 31.736629, 42.854015>,  <34.407120, 31.793139, 43.020725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.766308, 31.736629, 42.854015> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203509, 0.706403, -0.677923,
		0.390182, 0.693568, 0.605575,
		0.897966, -0.141273, -0.416773,
		35.035698, 31.694248, 42.728985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.500759, 32.467903, 42.823860>,  <34.407120, 31.793139, 43.020725>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.500759, 32.467903, 42.823860> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777111, 32.259113, 42.623772>,  <34.942924, 32.133839, 42.503719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.777111, 32.259113, 42.623772>,  <34.500759, 32.467903, 42.823860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777111, 32.259113, 42.623772> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077676, 0.634307, -0.769169,
		0.718782, 0.570261, 0.397686,
		0.690882, -0.521975, -0.500224,
		34.984375, 32.102520, 42.473705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829357, 32.953884, 42.543919>,  <34.500759, 32.467903, 42.823860>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829357, 32.953884, 42.543919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914303, 32.629757, 42.325455>,  <34.965271, 32.435280, 42.194378>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.914303, 32.629757, 42.325455>,  <34.829357, 32.953884, 42.543919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.914303, 32.629757, 42.325455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079137, 0.542807, -0.836120,
		0.973980, 0.220785, 0.051147,
		0.212366, -0.810317, -0.546156,
		34.978012, 32.386662, 42.161610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.331383, 33.082916, 42.155807>,  <34.829357, 32.953884, 42.543919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.331383, 33.082916, 42.155807> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172211, 32.779324, 41.949661>,  <35.076710, 32.597168, 41.825974>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.172211, 32.779324, 41.949661>,  <35.331383, 33.082916, 42.155807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172211, 32.779324, 41.949661> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176280, 0.614548, -0.768932,
		0.900322, -0.215128, -0.378338,
		-0.397926, -0.758980, -0.515369,
		35.052834, 32.551628, 41.795052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630569, 33.045994, 41.417488>,  <35.331383, 33.082916, 42.155807>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630569, 33.045994, 41.417488> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283154, 32.849003, 41.395180>,  <35.074703, 32.730808, 41.381794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283154, 32.849003, 41.395180>,  <35.630569, 33.045994, 41.417488>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283154, 32.849003, 41.395180> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285849, 0.589675, -0.755363,
		0.404882, -0.640121, -0.652929,
		-0.868539, -0.492472, -0.055771,
		35.022591, 32.701260, 41.378448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.638412, 32.738773, 40.691498>,  <35.630569, 33.045994, 41.417488>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.638412, 32.738773, 40.691498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273788, 32.810780, 40.839359>,  <35.055012, 32.853985, 40.928078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.273788, 32.810780, 40.839359>,  <35.638412, 32.738773, 40.691498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.273788, 32.810780, 40.839359> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209050, 0.571253, -0.793705,
		-0.354046, -0.800790, -0.483102,
		-0.911565, 0.180015, 0.369655,
		35.000320, 32.864784, 40.950256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<37.867325, 30.843842, 47.996014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592030, 31.114563, 48.100517>,  <37.426853, 31.276997, 48.163219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592030, 31.114563, 48.100517>,  <37.867325, 30.843842, 47.996014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592030, 31.114563, 48.100517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398056, -0.051212, -0.915930,
		-0.606526, -0.734379, 0.304653,
		-0.688242, 0.676804, 0.261263,
		37.385555, 31.317604, 48.178898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.345146, 30.533703, 47.720066>,  <37.867325, 30.843842, 47.996014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.345146, 30.533703, 47.720066> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248569, 30.916531, 47.784225>,  <37.190624, 31.146227, 47.822720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.248569, 30.916531, 47.784225>,  <37.345146, 30.533703, 47.720066>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248569, 30.916531, 47.784225> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437618, 0.040144, -0.898264,
		-0.866140, -0.287068, 0.409138,
		-0.241438, 0.957069, 0.160397,
		37.176140, 31.203651, 47.832344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626095, 30.601599, 47.398525>,  <37.345146, 30.533703, 47.720066>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626095, 30.601599, 47.398525> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765614, 30.972738, 47.451340>,  <36.849327, 31.195421, 47.483028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.765614, 30.972738, 47.451340>,  <36.626095, 30.601599, 47.398525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765614, 30.972738, 47.451340> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405362, 0.276385, -0.871374,
		-0.844997, 0.250413, 0.472518,
		0.348801, 0.927849, 0.132037,
		36.870255, 31.251093, 47.490952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088688, 31.043680, 47.328442>,  <36.626095, 30.601599, 47.398525>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088688, 31.043680, 47.328442> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400707, 31.273327, 47.228916>,  <36.587921, 31.411116, 47.169201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.400707, 31.273327, 47.228916>,  <36.088688, 31.043680, 47.328442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.400707, 31.273327, 47.228916> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425481, 0.195130, -0.883680,
		-0.458787, 0.795181, 0.396488,
		0.780052, 0.574119, -0.248811,
		36.634724, 31.445562, 47.154274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.828682, 31.495670, 46.805843>,  <36.088688, 31.043680, 47.328442>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.828682, 31.495670, 46.805843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223297, 31.547874, 46.766407>,  <36.460064, 31.579197, 46.742744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.223297, 31.547874, 46.766407>,  <35.828682, 31.495670, 46.805843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223297, 31.547874, 46.766407> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118861, 0.157993, -0.980260,
		-0.112357, 0.978778, 0.171378,
		0.986533, 0.130509, -0.098587,
		36.519257, 31.587027, 46.736832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911983, 32.202198, 46.473129>,  <35.828682, 31.495670, 46.805843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911983, 32.202198, 46.473129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.209461, 31.937643, 46.434177>,  <36.387947, 31.778910, 46.410809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.209461, 31.937643, 46.434177>,  <35.911983, 32.202198, 46.473129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.209461, 31.937643, 46.434177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120088, 0.011124, -0.992701,
		0.657644, 0.749961, -0.071152,
		0.743695, -0.661389, -0.097377,
		36.432571, 31.739227, 46.404964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.366779, 32.543980, 45.995079>,  <35.911983, 32.202198, 46.473129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.366779, 32.543980, 45.995079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452225, 32.153458, 45.981232>,  <36.503490, 31.919144, 45.972923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.452225, 32.153458, 45.981232>,  <36.366779, 32.543980, 45.995079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452225, 32.153458, 45.981232> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054057, 0.047194, -0.997422,
		0.975421, 0.211193, 0.062857,
		0.213615, -0.976304, -0.034617,
		36.516308, 31.860567, 45.970848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.603954, 32.498585, 45.340599>,  <36.366779, 32.543980, 45.995079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.603954, 32.498585, 45.340599> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548901, 32.110958, 45.422546>,  <36.515869, 31.878382, 45.471714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.548901, 32.110958, 45.422546>,  <36.603954, 32.498585, 45.340599>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548901, 32.110958, 45.422546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287842, -0.158774, -0.944425,
		0.947737, -0.188949, -0.257086,
		-0.137630, -0.969066, 0.204864,
		36.507610, 31.820238, 45.484005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953606, 32.227680, 44.860889>,  <36.603954, 32.498585, 45.340599>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953606, 32.227680, 44.860889> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708275, 31.930462, 44.968010>,  <36.561077, 31.752131, 45.032280>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.708275, 31.930462, 44.968010>,  <36.953606, 32.227680, 44.860889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708275, 31.930462, 44.968010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211969, -0.171772, -0.962062,
		0.760857, -0.646820, -0.052151,
		-0.613323, -0.743046, 0.267800,
		36.524277, 31.707548, 45.048351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.650414, 32.290836, 44.599369>,  <36.953606, 32.227680, 44.860889>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.650414, 32.290836, 44.599369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596714, 32.669437, 44.481995>,  <37.564495, 32.896599, 44.411572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.596714, 32.669437, 44.481995>,  <37.650414, 32.290836, 44.599369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.596714, 32.669437, 44.481995> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184295, 0.267104, 0.945881,
		0.973660, 0.181060, 0.138578,
		-0.134247, 0.946506, -0.293437,
		37.556438, 32.953388, 44.393963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.184654, 32.632095, 44.984383>,  <37.650414, 32.290836, 44.599369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.184654, 32.632095, 44.984383> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943146, 32.926861, 44.862782>,  <37.798241, 33.103718, 44.789822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.943146, 32.926861, 44.862782>,  <38.184654, 32.632095, 44.984383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943146, 32.926861, 44.862782> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059272, 0.421805, 0.904747,
		0.794948, 0.528245, -0.298354,
		-0.603775, 0.736911, -0.304003,
		37.762012, 33.147934, 44.771580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517204, 33.202560, 45.382877>,  <38.184654, 32.632095, 44.984383>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517204, 33.202560, 45.382877> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168072, 33.349834, 45.254749>,  <37.958591, 33.438198, 45.177872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.168072, 33.349834, 45.254749>,  <38.517204, 33.202560, 45.382877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168072, 33.349834, 45.254749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059244, 0.571570, 0.818412,
		0.484412, 0.733313, -0.477072,
		-0.872832, 0.368185, -0.320319,
		37.906223, 33.460289, 45.158653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.591553, 33.859970, 45.382252>,  <38.517204, 33.202560, 45.382877>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.591553, 33.859970, 45.382252> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203922, 33.772274, 45.427551>,  <37.971344, 33.719654, 45.454731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.203922, 33.772274, 45.427551>,  <38.591553, 33.859970, 45.382252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203922, 33.772274, 45.427551> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000893, 0.462055, 0.886851,
		-0.246763, 0.859324, -0.447961,
		-0.969075, -0.219243, 0.113251,
		37.913200, 33.706501, 45.461525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.191402, 34.437336, 45.434074>,  <38.591553, 33.859970, 45.382252>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.191402, 34.437336, 45.434074> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981472, 34.149467, 45.615902>,  <37.855515, 33.976746, 45.724998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.981472, 34.149467, 45.615902>,  <38.191402, 34.437336, 45.434074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.981472, 34.149467, 45.615902> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025308, 0.520595, 0.853428,
		-0.850836, 0.459403, -0.255006,
		-0.524822, -0.719673, 0.454568,
		37.824024, 33.933567, 45.752274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861992, 34.755299, 45.924171>,  <38.191402, 34.437336, 45.434074>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861992, 34.755299, 45.924171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839058, 34.370335, 46.030369>,  <37.825298, 34.139359, 46.094086>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.839058, 34.370335, 46.030369>,  <37.861992, 34.755299, 45.924171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839058, 34.370335, 46.030369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208494, 0.248525, 0.945920,
		-0.976342, 0.109586, 0.186407,
		-0.057332, -0.962407, 0.265493,
		37.821857, 34.081612, 46.110016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.754234, 34.863861, 46.675953>,  <37.861992, 34.755299, 45.924171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.754234, 34.863861, 46.675953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815197, 34.470234, 46.639313>,  <37.851776, 34.234058, 46.617329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.815197, 34.470234, 46.639313>,  <37.754234, 34.863861, 46.675953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815197, 34.470234, 46.639313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392181, -0.024853, 0.919552,
		-0.907175, -0.176067, 0.382144,
		0.152405, -0.984064, -0.091596,
		37.860920, 34.175014, 46.611835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435425, 34.543556, 47.170395>,  <37.754234, 34.863861, 46.675953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435425, 34.543556, 47.170395> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713928, 34.268013, 47.089699>,  <37.881031, 34.102688, 47.041283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.713928, 34.268013, 47.089699>,  <37.435425, 34.543556, 47.170395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.713928, 34.268013, 47.089699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264791, -0.014739, 0.964193,
		-0.667165, -0.724747, 0.172141,
		0.696259, -0.688858, -0.201740,
		37.922806, 34.061356, 47.029179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.539055, 34.260117, 47.782951>,  <37.435425, 34.543556, 47.170395>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.539055, 34.260117, 47.782951> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846992, 34.069687, 47.612919>,  <38.031754, 33.955429, 47.510899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.846992, 34.069687, 47.612919>,  <37.539055, 34.260117, 47.782951>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.846992, 34.069687, 47.612919> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484280, 0.001920, 0.874911,
		-0.415711, -0.879401, 0.232033,
		0.769843, -0.476079, -0.425078,
		38.077946, 33.926865, 47.485397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.782551, 33.677605, 48.244320>,  <37.539055, 34.260117, 47.782951>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.782551, 33.677605, 48.244320> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106171, 33.769203, 48.027802>,  <38.300343, 33.824162, 47.897888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.106171, 33.769203, 48.027802>,  <37.782551, 33.677605, 48.244320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106171, 33.769203, 48.027802> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582890, -0.194476, 0.788935,
		0.075397, -0.953802, -0.290822,
		0.809046, 0.229000, -0.541299,
		38.348885, 33.837902, 47.865410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280754, 33.151802, 48.332699>,  <37.782551, 33.677605, 48.244320>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280754, 33.151802, 48.332699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507381, 33.451546, 48.195606>,  <38.643356, 33.631390, 48.113350>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.507381, 33.451546, 48.195606>,  <38.280754, 33.151802, 48.332699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507381, 33.451546, 48.195606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701151, -0.219913, 0.678252,
		0.432882, -0.624582, -0.650009,
		0.566569, 0.749357, -0.342730,
		38.677353, 33.676353, 48.092789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940582, 32.885719, 48.259617>,  <38.280754, 33.151802, 48.332699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940582, 32.885719, 48.259617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956963, 33.281940, 48.311958>,  <38.966793, 33.519672, 48.343365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.956963, 33.281940, 48.311958>,  <38.940582, 32.885719, 48.259617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.956963, 33.281940, 48.311958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607567, -0.128658, 0.783779,
		0.793212, 0.047403, -0.607098,
		0.040954, 0.990556, 0.130853,
		38.969250, 33.579105, 48.351215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577881, 33.034447, 48.590714>,  <38.940582, 32.885719, 48.259617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577881, 33.034447, 48.590714> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402649, 33.390850, 48.638355>,  <39.297508, 33.604694, 48.666939>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.402649, 33.390850, 48.638355>,  <39.577881, 33.034447, 48.590714>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402649, 33.390850, 48.638355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592276, 0.186420, 0.783873,
		0.676237, 0.413940, -0.609391,
		-0.438079, 0.891011, 0.119103,
		39.271225, 33.658154, 48.674088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156567, 33.490498, 48.521236>,  <39.577881, 33.034447, 48.590714>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156567, 33.490498, 48.521236> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871010, 33.682392, 48.725281>,  <39.699677, 33.797527, 48.847706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.871010, 33.682392, 48.725281>,  <40.156567, 33.490498, 48.521236>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871010, 33.682392, 48.725281> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679042, 0.296337, 0.671629,
		0.171040, 0.825857, -0.537313,
		-0.713896, 0.479734, 0.510106,
		39.656841, 33.826313, 48.878311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.934090, 38.598213, 50.345966> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276299, 38.425201, 50.232124>,  <35.481625, 38.321396, 50.163818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.276299, 38.425201, 50.232124>,  <34.934090, 38.598213, 50.345966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.276299, 38.425201, 50.232124> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271461, 0.093361, -0.957910,
		0.440893, 0.896774, -0.037542,
		0.855524, -0.432527, -0.284602,
		35.532955, 38.295444, 50.146744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.197048, 39.028610, 49.730503>,  <34.934090, 38.598213, 50.345966>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.197048, 39.028610, 49.730503> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387714, 38.677349, 49.714340>,  <35.502113, 38.466591, 49.704643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.387714, 38.677349, 49.714340>,  <35.197048, 39.028610, 49.730503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387714, 38.677349, 49.714340> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113042, -0.015642, -0.993467,
		0.871785, 0.478123, -0.106724,
		0.476669, -0.878154, -0.040411,
		35.530716, 38.413902, 49.702217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614918, 39.086315, 49.151760>,  <35.197048, 39.028610, 49.730503>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614918, 39.086315, 49.151760> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600483, 38.691364, 49.213440>,  <35.591820, 38.454391, 49.250446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.600483, 38.691364, 49.213440>,  <35.614918, 39.086315, 49.151760>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600483, 38.691364, 49.213440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203209, -0.143825, -0.968515,
		0.978470, -0.066288, -0.195454,
		-0.036090, -0.987381, 0.154199,
		35.589657, 38.395149, 49.259701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131321, 38.845871, 48.779095>,  <35.614918, 39.086315, 49.151760>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131321, 38.845871, 48.779095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885693, 38.536236, 48.840679>,  <35.738316, 38.350452, 48.877628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.885693, 38.536236, 48.840679>,  <36.131321, 38.845871, 48.779095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.885693, 38.536236, 48.840679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078497, -0.254004, -0.964012,
		0.785339, -0.579884, 0.216740,
		-0.614069, -0.774090, 0.153960,
		35.701473, 38.304008, 48.886868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491947, 38.142220, 48.576420>,  <36.131321, 38.845871, 48.779095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491947, 38.142220, 48.576420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093941, 38.124878, 48.540516>,  <35.855137, 38.114475, 48.518974>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.093941, 38.124878, 48.540516>,  <36.491947, 38.142220, 48.576420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093941, 38.124878, 48.540516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099175, -0.339984, -0.935187,
		0.010023, -0.939432, 0.342590,
		-0.995020, -0.043350, -0.089760,
		35.795433, 38.111874, 48.513588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.582581, 37.542377, 48.204098>,  <36.491947, 38.142220, 48.576420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.582581, 37.542377, 48.204098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207600, 37.680462, 48.186176>,  <35.982609, 37.763313, 48.175423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.207600, 37.680462, 48.186176>,  <36.582581, 37.542377, 48.204098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207600, 37.680462, 48.186176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084486, -0.350484, -0.932750,
		-0.337689, -0.870629, 0.357729,
		-0.937458, 0.345203, -0.044799,
		35.926365, 37.784027, 48.172737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.168667, 37.004787, 48.080059>,  <36.582581, 37.542377, 48.204098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.168667, 37.004787, 48.080059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930111, 37.303974, 47.963528>,  <35.786980, 37.483486, 47.893608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.930111, 37.303974, 47.963528>,  <36.168667, 37.004787, 48.080059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.930111, 37.303974, 47.963528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029652, -0.383214, -0.923184,
		-0.802150, -0.541936, 0.250723,
		-0.596387, 0.747966, -0.291326,
		35.751194, 37.528362, 47.876129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834484, 36.688545, 47.655540>,  <36.168667, 37.004787, 48.080059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834484, 36.688545, 47.655540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722111, 37.053844, 47.537525>,  <35.654686, 37.273026, 47.466717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.722111, 37.053844, 47.537525>,  <35.834484, 36.688545, 47.655540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722111, 37.053844, 47.537525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043042, -0.319098, -0.946744,
		-0.958762, -0.253273, 0.128954,
		-0.280934, 0.913252, -0.295038,
		35.637829, 37.327820, 47.449013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228947, 36.602779, 47.218861>,  <35.834484, 36.688545, 47.655540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228947, 36.602779, 47.218861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413853, 36.943642, 47.120766>,  <35.524796, 37.148159, 47.061909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.413853, 36.943642, 47.120766>,  <35.228947, 36.602779, 47.218861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.413853, 36.943642, 47.120766> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016649, -0.268168, -0.963228,
		-0.886586, 0.449348, -0.109777,
		0.462263, 0.852157, -0.245235,
		35.552532, 37.199287, 47.047195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847282, 36.849239, 46.628334>,  <35.228947, 36.602779, 47.218861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847282, 36.849239, 46.628334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200943, 37.035263, 46.610447>,  <35.413139, 37.146877, 46.599716>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.200943, 37.035263, 46.610447>,  <34.847282, 36.849239, 46.628334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200943, 37.035263, 46.610447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016573, -0.064425, -0.997785,
		-0.466907, 0.882934, -0.049255,
		0.884151, 0.465056, -0.044713,
		35.466187, 37.174782, 46.597034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.699795, 37.330990, 46.203197>,  <34.847282, 36.849239, 46.628334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.699795, 37.330990, 46.203197> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099644, 37.321747, 46.197231>,  <35.339554, 37.316200, 46.193653>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.099644, 37.321747, 46.197231>,  <34.699795, 37.330990, 46.203197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099644, 37.321747, 46.197231> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014371, 0.023445, -0.999622,
		0.023446, 0.999458, 0.023105,
		0.999622, -0.023105, -0.014913,
		35.399529, 37.314816, 46.192757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007042, 37.904945, 45.712543>,  <34.699795, 37.330990, 46.203197>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007042, 37.904945, 45.712543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278942, 37.613220, 45.743668>,  <35.442081, 37.438187, 45.762344>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.278942, 37.613220, 45.743668>,  <35.007042, 37.904945, 45.712543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278942, 37.613220, 45.743668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189730, 0.072364, -0.979166,
		0.708483, 0.680348, 0.187561,
		0.679746, -0.729308, 0.077814,
		35.482864, 37.394428, 45.767014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659359, 38.119625, 45.360931>,  <35.007042, 37.904945, 45.712543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659359, 38.119625, 45.360931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665485, 37.720181, 45.381111>,  <35.669163, 37.480515, 45.393219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.665485, 37.720181, 45.381111>,  <35.659359, 38.119625, 45.360931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.665485, 37.720181, 45.381111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201346, -0.046342, -0.978423,
		0.979400, 0.025142, 0.200357,
		0.015315, -0.998609, 0.050449,
		35.670078, 37.420597, 45.396244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040668, 37.948975, 44.808926>,  <35.659359, 38.119625, 45.360931>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040668, 37.948975, 44.808926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891144, 37.587799, 44.893749>,  <35.801430, 37.371094, 44.944641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.891144, 37.587799, 44.893749>,  <36.040668, 37.948975, 44.808926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891144, 37.587799, 44.893749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086355, -0.193755, -0.977242,
		0.923475, -0.383619, -0.005545,
		-0.373815, -0.902937, 0.212056,
		35.778999, 37.316917, 44.957367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778946, 37.686779, 44.879700>,  <36.040668, 37.948975, 44.808926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778946, 37.686779, 44.879700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135845, 37.731693, 44.704754>,  <37.349983, 37.758640, 44.599785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.135845, 37.731693, 44.704754>,  <36.778946, 37.686779, 44.879700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.135845, 37.731693, 44.704754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397589, 0.263791, 0.878827,
		0.214050, -0.958022, 0.190724,
		0.892247, 0.112283, -0.437364,
		37.403519, 37.765381, 44.573544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310844, 37.286430, 45.348576>,  <36.778946, 37.686779, 44.879700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310844, 37.286430, 45.348576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481266, 37.574467, 45.129509>,  <37.583519, 37.747288, 44.998070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.481266, 37.574467, 45.129509>,  <37.310844, 37.286430, 45.348576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.481266, 37.574467, 45.129509> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484828, 0.329364, 0.810223,
		0.763820, -0.610723, -0.208796,
		0.426052, 0.720095, -0.547671,
		37.609081, 37.790497, 44.965206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.968143, 37.194279, 45.462070>,  <37.310844, 37.286430, 45.348576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.968143, 37.194279, 45.462070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914867, 37.575329, 45.352703>,  <37.882900, 37.803959, 45.287083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.914867, 37.575329, 45.352703>,  <37.968143, 37.194279, 45.462070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914867, 37.575329, 45.352703> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435352, 0.304074, 0.847353,
		0.890353, -0.006176, -0.455228,
		-0.133189, 0.952628, -0.273422,
		37.874912, 37.861118, 45.270676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664299, 37.531937, 45.606083>,  <37.968143, 37.194279, 45.462070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664299, 37.531937, 45.606083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422550, 37.849720, 45.582180>,  <38.277500, 38.040390, 45.567837>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.422550, 37.849720, 45.582180>,  <38.664299, 37.531937, 45.606083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.422550, 37.849720, 45.582180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457251, 0.407320, 0.790577,
		0.652418, 0.450481, -0.609440,
		-0.604377, 0.794454, -0.059760,
		38.241238, 38.088055, 45.564251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.133575, 38.137867, 45.750355>,  <38.664299, 37.531937, 45.606083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.133575, 38.137867, 45.750355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760403, 38.271095, 45.805069>,  <38.536499, 38.351032, 45.837898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.760403, 38.271095, 45.805069>,  <39.133575, 38.137867, 45.750355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760403, 38.271095, 45.805069> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291256, 0.474728, 0.830544,
		0.211694, 0.814677, -0.539896,
		-0.932929, 0.333069, 0.136783,
		38.480526, 38.371017, 45.846104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.080536, 38.917061, 45.853069>,  <39.133575, 38.137867, 45.750355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.080536, 38.917061, 45.853069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756935, 38.780834, 46.044704>,  <38.562775, 38.699097, 46.159683>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.756935, 38.780834, 46.044704>,  <39.080536, 38.917061, 45.853069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.756935, 38.780834, 46.044704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331037, 0.409522, 0.850121,
		-0.485720, 0.846348, -0.218566,
		-0.809006, -0.340568, 0.479086,
		38.514233, 38.678665, 46.188431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.943382, 39.387821, 46.422123>,  <39.080536, 38.917061, 45.853069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.943382, 39.387821, 46.422123> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692055, 39.096672, 46.531975>,  <38.541260, 38.921982, 46.597885>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.692055, 39.096672, 46.531975>,  <38.943382, 39.387821, 46.422123>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.692055, 39.096672, 46.531975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027861, 0.373839, 0.927075,
		-0.777460, 0.574843, -0.255168,
		-0.628314, -0.727873, 0.274629,
		38.503559, 38.878311, 46.614365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407887, 39.718834, 46.799866>,  <38.943382, 39.387821, 46.422123>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407887, 39.718834, 46.799866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403877, 39.334682, 46.911274>,  <38.401474, 39.104191, 46.978119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.403877, 39.334682, 46.911274>,  <38.407887, 39.718834, 46.799866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.403877, 39.334682, 46.911274> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186668, 0.275433, 0.943023,
		-0.982372, -0.042540, -0.182033,
		-0.010022, -0.960379, 0.278519,
		38.400871, 39.046570, 46.994831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.022778, 39.693302, 47.428497>,  <38.407887, 39.718834, 46.799866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.022778, 39.693302, 47.428497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149094, 39.313919, 47.439144>,  <38.224884, 39.086288, 47.445534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.149094, 39.313919, 47.439144>,  <38.022778, 39.693302, 47.428497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.149094, 39.313919, 47.439144> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123826, 0.069007, 0.989902,
		-0.940713, -0.309309, 0.139235,
		0.315794, -0.948454, 0.026616,
		38.243832, 39.029385, 47.447128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533203, 39.211967, 47.860420>,  <38.022778, 39.693302, 47.428497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533203, 39.211967, 47.860420> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907539, 39.071697, 47.846386>,  <38.132141, 38.987534, 47.837963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.907539, 39.071697, 47.846386>,  <37.533203, 39.211967, 47.860420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.907539, 39.071697, 47.846386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031658, -0.015519, 0.999378,
		-0.351004, -0.936368, -0.003421,
		0.935838, -0.350677, -0.035090,
		38.188290, 38.966496, 47.835857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.612457, 38.640354, 48.239693>,  <37.533203, 39.211967, 47.860420>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.612457, 38.640354, 48.239693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991890, 38.766956, 48.237965>,  <38.219551, 38.842918, 48.236927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.991890, 38.766956, 48.237965>,  <37.612457, 38.640354, 48.239693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991890, 38.766956, 48.237965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058241, -0.161100, 0.985218,
		0.311126, -0.934812, -0.171250,
		0.948583, 0.316501, -0.004322,
		38.276466, 38.861908, 48.236668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901596, 38.057045, 48.519039>,  <37.612457, 38.640354, 48.239693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901596, 38.057045, 48.519039> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134418, 38.375984, 48.582855>,  <38.274113, 38.567348, 48.621147>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.134418, 38.375984, 48.582855>,  <37.901596, 38.057045, 48.519039>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.134418, 38.375984, 48.582855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048464, -0.161838, 0.985626,
		0.811705, -0.581419, -0.055556,
		0.582053, 0.797345, 0.159543,
		38.309036, 38.615189, 48.630718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.238350, 37.819256, 49.062237>,  <37.901596, 38.057045, 48.519039>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.238350, 37.819256, 49.062237> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343414, 38.204426, 49.037636>,  <38.406452, 38.435528, 49.022877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.343414, 38.204426, 49.037636>,  <38.238350, 37.819256, 49.062237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.343414, 38.204426, 49.037636> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141827, 0.024515, 0.989588,
		0.954409, -0.268647, -0.130130,
		0.262659, 0.962927, -0.061499,
		38.422211, 38.493305, 49.019188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058411, 38.025742, 49.286400>,  <38.238350, 37.819256, 49.062237>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058411, 38.025742, 49.286400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781574, 38.310947, 49.331345>,  <38.615475, 38.482071, 49.358311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.781574, 38.310947, 49.331345>,  <39.058411, 38.025742, 49.286400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781574, 38.310947, 49.331345> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213676, 0.053689, 0.975428,
		0.689461, 0.699091, -0.189511,
		-0.692088, 0.713014, 0.112363,
		38.573948, 38.524853, 49.365055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.766430, 38.133083, 49.434120>,  <39.058411, 38.025742, 49.286400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.766430, 38.133083, 49.434120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.915398, 37.767471, 49.498444>,  <40.004780, 37.548103, 49.537037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.915398, 37.767471, 49.498444>,  <39.766430, 38.133083, 49.434120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.915398, 37.767471, 49.498444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306078, -0.042611, -0.951053,
		0.876140, 0.403409, 0.263894,
		0.372419, -0.914027, 0.160807,
		40.027122, 37.493263, 49.546684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456856, 38.222130, 49.101017>,  <39.766430, 38.133083, 49.434120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456856, 38.222130, 49.101017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392838, 37.831024, 49.155220>,  <40.354427, 37.596359, 49.187740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.392838, 37.831024, 49.155220>,  <40.456856, 38.222130, 49.101017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.392838, 37.831024, 49.155220> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527905, -0.200776, -0.825231,
		0.834088, -0.060539, 0.548300,
		-0.160044, -0.977765, 0.135506,
		40.344826, 37.537693, 49.195873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.043377, 37.978142, 48.832512>,  <40.456856, 38.222130, 49.101017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.043377, 37.978142, 48.832512> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753540, 37.702488, 48.829731>,  <40.579636, 37.537094, 48.828064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.753540, 37.702488, 48.829731>,  <41.043377, 37.978142, 48.832512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.753540, 37.702488, 48.829731> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256608, -0.260425, -0.930769,
		0.639619, -0.676215, 0.365541,
		-0.724596, -0.689139, -0.006950,
		40.536160, 37.495747, 48.827644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292839, 37.483295, 48.338699>,  <41.043377, 37.978142, 48.832512>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292839, 37.483295, 48.338699> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.915604, 37.350296, 48.340931>,  <40.689262, 37.270496, 48.342270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.915604, 37.350296, 48.340931>,  <41.292839, 37.483295, 48.338699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915604, 37.350296, 48.340931> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116088, -0.344906, -0.931431,
		0.311628, -0.877771, 0.363875,
		-0.943086, -0.332502, 0.005583,
		40.632679, 37.250546, 48.342606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.344032, 36.879932, 48.036022>,  <41.292839, 37.483295, 48.338699>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.344032, 36.879932, 48.036022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962280, 36.998085, 48.018517>,  <40.733231, 37.068977, 48.008015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.962280, 36.998085, 48.018517>,  <41.344032, 36.879932, 48.036022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.962280, 36.998085, 48.018517> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063278, -0.343287, -0.937097,
		-0.291815, -0.891577, 0.346317,
		-0.954380, 0.295373, -0.043759,
		40.675968, 37.086700, 48.005386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015835, 36.316376, 47.868443>,  <41.344032, 36.879932, 48.036022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015835, 36.316376, 47.868443> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805912, 36.642101, 47.769272>,  <40.679958, 36.837536, 47.709770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.805912, 36.642101, 47.769272>,  <41.015835, 36.316376, 47.868443>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.805912, 36.642101, 47.769272> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079961, -0.242807, -0.966774,
		-0.847457, -0.527194, 0.062314,
		-0.524807, 0.814317, -0.247923,
		40.648468, 36.886395, 47.694897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.489403, 36.064095, 47.415077>,  <41.015835, 36.316376, 47.868443>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.489403, 36.064095, 47.415077> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540367, 36.456932, 47.359562>,  <40.570946, 36.692635, 47.326252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.540367, 36.456932, 47.359562>,  <40.489403, 36.064095, 47.415077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.540367, 36.456932, 47.359562> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003870, -0.139433, -0.990224,
		-0.991843, 0.126699, -0.013964,
		0.127408, 0.982092, -0.138786,
		40.578590, 36.751560, 47.317924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.170387, 36.241390, 46.726055>,  <40.489403, 36.064095, 47.415077>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.170387, 36.241390, 46.726055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.356770, 36.594872, 46.743706>,  <40.468601, 36.806961, 46.754295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.356770, 36.594872, 46.743706>,  <40.170387, 36.241390, 46.726055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.356770, 36.594872, 46.743706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009423, 0.044917, -0.998946,
		-0.884757, 0.465883, 0.012603,
		0.465958, 0.883706, 0.044130,
		40.496555, 36.859982, 46.756947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848610, 36.744095, 46.278645>,  <40.170387, 36.241390, 46.726055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848610, 36.744095, 46.278645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220535, 36.888401, 46.307739>,  <40.443691, 36.974987, 46.325195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.220535, 36.888401, 46.307739>,  <39.848610, 36.744095, 46.278645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.220535, 36.888401, 46.307739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038660, 0.100800, -0.994155,
		-0.365991, 0.927193, 0.079778,
		0.929815, 0.360767, 0.072737,
		40.499481, 36.996632, 46.329559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817429, 37.273354, 45.817017>,  <39.848610, 36.744095, 46.278645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817429, 37.273354, 45.817017> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196705, 37.152683, 45.856873>,  <40.424271, 37.080280, 45.880787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.196705, 37.152683, 45.856873>,  <39.817429, 37.273354, 45.817017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196705, 37.152683, 45.856873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110848, 0.020223, -0.993632,
		0.297738, 0.953197, 0.052615,
		0.948190, -0.301674, 0.099639,
		40.481163, 37.062180, 45.886765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127056, 37.684776, 45.368668>,  <39.817429, 37.273354, 45.817017>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127056, 37.684776, 45.368668> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383801, 37.381950, 45.417427>,  <40.537849, 37.200253, 45.446682>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.383801, 37.381950, 45.417427>,  <40.127056, 37.684776, 45.368668>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383801, 37.381950, 45.417427> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115342, -0.061843, -0.991399,
		0.758094, 0.650403, 0.047627,
		0.641864, -0.757067, 0.121902,
		40.576359, 37.154831, 45.453999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660248, 37.826065, 44.862038>,  <40.127056, 37.684776, 45.368668>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660248, 37.826065, 44.862038> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703831, 37.441822, 44.964302>,  <40.729980, 37.211277, 45.025661>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.703831, 37.441822, 44.964302>,  <40.660248, 37.826065, 44.862038>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703831, 37.441822, 44.964302> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163472, -0.236379, -0.957811,
		0.980513, 0.146152, 0.131277,
		0.108954, -0.960606, 0.255664,
		40.736519, 37.153641, 45.041000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.341618, 37.656918, 44.550713>,  <40.660248, 37.826065, 44.862038>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.341618, 37.656918, 44.550713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111156, 37.333290, 44.597111>,  <40.972881, 37.139114, 44.624950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.111156, 37.333290, 44.597111>,  <41.341618, 37.656918, 44.550713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.111156, 37.333290, 44.597111> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242336, -0.304628, -0.921127,
		0.780592, -0.502599, 0.371579,
		-0.576151, -0.809071, 0.115992,
		40.938313, 37.090569, 44.631908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.737339, 37.104485, 44.336720>,  <41.341618, 37.656918, 44.550713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.737339, 37.104485, 44.336720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359882, 36.973854, 44.315235>,  <41.133408, 36.895477, 44.302345>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.359882, 36.973854, 44.315235>,  <41.737339, 37.104485, 44.336720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359882, 36.973854, 44.315235> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157027, -0.298933, -0.941266,
		0.291338, -0.896654, 0.333368,
		-0.943644, -0.326575, -0.053708,
		41.076790, 36.875881, 44.299122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.321684, 30.121927, 32.776981> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979528, 29.945185, 32.885109>,  <30.774235, 29.839140, 32.949986>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.979528, 29.945185, 32.885109>,  <31.321684, 30.121927, 32.776981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.979528, 29.945185, 32.885109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333809, 0.869275, 0.364598,
		-0.396082, 0.221639, -0.891064,
		-0.855389, -0.441856, 0.270319,
		30.722912, 29.812628, 32.966206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.673595, 30.449121, 32.464622>,  <31.321684, 30.121927, 32.776981>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.673595, 30.449121, 32.464622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616545, 30.306770, 32.834057>,  <30.582314, 30.221359, 33.055717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.616545, 30.306770, 32.834057>,  <30.673595, 30.449121, 32.464622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.616545, 30.306770, 32.834057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411290, 0.870057, 0.271739,
		-0.900276, -0.341103, -0.270465,
		-0.142629, -0.355880, 0.923583,
		30.573755, 30.200006, 33.111134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060501, 30.766418, 32.621113>,  <30.673595, 30.449121, 32.464622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060501, 30.766418, 32.621113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205158, 30.650637, 32.975613>,  <30.291952, 30.581167, 33.188313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.205158, 30.650637, 32.975613>,  <30.060501, 30.766418, 32.621113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.205158, 30.650637, 32.975613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462042, 0.769996, 0.440028,
		-0.809773, -0.568615, 0.144722,
		0.361641, -0.289455, 0.886246,
		30.313650, 30.563801, 33.241486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518347, 30.681234, 32.959785>,  <30.060501, 30.766418, 32.621113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518347, 30.681234, 32.959785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810764, 30.730570, 33.228222>,  <29.986216, 30.760172, 33.389282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.810764, 30.730570, 33.228222>,  <29.518347, 30.681234, 32.959785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810764, 30.730570, 33.228222> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505296, 0.758797, 0.410979,
		-0.458532, -0.639543, 0.617036,
		0.731044, 0.123339, 0.671091,
		30.030077, 30.767572, 33.429550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.230581, 30.664314, 33.671528>,  <29.518347, 30.681234, 32.959785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.230581, 30.664314, 33.671528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582943, 30.846321, 33.723633>,  <29.794359, 30.955526, 33.754894>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.582943, 30.846321, 33.723633>,  <29.230581, 30.664314, 33.671528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.582943, 30.846321, 33.723633> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423390, 0.634577, 0.646570,
		0.211541, -0.624717, 0.751651,
		0.880903, 0.455018, 0.130260,
		29.847214, 30.982826, 33.762711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156786, 30.960537, 34.317223>,  <29.230581, 30.664314, 33.671528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156786, 30.960537, 34.317223> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485773, 31.140041, 34.177418>,  <29.683165, 31.247744, 34.093533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.485773, 31.140041, 34.177418>,  <29.156786, 30.960537, 34.317223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.485773, 31.140041, 34.177418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243663, 0.833195, 0.496401,
		0.513981, -0.323109, 0.794622,
		0.822467, 0.448761, -0.349516,
		29.732513, 31.274670, 34.072563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454735, 31.120443, 34.862015>,  <29.156786, 30.960537, 34.317223>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454735, 31.120443, 34.862015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603662, 31.365202, 34.582886>,  <29.693020, 31.512058, 34.415409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.603662, 31.365202, 34.582886>,  <29.454735, 31.120443, 34.862015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.603662, 31.365202, 34.582886> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394580, 0.784907, 0.477732,
		0.840050, 0.097478, 0.533680,
		0.372320, 0.611899, -0.697824,
		29.715359, 31.548771, 34.373539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.660555, 31.670521, 35.226913>,  <29.454735, 31.120443, 34.862015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.660555, 31.670521, 35.226913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584448, 31.798929, 34.855808>,  <29.538784, 31.875975, 34.633144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.584448, 31.798929, 34.855808>,  <29.660555, 31.670521, 35.226913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.584448, 31.798929, 34.855808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445772, 0.813739, 0.372984,
		0.874692, 0.484537, -0.011726,
		-0.190266, 0.321019, -0.927764,
		29.527369, 31.895235, 34.577480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009642, 32.282295, 35.180622>,  <29.660555, 31.670521, 35.226913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.009642, 32.282295, 35.180622> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738676, 32.301071, 34.886982>,  <29.576097, 32.312336, 34.710796>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.738676, 32.301071, 34.886982>,  <30.009642, 32.282295, 35.180622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.738676, 32.301071, 34.886982> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376866, 0.834899, 0.401143,
		0.631730, 0.548399, -0.547884,
		-0.677414, 0.046935, -0.734103,
		29.535452, 32.315151, 34.666752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.038155, 32.956215, 35.023914>,  <30.009642, 32.282295, 35.180622>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.038155, 32.956215, 35.023914> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681198, 32.810192, 34.917805>,  <29.467024, 32.722580, 34.854137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.681198, 32.810192, 34.917805>,  <30.038155, 32.956215, 35.023914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.681198, 32.810192, 34.917805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445819, 0.804229, 0.393016,
		0.069871, 0.468990, -0.880435,
		-0.892392, -0.365054, -0.265277,
		29.413481, 32.700676, 34.838223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.633434, 33.549511, 34.761246>,  <30.038155, 32.956215, 35.023914>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.633434, 33.549511, 34.761246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361279, 33.273815, 34.860863>,  <29.197985, 33.108398, 34.920631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.361279, 33.273815, 34.860863>,  <29.633434, 33.549511, 34.761246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361279, 33.273815, 34.860863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612365, 0.721378, 0.323453,
		-0.402589, 0.067571, -0.912884,
		-0.680391, -0.689237, 0.249041,
		29.157162, 33.067043, 34.935574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.090527, 33.680939, 34.468464>,  <29.633434, 33.549511, 34.761246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.090527, 33.680939, 34.468464> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932983, 33.436275, 34.742908>,  <28.838457, 33.289478, 34.907574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.932983, 33.436275, 34.742908>,  <29.090527, 33.680939, 34.468464>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932983, 33.436275, 34.742908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.802271, 0.593056, 0.068162,
		-0.448595, -0.523601, -0.724296,
		-0.393858, -0.611659, 0.686111,
		28.814825, 33.252777, 34.948742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.293346, 33.728210, 34.346466>,  <29.090527, 33.680939, 34.468464>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.293346, 33.728210, 34.346466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360178, 33.561516, 34.703884>,  <28.400278, 33.461498, 34.918335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.360178, 33.561516, 34.703884>,  <28.293346, 33.728210, 34.346466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.360178, 33.561516, 34.703884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757385, 0.525978, 0.386930,
		-0.631231, -0.741403, -0.227749,
		0.167080, -0.416736, 0.893541,
		28.410301, 33.436497, 34.971947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677563, 33.697063, 34.710670>,  <28.293346, 33.728210, 34.346466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677563, 33.697063, 34.710670> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938215, 33.697445, 35.014084>,  <28.094606, 33.697674, 35.196133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.938215, 33.697445, 35.014084>,  <27.677563, 33.697063, 34.710670>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.938215, 33.697445, 35.014084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654670, 0.505787, 0.561771,
		-0.383122, -0.862658, 0.330210,
		0.651632, 0.000952, 0.758535,
		28.133705, 33.697731, 35.241646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.237984, 33.560829, 35.325871>,  <27.677563, 33.697063, 34.710670>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.237984, 33.560829, 35.325871> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568474, 33.722118, 35.483234>,  <27.766768, 33.818890, 35.577652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.568474, 33.722118, 35.483234>,  <27.237984, 33.560829, 35.325871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.568474, 33.722118, 35.483234> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557998, 0.489801, 0.669876,
		0.077418, -0.772987, 0.629681,
		0.826223, 0.403221, 0.393405,
		27.816341, 33.843086, 35.601257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.051268, 33.614422, 36.012573>,  <27.237984, 33.560829, 35.325871>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.051268, 33.614422, 36.012573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354473, 33.867661, 35.949833>,  <27.536396, 34.019604, 35.912189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.354473, 33.867661, 35.949833>,  <27.051268, 33.614422, 36.012573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.354473, 33.867661, 35.949833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392555, 0.634882, 0.665451,
		0.520878, -0.442848, 0.729775,
		0.758015, 0.633096, -0.156854,
		27.581877, 34.057590, 35.902775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.250834, 33.792725, 36.643009>,  <27.051268, 33.614422, 36.012573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.250834, 33.792725, 36.643009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373755, 34.083126, 36.396923>,  <27.447508, 34.257366, 36.249271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.373755, 34.083126, 36.396923>,  <27.250834, 33.792725, 36.643009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.373755, 34.083126, 36.396923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330994, 0.687673, 0.646181,
		0.892193, 0.005058, 0.451626,
		0.307302, 0.726003, -0.615211,
		27.465944, 34.300926, 36.212360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.444818, 34.187592, 37.131248>,  <27.250834, 33.792725, 36.643009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.444818, 34.187592, 37.131248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402046, 34.385078, 36.786041>,  <27.376383, 34.503571, 36.578915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.402046, 34.385078, 36.786041>,  <27.444818, 34.187592, 37.131248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.402046, 34.385078, 36.786041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357809, 0.790734, 0.496701,
		0.927652, 0.361910, 0.092103,
		-0.106932, 0.493721, -0.863021,
		27.369967, 34.533195, 36.527134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.710045, 34.790504, 37.285271>,  <27.444818, 34.187592, 37.131248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.710045, 34.790504, 37.285271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498215, 34.907307, 36.966705>,  <27.371117, 34.977390, 36.775566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.498215, 34.907307, 36.966705>,  <27.710045, 34.790504, 37.285271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498215, 34.907307, 36.966705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331524, 0.792956, 0.511187,
		0.780795, 0.534744, -0.323123,
		-0.529577, 0.292009, -0.796416,
		27.339342, 34.994911, 36.727779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.831789, 35.482704, 37.098454>,  <27.710045, 34.790504, 37.285271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.831789, 35.482704, 37.098454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456686, 35.392578, 36.992744>,  <27.231625, 35.338505, 36.929317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.456686, 35.392578, 36.992744>,  <27.831789, 35.482704, 37.098454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.456686, 35.392578, 36.992744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328653, 0.821664, 0.465677,
		0.112224, 0.523548, -0.844572,
		-0.937760, -0.225311, -0.264276,
		27.175358, 35.324986, 36.913460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.351145, 35.611561, 37.689747>,  <27.831789, 35.482704, 37.098454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.351145, 35.611561, 37.689747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612110, 35.703693, 37.978554>,  <28.768690, 35.758972, 38.151836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.612110, 35.703693, 37.978554>,  <28.351145, 35.611561, 37.689747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.612110, 35.703693, 37.978554> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743335, -0.380130, -0.550413,
		0.147683, 0.895795, -0.419214,
		0.652413, 0.230330, 0.722015,
		28.807835, 35.772793, 38.195160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906092, 35.924702, 37.331486>,  <28.351145, 35.611561, 37.689747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906092, 35.924702, 37.331486> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048889, 35.793507, 37.681339>,  <29.134567, 35.714790, 37.891251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.048889, 35.793507, 37.681339>,  <28.906092, 35.924702, 37.331486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.048889, 35.793507, 37.681339> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764571, -0.435320, -0.475318,
		0.536644, 0.838402, 0.095366,
		0.356993, -0.327991, 0.874630,
		29.155987, 35.695110, 37.943729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.592018, 36.200420, 37.337429>,  <28.906092, 35.924702, 37.331486>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.592018, 36.200420, 37.337429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573524, 35.888809, 37.587543>,  <29.562428, 35.701843, 37.737614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.573524, 35.888809, 37.587543>,  <29.592018, 36.200420, 37.337429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573524, 35.888809, 37.587543> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728450, -0.454615, -0.512528,
		0.683537, 0.431792, 0.588501,
		-0.046236, -0.779025, 0.625285,
		29.559654, 35.655102, 37.775127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.298716, 36.150364, 37.572945>,  <29.592018, 36.200420, 37.337429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.298716, 36.150364, 37.572945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103834, 35.803394, 37.613350>,  <29.986906, 35.595211, 37.637592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.103834, 35.803394, 37.613350>,  <30.298716, 36.150364, 37.572945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103834, 35.803394, 37.613350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746920, -0.473840, -0.466462,
		0.452485, -0.151814, 0.878755,
		-0.487204, -0.867426, 0.101013,
		29.957672, 35.543167, 37.643654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887913, 35.665798, 37.792030>,  <30.298716, 36.150364, 37.572945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887913, 35.665798, 37.792030> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579983, 35.430294, 37.693459>,  <30.395226, 35.288990, 37.634315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.579983, 35.430294, 37.693459>,  <30.887913, 35.665798, 37.792030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.579983, 35.430294, 37.693459> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636032, -0.675457, -0.373125,
		0.053226, -0.443981, 0.894454,
		-0.769825, -0.588761, -0.246434,
		30.349035, 35.253666, 37.619530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144796, 35.023571, 38.047821>,  <30.887913, 35.665798, 37.792030>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144796, 35.023571, 38.047821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.855476, 34.964058, 37.778095>,  <30.681885, 34.928352, 37.616261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.855476, 34.964058, 37.778095>,  <31.144796, 35.023571, 38.047821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855476, 34.964058, 37.778095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593143, -0.633871, -0.496375,
		-0.353578, -0.758994, 0.546728,
		-0.723301, -0.148780, -0.674315,
		30.638487, 34.919422, 37.575802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.979940, 34.331303, 37.991776>,  <31.144796, 35.023571, 38.047821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.979940, 34.331303, 37.991776> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856262, 34.497601, 37.649651>,  <30.782055, 34.597378, 37.444378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.856262, 34.497601, 37.649651>,  <30.979940, 34.331303, 37.991776>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.856262, 34.497601, 37.649651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508302, -0.687884, -0.518116,
		-0.803757, -0.594956, 0.001369,
		-0.309198, 0.415743, -0.855310,
		30.763502, 34.622322, 37.393059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877207, 33.793682, 37.514797>,  <30.979940, 34.331303, 37.991776>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877207, 33.793682, 37.514797> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916859, 34.109982, 37.273170>,  <30.940651, 34.299759, 37.128197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.916859, 34.109982, 37.273170>,  <30.877207, 33.793682, 37.514797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.916859, 34.109982, 37.273170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368792, -0.593018, -0.715767,
		-0.924211, -0.151819, -0.350408,
		0.099131, 0.790747, -0.604063,
		30.946598, 34.347206, 37.091953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604406, 33.597836, 36.779198>,  <30.877207, 33.793682, 37.514797>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604406, 33.597836, 36.779198> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834528, 33.922062, 36.735374>,  <30.972601, 34.116600, 36.709080>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.834528, 33.922062, 36.735374>,  <30.604406, 33.597836, 36.779198>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834528, 33.922062, 36.735374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421339, -0.408489, -0.809697,
		-0.701068, 0.419662, -0.576530,
		0.575306, 0.810568, -0.109559,
		31.007120, 34.165234, 36.702507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551271, 33.818268, 36.068867>,  <30.604406, 33.597836, 36.779198>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551271, 33.818268, 36.068867> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893969, 33.978893, 36.198322>,  <31.099586, 34.075268, 36.275997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.893969, 33.978893, 36.198322>,  <30.551271, 33.818268, 36.068867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.893969, 33.978893, 36.198322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420069, -0.179233, -0.889617,
		-0.299229, 0.898122, -0.322239,
		0.856741, 0.401562, 0.323642,
		31.150991, 34.099361, 36.295414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769817, 34.272305, 35.525856>,  <30.551271, 33.818268, 36.068867>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769817, 34.272305, 35.525856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101290, 34.184616, 35.731857>,  <31.300173, 34.132004, 35.855457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.101290, 34.184616, 35.731857>,  <30.769817, 34.272305, 35.525856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.101290, 34.184616, 35.731857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494559, -0.144097, -0.857116,
		0.262110, 0.964975, -0.010991,
		0.828680, -0.219223, 0.515006,
		31.349894, 34.118851, 35.886360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.264967, 34.624283, 35.221241>,  <30.769817, 34.272305, 35.525856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.264967, 34.624283, 35.221241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465086, 34.331913, 35.406910>,  <31.585157, 34.156490, 35.518311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.465086, 34.331913, 35.406910>,  <31.264967, 34.624283, 35.221241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.465086, 34.331913, 35.406910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507188, -0.187100, -0.841281,
		0.701759, 0.656312, 0.277110,
		0.500295, -0.730923, 0.464173,
		31.615175, 34.112637, 35.546162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035122, 34.698135, 35.047440>,  <31.264967, 34.624283, 35.221241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035122, 34.698135, 35.047440> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951094, 34.319279, 35.144432>,  <31.900675, 34.091965, 35.202629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.951094, 34.319279, 35.144432>,  <32.035122, 34.698135, 35.047440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.951094, 34.319279, 35.144432> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520739, -0.318305, -0.792157,
		0.827466, -0.040142, 0.560079,
		-0.210075, -0.947138, 0.242483,
		31.888071, 34.035137, 35.217178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.510696, 34.349037, 34.748970>,  <32.035122, 34.698135, 35.047440>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.510696, 34.349037, 34.748970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252266, 34.053493, 34.825565>,  <32.097210, 33.876167, 34.871525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.252266, 34.053493, 34.825565>,  <32.510696, 34.349037, 34.748970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.252266, 34.053493, 34.825565> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386969, -0.533323, -0.752211,
		0.657909, -0.411881, 0.630483,
		-0.646073, -0.738864, 0.191493,
		32.058445, 33.831833, 34.883015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.888245, 33.848412, 34.656185>,  <32.510696, 34.349037, 34.748970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.888245, 33.848412, 34.656185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555725, 33.626083, 34.656487>,  <32.356213, 33.492687, 34.656666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.555725, 33.626083, 34.656487>,  <32.888245, 33.848412, 34.656185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.555725, 33.626083, 34.656487> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372149, -0.557594, -0.742020,
		0.412853, -0.616561, 0.670377,
		-0.831299, -0.555825, 0.000752,
		32.306335, 33.459335, 34.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097355, 33.161190, 34.559238>,  <32.888245, 33.848412, 34.656185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097355, 33.161190, 34.559238> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.710663, 33.133686, 34.460686>,  <32.478649, 33.117184, 34.401554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.710663, 33.133686, 34.460686>,  <33.097355, 33.161190, 34.559238>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710663, 33.133686, 34.460686> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236095, -0.610502, -0.756007,
		-0.098436, -0.789025, 0.606424,
		-0.966731, -0.068756, -0.246380,
		32.420643, 33.113060, 34.386772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939037, 32.464584, 34.463287>,  <33.097355, 33.161190, 34.559238>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939037, 32.464584, 34.463287> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637058, 32.640068, 34.268311>,  <32.455872, 32.745358, 34.151325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.637058, 32.640068, 34.268311>,  <32.939037, 32.464584, 34.463287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637058, 32.640068, 34.268311> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073562, -0.681940, -0.727699,
		-0.651646, -0.585232, 0.482557,
		-0.754948, 0.438704, -0.487434,
		32.410576, 32.771679, 34.122078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406715, 32.018539, 34.386944>,  <32.939037, 32.464584, 34.463287>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406715, 32.018539, 34.386944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364380, 32.286617, 34.093105>,  <32.338978, 32.447464, 33.916801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.364380, 32.286617, 34.093105>,  <32.406715, 32.018539, 34.386944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.364380, 32.286617, 34.093105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041142, -0.735166, -0.676638,
		-0.993532, -0.101838, 0.050237,
		-0.105840, 0.670194, -0.734600,
		32.332626, 32.487675, 33.872726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.889782, 31.813654, 34.048649>,  <32.406715, 32.018539, 34.386944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.889782, 31.813654, 34.048649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.082951, 32.060226, 33.799877>,  <32.198853, 32.208172, 33.650616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.082951, 32.060226, 33.799877>,  <31.889782, 31.813654, 34.048649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082951, 32.060226, 33.799877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071499, -0.735625, -0.673605,
		-0.872739, 0.280831, -0.399324,
		0.482922, 0.616433, -0.621930,
		32.227829, 32.245155, 33.613297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.582548, 31.755848, 33.439087>,  <31.889782, 31.813654, 34.048649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.582548, 31.755848, 33.439087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918549, 31.928854, 33.308041>,  <32.120148, 32.032658, 33.229412>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.918549, 31.928854, 33.308041>,  <31.582548, 31.755848, 33.439087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918549, 31.928854, 33.308041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143135, -0.759049, -0.635104,
		-0.523366, 0.486595, -0.699509,
		0.840000, 0.432516, -0.327612,
		32.170547, 32.058609, 33.209759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497417, 31.908602, 32.693962>,  <31.582548, 31.755848, 33.439087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497417, 31.908602, 32.693962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875107, 31.848763, 32.811306>,  <32.101723, 31.812859, 32.881714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.875107, 31.848763, 32.811306>,  <31.497417, 31.908602, 32.693962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.875107, 31.848763, 32.811306> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080583, -0.758802, -0.646317,
		0.319288, 0.633909, -0.704425,
		0.944225, -0.149596, 0.293359,
		32.158375, 31.803885, 32.899315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909725, 31.864536, 32.036140>,  <31.497417, 31.908602, 32.693962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909725, 31.864536, 32.036140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136391, 31.678268, 32.308037>,  <32.272388, 31.566507, 32.471172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.136391, 31.678268, 32.308037>,  <31.909725, 31.864536, 32.036140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.136391, 31.678268, 32.308037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016169, -0.818532, -0.574233,
		0.823789, 0.336388, -0.456304,
		0.566665, -0.465669, 0.679738,
		32.306389, 31.538568, 32.511959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.348221, 34.935791, 49.213371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056141, 34.670063, 49.277233>,  <39.880894, 34.510624, 49.315552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.056141, 34.670063, 49.277233>,  <40.348221, 34.935791, 49.213371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.056141, 34.670063, 49.277233> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002017, 0.231580, 0.972814,
		-0.683235, 0.710666, -0.167759,
		-0.730195, -0.664322, 0.159657,
		39.837082, 34.470768, 49.325130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880154, 35.299507, 49.680386>,  <40.348221, 34.935791, 49.213371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880154, 35.299507, 49.680386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783840, 34.912750, 49.714176>,  <39.726051, 34.680695, 49.734451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.783840, 34.912750, 49.714176>,  <39.880154, 35.299507, 49.680386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783840, 34.912750, 49.714176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137017, 0.120028, 0.983270,
		-0.960858, 0.225185, -0.161382,
		-0.240788, -0.966894, 0.084475,
		39.711605, 34.622681, 49.739517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310432, 35.314972, 50.184772>,  <39.880154, 35.299507, 49.680386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310432, 35.314972, 50.184772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490894, 34.958809, 50.160694>,  <39.599171, 34.745110, 50.146248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.490894, 34.958809, 50.160694>,  <39.310432, 35.314972, 50.184772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490894, 34.958809, 50.160694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177624, 0.023492, 0.983818,
		-0.874590, -0.454548, 0.168758,
		0.451157, -0.890412, -0.060193,
		39.626240, 34.691685, 50.142635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.057022, 34.953259, 50.815521>,  <39.310432, 35.314972, 50.184772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.057022, 34.953259, 50.815521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375271, 34.752213, 50.680256>,  <39.566219, 34.631584, 50.599094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.375271, 34.752213, 50.680256>,  <39.057022, 34.953259, 50.815521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375271, 34.752213, 50.680256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281379, -0.187735, 0.941053,
		-0.536477, -0.843877, -0.007939,
		0.795624, -0.502620, -0.338165,
		39.613956, 34.601425, 50.578808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.009148, 34.227833, 51.112755>,  <39.057022, 34.953259, 50.815521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.009148, 34.227833, 51.112755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378254, 34.354530, 51.024948>,  <39.599716, 34.430550, 50.972263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.378254, 34.354530, 51.024948>,  <39.009148, 34.227833, 51.112755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378254, 34.354530, 51.024948> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316084, -0.296209, 0.901305,
		0.220461, -0.901074, -0.373447,
		0.922761, 0.316744, -0.219512,
		39.655083, 34.449554, 50.959095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446621, 33.883915, 51.569042>,  <39.009148, 34.227833, 51.112755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.446621, 33.883915, 51.569042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739258, 34.126396, 51.444271>,  <39.914841, 34.271885, 51.369408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.739258, 34.126396, 51.444271>,  <39.446621, 33.883915, 51.569042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739258, 34.126396, 51.444271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504040, -0.172878, 0.846201,
		0.459045, -0.776293, -0.432026,
		0.731588, 0.606203, -0.311925,
		39.958733, 34.308258, 51.350693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033806, 33.460434, 51.713779>,  <39.446621, 33.883915, 51.569042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033806, 33.460434, 51.713779> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.142296, 33.844646, 51.689091>,  <40.207390, 34.075176, 51.674278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.142296, 33.844646, 51.689091>,  <40.033806, 33.460434, 51.713779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.142296, 33.844646, 51.689091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545275, -0.100493, 0.832212,
		0.793165, -0.259373, -0.551012,
		0.271226, 0.960535, -0.061722,
		40.223663, 34.132809, 51.670574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782726, 33.560642, 51.874180>,  <40.033806, 33.460434, 51.713779>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782726, 33.560642, 51.874180> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635513, 33.929302, 51.923367>,  <40.547184, 34.150497, 51.952881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.635513, 33.929302, 51.923367>,  <40.782726, 33.560642, 51.874180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.635513, 33.929302, 51.923367> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540459, 0.104426, 0.834865,
		0.756609, 0.373717, -0.536543,
		-0.368033, 0.921646, 0.122969,
		40.525105, 34.205795, 51.960258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319901, 33.925762, 52.161480>,  <40.782726, 33.560642, 51.874180>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319901, 33.925762, 52.161480> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986614, 34.132801, 52.239296>,  <40.786644, 34.257023, 52.285988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.986614, 34.132801, 52.239296>,  <41.319901, 33.925762, 52.161480>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.986614, 34.132801, 52.239296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327111, 0.177734, 0.928121,
		0.445817, 0.836961, -0.317402,
		-0.833214, 0.517597, 0.194542,
		40.736649, 34.288082, 52.297657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549068, 34.521523, 52.196724>,  <41.319901, 33.925762, 52.161480>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549068, 34.521523, 52.196724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.213634, 34.496281, 52.413166>,  <41.012375, 34.481136, 52.543030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.213634, 34.496281, 52.413166>,  <41.549068, 34.521523, 52.196724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.213634, 34.496281, 52.413166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541996, 0.003517, 0.840374,
		-0.054930, 0.998001, 0.031251,
		-0.838584, -0.063100, 0.541106,
		40.962059, 34.477352, 52.575497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.581814, 35.102757, 52.692467>,  <41.549068, 34.521523, 52.196724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.581814, 35.102757, 52.692467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296104, 34.878193, 52.859627>,  <41.124680, 34.743454, 52.959923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.296104, 34.878193, 52.859627>,  <41.581814, 35.102757, 52.692467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.296104, 34.878193, 52.859627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511046, -0.010416, 0.859490,
		-0.478169, 0.827476, 0.294343,
		-0.714273, -0.561405, 0.417897,
		41.081821, 34.709770, 52.984997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.463669, 35.500607, 53.252438>,  <41.581814, 35.102757, 52.692467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.463669, 35.500607, 53.252438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.374409, 35.112091, 53.285450>,  <41.320854, 34.878983, 53.305256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.374409, 35.112091, 53.285450>,  <41.463669, 35.500607, 53.252438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.374409, 35.112091, 53.285450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525985, -0.048698, 0.849098,
		-0.820697, 0.232885, 0.521748,
		-0.223150, -0.971284, 0.082528,
		41.307465, 34.820705, 53.310207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.159279, 35.350315, 53.907520>,  <41.463669, 35.500607, 53.252438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.159279, 35.350315, 53.907520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.295074, 34.984207, 53.820774>,  <41.376553, 34.764542, 53.768726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.295074, 34.984207, 53.820774>,  <41.159279, 35.350315, 53.907520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.295074, 34.984207, 53.820774> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593831, 0.029753, 0.804039,
		-0.729460, -0.401744, 0.553616,
		0.339490, -0.915268, -0.216865,
		41.396923, 34.709625, 53.755714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.943012, 35.989910, 54.173374>,  <41.159279, 35.350315, 53.907520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.943012, 35.989910, 54.173374> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.335602, 36.063477, 54.151924>,  <41.571156, 36.107616, 54.139053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.335602, 36.063477, 54.151924>,  <40.943012, 35.989910, 54.173374>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335602, 36.063477, 54.151924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059584, -0.559097, -0.826958,
		-0.182077, 0.808445, -0.559700,
		0.981477, 0.183920, -0.053629,
		41.630047, 36.118652, 54.135834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.974258, 36.510078, 54.620823>,  <40.943012, 35.989910, 54.173374>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.974258, 36.510078, 54.620823> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088596, 36.880707, 54.718609>,  <41.157200, 37.103085, 54.777283>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.088596, 36.880707, 54.718609>,  <40.974258, 36.510078, 54.620823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.088596, 36.880707, 54.718609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234346, 0.314957, -0.919719,
		-0.929178, 0.205610, 0.307168,
		0.285849, 0.926567, 0.244468,
		41.174351, 37.158676, 54.791950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.367496, 37.086765, 54.544819>,  <40.974258, 36.510078, 54.620823>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.367496, 37.086765, 54.544819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715103, 37.283615, 54.524345>,  <40.923668, 37.401726, 54.512062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.715103, 37.283615, 54.524345>,  <40.367496, 37.086765, 54.544819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.715103, 37.283615, 54.524345> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280097, 0.404047, -0.870800,
		-0.407860, 0.771078, 0.488967,
		0.869020, 0.492123, -0.051182,
		40.975811, 37.431252, 54.508991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.256752, 37.748386, 54.242985>,  <40.367496, 37.086765, 54.544819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.256752, 37.748386, 54.242985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645866, 37.674335, 54.187244>,  <40.879333, 37.629906, 54.153801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.645866, 37.674335, 54.187244>,  <40.256752, 37.748386, 54.242985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645866, 37.674335, 54.187244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090393, 0.250557, -0.963873,
		0.213351, 0.950237, 0.227004,
		0.972785, -0.185124, -0.139351,
		40.937702, 37.618797, 54.145439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.556175, 38.372330, 54.019550>,  <40.256752, 37.748386, 54.242985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.556175, 38.372330, 54.019550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.822491, 38.093395, 53.913383>,  <40.982281, 37.926033, 53.849686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.822491, 38.093395, 53.913383>,  <40.556175, 38.372330, 54.019550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822491, 38.093395, 53.913383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011486, 0.365250, -0.930839,
		0.746052, 0.616694, 0.251189,
		0.665789, -0.697338, -0.265413,
		41.022228, 37.884193, 53.833759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.902416, 38.639763, 53.481270>,  <40.556175, 38.372330, 54.019550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.902416, 38.639763, 53.481270> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.990898, 38.251217, 53.446583>,  <41.043987, 38.018089, 53.425770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.990898, 38.251217, 53.446583>,  <40.902416, 38.639763, 53.481270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990898, 38.251217, 53.446583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012224, 0.086152, -0.996207,
		0.975151, 0.221424, 0.007183,
		0.221203, -0.971364, -0.086718,
		41.057259, 37.959808, 53.420567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.367805, 38.638813, 52.837341>,  <40.902416, 38.639763, 53.481270>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.367805, 38.638813, 52.837341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.239491, 38.268211, 52.916012>,  <41.162502, 38.045849, 52.963215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.239491, 38.268211, 52.916012>,  <41.367805, 38.638813, 52.837341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.239491, 38.268211, 52.916012> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085863, -0.178350, -0.980213,
		0.943250, -0.331331, -0.022340,
		-0.320790, -0.926505, 0.196678,
		41.143253, 37.990261, 52.975014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.643578, 38.179440, 52.289028>,  <41.367805, 38.638813, 52.837341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.643578, 38.179440, 52.289028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.338367, 37.960430, 52.426441>,  <41.155243, 37.829025, 52.508888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.338367, 37.960430, 52.426441>,  <41.643578, 38.179440, 52.289028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.338367, 37.960430, 52.426441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237227, -0.257173, -0.936795,
		0.601266, -0.796290, 0.066341,
		-0.763022, -0.547525, 0.343531,
		41.109463, 37.796173, 52.529499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.590595, 37.573517, 51.863842>,  <41.643578, 38.179440, 52.289028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.590595, 37.573517, 51.863842> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.238937, 37.600132, 52.052597>,  <41.027943, 37.616100, 52.165848>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.238937, 37.600132, 52.052597>,  <41.590595, 37.573517, 51.863842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.238937, 37.600132, 52.052597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469968, -0.285071, -0.835383,
		0.078938, -0.956194, 0.281888,
		-0.879146, 0.066535, 0.471884,
		40.975193, 37.620094, 52.194160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.170212, 36.939213, 51.787174>,  <41.590595, 37.573517, 51.863842>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.170212, 36.939213, 51.787174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.889175, 37.212994, 51.865040>,  <40.720554, 37.377262, 51.911758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.889175, 37.212994, 51.865040>,  <41.170212, 36.939213, 51.787174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.889175, 37.212994, 51.865040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549540, -0.348088, -0.759501,
		-0.452080, -0.640594, 0.620696,
		-0.702588, 0.684452, 0.194668,
		40.678398, 37.418327, 51.923439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.605171, 36.628254, 51.566437>,  <41.170212, 36.939213, 51.787174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.605171, 36.628254, 51.566437> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.474674, 37.006340, 51.571152>,  <40.396378, 37.233192, 51.573982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.474674, 37.006340, 51.571152>,  <40.605171, 36.628254, 51.566437>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.474674, 37.006340, 51.571152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493051, -0.159509, -0.855253,
		-0.806515, -0.284834, 0.518076,
		-0.326243, 0.945212, 0.011791,
		40.376801, 37.289906, 51.574688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.991905, 36.483009, 51.294254>,  <40.605171, 36.628254, 51.566437>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.991905, 36.483009, 51.294254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.112900, 36.861732, 51.250324>,  <40.185497, 37.088966, 51.223965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.112900, 36.861732, 51.250324>,  <39.991905, 36.483009, 51.294254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.112900, 36.861732, 51.250324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270811, -0.025107, -0.962305,
		-0.913874, 0.320823, 0.248812,
		0.302482, 0.946806, -0.109827,
		40.203644, 37.145775, 51.217377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.496708, 36.674530, 50.864723>,  <39.991905, 36.483009, 51.294254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.496708, 36.674530, 50.864723> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.796803, 36.936909, 50.831566>,  <39.976860, 37.094337, 50.811672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.796803, 36.936909, 50.831566>,  <39.496708, 36.674530, 50.864723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796803, 36.936909, 50.831566> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165636, 0.065086, -0.984037,
		-0.640085, 0.751992, 0.157479,
		0.750238, 0.655951, -0.082896,
		40.021873, 37.133694, 50.806698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199165, 37.212635, 50.501835>,  <39.496708, 36.674530, 50.864723>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199165, 37.212635, 50.501835> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593605, 37.269238, 50.466991>,  <39.830269, 37.303200, 50.446087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.593605, 37.269238, 50.466991>,  <39.199165, 37.212635, 50.501835>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.593605, 37.269238, 50.466991> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122722, 0.266742, -0.955923,
		-0.112036, 0.953323, 0.280399,
		0.986097, 0.141509, -0.087109,
		39.889435, 37.311691, 50.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264389, 37.740112, 50.003468>,  <39.199165, 37.212635, 50.501835>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264389, 37.740112, 50.003468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623409, 37.563759, 50.005699>,  <39.838821, 37.457947, 50.007038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.623409, 37.563759, 50.005699>,  <39.264389, 37.740112, 50.003468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623409, 37.563759, 50.005699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069376, 0.128720, -0.989251,
		0.435428, 0.888286, 0.146119,
		0.897546, -0.440885, 0.005577,
		39.892673, 37.431492, 50.007374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303089, 38.469765, 49.890102>,  <39.264389, 37.740112, 50.003468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303089, 38.469765, 49.890102> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.927368, 38.595505, 49.835114>,  <38.701935, 38.670948, 49.802120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.927368, 38.595505, 49.835114>,  <39.303089, 38.469765, 49.890102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927368, 38.595505, 49.835114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054865, 0.257897, 0.964613,
		0.338681, 0.913604, -0.224996,
		-0.939300, 0.314352, -0.137469,
		38.645576, 38.689812, 49.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244499, 39.241421, 50.201775>,  <39.303089, 38.469765, 49.890102>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244499, 39.241421, 50.201775> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870014, 39.107735, 50.245235>,  <38.645321, 39.027523, 50.271313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.870014, 39.107735, 50.245235>,  <39.244499, 39.241421, 50.201775>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870014, 39.107735, 50.245235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025275, 0.372401, 0.927727,
		-0.350518, 0.865806, -0.357095,
		-0.936215, -0.334211, 0.108650,
		38.589149, 39.007473, 50.277832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727734, 39.821556, 50.463810>,  <39.244499, 39.241421, 50.201775>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727734, 39.821556, 50.463810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568634, 39.468178, 50.562859>,  <38.473175, 39.256149, 50.622288>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.568634, 39.468178, 50.562859>,  <38.727734, 39.821556, 50.463810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.568634, 39.468178, 50.562859> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145959, 0.327378, 0.933552,
		-0.905808, 0.335182, -0.259163,
		-0.397754, -0.883446, 0.247619,
		38.449306, 39.203144, 50.637146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.337017, 39.957352, 51.075855>,  <38.727734, 39.821556, 50.463810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.337017, 39.957352, 51.075855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302032, 39.558891, 51.073715>,  <38.281044, 39.319813, 51.072430>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.302032, 39.558891, 51.073715>,  <38.337017, 39.957352, 51.075855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.302032, 39.558891, 51.073715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201731, 0.012452, 0.979362,
		-0.975528, 0.086733, -0.202044,
		-0.087459, -0.996154, -0.005350,
		38.275795, 39.260044, 51.072109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.791889, 39.919224, 51.495632>,  <38.337017, 39.957352, 51.075855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.791889, 39.919224, 51.495632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997334, 39.576019, 51.494068>,  <38.120602, 39.370094, 51.493130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.997334, 39.576019, 51.494068>,  <37.791889, 39.919224, 51.495632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.997334, 39.576019, 51.494068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072641, 0.038943, 0.996598,
		-0.854942, -0.512148, 0.082328,
		0.513612, -0.858014, -0.003909,
		38.151417, 39.318615, 51.492897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490929, 39.486820, 52.026627>,  <37.791889, 39.919224, 51.495632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490929, 39.486820, 52.026627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863625, 39.351532, 51.973747>,  <38.087242, 39.270359, 51.942020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.863625, 39.351532, 51.973747>,  <37.490929, 39.486820, 52.026627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863625, 39.351532, 51.973747> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146340, 0.016537, 0.989096,
		-0.332345, -0.940922, 0.064903,
		0.931735, -0.338219, -0.132198,
		38.143147, 39.250065, 51.934090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591301, 38.967278, 52.545425>,  <37.490929, 39.486820, 52.026627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591301, 38.967278, 52.545425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963840, 39.050659, 52.425999>,  <38.187363, 39.100689, 52.354343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.963840, 39.050659, 52.425999>,  <37.591301, 38.967278, 52.545425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963840, 39.050659, 52.425999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336787, -0.181372, 0.923947,
		0.138454, -0.961067, -0.239127,
		0.931346, 0.208459, -0.298563,
		38.243244, 39.113197, 52.336430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.461353, 38.279789, 52.458218>,  <37.591301, 38.967278, 52.545425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.461353, 38.279789, 52.458218> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185585, 38.028736, 52.602875>,  <37.020126, 37.878105, 52.689671>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.185585, 38.028736, 52.602875>,  <37.461353, 38.279789, 52.458218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185585, 38.028736, 52.602875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520459, 0.081955, -0.849945,
		0.503811, -0.774187, -0.383156,
		-0.689418, -0.627628, 0.361643,
		36.978760, 37.840446, 52.711369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411175, 37.814487, 51.949505>,  <37.461353, 38.279789, 52.458218>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411175, 37.814487, 51.949505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063503, 37.753380, 52.137630>,  <36.854900, 37.716713, 52.250504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.063503, 37.753380, 52.137630>,  <37.411175, 37.814487, 51.949505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.063503, 37.753380, 52.137630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468439, -0.050311, -0.882062,
		0.158419, -0.986979, -0.027836,
		-0.869177, -0.152775, 0.470310,
		36.802750, 37.707546, 52.278725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135796, 37.188633, 51.636189>,  <37.411175, 37.814487, 51.949505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135796, 37.188633, 51.636189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845207, 37.413517, 51.794262>,  <36.670856, 37.548447, 51.889107>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.845207, 37.413517, 51.794262>,  <37.135796, 37.188633, 51.636189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845207, 37.413517, 51.794262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436711, 0.066315, -0.897154,
		-0.530593, -0.824333, 0.197346,
		-0.726467, 0.562207, 0.395181,
		36.627266, 37.582180, 51.912815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.522236, 36.940590, 51.340115>,  <37.135796, 37.188633, 51.636189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.522236, 36.940590, 51.340115> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372429, 37.287331, 51.471756>,  <36.282543, 37.495373, 51.550739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.372429, 37.287331, 51.471756>,  <36.522236, 36.940590, 51.340115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.372429, 37.287331, 51.471756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493514, 0.114120, -0.862218,
		-0.784971, -0.485333, 0.385063,
		-0.374520, 0.866850, 0.329100,
		36.260075, 37.547386, 51.570484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752052, 36.952057, 51.289433>,  <36.522236, 36.940590, 51.340115>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752052, 36.952057, 51.289433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845562, 37.339958, 51.317528>,  <35.901669, 37.572697, 51.334385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.845562, 37.339958, 51.317528>,  <35.752052, 36.952057, 51.289433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845562, 37.339958, 51.317528> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538133, 0.189211, -0.821348,
		-0.809793, 0.154211, 0.566087,
		0.233771, 0.969752, 0.070236,
		35.915691, 37.630882, 51.338600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.120590, 37.380436, 51.076797>,  <35.752052, 36.952057, 51.289433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.120590, 37.380436, 51.076797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428467, 37.630672, 51.025887>,  <35.613194, 37.780815, 50.995338>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.428467, 37.630672, 51.025887>,  <35.120590, 37.380436, 51.076797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.428467, 37.630672, 51.025887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311143, 0.193506, -0.930454,
		-0.557458, 0.755769, 0.343591,
		0.769695, 0.625595, -0.127281,
		35.659374, 37.818352, 50.987701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.891083, 37.913837, 50.741940>,  <35.120590, 37.380436, 51.076797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.891083, 37.913837, 50.741940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275837, 37.975182, 50.651375>,  <35.506687, 38.011990, 50.597034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.275837, 37.975182, 50.651375>,  <34.891083, 37.913837, 50.741940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.275837, 37.975182, 50.651375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261551, 0.274237, -0.925411,
		-0.079831, 0.949355, 0.303895,
		0.961883, 0.153360, -0.226412,
		35.564404, 38.021191, 50.583450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.066555, 31.702499, 54.725574> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.275318, 31.932489, 54.473537>,  <40.400574, 32.070484, 54.322315>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.275318, 31.932489, 54.473537>,  <40.066555, 31.702499, 54.725574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.275318, 31.932489, 54.473537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485777, -0.406848, -0.773625,
		-0.701169, 0.709843, 0.066974,
		0.521904, 0.574976, -0.630094,
		40.431889, 32.104980, 54.284508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595230, 32.242470, 54.307716>,  <40.066555, 31.702499, 54.725574>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595230, 32.242470, 54.307716> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928059, 32.233219, 54.086044>,  <40.127758, 32.227669, 53.953041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.928059, 32.233219, 54.086044>,  <39.595230, 32.242470, 54.307716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928059, 32.233219, 54.086044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551848, -0.135016, -0.822942,
		-0.055792, 0.990574, -0.125105,
		0.832076, -0.023125, -0.554179,
		40.177681, 32.226280, 53.919792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.499207, 32.694447, 53.694645>,  <39.595230, 32.242470, 54.307716>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.499207, 32.694447, 53.694645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781361, 32.439713, 53.570148>,  <39.950653, 32.286873, 53.495449>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.781361, 32.439713, 53.570148>,  <39.499207, 32.694447, 53.694645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.781361, 32.439713, 53.570148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411422, -0.010287, -0.911387,
		0.577202, 0.770931, -0.269265,
		0.705386, -0.636836, -0.311240,
		39.992977, 32.248661, 53.476776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624691, 32.893669, 53.065033>,  <39.499207, 32.694447, 53.694645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624691, 32.893669, 53.065033> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.762707, 32.518364, 53.055229>,  <39.845516, 32.293179, 53.049347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.762707, 32.518364, 53.055229>,  <39.624691, 32.893669, 53.065033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.762707, 32.518364, 53.055229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334966, -0.098701, -0.937046,
		0.876780, 0.331532, -0.348344,
		0.345043, -0.938267, -0.024513,
		39.866219, 32.236885, 53.047874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026978, 32.771126, 52.377167>,  <39.624691, 32.893669, 53.065033>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026978, 32.771126, 52.377167> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.910091, 32.419449, 52.527706>,  <39.839958, 32.208443, 52.618031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.910091, 32.419449, 52.527706>,  <40.026978, 32.771126, 52.377167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.910091, 32.419449, 52.527706> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371409, -0.258304, -0.891815,
		0.881286, -0.400380, -0.251058,
		-0.292216, -0.879190, 0.376345,
		39.822426, 32.155693, 52.640610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.189030, 32.263252, 51.885841>,  <40.026978, 32.771126, 52.377167>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.189030, 32.263252, 51.885841> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.916821, 32.054058, 52.091122>,  <39.753494, 31.928543, 52.214291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.916821, 32.054058, 52.091122>,  <40.189030, 32.263252, 51.885841>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.916821, 32.054058, 52.091122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435019, -0.275233, -0.857325,
		0.589616, -0.806683, -0.040205,
		-0.680523, -0.522982, 0.513203,
		39.712662, 31.897163, 52.245083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032997, 31.639215, 51.463730>,  <40.189030, 32.263252, 51.885841>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032997, 31.639215, 51.463730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717117, 31.699167, 51.701691>,  <39.527588, 31.735138, 51.844467>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.717117, 31.699167, 51.701691>,  <40.032997, 31.639215, 51.463730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.717117, 31.699167, 51.701691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610952, -0.280220, -0.740416,
		0.055728, -0.948163, 0.312861,
		-0.789704, 0.149881, 0.594898,
		39.480206, 31.744131, 51.880161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647697, 30.990671, 51.429043>,  <40.032997, 31.639215, 51.463730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647697, 30.990671, 51.429043> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.406811, 31.281410, 51.561119>,  <39.262280, 31.455854, 51.640366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.406811, 31.281410, 51.561119>,  <39.647697, 30.990671, 51.429043>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406811, 31.281410, 51.561119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736826, -0.346844, -0.580333,
		-0.307286, -0.592784, 0.744434,
		-0.602215, 0.726847, 0.330199,
		39.226147, 31.499466, 51.660179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.942356, 30.668102, 51.537922>,  <39.647697, 30.990671, 51.429043>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.942356, 30.668102, 51.537922> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.850151, 31.057331, 51.538322>,  <38.794830, 31.290869, 51.538563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.850151, 31.057331, 51.538322>,  <38.942356, 30.668102, 51.537922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850151, 31.057331, 51.538322> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746951, -0.176283, -0.641084,
		-0.623643, -0.148526, 0.767470,
		-0.230509, 0.973070, 0.001004,
		38.780998, 31.349253, 51.538624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.170139, 30.781437, 51.418228>,  <38.942356, 30.668102, 51.537922>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.170139, 30.781437, 51.418228> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358624, 31.115263, 51.304062>,  <38.471714, 31.315559, 51.235561>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.358624, 31.115263, 51.304062>,  <38.170139, 30.781437, 51.418228>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358624, 31.115263, 51.304062> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637422, 0.098550, -0.764187,
		-0.609637, 0.542022, 0.578408,
		0.471208, 0.834566, -0.285416,
		38.499985, 31.365633, 51.218437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564476, 31.261869, 51.140930>,  <38.170139, 30.781437, 51.418228>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564476, 31.261869, 51.140930> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880413, 31.457176, 50.992477>,  <38.069977, 31.574360, 50.903404>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.880413, 31.457176, 50.992477>,  <37.564476, 31.261869, 51.140930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.880413, 31.457176, 50.992477> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471815, 0.097138, -0.876330,
		-0.391831, 0.867272, 0.307096,
		0.789847, 0.488266, -0.371130,
		38.117367, 31.603657, 50.881138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.334908, 31.913322, 50.859032>,  <37.564476, 31.261869, 51.140930>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.334908, 31.913322, 50.859032> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.676365, 31.821884, 50.671829>,  <37.881241, 31.767021, 50.559509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.676365, 31.821884, 50.671829>,  <37.334908, 31.913322, 50.859032>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676365, 31.821884, 50.671829> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467215, 0.061065, -0.882032,
		0.230206, 0.971605, -0.054675,
		0.853648, -0.228594, -0.468006,
		37.932461, 31.753305, 50.531425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.312920, 32.667931, 51.086479>,  <37.334908, 31.913322, 50.859032>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.312920, 32.667931, 51.086479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019638, 32.928814, 51.163467>,  <36.843670, 33.085342, 51.209660>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.019638, 32.928814, 51.163467>,  <37.312920, 32.667931, 51.086479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.019638, 32.928814, 51.163467> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354222, 0.124709, 0.926809,
		0.580469, 0.747712, -0.322463,
		-0.733200, 0.652207, 0.192466,
		36.799679, 33.124477, 51.221207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.630848, 33.241470, 51.488403>,  <37.312920, 32.667931, 51.086479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.630848, 33.241470, 51.488403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.235973, 33.263748, 51.548214>,  <36.999046, 33.277115, 51.584099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.235973, 33.263748, 51.548214>,  <37.630848, 33.241470, 51.488403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235973, 33.263748, 51.548214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159510, 0.368119, 0.915994,
		-0.004028, 0.928109, -0.372287,
		-0.987188, 0.055694, 0.149526,
		36.939816, 33.280457, 51.593071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527626, 33.881908, 51.850136>,  <37.630848, 33.241470, 51.488403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527626, 33.881908, 51.850136> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202209, 33.661446, 51.924309>,  <37.006962, 33.529167, 51.968811>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.202209, 33.661446, 51.924309>,  <37.527626, 33.881908, 51.850136>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202209, 33.661446, 51.924309> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044729, 0.258626, 0.964942,
		-0.579788, 0.793311, -0.185749,
		-0.813539, -0.551153, 0.185432,
		36.958149, 33.496101, 51.979939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998093, 34.366875, 52.243389>,  <37.527626, 33.881908, 51.850136>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998093, 34.366875, 52.243389> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905323, 33.983749, 52.311268>,  <36.849659, 33.753872, 52.351994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.905323, 33.983749, 52.311268>,  <36.998093, 34.366875, 52.243389>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.905323, 33.983749, 52.311268> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033766, 0.166417, 0.985477,
		-0.972147, 0.234288, -0.006255,
		-0.231927, -0.957817, 0.169692,
		36.835747, 33.696404, 52.362175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516605, 34.392086, 52.811363>,  <36.998093, 34.366875, 52.243389>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516605, 34.392086, 52.811363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.679146, 34.026871, 52.797264>,  <36.776672, 33.807743, 52.788807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.679146, 34.026871, 52.797264>,  <36.516605, 34.392086, 52.811363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.679146, 34.026871, 52.797264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007619, -0.035186, 0.999352,
		-0.913684, -0.406359, -0.007342,
		0.406354, -0.913036, -0.035245,
		36.801052, 33.752960, 52.786690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.073017, 33.965607, 53.316429>,  <36.516605, 34.392086, 52.811363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.073017, 33.965607, 53.316429> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418839, 33.768482, 53.277073>,  <36.626331, 33.650208, 53.253460>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.418839, 33.768482, 53.277073>,  <36.073017, 33.965607, 53.316429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.418839, 33.768482, 53.277073> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156731, 0.078403, 0.984524,
		-0.477469, -0.866598, 0.145022,
		0.864557, -0.492810, -0.098388,
		36.678207, 33.620640, 53.247555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.194202, 33.592796, 53.968773>,  <36.073017, 33.965607, 53.316429>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.194202, 33.592796, 53.968773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.556538, 33.568707, 53.801044>,  <36.773937, 33.554253, 53.700405>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.556538, 33.568707, 53.801044>,  <36.194202, 33.592796, 53.968773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556538, 33.568707, 53.801044> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422686, 0.194486, 0.885162,
		0.028243, -0.979055, 0.201629,
		0.905836, -0.060225, -0.419325,
		36.828289, 33.550640, 53.675247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573368, 33.210773, 54.398865>,  <36.194202, 33.592796, 53.968773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573368, 33.210773, 54.398865> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.850132, 33.395870, 54.177189>,  <37.016190, 33.506927, 54.044182>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.850132, 33.395870, 54.177189>,  <36.573368, 33.210773, 54.398865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.850132, 33.395870, 54.177189> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601538, 0.054995, 0.796949,
		0.399262, -0.884784, -0.240307,
		0.691912, 0.462746, -0.554188,
		37.057705, 33.534695, 54.010933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.176888, 32.970329, 54.655243>,  <36.573368, 33.210773, 54.398865>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.176888, 32.970329, 54.655243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286587, 33.319836, 54.494583>,  <37.352406, 33.529541, 54.398190>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286587, 33.319836, 54.494583>,  <37.176888, 32.970329, 54.655243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286587, 33.319836, 54.494583> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557740, 0.195718, 0.806610,
		0.783397, -0.445230, -0.433658,
		0.274253, 0.873765, -0.401647,
		37.368862, 33.581966, 54.374088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.898018, 32.992634, 54.830097>,  <37.176888, 32.970329, 54.655243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.898018, 32.992634, 54.830097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787434, 33.365635, 54.737148>,  <37.721081, 33.589436, 54.681377>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.787434, 33.365635, 54.737148>,  <37.898018, 32.992634, 54.830097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787434, 33.365635, 54.737148> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582395, 0.354909, 0.731338,
		0.764449, 0.066856, -0.641208,
		-0.276465, 0.932507, -0.232373,
		37.704494, 33.645386, 54.667435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.470913, 33.373886, 54.861485>,  <37.898018, 32.992634, 54.830097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.470913, 33.373886, 54.861485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196274, 33.664497, 54.872349>,  <38.031490, 33.838863, 54.878868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.196274, 33.664497, 54.872349>,  <38.470913, 33.373886, 54.861485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.196274, 33.664497, 54.872349> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577892, 0.522703, 0.626756,
		0.441155, 0.446030, -0.778742,
		-0.686602, 0.726526, 0.027164,
		37.990292, 33.882454, 54.880497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842735, 34.068638, 54.935673>,  <38.470913, 33.373886, 54.861485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842735, 34.068638, 54.935673> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457108, 34.132351, 55.020721>,  <38.225731, 34.170578, 55.071751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.457108, 34.132351, 55.020721>,  <38.842735, 34.068638, 54.935673>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.457108, 34.132351, 55.020721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258309, 0.749054, 0.610077,
		-0.062090, 0.643076, -0.763281,
		-0.964065, 0.159283, 0.212621,
		38.167889, 34.180138, 55.084507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.612827, 34.843018, 54.749485>,  <38.842735, 34.068638, 54.935673>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.612827, 34.843018, 54.749485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.413517, 34.689438, 55.060432>,  <38.293930, 34.597290, 55.247002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.413517, 34.689438, 55.060432>,  <38.612827, 34.843018, 54.749485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413517, 34.689438, 55.060432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219686, 0.811435, 0.541583,
		-0.838725, 0.440635, -0.319970,
		-0.498275, -0.383946, 0.777372,
		38.264034, 34.574253, 55.293644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335670, 35.439941, 55.138039>,  <38.612827, 34.843018, 54.749485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335670, 35.439941, 55.138039> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377884, 35.116829, 55.370022>,  <38.403214, 34.922962, 55.509212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.377884, 35.116829, 55.370022>,  <38.335670, 35.439941, 55.138039>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.377884, 35.116829, 55.370022> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184163, 0.589001, 0.786869,
		-0.977213, 0.023764, 0.210924,
		0.105536, -0.807783, 0.579956,
		38.409546, 34.874493, 55.544010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677765, 35.877834, 54.987961>,  <38.335670, 35.439941, 55.138039>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.677765, 35.877834, 54.987961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657631, 36.259048, 55.107422>,  <37.645550, 36.487778, 55.179100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.657631, 36.259048, 55.107422>,  <37.677765, 35.877834, 54.987961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.657631, 36.259048, 55.107422> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408593, 0.253209, -0.876891,
		-0.911328, -0.166168, 0.376656,
		-0.050339, 0.953034, 0.298651,
		37.642529, 36.544960, 55.197018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.006027, 36.079327, 54.777641>,  <37.677765, 35.877834, 54.987961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.006027, 36.079327, 54.777641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.226059, 36.406013, 54.847374>,  <37.358078, 36.602024, 54.889214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.226059, 36.406013, 54.847374>,  <37.006027, 36.079327, 54.777641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226059, 36.406013, 54.847374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379478, 0.430405, -0.818992,
		-0.743914, 0.384357, 0.546682,
		0.550080, 0.816714, 0.174329,
		37.391083, 36.651028, 54.899673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.501385, 36.648281, 54.730492>,  <37.006027, 36.079327, 54.777641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.501385, 36.648281, 54.730492> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.873806, 36.771961, 54.652992>,  <37.097260, 36.846169, 54.606491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.873806, 36.771961, 54.652992>,  <36.501385, 36.648281, 54.730492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.873806, 36.771961, 54.652992> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284572, 0.282944, -0.915948,
		-0.228391, 0.907931, 0.351426,
		0.931051, 0.309200, -0.193750,
		37.153122, 36.864723, 54.594868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397221, 37.267597, 54.461979>,  <36.501385, 36.648281, 54.730492>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397221, 37.267597, 54.461979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773521, 37.180080, 54.358353>,  <36.999302, 37.127571, 54.296177>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.773521, 37.180080, 54.358353>,  <36.397221, 37.267597, 54.461979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773521, 37.180080, 54.358353> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101319, 0.547727, -0.830500,
		0.323605, 0.807543, 0.493107,
		0.940752, -0.218793, -0.259066,
		37.055748, 37.114441, 54.280632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597397, 37.914173, 54.348007>,  <36.397221, 37.267597, 54.461979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597397, 37.914173, 54.348007> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.817112, 37.642277, 54.153591>,  <36.948940, 37.479137, 54.036942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.817112, 37.642277, 54.153591>,  <36.597397, 37.914173, 54.348007>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.817112, 37.642277, 54.153591> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161283, 0.484465, -0.859815,
		0.819918, 0.550679, 0.156482,
		0.549292, -0.679740, -0.486036,
		36.981899, 37.438354, 54.007782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829811, 38.326603, 53.809208>,  <36.597397, 37.914173, 54.348007>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829811, 38.326603, 53.809208> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936405, 37.964367, 53.677216>,  <37.000362, 37.747025, 53.598019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.936405, 37.964367, 53.677216>,  <36.829811, 38.326603, 53.809208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936405, 37.964367, 53.677216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261272, 0.261674, -0.929120,
		0.927750, 0.333816, -0.166872,
		0.266489, -0.905590, -0.329985,
		37.016354, 37.692688, 53.578220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.336693, 38.384483, 53.186306>,  <36.829811, 38.326603, 53.809208>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.336693, 38.384483, 53.186306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.165100, 38.023819, 53.164429>,  <37.062145, 37.807423, 53.151302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.165100, 38.023819, 53.164429>,  <37.336693, 38.384483, 53.186306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.165100, 38.023819, 53.164429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256944, 0.179841, -0.949546,
		0.865999, -0.393285, -0.308823,
		-0.428981, -0.901656, -0.054690,
		37.036407, 37.753323, 53.148022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019592, 38.435184, 52.883488>,  <37.336693, 38.384483, 53.186306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019592, 38.435184, 52.883488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.304661, 38.701523, 52.795170>,  <38.475700, 38.861324, 52.742180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.304661, 38.701523, 52.795170>,  <38.019592, 38.435184, 52.883488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.304661, 38.701523, 52.795170> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337785, -0.049872, 0.939901,
		0.614819, -0.744420, -0.260455,
		0.712670, 0.665847, -0.220791,
		38.518463, 38.901276, 52.728931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.555283, 38.156303, 53.120987>,  <38.019592, 38.435184, 52.883488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.555283, 38.156303, 53.120987> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.645866, 38.545258, 53.098423>,  <38.700218, 38.778629, 53.084885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.645866, 38.545258, 53.098423>,  <38.555283, 38.156303, 53.120987>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.645866, 38.545258, 53.098423> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289516, -0.011905, 0.957099,
		0.929998, -0.233076, -0.284217,
		0.226461, 0.972385, -0.056408,
		38.713806, 38.836975, 53.081501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134285, 38.184948, 53.364750>,  <38.555283, 38.156303, 53.120987>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.134285, 38.184948, 53.364750> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.038250, 38.572170, 53.393673>,  <38.980629, 38.804504, 53.411026>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.038250, 38.572170, 53.393673>,  <39.134285, 38.184948, 53.364750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.038250, 38.572170, 53.393673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418214, 0.035927, 0.907637,
		0.876044, 0.248155, -0.413480,
		-0.240090, 0.968054, 0.072308,
		38.966225, 38.862587, 53.415367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746769, 38.537857, 53.546200>,  <39.134285, 38.184948, 53.364750>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746769, 38.537857, 53.546200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479736, 38.812557, 53.661232>,  <39.319515, 38.977379, 53.730251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.479736, 38.812557, 53.661232>,  <39.746769, 38.537857, 53.546200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.479736, 38.812557, 53.661232> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479743, 0.101402, 0.871530,
		0.569365, 0.719783, -0.397160,
		-0.667585, 0.686753, 0.287576,
		39.279461, 39.018581, 53.747505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.127731, 39.158558, 53.813637>,  <39.746769, 38.537857, 53.546200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.127731, 39.158558, 53.813637> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.772953, 39.121441, 53.994617>,  <39.560085, 39.099171, 54.103207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.772953, 39.121441, 53.994617>,  <40.127731, 39.158558, 53.813637>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.772953, 39.121441, 53.994617> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441346, 0.118481, 0.889481,
		-0.136148, 0.988611, -0.064131,
		-0.886948, -0.092797, 0.452450,
		39.506870, 39.093601, 54.130352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.272041, 39.424713, 54.431721>,  <40.127731, 39.158558, 53.813637>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.272041, 39.424713, 54.431721> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.905346, 39.284492, 54.508358>,  <39.685329, 39.200359, 54.554340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.905346, 39.284492, 54.508358>,  <40.272041, 39.424713, 54.431721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.905346, 39.284492, 54.508358> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222019, -0.048351, 0.973843,
		-0.332121, 0.935293, 0.122155,
		-0.916735, -0.350554, 0.191595,
		39.630325, 39.179325, 54.565838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.911476, 39.846439, 54.963760>,  <40.272041, 39.424713, 54.431721>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.911476, 39.846439, 54.963760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.743973, 39.484383, 54.993034>,  <39.643471, 39.267147, 55.010601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.743973, 39.484383, 54.993034>,  <39.911476, 39.846439, 54.963760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.743973, 39.484383, 54.993034> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189373, -0.008220, 0.981871,
		-0.888134, 0.425023, 0.174852,
		-0.418755, -0.905145, 0.073187,
		39.618347, 39.212837, 55.014992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466526, 39.802094, 55.588074>,  <39.911476, 39.846439, 54.963760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466526, 39.802094, 55.588074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.516861, 39.411896, 55.515873>,  <39.547062, 39.177776, 55.472553>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.516861, 39.411896, 55.515873>,  <39.466526, 39.802094, 55.588074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.516861, 39.411896, 55.515873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089931, -0.169983, 0.981335,
		-0.987966, -0.139725, 0.066336,
		0.125841, -0.975491, -0.180503,
		39.554615, 39.119247, 55.461723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863930, 39.382530, 55.818436>,  <39.466526, 39.802094, 55.588074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863930, 39.382530, 55.818436> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207939, 39.179043, 55.834278>,  <39.414345, 39.056950, 55.843784>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.207939, 39.179043, 55.834278>,  <38.863930, 39.382530, 55.818436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.207939, 39.179043, 55.834278> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083115, -0.063077, 0.994542,
		-0.503447, -0.858617, -0.096530,
		0.860019, -0.508722, 0.039608,
		39.465946, 39.026428, 55.846161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.843494, 37.224384, 39.640148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146542, 36.965378, 39.672977>,  <37.328369, 36.809975, 39.692677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.146542, 36.965378, 39.672977>,  <36.843494, 37.224384, 39.640148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146542, 36.965378, 39.672977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063111, 0.197838, 0.978201,
		-0.649635, -0.735927, 0.190752,
		0.757622, -0.647512, 0.082078,
		37.373829, 36.771126, 39.697601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.734318, 36.649906, 40.036011>,  <36.843494, 37.224384, 39.640148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.734318, 36.649906, 40.036011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128490, 36.715187, 40.055164>,  <37.364994, 36.754356, 40.066658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.128490, 36.715187, 40.055164>,  <36.734318, 36.649906, 40.036011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.128490, 36.715187, 40.055164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070785, 0.137530, 0.987965,
		0.154665, -0.976958, 0.147079,
		0.985428, 0.163215, 0.047883,
		37.424118, 36.764145, 40.069530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828987, 36.258587, 40.526245>,  <36.734318, 36.649906, 40.036011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828987, 36.258587, 40.526245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158241, 36.483589, 40.495205>,  <37.355797, 36.618591, 40.476582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.158241, 36.483589, 40.495205>,  <36.828987, 36.258587, 40.526245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158241, 36.483589, 40.495205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058247, 0.052302, 0.996931,
		0.564843, -0.825134, 0.010287,
		0.823140, 0.562510, -0.077604,
		37.405182, 36.652344, 40.471924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388401, 35.961212, 40.923153>,  <36.828987, 36.258587, 40.526245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388401, 35.961212, 40.923153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496384, 36.345390, 40.895836>,  <37.561172, 36.575897, 40.879444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496384, 36.345390, 40.895836>,  <37.388401, 35.961212, 40.923153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496384, 36.345390, 40.895836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002017, 0.071494, 0.997439,
		0.962869, -0.269132, 0.021238,
		0.269961, 0.960446, -0.068297,
		37.577374, 36.633526, 40.875347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.909515, 36.033264, 41.417553>,  <37.388401, 35.961212, 40.923153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.909515, 36.033264, 41.417553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792583, 36.410202, 41.352406>,  <37.722424, 36.636364, 41.313316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.792583, 36.410202, 41.352406>,  <37.909515, 36.033264, 41.417553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792583, 36.410202, 41.352406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002327, 0.169605, 0.985510,
		0.956316, 0.288470, -0.047388,
		-0.292327, 0.942348, -0.162867,
		37.704884, 36.692905, 41.303547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.431568, 36.496979, 41.823528>,  <37.909515, 36.033264, 41.417553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.431568, 36.496979, 41.823528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106640, 36.725254, 41.775433>,  <37.911682, 36.862217, 41.746574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.106640, 36.725254, 41.775433>,  <38.431568, 36.496979, 41.823528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.106640, 36.725254, 41.775433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111337, 0.354110, 0.928553,
		0.572488, 0.740894, -0.351188,
		-0.812319, 0.570686, -0.120235,
		37.862946, 36.896461, 41.739361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.648796, 37.063438, 42.226078>,  <38.431568, 36.496979, 41.823528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.648796, 37.063438, 42.226078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257046, 37.119827, 42.168179>,  <38.021996, 37.153660, 42.133438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257046, 37.119827, 42.168179>,  <38.648796, 37.063438, 42.226078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257046, 37.119827, 42.168179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101104, 0.278349, 0.955144,
		0.174939, 0.950079, -0.258355,
		-0.979375, 0.140971, -0.144750,
		37.963234, 37.162117, 42.124752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380066, 37.733200, 42.431446>,  <38.648796, 37.063438, 42.226078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380066, 37.733200, 42.431446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046757, 37.513683, 42.458221>,  <37.846771, 37.381973, 42.474285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.046757, 37.513683, 42.458221>,  <38.380066, 37.733200, 42.431446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.046757, 37.513683, 42.458221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034763, 0.172847, 0.984335,
		-0.551763, 0.817896, -0.163107,
		-0.833276, -0.548789, 0.066938,
		37.796772, 37.349045, 42.478302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.936256, 38.152214, 42.738522>,  <38.380066, 37.733200, 42.431446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.936256, 38.152214, 42.738522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753418, 37.803715, 42.810062>,  <37.643715, 37.594616, 42.852985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753418, 37.803715, 42.810062>,  <37.936256, 38.152214, 42.738522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753418, 37.803715, 42.810062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133687, 0.266108, 0.954628,
		-0.879311, 0.412450, -0.238112,
		-0.457100, -0.871247, 0.178852,
		37.616287, 37.542339, 42.863720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430931, 38.285355, 43.106815>,  <37.936256, 38.152214, 42.738522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430931, 38.285355, 43.106815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453064, 37.893761, 43.185326>,  <37.466343, 37.658806, 43.232433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.453064, 37.893761, 43.185326>,  <37.430931, 38.285355, 43.106815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.453064, 37.893761, 43.185326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071203, 0.192210, 0.978767,
		-0.995926, -0.068131, -0.059072,
		0.055330, -0.978986, 0.196278,
		37.469662, 37.600063, 43.244209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788219, 38.169392, 43.504421>,  <37.430931, 38.285355, 43.106815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788219, 38.169392, 43.504421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087135, 37.909580, 43.560516>,  <37.266487, 37.753693, 43.594173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.087135, 37.909580, 43.560516>,  <36.788219, 38.169392, 43.504421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.087135, 37.909580, 43.560516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059263, 0.145062, 0.987646,
		-0.661846, -0.746373, 0.069911,
		0.747294, -0.649527, 0.140241,
		37.311325, 37.714722, 43.602589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.615768, 37.987381, 44.122780>,  <36.788219, 38.169392, 43.504421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.615768, 37.987381, 44.122780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994759, 37.859505, 44.126518>,  <37.222153, 37.782780, 44.128761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994759, 37.859505, 44.126518>,  <36.615768, 37.987381, 44.122780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994759, 37.859505, 44.126518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090278, 0.295366, 0.951109,
		-0.306826, -0.900308, 0.308713,
		0.947474, -0.319695, 0.009348,
		37.278999, 37.763596, 44.129322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.505753, 37.271160, 44.314026>,  <36.615768, 37.987381, 44.122780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.505753, 37.271160, 44.314026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131531, 37.176628, 44.419010>,  <35.906998, 37.119911, 44.481998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.131531, 37.176628, 44.419010>,  <36.505753, 37.271160, 44.314026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.131531, 37.176628, 44.419010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248801, -0.086414, -0.964692,
		0.250664, -0.967823, 0.022047,
		-0.935556, -0.236328, 0.262456,
		35.850864, 37.105728, 44.497746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320576, 36.847744, 43.843830>,  <36.505753, 37.271160, 44.314026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320576, 36.847744, 43.843830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959518, 36.891285, 44.010387>,  <35.742882, 36.917408, 44.110321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959518, 36.891285, 44.010387>,  <36.320576, 36.847744, 43.843830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959518, 36.891285, 44.010387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430279, -0.249290, -0.867591,
		0.009365, -0.962292, 0.271856,
		-0.902647, 0.108849, 0.416389,
		35.688725, 36.923939, 44.135303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865303, 36.357258, 43.556019>,  <36.320576, 36.847744, 43.843830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865303, 36.357258, 43.556019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583347, 36.603046, 43.697754>,  <35.414173, 36.750519, 43.782795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.583347, 36.603046, 43.697754>,  <35.865303, 36.357258, 43.556019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583347, 36.603046, 43.697754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553599, -0.164270, -0.816421,
		-0.443465, -0.771644, 0.455965,
		-0.704888, 0.614476, 0.354333,
		35.371880, 36.787388, 43.804054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165257, 36.030159, 43.636055>,  <35.865303, 36.357258, 43.556019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165257, 36.030159, 43.636055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094437, 36.421803, 43.596035>,  <35.051945, 36.656788, 43.572021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.094437, 36.421803, 43.596035>,  <35.165257, 36.030159, 43.636055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.094437, 36.421803, 43.596035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676102, -0.194866, -0.710573,
		-0.715221, -0.058160, 0.696474,
		-0.177046, 0.979104, -0.100050,
		35.041325, 36.715534, 43.566021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.459393, 36.019680, 43.628033>,  <35.165257, 36.030159, 43.636055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.459393, 36.019680, 43.628033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571064, 36.381367, 43.498756>,  <34.638069, 36.598377, 43.421192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.571064, 36.381367, 43.498756>,  <34.459393, 36.019680, 43.628033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.571064, 36.381367, 43.498756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760023, 0.002373, -0.649892,
		-0.586875, 0.427071, 0.687886,
		0.279182, 0.904215, -0.323191,
		34.654819, 36.652630, 43.401798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.753571, 36.324097, 43.769264>,  <34.459393, 36.019680, 43.628033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.753571, 36.324097, 43.769264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002914, 36.522846, 43.527756>,  <34.152519, 36.642097, 43.382851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002914, 36.522846, 43.527756>,  <33.753571, 36.324097, 43.769264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002914, 36.522846, 43.527756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716962, 0.055029, -0.694937,
		-0.312071, 0.866076, 0.390543,
		0.623359, 0.496874, -0.603771,
		34.189922, 36.671909, 43.346626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352810, 36.902126, 43.502960>,  <33.753571, 36.324097, 43.769264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352810, 36.902126, 43.502960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657536, 36.853497, 43.248444>,  <33.840370, 36.824318, 43.095734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.657536, 36.853497, 43.248444>,  <33.352810, 36.902126, 43.502960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.657536, 36.853497, 43.248444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620317, 0.146164, -0.770612,
		0.186689, 0.981762, 0.035935,
		0.761810, -0.121573, -0.636291,
		33.886078, 36.817024, 43.057556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190853, 37.366882, 43.068619>,  <33.352810, 36.902126, 43.502960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190853, 37.366882, 43.068619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452293, 37.136387, 42.872356>,  <33.609158, 36.998089, 42.754601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452293, 37.136387, 42.872356>,  <33.190853, 37.366882, 43.068619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452293, 37.136387, 42.872356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541325, 0.097141, -0.835184,
		0.528932, 0.811485, -0.248443,
		0.653605, -0.576243, -0.490657,
		33.648376, 36.963512, 42.725159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307549, 37.623634, 42.431465>,  <33.190853, 37.366882, 43.068619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307549, 37.623634, 42.431465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411392, 37.243233, 42.364311>,  <33.473698, 37.014992, 42.324020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.411392, 37.243233, 42.364311>,  <33.307549, 37.623634, 42.431465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411392, 37.243233, 42.364311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484629, 0.022072, -0.874441,
		0.835306, 0.308378, -0.455156,
		0.259612, -0.951008, -0.167886,
		33.489277, 36.957932, 42.313946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527561, 37.646626, 41.745178>,  <33.307549, 37.623634, 42.431465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527561, 37.646626, 41.745178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443901, 37.273540, 41.862690>,  <33.393707, 37.049690, 41.933197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443901, 37.273540, 41.862690>,  <33.527561, 37.646626, 41.745178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443901, 37.273540, 41.862690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687035, -0.073629, -0.722884,
		0.695873, -0.353025, -0.625407,
		-0.209148, -0.932712, 0.293777,
		33.381157, 36.993729, 41.950825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.541039, 37.288853, 41.140583>,  <33.527561, 37.646626, 41.745178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.541039, 37.288853, 41.140583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349808, 37.046783, 41.395206>,  <33.235069, 36.901543, 41.547981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.349808, 37.046783, 41.395206>,  <33.541039, 37.288853, 41.140583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349808, 37.046783, 41.395206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582960, -0.323466, -0.745337,
		0.656964, -0.727416, -0.198152,
		-0.478074, -0.605174, 0.636560,
		33.206387, 36.865231, 41.586174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448219, 36.742519, 40.693573>,  <33.541039, 37.288853, 41.140583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448219, 36.742519, 40.693573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184757, 36.717712, 40.993526>,  <33.026680, 36.702827, 41.173500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.184757, 36.717712, 40.993526>,  <33.448219, 36.742519, 40.693573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.184757, 36.717712, 40.993526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722556, -0.225982, -0.653334,
		0.209978, -0.972155, 0.104034,
		-0.658652, -0.062015, 0.749888,
		32.987160, 36.699108, 41.218494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031330, 36.141716, 40.505283>,  <33.448219, 36.742519, 40.693573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031330, 36.141716, 40.505283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813938, 36.304474, 40.798965>,  <32.683502, 36.402130, 40.975174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813938, 36.304474, 40.798965>,  <33.031330, 36.141716, 40.505283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813938, 36.304474, 40.798965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814941, -0.046073, -0.577710,
		-0.201243, -0.912310, 0.356640,
		-0.543482, 0.406901, 0.734206,
		32.650894, 36.426544, 41.019226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399231, 35.704597, 40.580780>,  <33.031330, 36.141716, 40.505283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399231, 35.704597, 40.580780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334885, 36.071846, 40.725655>,  <32.296276, 36.292194, 40.812580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.334885, 36.071846, 40.725655>,  <32.399231, 35.704597, 40.580780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334885, 36.071846, 40.725655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912133, 0.001879, -0.409889,
		-0.377008, -0.396300, 0.837145,
		-0.160866, 0.918119, 0.362187,
		32.286625, 36.347282, 40.834312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667765, 35.586464, 40.704632>,  <32.399231, 35.704597, 40.580780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667765, 35.586464, 40.704632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759964, 35.973557, 40.663914>,  <31.815285, 36.205814, 40.639484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.759964, 35.973557, 40.663914>,  <31.667765, 35.586464, 40.704632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759964, 35.973557, 40.663914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912164, 0.178458, -0.368930,
		-0.338860, 0.177888, 0.923867,
		0.230500, 0.967734, -0.101791,
		31.829113, 36.263878, 40.633377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899992, 35.172253, 41.353321>,  <31.667765, 35.586464, 40.704632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899992, 35.172253, 41.353321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702988, 34.945232, 41.617233>,  <31.584785, 34.809021, 41.775581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.702988, 34.945232, 41.617233>,  <31.899992, 35.172253, 41.353321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.702988, 34.945232, 41.617233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780691, 0.046946, 0.623151,
		-0.384646, 0.821997, 0.419962,
		-0.492513, -0.567553, 0.659784,
		31.555233, 34.774967, 41.815170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.060711, 34.751808, 42.055164>,  <31.899992, 35.172253, 41.353321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.060711, 34.751808, 42.055164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344906, 34.483055, 41.971462>,  <32.515423, 34.321804, 41.921242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344906, 34.483055, 41.971462>,  <32.060711, 34.751808, 42.055164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344906, 34.483055, 41.971462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160745, -0.134548, 0.977782,
		-0.685109, -0.728335, 0.012407,
		0.710483, -0.671882, -0.209256,
		32.558052, 34.281490, 41.908684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035278, 34.302208, 42.684540>,  <32.060711, 34.751808, 42.055164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035278, 34.302208, 42.684540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377266, 34.214161, 42.496677>,  <32.582458, 34.161331, 42.383961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.377266, 34.214161, 42.496677>,  <32.035278, 34.302208, 42.684540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377266, 34.214161, 42.496677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350582, -0.422078, 0.836028,
		-0.382253, -0.879431, -0.283696,
		0.854971, -0.220116, -0.469654,
		32.633759, 34.148125, 42.355782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.102688, 33.559208, 42.759415>,  <32.035278, 34.302208, 42.684540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.102688, 33.559208, 42.759415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455879, 33.744350, 42.728146>,  <32.667793, 33.855438, 42.709385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455879, 33.744350, 42.728146>,  <32.102688, 33.559208, 42.759415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455879, 33.744350, 42.728146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348091, -0.533895, 0.770577,
		0.314933, -0.707613, -0.632535,
		0.882977, 0.462860, -0.078173,
		32.720772, 33.883209, 42.704693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560329, 32.996658, 42.809952>,  <32.102688, 33.559208, 42.759415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560329, 32.996658, 42.809952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773708, 33.326511, 42.885223>,  <32.901737, 33.524422, 42.930386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.773708, 33.326511, 42.885223>,  <32.560329, 32.996658, 42.809952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773708, 33.326511, 42.885223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547267, -0.506139, 0.666575,
		0.644926, -0.252598, -0.721294,
		0.533450, 0.824632, 0.188184,
		32.933743, 33.573902, 42.941677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.201969, 32.697758, 42.879833>,  <32.560329, 32.996658, 42.809952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.201969, 32.697758, 42.879833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209690, 33.060795, 43.047596>,  <33.214321, 33.278618, 43.148254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.209690, 33.060795, 43.047596>,  <33.201969, 32.697758, 42.879833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.209690, 33.060795, 43.047596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467072, -0.379084, 0.798836,
		0.884009, 0.180475, -0.431228,
		0.019301, 0.907593, 0.419408,
		33.215481, 33.333073, 43.173420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808510, 32.682121, 43.354702>,  <33.201969, 32.697758, 42.879833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808510, 32.682121, 43.354702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643436, 33.030239, 43.462234>,  <33.544392, 33.239109, 43.526752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643436, 33.030239, 43.462234>,  <33.808510, 32.682121, 43.354702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643436, 33.030239, 43.462234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437058, -0.069744, 0.896725,
		0.799168, 0.487562, -0.351588,
		-0.412688, 0.870298, 0.268830,
		33.519630, 33.291328, 43.542885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354591, 33.270294, 43.639832>,  <33.808510, 32.682121, 43.354702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354591, 33.270294, 43.639832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996925, 33.372475, 43.786915>,  <33.782326, 33.433784, 43.875164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.996925, 33.372475, 43.786915>,  <34.354591, 33.270294, 43.639832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.996925, 33.372475, 43.786915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411771, 0.146708, 0.899401,
		0.175812, 0.955625, -0.236371,
		-0.894167, 0.255456, 0.367706,
		33.728676, 33.449112, 43.897228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.477074, 33.983040, 44.060989>,  <34.354591, 33.270294, 43.639832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.477074, 33.983040, 44.060989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136795, 33.808289, 44.177914>,  <33.932629, 33.703438, 44.248070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.136795, 33.808289, 44.177914>,  <34.477074, 33.983040, 44.060989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.136795, 33.808289, 44.177914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273564, 0.106898, 0.955895,
		-0.448856, 0.893147, 0.028575,
		-0.850701, -0.436876, 0.292315,
		33.881584, 33.677227, 44.265610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146839, 34.513916, 44.381500>,  <34.477074, 33.983040, 44.060989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146839, 34.513916, 44.381500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002407, 34.166958, 44.518471>,  <33.915749, 33.958782, 44.600651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.002407, 34.166958, 44.518471>,  <34.146839, 34.513916, 44.381500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.002407, 34.166958, 44.518471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347163, 0.215769, 0.912645,
		-0.865505, 0.448414, 0.223217,
		-0.361079, -0.867392, 0.342422,
		33.894085, 33.906738, 44.621197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107586, 34.561211, 45.134232>,  <34.146839, 34.513916, 44.381500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107586, 34.561211, 45.134232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058952, 34.165512, 45.101715>,  <34.029770, 33.928093, 45.082207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058952, 34.165512, 45.101715>,  <34.107586, 34.561211, 45.134232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058952, 34.165512, 45.101715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269123, -0.111685, 0.956608,
		-0.955400, 0.094435, 0.279809,
		-0.121587, -0.989247, -0.081289,
		34.022476, 33.868736, 45.077328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817997, 34.313625, 45.750538>,  <34.107586, 34.561211, 45.134232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817997, 34.313625, 45.750538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993267, 33.985062, 45.604500>,  <34.098427, 33.787922, 45.516876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993267, 33.985062, 45.604500>,  <33.817997, 34.313625, 45.750538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993267, 33.985062, 45.604500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332341, -0.229342, 0.914851,
		-0.835197, -0.522199, 0.172496,
		0.438173, -0.821408, -0.365093,
		34.124718, 33.738640, 45.494972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.567772, 33.714561, 46.152248>,  <33.817997, 34.313625, 45.750538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.567772, 33.714561, 46.152248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915623, 33.612656, 45.983093>,  <34.124332, 33.551514, 45.881599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915623, 33.612656, 45.983093>,  <33.567772, 33.714561, 46.152248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915623, 33.612656, 45.983093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325255, -0.348769, 0.878959,
		-0.371427, -0.901915, -0.220433,
		0.869627, -0.254772, -0.422895,
		34.176514, 33.536228, 45.856224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.643375, 33.073532, 46.403538>,  <33.567772, 33.714561, 46.152248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.643375, 33.073532, 46.403538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006542, 33.214432, 46.312672>,  <34.224442, 33.298973, 46.258152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.006542, 33.214432, 46.312672>,  <33.643375, 33.073532, 46.403538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.006542, 33.214432, 46.312672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341675, -0.308076, 0.887889,
		0.242774, -0.883748, -0.400062,
		0.907920, 0.352248, -0.227162,
		34.278919, 33.320107, 46.244522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.141975, 32.596355, 46.611088>,  <33.643375, 33.073532, 46.403538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.141975, 32.596355, 46.611088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365177, 32.928230, 46.604649>,  <34.499100, 33.127354, 46.600784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365177, 32.928230, 46.604649>,  <34.141975, 32.596355, 46.611088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365177, 32.928230, 46.604649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417409, -0.263860, 0.869568,
		0.717218, -0.491940, -0.493552,
		0.558003, 0.829683, -0.016095,
		34.532578, 33.177135, 46.599819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759636, 32.341171, 46.965122>,  <34.141975, 32.596355, 46.611088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759636, 32.341171, 46.965122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820309, 32.735512, 46.936600>,  <34.856712, 32.972118, 46.919487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.820309, 32.735512, 46.936600>,  <34.759636, 32.341171, 46.965122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.820309, 32.735512, 46.936600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484068, -0.011193, 0.874959,
		0.861784, -0.167232, -0.478918,
		0.151682, 0.985854, -0.071306,
		34.865814, 33.031269, 46.915207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325920, 32.453861, 47.240673>,  <34.759636, 32.341171, 46.965122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325920, 32.453861, 47.240673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179115, 32.825306, 47.262535>,  <35.091034, 33.048172, 47.275654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.179115, 32.825306, 47.262535>,  <35.325920, 32.453861, 47.240673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.179115, 32.825306, 47.262535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338123, 0.078438, 0.937827,
		0.866590, 0.362670, -0.342772,
		-0.367008, 0.928611, 0.054654,
		35.069012, 33.103889, 47.278931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753117, 32.744141, 47.661774>,  <35.325920, 32.453861, 47.240673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753117, 32.744141, 47.661774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488686, 33.043972, 47.648418>,  <35.330029, 33.223869, 47.640404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488686, 33.043972, 47.648418>,  <35.753117, 32.744141, 47.661774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488686, 33.043972, 47.648418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404859, 0.393817, 0.825226,
		0.631720, 0.532017, -0.563815,
		-0.661074, 0.749577, -0.033390,
		35.290363, 33.268845, 47.638401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106503, 33.469761, 47.652607>,  <35.753117, 32.744141, 47.661774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106503, 33.469761, 47.652607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742252, 33.488602, 47.816822>,  <35.523701, 33.499905, 47.915352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.742252, 33.488602, 47.816822>,  <36.106503, 33.469761, 47.652607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742252, 33.488602, 47.816822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387400, 0.443045, 0.808475,
		-0.143810, 0.895261, -0.421694,
		-0.910626, 0.047097, 0.410539,
		35.469063, 33.502731, 47.939983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.018833, 34.097588, 48.023308>,  <36.106503, 33.469761, 47.652607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.018833, 34.097588, 48.023308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733479, 33.862724, 48.176319>,  <35.562267, 33.721806, 48.268124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733479, 33.862724, 48.176319>,  <36.018833, 34.097588, 48.023308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733479, 33.862724, 48.176319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340477, 0.186695, 0.921532,
		-0.612501, 0.787648, 0.066729,
		-0.713385, -0.587158, 0.382527,
		35.519463, 33.686577, 48.291077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662392, 34.520344, 48.660267>,  <36.018833, 34.097588, 48.023308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662392, 34.520344, 48.660267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622616, 34.123913, 48.695751>,  <35.598751, 33.886055, 48.717041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.622616, 34.123913, 48.695751>,  <35.662392, 34.520344, 48.660267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622616, 34.123913, 48.695751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324936, 0.051925, 0.944309,
		-0.940494, 0.122727, 0.316874,
		-0.099439, -0.991081, 0.088714,
		35.592785, 33.826588, 48.722366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.297653, 34.434799, 49.284977>,  <35.662392, 34.520344, 48.660267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.297653, 34.434799, 49.284977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453941, 34.074348, 49.209824>,  <35.547714, 33.858078, 49.164730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.453941, 34.074348, 49.209824>,  <35.297653, 34.434799, 49.284977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453941, 34.074348, 49.209824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277113, -0.079493, 0.957543,
		-0.877807, -0.426198, 0.218655,
		0.390722, -0.901131, -0.187884,
		35.571159, 33.804008, 49.153458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096443, 34.036736, 49.872322>,  <35.297653, 34.434799, 49.284977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096443, 34.036736, 49.872322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387398, 33.817913, 49.706600>,  <35.561970, 33.686619, 49.607166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.387398, 33.817913, 49.706600>,  <35.096443, 34.036736, 49.872322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387398, 33.817913, 49.706600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347185, -0.227396, 0.909810,
		-0.591926, -0.805619, 0.024525,
		0.727383, -0.547055, -0.414300,
		35.605614, 33.653797, 49.582310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.082031, 33.317722, 50.144970>,  <35.096443, 34.036736, 49.872322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.082031, 33.317722, 50.144970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448402, 33.401676, 50.008137>,  <35.668224, 33.452049, 49.926037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.448402, 33.401676, 50.008137>,  <35.082031, 33.317722, 50.144970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.448402, 33.401676, 50.008137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398617, -0.376690, 0.836187,
		0.046640, -0.902250, -0.428684,
		0.915931, 0.209880, -0.342083,
		35.723183, 33.464642, 49.905510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566654, 32.751617, 50.097214>,  <35.082031, 33.317722, 50.144970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566654, 32.751617, 50.097214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855656, 33.027828, 50.110840>,  <36.029057, 33.193554, 50.119015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.855656, 33.027828, 50.110840>,  <35.566654, 32.751617, 50.097214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855656, 33.027828, 50.110840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324481, -0.382196, 0.865239,
		0.610489, -0.614086, -0.500201,
		0.722506, 0.690525, 0.034067,
		36.072407, 33.234985, 50.121059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.260086, 32.505802, 50.215260>,  <35.566654, 32.751617, 50.097214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.260086, 32.505802, 50.215260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271496, 32.882362, 50.349693>,  <36.278343, 33.108299, 50.430351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.271496, 32.882362, 50.349693>,  <36.260086, 32.505802, 50.215260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.271496, 32.882362, 50.349693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355200, -0.323819, 0.876912,
		0.934355, 0.094362, -0.343623,
		0.028525, 0.941401, 0.336080,
		36.280052, 33.164783, 50.450516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.718418, 32.399895, 50.759594>,  <36.260086, 32.505802, 50.215260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.718418, 32.399895, 50.759594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629658, 32.787357, 50.804256>,  <36.576401, 33.019836, 50.831055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629658, 32.787357, 50.804256>,  <36.718418, 32.399895, 50.759594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629658, 32.787357, 50.804256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459937, 0.003004, 0.887947,
		0.859779, 0.248390, -0.446187,
		-0.221897, 0.968656, 0.111660,
		36.563087, 33.077953, 50.837753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278381, 32.341640, 50.295261>,  <36.718418, 32.399895, 50.759594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278381, 32.341640, 50.295261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566685, 32.083260, 50.194653>,  <37.739666, 31.928232, 50.134289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.566685, 32.083260, 50.194653>,  <37.278381, 32.341640, 50.295261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.566685, 32.083260, 50.194653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392408, -0.081093, -0.916209,
		0.571427, 0.759061, -0.311923,
		0.720754, -0.645949, -0.251523,
		37.782909, 31.889475, 50.119194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524708, 32.619694, 49.805573>,  <37.278381, 32.341640, 50.295261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524708, 32.619694, 49.805573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641235, 32.240753, 49.752422>,  <37.711151, 32.013390, 49.720531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.641235, 32.240753, 49.752422>,  <37.524708, 32.619694, 49.805573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.641235, 32.240753, 49.752422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421596, -0.002459, -0.906780,
		0.858714, 0.320182, -0.400117,
		0.291319, -0.947353, -0.132875,
		37.728630, 31.956547, 49.712559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.836586, 32.558647, 49.130066>,  <37.524708, 32.619694, 49.805573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.836586, 32.558647, 49.130066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755188, 32.175049, 49.208969>,  <37.706348, 31.944889, 49.256313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755188, 32.175049, 49.208969>,  <37.836586, 32.558647, 49.130066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755188, 32.175049, 49.208969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154370, -0.167529, -0.973706,
		0.966829, -0.228597, -0.113949,
		-0.203497, -0.958998, 0.197260,
		37.694138, 31.887350, 49.268147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210350, 32.093723, 48.596706>,  <37.836586, 32.558647, 49.130066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210350, 32.093723, 48.596706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915436, 31.868824, 48.746521>,  <37.738487, 31.733883, 48.836411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.915436, 31.868824, 48.746521>,  <38.210350, 32.093723, 48.596706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.915436, 31.868824, 48.746521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235854, -0.305296, -0.922587,
		0.633071, -0.768549, 0.092481,
		-0.737288, -0.562251, 0.374540,
		37.694248, 31.700150, 48.858883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.242928, 31.417652, 48.219875>,  <38.210350, 32.093723, 48.596706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.242928, 31.417652, 48.219875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877060, 31.453684, 48.377487>,  <37.657539, 31.475304, 48.472054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.877060, 31.453684, 48.377487>,  <38.242928, 31.417652, 48.219875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.877060, 31.453684, 48.377487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395716, -0.398188, -0.827560,
		0.082351, -0.912870, 0.399858,
		-0.914673, 0.090080, 0.394029,
		37.602657, 31.480709, 48.495697>
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
