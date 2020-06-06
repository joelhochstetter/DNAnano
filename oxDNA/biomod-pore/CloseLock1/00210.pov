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
	<24.078529, 34.624775, 34.429905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112831, 34.840828, 34.764782>,  <24.133411, 34.970459, 34.965710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.112831, 34.840828, 34.764782>,  <24.078529, 34.624775, 34.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.112831, 34.840828, 34.764782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380594, 0.758807, -0.528545,
		-0.920758, 0.363956, -0.140503,
		0.085753, 0.540137, 0.837197,
		24.138557, 35.002869, 35.015942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.813459, 35.284832, 34.388538>,  <24.078529, 34.624775, 34.429905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.813459, 35.284832, 34.388538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115139, 35.291252, 34.651119>,  <24.296146, 35.295105, 34.808666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.115139, 35.291252, 34.651119>,  <23.813459, 35.284832, 34.388538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.115139, 35.291252, 34.651119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294839, 0.884982, -0.360385,
		-0.586734, 0.465349, 0.662717,
		0.754197, 0.016055, 0.656452,
		24.341398, 35.296070, 34.848053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.798552, 35.879143, 34.807480>,  <23.813459, 35.284832, 34.388538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.798552, 35.879143, 34.807480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172132, 35.757675, 34.732094>,  <24.396282, 35.684795, 34.686863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.172132, 35.757675, 34.732094>,  <23.798552, 35.879143, 34.807480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.172132, 35.757675, 34.732094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267333, 0.943558, -0.195528,
		0.237201, 0.132231, 0.962419,
		0.933953, -0.303666, -0.188463,
		24.452318, 35.666576, 34.675556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.149080, 36.346050, 35.183762>,  <23.798552, 35.879143, 34.807480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.149080, 36.346050, 35.183762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392952, 36.215111, 34.895004>,  <24.539276, 36.136547, 34.721748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.392952, 36.215111, 34.895004>,  <24.149080, 36.346050, 35.183762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.392952, 36.215111, 34.895004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278690, 0.941118, -0.191388,
		0.742038, -0.084499, 0.665011,
		0.609681, -0.327349, -0.721894,
		24.575857, 36.116905, 34.678436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.838570, 36.561256, 35.411587>,  <24.149080, 36.346050, 35.183762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.838570, 36.561256, 35.411587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823715, 36.509384, 35.015244>,  <24.814802, 36.478260, 34.777435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.823715, 36.509384, 35.015244>,  <24.838570, 36.561256, 35.411587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.823715, 36.509384, 35.015244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316699, 0.938906, -0.134750,
		0.947799, -0.318809, 0.006200,
		-0.037139, -0.129679, -0.990860,
		24.812574, 36.470482, 34.717987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.546297, 36.755844, 35.222534>,  <24.838570, 36.561256, 35.411587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.546297, 36.755844, 35.222534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251270, 36.810249, 34.957958>,  <25.074255, 36.842892, 34.799213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.251270, 36.810249, 34.957958>,  <25.546297, 36.755844, 35.222534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.251270, 36.810249, 34.957958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193797, 0.980936, -0.014388,
		0.646869, -0.138796, -0.749864,
		-0.737566, 0.136014, -0.661435,
		25.030001, 36.851055, 34.759529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.868961, 37.206074, 34.785618>,  <25.546297, 36.755844, 35.222534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.868961, 37.206074, 34.785618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470484, 37.234833, 34.765896>,  <25.231398, 37.252087, 34.754063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.470484, 37.234833, 34.765896>,  <25.868961, 37.206074, 34.785618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.470484, 37.234833, 34.765896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070604, 0.997125, 0.027500,
		0.051144, 0.023914, -0.998405,
		-0.996192, 0.071898, -0.049309,
		25.171625, 37.256401, 34.751102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595829, 37.255791, 34.879333>,  <25.868961, 37.206074, 34.785618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595829, 37.255791, 34.879333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938957, 37.414383, 34.748520>,  <27.144835, 37.509537, 34.670033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.938957, 37.414383, 34.748520>,  <26.595829, 37.255791, 34.879333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938957, 37.414383, 34.748520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513877, 0.672563, -0.532531,
		0.008811, 0.624869, 0.780680,
		0.857819, 0.396481, -0.327032,
		27.196302, 37.533329, 34.650410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387852, 37.925472, 34.836174>,  <26.595829, 37.255791, 34.879333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387852, 37.925472, 34.836174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724865, 37.900082, 34.622219>,  <26.927073, 37.884846, 34.493847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.724865, 37.900082, 34.622219>,  <26.387852, 37.925472, 34.836174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.724865, 37.900082, 34.622219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368489, 0.656374, -0.658323,
		0.392879, 0.751760, 0.529625,
		0.842533, -0.063480, -0.534890,
		26.977625, 37.881039, 34.461750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453793, 38.567898, 34.575035>,  <26.387852, 37.925472, 34.836174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453793, 38.567898, 34.575035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708302, 38.377155, 34.332458>,  <26.861008, 38.262711, 34.186913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.708302, 38.377155, 34.332458>,  <26.453793, 38.567898, 34.575035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.708302, 38.377155, 34.332458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256767, 0.610370, -0.749346,
		0.727479, 0.632503, 0.265923,
		0.636274, -0.476853, -0.606437,
		26.899183, 38.234100, 34.150528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006554, 39.029255, 34.252048>,  <26.453793, 38.567898, 34.575035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006554, 39.029255, 34.252048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007607, 38.720421, 33.997841>,  <27.008238, 38.535122, 33.845318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.007607, 38.720421, 33.997841>,  <27.006554, 39.029255, 34.252048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.007607, 38.720421, 33.997841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147786, 0.628239, -0.763855,
		0.989016, 0.095931, -0.112450,
		0.002632, -0.772083, -0.635516,
		27.008396, 38.488796, 33.807186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658197, 39.111805, 33.833889>,  <27.006554, 39.029255, 34.252048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658197, 39.111805, 33.833889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384836, 38.882523, 33.653053>,  <27.220819, 38.744953, 33.544552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.384836, 38.882523, 33.653053>,  <27.658197, 39.111805, 33.833889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.384836, 38.882523, 33.653053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098205, 0.541460, -0.834971,
		0.723405, -0.615021, -0.313744,
		-0.683404, -0.573211, -0.452093,
		27.179815, 38.710560, 33.517426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905931, 38.994209, 33.150955>,  <27.658197, 39.111805, 33.833889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905931, 38.994209, 33.150955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515724, 38.915913, 33.110847>,  <27.281601, 38.868935, 33.086781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.515724, 38.915913, 33.110847>,  <27.905931, 38.994209, 33.150955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.515724, 38.915913, 33.110847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016146, 0.390958, -0.920267,
		0.219333, -0.899354, -0.378225,
		-0.975517, -0.195738, -0.100271,
		27.223070, 38.857189, 33.080765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799677, 38.789936, 32.432545>,  <27.905931, 38.994209, 33.150955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799677, 38.789936, 32.432545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435713, 38.870949, 32.577347>,  <27.217335, 38.919556, 32.664227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.435713, 38.870949, 32.577347>,  <27.799677, 38.789936, 32.432545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.435713, 38.870949, 32.577347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204391, 0.540501, -0.816139,
		-0.360957, -0.816602, -0.450412,
		-0.909909, 0.202531, 0.362004,
		27.162741, 38.931709, 32.685947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.306826, 38.653000, 31.953199>,  <27.799677, 38.789936, 32.432545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.306826, 38.653000, 31.953199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084852, 38.891811, 32.184925>,  <26.951668, 39.035099, 32.323959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084852, 38.891811, 32.184925>,  <27.306826, 38.653000, 31.953199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084852, 38.891811, 32.184925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285381, 0.517497, -0.806694,
		-0.781413, -0.612987, -0.116796,
		-0.554934, 0.597030, 0.579314,
		26.918371, 39.070919, 32.358719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.633554, 38.811867, 31.499329>,  <27.306826, 38.653000, 31.953199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.633554, 38.811867, 31.499329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678843, 39.067181, 31.803900>,  <26.706015, 39.220371, 31.986643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.678843, 39.067181, 31.803900>,  <26.633554, 38.811867, 31.499329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678843, 39.067181, 31.803900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419667, 0.725359, -0.545650,
		-0.900589, -0.257768, 0.349992,
		0.113218, 0.638286, 0.761428,
		26.712809, 39.258667, 32.032330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.966770, 39.038639, 31.684889>,  <26.633554, 38.811867, 31.499329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.966770, 39.038639, 31.684889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207542, 39.331936, 31.811399>,  <26.352005, 39.507915, 31.887306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.207542, 39.331936, 31.811399>,  <25.966770, 39.038639, 31.684889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.207542, 39.331936, 31.811399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467716, 0.644744, -0.604605,
		-0.647242, 0.216002, 0.731041,
		0.601930, 0.733245, 0.316277,
		26.388121, 39.551910, 31.906282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545967, 39.559208, 31.771347>,  <25.966770, 39.038639, 31.684889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545967, 39.559208, 31.771347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903389, 39.733753, 31.729126>,  <26.117842, 39.838482, 31.703794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.903389, 39.733753, 31.729126>,  <25.545967, 39.559208, 31.771347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.903389, 39.733753, 31.729126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407647, 0.690099, -0.597986,
		-0.188101, 0.577362, 0.794526,
		0.893556, 0.436368, -0.105552,
		26.171455, 39.864662, 31.697460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.386349, 40.224354, 31.762304>,  <25.545967, 39.559208, 31.771347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.386349, 40.224354, 31.762304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761105, 40.228397, 31.622511>,  <25.985958, 40.230824, 31.538635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.761105, 40.228397, 31.622511>,  <25.386349, 40.224354, 31.762304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.761105, 40.228397, 31.622511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188221, 0.856962, -0.479781,
		0.294641, 0.515281, 0.804781,
		0.936888, 0.010113, -0.349483,
		26.042171, 40.231430, 31.517666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.648932, 40.746067, 32.024544>,  <25.386349, 40.224354, 31.762304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.648932, 40.746067, 32.024544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894749, 40.660892, 31.720703>,  <26.042240, 40.609787, 31.538399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.894749, 40.660892, 31.720703>,  <25.648932, 40.746067, 32.024544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.894749, 40.660892, 31.720703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181929, 0.898675, -0.399105,
		0.767618, 0.383461, 0.513537,
		0.614544, -0.212933, -0.759602,
		26.079111, 40.597012, 31.492823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.051180, 41.322006, 31.910849>,  <25.648932, 40.746067, 32.024544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.051180, 41.322006, 31.910849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094147, 41.128262, 31.563549>,  <26.119926, 41.012016, 31.355169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.094147, 41.128262, 31.563549>,  <26.051180, 41.322006, 31.910849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.094147, 41.128262, 31.563549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035618, 0.870868, -0.490224,
		0.993576, 0.083584, 0.076294,
		0.107417, -0.484358, -0.868251,
		26.126371, 40.982956, 31.303074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450468, 41.704216, 31.586710>,  <26.051180, 41.322006, 31.910849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450468, 41.704216, 31.586710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226933, 41.492989, 31.330948>,  <26.092812, 41.366253, 31.177490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.226933, 41.492989, 31.330948>,  <26.450468, 41.704216, 31.586710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.226933, 41.492989, 31.330948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117627, 0.813721, -0.569230,
		0.820886, -0.242902, -0.516861,
		-0.558847, -0.528069, -0.639400,
		26.059280, 41.334568, 31.139126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.588263, 42.029964, 30.933125>,  <26.450468, 41.704216, 31.586710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.588263, 42.029964, 30.933125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249266, 41.824261, 30.880518>,  <26.045868, 41.700840, 30.848955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.249266, 41.824261, 30.880518>,  <26.588263, 42.029964, 30.933125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249266, 41.824261, 30.880518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333270, 0.708354, -0.622226,
		0.413144, -0.483502, -0.771711,
		-0.847493, -0.514257, -0.131515,
		25.995018, 41.669983, 30.841063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.541601, 42.201294, 30.352108>,  <26.588263, 42.029964, 30.933125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.541601, 42.201294, 30.352108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184420, 42.041954, 30.435966>,  <25.970110, 41.946350, 30.486280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.184420, 42.041954, 30.435966>,  <26.541601, 42.201294, 30.352108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184420, 42.041954, 30.435966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407973, 0.519342, -0.750894,
		0.190241, -0.756044, -0.626264,
		-0.892954, -0.398350, 0.209646,
		25.916534, 41.922447, 30.498859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182165, 41.924374, 29.712925>,  <26.541601, 42.201294, 30.352108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182165, 41.924374, 29.712925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926508, 42.030087, 30.001827>,  <25.773113, 42.093513, 30.175169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.926508, 42.030087, 30.001827>,  <26.182165, 41.924374, 29.712925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.926508, 42.030087, 30.001827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492169, 0.581088, -0.648156,
		-0.590988, -0.769736, -0.241328,
		-0.639142, 0.264278, 0.722256,
		25.734766, 42.109371, 30.218504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920031, 41.775116, 29.462881>,  <26.182165, 41.924374, 29.712925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920031, 41.775116, 29.462881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146996, 41.864677, 29.145918>,  <27.283175, 41.918415, 28.955740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146996, 41.864677, 29.145918>,  <26.920031, 41.775116, 29.462881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146996, 41.864677, 29.145918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570092, 0.801208, -0.181827,
		0.594172, 0.554916, 0.582261,
		0.567411, 0.223906, -0.792408,
		27.317219, 41.931850, 28.908195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.252346, 42.396076, 29.578005>,  <26.920031, 41.775116, 29.462881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.252346, 42.396076, 29.578005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167274, 42.302872, 29.198431>,  <27.116232, 42.246948, 28.970688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167274, 42.302872, 29.198431>,  <27.252346, 42.396076, 29.578005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167274, 42.302872, 29.198431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560499, 0.824581, -0.076854,
		0.800379, 0.515530, -0.305976,
		-0.212681, -0.233011, -0.948932,
		27.103470, 42.232967, 28.913752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.345509, 42.952114, 29.096392>,  <27.252346, 42.396076, 29.578005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.345509, 42.952114, 29.096392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054903, 42.697647, 28.992496>,  <26.880539, 42.544968, 28.930159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.054903, 42.697647, 28.992496>,  <27.345509, 42.952114, 29.096392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.054903, 42.697647, 28.992496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663739, 0.747525, 0.025650,
		0.177844, 0.191034, -0.965338,
		-0.726514, -0.636171, -0.259740,
		26.836948, 42.506798, 28.914574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.983877, 43.168484, 28.581743>,  <27.345509, 42.952114, 29.096392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.983877, 43.168484, 28.581743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720537, 42.943218, 28.781511>,  <26.562532, 42.808060, 28.901371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.720537, 42.943218, 28.781511>,  <26.983877, 43.168484, 28.581743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.720537, 42.943218, 28.781511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675682, 0.734547, -0.062405,
		-0.331703, -0.378532, -0.864110,
		-0.658352, -0.563164, 0.499419,
		26.523031, 42.774269, 28.931337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.287146, 43.070335, 28.267517>,  <26.983877, 43.168484, 28.581743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.287146, 43.070335, 28.267517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227684, 43.078369, 28.662991>,  <26.192007, 43.083191, 28.900274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.227684, 43.078369, 28.662991>,  <26.287146, 43.070335, 28.267517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.227684, 43.078369, 28.662991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542552, 0.834224, -0.098524,
		-0.826764, -0.551060, -0.113114,
		-0.148655, 0.020086, 0.988685,
		26.183086, 43.084396, 28.959597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.581070, 43.170380, 28.352009>,  <26.287146, 43.070335, 28.267517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.581070, 43.170380, 28.352009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768543, 43.292591, 28.683548>,  <25.881027, 43.365917, 28.882471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.768543, 43.292591, 28.683548>,  <25.581070, 43.170380, 28.352009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.768543, 43.292591, 28.683548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386971, 0.914475, -0.118276,
		-0.794097, -0.265306, 0.546830,
		0.468683, 0.305529, 0.828847,
		25.909147, 43.384251, 28.932201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.217979, 43.513691, 28.905737>,  <25.581070, 43.170380, 28.352009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.217979, 43.513691, 28.905737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593601, 43.649483, 28.927366>,  <25.818975, 43.730957, 28.940344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.593601, 43.649483, 28.927366>,  <25.217979, 43.513691, 28.905737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.593601, 43.649483, 28.927366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327609, 0.931441, -0.158399,
		-0.104141, 0.131030, 0.985894,
		0.939057, 0.339483, 0.054075,
		25.875319, 43.751328, 28.943588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266499, 44.164619, 29.336119>,  <25.217979, 43.513691, 28.905737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266499, 44.164619, 29.336119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539450, 44.118763, 29.047337>,  <25.703220, 44.091251, 28.874067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.539450, 44.118763, 29.047337>,  <25.266499, 44.164619, 29.336119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.539450, 44.118763, 29.047337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215692, 0.912079, -0.348697,
		0.698452, 0.393663, 0.597657,
		0.682380, -0.114638, -0.721953,
		25.744164, 44.084370, 28.830751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.501143, 44.811932, 29.369934>,  <25.266499, 44.164619, 29.336119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.501143, 44.811932, 29.369934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563801, 44.669907, 29.001286>,  <25.601397, 44.584690, 28.780096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.563801, 44.669907, 29.001286>,  <25.501143, 44.811932, 29.369934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.563801, 44.669907, 29.001286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282451, 0.878066, -0.386294,
		0.946405, 0.320825, 0.037257,
		0.156647, -0.355067, -0.921623,
		25.610794, 44.563385, 28.724798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.238348, 44.985466, 29.525375>,  <25.501143, 44.811932, 29.369934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.238348, 44.985466, 29.525375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616390, 45.010262, 29.397039>,  <26.843216, 45.025139, 29.320038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.616390, 45.010262, 29.397039>,  <26.238348, 44.985466, 29.525375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616390, 45.010262, 29.397039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296735, -0.573999, 0.763200,
		-0.136849, -0.816507, -0.560883,
		0.945104, 0.061991, -0.320837,
		26.899921, 45.028858, 29.300789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.617273, 44.351898, 29.409960>,  <26.238348, 44.985466, 29.525375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.617273, 44.351898, 29.409960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876186, 44.632137, 29.530081>,  <27.031534, 44.800282, 29.602154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.876186, 44.632137, 29.530081>,  <26.617273, 44.351898, 29.409960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876186, 44.632137, 29.530081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261572, -0.574205, 0.775802,
		0.715964, -0.423612, -0.554931,
		0.647284, 0.700601, 0.300305,
		27.070372, 44.842316, 29.620173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.211021, 44.022930, 29.493429>,  <26.617273, 44.351898, 29.409960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.211021, 44.022930, 29.493429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233664, 44.354664, 29.715778>,  <27.247250, 44.553703, 29.849188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.233664, 44.354664, 29.715778>,  <27.211021, 44.022930, 29.493429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.233664, 44.354664, 29.715778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052787, -0.558472, 0.827842,
		0.997000, -0.017518, -0.075392,
		0.056606, 0.829338, 0.555872,
		27.250645, 44.603466, 29.882540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.804102, 43.943020, 29.874439>,  <27.211021, 44.022930, 29.493429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.804102, 43.943020, 29.874439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609884, 44.233627, 30.068932>,  <27.493353, 44.407993, 30.185627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.609884, 44.233627, 30.068932>,  <27.804102, 43.943020, 29.874439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.609884, 44.233627, 30.068932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267927, -0.405757, 0.873828,
		0.832143, 0.554556, 0.002359,
		-0.485544, 0.726518, 0.486229,
		27.464220, 44.451584, 30.214800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.304008, 44.077717, 30.413063>,  <27.804102, 43.943020, 29.874439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.304008, 44.077717, 30.413063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967810, 44.250462, 30.543940>,  <27.766090, 44.354111, 30.622465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.967810, 44.250462, 30.543940>,  <28.304008, 44.077717, 30.413063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.967810, 44.250462, 30.543940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095135, -0.476868, 0.873811,
		0.533397, 0.765564, 0.359721,
		-0.840498, 0.431866, 0.327192,
		27.715660, 44.380020, 30.642097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478930, 44.321476, 31.061279>,  <28.304008, 44.077717, 30.413063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478930, 44.321476, 31.061279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083881, 44.266224, 31.031534>,  <27.846853, 44.233074, 31.013687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.083881, 44.266224, 31.031534>,  <28.478930, 44.321476, 31.061279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.083881, 44.266224, 31.031534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025163, -0.607370, 0.794020,
		-0.154841, 0.782318, 0.603326,
		-0.987619, -0.138128, -0.074360,
		27.787596, 44.224785, 31.009226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157499, 44.548428, 31.717434>,  <28.478930, 44.321476, 31.061279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157499, 44.548428, 31.717434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878618, 44.300499, 31.573360>,  <27.711290, 44.151741, 31.486916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.878618, 44.300499, 31.573360>,  <28.157499, 44.548428, 31.717434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.878618, 44.300499, 31.573360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031519, -0.528456, 0.848375,
		-0.716182, 0.580136, 0.387977,
		-0.697201, -0.619820, -0.360185,
		27.669458, 44.114552, 31.465305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.781815, 44.261772, 32.352573>,  <28.157499, 44.548428, 31.717434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.781815, 44.261772, 32.352573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737350, 44.011612, 32.043636>,  <27.710672, 43.861515, 31.858273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.737350, 44.011612, 32.043636>,  <27.781815, 44.261772, 32.352573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737350, 44.011612, 32.043636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131996, -0.779570, 0.612248,
		-0.984998, -0.033889, 0.169208,
		-0.111161, -0.625398, -0.772347,
		27.704002, 43.823994, 31.811932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.445204, 43.669785, 32.590359>,  <27.781815, 44.261772, 32.352573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.445204, 43.669785, 32.590359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591692, 43.490826, 32.263992>,  <27.679585, 43.383450, 32.068172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.591692, 43.490826, 32.263992>,  <27.445204, 43.669785, 32.590359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.591692, 43.490826, 32.263992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316738, -0.764540, 0.561387,
		-0.874963, -0.464024, -0.138284,
		0.366221, -0.447393, -0.815918,
		27.701557, 43.356609, 32.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279655, 43.006542, 32.543293>,  <27.445204, 43.669785, 32.590359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279655, 43.006542, 32.543293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600760, 43.008598, 32.304783>,  <27.793423, 43.009830, 32.161674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.600760, 43.008598, 32.304783>,  <27.279655, 43.006542, 32.543293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.600760, 43.008598, 32.304783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416731, -0.720067, 0.554832,
		-0.426509, -0.693886, -0.580184,
		0.802761, 0.005140, -0.596278,
		27.841587, 43.010139, 32.125900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.392185, 42.373566, 32.314648>,  <27.279655, 43.006542, 32.543293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.392185, 42.373566, 32.314648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750317, 42.540813, 32.253250>,  <27.965197, 42.641163, 32.216412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.750317, 42.540813, 32.253250>,  <27.392185, 42.373566, 32.314648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.750317, 42.540813, 32.253250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432169, -0.732120, 0.526527,
		0.107773, -0.537752, -0.836187,
		0.895329, 0.418120, -0.153497,
		28.018915, 42.666248, 32.207199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811380, 41.891853, 32.015469>,  <27.392185, 42.373566, 32.314648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811380, 41.891853, 32.015469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098372, 42.134659, 32.152153>,  <28.270565, 42.280342, 32.234161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.098372, 42.134659, 32.152153>,  <27.811380, 41.891853, 32.015469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.098372, 42.134659, 32.152153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432833, -0.772844, 0.464078,
		0.545788, -0.185062, -0.817232,
		0.717476, 0.607012, 0.341708,
		28.313614, 42.316761, 32.254665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460615, 41.633755, 31.787043>,  <27.811380, 41.891853, 32.015469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460615, 41.633755, 31.787043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521450, 41.853519, 32.115681>,  <28.557951, 41.985378, 32.312862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521450, 41.853519, 32.115681>,  <28.460615, 41.633755, 31.787043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521450, 41.853519, 32.115681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501623, -0.759153, 0.414803,
		0.851613, 0.349044, -0.391055,
		0.152086, 0.549413, 0.821593,
		28.567076, 42.018345, 32.362160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196091, 41.630985, 31.975870>,  <28.460615, 41.633755, 31.787043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196091, 41.630985, 31.975870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997494, 41.739136, 32.305813>,  <28.878336, 41.804028, 32.503780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997494, 41.739136, 32.305813>,  <29.196091, 41.630985, 31.975870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997494, 41.739136, 32.305813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411663, -0.763256, 0.497970,
		0.764218, 0.586802, 0.267647,
		-0.496493, 0.270377, 0.824858,
		28.848545, 41.820248, 32.553268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622280, 41.342846, 32.445942>,  <29.196091, 41.630985, 31.975870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622280, 41.342846, 32.445942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305992, 41.422386, 32.677532>,  <29.116219, 41.470112, 32.816486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.305992, 41.422386, 32.677532>,  <29.622280, 41.342846, 32.445942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.305992, 41.422386, 32.677532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234833, -0.774891, 0.586853,
		0.565342, 0.600002, 0.566027,
		-0.790722, 0.198851, 0.578979,
		29.068775, 41.482040, 32.851227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.855978, 41.417973, 33.187260>,  <29.622280, 41.342846, 32.445942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.855978, 41.417973, 33.187260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464039, 41.338432, 33.194828>,  <29.228876, 41.290707, 33.199368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.464039, 41.338432, 33.194828>,  <29.855978, 41.417973, 33.187260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464039, 41.338432, 33.194828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168518, -0.772080, 0.612776,
		-0.107246, 0.603615, 0.790030,
		-0.979847, -0.198852, 0.018918,
		29.170084, 41.278778, 33.200504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.685717, 41.292038, 33.934696>,  <29.855978, 41.417973, 33.187260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.685717, 41.292038, 33.934696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394192, 41.122913, 33.719265>,  <29.219276, 41.021439, 33.590008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.394192, 41.122913, 33.719265>,  <29.685717, 41.292038, 33.934696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.394192, 41.122913, 33.719265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100107, -0.843919, 0.527048,
		-0.677355, 0.330204, 0.657385,
		-0.728813, -0.422808, -0.538577,
		29.175549, 40.996071, 33.557693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.307783, 40.892323, 34.369984>,  <29.685717, 41.292038, 33.934696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.307783, 40.892323, 34.369984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233162, 40.729794, 34.012192>,  <29.188389, 40.632275, 33.797516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.233162, 40.729794, 34.012192>,  <29.307783, 40.892323, 34.369984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.233162, 40.729794, 34.012192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008415, -0.911092, 0.412117,
		-0.982409, 0.069355, 0.173387,
		-0.186554, -0.406327, -0.894481,
		29.177197, 40.607895, 33.743847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.736172, 40.394642, 34.472351>,  <29.307783, 40.892323, 34.369984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.736172, 40.394642, 34.472351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926111, 40.291416, 34.135799>,  <29.040075, 40.229481, 33.933868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926111, 40.291416, 34.135799>,  <28.736172, 40.394642, 34.472351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926111, 40.291416, 34.135799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164471, -0.913174, 0.372912,
		-0.864563, -0.315459, -0.391174,
		0.474849, -0.258068, -0.841380,
		29.068565, 40.213997, 33.883385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445969, 39.730839, 34.216633>,  <28.736172, 40.394642, 34.472351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.445969, 39.730839, 34.216633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805437, 39.735332, 34.041241>,  <29.021118, 39.738029, 33.936005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.805437, 39.735332, 34.041241>,  <28.445969, 39.730839, 34.216633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.805437, 39.735332, 34.041241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122198, -0.966508, 0.225679,
		-0.421261, -0.256392, -0.869944,
		0.898670, 0.011236, -0.438482,
		29.075039, 39.738705, 33.909695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.423840, 39.089256, 33.919666>,  <28.445969, 39.730839, 34.216633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.423840, 39.089256, 33.919666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806364, 39.205647, 33.931023>,  <29.035879, 39.275478, 33.937836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806364, 39.205647, 33.931023>,  <28.423840, 39.089256, 33.919666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806364, 39.205647, 33.931023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276277, -0.931207, 0.237748,
		0.095615, -0.219518, -0.970912,
		0.956310, 0.290973, 0.028390,
		29.093258, 39.292938, 33.939541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775969, 38.651642, 33.337593>,  <28.423840, 39.089256, 33.919666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775969, 38.651642, 33.337593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030804, 38.769024, 33.622688>,  <29.183704, 38.839455, 33.793747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.030804, 38.769024, 33.622688>,  <28.775969, 38.651642, 33.337593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.030804, 38.769024, 33.622688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300708, -0.946045, 0.120724,
		0.709713, 0.137415, -0.690959,
		0.637089, 0.293456, 0.712742,
		29.221930, 38.857059, 33.836510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.378036, 38.147202, 33.247826>,  <28.775969, 38.651642, 33.337593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.378036, 38.147202, 33.247826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432528, 38.316307, 33.606201>,  <29.465221, 38.417770, 33.821228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.432528, 38.316307, 33.606201>,  <29.378036, 38.147202, 33.247826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432528, 38.316307, 33.606201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373829, -0.859452, 0.348702,
		0.917438, 0.287427, -0.275122,
		0.136228, 0.422761, 0.895943,
		29.473396, 38.443134, 33.874985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507992, 37.395309, 33.153603>,  <29.378036, 38.147202, 33.247826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507992, 37.395309, 33.153603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478783, 37.020477, 33.290154>,  <29.461258, 36.795578, 33.372086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478783, 37.020477, 33.290154>,  <29.507992, 37.395309, 33.153603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478783, 37.020477, 33.290154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837702, -0.243383, -0.488897,
		0.541224, 0.250273, 0.802770,
		-0.073023, -0.937085, 0.341379,
		29.456877, 36.739353, 33.392567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.078991, 37.135685, 33.522743>,  <29.507992, 37.395309, 33.153603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.078991, 37.135685, 33.522743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910316, 36.828056, 33.330612>,  <29.809113, 36.643478, 33.215332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.910316, 36.828056, 33.330612>,  <30.078991, 37.135685, 33.522743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.910316, 36.828056, 33.330612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784401, -0.043666, -0.618715,
		0.454861, -0.637673, 0.621672,
		-0.421684, -0.769069, -0.480329,
		29.783812, 36.597336, 33.186512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.453554, 36.496906, 33.459335>,  <30.078991, 37.135685, 33.522743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.453554, 36.496906, 33.459335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262192, 36.557346, 33.113319>,  <30.147375, 36.593609, 32.905708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.262192, 36.557346, 33.113319>,  <30.453554, 36.496906, 33.459335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.262192, 36.557346, 33.113319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848329, 0.334017, -0.410817,
		0.226865, -0.930377, -0.287977,
		-0.478404, 0.151100, -0.865042,
		30.118671, 36.602676, 32.853806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.874245, 36.326672, 32.930050>,  <30.453554, 36.496906, 33.459335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.874245, 36.326672, 32.930050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618906, 36.595203, 32.779404>,  <30.465702, 36.756321, 32.689018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.618906, 36.595203, 32.779404>,  <30.874245, 36.326672, 32.930050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618906, 36.595203, 32.779404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722472, 0.353705, -0.594077,
		-0.265610, -0.651318, -0.710800,
		-0.638346, 0.671326, -0.376612,
		30.427402, 36.796600, 32.666420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.030386, 35.664318, 33.014599>,  <30.874245, 36.326672, 32.930050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.030386, 35.664318, 33.014599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214821, 35.575081, 33.358139>,  <31.325481, 35.521538, 33.564262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.214821, 35.575081, 33.358139>,  <31.030386, 35.664318, 33.014599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214821, 35.575081, 33.358139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120989, 0.943036, 0.309910,
		-0.879068, -0.246808, 0.407831,
		0.461087, -0.223089, 0.858854,
		31.353148, 35.508156, 33.615795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657881, 36.101723, 33.376469>,  <31.030386, 35.664318, 33.014599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657881, 36.101723, 33.376469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340164, 35.971214, 33.581467>,  <31.149534, 35.892910, 33.704464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.340164, 35.971214, 33.581467>,  <31.657881, 36.101723, 33.376469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.340164, 35.971214, 33.581467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529634, 0.041401, 0.847215,
		-0.297642, 0.944368, 0.139922,
		-0.794290, -0.326275, 0.512492,
		31.101877, 35.873333, 33.735214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.515528, 36.513111, 33.919262>,  <31.657881, 36.101723, 33.376469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.515528, 36.513111, 33.919262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377422, 36.145607, 33.995861>,  <31.294559, 35.925106, 34.041821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.377422, 36.145607, 33.995861>,  <31.515528, 36.513111, 33.919262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.377422, 36.145607, 33.995861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451820, 0.016119, 0.891963,
		-0.822588, 0.394485, 0.409549,
		-0.345265, -0.918761, 0.191496,
		31.273844, 35.869980, 34.053310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.289953, 36.536888, 34.558487>,  <31.515528, 36.513111, 33.919262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.289953, 36.536888, 34.558487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338554, 36.141964, 34.517593>,  <31.367716, 35.905010, 34.493057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.338554, 36.141964, 34.517593>,  <31.289953, 36.536888, 34.558487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.338554, 36.141964, 34.517593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457574, -0.035685, 0.888455,
		-0.880830, -0.154731, 0.447433,
		0.121505, -0.987312, -0.102233,
		31.375006, 35.845772, 34.486923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098740, 36.271858, 35.203995>,  <31.289953, 36.536888, 34.558487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098740, 36.271858, 35.203995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307270, 35.980511, 35.026142>,  <31.432388, 35.805702, 34.919430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.307270, 35.980511, 35.026142>,  <31.098740, 36.271858, 35.203995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.307270, 35.980511, 35.026142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228830, -0.382631, 0.895115,
		-0.822104, -0.568391, -0.032802,
		0.521327, -0.728372, -0.444627,
		31.463669, 35.762001, 34.892754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834230, 35.634556, 35.388016>,  <31.098740, 36.271858, 35.203995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834230, 35.634556, 35.388016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215559, 35.583607, 35.278503>,  <31.444357, 35.553040, 35.212795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215559, 35.583607, 35.278503>,  <30.834230, 35.634556, 35.388016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215559, 35.583607, 35.278503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166870, -0.533431, 0.829220,
		-0.251660, -0.836199, -0.487276,
		0.953321, -0.127370, -0.273780,
		31.501554, 35.545395, 35.196369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999165, 35.089798, 35.819893>,  <30.834230, 35.634556, 35.388016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999165, 35.089798, 35.819893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360352, 35.214355, 35.701447>,  <31.577065, 35.289089, 35.630379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.360352, 35.214355, 35.701447>,  <30.999165, 35.089798, 35.819893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360352, 35.214355, 35.701447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396383, -0.337520, 0.853792,
		0.165926, -0.888320, -0.428202,
		0.902967, 0.311398, -0.296112,
		31.631241, 35.307774, 35.612614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512850, 34.603352, 35.989464>,  <30.999165, 35.089798, 35.819893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512850, 34.603352, 35.989464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722401, 34.942829, 35.960415>,  <31.848131, 35.146515, 35.942986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.722401, 34.942829, 35.960415>,  <31.512850, 34.603352, 35.989464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722401, 34.942829, 35.960415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620737, -0.321993, 0.714847,
		0.583302, -0.419571, -0.695500,
		0.523875, 0.848694, -0.072624,
		31.879562, 35.197437, 35.938629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081997, 34.374218, 36.085091>,  <31.512850, 34.603352, 35.989464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081997, 34.374218, 36.085091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106140, 34.766979, 36.156898>,  <32.120625, 35.002636, 36.199982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106140, 34.766979, 36.156898>,  <32.081997, 34.374218, 36.085091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106140, 34.766979, 36.156898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564269, -0.181913, 0.805300,
		0.823382, 0.052691, -0.565036,
		0.060355, 0.981902, 0.179515,
		32.124249, 35.061550, 36.210754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863384, 34.458374, 36.378189>,  <32.081997, 34.374218, 36.085091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863384, 34.458374, 36.378189> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655910, 34.782448, 36.487415>,  <32.531425, 34.976894, 36.552952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655910, 34.782448, 36.487415>,  <32.863384, 34.458374, 36.378189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655910, 34.782448, 36.487415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429009, -0.029632, 0.902814,
		0.739539, 0.585423, -0.332207,
		-0.518684, 0.810186, 0.273066,
		32.500305, 35.025505, 36.569336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322834, 34.891880, 36.691025>,  <32.863384, 34.458374, 36.378189>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322834, 34.891880, 36.691025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977177, 35.023178, 36.843609>,  <32.769783, 35.101959, 36.935162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.977177, 35.023178, 36.843609>,  <33.322834, 34.891880, 36.691025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977177, 35.023178, 36.843609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409613, 0.018402, 0.912074,
		0.292366, 0.944413, -0.150356,
		-0.864141, 0.328247, 0.381463,
		32.717934, 35.121651, 36.958050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.476524, 35.483349, 37.150558>,  <33.322834, 34.891880, 36.691025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.476524, 35.483349, 37.150558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119495, 35.359303, 37.281494>,  <32.905277, 35.284874, 37.360058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119495, 35.359303, 37.281494>,  <33.476524, 35.483349, 37.150558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119495, 35.359303, 37.281494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301782, 0.128560, 0.944669,
		-0.335035, 0.941968, -0.021163,
		-0.892569, -0.310111, 0.327341,
		32.851727, 35.266270, 37.379696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296772, 35.893787, 37.704536>,  <33.476524, 35.483349, 37.150558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296772, 35.893787, 37.704536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077011, 35.562057, 37.745270>,  <32.945152, 35.363018, 37.769711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.077011, 35.562057, 37.745270>,  <33.296772, 35.893787, 37.704536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.077011, 35.562057, 37.745270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182933, -0.000467, 0.983125,
		-0.815286, 0.558762, 0.151968,
		-0.549404, -0.829328, 0.101835,
		32.912189, 35.313259, 37.775822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.920135, 35.990082, 38.274391>,  <33.296772, 35.893787, 37.704536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.920135, 35.990082, 38.274391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900478, 35.592953, 38.230782>,  <32.888683, 35.354675, 38.204617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.900478, 35.592953, 38.230782>,  <32.920135, 35.990082, 38.274391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900478, 35.592953, 38.230782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127755, -0.114503, 0.985174,
		-0.990588, 0.034483, 0.132465,
		-0.049139, -0.992824, -0.109020,
		32.885738, 35.295105, 38.198074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.471603, 35.690872, 38.845661>,  <32.920135, 35.990082, 38.274391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.471603, 35.690872, 38.845661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627869, 35.342350, 38.726856>,  <32.721626, 35.133236, 38.655575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.627869, 35.342350, 38.726856>,  <32.471603, 35.690872, 38.845661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.627869, 35.342350, 38.726856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063895, -0.347541, 0.935485,
		-0.918314, -0.346481, -0.191443,
		0.390662, -0.871302, -0.297013,
		32.745068, 35.080959, 38.637753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.085537, 35.226246, 39.179668>,  <32.471603, 35.690872, 38.845661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.085537, 35.226246, 39.179668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407993, 35.006668, 39.091316>,  <32.601467, 34.874920, 39.038303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407993, 35.006668, 39.091316>,  <32.085537, 35.226246, 39.179668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407993, 35.006668, 39.091316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100684, -0.495103, 0.862981,
		-0.583093, -0.673445, -0.454394,
		0.806142, -0.548948, -0.220886,
		32.649837, 34.841984, 39.025051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912123, 34.544815, 39.305965>,  <32.085537, 35.226246, 39.179668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912123, 34.544815, 39.305965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309143, 34.582157, 39.337280>,  <32.547356, 34.604561, 39.356071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.309143, 34.582157, 39.337280>,  <31.912123, 34.544815, 39.305965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309143, 34.582157, 39.337280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040266, -0.355126, 0.933951,
		0.114991, -0.930145, -0.348721,
		0.992550, 0.093354, 0.078290,
		32.606907, 34.610165, 39.360767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.045696, 33.873985, 39.580513>,  <31.912123, 34.544815, 39.305965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.045696, 33.873985, 39.580513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361546, 34.104347, 39.665203>,  <32.551056, 34.242565, 39.716019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.361546, 34.104347, 39.665203>,  <32.045696, 33.873985, 39.580513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.361546, 34.104347, 39.665203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058360, -0.413986, 0.908410,
		0.610807, -0.704948, -0.360504,
		0.789626, 0.575903, 0.211725,
		32.598434, 34.277119, 39.728722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.624252, 33.438583, 39.812820>,  <32.045696, 33.873985, 39.580513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.624252, 33.438583, 39.812820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655743, 33.804539, 39.971203>,  <32.674637, 34.024113, 40.066235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.655743, 33.804539, 39.971203>,  <32.624252, 33.438583, 39.812820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655743, 33.804539, 39.971203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029950, -0.399182, 0.916382,
		0.996446, -0.060283, -0.058826,
		0.078724, 0.914888, 0.395958,
		32.679359, 34.079006, 40.089989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121246, 33.457802, 40.434605>,  <32.624252, 33.438583, 39.812820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121246, 33.457802, 40.434605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916855, 33.796925, 40.491348>,  <32.794220, 34.000401, 40.525394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916855, 33.796925, 40.491348>,  <33.121246, 33.457802, 40.434605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916855, 33.796925, 40.491348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004656, -0.162302, 0.986730,
		0.859583, 0.504854, 0.078985,
		-0.510974, 0.847809, 0.141863,
		32.763561, 34.051266, 40.533909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.390789, 33.680676, 41.140347>,  <33.121246, 33.457802, 40.434605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.390789, 33.680676, 41.140347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030746, 33.845062, 41.082504>,  <32.814720, 33.943695, 41.047798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.030746, 33.845062, 41.082504>,  <33.390789, 33.680676, 41.140347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.030746, 33.845062, 41.082504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188495, -0.068127, 0.979708,
		0.392776, 0.909101, 0.138787,
		-0.900109, 0.410967, -0.144602,
		32.760715, 33.968353, 41.039124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257626, 34.069656, 41.672180>,  <33.390789, 33.680676, 41.140347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257626, 34.069656, 41.672180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883179, 34.040356, 41.534588>,  <32.658512, 34.022774, 41.452034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883179, 34.040356, 41.534588>,  <33.257626, 34.069656, 41.672180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883179, 34.040356, 41.534588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341402, -0.045569, 0.938812,
		-0.084448, 0.996272, 0.017648,
		-0.936116, -0.073255, -0.343977,
		32.602345, 34.018379, 41.431396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.919342, 34.307587, 42.203075>,  <33.257626, 34.069656, 41.672180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.919342, 34.307587, 42.203075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643353, 34.120724, 41.981915>,  <32.477760, 34.008606, 41.849216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.643353, 34.120724, 41.981915>,  <32.919342, 34.307587, 42.203075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.643353, 34.120724, 41.981915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505978, -0.234955, 0.829929,
		-0.517619, 0.852383, -0.074261,
		-0.689969, -0.467161, -0.552904,
		32.436363, 33.980576, 41.816044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299240, 34.478977, 42.479790>,  <32.919342, 34.307587, 42.203075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299240, 34.478977, 42.479790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228199, 34.124966, 42.307655>,  <32.185574, 33.912560, 42.204376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228199, 34.124966, 42.307655>,  <32.299240, 34.478977, 42.479790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228199, 34.124966, 42.307655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442950, -0.318593, 0.838030,
		-0.878780, 0.339450, -0.335440,
		-0.177600, -0.885027, -0.430332,
		32.174919, 33.859459, 42.178555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.598951, 34.329109, 42.796406>,  <32.299240, 34.478977, 42.479790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.598951, 34.329109, 42.796406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675453, 33.987679, 42.602566>,  <31.721354, 33.782822, 42.486263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.675453, 33.987679, 42.602566>,  <31.598951, 34.329109, 42.796406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675453, 33.987679, 42.602566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506345, -0.508745, 0.696271,
		-0.840854, 0.112208, -0.529503,
		0.191255, -0.853574, -0.484596,
		31.732830, 33.731606, 42.457188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983803, 34.088097, 42.776180>,  <31.598951, 34.329109, 42.796406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983803, 34.088097, 42.776180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233118, 33.776928, 42.744301>,  <31.382708, 33.590229, 42.725174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.233118, 33.776928, 42.744301>,  <30.983803, 34.088097, 42.776180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.233118, 33.776928, 42.744301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485457, -0.464820, 0.740455,
		-0.613060, -0.422828, -0.667363,
		0.623289, -0.777920, -0.079698,
		31.420105, 33.543552, 42.720390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.526995, 33.480141, 42.881222>,  <30.983803, 34.088097, 42.776180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.526995, 33.480141, 42.881222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900591, 33.353928, 42.948269>,  <31.124748, 33.278198, 42.988499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.900591, 33.353928, 42.948269>,  <30.526995, 33.480141, 42.881222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.900591, 33.353928, 42.948269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307514, -0.471062, 0.826762,
		-0.181915, -0.823734, -0.537001,
		0.933993, -0.315535, 0.167617,
		31.180788, 33.259266, 42.998554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511681, 32.721729, 43.039501>,  <30.526995, 33.480141, 42.881222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.511681, 32.721729, 43.039501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844458, 32.870152, 43.204517>,  <31.044125, 32.959206, 43.303528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.844458, 32.870152, 43.204517>,  <30.511681, 32.721729, 43.039501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844458, 32.870152, 43.204517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138109, -0.581618, 0.801653,
		0.537400, -0.723904, -0.432626,
		0.831942, 0.371058, 0.412539,
		31.094040, 32.981468, 43.328278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814569, 32.165134, 43.378181>,  <30.511681, 32.721729, 43.039501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814569, 32.165134, 43.378181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993608, 32.492008, 43.523438>,  <31.101032, 32.688133, 43.610592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.993608, 32.492008, 43.523438>,  <30.814569, 32.165134, 43.378181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.993608, 32.492008, 43.523438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028646, -0.418979, 0.907544,
		0.893777, -0.395811, -0.210943,
		0.447596, 0.817184, 0.363135,
		31.127888, 32.737164, 43.632378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303932, 31.920231, 43.797508>,  <30.814569, 32.165134, 43.378181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303932, 31.920231, 43.797508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270670, 32.295834, 43.930984>,  <31.250713, 32.521194, 44.011070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.270670, 32.295834, 43.930984>,  <31.303932, 31.920231, 43.797508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.270670, 32.295834, 43.930984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015363, -0.336021, 0.941729,
		0.996418, 0.073183, 0.042367,
		-0.083155, 0.939007, 0.333693,
		31.245724, 32.577538, 44.031094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.926172, 32.067669, 44.262074>,  <31.303932, 31.920231, 43.797508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.926172, 32.067669, 44.262074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628265, 32.315956, 44.360085>,  <31.449522, 32.464928, 44.418892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.628265, 32.315956, 44.360085>,  <31.926172, 32.067669, 44.262074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628265, 32.315956, 44.360085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063808, -0.431731, 0.899742,
		0.664267, 0.654464, 0.361145,
		-0.744767, 0.620714, 0.245025,
		31.404835, 32.502171, 44.433594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047825, 32.390694, 44.933739>,  <31.926172, 32.067669, 44.262074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047825, 32.390694, 44.933739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650421, 32.417561, 44.897038>,  <31.411978, 32.433681, 44.875019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650421, 32.417561, 44.897038>,  <32.047825, 32.390694, 44.933739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650421, 32.417561, 44.897038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106848, -0.275396, 0.955374,
		0.038903, 0.958981, 0.280787,
		-0.993514, 0.067168, -0.091751,
		31.352367, 32.437710, 44.869511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771255, 32.687954, 45.553677>,  <32.047825, 32.390694, 44.933739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771255, 32.687954, 45.553677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462257, 32.492065, 45.391975>,  <31.276857, 32.374531, 45.294956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462257, 32.492065, 45.391975>,  <31.771255, 32.687954, 45.553677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462257, 32.492065, 45.391975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189277, -0.430093, 0.882720,
		-0.606153, 0.758415, 0.239553,
		-0.772497, -0.489721, -0.404253,
		31.230509, 32.345150, 45.270699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366016, 32.563194, 46.149025>,  <31.771255, 32.687954, 45.553677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366016, 32.563194, 46.149025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185585, 32.350166, 45.862556>,  <31.077326, 32.222351, 45.690674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.185585, 32.350166, 45.862556>,  <31.366016, 32.563194, 46.149025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185585, 32.350166, 45.862556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409833, -0.589232, 0.696306,
		-0.792822, 0.607598, 0.047524,
		-0.451077, -0.532569, -0.716170,
		31.050262, 32.190395, 45.647705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769182, 32.390194, 46.407360>,  <31.366016, 32.563194, 46.149025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769182, 32.390194, 46.407360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818853, 32.112885, 46.123402>,  <30.848656, 31.946501, 45.953026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.818853, 32.112885, 46.123402>,  <30.769182, 32.390194, 46.407360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.818853, 32.112885, 46.123402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283066, -0.710458, 0.644300,
		-0.951027, 0.120940, -0.284464,
		0.124178, -0.693269, -0.709900,
		30.856108, 31.904903, 45.910431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.139654, 31.951170, 46.341854>,  <30.769182, 32.390194, 46.407360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.139654, 31.951170, 46.341854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446844, 31.735945, 46.202885>,  <30.631159, 31.606810, 46.119503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.446844, 31.735945, 46.202885>,  <30.139654, 31.951170, 46.341854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446844, 31.735945, 46.202885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308278, -0.786008, 0.535869,
		-0.561406, -0.304433, -0.769509,
		0.767976, -0.538063, -0.347420,
		30.677237, 31.574526, 46.098660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919865, 31.300352, 46.515247>,  <30.139654, 31.951170, 46.341854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919865, 31.300352, 46.515247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302467, 31.214186, 46.436569>,  <30.532030, 31.162485, 46.389362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.302467, 31.214186, 46.436569>,  <29.919865, 31.300352, 46.515247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.302467, 31.214186, 46.436569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083888, -0.848931, 0.521804,
		-0.279383, -0.482610, -0.830080,
		0.956508, -0.215418, -0.196692,
		30.589420, 31.149561, 46.377563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.999390, 30.635803, 46.224991>,  <29.919865, 31.300352, 46.515247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.999390, 30.635803, 46.224991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356133, 30.728968, 46.380089>,  <30.570179, 30.784866, 46.473148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.356133, 30.728968, 46.380089>,  <29.999390, 30.635803, 46.224991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.356133, 30.728968, 46.380089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029481, -0.885343, 0.464002,
		0.451354, -0.402393, -0.796467,
		0.891858, 0.232909, 0.387740,
		30.623690, 30.798840, 46.496410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.509680, 30.023209, 46.058697>,  <29.999390, 30.635803, 46.224991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.509680, 30.023209, 46.058697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679995, 30.237644, 46.350262>,  <30.782183, 30.366306, 46.525200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679995, 30.237644, 46.350262>,  <30.509680, 30.023209, 46.058697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679995, 30.237644, 46.350262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304047, -0.843511, 0.442769,
		0.852210, 0.033099, -0.522152,
		0.425786, 0.536091, 0.728912,
		30.807730, 30.398472, 46.568935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093403, 29.811710, 46.176128>,  <30.509680, 30.023209, 46.058697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093403, 29.811710, 46.176128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055328, 29.995148, 46.529541>,  <31.032484, 30.105211, 46.741589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.055328, 29.995148, 46.529541>,  <31.093403, 29.811710, 46.176128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.055328, 29.995148, 46.529541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175261, -0.865978, 0.468365,
		0.979910, 0.199431, 0.002056,
		-0.095187, 0.458595, 0.883533,
		31.026772, 30.132727, 46.794601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.681807, 29.649872, 46.678349>,  <31.093403, 29.811710, 46.176128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.681807, 29.649872, 46.678349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374184, 29.751209, 46.913078>,  <31.189610, 29.812012, 47.053917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374184, 29.751209, 46.913078>,  <31.681807, 29.649872, 46.678349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374184, 29.751209, 46.913078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090313, -0.865816, 0.492145,
		0.632765, 0.431487, 0.642983,
		-0.769059, 0.253342, 0.586827,
		31.143465, 29.827211, 47.089127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897047, 29.366663, 47.347126>,  <31.681807, 29.649872, 46.678349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897047, 29.366663, 47.347126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505352, 29.443472, 47.373112>,  <31.270334, 29.489557, 47.388702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505352, 29.443472, 47.373112>,  <31.897047, 29.366663, 47.347126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505352, 29.443472, 47.373112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119206, -0.804670, 0.581632,
		0.163961, 0.561812, 0.810854,
		-0.979238, 0.192023, 0.064963,
		31.211580, 29.501080, 47.392601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789005, 29.165976, 48.039452>,  <31.897047, 29.366663, 47.347126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789005, 29.165976, 48.039452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423349, 29.180033, 47.877903>,  <31.203957, 29.188467, 47.780972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.423349, 29.180033, 47.877903>,  <31.789005, 29.165976, 48.039452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.423349, 29.180033, 47.877903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308365, -0.707002, 0.636443,
		-0.263173, 0.706338, 0.657135,
		-0.914140, 0.035143, -0.403873,
		31.149107, 29.190577, 47.756741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283720, 29.137354, 48.620914>,  <31.789005, 29.165976, 48.039452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283720, 29.137354, 48.620914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081549, 29.026358, 48.294102>,  <30.960247, 28.959759, 48.098015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.081549, 29.026358, 48.294102>,  <31.283720, 29.137354, 48.620914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.081549, 29.026358, 48.294102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355928, -0.795522, 0.490367,
		-0.786040, 0.538649, 0.303311,
		-0.505426, -0.277492, -0.817033,
		30.929920, 28.943110, 48.048992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554415, 29.123968, 48.714386>,  <31.283720, 29.137354, 48.620914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554415, 29.123968, 48.714386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671593, 28.843159, 48.454739>,  <30.741899, 28.674673, 48.298950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.671593, 28.843159, 48.454739>,  <30.554415, 29.123968, 48.714386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.671593, 28.843159, 48.454739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512295, -0.688469, 0.513385,
		-0.807302, 0.182145, -0.561325,
		0.292944, -0.702021, -0.649115,
		30.759476, 28.632553, 48.260006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.054602, 28.771727, 48.249271>,  <30.554415, 29.123968, 48.714386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.054602, 28.771727, 48.249271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367252, 28.555634, 48.373981>,  <30.554844, 28.425978, 48.448807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367252, 28.555634, 48.373981>,  <30.054602, 28.771727, 48.249271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367252, 28.555634, 48.373981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615272, -0.585678, 0.527657,
		-0.102455, -0.604261, -0.790172,
		0.781628, -0.540232, 0.311780,
		30.601742, 28.393564, 48.467514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735352, 28.152113, 48.482395>,  <30.054602, 28.771727, 48.249271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735352, 28.152113, 48.482395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107443, 28.151764, 48.629185>,  <30.330698, 28.151554, 48.717258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107443, 28.151764, 48.629185>,  <29.735352, 28.152113, 48.482395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107443, 28.151764, 48.629185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307565, -0.547358, 0.778333,
		0.200190, -0.836898, -0.509436,
		0.930230, -0.000870, 0.366977,
		30.386513, 28.151503, 48.739277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.953348, 27.443012, 48.774448>,  <29.735352, 28.152113, 48.482395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.953348, 27.443012, 48.774448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253447, 27.667343, 48.914509>,  <30.433506, 27.801941, 48.998547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.253447, 27.667343, 48.914509>,  <29.953348, 27.443012, 48.774448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.253447, 27.667343, 48.914509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055527, -0.581177, 0.811880,
		0.658825, -0.589666, -0.467165,
		0.750244, 0.560827, 0.350152,
		30.478519, 27.835592, 49.019554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.494921, 27.044071, 48.977757>,  <29.953348, 27.443012, 48.774448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.494921, 27.044071, 48.977757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482672, 27.384285, 49.187767>,  <30.475323, 27.588413, 49.313774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482672, 27.384285, 49.187767>,  <30.494921, 27.044071, 48.977757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482672, 27.384285, 49.187767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082923, -0.521303, 0.849333,
		0.996085, 0.069544, -0.054566,
		-0.030621, 0.850533, 0.525030,
		30.473486, 27.639444, 49.345276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.094852, 27.147758, 49.416428>,  <30.494921, 27.044071, 48.977757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.094852, 27.147758, 49.416428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787039, 27.343508, 49.580540>,  <30.602350, 27.460957, 49.679008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.787039, 27.343508, 49.580540>,  <31.094852, 27.147758, 49.416428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.787039, 27.343508, 49.580540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113181, -0.527783, 0.841805,
		0.628497, 0.694233, 0.350759,
		-0.769534, 0.489373, 0.410283,
		30.556179, 27.490320, 49.703625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.200487, 26.702230, 48.878338>,  <31.094852, 27.147758, 49.416428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.200487, 26.702230, 48.878338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007605, 26.364550, 48.784702>,  <30.891876, 26.161942, 48.728519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.007605, 26.364550, 48.784702>,  <31.200487, 26.702230, 48.878338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007605, 26.364550, 48.784702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024971, 0.280345, -0.959574,
		0.875702, -0.456866, -0.156264,
		-0.482205, -0.844203, -0.234091,
		30.862944, 26.111288, 48.714474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.566118, 26.461769, 48.257534>,  <31.200487, 26.702230, 48.878338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.566118, 26.461769, 48.257534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187092, 26.346506, 48.312798>,  <30.959677, 26.277348, 48.345955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.187092, 26.346506, 48.312798>,  <31.566118, 26.461769, 48.257534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.187092, 26.346506, 48.312798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204911, 0.216118, -0.954623,
		0.245223, -0.932876, -0.263833,
		-0.947564, -0.288157, 0.138159,
		30.902822, 26.260059, 48.354244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285248, 25.837389, 47.794613>,  <31.566118, 26.461769, 48.257534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285248, 25.837389, 47.794613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018877, 26.113220, 47.908466>,  <30.859055, 26.278719, 47.976780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.018877, 26.113220, 47.908466>,  <31.285248, 25.837389, 47.794613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.018877, 26.113220, 47.908466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130082, 0.268366, -0.954494,
		-0.734587, -0.672651, -0.089010,
		-0.665929, 0.689580, 0.284637,
		30.819098, 26.320095, 47.993858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.620283, 25.738686, 47.408173>,  <31.285248, 25.837389, 47.794613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.620283, 25.738686, 47.408173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754368, 26.098619, 47.519833>,  <30.834818, 26.314581, 47.586830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.754368, 26.098619, 47.519833>,  <30.620283, 25.738686, 47.408173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.754368, 26.098619, 47.519833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215113, 0.361571, -0.907189,
		-0.917256, 0.244051, 0.314770,
		0.335212, 0.899836, 0.279155,
		30.854931, 26.368570, 47.603580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.850803, 26.073826, 46.871910>,  <30.620283, 25.738686, 47.408173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.850803, 26.073826, 46.871910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664165, 26.427462, 46.882298>,  <30.552183, 26.639643, 46.888531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.664165, 26.427462, 46.882298>,  <30.850803, 26.073826, 46.871910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.664165, 26.427462, 46.882298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405314, 0.239822, -0.882160,
		-0.786135, -0.401089, -0.470234,
		-0.466597, 0.884089, 0.025965,
		30.524187, 26.692688, 46.890087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.588194, 26.075773, 46.122868>,  <30.850803, 26.073826, 46.871910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.588194, 26.075773, 46.122868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615913, 26.444361, 46.275757>,  <30.632545, 26.665514, 46.367489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.615913, 26.444361, 46.275757>,  <30.588194, 26.075773, 46.122868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.615913, 26.444361, 46.275757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453101, 0.312270, -0.834977,
		-0.888762, 0.231046, -0.395879,
		0.069297, 0.921469, 0.382221,
		30.636702, 26.720802, 46.390423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460102, 26.606630, 45.564865>,  <30.588194, 26.075773, 46.122868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460102, 26.606630, 45.564865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672838, 26.782589, 45.854317>,  <30.800480, 26.888165, 46.027988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.672838, 26.782589, 45.854317>,  <30.460102, 26.606630, 45.564865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.672838, 26.782589, 45.854317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603712, 0.402287, -0.688257,
		-0.593867, 0.802905, -0.051618,
		0.531840, 0.439896, 0.723629,
		30.832390, 26.914558, 46.071404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.431398, 27.371302, 45.471714>,  <30.460102, 26.606630, 45.564865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.431398, 27.371302, 45.471714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747337, 27.307117, 45.708492>,  <30.936901, 27.268606, 45.850559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747337, 27.307117, 45.708492>,  <30.431398, 27.371302, 45.471714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747337, 27.307117, 45.708492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567366, 0.557678, -0.605880,
		-0.232893, 0.814400, 0.531520,
		0.789846, -0.160462, 0.591942,
		30.984291, 27.258980, 45.886074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776423, 28.057049, 45.548084>,  <30.431398, 27.371302, 45.471714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.776423, 28.057049, 45.548084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056482, 27.794706, 45.660969>,  <31.224518, 27.637300, 45.728699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.056482, 27.794706, 45.660969>,  <30.776423, 28.057049, 45.548084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056482, 27.794706, 45.660969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648127, 0.417979, -0.636573,
		0.299540, 0.628607, 0.717725,
		0.700148, -0.655856, 0.282216,
		31.266527, 27.597950, 45.745632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.413296, 28.369408, 45.341053>,  <30.776423, 28.057049, 45.548084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.413296, 28.369408, 45.341053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521065, 27.987144, 45.388599>,  <31.585726, 27.757786, 45.417126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.521065, 27.987144, 45.388599>,  <31.413296, 28.369408, 45.341053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521065, 27.987144, 45.388599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633173, 0.082787, -0.769570,
		0.725607, 0.282599, 0.627402,
		0.269420, -0.955659, 0.118864,
		31.601891, 27.700447, 45.424259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123039, 28.371017, 45.292873>,  <31.413296, 28.369408, 45.341053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123039, 28.371017, 45.292873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029617, 27.988968, 45.220001>,  <31.973564, 27.759739, 45.176277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.029617, 27.988968, 45.220001>,  <32.123039, 28.371017, 45.292873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.029617, 27.988968, 45.220001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720151, -0.044027, -0.692419,
		0.653325, -0.292916, 0.698117,
		-0.233557, -0.955124, -0.182179,
		31.959551, 27.702431, 45.165348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805042, 28.046911, 45.254601>,  <32.123039, 28.371017, 45.292873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805042, 28.046911, 45.254601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531460, 27.833199, 45.055904>,  <32.367310, 27.704971, 44.936687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.531460, 27.833199, 45.055904>,  <32.805042, 28.046911, 45.254601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.531460, 27.833199, 45.055904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669948, -0.190488, -0.717554,
		0.288755, -0.823563, 0.488227,
		-0.683952, -0.534284, -0.496740,
		32.326275, 27.672913, 44.906883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232826, 27.656057, 44.824615>,  <32.805042, 28.046911, 45.254601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232826, 27.656057, 44.824615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875950, 27.586689, 44.657803>,  <32.661823, 27.545069, 44.557716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875950, 27.586689, 44.657803>,  <33.232826, 27.656057, 44.824615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875950, 27.586689, 44.657803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444050, -0.168115, -0.880089,
		0.082515, -0.970393, 0.226998,
		-0.892195, -0.173419, -0.417031,
		32.608292, 27.534662, 44.532692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.419392, 27.063416, 44.486866>,  <33.232826, 27.656057, 44.824615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.419392, 27.063416, 44.486866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102047, 27.228834, 44.308178>,  <32.911640, 27.328085, 44.200966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102047, 27.228834, 44.308178>,  <33.419392, 27.063416, 44.486866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102047, 27.228834, 44.308178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466264, -0.058981, -0.882677,
		-0.391378, -0.908569, -0.146030,
		-0.793360, 0.413549, -0.446717,
		32.864040, 27.352900, 44.174164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.257309, 26.666121, 43.870708>,  <33.419392, 27.063416, 44.486866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.257309, 26.666121, 43.870708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059029, 27.008144, 43.809845>,  <32.940060, 27.213358, 43.773327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059029, 27.008144, 43.809845>,  <33.257309, 26.666121, 43.870708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059029, 27.008144, 43.809845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198441, -0.059057, -0.978332,
		-0.845516, -0.515159, -0.140404,
		-0.495705, 0.855057, -0.152163,
		32.910316, 27.264662, 43.764194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838646, 26.551714, 43.243706>,  <33.257309, 26.666121, 43.870708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838646, 26.551714, 43.243706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882084, 26.944532, 43.305408>,  <32.908146, 27.180223, 43.342430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.882084, 26.944532, 43.305408>,  <32.838646, 26.551714, 43.243706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.882084, 26.944532, 43.305408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428311, 0.093813, -0.898748,
		-0.897082, 0.163671, -0.410433,
		0.108595, 0.982044, 0.154260,
		32.914661, 27.239145, 43.351688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.652420, 26.827583, 42.637360>,  <32.838646, 26.551714, 43.243706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.652420, 26.827583, 42.637360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870098, 27.113295, 42.813385>,  <33.000706, 27.284721, 42.919003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.870098, 27.113295, 42.813385>,  <32.652420, 26.827583, 42.637360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.870098, 27.113295, 42.813385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380334, 0.257499, -0.888279,
		-0.747793, 0.650772, -0.131534,
		0.544198, 0.714276, 0.440067,
		33.033356, 27.327578, 42.945404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.526585, 27.504309, 42.318638>,  <32.652420, 26.827583, 42.637360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.526585, 27.504309, 42.318638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889782, 27.523073, 42.485180>,  <33.107700, 27.534332, 42.585106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.889782, 27.523073, 42.485180>,  <32.526585, 27.504309, 42.318638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.889782, 27.523073, 42.485180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386687, 0.288784, -0.875829,
		-0.161322, 0.956244, 0.244074,
		0.907991, 0.046910, 0.416354,
		33.162178, 27.537146, 42.610085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736828, 28.191206, 42.333347>,  <32.526585, 27.504309, 42.318638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736828, 28.191206, 42.333347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037022, 27.930025, 42.292496>,  <33.217136, 27.773317, 42.267986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037022, 27.930025, 42.292496>,  <32.736828, 28.191206, 42.333347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037022, 27.930025, 42.292496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163059, 0.332694, -0.928831,
		0.640458, 0.680419, 0.356151,
		0.750483, -0.652951, -0.102128,
		33.262165, 27.734140, 42.261856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.190189, 28.612268, 41.902122>,  <32.736828, 28.191206, 42.333347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.190189, 28.612268, 41.902122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293053, 28.226269, 41.881527>,  <33.354771, 27.994669, 41.869167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.293053, 28.226269, 41.881527>,  <33.190189, 28.612268, 41.902122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.293053, 28.226269, 41.881527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154867, 0.093747, -0.983478,
		0.953880, 0.244933, 0.173553,
		0.257156, -0.964997, -0.051491,
		33.370201, 27.936769, 41.866081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816223, 28.604923, 41.495865>,  <33.190189, 28.612268, 41.902122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816223, 28.604923, 41.495865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655449, 28.238682, 41.500210>,  <33.558983, 28.018938, 41.502815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655449, 28.238682, 41.500210>,  <33.816223, 28.604923, 41.495865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655449, 28.238682, 41.500210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069570, -0.042360, -0.996677,
		0.913020, -0.399848, 0.080724,
		-0.401939, -0.915602, 0.010858,
		33.534866, 27.964001, 41.503468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.259174, 28.040600, 41.184456>,  <33.816223, 28.604923, 41.495865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.259174, 28.040600, 41.184456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866322, 27.972080, 41.153301>,  <33.630608, 27.930967, 41.134609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.866322, 27.972080, 41.153301>,  <34.259174, 28.040600, 41.184456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.866322, 27.972080, 41.153301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066795, 0.069595, -0.995337,
		0.175925, -0.982757, -0.056910,
		-0.982135, -0.171303, -0.077886,
		33.571682, 27.920691, 41.129936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.298050, 27.778276, 40.540684>,  <34.259174, 28.040600, 41.184456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.298050, 27.778276, 40.540684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908737, 27.838848, 40.609722>,  <33.675148, 27.875191, 40.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.908737, 27.838848, 40.609722>,  <34.298050, 27.778276, 40.540684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.908737, 27.838848, 40.609722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165254, 0.059871, -0.984432,
		-0.159404, -0.986653, -0.033247,
		-0.973284, 0.151428, 0.172592,
		33.616753, 27.884277, 40.661499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.007374, 27.467188, 40.051105>,  <34.298050, 27.778276, 40.540684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.007374, 27.467188, 40.051105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721935, 27.707729, 40.194862>,  <33.550674, 27.852055, 40.281116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.721935, 27.707729, 40.194862>,  <34.007374, 27.467188, 40.051105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721935, 27.707729, 40.194862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323085, 0.172697, -0.930479,
		-0.621613, -0.780096, 0.071054,
		-0.713592, 0.601354, 0.359388,
		33.507858, 27.888136, 40.302677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353912, 27.319473, 39.875923>,  <34.007374, 27.467188, 40.051105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353912, 27.319473, 39.875923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298016, 27.705976, 39.962475>,  <33.264477, 27.937878, 40.014404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.298016, 27.705976, 39.962475>,  <33.353912, 27.319473, 39.875923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.298016, 27.705976, 39.962475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372545, 0.151161, -0.915620,
		-0.917432, -0.208560, 0.338851,
		-0.139741, 0.966257, 0.216378,
		33.256092, 27.995853, 40.027390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024025, 27.649792, 39.259342>,  <33.353912, 27.319473, 39.875923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024025, 27.649792, 39.259342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086971, 27.986492, 39.465908>,  <33.124741, 28.188513, 39.589848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086971, 27.986492, 39.465908>,  <33.024025, 27.649792, 39.259342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086971, 27.986492, 39.465908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303198, 0.538860, -0.785940,
		-0.939844, -0.032896, 0.340017,
		0.157367, 0.841753, 0.516418,
		33.134182, 28.239017, 39.620834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.419662, 28.069004, 39.209476>,  <33.024025, 27.649792, 39.259342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.419662, 28.069004, 39.209476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728519, 28.313255, 39.279823>,  <32.913834, 28.459806, 39.322033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.728519, 28.313255, 39.279823>,  <32.419662, 28.069004, 39.209476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.728519, 28.313255, 39.279823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322778, 0.615288, -0.719190,
		-0.547366, 0.498552, 0.672187,
		0.772143, 0.610628, 0.175867,
		32.960163, 28.496443, 39.332584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098156, 28.722744, 39.061363>,  <32.419662, 28.069004, 39.209476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098156, 28.722744, 39.061363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491310, 28.796103, 39.068272>,  <32.727203, 28.840118, 39.072414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491310, 28.796103, 39.068272>,  <32.098156, 28.722744, 39.061363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491310, 28.796103, 39.068272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135044, 0.781130, -0.609589,
		-0.125285, 0.596825, 0.792530,
		0.982887, 0.183398, 0.017266,
		32.786175, 28.851122, 39.073452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143894, 29.439922, 39.163490>,  <32.098156, 28.722744, 39.061363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143894, 29.439922, 39.163490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486328, 29.319775, 38.995255>,  <32.691788, 29.247686, 38.894314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.486328, 29.319775, 38.995255>,  <32.143894, 29.439922, 39.163490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486328, 29.319775, 38.995255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011696, 0.824835, -0.565253,
		0.516704, 0.478985, 0.709641,
		0.856085, -0.300368, -0.420593,
		32.743153, 29.229664, 38.869076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423836, 30.078295, 38.844250>,  <32.143894, 29.439922, 39.163490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423836, 30.078295, 38.844250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644867, 29.809633, 38.646851>,  <32.777485, 29.648438, 38.528412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.644867, 29.809633, 38.646851>,  <32.423836, 30.078295, 38.844250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.644867, 29.809633, 38.646851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014629, 0.584203, -0.811476,
		0.833334, 0.455621, 0.312991,
		0.552576, -0.671652, -0.493501,
		32.810638, 29.608137, 38.498798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963524, 30.339621, 38.650684>,  <32.423836, 30.078295, 38.844250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963524, 30.339621, 38.650684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901302, 30.054504, 38.377121>,  <32.863972, 29.883434, 38.212982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901302, 30.054504, 38.377121>,  <32.963524, 30.339621, 38.650684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901302, 30.054504, 38.377121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027230, 0.695169, -0.718330,
		0.987453, -0.093113, -0.127543,
		-0.155550, -0.712790, -0.683911,
		32.854637, 29.840668, 38.171947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.435104, 30.434595, 38.155167>,  <32.963524, 30.339621, 38.650684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.435104, 30.434595, 38.155167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147114, 30.227329, 37.970497>,  <32.974319, 30.102970, 37.859695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147114, 30.227329, 37.970497>,  <33.435104, 30.434595, 38.155167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147114, 30.227329, 37.970497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037086, 0.693008, -0.719975,
		0.693008, -0.501243, -0.518165,
		0.719975, 0.518165, 0.461671,
		32.931122, 30.071880, 37.831997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.564163, 30.610643, 37.421047>,  <33.435104, 30.434595, 38.155167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.564163, 30.610643, 37.421047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198208, 30.450760, 37.398411>,  <32.978634, 30.354830, 37.384830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198208, 30.450760, 37.398411>,  <33.564163, 30.610643, 37.421047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198208, 30.450760, 37.398411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130557, 0.425599, -0.895444,
		0.381996, -0.811851, -0.441563,
		-0.914896, -0.399705, -0.056584,
		32.923740, 30.330847, 37.381435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511314, 30.287605, 36.767399>,  <33.564163, 30.610643, 37.421047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511314, 30.287605, 36.767399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121525, 30.312408, 36.853703>,  <32.887650, 30.327290, 36.905483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121525, 30.312408, 36.853703>,  <33.511314, 30.287605, 36.767399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121525, 30.312408, 36.853703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177851, 0.373235, -0.910530,
		-0.136987, -0.925663, -0.352680,
		-0.974476, 0.062007, 0.215759,
		32.829182, 30.331011, 36.918430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147217, 30.024532, 36.150528>,  <33.511314, 30.287605, 36.767399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147217, 30.024532, 36.150528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908180, 30.267117, 36.360325>,  <32.764759, 30.412668, 36.486202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908180, 30.267117, 36.360325>,  <33.147217, 30.024532, 36.150528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908180, 30.267117, 36.360325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128427, 0.573296, -0.809221,
		-0.791450, -0.550940, -0.264709,
		-0.597589, 0.606463, 0.524491,
		32.728905, 30.449055, 36.517673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590790, 30.207533, 35.686020>,  <33.147217, 30.024532, 36.150528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590790, 30.207533, 35.686020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578632, 30.501945, 35.956528>,  <32.571339, 30.678593, 36.118832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.578632, 30.501945, 35.956528>,  <32.590790, 30.207533, 35.686020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.578632, 30.501945, 35.956528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023938, 0.675848, -0.736653,
		-0.999251, -0.038577, -0.002922,
		-0.030393, 0.736031, 0.676265,
		32.569515, 30.722755, 36.159409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.974112, 30.598593, 35.527676>,  <32.590790, 30.207533, 35.686020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.974112, 30.598593, 35.527676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200531, 30.852961, 35.737511>,  <32.336384, 31.005581, 35.863411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200531, 30.852961, 35.737511>,  <31.974112, 30.598593, 35.527676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200531, 30.852961, 35.737511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176187, 0.714969, -0.676592,
		-0.805323, 0.290560, 0.516749,
		0.566051, 0.635920, 0.524588,
		32.370346, 31.043737, 35.894886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556618, 31.261179, 35.448193>,  <31.974112, 30.598593, 35.527676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556618, 31.261179, 35.448193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926203, 31.355820, 35.568398>,  <32.147953, 31.412605, 35.640522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.926203, 31.355820, 35.568398>,  <31.556618, 31.261179, 35.448193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926203, 31.355820, 35.568398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027261, 0.824440, -0.565292,
		-0.381506, 0.514117, 0.768204,
		0.923964, 0.236604, 0.300514,
		32.203392, 31.426802, 35.658550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545637, 31.980862, 35.661133>,  <31.556618, 31.261179, 35.448193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545637, 31.980862, 35.661133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927259, 31.884287, 35.590160>,  <32.156235, 31.826342, 35.547577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.927259, 31.884287, 35.590160>,  <31.545637, 31.980862, 35.661133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.927259, 31.884287, 35.590160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081217, 0.778405, -0.622487,
		0.288406, 0.579477, 0.762252,
		0.954058, -0.241437, -0.177433,
		32.213478, 31.811855, 35.536930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.887037, 32.635334, 35.673965>,  <31.545637, 31.980862, 35.661133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.887037, 32.635334, 35.673965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127922, 32.382977, 35.478287>,  <32.272453, 32.231560, 35.360882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.127922, 32.382977, 35.478287>,  <31.887037, 32.635334, 35.673965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127922, 32.382977, 35.478287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069124, 0.651672, -0.755345,
		0.795339, 0.421061, 0.436053,
		0.602210, -0.630897, -0.489195,
		32.308586, 32.193707, 35.331528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462490, 33.020016, 35.530918>,  <31.887037, 32.635334, 35.673965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462490, 33.020016, 35.530918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436066, 32.719830, 35.267879>,  <32.420212, 32.539719, 35.110058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.436066, 32.719830, 35.267879>,  <32.462490, 33.020016, 35.530918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.436066, 32.719830, 35.267879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108909, 0.649677, -0.752369,
		0.991855, -0.121318, 0.038817,
		-0.066057, -0.750468, -0.657598,
		32.416248, 32.494690, 35.070599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.996532, 33.142342, 35.040657>,  <32.462490, 33.020016, 35.530918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.996532, 33.142342, 35.040657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764946, 32.873672, 34.855766>,  <32.625996, 32.712471, 34.744831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.764946, 32.873672, 34.855766>,  <32.996532, 33.142342, 35.040657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.764946, 32.873672, 34.855766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211260, 0.423968, -0.880693,
		0.787507, -0.607541, -0.103565,
		-0.578966, -0.671674, -0.462227,
		32.591255, 32.672169, 34.717098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.450966, 32.876518, 34.492916>,  <32.996532, 33.142342, 35.040657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.450966, 32.876518, 34.492916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066425, 32.810913, 34.404461>,  <32.835701, 32.771549, 34.351387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066425, 32.810913, 34.404461>,  <33.450966, 32.876518, 34.492916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066425, 32.810913, 34.404461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114411, 0.492563, -0.862723,
		0.250422, -0.854681, -0.454762,
		-0.961353, -0.164015, -0.221134,
		32.778019, 32.761707, 34.338120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079247, 33.084709, 34.715767>,  <33.450966, 32.876518, 34.492916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079247, 33.084709, 34.715767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234116, 32.808887, 34.470943>,  <34.327038, 32.643394, 34.324051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.234116, 32.808887, 34.470943>,  <34.079247, 33.084709, 34.715767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.234116, 32.808887, 34.470943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267932, -0.551042, 0.790295,
		-0.882218, -0.469971, -0.028596,
		0.387174, -0.689551, -0.612059,
		34.350269, 32.602024, 34.287327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752716, 32.307388, 34.826664>,  <34.079247, 33.084709, 34.715767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752716, 32.307388, 34.826664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117359, 32.305542, 34.662254>,  <34.336147, 32.304436, 34.563606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.117359, 32.305542, 34.662254>,  <33.752716, 32.307388, 34.826664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.117359, 32.305542, 34.662254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329779, -0.588704, 0.738019,
		-0.245377, -0.808335, -0.535149,
		0.911612, -0.004612, -0.411027,
		34.390842, 32.304157, 34.538948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951202, 31.610893, 34.738235>,  <33.752716, 32.307388, 34.826664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951202, 31.610893, 34.738235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294842, 31.815531, 34.732304>,  <34.501026, 31.938313, 34.728745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.294842, 31.815531, 34.732304>,  <33.951202, 31.610893, 34.738235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294842, 31.815531, 34.732304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316892, -0.508943, 0.800348,
		0.401903, -0.692279, -0.599353,
		0.859100, 0.511592, -0.014833,
		34.552570, 31.969007, 34.727852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547321, 31.080357, 34.738537>,  <33.951202, 31.610893, 34.738235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547321, 31.080357, 34.738537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674137, 31.433205, 34.877876>,  <34.750229, 31.644915, 34.961479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.674137, 31.433205, 34.877876>,  <34.547321, 31.080357, 34.738537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.674137, 31.433205, 34.877876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276721, -0.437351, 0.855657,
		0.907144, -0.174885, -0.382761,
		0.317042, 0.882122, 0.348346,
		34.769249, 31.697842, 34.982380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.298100, 31.064316, 34.902836>,  <34.547321, 31.080357, 34.738537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.298100, 31.064316, 34.902836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193653, 31.371798, 35.136387>,  <35.130985, 31.556288, 35.276516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.193653, 31.371798, 35.136387>,  <35.298100, 31.064316, 34.902836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.193653, 31.371798, 35.136387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454331, -0.435809, 0.776952,
		0.851706, 0.468146, -0.235451,
		-0.261115, 0.768707, 0.583874,
		35.115318, 31.602409, 35.311550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.760460, 31.041044, 35.367718>,  <35.298100, 31.064316, 34.902836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.760460, 31.041044, 35.367718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521633, 31.302496, 35.553741>,  <35.378338, 31.459368, 35.665356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.521633, 31.302496, 35.553741>,  <35.760460, 31.041044, 35.367718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521633, 31.302496, 35.553741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360093, -0.299664, 0.883479,
		0.716831, 0.694958, -0.056449,
		-0.597065, 0.653631, 0.465058,
		35.342514, 31.498585, 35.693260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186939, 31.347401, 35.866047>,  <35.760460, 31.041044, 35.367718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186939, 31.347401, 35.866047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801876, 31.373619, 35.971111>,  <35.570839, 31.389351, 36.034149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801876, 31.373619, 35.971111>,  <36.186939, 31.347401, 35.866047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801876, 31.373619, 35.971111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227217, -0.331835, 0.915565,
		0.147172, 0.941058, 0.304551,
		-0.962659, 0.065547, 0.262661,
		35.513077, 31.393284, 36.049908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078453, 31.805353, 36.483334>,  <36.186939, 31.347401, 35.866047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078453, 31.805353, 36.483334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769913, 31.550810, 36.480003>,  <35.584789, 31.398085, 36.478004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769913, 31.550810, 36.480003>,  <36.078453, 31.805353, 36.483334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769913, 31.550810, 36.480003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247462, -0.311957, 0.917303,
		-0.586331, 0.705500, 0.398102,
		-0.771348, -0.636359, -0.008326,
		35.538509, 31.359901, 36.477505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043915, 31.774145, 37.201618>,  <36.078453, 31.805353, 36.483334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043915, 31.774145, 37.201618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801655, 31.483627, 37.071587>,  <35.656300, 31.309317, 36.993568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.801655, 31.483627, 37.071587>,  <36.043915, 31.774145, 37.201618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.801655, 31.483627, 37.071587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201593, -0.535255, 0.820282,
		-0.769768, 0.431273, 0.470595,
		-0.605654, -0.726295, -0.325081,
		35.619957, 31.265739, 36.974064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.697174, 31.567451, 37.799538>,  <36.043915, 31.774145, 37.201618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.697174, 31.567451, 37.799538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637020, 31.262857, 37.547340>,  <35.600925, 31.080101, 37.396023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.637020, 31.262857, 37.547340>,  <35.697174, 31.567451, 37.799538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.637020, 31.262857, 37.547340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217876, -0.647597, 0.730170,
		-0.964320, -0.027559, 0.263301,
		-0.150390, -0.761484, -0.630495,
		35.591904, 31.034412, 37.358192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.229744, 31.203653, 38.146408>,  <35.697174, 31.567451, 37.799538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.229744, 31.203653, 38.146408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384220, 30.947407, 37.880936>,  <35.476906, 30.793659, 37.721653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.384220, 30.947407, 37.880936>,  <35.229744, 31.203653, 38.146408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384220, 30.947407, 37.880936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008568, -0.721958, 0.691884,
		-0.922381, -0.261509, -0.284299,
		0.386185, -0.640617, -0.663680,
		35.500076, 30.755222, 37.681831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791611, 30.525043, 38.066322>,  <35.229744, 31.203653, 38.146408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791611, 30.525043, 38.066322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168625, 30.453705, 37.953316>,  <35.394833, 30.410902, 37.885513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168625, 30.453705, 37.953316>,  <34.791611, 30.525043, 38.066322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168625, 30.453705, 37.953316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036790, -0.785055, 0.618333,
		-0.332068, -0.593195, -0.733383,
		0.942538, -0.178347, -0.282515,
		35.451385, 30.400200, 37.868561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814266, 29.809813, 37.923431>,  <34.791611, 30.525043, 38.066322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814266, 29.809813, 37.923431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199699, 29.904020, 37.974083>,  <35.430962, 29.960545, 38.004475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.199699, 29.904020, 37.974083>,  <34.814266, 29.809813, 37.923431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.199699, 29.904020, 37.974083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115624, -0.793955, 0.596881,
		0.241112, -0.560505, -0.792275,
		0.963585, 0.235521, 0.126624,
		35.488773, 29.974676, 38.012070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227062, 29.192640, 37.768116>,  <34.814266, 29.809813, 37.923431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227062, 29.192640, 37.768116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449238, 29.436384, 37.994450>,  <35.582542, 29.582630, 38.130249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.449238, 29.436384, 37.994450>,  <35.227062, 29.192640, 37.768116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.449238, 29.436384, 37.994450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256543, -0.772829, 0.580449,
		0.790998, -0.177240, -0.585584,
		0.555435, 0.609361, 0.565836,
		35.615868, 29.619192, 38.164200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.825592, 28.881805, 37.807831>,  <35.227062, 29.192640, 37.768116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.825592, 28.881805, 37.807831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846138, 29.127172, 38.123066>,  <35.858463, 29.274393, 38.312206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.846138, 29.127172, 38.123066>,  <35.825592, 28.881805, 37.807831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846138, 29.127172, 38.123066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417556, -0.730034, 0.541015,
		0.907198, 0.301283, -0.293632,
		0.051363, 0.613416, 0.788088,
		35.861546, 29.311197, 38.359493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.452808, 28.874016, 38.125317>,  <35.825592, 28.881805, 37.807831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.452808, 28.874016, 38.125317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223015, 29.009447, 38.423397>,  <36.085136, 29.090706, 38.602245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.223015, 29.009447, 38.423397>,  <36.452808, 28.874016, 38.125317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223015, 29.009447, 38.423397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281805, -0.772961, 0.568433,
		0.768473, 0.536560, 0.348644,
		-0.574487, 0.338576, 0.745205,
		36.050667, 29.111019, 38.646957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.835640, 28.697260, 38.731556>,  <36.452808, 28.874016, 38.125317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.835640, 28.697260, 38.731556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473801, 28.784657, 38.877964>,  <36.256699, 28.837095, 38.965809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.473801, 28.784657, 38.877964>,  <36.835640, 28.697260, 38.731556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473801, 28.784657, 38.877964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205354, -0.529075, 0.823352,
		0.373548, 0.819964, 0.433730,
		-0.904595, 0.218493, 0.366018,
		36.202423, 28.850204, 38.987770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.953205, 28.733179, 39.485619>,  <36.835640, 28.697260, 38.731556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.953205, 28.733179, 39.485619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559795, 28.673777, 39.444370>,  <36.323750, 28.638136, 39.419621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559795, 28.673777, 39.444370>,  <36.953205, 28.733179, 39.485619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559795, 28.673777, 39.444370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003308, -0.585061, 0.810983,
		-0.180768, 0.797277, 0.575910,
		-0.983520, -0.148505, -0.103123,
		36.264740, 28.629225, 39.413433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640190, 29.001173, 40.097454>,  <36.953205, 28.733179, 39.485619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640190, 29.001173, 40.097454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392899, 28.737701, 39.925903>,  <36.244522, 28.579618, 39.822975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.392899, 28.737701, 39.925903>,  <36.640190, 29.001173, 40.097454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392899, 28.737701, 39.925903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136963, -0.447015, 0.883979,
		-0.773973, 0.605241, 0.186142,
		-0.618228, -0.658681, -0.428874,
		36.207432, 28.540096, 39.797241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005444, 28.923523, 40.505543>,  <36.640190, 29.001173, 40.097454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005444, 28.923523, 40.505543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011475, 28.583326, 40.295235>,  <36.015091, 28.379208, 40.169048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.011475, 28.583326, 40.295235>,  <36.005444, 28.923523, 40.505543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.011475, 28.583326, 40.295235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088285, -0.524911, 0.846566,
		-0.995981, 0.033656, -0.082999,
		0.015075, -0.850491, -0.525773,
		36.015999, 28.328178, 40.137505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603260, 28.431034, 40.945412>,  <36.005444, 28.923523, 40.505543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603260, 28.431034, 40.945412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776741, 28.186457, 40.680672>,  <35.880829, 28.039711, 40.521828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.776741, 28.186457, 40.680672>,  <35.603260, 28.431034, 40.945412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776741, 28.186457, 40.680672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047660, -0.749061, 0.660785,
		-0.899795, -0.255039, -0.354010,
		0.433701, -0.611443, -0.661846,
		35.906853, 28.003023, 40.482117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133183, 27.729130, 40.868176>,  <35.603260, 28.431034, 40.945412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133183, 27.729130, 40.868176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516380, 27.671474, 40.769005>,  <35.746300, 27.636881, 40.709503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.516380, 27.671474, 40.769005>,  <35.133183, 27.729130, 40.868176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.516380, 27.671474, 40.769005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040815, -0.787181, 0.615370,
		-0.283858, -0.599642, -0.748234,
		0.957997, -0.144139, -0.247922,
		35.803780, 27.628233, 40.694630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.334873, 26.985094, 40.454880>,  <35.133183, 27.729130, 40.868176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.334873, 26.985094, 40.454880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598270, 27.149368, 40.707142>,  <35.756310, 27.247932, 40.858501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.598270, 27.149368, 40.707142>,  <35.334873, 26.985094, 40.454880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.598270, 27.149368, 40.707142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033891, -0.820950, 0.569994,
		0.751827, -0.396709, -0.526668,
		0.658489, 0.410687, 0.630657,
		35.795818, 27.272575, 40.896339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756500, 26.454493, 40.670155>,  <35.334873, 26.985094, 40.454880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756500, 26.454493, 40.670155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827316, 26.717041, 40.963505>,  <35.869804, 26.874571, 41.139515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827316, 26.717041, 40.963505>,  <35.756500, 26.454493, 40.670155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827316, 26.717041, 40.963505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150102, -0.718418, 0.679224,
		0.972691, -0.230327, -0.028663,
		0.177036, 0.656372, 0.733371,
		35.880428, 26.913952, 41.183517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345200, 26.262110, 41.103657>,  <35.756500, 26.454493, 40.670155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345200, 26.262110, 41.103657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128372, 26.488150, 41.352436>,  <35.998276, 26.623774, 41.501705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.128372, 26.488150, 41.352436>,  <36.345200, 26.262110, 41.103657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.128372, 26.488150, 41.352436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123997, -0.785809, 0.605912,
		0.831136, 0.251325, 0.496033,
		-0.542068, 0.565102, 0.621951,
		35.965752, 26.657681, 41.539021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560017, 26.140018, 41.773907>,  <36.345200, 26.262110, 41.103657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560017, 26.140018, 41.773907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180138, 26.264183, 41.790470>,  <35.952209, 26.338682, 41.800407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.180138, 26.264183, 41.790470>,  <36.560017, 26.140018, 41.773907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.180138, 26.264183, 41.790470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188187, -0.671372, 0.716829,
		0.250311, 0.672981, 0.696018,
		-0.949700, 0.310412, 0.041406,
		35.895229, 26.357307, 41.802891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.363865, 26.510551, 42.356247>,  <36.560017, 26.140018, 41.773907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.363865, 26.510551, 42.356247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071342, 26.294043, 42.190247>,  <35.895828, 26.164137, 42.090649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.071342, 26.294043, 42.190247>,  <36.363865, 26.510551, 42.356247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.071342, 26.294043, 42.190247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034787, -0.578059, 0.815253,
		-0.681166, 0.610633, 0.403907,
		-0.731302, -0.541272, -0.414996,
		35.851952, 26.131660, 42.065746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.778778, 26.516567, 42.799065>,  <36.363865, 26.510551, 42.356247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.778778, 26.516567, 42.799065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812752, 26.182604, 42.581547>,  <35.833134, 25.982225, 42.451035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.812752, 26.182604, 42.581547>,  <35.778778, 26.516567, 42.799065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.812752, 26.182604, 42.581547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010388, -0.546483, 0.837406,
		-0.996333, -0.065473, -0.055087,
		0.084932, -0.834907, -0.543798,
		35.838230, 25.932131, 42.418407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978825, 26.100197, 43.503841>,  <35.778778, 26.516567, 42.799065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978825, 26.100197, 43.503841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696648, 26.368395, 43.595749>,  <35.527344, 26.529314, 43.650894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.696648, 26.368395, 43.595749>,  <35.978825, 26.100197, 43.503841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.696648, 26.368395, 43.595749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313853, 0.004846, 0.949459,
		0.635494, 0.741899, -0.213855,
		-0.705439, 0.670495, 0.229768,
		35.485016, 26.569544, 43.664680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321472, 26.701866, 43.952400>,  <35.978825, 26.100197, 43.503841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321472, 26.701866, 43.952400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926620, 26.697493, 44.016212>,  <35.689709, 26.694868, 44.054501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.926620, 26.697493, 44.016212>,  <36.321472, 26.701866, 43.952400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926620, 26.697493, 44.016212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158317, 0.073309, 0.984663,
		-0.022463, 0.997249, -0.070634,
		-0.987133, -0.010936, 0.159528,
		35.630482, 26.694212, 44.064072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149570, 27.232218, 44.441338>,  <36.321472, 26.701866, 43.952400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149570, 27.232218, 44.441338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821079, 27.007084, 44.478848>,  <35.623985, 26.872004, 44.501354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.821079, 27.007084, 44.478848>,  <36.149570, 27.232218, 44.441338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821079, 27.007084, 44.478848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015160, 0.142765, 0.989641,
		-0.570392, 0.814147, -0.108711,
		-0.821233, -0.562835, 0.093775,
		35.574711, 26.838234, 44.506981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862316, 27.530182, 45.053181>,  <36.149570, 27.232218, 44.441338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862316, 27.530182, 45.053181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653301, 27.192085, 45.008423>,  <35.527893, 26.989227, 44.981567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.653301, 27.192085, 45.008423>,  <35.862316, 27.530182, 45.053181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.653301, 27.192085, 45.008423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292914, 0.054715, 0.954572,
		-0.800722, 0.531574, -0.276174,
		-0.522537, -0.845243, -0.111894,
		35.496540, 26.938513, 44.974854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176464, 27.703110, 45.159008>,  <35.862316, 27.530182, 45.053181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176464, 27.703110, 45.159008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196423, 27.311338, 45.237217>,  <35.208397, 27.076275, 45.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.196423, 27.311338, 45.237217>,  <35.176464, 27.703110, 45.159008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196423, 27.311338, 45.237217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490436, 0.146509, 0.859073,
		-0.870047, -0.138752, -0.473038,
		0.049894, -0.979430, 0.195519,
		35.211391, 27.017509, 45.295872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.571938, 27.507584, 45.413773>,  <35.176464, 27.703110, 45.159008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.571938, 27.507584, 45.413773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813637, 27.217833, 45.546535>,  <34.958656, 27.043982, 45.626194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813637, 27.217833, 45.546535>,  <34.571938, 27.507584, 45.413773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813637, 27.217833, 45.546535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328166, 0.153336, 0.932092,
		-0.726079, -0.672135, -0.145062,
		0.604249, -0.724377, 0.331906,
		34.994911, 27.000519, 45.646107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197456, 27.128725, 45.942295>,  <34.571938, 27.507584, 45.413773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197456, 27.128725, 45.942295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582085, 27.059278, 46.027367>,  <34.812862, 27.017611, 46.078411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582085, 27.059278, 46.027367>,  <34.197456, 27.128725, 45.942295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582085, 27.059278, 46.027367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188046, 0.147927, 0.970956,
		-0.200037, -0.973640, 0.109595,
		0.961573, -0.173618, 0.212680,
		34.870556, 27.007193, 46.091171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.157494, 26.841749, 46.608479>,  <34.197456, 27.128725, 45.942295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.157494, 26.841749, 46.608479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542564, 26.949095, 46.594406>,  <34.773605, 27.013502, 46.585964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.542564, 26.949095, 46.594406>,  <34.157494, 26.841749, 46.608479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.542564, 26.949095, 46.594406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019867, 0.199691, 0.979658,
		0.269931, -0.942393, 0.197569,
		0.962674, 0.268365, -0.035180,
		34.831367, 27.029604, 46.583851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431545, 26.620359, 47.200241>,  <34.157494, 26.841749, 46.608479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431545, 26.620359, 47.200241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 26.911263, 47.085968>,  <34.830959, 27.085804, 47.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.681179, 26.911263, 47.085968>,  <34.431545, 26.620359, 47.200241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.681179, 26.911263, 47.085968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051818, 0.403343, 0.913580,
		0.779638, -0.555346, 0.289404,
		0.624083, 0.727259, -0.285685,
		34.868404, 27.129440, 47.000263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810547, 26.758453, 47.778904>,  <34.431545, 26.620359, 47.200241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810547, 26.758453, 47.778904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884827, 27.096735, 47.578785>,  <34.929394, 27.299704, 47.458714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.884827, 27.096735, 47.578785>,  <34.810547, 26.758453, 47.778904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884827, 27.096735, 47.578785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060945, 0.518090, 0.853152,
		0.980714, -0.127941, 0.147752,
		0.185702, 0.845703, -0.500301,
		34.940536, 27.350447, 47.428696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428318, 27.101343, 48.073704>,  <34.810547, 26.758453, 47.778904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428318, 27.101343, 48.073704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214813, 27.382002, 47.884903>,  <35.086712, 27.550398, 47.771622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.214813, 27.382002, 47.884903>,  <35.428318, 27.101343, 48.073704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.214813, 27.382002, 47.884903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061663, 0.588974, 0.805796,
		0.843383, 0.400999, -0.357638,
		-0.533762, 0.701648, -0.472004,
		35.054684, 27.592497, 47.743301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832554, 27.643507, 47.943073>,  <35.428318, 27.101343, 48.073704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832554, 27.643507, 47.943073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994621, 27.994265, 48.046528>,  <36.091862, 28.204720, 48.108601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994621, 27.994265, 48.046528>,  <35.832554, 27.643507, 47.943073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994621, 27.994265, 48.046528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006896, 0.285821, -0.958258,
		-0.914214, 0.386477, 0.121854,
		0.405173, 0.876893, 0.258636,
		36.116173, 28.257332, 48.124119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484791, 28.175453, 47.671928>,  <35.832554, 27.643507, 47.943073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484791, 28.175453, 47.671928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832161, 28.349195, 47.767570>,  <36.040585, 28.453442, 47.824955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832161, 28.349195, 47.767570>,  <35.484791, 28.175453, 47.671928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832161, 28.349195, 47.767570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048837, 0.404959, -0.913030,
		-0.493408, 0.804576, 0.330464,
		0.868426, 0.434357, 0.239103,
		36.092690, 28.479502, 47.839302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.543968, 28.890436, 47.348969>,  <35.484791, 28.175453, 47.671928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.543968, 28.890436, 47.348969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924641, 28.795492, 47.426910>,  <36.153042, 28.738525, 47.473675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.924641, 28.795492, 47.426910>,  <35.543968, 28.890436, 47.348969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924641, 28.795492, 47.426910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245739, 0.208088, -0.946737,
		0.184172, 0.948872, 0.256362,
		0.951679, -0.237361, 0.194851,
		36.210144, 28.724283, 47.485367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.926643, 29.490175, 47.167702>,  <35.543968, 28.890436, 47.348969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.926643, 29.490175, 47.167702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191875, 29.190866, 47.159584>,  <36.351017, 29.011282, 47.154713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.191875, 29.190866, 47.159584>,  <35.926643, 29.490175, 47.167702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.191875, 29.190866, 47.159584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228362, 0.228036, -0.946494,
		0.712862, 0.622969, 0.322083,
		0.663082, -0.748271, -0.020296,
		36.390800, 28.966385, 47.153496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.568913, 29.741304, 47.309780>,  <35.926643, 29.490175, 47.167702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.568913, 29.741304, 47.309780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621815, 29.396435, 47.114162>,  <36.653557, 29.189512, 46.996792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.621815, 29.396435, 47.114162>,  <36.568913, 29.741304, 47.309780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621815, 29.396435, 47.114162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385713, 0.499255, -0.775867,
		0.913091, -0.086021, 0.398580,
		0.132252, -0.862174, -0.489045,
		36.661491, 29.137783, 46.967449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021141, 29.877428, 46.835583>,  <36.568913, 29.741304, 47.309780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021141, 29.877428, 46.835583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943008, 29.510166, 46.697693>,  <36.896130, 29.289808, 46.614960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.943008, 29.510166, 46.697693>,  <37.021141, 29.877428, 46.835583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943008, 29.510166, 46.697693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404959, 0.244628, -0.881002,
		0.893228, -0.311684, 0.324033,
		-0.195327, -0.918156, -0.344728,
		36.884411, 29.234720, 46.594276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.656288, 29.609869, 46.549606>,  <37.021141, 29.877428, 46.835583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.656288, 29.609869, 46.549606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340321, 29.418501, 46.396172>,  <37.150742, 29.303680, 46.304111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.340321, 29.418501, 46.396172>,  <37.656288, 29.609869, 46.549606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.340321, 29.418501, 46.396172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417262, 0.039038, -0.907948,
		0.449356, -0.877262, 0.168790,
		-0.789919, -0.478421, -0.383590,
		37.103344, 29.274975, 46.281094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.974430, 29.206408, 46.109505>,  <37.656288, 29.609869, 46.549606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.974430, 29.206408, 46.109505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598930, 29.171568, 45.976139>,  <37.373631, 29.150665, 45.896122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.598930, 29.171568, 45.976139>,  <37.974430, 29.206408, 46.109505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.598930, 29.171568, 45.976139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336890, -0.028430, -0.941115,
		0.072491, -0.995794, 0.056031,
		-0.938750, -0.087099, -0.333412,
		37.317307, 29.145439, 45.876114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934696, 28.650356, 45.479195>,  <37.974430, 29.206408, 46.109505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934696, 28.650356, 45.479195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622322, 28.898882, 45.453568>,  <37.434898, 29.047997, 45.438190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.622322, 28.898882, 45.453568>,  <37.934696, 28.650356, 45.479195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.622322, 28.898882, 45.453568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307652, 0.293353, -0.905149,
		-0.543587, -0.726576, -0.420239,
		-0.780938, 0.621315, -0.064069,
		37.388042, 29.085276, 45.434345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575066, 28.392420, 44.923920>,  <37.934696, 28.650356, 45.479195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575066, 28.392420, 44.923920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474270, 28.775227, 44.981361>,  <37.413792, 29.004910, 45.015827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474270, 28.775227, 44.981361>,  <37.575066, 28.392420, 44.923920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474270, 28.775227, 44.981361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221594, 0.201510, -0.954091,
		-0.942017, -0.208604, -0.262849,
		-0.251994, 0.957015, 0.143600,
		37.398670, 29.062330, 45.024441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.226650, 28.482754, 44.398998>,  <37.575066, 28.392420, 44.923920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.226650, 28.482754, 44.398998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311878, 28.845156, 44.545292>,  <37.363014, 29.062597, 44.633068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.311878, 28.845156, 44.545292>,  <37.226650, 28.482754, 44.398998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.311878, 28.845156, 44.545292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071125, 0.358954, -0.930642,
		-0.974446, 0.224301, 0.012041,
		0.213066, 0.906003, 0.365734,
		37.375797, 29.116957, 44.655014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.714817, 28.982922, 44.078587>,  <37.226650, 28.482754, 44.398998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.714817, 28.982922, 44.078587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052670, 29.168941, 44.184662>,  <37.255383, 29.280554, 44.248306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052670, 29.168941, 44.184662>,  <36.714817, 28.982922, 44.078587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052670, 29.168941, 44.184662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094836, 0.357545, -0.929068,
		-0.526880, 0.809870, 0.257891,
		0.844632, 0.465050, 0.265188,
		37.306061, 29.308456, 44.264217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602547, 29.589369, 43.878635>,  <36.714817, 28.982922, 44.078587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602547, 29.589369, 43.878635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997570, 29.527308, 43.868450>,  <37.234585, 29.490070, 43.862339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997570, 29.527308, 43.868450>,  <36.602547, 29.589369, 43.878635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997570, 29.527308, 43.868450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061008, 0.527404, -0.847421,
		0.144912, 0.835327, 0.530310,
		0.987562, -0.155155, -0.025466,
		37.293839, 29.480761, 43.860809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.880581, 30.207916, 43.877769>,  <36.602547, 29.589369, 43.878635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.880581, 30.207916, 43.877769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121616, 29.928122, 43.724091>,  <37.266235, 29.760244, 43.631882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121616, 29.928122, 43.724091>,  <36.880581, 30.207916, 43.877769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121616, 29.928122, 43.724091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133589, 0.563036, -0.815564,
		0.786793, 0.440124, 0.432722,
		0.602587, -0.699487, -0.384197,
		37.302391, 29.718275, 43.608833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451473, 30.633492, 43.456188>,  <36.880581, 30.207916, 43.877769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451473, 30.633492, 43.456188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474731, 30.246927, 43.356052>,  <37.488686, 30.014990, 43.295971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474731, 30.246927, 43.356052>,  <37.451473, 30.633492, 43.456188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474731, 30.246927, 43.356052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089779, 0.254814, -0.962814,
		0.994263, 0.033506, 0.101579,
		0.058143, -0.966409, -0.250344,
		37.492176, 29.957005, 43.280949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.059364, 30.516224, 43.128487>,  <37.451473, 30.633492, 43.456188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.059364, 30.516224, 43.128487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832634, 30.210556, 43.005360>,  <37.696598, 30.027155, 42.931484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.832634, 30.210556, 43.005360>,  <38.059364, 30.516224, 43.128487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.832634, 30.210556, 43.005360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255752, 0.191960, -0.947493,
		0.783136, -0.615786, 0.086631,
		-0.566823, -0.764172, -0.307820,
		37.662586, 29.981304, 42.913013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363194, 30.321009, 42.506897>,  <38.059364, 30.516224, 43.128487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363194, 30.321009, 42.506897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028614, 30.111771, 42.441505>,  <37.827866, 29.986227, 42.402271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028614, 30.111771, 42.441505>,  <38.363194, 30.321009, 42.506897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028614, 30.111771, 42.441505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063135, 0.204341, -0.976862,
		0.544398, -0.827415, -0.137894,
		-0.836448, -0.523096, -0.163482,
		37.777679, 29.954842, 42.392460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.440739, 29.850861, 41.956474>,  <38.363194, 30.321009, 42.506897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.440739, 29.850861, 41.956474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050838, 29.935123, 41.986092>,  <37.816898, 29.985682, 42.003864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050838, 29.935123, 41.986092>,  <38.440739, 29.850861, 41.956474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050838, 29.935123, 41.986092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019218, 0.251233, -0.967736,
		-0.222462, -0.944725, -0.240842,
		-0.974752, 0.210656, 0.074046,
		37.758411, 29.998320, 42.008305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056255, 29.477646, 41.455498>,  <38.440739, 29.850861, 41.956474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056255, 29.477646, 41.455498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825260, 29.790409, 41.549412>,  <37.686665, 29.978067, 41.605759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.825260, 29.790409, 41.549412>,  <38.056255, 29.477646, 41.455498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825260, 29.790409, 41.549412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059313, 0.246642, -0.967290,
		-0.814242, -0.572524, -0.096056,
		-0.577488, 0.781910, 0.234785,
		37.652012, 30.024982, 41.619846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565559, 29.477579, 40.954929>,  <38.056255, 29.477646, 41.455498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565559, 29.477579, 40.954929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565468, 29.850483, 41.099648>,  <37.565414, 30.074224, 41.186478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.565468, 29.850483, 41.099648>,  <37.565559, 29.477579, 40.954929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.565468, 29.850483, 41.099648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045669, 0.361407, -0.931289,
		-0.998957, -0.016737, 0.042492,
		-0.000230, 0.932258, 0.361794,
		37.565399, 30.130161, 41.208187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.941349, 29.853561, 40.693779>,  <37.565559, 29.477579, 40.954929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.941349, 29.853561, 40.693779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194317, 30.141779, 40.807529>,  <37.346096, 30.314709, 40.875778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.194317, 30.141779, 40.807529>,  <36.941349, 29.853561, 40.693779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194317, 30.141779, 40.807529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045012, 0.400676, -0.915113,
		-0.773321, 0.565931, 0.285827,
		0.632415, 0.720542, 0.284378,
		37.384041, 30.357941, 40.892841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.660728, 30.381369, 40.363453>,  <36.941349, 29.853561, 40.693779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.660728, 30.381369, 40.363453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035744, 30.485584, 40.455666>,  <37.260754, 30.548115, 40.510994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035744, 30.485584, 40.455666>,  <36.660728, 30.381369, 40.363453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035744, 30.485584, 40.455666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081317, 0.480185, -0.873390,
		-0.338253, 0.837580, 0.429004,
		0.937535, 0.260541, 0.230534,
		37.317005, 30.563747, 40.524826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.607189, 31.079969, 40.154842>,  <36.660728, 30.381369, 40.363453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.607189, 31.079969, 40.154842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997238, 31.006861, 40.205013>,  <37.231266, 30.962996, 40.235115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.997238, 31.006861, 40.205013>,  <36.607189, 31.079969, 40.154842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.997238, 31.006861, 40.205013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211822, 0.601481, -0.770293,
		0.065345, 0.777698, 0.625232,
		0.975121, -0.182773, 0.125430,
		37.289776, 30.952028, 40.242641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.888737, 31.649092, 39.954697>,  <36.607189, 31.079969, 40.154842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.888737, 31.649092, 39.954697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189228, 31.385084, 39.952232>,  <37.369522, 31.226679, 39.950752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189228, 31.385084, 39.952232>,  <36.888737, 31.649092, 39.954697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189228, 31.385084, 39.952232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385220, 0.445998, -0.807893,
		0.535974, 0.604534, 0.589297,
		0.751224, -0.660019, -0.006165,
		37.414597, 31.187078, 39.950382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.581814, 32.013618, 39.943741>,  <36.888737, 31.649092, 39.954697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.581814, 32.013618, 39.943741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639778, 31.652699, 39.781334>,  <37.674557, 31.436146, 39.683887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.639778, 31.652699, 39.781334>,  <37.581814, 32.013618, 39.943741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.639778, 31.652699, 39.781334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250786, 0.430448, -0.867076,
		0.957135, 0.023825, 0.288662,
		0.144912, -0.902301, -0.406022,
		37.683250, 31.382008, 39.659527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111362, 32.112144, 39.587200>,  <37.581814, 32.013618, 39.943741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111362, 32.112144, 39.587200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951565, 31.788141, 39.415482>,  <37.855686, 31.593740, 39.312450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.951565, 31.788141, 39.415482>,  <38.111362, 32.112144, 39.587200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.951565, 31.788141, 39.415482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303116, 0.325231, -0.895738,
		0.865172, -0.487971, 0.115596,
		-0.399498, -0.810006, -0.429292,
		37.831715, 31.545139, 39.286694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.580265, 31.757740, 39.129852>,  <38.111362, 32.112144, 39.587200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.580265, 31.757740, 39.129852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228397, 31.622820, 38.995743>,  <38.017277, 31.541868, 38.915276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228397, 31.622820, 38.995743>,  <38.580265, 31.757740, 39.129852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228397, 31.622820, 38.995743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164118, 0.446372, -0.879669,
		0.446372, -0.828842, -0.337302,
		0.879669, 0.337302, 0.335276,
		37.964497, 31.521629, 38.895161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708721, 31.470215, 38.555290>,  <38.580265, 31.757740, 39.129852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708721, 31.470215, 38.555290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314430, 31.517756, 38.507599>,  <38.077854, 31.546280, 38.478985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.314430, 31.517756, 38.507599>,  <38.708721, 31.470215, 38.555290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314430, 31.517756, 38.507599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146096, 0.252075, -0.956616,
		-0.083641, -0.960382, -0.265841,
		-0.985728, 0.118851, -0.119224,
		38.018711, 31.553411, 38.471832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695934, 31.285063, 37.812595>,  <38.708721, 31.470215, 38.555290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695934, 31.285063, 37.812595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361382, 31.468384, 37.932877>,  <38.160648, 31.578377, 38.005047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.361382, 31.468384, 37.932877>,  <38.695934, 31.285063, 37.812595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361382, 31.468384, 37.932877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077449, 0.444277, -0.892535,
		-0.542649, -0.769790, -0.336090,
		-0.836381, 0.458303, 0.300706,
		38.110466, 31.605875, 38.023087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141411, 31.168659, 37.299301>,  <38.695934, 31.285063, 37.812595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141411, 31.168659, 37.299301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077602, 31.508528, 37.500343>,  <38.039318, 31.712448, 37.620968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077602, 31.508528, 37.500343>,  <38.141411, 31.168659, 37.299301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077602, 31.508528, 37.500343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023622, 0.505693, -0.862390,
		-0.986912, -0.149439, -0.060596,
		-0.159518, 0.849672, 0.502604,
		38.029747, 31.763430, 37.651123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.736244, 31.501331, 36.827351>,  <38.141411, 31.168659, 37.299301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.736244, 31.501331, 36.827351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868607, 31.783848, 37.077682>,  <37.948025, 31.953358, 37.227882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.868607, 31.783848, 37.077682>,  <37.736244, 31.501331, 36.827351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.868607, 31.783848, 37.077682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095001, 0.634885, -0.766744,
		-0.938871, 0.313171, 0.142986,
		0.330902, 0.706290, 0.625827,
		37.967876, 31.995735, 37.265430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.391491, 32.081146, 36.555397>,  <37.736244, 31.501331, 36.827351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.391491, 32.081146, 36.555397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664703, 32.243134, 36.798534>,  <37.828632, 32.340324, 36.944416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.664703, 32.243134, 36.798534>,  <37.391491, 32.081146, 36.555397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664703, 32.243134, 36.798534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184038, 0.709941, -0.679790,
		-0.706823, 0.576184, 0.410383,
		0.683031, 0.404965, 0.607842,
		37.869614, 32.364624, 36.980888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445145, 32.807610, 36.553825>,  <37.391491, 32.081146, 36.555397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445145, 32.807610, 36.553825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815292, 32.728752, 36.683334>,  <38.037380, 32.681438, 36.761040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.815292, 32.728752, 36.683334>,  <37.445145, 32.807610, 36.553825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815292, 32.728752, 36.683334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376655, 0.574490, -0.726699,
		-0.042740, 0.794415, 0.605870,
		0.925367, -0.197145, 0.323774,
		38.092903, 32.669609, 36.780468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.861523, 33.389431, 36.710564>,  <37.445145, 32.807610, 36.553825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.861523, 33.389431, 36.710564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125488, 33.106079, 36.610397>,  <38.283867, 32.936069, 36.550297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.125488, 33.106079, 36.610397>,  <37.861523, 33.389431, 36.710564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.125488, 33.106079, 36.610397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410009, 0.618822, -0.670039,
		0.629608, 0.339493, 0.698812,
		0.659914, -0.708381, -0.250420,
		38.323463, 32.893566, 36.535271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483227, 33.717400, 36.710136>,  <37.861523, 33.389431, 36.710564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483227, 33.717400, 36.710136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584278, 33.393757, 36.497898>,  <38.644909, 33.199570, 36.370556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.584278, 33.393757, 36.497898>,  <38.483227, 33.717400, 36.710136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.584278, 33.393757, 36.497898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484841, 0.580421, -0.654248,
		0.837323, -0.091973, 0.538917,
		0.252626, -0.809106, -0.530592,
		38.660065, 33.151024, 36.338722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118160, 33.944801, 36.356014>,  <38.483227, 33.717400, 36.710136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118160, 33.944801, 36.356014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049126, 33.603947, 36.158394>,  <39.007706, 33.399433, 36.039822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.049126, 33.603947, 36.158394>,  <39.118160, 33.944801, 36.356014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049126, 33.603947, 36.158394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669685, 0.266297, -0.693259,
		0.722312, -0.450506, 0.524700,
		-0.172591, -0.852133, -0.494047,
		38.997349, 33.348309, 36.010181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741047, 33.544590, 36.307552>,  <39.118160, 33.944801, 36.356014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741047, 33.544590, 36.307552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484840, 33.463020, 36.011402>,  <39.331116, 33.414078, 35.833714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.484840, 33.463020, 36.011402>,  <39.741047, 33.544590, 36.307552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.484840, 33.463020, 36.011402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720917, 0.172523, -0.671204,
		0.264606, -0.963665, 0.036508,
		-0.640517, -0.203924, -0.740373,
		39.292686, 33.401844, 35.789291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.124809, 33.213558, 35.792751>,  <39.741047, 33.544590, 36.307552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.124809, 33.213558, 35.792751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795376, 33.309410, 35.587116>,  <39.597713, 33.366920, 35.463737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795376, 33.309410, 35.587116>,  <40.124809, 33.213558, 35.792751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795376, 33.309410, 35.587116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563151, 0.237513, -0.791485,
		-0.067559, -0.941365, -0.330559,
		-0.823588, 0.239626, -0.514084,
		39.548298, 33.381298, 35.432892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.303715, 32.932251, 35.092392>,  <40.124809, 33.213558, 35.792751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.303715, 32.932251, 35.092392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003990, 33.196922, 35.081676>,  <39.824154, 33.355724, 35.075249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.003990, 33.196922, 35.081676>,  <40.303715, 32.932251, 35.092392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.003990, 33.196922, 35.081676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407595, 0.428939, -0.806150,
		-0.521919, -0.614977, -0.591105,
		-0.749311, 0.661676, -0.026790,
		39.779198, 33.395424, 35.073639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070026, 33.018993, 34.420372>,  <40.303715, 32.932251, 35.092392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070026, 33.018993, 34.420372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992229, 33.355721, 34.621773>,  <39.945553, 33.557758, 34.742611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.992229, 33.355721, 34.621773>,  <40.070026, 33.018993, 34.420372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.992229, 33.355721, 34.621773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417021, 0.535565, -0.734346,
		-0.887844, 0.067146, -0.455220,
		-0.194491, 0.841821, 0.503499,
		39.933884, 33.608265, 34.772823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.744347, 33.291676, 34.021442>,  <40.070026, 33.018993, 34.420372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.744347, 33.291676, 34.021442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899937, 33.579273, 34.251835>,  <39.993290, 33.751831, 34.390068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899937, 33.579273, 34.251835>,  <39.744347, 33.291676, 34.021442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899937, 33.579273, 34.251835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130586, 0.575869, -0.807045,
		-0.911946, 0.389136, 0.130109,
		0.388976, 0.718991, 0.575977,
		40.016628, 33.794971, 34.424629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439095, 33.918087, 33.862808>,  <39.744347, 33.291676, 34.021442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439095, 33.918087, 33.862808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783524, 34.025101, 34.035774>,  <39.990181, 34.089310, 34.139553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.783524, 34.025101, 34.035774>,  <39.439095, 33.918087, 33.862808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783524, 34.025101, 34.035774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128037, 0.708917, -0.693572,
		-0.492099, 0.652580, 0.576175,
		0.861072, 0.267535, 0.432412,
		40.041843, 34.105362, 34.165497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445816, 34.565117, 34.030766>,  <39.439095, 33.918087, 33.862808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445816, 34.565117, 34.030766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820602, 34.449055, 33.952888>,  <40.045475, 34.379417, 33.906162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.820602, 34.449055, 33.952888>,  <39.445816, 34.565117, 34.030766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820602, 34.449055, 33.952888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046918, 0.656607, -0.752772,
		0.346256, 0.696187, 0.628832,
		0.936966, -0.290155, -0.194690,
		40.101692, 34.362007, 33.894482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000507, 35.087547, 34.194229>,  <39.445816, 34.565117, 34.030766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000507, 35.087547, 34.194229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118256, 34.849598, 33.895039>,  <40.188904, 34.706829, 33.715523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.118256, 34.849598, 33.895039>,  <40.000507, 35.087547, 34.194229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.118256, 34.849598, 33.895039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160062, 0.802288, -0.575078,
		0.942193, 0.049562, 0.331384,
		0.294367, -0.594877, -0.747977,
		40.206566, 34.671135, 33.670647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.660042, 35.207531, 34.437836>,  <40.000507, 35.087547, 34.194229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.660042, 35.207531, 34.437836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014912, 35.332432, 34.573727>,  <41.227833, 35.407372, 34.655262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.014912, 35.332432, 34.573727>,  <40.660042, 35.207531, 34.437836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.014912, 35.332432, 34.573727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392336, -0.897998, -0.199177,
		0.242884, 0.309993, -0.919191,
		0.887175, 0.312255, 0.339731,
		41.281063, 35.426109, 34.675648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.201687, 34.972237, 34.013721>,  <40.660042, 35.207531, 34.437836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.201687, 34.972237, 34.013721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349590, 35.039665, 34.379204>,  <41.438332, 35.080120, 34.598495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349590, 35.039665, 34.379204>,  <41.201687, 34.972237, 34.013721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349590, 35.039665, 34.379204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431120, -0.902259, -0.008010,
		0.823052, 0.396880, -0.406290,
		0.369758, 0.168567, 0.913709,
		41.460518, 35.090237, 34.653316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.031322, 35.047222, 34.065552>,  <41.201687, 34.972237, 34.013721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.031322, 35.047222, 34.065552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841644, 34.885544, 34.378414>,  <41.727837, 34.788536, 34.566132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.841644, 34.885544, 34.378414>,  <42.031322, 35.047222, 34.065552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.841644, 34.885544, 34.378414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567802, -0.819349, -0.079173,
		0.672859, 0.406566, 0.618033,
		-0.474196, -0.404193, 0.782155,
		41.699387, 34.764286, 34.613060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522995, 35.431305, 33.657185>,  <42.031322, 35.047222, 34.065552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522995, 35.431305, 33.657185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866093, 35.377865, 33.855751>,  <43.071949, 35.345802, 33.974892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.866093, 35.377865, 33.855751>,  <42.522995, 35.431305, 33.657185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.866093, 35.377865, 33.855751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285545, 0.926796, -0.243954,
		-0.427485, 0.350999, 0.833100,
		0.857741, -0.133601, 0.496417,
		43.123417, 35.337784, 34.004677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.729191, 36.073856, 34.092991>,  <42.522995, 35.431305, 33.657185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.729191, 36.073856, 34.092991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076752, 35.898079, 34.001865>,  <43.285290, 35.792614, 33.947189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.076752, 35.898079, 34.001865>,  <42.729191, 36.073856, 34.092991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.076752, 35.898079, 34.001865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420184, 0.898108, -0.129799,
		0.261638, 0.017060, 0.965015,
		0.868903, -0.439444, -0.227811,
		43.337421, 35.766247, 33.933521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.258720, 36.379963, 34.583450>,  <42.729191, 36.073856, 34.092991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.258720, 36.379963, 34.583450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419418, 36.230465, 34.249046>,  <43.515835, 36.140766, 34.048405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.419418, 36.230465, 34.249046>,  <43.258720, 36.379963, 34.583450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.419418, 36.230465, 34.249046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435548, 0.881039, -0.184576,
		0.805545, -0.289972, 0.516734,
		0.401740, -0.373747, -0.836013,
		43.539940, 36.118340, 33.998241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.856419, 36.543320, 34.698135>,  <43.258720, 36.379963, 34.583450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.856419, 36.543320, 34.698135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849430, 36.490932, 34.301643>,  <43.845238, 36.459499, 34.063747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.849430, 36.490932, 34.301643>,  <43.856419, 36.543320, 34.698135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.849430, 36.490932, 34.301643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619708, 0.776577, -0.113535,
		0.784638, -0.616258, 0.067595,
		-0.017474, -0.130973, -0.991232,
		43.844189, 36.451641, 34.004272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.434120, 36.867764, 34.492626>,  <43.856419, 36.543320, 34.698135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.434120, 36.867764, 34.492626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323811, 36.767002, 34.121574>,  <44.257626, 36.706543, 33.898945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.323811, 36.767002, 34.121574>,  <44.434120, 36.867764, 34.492626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.323811, 36.767002, 34.121574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447768, 0.820279, -0.355874,
		0.850559, -0.513503, -0.113418,
		-0.275777, -0.251907, -0.927626,
		44.241077, 36.691429, 33.843288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.054359, 36.777676, 34.065296>,  <44.434120, 36.867764, 34.492626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.054359, 36.777676, 34.065296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740421, 36.848419, 33.827728>,  <44.552059, 36.890865, 33.685188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.740421, 36.848419, 33.827728>,  <45.054359, 36.777676, 34.065296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.740421, 36.848419, 33.827728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520714, 0.707826, -0.477326,
		0.335976, -0.683889, -0.647623,
		-0.784843, 0.176856, -0.593923,
		44.504967, 36.901478, 33.649551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.263134, 36.608849, 33.410625>,  <45.054359, 36.777676, 34.065296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.263134, 36.608849, 33.410625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956722, 36.865486, 33.394863>,  <44.772873, 37.019470, 33.385406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.956722, 36.865486, 33.394863>,  <45.263134, 36.608849, 33.410625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956722, 36.865486, 33.394863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576201, 0.658202, -0.484523,
		-0.284931, -0.393864, -0.873891,
		-0.766033, 0.641593, -0.039403,
		44.726913, 37.057964, 33.383041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.455273, 37.027386, 32.948856>,  <45.263134, 36.608849, 33.410625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.455273, 37.027386, 32.948856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135010, 37.245872, 33.047321>,  <44.942852, 37.376965, 33.106400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.135010, 37.245872, 33.047321>,  <45.455273, 37.027386, 32.948856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.135010, 37.245872, 33.047321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394649, 0.789967, -0.469258,
		-0.450778, -0.278566, -0.848056,
		-0.800657, 0.546216, 0.246164,
		44.894814, 37.409737, 33.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469322, 37.558475, 32.426739>,  <45.455273, 37.027386, 32.948856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469322, 37.558475, 32.426739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260700, 37.688267, 32.742382>,  <45.135529, 37.766140, 32.931770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.260700, 37.688267, 32.742382>,  <45.469322, 37.558475, 32.426739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260700, 37.688267, 32.742382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390963, 0.912941, -0.116995,
		-0.758374, 0.247494, -0.603005,
		-0.521552, 0.324479, 0.789112,
		45.104233, 37.785610, 32.979115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.317577, 38.319378, 32.211868>,  <45.469322, 37.558475, 32.426739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.317577, 38.319378, 32.211868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235180, 38.304245, 32.602997>,  <45.185741, 38.295166, 32.837673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.235180, 38.304245, 32.602997>,  <45.317577, 38.319378, 32.211868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.235180, 38.304245, 32.602997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435614, 0.891236, 0.126250,
		-0.876245, 0.451960, -0.167114,
		-0.205998, -0.037829, 0.977821,
		45.173382, 38.292896, 32.896343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.930576, 39.032360, 32.511612>,  <45.317577, 38.319378, 32.211868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.930576, 39.032360, 32.511612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093521, 38.846699, 32.826221>,  <45.191288, 38.735302, 33.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.093521, 38.846699, 32.826221>,  <44.930576, 39.032360, 32.511612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.093521, 38.846699, 32.826221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371861, 0.870894, 0.321346,
		-0.834132, 0.161573, 0.527370,
		0.407362, -0.464153, 0.786523,
		45.215729, 38.707451, 33.062180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.797787, 39.536533, 32.984798>,  <44.930576, 39.032360, 32.511612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.797787, 39.536533, 32.984798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094196, 39.323467, 33.148331>,  <45.272041, 39.195625, 33.246452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.094196, 39.323467, 33.148331>,  <44.797787, 39.536533, 32.984798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.094196, 39.323467, 33.148331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399676, 0.839150, 0.368898,
		-0.539572, -0.109963, 0.834728,
		0.741027, -0.532668, 0.408832,
		45.316505, 39.163666, 33.270981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.929466, 39.691364, 33.760670>,  <44.797787, 39.536533, 32.984798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.929466, 39.691364, 33.760670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271305, 39.553463, 33.605335>,  <45.476410, 39.470722, 33.512135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.271305, 39.553463, 33.605335>,  <44.929466, 39.691364, 33.760670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271305, 39.553463, 33.605335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451803, 0.862293, 0.228744,
		0.256001, -0.370937, 0.892675,
		0.854598, -0.344755, -0.388339,
		45.527683, 39.450035, 33.488834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.400642, 39.952908, 34.193844>,  <44.929466, 39.691364, 33.760670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.400642, 39.952908, 34.193844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609978, 39.861904, 33.865368>,  <45.735580, 39.807301, 33.668282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.609978, 39.861904, 33.865368>,  <45.400642, 39.952908, 34.193844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.609978, 39.861904, 33.865368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626648, 0.755794, 0.189967,
		0.577432, -0.614015, 0.538106,
		0.523340, -0.227510, -0.821191,
		45.766979, 39.793652, 33.619011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.111042, 39.998226, 34.409969>,  <45.400642, 39.952908, 34.193844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.111042, 39.998226, 34.409969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051441, 40.046539, 34.017395>,  <46.015678, 40.075527, 33.781853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.051441, 40.046539, 34.017395>,  <46.111042, 39.998226, 34.409969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.051441, 40.046539, 34.017395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611588, 0.791164, 0.004509,
		0.777019, -0.599560, -0.191755,
		-0.149006, 0.120779, -0.981432,
		46.006741, 40.082771, 33.722965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.735588, 40.412594, 34.233746>,  <46.111042, 39.998226, 34.409969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.735588, 40.412594, 34.233746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495117, 40.412735, 33.914101>,  <46.350834, 40.412819, 33.722313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.495117, 40.412735, 33.914101>,  <46.735588, 40.412594, 34.233746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495117, 40.412735, 33.914101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400763, 0.865286, -0.301114,
		0.691354, -0.501278, -0.520335,
		-0.601181, 0.000355, -0.799113,
		46.314762, 40.412842, 33.674366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.211143, 40.632412, 33.654625>,  <46.735588, 40.412594, 34.233746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.211143, 40.632412, 33.654625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831726, 40.701977, 33.548779>,  <46.604076, 40.743717, 33.485271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.831726, 40.701977, 33.548779>,  <47.211143, 40.632412, 33.654625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.831726, 40.701977, 33.548779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254155, 0.916600, -0.308626,
		0.188870, -0.359998, -0.913635,
		-0.948542, 0.173915, -0.264614,
		46.547165, 40.754150, 33.469395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.269791, 40.922832, 32.905758>,  <47.211143, 40.632412, 33.654625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.269791, 40.922832, 32.905758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921154, 41.025520, 33.072811>,  <46.711971, 41.087132, 33.173042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.921154, 41.025520, 33.072811>,  <47.269791, 40.922832, 32.905758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.921154, 41.025520, 33.072811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131425, 0.943098, -0.305440,
		-0.472286, -0.211331, -0.855737,
		-0.871592, 0.256721, 0.417638,
		46.659676, 41.102535, 33.198101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.094852, 41.472504, 32.554451>,  <47.269791, 40.922832, 32.905758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.094852, 41.472504, 32.554451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843937, 41.499596, 32.864784>,  <46.693386, 41.515850, 33.050983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.843937, 41.499596, 32.864784>,  <47.094852, 41.472504, 32.554451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.843937, 41.499596, 32.864784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091076, 0.995755, -0.013293,
		-0.773439, 0.062322, -0.630799,
		-0.627293, 0.067732, 0.775832,
		46.655750, 41.519917, 33.097534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.618473, 41.991051, 32.339684>,  <47.094852, 41.472504, 32.554451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.618473, 41.991051, 32.339684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563232, 41.976452, 32.735580>,  <46.530087, 41.967693, 32.973118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563232, 41.976452, 32.735580>,  <46.618473, 41.991051, 32.339684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563232, 41.976452, 32.735580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103986, 0.993263, 0.051139,
		-0.984944, 0.109982, -0.133377,
		-0.138103, -0.036499, 0.989745,
		46.521801, 41.965504, 33.032505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.119732, 42.489906, 32.497208>,  <46.618473, 41.991051, 32.339684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.119732, 42.489906, 32.497208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315876, 42.423325, 32.839397>,  <46.433563, 42.383377, 33.044712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.315876, 42.423325, 32.839397>,  <46.119732, 42.489906, 32.497208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.315876, 42.423325, 32.839397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206670, 0.975802, 0.071401,
		-0.846663, 0.141790, 0.512891,
		0.490357, -0.166451, 0.855479,
		46.462982, 42.373390, 33.096043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.028919, 43.063049, 33.017643>,  <46.119732, 42.489906, 32.497208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.028919, 43.063049, 33.017643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371147, 42.867184, 33.084854>,  <46.576485, 42.749664, 33.125179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371147, 42.867184, 33.084854>,  <46.028919, 43.063049, 33.017643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371147, 42.867184, 33.084854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499317, 0.866232, -0.018047,
		-0.136714, 0.099340, 0.985617,
		0.855565, -0.489668, 0.168028,
		46.627815, 42.720284, 33.135262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.505634, 43.398544, 33.566868>,  <46.028919, 43.063049, 33.017643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.505634, 43.398544, 33.566868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159340, 43.526447, 33.412853>,  <44.951561, 43.603188, 33.320446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159340, 43.526447, 33.412853>,  <45.505634, 43.398544, 33.566868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159340, 43.526447, 33.412853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283856, 0.319917, 0.903924,
		0.412213, 0.891857, -0.186200,
		-0.865740, 0.319755, -0.385033,
		44.899616, 43.622375, 33.297344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.272472, 44.180527, 33.782795>,  <45.505634, 43.398544, 33.566868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.272472, 44.180527, 33.782795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941982, 43.978535, 33.682919>,  <44.743687, 43.857338, 33.622993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.941982, 43.978535, 33.682919>,  <45.272472, 44.180527, 33.782795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.941982, 43.978535, 33.682919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494249, 0.437130, 0.751422,
		-0.270306, 0.744254, -0.610754,
		-0.826228, -0.504979, -0.249687,
		44.694115, 43.827042, 33.608013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.124783, 43.929066, 34.347157>,  <45.272472, 44.180527, 33.782795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.124783, 43.929066, 34.347157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920254, 43.601406, 34.451107>,  <44.797535, 43.404808, 34.513477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.920254, 43.601406, 34.451107>,  <45.124783, 43.929066, 34.347157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.920254, 43.601406, 34.451107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759605, -0.289365, 0.582468,
		-0.401930, 0.495234, 0.770192,
		-0.511325, -0.819152, 0.259877,
		44.766857, 43.355659, 34.529072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.790066, 43.871902, 35.047840>,  <45.124783, 43.929066, 34.347157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.790066, 43.871902, 35.047840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892925, 43.508251, 34.916782>,  <44.954643, 43.290058, 34.838146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.892925, 43.508251, 34.916782>,  <44.790066, 43.871902, 35.047840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.892925, 43.508251, 34.916782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818615, 0.024751, 0.573809,
		-0.513558, -0.415772, 0.750594,
		0.257152, -0.909132, -0.327646,
		44.970070, 43.235512, 34.818489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.147942, 43.546944, 35.661419>,  <44.790066, 43.871902, 35.047840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.147942, 43.546944, 35.661419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246155, 43.388935, 35.307320>,  <45.305080, 43.294128, 35.094860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.246155, 43.388935, 35.307320>,  <45.147942, 43.546944, 35.661419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.246155, 43.388935, 35.307320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938104, -0.133302, 0.319673,
		-0.244284, -0.908948, 0.337843,
		0.245531, -0.395023, -0.885252,
		45.319813, 43.270428, 35.041744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.644421, 43.745224, 36.299969>,  <45.147942, 43.546944, 35.661419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.644421, 43.745224, 36.299969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801838, 43.449558, 36.081333>,  <45.896290, 43.272160, 35.950153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.801838, 43.449558, 36.081333>,  <45.644421, 43.745224, 36.299969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.801838, 43.449558, 36.081333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880890, 0.473285, -0.005795,
		0.262975, -0.479204, 0.837382,
		0.393543, -0.739165, -0.546588,
		45.919903, 43.227810, 35.917358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.223827, 43.403736, 36.598045>,  <45.644421, 43.745224, 36.299969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.223827, 43.403736, 36.598045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284847, 43.382992, 36.203270>,  <46.321461, 43.370544, 35.966404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.284847, 43.382992, 36.203270>,  <46.223827, 43.403736, 36.598045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.284847, 43.382992, 36.203270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867607, 0.485244, 0.108609,
		0.473271, -0.872840, 0.119019,
		0.152552, -0.051861, -0.986934,
		46.330612, 43.367432, 35.907188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.535828, 42.702686, 36.762844>,  <46.223827, 43.403736, 36.598045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.535828, 42.702686, 36.762844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264191, 42.744469, 37.053478>,  <46.101208, 42.769539, 37.227859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.264191, 42.744469, 37.053478>,  <46.535828, 42.702686, 36.762844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.264191, 42.744469, 37.053478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144718, -0.989448, 0.006991,
		0.719645, -0.100402, 0.687045,
		-0.679093, 0.104459, 0.726582,
		46.060463, 42.775806, 37.271454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.752907, 42.366810, 37.486065>,  <46.535828, 42.702686, 36.762844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.752907, 42.366810, 37.486065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371552, 42.390472, 37.367710>,  <46.142738, 42.404671, 37.296700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.371552, 42.390472, 37.367710>,  <46.752907, 42.366810, 37.486065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.371552, 42.390472, 37.367710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069059, -0.997345, 0.023112,
		-0.293732, 0.042468, 0.954944,
		-0.953390, 0.059159, -0.295885,
		46.085533, 42.408218, 37.278946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.471916, 41.938129, 37.917053>,  <46.752907, 42.366810, 37.486065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.471916, 41.938129, 37.917053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228249, 41.959698, 37.600571>,  <46.082047, 41.972637, 37.410683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.228249, 41.959698, 37.600571>,  <46.471916, 41.938129, 37.917053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.228249, 41.959698, 37.600571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058817, -0.998010, -0.022727,
		-0.790853, 0.032691, 0.611132,
		-0.609173, 0.053919, -0.791202,
		46.045498, 41.975872, 37.363209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.762352, 41.621902, 38.064651>,  <46.471916, 41.938129, 37.917053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.762352, 41.621902, 38.064651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813190, 41.616360, 37.667934>,  <45.843693, 41.613033, 37.429905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.813190, 41.616360, 37.667934>,  <45.762352, 41.621902, 38.064651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.813190, 41.616360, 37.667934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275458, -0.961064, -0.021872,
		-0.952874, 0.275978, -0.125969,
		0.127101, -0.013858, -0.991793,
		45.851322, 41.612202, 37.370396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.264999, 41.219585, 37.877972>,  <45.762352, 41.621902, 38.064651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.264999, 41.219585, 37.877972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520103, 41.212536, 37.569958>,  <45.673164, 41.208305, 37.385151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.520103, 41.212536, 37.569958>,  <45.264999, 41.219585, 37.877972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.520103, 41.212536, 37.569958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140143, -0.985705, -0.093515,
		-0.757378, 0.167555, -0.631113,
		0.637760, -0.017620, -0.770033,
		45.711430, 41.207249, 37.338947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.127502, 40.615093, 37.687275>,  <45.264999, 41.219585, 37.877972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.127502, 40.615093, 37.687275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437572, 40.695465, 37.447697>,  <45.623615, 40.743687, 37.303951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.437572, 40.695465, 37.447697>,  <45.127502, 40.615093, 37.687275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.437572, 40.695465, 37.447697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018523, -0.954894, -0.296369,
		-0.631475, 0.218643, -0.743931,
		0.775174, 0.200930, -0.598942,
		45.670124, 40.755745, 37.268013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.928566, 40.458843, 37.048367>,  <45.127502, 40.615093, 37.687275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.928566, 40.458843, 37.048367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326679, 40.420467, 37.042515>,  <45.565548, 40.397442, 37.039005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.326679, 40.420467, 37.042515>,  <44.928566, 40.458843, 37.048367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.326679, 40.420467, 37.042515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095586, -0.943002, -0.318763,
		0.016789, 0.318657, -0.947722,
		0.995280, -0.095941, -0.014627,
		45.625263, 40.391685, 37.038128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.024696, 40.033447, 36.526302>,  <44.928566, 40.458843, 37.048367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.024696, 40.033447, 36.526302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373714, 39.974712, 36.712681>,  <45.583126, 39.939472, 36.824509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.373714, 39.974712, 36.712681>,  <45.024696, 40.033447, 36.526302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373714, 39.974712, 36.712681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115923, -0.988751, -0.094518,
		0.474581, 0.028457, -0.879752,
		0.872545, -0.146840, 0.465944,
		45.635479, 39.930660, 36.852463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.393097, 39.545528, 36.186832>,  <45.024696, 40.033447, 36.526302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.393097, 39.545528, 36.186832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571918, 39.510597, 36.542927>,  <45.679211, 39.489639, 36.756584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.571918, 39.510597, 36.542927>,  <45.393097, 39.545528, 36.186832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571918, 39.510597, 36.542927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053370, -0.990847, -0.123994,
		0.892915, 0.102944, -0.438298,
		0.447051, -0.087324, 0.890236,
		45.706036, 39.484402, 36.809998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895180, 39.114937, 36.091301>,  <45.393097, 39.545528, 36.186832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895180, 39.114937, 36.091301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836720, 39.084034, 36.485798>,  <45.801643, 39.065491, 36.722496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.836720, 39.084034, 36.485798>,  <45.895180, 39.114937, 36.091301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.836720, 39.084034, 36.485798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083142, -0.994378, -0.065572,
		0.985762, 0.072414, 0.151755,
		-0.146153, -0.077256, 0.986241,
		45.792873, 39.060856, 36.781670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.588364, 38.760384, 36.317413>,  <45.895180, 39.114937, 36.091301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.588364, 38.760384, 36.317413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312176, 38.749001, 36.606537>,  <46.146465, 38.742168, 36.780010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.312176, 38.749001, 36.606537>,  <46.588364, 38.760384, 36.317413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.312176, 38.749001, 36.606537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023942, -0.999577, -0.016489,
		0.722968, 0.005920, 0.690856,
		-0.690467, -0.028462, 0.722804,
		46.105034, 38.740463, 36.823380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.819519, 38.373642, 36.917439>,  <46.588364, 38.760384, 36.317413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.819519, 38.373642, 36.917439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422272, 38.327682, 36.926571>,  <46.183926, 38.300106, 36.932049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.422272, 38.327682, 36.926571>,  <46.819519, 38.373642, 36.917439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.422272, 38.327682, 36.926571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109139, -0.978327, -0.175971,
		0.042550, -0.172269, 0.984131,
		-0.993116, -0.114894, 0.022826,
		46.124336, 38.293213, 36.933418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.733463, 37.774864, 37.284351>,  <46.819519, 38.373642, 36.917439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.733463, 37.774864, 37.284351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398613, 37.837234, 37.074627>,  <46.197701, 37.874657, 36.948792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.398613, 37.837234, 37.074627>,  <46.733463, 37.774864, 37.284351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.398613, 37.837234, 37.074627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003700, -0.960106, -0.279612,
		-0.546993, -0.232131, 0.804310,
		-0.837129, 0.155922, -0.524312,
		46.147472, 37.884010, 36.917332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.352901, 37.164604, 37.418842>,  <46.733463, 37.774864, 37.284351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.352901, 37.164604, 37.418842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172852, 37.302620, 37.089397>,  <46.064823, 37.385429, 36.891731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.172852, 37.302620, 37.089397>,  <46.352901, 37.164604, 37.418842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.172852, 37.302620, 37.089397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035249, -0.928479, -0.369707,
		-0.892272, -0.137381, 0.430090,
		-0.450120, 0.345040, -0.823613,
		46.037815, 37.406132, 36.842312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.827827, 36.767208, 37.218899>,  <46.352901, 37.164604, 37.418842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.827827, 36.767208, 37.218899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874424, 36.934910, 36.858753>,  <45.902382, 37.035530, 36.642666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.874424, 36.934910, 36.858753>,  <45.827827, 36.767208, 37.218899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.874424, 36.934910, 36.858753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127311, -0.892754, -0.432183,
		-0.984999, 0.164970, -0.050619,
		0.116487, 0.419256, -0.900364,
		45.909370, 37.060688, 36.588642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.327419, 36.571125, 36.892811>,  <45.827827, 36.767208, 37.218899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.327419, 36.571125, 36.892811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583138, 36.696590, 36.611977>,  <45.736568, 36.771870, 36.443478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.583138, 36.696590, 36.611977>,  <45.327419, 36.571125, 36.892811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.583138, 36.696590, 36.611977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184804, -0.823597, -0.536224,
		-0.746427, 0.472552, -0.468553,
		0.639292, 0.313662, -0.702084,
		45.774925, 36.790688, 36.401352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.986118, 36.466633, 36.263390>,  <45.327419, 36.571125, 36.892811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.986118, 36.466633, 36.263390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368340, 36.491322, 36.148075>,  <45.597672, 36.506134, 36.078888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.368340, 36.491322, 36.148075>,  <44.986118, 36.466633, 36.263390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.368340, 36.491322, 36.148075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144277, -0.754849, -0.639834,
		-0.257100, 0.652988, -0.712395,
		0.955554, 0.061719, -0.288283,
		45.655006, 36.509838, 36.061588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.037178, 36.539513, 35.488342>,  <44.986118, 36.466633, 36.263390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.037178, 36.539513, 35.488342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399799, 36.415459, 35.602863>,  <45.617374, 36.341026, 35.671577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.399799, 36.415459, 35.602863>,  <45.037178, 36.539513, 35.488342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.399799, 36.415459, 35.602863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023801, -0.714796, -0.698928,
		0.421414, 0.626803, -0.655384,
		0.906556, -0.310136, 0.286307,
		45.671764, 36.322418, 35.688755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221134, 36.279526, 34.905186>,  <45.037178, 36.539513, 35.488342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221134, 36.279526, 34.905186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541969, 36.159534, 35.111744>,  <45.734470, 36.087540, 35.235680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541969, 36.159534, 35.111744>,  <45.221134, 36.279526, 34.905186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541969, 36.159534, 35.111744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133276, -0.752972, -0.644416,
		0.582146, 0.585701, -0.563969,
		0.802087, -0.299980, 0.516399,
		45.782597, 36.069542, 35.266663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.723038, 36.218094, 34.471642>,  <45.221134, 36.279526, 34.905186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.723038, 36.218094, 34.471642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799957, 35.977524, 34.781818>,  <45.846107, 35.833179, 34.967922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.799957, 35.977524, 34.781818>,  <45.723038, 36.218094, 34.471642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.799957, 35.977524, 34.781818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068625, -0.780010, -0.621992,
		0.978934, 0.172824, -0.108723,
		0.192300, -0.601428, 0.775438,
		45.857647, 35.797096, 35.014450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.253036, 35.868904, 34.273849>,  <45.723038, 36.218094, 34.471642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.253036, 35.868904, 34.273849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134159, 35.631618, 34.573124>,  <46.062832, 35.489246, 34.752689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.134159, 35.631618, 34.573124>,  <46.253036, 35.868904, 34.273849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.134159, 35.631618, 34.573124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187178, -0.804579, -0.563574,
		0.936291, -0.027446, 0.350151,
		-0.297192, -0.593211, 0.748183,
		46.045002, 35.453655, 34.797581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.709473, 35.269375, 34.384941>,  <46.253036, 35.868904, 34.273849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.709473, 35.269375, 34.384941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355412, 35.148033, 34.526066>,  <46.142975, 35.075226, 34.610741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.355412, 35.148033, 34.526066>,  <46.709473, 35.269375, 34.384941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.355412, 35.148033, 34.526066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171123, -0.917347, -0.359431,
		0.432690, -0.257777, 0.863904,
		-0.885153, -0.303356, 0.352815,
		46.089867, 35.057026, 34.631912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.870903, 34.622509, 34.593567>,  <46.709473, 35.269375, 34.384941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.870903, 34.622509, 34.593567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475494, 34.667950, 34.553741>,  <46.238247, 34.695213, 34.529846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.475494, 34.667950, 34.553741>,  <46.870903, 34.622509, 34.593567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.475494, 34.667950, 34.553741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035109, -0.813838, -0.580030,
		-0.146919, -0.569879, 0.808488,
		-0.988526, 0.113602, -0.099561,
		46.178936, 34.702030, 34.523872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.625328, 34.030754, 34.771584>,  <46.870903, 34.622509, 34.593567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.625328, 34.030754, 34.771584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360222, 34.213966, 34.534618>,  <46.201157, 34.323895, 34.392441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.360222, 34.213966, 34.534618>,  <46.625328, 34.030754, 34.771584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.360222, 34.213966, 34.534618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170007, -0.678421, -0.714733,
		-0.729274, -0.574413, 0.371765,
		-0.662765, 0.458034, -0.592409,
		46.161392, 34.351376, 34.356895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.182590, 34.335945, 35.244537>,  <46.625328, 34.030754, 34.771584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.182590, 34.335945, 35.244537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553635, 34.278160, 35.106747>,  <47.776260, 34.243488, 35.024071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.553635, 34.278160, 35.106747>,  <47.182590, 34.335945, 35.244537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.553635, 34.278160, 35.106747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233767, 0.943792, 0.233687,
		0.291356, -0.297299, 0.909244,
		0.927612, -0.144465, -0.344478,
		47.831917, 34.234821, 35.003403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.590645, 34.634434, 35.723743>,  <47.182590, 34.335945, 35.244537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.590645, 34.634434, 35.723743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781582, 34.606216, 35.373390>,  <47.896145, 34.589287, 35.163177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.781582, 34.606216, 35.373390>,  <47.590645, 34.634434, 35.723743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.781582, 34.606216, 35.373390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264512, 0.962075, 0.066670,
		0.837962, -0.263506, 0.477895,
		0.477339, -0.070542, -0.875883,
		47.924782, 34.585052, 35.110626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.033463, 35.172489, 35.343605>,  <47.590645, 34.634434, 35.723743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.033463, 35.172489, 35.343605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672024, 35.165565, 35.172390>,  <47.455162, 35.161411, 35.069660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.672024, 35.165565, 35.172390>,  <48.033463, 35.172489, 35.343605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.672024, 35.165565, 35.172390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319083, 0.693887, 0.645528,
		0.285839, 0.719875, -0.632515,
		-0.903594, -0.017308, -0.428040,
		47.400944, 35.160374, 35.043980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.940845, 33.554150, 43.296669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547459, 33.624119, 43.277920>,  <35.311428, 33.666100, 43.266670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.547459, 33.624119, 43.277920>,  <35.940845, 33.554150, 43.296669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.547459, 33.624119, 43.277920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116734, 0.414484, -0.902539,
		-0.138445, -0.893088, -0.428050,
		-0.983466, 0.174920, -0.046870,
		35.252419, 33.676594, 43.263859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.662956, 33.240044, 42.674038>,  <35.940845, 33.554150, 43.296669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.662956, 33.240044, 42.674038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388683, 33.516937, 42.764061>,  <35.224117, 33.683071, 42.818077>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388683, 33.516937, 42.764061>,  <35.662956, 33.240044, 42.674038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388683, 33.516937, 42.764061> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079369, 0.236248, -0.968446,
		-0.723557, -0.681913, -0.107050,
		-0.685686, 0.692230, 0.225062,
		35.182976, 33.724606, 42.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.150574, 33.153271, 42.174366>,  <35.662956, 33.240044, 42.674038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.150574, 33.153271, 42.174366> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079502, 33.521294, 42.314037>,  <35.036858, 33.742107, 42.397842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.079502, 33.521294, 42.314037>,  <35.150574, 33.153271, 42.174366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.079502, 33.521294, 42.314037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202804, 0.312975, -0.927856,
		-0.962964, -0.235678, 0.130981,
		-0.177682, 0.920055, 0.349180,
		35.026199, 33.797310, 42.418793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610855, 33.315929, 41.786503>,  <35.150574, 33.153271, 42.174366>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610855, 33.315929, 41.786503> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723053, 33.671993, 41.930141>,  <34.790371, 33.885632, 42.016323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.723053, 33.671993, 41.930141>,  <34.610855, 33.315929, 41.786503>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.723053, 33.671993, 41.930141> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206027, 0.421227, -0.883245,
		-0.937485, 0.173758, 0.301545,
		0.280490, 0.890155, 0.359095,
		34.807201, 33.939041, 42.037868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.033367, 33.748680, 41.732059>,  <34.610855, 33.315929, 41.786503>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.033367, 33.748680, 41.732059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.368435, 33.967091, 41.726826>,  <34.569473, 34.098137, 41.723686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.368435, 33.967091, 41.726826>,  <34.033367, 33.748680, 41.732059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368435, 33.967091, 41.726826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303264, 0.445046, -0.842594,
		-0.454254, 0.709781, 0.538390,
		0.837666, 0.546026, -0.013087,
		34.619736, 34.130898, 41.722900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853031, 34.410191, 41.512440>,  <34.033367, 33.748680, 41.732059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853031, 34.410191, 41.512440> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.243584, 34.393818, 41.427582>,  <34.477913, 34.383995, 41.376667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.243584, 34.393818, 41.427582>,  <33.853031, 34.410191, 41.512440>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243584, 34.393818, 41.427582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188543, 0.318105, -0.929118,
		0.105518, 0.947171, 0.302874,
		0.976380, -0.040934, -0.212149,
		34.536499, 34.381538, 41.363937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.928238, 35.000702, 41.054016>,  <33.853031, 34.410191, 41.512440>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.928238, 35.000702, 41.054016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276653, 34.809166, 41.010189>,  <34.485703, 34.694244, 40.983891>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.276653, 34.809166, 41.010189>,  <33.928238, 35.000702, 41.054016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276653, 34.809166, 41.010189> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098694, 0.389112, -0.915888,
		0.481195, 0.786961, 0.386190,
		0.871040, -0.478836, -0.109570,
		34.537964, 34.665516, 40.977318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.394375, 35.466141, 40.616673>,  <33.928238, 35.000702, 41.054016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.394375, 35.466141, 40.616673> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546024, 35.096783, 40.592640>,  <34.637012, 34.875168, 40.578220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.546024, 35.096783, 40.592640>,  <34.394375, 35.466141, 40.616673>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546024, 35.096783, 40.592640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260201, 0.168686, -0.950705,
		0.888011, 0.344799, 0.304220,
		0.379120, -0.923395, -0.060078,
		34.659760, 34.819763, 40.574615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119545, 35.521477, 40.433384>,  <34.394375, 35.466141, 40.616673>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119545, 35.521477, 40.433384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033009, 35.148762, 40.316792>,  <34.981087, 34.925133, 40.246838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.033009, 35.148762, 40.316792>,  <35.119545, 35.521477, 40.433384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033009, 35.148762, 40.316792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454166, 0.168230, -0.874890,
		0.864250, -0.321658, 0.386792,
		-0.216346, -0.931791, -0.291479,
		34.968105, 34.869225, 40.229347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787930, 35.256462, 40.145798>,  <35.119545, 35.521477, 40.433384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787930, 35.256462, 40.145798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.538975, 34.976738, 40.005169>,  <35.389603, 34.808903, 39.920792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.538975, 34.976738, 40.005169>,  <35.787930, 35.256462, 40.145798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538975, 34.976738, 40.005169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490762, 0.001252, -0.871293,
		0.609743, -0.714819, 0.342415,
		-0.622388, -0.699308, -0.351570,
		35.352257, 34.766945, 39.899696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182667, 34.584850, 39.851246>,  <35.787930, 35.256462, 40.145798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182667, 34.584850, 39.851246> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832779, 34.544674, 39.661606>,  <35.622845, 34.520569, 39.547821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.832779, 34.544674, 39.661606>,  <36.182667, 34.584850, 39.851246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832779, 34.544674, 39.661606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454921, 0.167061, -0.874721,
		0.167061, -0.980817, -0.100440,
		0.874721, 0.100440, 0.474104,
		35.570362, 34.514542, 39.519375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182632, 34.043972, 39.307880>,  <36.182667, 34.584850, 39.851246>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182632, 34.043972, 39.307880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912922, 34.328587, 39.228821>,  <35.751095, 34.499355, 39.181385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.912922, 34.328587, 39.228821>,  <36.182632, 34.043972, 39.307880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912922, 34.328587, 39.228821> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495778, 0.237792, -0.835260,
		-0.547322, -0.661184, -0.513103,
		-0.674273, 0.711541, -0.197652,
		35.710640, 34.542049, 39.169525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.023926, 33.936760, 38.609371>,  <36.182632, 34.043972, 39.307880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.023926, 33.936760, 38.609371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901020, 34.304050, 38.709339>,  <35.827278, 34.524426, 38.769318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.901020, 34.304050, 38.709339>,  <36.023926, 33.936760, 38.609371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.901020, 34.304050, 38.709339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307706, 0.344377, -0.886973,
		-0.900504, -0.195632, -0.388357,
		-0.307262, 0.918222, 0.249916,
		35.808842, 34.579517, 38.784313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891811, 34.277473, 37.911011>,  <36.023926, 33.936760, 38.609371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891811, 34.277473, 37.911011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883114, 34.597885, 38.150303>,  <35.877895, 34.790134, 38.293877>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.883114, 34.597885, 38.150303>,  <35.891811, 34.277473, 37.911011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.883114, 34.597885, 38.150303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381481, 0.559742, -0.735636,
		-0.924121, 0.212218, -0.317748,
		-0.021742, 0.801032, 0.598227,
		35.876591, 34.838196, 38.329769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561333, 34.767311, 37.485039>,  <35.891811, 34.277473, 37.911011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561333, 34.767311, 37.485039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761753, 34.975002, 37.761978>,  <35.882008, 35.099617, 37.928143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.761753, 34.975002, 37.761978>,  <35.561333, 34.767311, 37.485039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.761753, 34.975002, 37.761978> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464126, 0.514016, -0.721370,
		-0.730433, 0.682783, 0.016564,
		0.501053, 0.519225, 0.692352,
		35.912067, 35.130772, 37.969685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444721, 35.453758, 37.397038>,  <35.561333, 34.767311, 37.485039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444721, 35.453758, 37.397038> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774010, 35.511105, 37.616768>,  <35.971581, 35.545513, 37.748608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.774010, 35.511105, 37.616768>,  <35.444721, 35.453758, 37.397038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774010, 35.511105, 37.616768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371629, 0.595406, -0.712309,
		-0.429191, 0.790531, 0.436870,
		0.823217, 0.143363, 0.549327,
		36.020973, 35.554111, 37.781567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.679363, 36.198746, 37.337189>,  <35.444721, 35.453758, 37.397038>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.679363, 36.198746, 37.337189> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013977, 36.026978, 37.473312>,  <36.214745, 35.923916, 37.554985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.013977, 36.026978, 37.473312>,  <35.679363, 36.198746, 37.337189>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013977, 36.026978, 37.473312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540211, 0.542600, -0.643239,
		0.091572, 0.721928, 0.685882,
		0.836532, -0.429424, 0.340307,
		36.264938, 35.898151, 37.575405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.161137, 36.735340, 37.428059>,  <35.679363, 36.198746, 37.337189>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.161137, 36.735340, 37.428059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360039, 36.391453, 37.381386>,  <36.479382, 36.185120, 37.353382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360039, 36.391453, 37.381386>,  <36.161137, 36.735340, 37.428059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360039, 36.391453, 37.381386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568369, 0.424411, -0.704863,
		0.655507, 0.284180, 0.699680,
		0.497260, -0.859719, -0.116685,
		36.509216, 36.133537, 37.346378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890602, 36.929329, 37.565475>,  <36.161137, 36.735340, 37.428059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890602, 36.929329, 37.565475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895771, 36.589428, 37.354668>,  <36.898872, 36.385487, 37.228184>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895771, 36.589428, 37.354668>,  <36.890602, 36.929329, 37.565475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895771, 36.589428, 37.354668> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581492, 0.435165, -0.687386,
		0.813450, -0.297575, 0.499749,
		0.012924, -0.849753, -0.527022,
		36.899647, 36.334503, 37.196560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446980, 37.052883, 37.256691>,  <36.890602, 36.929329, 37.565475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.446980, 37.052883, 37.256691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294922, 36.731750, 37.072971>,  <37.203686, 36.539070, 36.962742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.294922, 36.731750, 37.072971>,  <37.446980, 37.052883, 37.256691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294922, 36.731750, 37.072971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668316, 0.104864, -0.736449,
		0.639407, -0.586914, 0.496680,
		-0.380148, -0.802830, -0.459295,
		37.180878, 36.490902, 36.935184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.953854, 36.483097, 37.199677>,  <37.446980, 37.052883, 37.256691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.953854, 36.483097, 37.199677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695808, 36.442120, 36.896801>,  <37.540981, 36.417534, 36.715076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.695808, 36.442120, 36.896801>,  <37.953854, 36.483097, 37.199677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695808, 36.442120, 36.896801> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751278, 0.095650, -0.653018,
		0.139323, -0.990129, 0.015258,
		-0.645113, -0.102443, -0.757189,
		37.502274, 36.411388, 36.669643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.294743, 36.031464, 36.824150>,  <37.953854, 36.483097, 37.199677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.294743, 36.031464, 36.824150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.022106, 36.149635, 36.556374>,  <37.858524, 36.220539, 36.395706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.022106, 36.149635, 36.556374>,  <38.294743, 36.031464, 36.824150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.022106, 36.149635, 36.556374> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723753, 0.137451, -0.676232,
		-0.107763, -0.945425, -0.307503,
		-0.681593, 0.295429, -0.669442,
		37.817627, 36.238262, 36.355541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.887085, 35.863033, 36.476395>,  <38.294743, 36.031464, 36.824150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.887085, 35.863033, 36.476395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240410, 35.690239, 36.549225>,  <39.452404, 35.586563, 36.592922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.240410, 35.690239, 36.549225>,  <38.887085, 35.863033, 36.476395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.240410, 35.690239, 36.549225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331700, -0.301479, 0.893916,
		-0.331273, -0.849996, -0.409591,
		0.883308, -0.431991, 0.182072,
		39.505402, 35.560646, 36.603848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788544, 35.099857, 36.610954>,  <38.887085, 35.863033, 36.476395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788544, 35.099857, 36.610954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113533, 35.219940, 36.810856>,  <39.308529, 35.291992, 36.930798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.113533, 35.219940, 36.810856>,  <38.788544, 35.099857, 36.610954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.113533, 35.219940, 36.810856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377997, -0.381358, 0.843614,
		0.443847, -0.874323, -0.196366,
		0.812476, 0.300210, 0.499756,
		39.357277, 35.310001, 36.960781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.126869, 34.534389, 36.879677>,  <38.788544, 35.099857, 36.610954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.126869, 34.534389, 36.879677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263836, 34.822159, 37.121395>,  <39.346016, 34.994820, 37.266426>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.263836, 34.822159, 37.121395>,  <39.126869, 34.534389, 36.879677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.263836, 34.822159, 37.121395> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280480, -0.535576, 0.796548,
		0.896705, -0.442246, 0.018393,
		0.342420, 0.719428, 0.604295,
		39.366562, 35.037987, 37.302685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192547, 34.216541, 37.448566>,  <39.126869, 34.534389, 36.879677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.192547, 34.216541, 37.448566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289207, 34.572762, 37.602726>,  <39.347202, 34.786491, 37.695221>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.289207, 34.572762, 37.602726>,  <39.192547, 34.216541, 37.448566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289207, 34.572762, 37.602726> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040409, -0.406059, 0.912953,
		0.969522, -0.205041, -0.134110,
		0.241649, 0.890547, 0.385397,
		39.361702, 34.839928, 37.718346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.789761, 34.197430, 37.792866>,  <39.192547, 34.216541, 37.448566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.789761, 34.197430, 37.792866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623253, 34.530972, 37.937862>,  <39.523346, 34.731098, 38.024860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.623253, 34.530972, 37.937862>,  <39.789761, 34.197430, 37.792866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.623253, 34.530972, 37.937862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135765, -0.337206, 0.931590,
		0.899047, 0.437010, 0.027162,
		-0.416273, 0.833855, 0.362494,
		39.498371, 34.781128, 38.046612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245918, 34.471455, 38.246548>,  <39.789761, 34.197430, 37.792866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245918, 34.471455, 38.246548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882065, 34.604935, 38.345520>,  <39.663754, 34.685020, 38.404903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.882065, 34.604935, 38.345520>,  <40.245918, 34.471455, 38.246548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.882065, 34.604935, 38.345520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142481, -0.308873, 0.940370,
		0.390223, 0.890642, 0.233414,
		-0.909629, 0.333697, 0.247429,
		39.609177, 34.705044, 38.419750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.323181, 34.892788, 38.831314>,  <40.245918, 34.471455, 38.246548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.323181, 34.892788, 38.831314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933502, 34.805046, 38.852589>,  <39.699696, 34.752403, 38.865353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.933502, 34.805046, 38.852589>,  <40.323181, 34.892788, 38.831314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933502, 34.805046, 38.852589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105524, -0.234325, 0.966414,
		-0.199522, 0.947088, 0.251425,
		-0.974195, -0.219352, 0.053188,
		39.641243, 34.739239, 38.868546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.147232, 35.183048, 39.517071>,  <40.323181, 34.892788, 38.831314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.147232, 35.183048, 39.517071> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.866455, 34.919594, 39.408642>,  <39.697990, 34.761520, 39.343586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.866455, 34.919594, 39.408642>,  <40.147232, 35.183048, 39.517071>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866455, 34.919594, 39.408642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078294, -0.306934, 0.948505,
		-0.707917, 0.687019, 0.163883,
		-0.701942, -0.658632, -0.271074,
		39.655872, 34.722004, 39.327320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585995, 35.198994, 40.088284>,  <40.147232, 35.183048, 39.517071>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585995, 35.198994, 40.088284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536137, 34.851013, 39.897434>,  <39.506222, 34.642223, 39.782925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.536137, 34.851013, 39.897434>,  <39.585995, 35.198994, 40.088284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536137, 34.851013, 39.897434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264104, -0.434439, 0.861111,
		-0.956406, 0.233344, -0.175607,
		-0.124645, -0.869950, -0.477128,
		39.498745, 34.590027, 39.754295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.909222, 35.012981, 40.288784>,  <39.585995, 35.198994, 40.088284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.909222, 35.012981, 40.288784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096836, 34.685516, 40.156246>,  <39.209404, 34.489037, 40.076721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.096836, 34.685516, 40.156246>,  <38.909222, 35.012981, 40.288784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096836, 34.685516, 40.156246> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340199, -0.513700, 0.787640,
		-0.815027, -0.256708, -0.519453,
		0.469037, -0.818666, -0.331348,
		39.237549, 34.439919, 40.056843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455467, 34.489796, 40.365322>,  <38.909222, 35.012981, 40.288784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455467, 34.489796, 40.365322> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804310, 34.295639, 40.340607>,  <39.013615, 34.179146, 40.325779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.804310, 34.295639, 40.340607>,  <38.455467, 34.489796, 40.365322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804310, 34.295639, 40.340607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230406, -0.518765, 0.823284,
		-0.431668, -0.703759, -0.564257,
		0.872110, -0.485393, -0.061784,
		39.065941, 34.150021, 40.322071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.263073, 33.739254, 40.328411>,  <38.455467, 34.489796, 40.365322>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.263073, 33.739254, 40.328411> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.641022, 33.768002, 40.456188>,  <38.867790, 33.785252, 40.532856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.641022, 33.768002, 40.456188>,  <38.263073, 33.739254, 40.328411>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.641022, 33.768002, 40.456188> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244544, -0.493865, 0.834443,
		0.217735, -0.866563, -0.449065,
		0.944876, 0.071871, 0.319444,
		38.924484, 33.789562, 40.552021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.608028, 33.055260, 40.518154>,  <38.263073, 33.739254, 40.328411>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.608028, 33.055260, 40.518154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724758, 33.362812, 40.745720>,  <38.794796, 33.547344, 40.882259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.724758, 33.362812, 40.745720>,  <38.608028, 33.055260, 40.518154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.724758, 33.362812, 40.745720> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253156, -0.511498, 0.821146,
		0.922361, -0.383655, 0.045378,
		0.291826, 0.768881, 0.568911,
		38.812305, 33.593475, 40.916393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.005276, 32.826523, 40.964668>,  <38.608028, 33.055260, 40.518154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.005276, 32.826523, 40.964668> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856392, 33.143875, 41.157333>,  <38.767059, 33.334286, 41.272934>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.856392, 33.143875, 41.157333>,  <39.005276, 32.826523, 40.964668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.856392, 33.143875, 41.157333> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306136, -0.594856, 0.743255,
		0.876207, 0.129193, 0.464295,
		-0.372212, 0.793383, 0.481666,
		38.744728, 33.381889, 41.301834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320168, 32.792393, 41.660770>,  <39.005276, 32.826523, 40.964668>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320168, 32.792393, 41.660770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026272, 33.061108, 41.698437>,  <38.849934, 33.222336, 41.721035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.026272, 33.061108, 41.698437>,  <39.320168, 32.792393, 41.660770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026272, 33.061108, 41.698437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147683, -0.293894, 0.944360,
		0.662082, 0.679949, 0.315146,
		-0.734736, 0.671785, 0.094165,
		38.805851, 33.262642, 41.726685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.516510, 33.023602, 42.251747>,  <39.320168, 32.792393, 41.660770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.516510, 33.023602, 42.251747> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126362, 33.087704, 42.191132>,  <38.892273, 33.126167, 42.154762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.126362, 33.087704, 42.191132>,  <39.516510, 33.023602, 42.251747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.126362, 33.087704, 42.191132> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185880, -0.227442, 0.955886,
		0.118723, 0.960514, 0.251630,
		-0.975373, 0.160259, -0.151538,
		38.833752, 33.135780, 42.145672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372261, 33.361774, 42.862671>,  <39.516510, 33.023602, 42.251747>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372261, 33.361774, 42.862671> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019699, 33.257122, 42.705357>,  <38.808163, 33.194332, 42.610966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.019699, 33.257122, 42.705357>,  <39.372261, 33.361774, 42.862671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.019699, 33.257122, 42.705357> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329839, -0.255113, 0.908913,
		-0.338129, 0.930843, 0.138564,
		-0.881405, -0.261626, -0.393290,
		38.755276, 33.178635, 42.587368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838760, 33.792919, 43.198311>,  <39.372261, 33.361774, 42.862671>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838760, 33.792919, 43.198311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655380, 33.463814, 43.063923>,  <38.545353, 33.266350, 42.983288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.655380, 33.463814, 43.063923>,  <38.838760, 33.792919, 43.198311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.655380, 33.463814, 43.063923> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464791, -0.100249, 0.879727,
		-0.757491, 0.559469, -0.336455,
		-0.458450, -0.822767, -0.335974,
		38.517845, 33.216984, 42.963131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.105019, 33.814671, 43.437126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160419, 33.428486, 43.348858>,  <38.193661, 33.196774, 43.295898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.160419, 33.428486, 43.348858>,  <38.105019, 33.814671, 43.437126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160419, 33.428486, 43.348858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663506, -0.255879, 0.703055,
		-0.735239, 0.049039, -0.676032,
		0.138505, -0.965464, -0.220670,
		38.201969, 33.138847, 43.282658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.372566, 33.502670, 43.390301>,  <38.105019, 33.814671, 43.437126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.372566, 33.502670, 43.390301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651005, 33.228844, 43.476849>,  <37.818069, 33.064548, 43.528778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.651005, 33.228844, 43.476849>,  <37.372566, 33.502670, 43.390301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651005, 33.228844, 43.476849> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587992, -0.370665, 0.718939,
		-0.411965, -0.627672, -0.660540,
		0.696097, -0.684570, 0.216366,
		37.859833, 33.023472, 43.541759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.040279, 32.894478, 43.515076>,  <37.372566, 33.502670, 43.390301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.040279, 32.894478, 43.515076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384727, 32.814785, 43.702171>,  <37.591396, 32.766972, 43.814430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.384727, 32.814785, 43.702171>,  <37.040279, 32.894478, 43.515076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.384727, 32.814785, 43.702171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508021, -0.372767, 0.776505,
		0.019655, -0.906285, -0.422210,
		0.861121, -0.199229, 0.467738,
		37.643063, 32.755016, 43.842491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903767, 32.333710, 43.779346>,  <37.040279, 32.894478, 43.515076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903767, 32.333710, 43.779346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217552, 32.449314, 43.998833>,  <37.405823, 32.518677, 44.130524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.217552, 32.449314, 43.998833>,  <36.903767, 32.333710, 43.779346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.217552, 32.449314, 43.998833> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386145, -0.464732, 0.796816,
		0.485295, -0.836957, -0.252965,
		0.784462, 0.289009, 0.548719,
		37.452892, 32.536018, 44.163448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.073429, 31.679119, 44.189232>,  <36.903767, 32.333710, 43.779346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.073429, 31.679119, 44.189232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270214, 31.977016, 44.369602>,  <37.388287, 32.155754, 44.477825>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.270214, 31.977016, 44.369602>,  <37.073429, 31.679119, 44.189232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.270214, 31.977016, 44.369602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499469, -0.182790, 0.846828,
		0.713093, -0.641831, 0.282049,
		0.491965, 0.744742, 0.450921,
		37.417805, 32.200439, 44.504879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.308620, 31.371677, 44.681629>,  <37.073429, 31.679119, 44.189232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.308620, 31.371677, 44.681629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272636, 31.758987, 44.774883>,  <37.251045, 31.991373, 44.830833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.272636, 31.758987, 44.774883>,  <37.308620, 31.371677, 44.681629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272636, 31.758987, 44.774883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389959, -0.249636, 0.886348,
		0.916427, -0.011177, 0.400045,
		-0.089959, 0.968275, 0.233132,
		37.245647, 32.049469, 44.844822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.524921, 31.393305, 45.365181>,  <37.308620, 31.371677, 44.681629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.524921, 31.393305, 45.365181> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309895, 31.724264, 45.300148>,  <37.180878, 31.922840, 45.261127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.309895, 31.724264, 45.300148>,  <37.524921, 31.393305, 45.365181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.309895, 31.724264, 45.300148> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473681, -0.136802, 0.870006,
		0.697599, 0.544701, 0.465463,
		-0.537570, 0.827397, -0.162582,
		37.148624, 31.972483, 45.251373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.547771, 31.737680, 46.018173>,  <37.524921, 31.393305, 45.365181>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.547771, 31.737680, 46.018173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229931, 31.885231, 45.825283>,  <37.039227, 31.973763, 45.709549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.229931, 31.885231, 45.825283>,  <37.547771, 31.737680, 46.018173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229931, 31.885231, 45.825283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483630, 0.095600, 0.870036,
		0.367038, 0.924549, 0.102437,
		-0.794598, 0.368877, -0.482228,
		36.991550, 31.995893, 45.680614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420216, 32.289349, 46.357166>,  <37.547771, 31.737680, 46.018173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420216, 32.289349, 46.357166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071583, 32.217506, 46.174698>,  <36.862404, 32.174400, 46.065216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.071583, 32.217506, 46.174698>,  <37.420216, 32.289349, 46.357166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.071583, 32.217506, 46.174698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457582, -0.035951, 0.888441,
		-0.175964, 0.983082, -0.050848,
		-0.871582, -0.179601, -0.456166,
		36.810108, 32.163628, 46.037849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.981529, 32.840961, 46.492626>,  <37.420216, 32.289349, 46.357166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.981529, 32.840961, 46.492626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770752, 32.514771, 46.396854>,  <36.644283, 32.319057, 46.339394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.770752, 32.514771, 46.396854>,  <36.981529, 32.840961, 46.492626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770752, 32.514771, 46.396854> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398003, -0.012140, 0.917304,
		-0.750948, 0.578660, -0.318165,
		-0.526945, -0.815478, -0.239425,
		36.612667, 32.270126, 46.325027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.438236, 32.933189, 46.929695>,  <36.981529, 32.840961, 46.492626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.438236, 32.933189, 46.929695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423306, 32.550835, 46.813156>,  <36.414349, 32.321423, 46.743233>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.423306, 32.550835, 46.813156>,  <36.438236, 32.933189, 46.929695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.423306, 32.550835, 46.813156> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264186, -0.271738, 0.925400,
		-0.963749, 0.111512, -0.242389,
		-0.037327, -0.955889, -0.291347,
		36.412106, 32.264069, 46.725754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854733, 32.702660, 47.134892>,  <36.438236, 32.933189, 46.929695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854733, 32.702660, 47.134892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031509, 32.344875, 47.107712>,  <36.137577, 32.130203, 47.091404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.031509, 32.344875, 47.107712>,  <35.854733, 32.702660, 47.134892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.031509, 32.344875, 47.107712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458072, -0.290153, 0.840227,
		-0.771268, -0.340211, -0.537961,
		0.441946, -0.894465, -0.067945,
		36.164093, 32.076534, 47.087330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.333790, 32.320400, 47.010048>,  <35.854733, 32.702660, 47.134892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.333790, 32.320400, 47.010048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627636, 32.088753, 47.151451>,  <35.803944, 31.949764, 47.236294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.627636, 32.088753, 47.151451>,  <35.333790, 32.320400, 47.010048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.627636, 32.088753, 47.151451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584858, -0.276384, 0.762597,
		-0.343927, -0.766966, -0.541736,
		0.734613, -0.579116, 0.353510,
		35.848019, 31.915018, 47.257504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924915, 31.778515, 47.311375>,  <35.333790, 32.320400, 47.010048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924915, 31.778515, 47.311375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287819, 31.720591, 47.469318>,  <35.505562, 31.685837, 47.564083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.287819, 31.720591, 47.469318>,  <34.924915, 31.778515, 47.311375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.287819, 31.720591, 47.469318> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418372, -0.214811, 0.882509,
		-0.042976, -0.965861, -0.255473,
		0.907259, -0.144810, 0.394857,
		35.559998, 31.677147, 47.587776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.819546, 31.195959, 47.702503>,  <34.924915, 31.778515, 47.311375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.819546, 31.195959, 47.702503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147743, 31.363459, 47.858162>,  <35.344662, 31.463959, 47.951557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.147743, 31.363459, 47.858162>,  <34.819546, 31.195959, 47.702503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147743, 31.363459, 47.858162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129554, -0.526822, 0.840045,
		0.556781, -0.739667, -0.378004,
		0.820494, 0.418749, 0.389151,
		35.393890, 31.489084, 47.974907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.267803, 30.654531, 48.015953>,  <34.819546, 31.195959, 47.702503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.267803, 30.654531, 48.015953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379398, 30.999990, 48.183895>,  <35.446354, 31.207266, 48.284660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.379398, 30.999990, 48.183895>,  <35.267803, 30.654531, 48.015953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379398, 30.999990, 48.183895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024099, -0.443370, 0.896015,
		0.959992, -0.239860, -0.144508,
		0.278989, 0.863649, 0.419851,
		35.463097, 31.259085, 48.309849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.824242, 30.497835, 48.464981>,  <35.267803, 30.654531, 48.015953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.824242, 30.497835, 48.464981> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713428, 30.853792, 48.609947>,  <35.646942, 31.067366, 48.696926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.713428, 30.853792, 48.609947>,  <35.824242, 30.497835, 48.464981>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713428, 30.853792, 48.609947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070297, -0.394941, 0.916013,
		0.958286, 0.228287, 0.171968,
		-0.277032, 0.889891, 0.362418,
		35.630318, 31.120760, 48.718674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.295364, 30.583881, 49.044933>,  <35.824242, 30.497835, 48.464981>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.295364, 30.583881, 49.044933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985088, 30.830065, 49.100807>,  <35.798923, 30.977774, 49.134331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.985088, 30.830065, 49.100807>,  <36.295364, 30.583881, 49.044933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985088, 30.830065, 49.100807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086167, -0.322543, 0.942625,
		0.625200, 0.719151, 0.303226,
		-0.775693, 0.615457, 0.139686,
		35.752380, 31.014702, 49.142712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406326, 30.945301, 49.759216>,  <36.295364, 30.583881, 49.044933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406326, 30.945301, 49.759216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033150, 30.924215, 49.616753>,  <35.809246, 30.911564, 49.531273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.033150, 30.924215, 49.616753>,  <36.406326, 30.945301, 49.759216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033150, 30.924215, 49.616753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306282, -0.403808, 0.862050,
		-0.189261, 0.913324, 0.360582,
		-0.932937, -0.052713, -0.356160,
		35.753269, 30.908401, 49.509903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.979122, 30.990725, 50.394386>,  <36.406326, 30.945301, 49.759216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.979122, 30.990725, 50.394386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731510, 30.861216, 50.108177>,  <35.582943, 30.783510, 49.936451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.731510, 30.861216, 50.108177>,  <35.979122, 30.990725, 50.394386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.731510, 30.861216, 50.108177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510322, -0.526695, 0.679826,
		-0.596971, 0.785980, 0.160812,
		-0.619029, -0.323770, -0.715525,
		35.545803, 30.764084, 49.893520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.318645, 31.075500, 50.639782>,  <35.979122, 30.990725, 50.394386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.318645, 31.075500, 50.639782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261536, 30.787270, 50.368378>,  <35.227268, 30.614330, 50.205536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.261536, 30.787270, 50.368378>,  <35.318645, 31.075500, 50.639782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.261536, 30.787270, 50.368378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503463, -0.537346, 0.676598,
		-0.852139, 0.438207, -0.286066,
		-0.142774, -0.720579, -0.678514,
		35.218704, 30.571096, 50.164822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.564125, 30.891878, 50.666267>,  <35.318645, 31.075500, 50.639782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.564125, 30.891878, 50.666267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759800, 30.582582, 50.504875>,  <34.877205, 30.397005, 50.408039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.759800, 30.582582, 50.504875>,  <34.564125, 30.891878, 50.666267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.759800, 30.582582, 50.504875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436965, -0.617650, 0.653888,
		-0.754824, -0.143563, -0.640023,
		0.489185, -0.773239, -0.403485,
		34.906555, 30.350611, 50.383831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.097237, 30.320412, 50.394978>,  <34.564125, 30.891878, 50.666267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.097237, 30.320412, 50.394978> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451351, 30.176010, 50.512245>,  <34.663818, 30.089369, 50.582607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.451351, 30.176010, 50.512245>,  <34.097237, 30.320412, 50.394978>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.451351, 30.176010, 50.512245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450377, -0.508447, 0.733922,
		-0.115887, -0.781767, -0.612707,
		0.885285, -0.361001, 0.293168,
		34.716938, 30.067709, 50.600197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.163483, 29.542154, 50.435268>,  <34.097237, 30.320412, 50.394978>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.163483, 29.542154, 50.435268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386688, 29.733883, 50.706226>,  <34.520611, 29.848919, 50.868801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386688, 29.733883, 50.706226>,  <34.163483, 29.542154, 50.435268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386688, 29.733883, 50.706226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451522, -0.509515, 0.732477,
		0.696236, -0.714595, -0.067894,
		0.558018, 0.479321, 0.677399,
		34.554092, 29.877680, 50.909447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.852924, 29.908794, 49.867302>,  <34.163483, 29.542154, 50.435268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.852924, 29.908794, 49.867302> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453663, 29.917591, 49.889919>,  <33.214104, 29.922869, 49.903492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.453663, 29.917591, 49.889919>,  <33.852924, 29.908794, 49.867302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.453663, 29.917591, 49.889919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032593, 0.591709, -0.805493,
		-0.051174, -0.805852, -0.589902,
		-0.998158, 0.021993, 0.056545,
		33.154217, 29.924189, 49.906883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666679, 29.674988, 49.233982>,  <33.852924, 29.908794, 49.867302>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666679, 29.674988, 49.233982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.347939, 29.870096, 49.376587>,  <33.156693, 29.987162, 49.462151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.347939, 29.870096, 49.376587>,  <33.666679, 29.674988, 49.233982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.347939, 29.870096, 49.376587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190400, 0.357280, -0.914384,
		-0.573387, -0.796511, -0.191828,
		-0.796853, 0.487772, 0.356515,
		33.108883, 30.016428, 49.483543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126110, 29.571321, 48.648403>,  <33.666679, 29.674988, 49.233982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126110, 29.571321, 48.648403> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024986, 29.874149, 48.889378>,  <32.964310, 30.055845, 49.033962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.024986, 29.874149, 48.889378>,  <33.126110, 29.571321, 48.648403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.024986, 29.874149, 48.889378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106476, 0.597113, -0.795059,
		-0.961638, -0.265147, -0.070349,
		-0.252814, 0.757068, 0.602439,
		32.949142, 30.101271, 49.070110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.545486, 29.800398, 48.258034>,  <33.126110, 29.571321, 48.648403>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.545486, 29.800398, 48.258034> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.614090, 30.086367, 48.529171>,  <32.655251, 30.257948, 48.691853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.614090, 30.086367, 48.529171>,  <32.545486, 29.800398, 48.258034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614090, 30.086367, 48.529171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087021, 0.696344, -0.712413,
		-0.981332, 0.063198, 0.181643,
		0.171509, 0.714920, 0.677845,
		32.665543, 30.300842, 48.732525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.957108, 30.258553, 48.153126>,  <32.545486, 29.800398, 48.258034>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.957108, 30.258553, 48.153126> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263008, 30.441845, 48.334312>,  <32.446548, 30.551821, 48.443024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263008, 30.441845, 48.334312>,  <31.957108, 30.258553, 48.153126>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263008, 30.441845, 48.334312> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139886, 0.804320, -0.577496,
		-0.628958, 0.378276, 0.679205,
		0.764751, 0.458232, 0.452968,
		32.492432, 30.579315, 48.470203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865156, 31.030319, 48.295654>,  <31.957108, 30.258553, 48.153126>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865156, 31.030319, 48.295654> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263309, 30.992397, 48.301685>,  <32.502201, 30.969645, 48.305305>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.263309, 30.992397, 48.301685>,  <31.865156, 31.030319, 48.295654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263309, 30.992397, 48.301685> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085032, 0.797838, -0.596845,
		0.044556, 0.595371, 0.802215,
		0.995382, -0.094807, 0.015077,
		32.561924, 30.963955, 48.306210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168785, 31.744127, 48.313610>,  <31.865156, 31.030319, 48.295654>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168785, 31.744127, 48.313610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466698, 31.508097, 48.188957>,  <32.645443, 31.366478, 48.114166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.466698, 31.508097, 48.188957>,  <32.168785, 31.744127, 48.313610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.466698, 31.508097, 48.188957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270294, 0.693726, -0.667597,
		0.610118, 0.412981, 0.676167,
		0.744780, -0.590077, -0.311629,
		32.690132, 31.331074, 48.095467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760822, 32.195103, 48.013424>,  <32.168785, 31.744127, 48.313610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760822, 32.195103, 48.013424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852566, 31.843906, 47.845364>,  <32.907612, 31.633188, 47.744526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.852566, 31.843906, 47.845364>,  <32.760822, 32.195103, 48.013424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852566, 31.843906, 47.845364> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408768, 0.478637, -0.777055,
		0.883347, 0.006480, 0.468675,
		0.229361, -0.877989, -0.420154,
		32.921375, 31.580509, 47.719318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.514496, 32.148304, 47.829666>,  <32.760822, 32.195103, 48.013424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.514496, 32.148304, 47.829666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352962, 31.867315, 47.595245>,  <33.256042, 31.698723, 47.454594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.352962, 31.867315, 47.595245>,  <33.514496, 32.148304, 47.829666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352962, 31.867315, 47.595245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590959, 0.288705, -0.753270,
		0.698345, -0.650529, 0.298541,
		-0.403834, -0.702468, -0.586052,
		33.231812, 31.656574, 47.419430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071926, 31.811148, 47.435936>,  <33.514496, 32.148304, 47.829666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.071926, 31.811148, 47.435936> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756638, 31.717783, 47.208172>,  <33.567463, 31.661764, 47.071514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.756638, 31.717783, 47.208172>,  <34.071926, 31.811148, 47.435936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756638, 31.717783, 47.208172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482878, 0.339005, -0.807406,
		0.381492, -0.911369, -0.154501,
		-0.788222, -0.233414, -0.569408,
		33.520172, 31.647758, 47.037350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.340942, 31.517374, 46.876316>,  <34.071926, 31.811148, 47.435936>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.340942, 31.517374, 46.876316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974194, 31.618395, 46.752663>,  <33.754143, 31.679008, 46.678471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.974194, 31.618395, 46.752663>,  <34.340942, 31.517374, 46.876316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.974194, 31.618395, 46.752663> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391375, 0.416300, -0.820682,
		-0.078573, -0.873447, -0.480537,
		-0.916870, 0.252554, -0.309136,
		33.699131, 31.694160, 46.659924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140823, 31.223354, 46.149841>,  <34.340942, 31.517374, 46.876316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140823, 31.223354, 46.149841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930717, 31.557375, 46.215298>,  <33.804653, 31.757788, 46.254574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.930717, 31.557375, 46.215298>,  <34.140823, 31.223354, 46.149841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.930717, 31.557375, 46.215298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407879, 0.415856, -0.812834,
		-0.746812, -0.360209, -0.559037,
		-0.525269, 0.835053, 0.163644,
		33.773136, 31.807890, 46.264389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.948677, 31.427174, 45.546127>,  <34.140823, 31.223354, 46.149841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.948677, 31.427174, 45.546127> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893978, 31.771999, 45.741325>,  <33.861160, 31.978895, 45.858444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.893978, 31.771999, 45.741325>,  <33.948677, 31.427174, 45.546127>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.893978, 31.771999, 45.741325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364645, 0.501841, -0.784340,
		-0.921051, 0.070689, -0.382974,
		-0.136747, 0.862066, 0.487998,
		33.852955, 32.030621, 45.887726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.700676, 31.759203, 44.984161>,  <33.948677, 31.427174, 45.546127>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.700676, 31.759203, 44.984161> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845112, 32.012794, 45.257710>,  <33.931774, 32.164951, 45.421841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.845112, 32.012794, 45.257710>,  <33.700676, 31.759203, 44.984161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.845112, 32.012794, 45.257710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448698, 0.524762, -0.723391,
		-0.817486, 0.568063, -0.094978,
		0.361090, 0.633979, 0.683874,
		33.953438, 32.202988, 45.462872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425781, 32.369411, 44.775848>,  <33.700676, 31.759203, 44.984161>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425781, 32.369411, 44.775848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739441, 32.475430, 45.000298>,  <33.927635, 32.539040, 45.134968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.739441, 32.475430, 45.000298>,  <33.425781, 32.369411, 44.775848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739441, 32.475430, 45.000298> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292860, 0.639139, -0.711150,
		-0.547125, 0.721978, 0.423558,
		0.784147, 0.265045, 0.561128,
		33.974686, 32.554943, 45.168636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.429047, 32.956944, 44.753338>,  <33.425781, 32.369411, 44.775848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.429047, 32.956944, 44.753338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809875, 32.930298, 44.872746>,  <34.038372, 32.914310, 44.944389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.809875, 32.930298, 44.872746>,  <33.429047, 32.956944, 44.753338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809875, 32.930298, 44.872746> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278209, 0.594126, -0.754728,
		-0.127083, 0.801609, 0.584186,
		0.952077, -0.066613, 0.298518,
		34.095497, 32.910313, 44.962299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756516, 33.677448, 44.701962>,  <33.429047, 32.956944, 44.753338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.756516, 33.677448, 44.701962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041481, 33.397026, 44.689415>,  <34.212460, 33.228771, 44.681889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.041481, 33.397026, 44.689415>,  <33.756516, 33.677448, 44.701962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041481, 33.397026, 44.689415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393684, 0.436260, -0.809129,
		0.580927, 0.564091, 0.586793,
		0.712416, -0.701056, -0.031362,
		34.255207, 33.186710, 44.680008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.439804, 33.990593, 44.590919>,  <33.756516, 33.677448, 44.701962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.439804, 33.990593, 44.590919> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522827, 33.615551, 44.479343>,  <34.572643, 33.390526, 44.412395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.522827, 33.615551, 44.479343>,  <34.439804, 33.990593, 44.590919>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.522827, 33.615551, 44.479343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430344, 0.343597, -0.834713,
		0.878477, 0.053214, 0.474812,
		0.207562, -0.937608, -0.278942,
		34.585094, 33.334267, 44.395660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064396, 34.064686, 44.411125>,  <34.439804, 33.990593, 44.590919>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064396, 34.064686, 44.411125> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948803, 33.723816, 44.236641>,  <34.879448, 33.519295, 44.131950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.948803, 33.723816, 44.236641>,  <35.064396, 34.064686, 44.411125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.948803, 33.723816, 44.236641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400487, 0.306253, -0.863608,
		0.869540, -0.424263, 0.252785,
		-0.288981, -0.852179, -0.436211,
		34.862110, 33.468163, 44.105778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.654911, 33.919682, 44.044872>,  <35.064396, 34.064686, 44.411125>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.654911, 33.919682, 44.044872> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354465, 33.713219, 43.880230>,  <35.174198, 33.589340, 43.781445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.354465, 33.713219, 43.880230>,  <35.654911, 33.919682, 44.044872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354465, 33.713219, 43.880230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246803, 0.358734, -0.900221,
		0.612310, -0.777750, -0.142060,
		-0.751109, -0.516154, -0.411608,
		35.129131, 33.558372, 43.756748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.157391, 42.120003, 34.220558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.946239, 42.189949, 33.888107>,  <46.819550, 42.231918, 33.688637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.946239, 42.189949, 33.888107>,  <47.157391, 42.120003, 34.220558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.946239, 42.189949, 33.888107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375562, -0.925764, 0.043757,
		-0.761773, 0.335237, 0.554363,
		-0.527878, 0.174865, -0.831124,
		46.787876, 42.242409, 33.638771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.463737, 41.939758, 34.341526>,  <47.157391, 42.120003, 34.220558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.463737, 41.939758, 34.341526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483154, 41.944473, 33.942024>,  <46.494804, 41.947304, 33.702324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.483154, 41.944473, 33.942024>,  <46.463737, 41.939758, 34.341526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.483154, 41.944473, 33.942024> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058668, -0.998170, -0.014632,
		-0.997097, 0.059305, -0.047766,
		0.048546, 0.011787, -0.998751,
		46.497719, 41.948009, 33.642399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.904385, 41.564468, 34.153759>,  <46.463737, 41.939758, 34.341526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.904385, 41.564468, 34.153759> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.147011, 41.557583, 33.835819>,  <46.292587, 41.553452, 33.645058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.147011, 41.557583, 33.835819>,  <45.904385, 41.564468, 34.153759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.147011, 41.557583, 33.835819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224107, -0.962925, -0.150173,
		-0.762792, 0.269220, -0.587936,
		0.606568, -0.017210, -0.794845,
		46.328979, 41.552422, 33.597366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.440651, 41.420300, 33.622807>,  <45.904385, 41.564468, 34.153759>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.440651, 41.420300, 33.622807> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807934, 41.324203, 33.496834>,  <46.028305, 41.266544, 33.421249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807934, 41.324203, 33.496834>,  <45.440651, 41.420300, 33.622807>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807934, 41.324203, 33.496834> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303503, -0.937605, -0.169654,
		-0.254520, 0.251359, -0.933830,
		0.918208, -0.240239, -0.314927,
		46.083397, 41.252132, 33.402355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334049, 40.994064, 33.062595>,  <45.440651, 41.420300, 33.622807>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334049, 40.994064, 33.062595> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702423, 40.915272, 33.197102>,  <45.923447, 40.867996, 33.277805>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.702423, 40.915272, 33.197102>,  <45.334049, 40.994064, 33.062595>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.702423, 40.915272, 33.197102> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185309, -0.980407, -0.066798,
		0.342836, -0.000796, -0.939395,
		0.920936, -0.196979, 0.336267,
		45.978703, 40.856178, 33.297981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.569405, 40.373135, 32.660633>,  <45.334049, 40.994064, 33.062595>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.569405, 40.373135, 32.660633> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807076, 40.385437, 32.982132>,  <45.949677, 40.392818, 33.175030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.807076, 40.385437, 32.982132>,  <45.569405, 40.373135, 32.660633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.807076, 40.385437, 32.982132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085229, -0.991236, 0.100931,
		0.799806, -0.128473, -0.586349,
		0.594177, 0.030751, 0.803746,
		45.985329, 40.394661, 33.223255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.152493, 39.982052, 32.481766>,  <45.569405, 40.373135, 32.660633>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.152493, 39.982052, 32.481766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113655, 40.003601, 32.879292>,  <46.090355, 40.016529, 33.117809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.113655, 40.003601, 32.879292>,  <46.152493, 39.982052, 32.481766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.113655, 40.003601, 32.879292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059575, -0.997058, 0.048228,
		0.993491, -0.054524, 0.100014,
		-0.097091, 0.053873, 0.993817,
		46.084526, 40.019764, 33.177437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615376, 39.440945, 32.636829>,  <46.152493, 39.982052, 32.481766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615376, 39.440945, 32.636829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368008, 39.538315, 32.935707>,  <46.219589, 39.596737, 33.115036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.368008, 39.538315, 32.935707>,  <46.615376, 39.440945, 32.636829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.368008, 39.538315, 32.935707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182823, -0.969292, 0.164464,
		0.764288, -0.034898, 0.643930,
		-0.618417, 0.243424, 0.747198,
		46.182484, 39.611343, 33.159866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.678223, 38.914207, 33.121830>,  <46.615376, 39.440945, 32.636829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.678223, 38.914207, 33.121830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331341, 39.076149, 33.237793>,  <46.123211, 39.173313, 33.307373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.331341, 39.076149, 33.237793>,  <46.678223, 38.914207, 33.121830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.331341, 39.076149, 33.237793> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391273, -0.914130, 0.106167,
		0.308000, -0.021366, 0.951146,
		-0.867203, 0.404858, 0.289912,
		46.071178, 39.197605, 33.324768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.333015, 38.388199, 33.531647>,  <46.678223, 38.914207, 33.121830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.333015, 38.388199, 33.531647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.015141, 38.615017, 33.444988>,  <45.824417, 38.751106, 33.392994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.015141, 38.615017, 33.444988>,  <46.333015, 38.388199, 33.531647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.015141, 38.615017, 33.444988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558666, -0.822805, -0.104325,
		-0.237412, 0.038126, 0.970661,
		-0.794687, 0.567043, -0.216643,
		45.776733, 38.785130, 33.379993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.860527, 38.109474, 33.979687>,  <46.333015, 38.388199, 33.531647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.860527, 38.109474, 33.979687> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662197, 38.301563, 33.690262>,  <45.543201, 38.416817, 33.516605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.662197, 38.301563, 33.690262>,  <45.860527, 38.109474, 33.979687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.662197, 38.301563, 33.690262> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700778, -0.713347, 0.006762,
		-0.512905, 0.510411, 0.690224,
		-0.495821, 0.480225, -0.723565,
		45.513451, 38.445629, 33.473194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.230721, 38.200008, 34.152172>,  <45.860527, 38.109474, 33.979687>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.230721, 38.200008, 34.152172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194355, 38.230122, 33.754967>,  <45.172535, 38.248192, 33.516644>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.194355, 38.230122, 33.754967>,  <45.230721, 38.200008, 34.152172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.194355, 38.230122, 33.754967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674332, -0.738406, 0.005753,
		-0.732811, 0.670140, 0.117898,
		-0.090912, 0.075287, -0.993009,
		45.167080, 38.252708, 33.457066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.517139, 38.251186, 34.081161>,  <45.230721, 38.200008, 34.152172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.517139, 38.251186, 34.081161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708595, 38.121029, 33.754967>,  <44.823467, 38.042934, 33.559250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.708595, 38.121029, 33.754967>,  <44.517139, 38.251186, 34.081161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708595, 38.121029, 33.754967> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563707, -0.825974, -0.001287,
		-0.673154, 0.460314, -0.578770,
		0.478641, -0.325391, -0.815490,
		44.852188, 38.023411, 33.510319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.016365, 38.158218, 33.580780>,  <44.517139, 38.251186, 34.081161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.016365, 38.158218, 33.580780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303188, 37.910110, 33.453598>,  <44.475281, 37.761246, 33.377289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.303188, 37.910110, 33.453598>,  <44.016365, 38.158218, 33.580780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.303188, 37.910110, 33.453598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638280, -0.767615, 0.058015,
		-0.280051, 0.161344, -0.946329,
		0.717056, -0.620270, -0.317954,
		44.518307, 37.724030, 33.358212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642471, 37.728828, 33.141335>,  <44.016365, 38.158218, 33.580780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642471, 37.728828, 33.141335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979416, 37.546955, 33.257050>,  <44.181583, 37.437832, 33.326481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.979416, 37.546955, 33.257050>,  <43.642471, 37.728828, 33.141335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.979416, 37.546955, 33.257050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503520, -0.855355, 0.121798,
		0.192068, -0.248262, -0.949461,
		0.842364, -0.454679, 0.289291,
		44.232124, 37.410553, 33.343838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.616718, 37.215134, 32.687321>,  <43.642471, 37.728828, 33.141335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.616718, 37.215134, 32.687321> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865257, 37.087666, 32.973644>,  <44.014381, 37.011185, 33.145439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.865257, 37.087666, 32.973644>,  <43.616718, 37.215134, 32.687321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.865257, 37.087666, 32.973644> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500559, -0.864273, 0.049740,
		0.602805, -0.389210, -0.696521,
		0.621343, -0.318666, 0.715811,
		44.051659, 36.992065, 33.188389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617939, 36.507641, 32.604710>,  <43.616718, 37.215134, 32.687321>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617939, 36.507641, 32.604710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795395, 36.562489, 32.958969>,  <43.901871, 36.595398, 33.171524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.795395, 36.562489, 32.958969>,  <43.617939, 36.507641, 32.604710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795395, 36.562489, 32.958969> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312738, -0.902419, 0.296369,
		0.839866, -0.408459, -0.357471,
		0.443643, 0.137115, 0.885652,
		43.928490, 36.603622, 33.224667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631901, 35.882572, 32.903702>,  <43.617939, 36.507641, 32.604710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631901, 35.882572, 32.903702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802437, 36.073311, 33.211170>,  <43.904758, 36.187756, 33.395649>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.802437, 36.073311, 33.211170>,  <43.631901, 35.882572, 32.903702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.802437, 36.073311, 33.211170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105468, -0.817767, 0.565804,
		0.898393, -0.322295, -0.298355,
		0.426340, 0.476848, 0.768668,
		43.930340, 36.216366, 33.441772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.313782, 35.563347, 33.100487>,  <43.631901, 35.882572, 32.903702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.313782, 35.563347, 33.100487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101734, 35.744553, 33.387192>,  <43.974506, 35.853275, 33.559216>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.101734, 35.744553, 33.387192>,  <44.313782, 35.563347, 33.100487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.101734, 35.744553, 33.387192> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191960, -0.887492, 0.418939,
		0.825907, 0.084498, 0.557439,
		-0.530122, 0.453010, 0.716765,
		43.942699, 35.880455, 33.602222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.520710, 35.262520, 33.767365>,  <44.313782, 35.563347, 33.100487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.520710, 35.262520, 33.767365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150898, 35.407700, 33.813847>,  <43.929008, 35.494808, 33.841736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.150898, 35.407700, 33.813847>,  <44.520710, 35.262520, 33.767365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.150898, 35.407700, 33.813847> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275708, -0.847517, 0.453542,
		0.263098, 0.387276, 0.883627,
		-0.924534, 0.362949, 0.116205,
		43.873539, 35.516586, 33.848709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.296124, 35.286629, 34.482353>,  <44.520710, 35.262520, 33.767365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.296124, 35.286629, 34.482353> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947090, 35.246918, 34.291050>,  <43.737671, 35.223091, 34.176266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.947090, 35.246918, 34.291050>,  <44.296124, 35.286629, 34.482353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.947090, 35.246918, 34.291050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187227, -0.836361, 0.515215,
		-0.451151, 0.539113, 0.711210,
		-0.872587, -0.099282, -0.478262,
		43.685314, 35.217133, 34.147572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.888065, 34.836399, 34.407806>,  <44.296124, 35.286629, 34.482353>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.888065, 34.836399, 34.407806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277645, 34.753510, 34.444626>,  <45.511395, 34.703777, 34.466717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.277645, 34.753510, 34.444626>,  <44.888065, 34.836399, 34.407806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.277645, 34.753510, 34.444626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073225, 0.671660, 0.737232,
		-0.214597, -0.711289, 0.669340,
		0.973954, -0.207221, 0.092052,
		45.569832, 34.691345, 34.472240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.000050, 34.645939, 35.110252>,  <44.888065, 34.836399, 34.407806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.000050, 34.645939, 35.110252> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.344246, 34.791183, 34.967308>,  <45.550762, 34.878330, 34.881542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.344246, 34.791183, 34.967308>,  <45.000050, 34.645939, 35.110252>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.344246, 34.791183, 34.967308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031661, 0.661965, 0.748865,
		0.508481, -0.655706, 0.558119,
		0.860491, 0.363113, -0.357357,
		45.602394, 34.900116, 34.860100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.442944, 34.791805, 35.655079>,  <45.000050, 34.645939, 35.110252>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.442944, 34.791805, 35.655079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651649, 35.005600, 35.389122>,  <45.776875, 35.133877, 35.229549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.651649, 35.005600, 35.389122>,  <45.442944, 34.791805, 35.655079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.651649, 35.005600, 35.389122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051858, 0.758080, 0.650097,
		0.851511, -0.373678, 0.367822,
		0.521766, 0.534490, -0.664892,
		45.808178, 35.165947, 35.189655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.976727, 35.045441, 36.059181>,  <45.442944, 34.791805, 35.655079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.976727, 35.045441, 36.059181> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.939190, 35.272976, 35.732349>,  <45.916668, 35.409496, 35.536251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.939190, 35.272976, 35.732349>,  <45.976727, 35.045441, 36.059181>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939190, 35.272976, 35.732349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033066, 0.822031, 0.568482,
		0.995038, 0.026328, -0.095948,
		-0.093839, 0.568834, -0.817081,
		45.911037, 35.443626, 35.487225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376202, 35.487587, 36.264267>,  <45.976727, 35.045441, 36.059181>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376202, 35.487587, 36.264267> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222031, 35.660408, 35.938133>,  <46.129528, 35.764099, 35.742451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.222031, 35.660408, 35.938133>,  <46.376202, 35.487587, 36.264267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.222031, 35.660408, 35.938133> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136126, 0.900562, 0.412865,
		0.912641, 0.048142, -0.405917,
		-0.385430, 0.432053, -0.815337,
		46.106403, 35.790024, 35.693531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892994, 35.992447, 35.932167>,  <46.376202, 35.487587, 36.264267>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892994, 35.992447, 35.932167> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.510498, 36.088478, 35.865284>,  <46.280998, 36.146095, 35.825153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.510498, 36.088478, 35.865284>,  <46.892994, 35.992447, 35.932167>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.510498, 36.088478, 35.865284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164148, 0.913346, 0.372632,
		0.242182, 0.328880, -0.912790,
		-0.956244, 0.240077, -0.167211,
		46.223625, 36.160500, 35.815121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.931454, 36.650990, 35.702290>,  <46.892994, 35.992447, 35.932167>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.931454, 36.650990, 35.702290> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.545921, 36.623829, 35.805370>,  <46.314602, 36.607533, 35.867218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.545921, 36.623829, 35.805370>,  <46.931454, 36.650990, 35.702290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.545921, 36.623829, 35.805370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045154, 0.911409, 0.409018,
		-0.262649, 0.405862, -0.875381,
		-0.963834, -0.067901, 0.257706,
		46.256771, 36.603458, 35.882683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.589275, 37.281193, 35.551880>,  <46.931454, 36.650990, 35.702290>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.589275, 37.281193, 35.551880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320614, 37.124531, 35.803432>,  <46.159416, 37.030533, 35.954365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.320614, 37.124531, 35.803432>,  <46.589275, 37.281193, 35.551880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.320614, 37.124531, 35.803432> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306907, 0.919673, 0.244970,
		-0.674308, -0.028474, -0.737901,
		-0.671652, -0.391652, 0.628882,
		46.119118, 37.007034, 35.992096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.042999, 37.665623, 35.441002>,  <46.589275, 37.281193, 35.551880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.042999, 37.665623, 35.441002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.990879, 37.480228, 35.791592>,  <45.959606, 37.368992, 36.001945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.990879, 37.480228, 35.791592>,  <46.042999, 37.665623, 35.441002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.990879, 37.480228, 35.791592> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007140, 0.883547, 0.468288,
		-0.991449, 0.067276, -0.111817,
		-0.130300, -0.463485, 0.876472,
		45.951790, 37.341183, 36.054535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.480267, 37.972885, 35.810947>,  <46.042999, 37.665623, 35.441002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.480267, 37.972885, 35.810947> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 37.781944, 36.120064>,  <45.747936, 37.667377, 36.305534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.647560, 37.781944, 36.120064>,  <45.480267, 37.972885, 35.810947>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.647560, 37.781944, 36.120064> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123349, 0.813050, 0.568977,
		-0.899924, -0.333291, 0.281167,
		0.418238, -0.477354, 0.772794,
		45.773033, 37.638737, 36.351902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028988, 38.060764, 36.336514>,  <45.480267, 37.972885, 35.810947>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028988, 38.060764, 36.336514> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385326, 38.003746, 36.509060>,  <45.599129, 37.969536, 36.612587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.385326, 38.003746, 36.509060>,  <45.028988, 38.060764, 36.336514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.385326, 38.003746, 36.509060> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143967, 0.811994, 0.565632,
		-0.430897, -0.565992, 0.702838,
		0.890843, -0.142544, 0.431370,
		45.652580, 37.960983, 36.638470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.866653, 38.245056, 36.996017>,  <45.028988, 38.060764, 36.336514>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.866653, 38.245056, 36.996017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264534, 38.270237, 36.963509>,  <45.503262, 38.285347, 36.944004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.264534, 38.270237, 36.963509>,  <44.866653, 38.245056, 36.996017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.264534, 38.270237, 36.963509> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028893, 0.929899, 0.366679,
		0.098659, -0.362388, 0.926791,
		0.994702, 0.062954, -0.081273,
		45.562946, 38.289124, 36.939125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.138596, 38.566124, 37.688244>,  <44.866653, 38.245056, 36.996017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.138596, 38.566124, 37.688244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419678, 38.627987, 37.410458>,  <45.588329, 38.665104, 37.243786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.419678, 38.627987, 37.410458>,  <45.138596, 38.566124, 37.688244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.419678, 38.627987, 37.410458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065054, 0.958033, 0.279179,
		0.708496, -0.241360, 0.663158,
		0.702710, 0.154656, -0.694464,
		45.630489, 38.674385, 37.202118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.668026, 38.938427, 38.047615>,  <45.138596, 38.566124, 37.688244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.668026, 38.938427, 38.047615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714428, 38.984398, 37.652985>,  <45.742268, 39.011982, 37.416206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.714428, 38.984398, 37.652985>,  <45.668026, 38.938427, 38.047615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.714428, 38.984398, 37.652985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187258, 0.972940, 0.135361,
		0.975437, -0.200447, 0.091344,
		0.116005, 0.114931, -0.986577,
		45.749229, 39.018879, 37.357010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.151783, 39.525978, 37.968540>,  <45.668026, 38.938427, 38.047615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.151783, 39.525978, 37.968540> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027821, 39.507286, 37.588692>,  <45.953445, 39.496071, 37.360783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.027821, 39.507286, 37.588692>,  <46.151783, 39.525978, 37.968540>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.027821, 39.507286, 37.588692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301590, 0.942378, -0.144799,
		0.901668, -0.331269, -0.277951,
		-0.309903, -0.046733, -0.949619,
		45.934849, 39.493267, 37.303806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.770397, 39.726349, 37.457489>,  <46.151783, 39.525978, 37.968540>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.770397, 39.726349, 37.457489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.434494, 39.807354, 37.255974>,  <46.232952, 39.855957, 37.135067>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.434494, 39.807354, 37.255974>,  <46.770397, 39.726349, 37.457489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.434494, 39.807354, 37.255974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263141, 0.963390, -0.051353,
		0.474943, -0.175691, -0.862301,
		-0.839754, 0.202517, -0.503786,
		46.182568, 39.868111, 37.104839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.967148, 40.272446, 36.993549>,  <46.770397, 39.726349, 37.457489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.967148, 40.272446, 36.993549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568306, 40.300484, 37.005344>,  <46.329002, 40.317307, 37.012421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.568306, 40.300484, 37.005344>,  <46.967148, 40.272446, 36.993549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.568306, 40.300484, 37.005344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067118, 0.993487, -0.092084,
		-0.035746, -0.089839, -0.995315,
		-0.997104, 0.070095, 0.029483,
		46.269176, 40.321514, 37.014191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.882145, 40.946434, 36.811413>,  <46.967148, 40.272446, 36.993549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.882145, 40.946434, 36.811413> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501244, 40.876564, 36.911579>,  <46.272705, 40.834641, 36.971680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.501244, 40.876564, 36.911579>,  <46.882145, 40.946434, 36.811413>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.501244, 40.876564, 36.911579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214275, 0.966605, -0.140574,
		-0.217496, -0.187519, -0.957879,
		-0.952251, -0.174675, 0.250413,
		46.215569, 40.824162, 36.986702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.518398, 41.251564, 36.336723>,  <46.882145, 40.946434, 36.811413>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.518398, 41.251564, 36.336723> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.259567, 41.221973, 36.640255>,  <46.104267, 41.204220, 36.822372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.259567, 41.221973, 36.640255>,  <46.518398, 41.251564, 36.336723>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.259567, 41.221973, 36.640255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098821, 0.995024, 0.012738,
		-0.755991, -0.066745, -0.651170,
		-0.647080, -0.073979, 0.758825,
		46.065445, 41.199780, 36.867901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.889767, 41.523731, 36.117336>,  <46.518398, 41.251564, 36.336723>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.889767, 41.523731, 36.117336> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883984, 41.567654, 36.514877>,  <45.880512, 41.594006, 36.753403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.883984, 41.567654, 36.514877>,  <45.889767, 41.523731, 36.117336>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.883984, 41.567654, 36.514877> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025697, 0.993664, -0.109411,
		-0.999565, 0.023957, -0.017192,
		-0.014462, 0.109805, 0.993848,
		45.879646, 41.600594, 36.813030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512608, 42.108891, 36.141747>,  <45.889767, 41.523731, 36.117336>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512608, 42.108891, 36.141747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673424, 42.056553, 36.504234>,  <45.769913, 42.025150, 36.721729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.673424, 42.056553, 36.504234>,  <45.512608, 42.108891, 36.141747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673424, 42.056553, 36.504234> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074595, 0.991128, 0.110007,
		-0.912577, 0.023372, 0.408236,
		0.402043, -0.130842, 0.906224,
		45.794037, 42.017300, 36.776100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.186451, 33.865219, 40.749813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788792, 33.850033, 40.709351>,  <39.550198, 33.840919, 40.685074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788792, 33.850033, 40.709351>,  <40.186451, 33.865219, 40.749813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.788792, 33.850033, 40.709351> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098307, 0.070692, -0.992642,
		0.044828, -0.996776, -0.066547,
		-0.994146, -0.037956, -0.101159,
		39.490547, 33.838642, 40.679001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.107166, 33.380051, 40.268909>,  <40.186451, 33.865219, 40.749813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.107166, 33.380051, 40.268909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784657, 33.616669, 40.268993>,  <39.591152, 33.758640, 40.269043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.784657, 33.616669, 40.268993>,  <40.107166, 33.380051, 40.268909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.784657, 33.616669, 40.268993> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230962, 0.315135, -0.920514,
		-0.544591, -0.742137, -0.390709,
		-0.806274, 0.591542, 0.000214,
		39.542774, 33.794132, 40.269058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.715866, 33.288357, 39.635639>,  <40.107166, 33.380051, 40.268909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.715866, 33.288357, 39.635639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580837, 33.642769, 39.762760>,  <39.499821, 33.855415, 39.839031>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580837, 33.642769, 39.762760>,  <39.715866, 33.288357, 39.635639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.580837, 33.642769, 39.762760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060745, 0.316410, -0.946676,
		-0.939337, -0.338878, -0.052991,
		-0.337574, 0.886028, 0.317801,
		39.479565, 33.908577, 39.858101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317410, 33.470455, 39.154640>,  <39.715866, 33.288357, 39.635639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317410, 33.470455, 39.154640> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351627, 33.804485, 39.372017>,  <39.372158, 34.004906, 39.502441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351627, 33.804485, 39.372017>,  <39.317410, 33.470455, 39.154640>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351627, 33.804485, 39.372017> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207995, 0.548389, -0.809943,
		-0.974382, -0.043743, 0.220606,
		0.085549, 0.835078, 0.543439,
		39.377293, 34.055008, 39.535049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753246, 33.895344, 39.024689>,  <39.317410, 33.470455, 39.154640>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753246, 33.895344, 39.024689> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026752, 34.166283, 39.133255>,  <39.190857, 34.328846, 39.198395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026752, 34.166283, 39.133255>,  <38.753246, 33.895344, 39.024689>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026752, 34.166283, 39.133255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229314, 0.552569, -0.801301,
		-0.692735, 0.485662, 0.533152,
		0.683764, 0.677348, 0.271415,
		39.231880, 34.369488, 39.214680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373798, 34.491314, 38.999062>,  <38.753246, 33.895344, 39.024689>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373798, 34.491314, 38.999062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760242, 34.579315, 38.945061>,  <38.992111, 34.632114, 38.912659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.760242, 34.579315, 38.945061>,  <38.373798, 34.491314, 38.999062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.760242, 34.579315, 38.945061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233967, 0.525484, -0.818001,
		-0.109018, 0.821868, 0.559150,
		0.966113, 0.220000, -0.135003,
		39.050076, 34.645313, 38.904560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460854, 35.250282, 38.823086>,  <38.373798, 34.491314, 38.999062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460854, 35.250282, 38.823086> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792316, 35.067963, 38.693119>,  <38.991196, 34.958569, 38.615139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792316, 35.067963, 38.693119>,  <38.460854, 35.250282, 38.823086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792316, 35.067963, 38.693119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045978, 0.633927, -0.772025,
		0.557865, 0.624804, 0.546265,
		0.828657, -0.455802, -0.324919,
		39.040913, 34.931221, 38.595642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.765060, 35.772362, 38.445236>,  <38.460854, 35.250282, 38.823086>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.765060, 35.772362, 38.445236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004105, 35.465267, 38.352764>,  <39.147530, 35.281010, 38.297279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004105, 35.465267, 38.352764>,  <38.765060, 35.772362, 38.445236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004105, 35.465267, 38.352764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321642, 0.493672, -0.807982,
		0.734446, 0.408498, 0.541959,
		0.597609, -0.767735, -0.231185,
		39.183388, 35.234947, 38.283409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462578, 36.085236, 38.211941>,  <38.765060, 35.772362, 38.445236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.462578, 36.085236, 38.211941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441509, 35.721409, 38.047062>,  <39.428867, 35.503113, 37.948135>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441509, 35.721409, 38.047062>,  <39.462578, 36.085236, 38.211941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441509, 35.721409, 38.047062> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340460, 0.371689, -0.863675,
		0.938783, -0.185827, 0.290096,
		-0.052669, -0.909569, -0.412202,
		39.425709, 35.448540, 37.923401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.040047, 35.986134, 37.896133>,  <39.462578, 36.085236, 38.211941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.040047, 35.986134, 37.896133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830757, 35.695271, 37.718380>,  <39.705181, 35.520752, 37.611729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830757, 35.695271, 37.718380>,  <40.040047, 35.986134, 37.896133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830757, 35.695271, 37.718380> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429443, 0.225429, -0.874506,
		0.736080, -0.648402, 0.194322,
		-0.523225, -0.727157, -0.444385,
		39.673790, 35.477123, 37.585064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512188, 35.708374, 37.470703>,  <40.040047, 35.986134, 37.896133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.512188, 35.708374, 37.470703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163296, 35.584080, 37.319622>,  <39.953960, 35.509502, 37.228973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.163296, 35.584080, 37.319622>,  <40.512188, 35.708374, 37.470703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.163296, 35.584080, 37.319622> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368032, 0.091639, -0.925286,
		0.322136, -0.946067, 0.034432,
		-0.872228, -0.310740, -0.377703,
		39.901627, 35.490856, 37.206310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.665264, 35.110458, 37.000595>,  <40.512188, 35.708374, 37.470703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.665264, 35.110458, 37.000595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315861, 35.254940, 36.870049>,  <40.106220, 35.341629, 36.791721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.315861, 35.254940, 36.870049>,  <40.665264, 35.110458, 37.000595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.315861, 35.254940, 36.870049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370231, 0.057597, -0.927153,
		-0.316096, -0.930705, -0.184042,
		-0.873506, 0.361207, -0.326370,
		40.053810, 35.363300, 36.772137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519451, 34.800190, 36.387794>,  <40.665264, 35.110458, 37.000595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519451, 34.800190, 36.387794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340767, 35.154778, 36.339432>,  <40.233555, 35.367531, 36.310413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.340767, 35.154778, 36.339432>,  <40.519451, 34.800190, 36.387794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.340767, 35.154778, 36.339432> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115465, -0.076882, -0.990332,
		-0.887194, -0.456356, -0.068012,
		-0.446715, 0.886469, -0.120903,
		40.206753, 35.420719, 36.303162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886440, 34.824013, 35.932827>,  <40.519451, 34.800190, 36.387794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886440, 34.824013, 35.932827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044842, 35.188847, 35.890347>,  <40.139885, 35.407745, 35.864857>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.044842, 35.188847, 35.890347>,  <39.886440, 34.824013, 35.932827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.044842, 35.188847, 35.890347> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037331, -0.099569, -0.994330,
		-0.917489, 0.397725, -0.005381,
		0.396006, 0.912086, -0.106201,
		40.163643, 35.462471, 35.858486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487034, 34.683743, 35.314507>,  <39.886440, 34.824013, 35.932827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487034, 34.683743, 35.314507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606525, 34.363220, 35.107174>,  <39.678223, 34.170906, 34.982777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.606525, 34.363220, 35.107174>,  <39.487034, 34.683743, 35.314507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606525, 34.363220, 35.107174> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722175, -0.544871, 0.426122,
		-0.623877, 0.247027, -0.741455,
		0.298733, -0.801307, -0.518329,
		39.696144, 34.122829, 34.951675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.921230, 34.433903, 35.011715>,  <39.487034, 34.683743, 35.314507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.921230, 34.433903, 35.011715> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166393, 34.118290, 35.028511>,  <39.313492, 33.928921, 35.038589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166393, 34.118290, 35.028511>,  <38.921230, 34.433903, 35.011715>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166393, 34.118290, 35.028511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749185, -0.563424, 0.348246,
		-0.251120, -0.244902, -0.936462,
		0.612911, -0.789035, 0.041990,
		39.350266, 33.881580, 35.041107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.534065, 33.834007, 34.770943>,  <38.921230, 34.433903, 35.011715>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.534065, 33.834007, 34.770943> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846195, 33.685154, 34.971985>,  <39.033474, 33.595840, 35.092609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846195, 33.685154, 34.971985>,  <38.534065, 33.834007, 34.770943>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846195, 33.685154, 34.971985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615957, -0.596315, 0.514786,
		0.108140, -0.711282, -0.694538,
		0.780322, -0.372136, 0.502605,
		39.080292, 33.573513, 35.122765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.415169, 33.118908, 34.866722>,  <38.534065, 33.834007, 34.770943>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.415169, 33.118908, 34.866722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704906, 33.153938, 35.140266>,  <38.878750, 33.174957, 35.304394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.704906, 33.153938, 35.140266>,  <38.415169, 33.118908, 34.866722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.704906, 33.153938, 35.140266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562901, -0.497603, 0.659950,
		0.398089, -0.862972, -0.311135,
		0.724340, 0.087580, 0.683858,
		38.922207, 33.180214, 35.345425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619030, 32.537548, 35.138741>,  <38.415169, 33.118908, 34.866722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619030, 32.537548, 35.138741> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733593, 32.769344, 35.443939>,  <38.802330, 32.908421, 35.627056>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733593, 32.769344, 35.443939>,  <38.619030, 32.537548, 35.138741>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733593, 32.769344, 35.443939> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554827, -0.548926, 0.625177,
		0.781111, -0.602388, 0.164298,
		0.286411, 0.579490, 0.762994,
		38.819515, 32.943192, 35.672836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835220, 32.134640, 35.640793>,  <38.619030, 32.537548, 35.138741>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835220, 32.134640, 35.640793> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792065, 32.464424, 35.863007>,  <38.766171, 32.662296, 35.996334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.792065, 32.464424, 35.863007>,  <38.835220, 32.134640, 35.640793>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792065, 32.464424, 35.863007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184116, -0.565700, 0.803794,
		0.976965, -0.015559, 0.212832,
		-0.107893, 0.824464, 0.555534,
		38.759697, 32.711761, 36.029667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238110, 32.006855, 36.307144>,  <38.835220, 32.134640, 35.640793>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238110, 32.006855, 36.307144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958527, 32.286140, 36.369061>,  <38.790775, 32.453712, 36.406212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958527, 32.286140, 36.369061>,  <39.238110, 32.006855, 36.307144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958527, 32.286140, 36.369061> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223307, -0.418696, 0.880243,
		0.679407, 0.580686, 0.448566,
		-0.698957, 0.698211, 0.154794,
		38.748840, 32.495605, 36.415497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.283459, 32.241333, 37.057968>,  <39.238110, 32.006855, 36.307144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.283459, 32.241333, 37.057968> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922844, 32.391476, 36.971855>,  <38.706474, 32.481560, 36.920189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.922844, 32.391476, 36.971855>,  <39.283459, 32.241333, 37.057968>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922844, 32.391476, 36.971855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338089, -0.300522, 0.891842,
		0.270060, 0.876810, 0.397834,
		-0.901534, 0.375355, -0.215281,
		38.652382, 32.504082, 36.907272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.014641, 32.585461, 37.650681>,  <39.283459, 32.241333, 37.057968>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.014641, 32.585461, 37.650681> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674507, 32.522923, 37.449692>,  <38.470425, 32.485397, 37.329098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.674507, 32.522923, 37.449692>,  <39.014641, 32.585461, 37.650681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.674507, 32.522923, 37.449692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476743, -0.175389, 0.861368,
		-0.222802, 0.972005, 0.074602,
		-0.850338, -0.156348, -0.502474,
		38.419407, 32.476017, 37.298950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492950, 32.785877, 38.103771>,  <39.014641, 32.585461, 37.650681>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492950, 32.785877, 38.103771> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273266, 32.569092, 37.849327>,  <38.141453, 32.439018, 37.696659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273266, 32.569092, 37.849327>,  <38.492950, 32.785877, 38.103771>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.273266, 32.569092, 37.849327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425918, -0.473370, 0.771048,
		-0.718998, 0.694400, 0.029147,
		-0.549214, -0.541968, -0.636110,
		38.108501, 32.406502, 37.658493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.867496, 32.764801, 38.471390>,  <38.492950, 32.785877, 38.103771>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.867496, 32.764801, 38.471390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895466, 32.477093, 38.194908>,  <37.912247, 32.304466, 38.029018>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895466, 32.477093, 38.194908>,  <37.867496, 32.764801, 38.471390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895466, 32.477093, 38.194908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350944, -0.666341, 0.657897,
		-0.933782, 0.196569, -0.299018,
		0.069926, -0.719270, -0.691202,
		37.916443, 32.261311, 37.987549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167610, 32.459129, 38.281944>,  <37.867496, 32.764801, 38.471390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167610, 32.459129, 38.281944> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446457, 32.180759, 38.212997>,  <37.613766, 32.013737, 38.171627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.446457, 32.180759, 38.212997>,  <37.167610, 32.459129, 38.281944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.446457, 32.180759, 38.212997> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318567, -0.516048, 0.795116,
		-0.642295, -0.499377, -0.581446,
		0.697117, -0.695929, -0.172370,
		37.655594, 31.971981, 38.161285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.776299, 31.835272, 38.420734>,  <37.167610, 32.459129, 38.281944>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.776299, 31.835272, 38.420734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164612, 31.740082, 38.433025>,  <37.397602, 31.682968, 38.440399>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164612, 31.740082, 38.433025>,  <36.776299, 31.835272, 38.420734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.164612, 31.740082, 38.433025> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142582, -0.469108, 0.871555,
		-0.192993, -0.850474, -0.489334,
		0.970786, -0.237974, 0.030728,
		37.455849, 31.668690, 38.442242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801186, 31.115742, 38.535847>,  <36.776299, 31.835272, 38.420734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801186, 31.115742, 38.535847> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158504, 31.256977, 38.647095>,  <37.372894, 31.341719, 38.713844>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.158504, 31.256977, 38.647095>,  <36.801186, 31.115742, 38.535847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.158504, 31.256977, 38.647095> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080616, -0.482869, 0.871974,
		0.442180, -0.801352, -0.402880,
		0.893296, 0.353090, 0.278117,
		37.426495, 31.362904, 38.730530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638233, 30.466635, 38.166927>,  <36.801186, 31.115742, 38.535847>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638233, 30.466635, 38.166927> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285553, 30.286976, 38.109142>,  <36.073944, 30.179180, 38.074471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.285553, 30.286976, 38.109142>,  <36.638233, 30.466635, 38.166927>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285553, 30.286976, 38.109142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219563, 0.661616, -0.716977,
		0.417606, -0.600441, -0.681964,
		-0.881701, -0.449148, -0.144460,
		36.021042, 30.152231, 38.065804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624027, 30.282951, 37.416645>,  <36.638233, 30.466635, 38.166927>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624027, 30.282951, 37.416645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246082, 30.280405, 37.547611>,  <36.019318, 30.278877, 37.626190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246082, 30.280405, 37.547611>,  <36.624027, 30.282951, 37.416645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246082, 30.280405, 37.547611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308281, 0.354576, -0.882745,
		-0.110476, -0.935005, -0.336987,
		-0.944859, -0.006364, 0.327416,
		35.962624, 30.278496, 37.645836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.176914, 30.010084, 36.846203>,  <36.624027, 30.282951, 37.416645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.176914, 30.010084, 36.846203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941887, 30.229235, 37.084396>,  <35.800873, 30.360725, 37.227310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941887, 30.229235, 37.084396>,  <36.176914, 30.010084, 36.846203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.941887, 30.229235, 37.084396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155610, 0.645671, -0.747593,
		-0.794073, -0.531923, -0.294120,
		-0.587566, 0.547876, 0.595482,
		35.765617, 30.393597, 37.263042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.526196, 30.023787, 36.505436>,  <36.176914, 30.010084, 36.846203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.526196, 30.023787, 36.505436> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542950, 30.326572, 36.766281>,  <35.553001, 30.508244, 36.922787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542950, 30.326572, 36.766281>,  <35.526196, 30.023787, 36.505436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.542950, 30.326572, 36.766281> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373534, 0.617220, -0.692468,
		-0.926670, -0.214579, 0.308607,
		0.041889, 0.756964, 0.652112,
		35.555515, 30.553661, 36.961914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.929203, 30.298853, 36.428963>,  <35.526196, 30.023787, 36.505436>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.929203, 30.298853, 36.428963> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163265, 30.580509, 36.589851>,  <35.303703, 30.749502, 36.686386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163265, 30.580509, 36.589851>,  <34.929203, 30.298853, 36.428963>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163265, 30.580509, 36.589851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415366, 0.686256, -0.597096,
		-0.696468, 0.182321, 0.694040,
		0.585153, 0.704139, 0.402225,
		35.338810, 30.791750, 36.710518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436260, 30.798340, 36.668190>,  <34.929203, 30.298853, 36.428963>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436260, 30.798340, 36.668190> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793926, 30.955088, 36.581562>,  <35.008526, 31.049137, 36.529587>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793926, 30.955088, 36.581562>,  <34.436260, 30.798340, 36.668190>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793926, 30.955088, 36.581562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434539, 0.642972, -0.630685,
		-0.107898, 0.658046, 0.745207,
		0.894166, 0.391872, -0.216571,
		35.062176, 31.072649, 36.516590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227650, 31.422077, 36.308590>,  <34.436260, 30.798340, 36.668190>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227650, 31.422077, 36.308590> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622440, 31.421852, 36.244244>,  <34.859314, 31.421717, 36.205635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.622440, 31.421852, 36.244244>,  <34.227650, 31.422077, 36.308590>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.622440, 31.421852, 36.244244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104836, 0.756243, -0.645838,
		0.122018, 0.654291, 0.746334,
		0.986976, -0.000561, -0.160869,
		34.918533, 31.421684, 36.195984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480568, 32.156605, 36.301861>,  <34.227650, 31.422077, 36.308590>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480568, 32.156605, 36.301861> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740505, 31.939823, 36.088696>,  <34.896465, 31.809755, 35.960796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740505, 31.939823, 36.088696>,  <34.480568, 32.156605, 36.301861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740505, 31.939823, 36.088696> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271029, 0.489826, -0.828622,
		0.710108, 0.682906, 0.171424,
		0.649839, -0.541950, -0.532916,
		34.935455, 31.777239, 35.928822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805840, 32.659576, 35.970154>,  <34.480568, 32.156605, 36.301861>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805840, 32.659576, 35.970154> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872215, 32.320553, 35.768517>,  <34.912041, 32.117138, 35.647533>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872215, 32.320553, 35.768517>,  <34.805840, 32.659576, 35.970154>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.872215, 32.320553, 35.768517> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251344, 0.457945, -0.852709,
		0.953567, 0.268198, -0.137038,
		0.165939, -0.847559, -0.504092,
		34.921997, 32.066284, 35.617290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.293049, 32.826038, 35.411121>,  <34.805840, 32.659576, 35.970154>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.293049, 32.826038, 35.411121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114876, 32.487206, 35.295162>,  <35.007973, 32.283905, 35.225586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114876, 32.487206, 35.295162>,  <35.293049, 32.826038, 35.411121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.114876, 32.487206, 35.295162> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206534, 0.412280, -0.887338,
		0.871169, -0.335374, -0.358594,
		-0.445431, -0.847083, -0.289900,
		34.981247, 32.233082, 35.208191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542568, 32.757122, 34.731544>,  <35.293049, 32.826038, 35.411121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542568, 32.757122, 34.731544> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232029, 32.506538, 34.759357>,  <35.045704, 32.356190, 34.776047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.232029, 32.506538, 34.759357>,  <35.542568, 32.757122, 34.731544>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.232029, 32.506538, 34.759357> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283525, 0.248559, -0.926192,
		0.562937, -0.738762, -0.370585,
		-0.776348, -0.626458, 0.069534,
		34.999126, 32.318600, 34.780216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.584328, 32.428509, 34.075596>,  <35.542568, 32.757122, 34.731544>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.584328, 32.428509, 34.075596> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222351, 32.417728, 34.245464>,  <35.005165, 32.411259, 34.347385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.222351, 32.417728, 34.245464>,  <35.584328, 32.428509, 34.075596>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222351, 32.417728, 34.245464> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424571, 0.124150, -0.896842,
		-0.028555, -0.991897, -0.123791,
		-0.904944, -0.026948, 0.424676,
		34.950867, 32.409645, 34.372868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<36.967850, 27.262930, 40.187565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604660, 27.372341, 40.314537>,  <36.386745, 27.437988, 40.390720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.604660, 27.372341, 40.314537>,  <36.967850, 27.262930, 40.187565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604660, 27.372341, 40.314537> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051358, 0.679187, -0.732166,
		-0.415860, -0.681093, -0.602639,
		-0.907977, 0.273528, 0.317426,
		36.332268, 27.454399, 40.409763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.523220, 27.197617, 39.648727>,  <36.967850, 27.262930, 40.187565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.523220, 27.197617, 39.648727> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.346912, 27.463074, 39.890488>,  <36.241127, 27.622349, 40.035545>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.346912, 27.463074, 39.890488>,  <36.523220, 27.197617, 39.648727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.346912, 27.463074, 39.890488> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081568, 0.640936, -0.763248,
		-0.893906, -0.385717, -0.228374,
		-0.440771, 0.663643, 0.604399,
		36.214680, 27.662167, 40.071808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.929161, 27.243458, 39.340527>,  <36.523220, 27.197617, 39.648727>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.929161, 27.243458, 39.340527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938625, 27.550072, 39.597233>,  <35.944305, 27.734039, 39.751255>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.938625, 27.550072, 39.597233>,  <35.929161, 27.243458, 39.340527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.938625, 27.550072, 39.597233> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337923, 0.610293, -0.716484,
		-0.940876, -0.199916, 0.273470,
		0.023660, 0.766535, 0.641767,
		35.945724, 27.780033, 39.789764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.350163, 27.712202, 39.242023>,  <35.929161, 27.243458, 39.340527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.350163, 27.712202, 39.242023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622444, 27.957520, 39.402279>,  <35.785812, 28.104710, 39.498432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.622444, 27.957520, 39.402279>,  <35.350163, 27.712202, 39.242023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622444, 27.957520, 39.402279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254231, 0.710688, -0.655964,
		-0.687024, 0.344667, 0.639689,
		0.680709, 0.613292, 0.400635,
		35.826656, 28.141506, 39.522469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.989594, 28.420828, 39.209198>,  <35.350163, 27.712202, 39.242023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.989594, 28.420828, 39.209198> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379467, 28.488531, 39.267635>,  <35.613392, 28.529154, 39.302696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.379467, 28.488531, 39.267635>,  <34.989594, 28.420828, 39.209198>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.379467, 28.488531, 39.267635> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040534, 0.776336, -0.629015,
		-0.219884, 0.607169, 0.763543,
		0.974684, 0.169260, 0.146093,
		35.671871, 28.539309, 39.311462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070465, 29.087326, 39.624706>,  <34.989594, 28.420828, 39.209198>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070465, 29.087326, 39.624706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387161, 29.003820, 39.395077>,  <35.577179, 28.953716, 39.257298>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.387161, 29.003820, 39.395077>,  <35.070465, 29.087326, 39.624706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387161, 29.003820, 39.395077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132461, 0.858751, -0.494976,
		0.596320, 0.467936, 0.652256,
		0.791742, -0.208766, -0.574074,
		35.624683, 28.941191, 39.222855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.382076, 29.803270, 39.531204>,  <35.070465, 29.087326, 39.624706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.382076, 29.803270, 39.531204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566284, 29.573967, 39.260120>,  <35.676807, 29.436384, 39.097469>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.566284, 29.573967, 39.260120>,  <35.382076, 29.803270, 39.531204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566284, 29.573967, 39.260120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133646, 0.710010, -0.691393,
		0.877532, 0.408973, 0.250358,
		0.460518, -0.573260, -0.677714,
		35.704441, 29.401989, 39.056805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.854454, 30.171537, 39.347237>,  <35.382076, 29.803270, 39.531204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.854454, 30.171537, 39.347237> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846409, 29.904951, 39.049129>,  <35.841579, 29.744999, 38.870266>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.846409, 29.904951, 39.049129>,  <35.854454, 30.171537, 39.347237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.846409, 29.904951, 39.049129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114377, 0.738986, -0.663941,
		0.993234, -0.098598, 0.061362,
		-0.020118, -0.666467, -0.745263,
		35.840374, 29.705011, 38.825550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491009, 30.225447, 38.894039>,  <35.854454, 30.171537, 39.347237>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491009, 30.225447, 38.894039> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230526, 30.055012, 38.642841>,  <36.074234, 29.952751, 38.492123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.230526, 30.055012, 38.642841>,  <36.491009, 30.225447, 38.894039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.230526, 30.055012, 38.642841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139965, 0.745880, -0.651209,
		0.745880, -0.511970, -0.426086,
		0.651209, 0.426086, 0.627995,
		36.035164, 29.927185, 38.454441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269310, 30.470987, 38.814899>,  <36.491009, 30.225447, 38.894039>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269310, 30.470987, 38.814899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460705, 30.792307, 38.956753>,  <37.575542, 30.985098, 39.041866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.460705, 30.792307, 38.956753>,  <37.269310, 30.470987, 38.814899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460705, 30.792307, 38.956753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102276, -0.452101, 0.886083,
		0.872119, -0.387707, -0.298482,
		0.478485, 0.803298, 0.354633,
		37.604252, 31.033297, 39.063141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.694130, 30.150936, 39.264515>,  <37.269310, 30.470987, 38.814899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.694130, 30.150936, 39.264515> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686035, 30.537113, 39.368446>,  <37.681179, 30.768820, 39.430805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.686035, 30.537113, 39.368446>,  <37.694130, 30.150936, 39.264515>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.686035, 30.537113, 39.368446> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046033, -0.258702, 0.964860,
		0.998735, 0.031482, -0.039208,
		-0.020233, 0.965444, 0.259824,
		37.679966, 30.826746, 39.446392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179707, 30.165848, 39.835197>,  <37.694130, 30.150936, 39.264515>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179707, 30.165848, 39.835197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962002, 30.500298, 39.862568>,  <37.831379, 30.700968, 39.878990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.962002, 30.500298, 39.862568>,  <38.179707, 30.165848, 39.835197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.962002, 30.500298, 39.862568> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053703, -0.046669, 0.997466,
		0.837197, 0.546553, -0.019502,
		-0.544258, 0.836123, 0.068423,
		37.798725, 30.751135, 39.883095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538090, 30.637827, 40.292458>,  <38.179707, 30.165848, 39.835197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.538090, 30.637827, 40.292458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157440, 30.760618, 40.287117>,  <37.929050, 30.834293, 40.283913>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.157440, 30.760618, 40.287117>,  <38.538090, 30.637827, 40.292458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157440, 30.760618, 40.287117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032064, -0.056004, 0.997916,
		0.305592, 0.950067, 0.063137,
		-0.951623, 0.306979, -0.013348,
		37.871952, 30.852713, 40.283112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522194, 31.136616, 40.809055>,  <38.538090, 30.637827, 40.292458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522194, 31.136616, 40.809055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152390, 31.000591, 40.740192>,  <37.930508, 30.918976, 40.698875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.152390, 31.000591, 40.740192>,  <38.522194, 31.136616, 40.809055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.152390, 31.000591, 40.740192> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192272, 0.026105, 0.980994,
		-0.329106, 0.940040, -0.089519,
		-0.924511, -0.340063, -0.172153,
		37.875038, 30.898573, 40.688545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199024, 31.204830, 41.412899>,  <38.522194, 31.136616, 40.809055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199024, 31.204830, 41.412899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940948, 30.958786, 41.231628>,  <37.786102, 30.811159, 41.122868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.940948, 30.958786, 41.231628>,  <38.199024, 31.204830, 41.412899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.940948, 30.958786, 41.231628> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402168, -0.230898, 0.885972,
		-0.649609, 0.753873, -0.098405,
		-0.645189, -0.615111, -0.453177,
		37.747391, 30.774252, 41.095676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455585, 31.296591, 41.758472>,  <38.199024, 31.204830, 41.412899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455585, 31.296591, 41.758472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494267, 30.939827, 41.581772>,  <37.517475, 30.725769, 41.475750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.494267, 30.939827, 41.581772>,  <37.455585, 31.296591, 41.758472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494267, 30.939827, 41.581772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248637, -0.451413, 0.856975,
		-0.963757, 0.026961, -0.265416,
		0.096707, -0.891908, -0.441756,
		37.523277, 30.672255, 41.449245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.795258, 30.931829, 41.893299>,  <37.455585, 31.296591, 41.758472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.795258, 30.931829, 41.893299> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061966, 30.647058, 41.805134>,  <37.221989, 30.476196, 41.752235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.061966, 30.647058, 41.805134>,  <36.795258, 30.931829, 41.893299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061966, 30.647058, 41.805134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301490, -0.528134, 0.793838,
		-0.681563, -0.462852, -0.566780,
		0.666765, -0.711929, -0.220412,
		37.261997, 30.433479, 41.739010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.478481, 30.308083, 42.130085>,  <36.795258, 30.931829, 41.893299>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.478481, 30.308083, 42.130085> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868401, 30.233253, 42.081482>,  <37.102352, 30.188356, 42.052319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.868401, 30.233253, 42.081482>,  <36.478481, 30.308083, 42.130085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.868401, 30.233253, 42.081482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023538, -0.627936, 0.777909,
		-0.221825, -0.755448, -0.616516,
		0.974802, -0.187071, -0.121510,
		37.160843, 30.177132, 42.045029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539936, 29.709805, 42.388630>,  <36.478481, 30.308083, 42.130085>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539936, 29.709805, 42.388630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931412, 29.788914, 42.366516>,  <37.166298, 29.836380, 42.353249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.931412, 29.788914, 42.366516>,  <36.539936, 29.709805, 42.388630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931412, 29.788914, 42.366516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157580, -0.550632, 0.819740,
		0.131680, -0.810981, -0.570062,
		0.978687, 0.197774, -0.055287,
		37.225018, 29.848246, 42.349930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.960239, 29.021103, 42.448936>,  <36.539936, 29.709805, 42.388630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.960239, 29.021103, 42.448936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177334, 29.321274, 42.599823>,  <37.307590, 29.501377, 42.690353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.177334, 29.321274, 42.599823>,  <36.960239, 29.021103, 42.448936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177334, 29.321274, 42.599823> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137391, -0.522392, 0.841564,
		0.828587, -0.404925, -0.386625,
		0.542740, 0.750428, 0.377215,
		37.340157, 29.546402, 42.712986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457973, 28.693367, 42.779816>,  <36.960239, 29.021103, 42.448936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457973, 28.693367, 42.779816> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456573, 29.070784, 42.912308>,  <37.455734, 29.297234, 42.991802>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.456573, 29.070784, 42.912308>,  <37.457973, 28.693367, 42.779816>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.456573, 29.070784, 42.912308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092808, -0.329500, 0.939583,
		0.995678, 0.034033, -0.086414,
		-0.003504, 0.943542, 0.331234,
		37.455521, 29.353846, 43.011677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.042564, 28.755541, 43.214825>,  <37.457973, 28.693367, 42.779816>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.042564, 28.755541, 43.214825> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821892, 29.070980, 43.323456>,  <37.689487, 29.260244, 43.388634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.821892, 29.070980, 43.323456>,  <38.042564, 28.755541, 43.214825>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.821892, 29.070980, 43.323456> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282380, -0.129785, 0.950483,
		0.784798, 0.601054, -0.151085,
		-0.551682, 0.788600, 0.271580,
		37.656387, 29.307560, 43.404930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.469231, 28.966427, 43.704430>,  <38.042564, 28.755541, 43.214825>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.469231, 28.966427, 43.704430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103977, 29.112570, 43.776764>,  <37.884827, 29.200256, 43.820164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.103977, 29.112570, 43.776764>,  <38.469231, 28.966427, 43.704430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103977, 29.112570, 43.776764> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085471, -0.262150, 0.961235,
		0.398602, 0.893191, 0.208150,
		-0.913133, 0.365359, 0.180835,
		37.830036, 29.222178, 43.831013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.051281, 33.781651, 44.496510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094509, 33.411011, 44.352436>,  <31.120447, 33.188625, 44.265991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.094509, 33.411011, 44.352436>,  <31.051281, 33.781651, 44.496510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094509, 33.411011, 44.352436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332026, 0.375142, -0.865464,
		0.937059, -0.026057, 0.348198,
		0.108072, -0.926601, -0.360182,
		31.126930, 33.133030, 44.244381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720028, 33.719009, 44.217705>,  <31.051281, 33.781651, 44.496510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720028, 33.719009, 44.217705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526989, 33.424767, 44.027554>,  <31.411165, 33.248222, 43.913464>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.526989, 33.424767, 44.027554>,  <31.720028, 33.719009, 44.217705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.526989, 33.424767, 44.027554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431749, 0.272427, -0.859870,
		0.762033, -0.620212, 0.186126,
		-0.482596, -0.735609, -0.475375,
		31.382210, 33.204082, 43.884941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259495, 33.283176, 43.770779>,  <31.720028, 33.719009, 44.217705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259495, 33.283176, 43.770779> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889431, 33.214725, 43.635250>,  <31.667393, 33.173656, 43.553932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.889431, 33.214725, 43.635250>,  <32.259495, 33.283176, 43.770779>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889431, 33.214725, 43.635250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327508, 0.091384, -0.940419,
		0.191896, -0.981001, -0.028498,
		-0.925156, -0.171129, -0.338822,
		31.611883, 33.163387, 43.533604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.325890, 32.698521, 43.306961>,  <32.259495, 33.283176, 43.770779>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.325890, 32.698521, 43.306961> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979048, 32.871082, 43.207344>,  <31.770943, 32.974617, 43.147575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.979048, 32.871082, 43.207344>,  <32.325890, 32.698521, 43.306961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.979048, 32.871082, 43.207344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347379, 0.165375, -0.923027,
		-0.357009, -0.886874, -0.293257,
		-0.867105, 0.431401, -0.249041,
		31.718916, 33.000504, 43.132633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205711, 32.457890, 42.718220>,  <32.325890, 32.698521, 43.306961>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205711, 32.457890, 42.718220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990694, 32.795090, 42.726280>,  <31.861685, 32.997410, 42.731117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.990694, 32.795090, 42.726280>,  <32.205711, 32.457890, 42.718220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.990694, 32.795090, 42.726280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470484, 0.319663, -0.822472,
		-0.699782, -0.432634, -0.568448,
		-0.537541, 0.842997, 0.020147,
		31.829432, 33.047989, 42.732323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270710, 32.631065, 41.958401>,  <32.205711, 32.457890, 42.718220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270710, 32.631065, 41.958401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092159, 32.951157, 42.118595>,  <31.985027, 33.143211, 42.214710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.092159, 32.951157, 42.118595>,  <32.270710, 32.631065, 41.958401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.092159, 32.951157, 42.118595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241016, 0.538521, -0.807407,
		-0.861775, -0.263888, -0.433252,
		-0.446381, 0.800223, 0.400483,
		31.958244, 33.191223, 42.238739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.692707, 32.826351, 41.547688>,  <32.270710, 32.631065, 41.958401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.692707, 32.826351, 41.547688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850451, 33.135349, 41.746777>,  <31.945097, 33.320747, 41.866230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.850451, 33.135349, 41.746777>,  <31.692707, 32.826351, 41.547688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.850451, 33.135349, 41.746777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132694, 0.488072, -0.862658,
		-0.909325, 0.406243, 0.089971,
		0.394361, 0.772498, 0.497722,
		31.968760, 33.367100, 41.896091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.347317, 33.547325, 41.281784>,  <31.692707, 32.826351, 41.547688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.347317, 33.547325, 41.281784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700157, 33.653534, 41.437420>,  <31.911861, 33.717258, 41.530800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.700157, 33.653534, 41.437420>,  <31.347317, 33.547325, 41.281784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.700157, 33.653534, 41.437420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130345, 0.656161, -0.743278,
		-0.452664, 0.706364, 0.544192,
		0.882103, 0.265523, 0.389091,
		31.964788, 33.733192, 41.554146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.439299, 34.198048, 41.046307>,  <31.347317, 33.547325, 41.281784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.439299, 34.198048, 41.046307> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819744, 34.131718, 41.150528>,  <32.048012, 34.091919, 41.213062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.819744, 34.131718, 41.150528>,  <31.439299, 34.198048, 41.046307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819744, 34.131718, 41.150528> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308039, 0.448362, -0.839097,
		0.022318, 0.878336, 0.477522,
		0.951112, -0.165822, 0.260555,
		32.105076, 34.081970, 41.228695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.746822, 34.718727, 40.771252>,  <31.439299, 34.198048, 41.046307>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.746822, 34.718727, 40.771252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074650, 34.507423, 40.860016>,  <32.271347, 34.380642, 40.913273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.074650, 34.507423, 40.860016>,  <31.746822, 34.718727, 40.771252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.074650, 34.507423, 40.860016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424535, 0.299756, -0.854352,
		0.384805, 0.794408, 0.469937,
		0.819570, -0.528264, 0.221906,
		32.320522, 34.348946, 40.926586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305332, 35.207199, 40.583614>,  <31.746822, 34.718727, 40.771252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305332, 35.207199, 40.583614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446075, 34.832958, 40.571964>,  <32.530521, 34.608414, 40.564972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.446075, 34.832958, 40.571964>,  <32.305332, 35.207199, 40.583614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.446075, 34.832958, 40.571964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482475, 0.207939, -0.850870,
		0.802131, 0.285332, 0.524568,
		0.351859, -0.935600, -0.029129,
		32.551632, 34.552277, 40.563225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971344, 35.280094, 40.464592>,  <32.305332, 35.207199, 40.583614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971344, 35.280094, 40.464592> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896225, 34.906933, 40.341675>,  <32.851154, 34.683037, 40.267925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.896225, 34.906933, 40.341675>,  <32.971344, 35.280094, 40.464592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896225, 34.906933, 40.341675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344924, 0.230291, -0.909941,
		0.919652, -0.276873, 0.278533,
		-0.187795, -0.932902, -0.307288,
		32.839886, 34.627064, 40.249489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.597897, 35.043800, 40.083519>,  <32.971344, 35.280094, 40.464592>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.597897, 35.043800, 40.083519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275368, 34.840755, 39.962074>,  <33.081852, 34.718929, 39.889206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275368, 34.840755, 39.962074>,  <33.597897, 35.043800, 40.083519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275368, 34.840755, 39.962074> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224125, 0.212820, -0.951039,
		0.547374, -0.834888, -0.057832,
		-0.806319, -0.507612, -0.303611,
		33.033470, 34.688473, 39.870991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.895641, 34.712177, 39.502460>,  <33.597897, 35.043800, 40.083519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.895641, 34.712177, 39.502460> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499252, 34.675484, 39.463367>,  <33.261417, 34.653465, 39.439911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.499252, 34.675484, 39.463367>,  <33.895641, 34.712177, 39.502460>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.499252, 34.675484, 39.463367> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090624, 0.078697, -0.992771,
		0.098775, -0.992668, -0.069672,
		-0.990975, -0.091747, -0.097733,
		33.201958, 34.647964, 39.434048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327873, 34.031036, 39.505520>,  <33.895641, 34.712177, 39.502460>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327873, 34.031036, 39.505520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644299, 34.247284, 39.620033>,  <34.834152, 34.377033, 39.688740>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.644299, 34.247284, 39.620033>,  <34.327873, 34.031036, 39.505520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644299, 34.247284, 39.620033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274333, -0.104774, 0.955910,
		0.546774, -0.834720, 0.065426,
		0.791062, 0.540615, 0.286279,
		34.881618, 34.409470, 39.705917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.666725, 33.612949, 39.931164>,  <34.327873, 34.031036, 39.505520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.666725, 33.612949, 39.931164> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746254, 33.993652, 40.024654>,  <34.793972, 34.222073, 40.080750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.746254, 33.993652, 40.024654>,  <34.666725, 33.612949, 39.931164>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746254, 33.993652, 40.024654> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224374, -0.187946, 0.956207,
		0.954006, -0.242554, 0.176183,
		0.198819, 0.951758, 0.233724,
		34.805901, 34.279179, 40.094772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.004429, 33.593090, 40.550713>,  <34.666725, 33.612949, 39.931164>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.004429, 33.593090, 40.550713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895206, 33.977795, 40.542244>,  <34.829674, 34.208618, 40.537163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.895206, 33.977795, 40.542244>,  <35.004429, 33.593090, 40.550713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.895206, 33.977795, 40.542244> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181284, -0.029830, 0.982978,
		0.944763, 0.272244, 0.182498,
		-0.273054, 0.961766, -0.021171,
		34.813290, 34.266323, 40.535892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.571041, 33.929985, 40.881363>,  <35.004429, 33.593090, 40.550713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.571041, 33.929985, 40.881363> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259750, 34.179695, 40.908588>,  <35.072975, 34.329521, 40.924923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.259750, 34.179695, 40.908588>,  <35.571041, 33.929985, 40.881363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.259750, 34.179695, 40.908588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001824, -0.106133, 0.994350,
		0.627976, 0.773958, 0.081457,
		-0.778230, 0.624280, 0.068061,
		35.026279, 34.366978, 40.929008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.787926, 34.570171, 41.211514>,  <35.571041, 33.929985, 40.881363>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.787926, 34.570171, 41.211514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401558, 34.481575, 41.265091>,  <35.169739, 34.428417, 41.297237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.401558, 34.481575, 41.265091>,  <35.787926, 34.570171, 41.211514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401558, 34.481575, 41.265091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194217, -0.278089, 0.940716,
		-0.171109, 0.934671, 0.311628,
		-0.965920, -0.221488, 0.133945,
		35.111782, 34.415127, 41.305275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.735470, 34.795872, 41.888451>,  <35.787926, 34.570171, 41.211514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.735470, 34.795872, 41.888451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378822, 34.619793, 41.846039>,  <35.164833, 34.514145, 41.820591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.378822, 34.619793, 41.846039>,  <35.735470, 34.795872, 41.888451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378822, 34.619793, 41.846039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032631, -0.171095, 0.984714,
		-0.451613, 0.881448, 0.138187,
		-0.891617, -0.440200, -0.106031,
		35.111336, 34.487732, 41.814228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439877, 35.029694, 42.486244>,  <35.735470, 34.795872, 41.888451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439877, 35.029694, 42.486244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242992, 34.707081, 42.355259>,  <35.124863, 34.513512, 42.276669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.242992, 34.707081, 42.355259>,  <35.439877, 35.029694, 42.486244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.242992, 34.707081, 42.355259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006026, -0.379339, 0.925238,
		-0.870453, 0.453442, 0.191576,
		-0.492214, -0.806531, -0.327464,
		35.095329, 34.465122, 42.257019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736107, 34.973835, 42.828884>,  <35.439877, 35.029694, 42.486244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736107, 34.973835, 42.828884> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837162, 34.606041, 42.708405>,  <34.897797, 34.385365, 42.636116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837162, 34.606041, 42.708405>,  <34.736107, 34.973835, 42.828884>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837162, 34.606041, 42.708405> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134234, -0.341594, 0.930212,
		-0.958204, -0.194577, -0.209726,
		0.252639, -0.919486, -0.301197,
		34.912952, 34.330196, 42.618046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.169056, 34.430077, 43.110546>,  <34.736107, 34.973835, 42.828884>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.169056, 34.430077, 43.110546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497643, 34.217903, 43.026802>,  <34.694794, 34.090599, 42.976555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.497643, 34.217903, 43.026802>,  <34.169056, 34.430077, 43.110546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497643, 34.217903, 43.026802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136891, -0.539815, 0.830579,
		-0.553592, -0.653628, -0.516049,
		0.821460, -0.530444, -0.209361,
		34.744083, 34.058773, 42.963997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.014454, 33.700871, 43.088573>,  <34.169056, 34.430077, 43.110546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.014454, 33.700871, 43.088573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410244, 33.691998, 43.145775>,  <34.647717, 33.686672, 43.180096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.410244, 33.691998, 43.145775>,  <34.014454, 33.700871, 43.088573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.410244, 33.691998, 43.145775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118773, -0.689017, 0.714947,
		0.082668, -0.724406, -0.684399,
		0.989474, -0.022185, 0.142999,
		34.707085, 33.685341, 43.188675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113075, 32.996738, 43.172119>,  <34.014454, 33.700871, 43.088573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113075, 32.996738, 43.172119> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.430943, 33.172157, 43.340015>,  <34.621662, 33.277409, 43.440754>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.430943, 33.172157, 43.340015>,  <34.113075, 32.996738, 43.172119>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430943, 33.172157, 43.340015> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047064, -0.644854, 0.762855,
		0.605220, -0.625969, -0.491804,
		0.794666, 0.438549, 0.419739,
		34.669342, 33.303722, 43.465939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.473267, 32.402500, 43.497662>,  <34.113075, 32.996738, 43.172119>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.473267, 32.402500, 43.497662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611343, 32.719509, 43.698761>,  <34.694191, 32.909714, 43.819420>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611343, 32.719509, 43.698761>,  <34.473267, 32.402500, 43.497662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611343, 32.719509, 43.698761> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166737, -0.475370, 0.863841,
		0.923602, -0.382020, -0.031953,
		0.345194, 0.792518, 0.502749,
		34.714901, 32.957264, 43.849586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792858, 32.113239, 44.085190>,  <34.473267, 32.402500, 43.497662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792858, 32.113239, 44.085190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749847, 32.498631, 44.183292>,  <34.724041, 32.729866, 44.242153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.749847, 32.498631, 44.183292>,  <34.792858, 32.113239, 44.085190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.749847, 32.498631, 44.183292> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055916, -0.252160, 0.966069,
		0.992628, 0.090166, 0.080988,
		-0.107529, 0.963476, 0.245259,
		34.717590, 32.787674, 44.256870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.270512, 32.364594, 44.640320>,  <34.792858, 32.113239, 44.085190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.270512, 32.364594, 44.640320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955215, 32.609539, 44.664631>,  <34.766037, 32.756504, 44.679218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.955215, 32.609539, 44.664631>,  <35.270512, 32.364594, 44.640320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955215, 32.609539, 44.664631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074262, -0.192707, 0.978442,
		0.610873, 0.766732, 0.197374,
		-0.788238, 0.612361, 0.060780,
		34.718742, 32.793247, 44.682865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922924, 32.451424, 45.119778>,  <35.270512, 32.364594, 44.640320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922924, 32.451424, 45.119778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255604, 32.303299, 45.285255>,  <36.455212, 32.214424, 45.384541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.255604, 32.303299, 45.285255>,  <35.922924, 32.451424, 45.119778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.255604, 32.303299, 45.285255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519113, 0.254305, -0.815997,
		0.196969, 0.893419, 0.403739,
		0.831700, -0.370313, 0.413695,
		36.505116, 32.192204, 45.409363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.373672, 33.010746, 45.069454>,  <35.922924, 32.451424, 45.119778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.373672, 33.010746, 45.069454> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605309, 32.687744, 45.114338>,  <36.744289, 32.493942, 45.141270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.605309, 32.687744, 45.114338>,  <36.373672, 33.010746, 45.069454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605309, 32.687744, 45.114338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627589, 0.353684, -0.693570,
		0.520374, 0.472062, 0.711596,
		0.579089, -0.807505, 0.112213,
		36.779034, 32.445492, 45.148003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011093, 33.286068, 45.103287>,  <36.373672, 33.010746, 45.069454>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011093, 33.286068, 45.103287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079540, 32.901142, 45.018745>,  <37.120609, 32.670185, 44.968021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.079540, 32.901142, 45.018745>,  <37.011093, 33.286068, 45.103287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079540, 32.901142, 45.018745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660781, 0.271210, -0.699867,
		0.730813, -0.019896, 0.682288,
		0.171119, -0.962314, -0.211351,
		37.130875, 32.612450, 44.955341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.777691, 33.233982, 45.134693>,  <37.011093, 33.286068, 45.103287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.777691, 33.233982, 45.134693> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688244, 32.903679, 44.927570>,  <37.634575, 32.705498, 44.803295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.688244, 32.903679, 44.927570>,  <37.777691, 33.233982, 45.134693>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.688244, 32.903679, 44.927570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519449, 0.348559, -0.780179,
		0.824722, -0.443437, 0.350993,
		-0.223619, -0.825754, -0.517808,
		37.621159, 32.655952, 44.772228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.439678, 33.004818, 44.839359>,  <37.777691, 33.233982, 45.134693>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.439678, 33.004818, 44.839359> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145531, 32.835560, 44.627628>,  <37.969044, 32.734005, 44.500591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.145531, 32.835560, 44.627628>,  <38.439678, 33.004818, 44.839359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.145531, 32.835560, 44.627628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497064, 0.194113, -0.845723,
		0.460610, -0.885026, 0.067585,
		-0.735367, -0.423143, -0.529325,
		37.924919, 32.708618, 44.468830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.767948, 32.510670, 44.364933>,  <38.439678, 33.004818, 44.839359>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.767948, 32.510670, 44.364933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413502, 32.617313, 44.213291>,  <38.200836, 32.681301, 44.122307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.413502, 32.617313, 44.213291>,  <38.767948, 32.510670, 44.364933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.413502, 32.617313, 44.213291> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384807, -0.032670, -0.922419,
		-0.258316, -0.963249, -0.073645,
		-0.886113, 0.266614, -0.379104,
		38.147667, 32.697296, 44.099560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709698, 31.961990, 43.737343>,  <38.767948, 32.510670, 44.364933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709698, 31.961990, 43.737343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471195, 32.275124, 43.666183>,  <38.328094, 32.463005, 43.623486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.471195, 32.275124, 43.666183>,  <38.709698, 31.961990, 43.737343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471195, 32.275124, 43.666183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333335, 0.039825, -0.941967,
		-0.730321, -0.620953, -0.284692,
		-0.596255, 0.782836, -0.177901,
		38.292320, 32.509975, 43.612812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.487476, 31.914627, 43.009178>,  <38.709698, 31.961990, 43.737343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.487476, 31.914627, 43.009178> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375366, 32.291763, 43.081280>,  <38.308098, 32.518047, 43.124542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.375366, 32.291763, 43.081280>,  <38.487476, 31.914627, 43.009178>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375366, 32.291763, 43.081280> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274064, 0.258564, -0.926301,
		-0.919964, -0.210220, -0.330869,
		-0.280278, 0.942843, 0.180256,
		38.291283, 32.574615, 43.135357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.956802, 32.083832, 42.563259>,  <38.487476, 31.914627, 43.009178>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.956802, 32.083832, 42.563259> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.127037, 32.426052, 42.681183>,  <38.229176, 32.631386, 42.751938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.127037, 32.426052, 42.681183>,  <37.956802, 32.083832, 42.563259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.127037, 32.426052, 42.681183> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217100, 0.219735, -0.951096,
		-0.878491, 0.468772, -0.092225,
		0.425582, 0.855552, 0.294805,
		38.254711, 32.682716, 42.769623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.658726, 32.573524, 42.099396>,  <37.956802, 32.083832, 42.563259>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.658726, 32.573524, 42.099396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988441, 32.737366, 42.255737>,  <38.186272, 32.835670, 42.349545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.988441, 32.737366, 42.255737>,  <37.658726, 32.573524, 42.099396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.988441, 32.737366, 42.255737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206756, 0.424901, -0.881312,
		-0.527063, 0.807270, 0.265555,
		0.824292, 0.409602, 0.390858,
		38.235729, 32.860245, 42.372993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564438, 33.318256, 41.898235>,  <37.658726, 32.573524, 42.099396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564438, 33.318256, 41.898235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948704, 33.266148, 41.996334>,  <38.179264, 33.234882, 42.055191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.948704, 33.266148, 41.996334>,  <37.564438, 33.318256, 41.898235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.948704, 33.266148, 41.996334> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270556, 0.638062, -0.720886,
		-0.062568, 0.758884, 0.648213,
		0.960669, -0.130273, 0.245243,
		38.236904, 33.227066, 42.069908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797058, 34.061111, 41.899639>,  <37.564438, 33.318256, 41.898235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797058, 34.061111, 41.899639> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107502, 33.813663, 41.850708>,  <38.293766, 33.665195, 41.821350>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.107502, 33.813663, 41.850708>,  <37.797058, 34.061111, 41.899639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107502, 33.813663, 41.850708> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322324, 0.555893, -0.766218,
		0.542000, 0.555239, 0.630829,
		0.776108, -0.618622, -0.122327,
		38.340336, 33.628078, 41.814011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.344635, 34.517315, 41.759724>,  <37.797058, 34.061111, 41.899639>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.344635, 34.517315, 41.759724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465065, 34.159988, 41.626255>,  <38.537323, 33.945591, 41.546173>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.465065, 34.159988, 41.626255>,  <38.344635, 34.517315, 41.759724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465065, 34.159988, 41.626255> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225735, 0.406729, -0.885220,
		0.926499, 0.191192, 0.324108,
		0.301071, -0.893318, -0.333675,
		38.555386, 33.891994, 41.526154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960552, 34.673016, 41.552567>,  <38.344635, 34.517315, 41.759724>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.960552, 34.673016, 41.552567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889427, 34.332245, 41.355549>,  <38.846752, 34.127781, 41.237339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.889427, 34.332245, 41.355549>,  <38.960552, 34.673016, 41.552567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.889427, 34.332245, 41.355549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343536, 0.415289, -0.842329,
		0.922153, -0.318982, 0.218825,
		-0.177812, -0.851931, -0.492541,
		38.836082, 34.076664, 41.207787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<24.784521, 42.263618, 31.125959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.052406, 42.210800, 30.833645>,  <25.213137, 42.179108, 30.658257>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.052406, 42.210800, 30.833645>,  <24.784521, 42.263618, 31.125959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.052406, 42.210800, 30.833645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330527, -0.828218, 0.452556,
		-0.665009, -0.544627, -0.511023,
		0.669712, -0.132047, -0.730787,
		25.253321, 42.171185, 30.614408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.733469, 41.610195, 31.012674>,  <24.784521, 42.263618, 31.125959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.733469, 41.610195, 31.012674> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082361, 41.694256, 30.836016>,  <25.291697, 41.744694, 30.730021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.082361, 41.694256, 30.836016>,  <24.733469, 41.610195, 31.012674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.082361, 41.694256, 30.836016> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340648, -0.908982, 0.240231,
		-0.350963, -0.359982, -0.864430,
		0.872229, 0.210154, -0.441646,
		25.344030, 41.757301, 30.703522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.941931, 41.020218, 30.585657>,  <24.733469, 41.610195, 31.012674>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.941931, 41.020218, 30.585657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.293633, 41.205326, 30.630827>,  <25.504654, 41.316391, 30.657928>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.293633, 41.205326, 30.630827>,  <24.941931, 41.020218, 30.585657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293633, 41.205326, 30.630827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402135, -0.848182, 0.344780,
		0.255336, -0.257739, -0.931866,
		0.879255, 0.462771, 0.112926,
		25.557409, 41.344158, 30.664705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.545696, 40.691853, 30.114851>,  <24.941931, 41.020218, 30.585657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.545696, 40.691853, 30.114851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693699, 40.875778, 30.437756>,  <25.782501, 40.986134, 30.631498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.693699, 40.875778, 30.437756>,  <25.545696, 40.691853, 30.114851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.693699, 40.875778, 30.437756> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556167, -0.805650, 0.203974,
		0.744159, 0.373499, -0.553829,
		0.370008, 0.459811, 0.807259,
		25.804701, 41.013721, 30.679934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048101, 40.237278, 30.249365>,  <25.545696, 40.691853, 30.114851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048101, 40.237278, 30.249365> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089649, 40.479042, 30.565315>,  <26.114578, 40.624100, 30.754885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.089649, 40.479042, 30.565315>,  <26.048101, 40.237278, 30.249365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089649, 40.479042, 30.565315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473622, -0.728402, 0.495089,
		0.874582, 0.322677, -0.361920,
		0.103869, 0.604409, 0.789874,
		26.120810, 40.660366, 30.802277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.808807, 40.269089, 30.420649>,  <26.048101, 40.237278, 30.249365>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.808807, 40.269089, 30.420649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594549, 40.372616, 30.742170>,  <26.465994, 40.434731, 30.935083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.594549, 40.372616, 30.742170>,  <26.808807, 40.269089, 30.420649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.594549, 40.372616, 30.742170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438902, -0.727872, 0.526847,
		0.721423, 0.634993, 0.276285,
		-0.535644, 0.258817, 0.803803,
		26.433857, 40.450260, 30.983311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.219320, 40.068737, 31.043077>,  <26.808807, 40.269089, 30.420649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.219320, 40.068737, 31.043077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853689, 40.131584, 31.192625>,  <26.634312, 40.169292, 31.282352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.853689, 40.131584, 31.192625>,  <27.219320, 40.068737, 31.043077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853689, 40.131584, 31.192625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229992, -0.558458, 0.797012,
		0.334017, 0.814517, 0.474337,
		-0.914077, 0.157122, 0.373867,
		26.579466, 40.178722, 31.304785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.365335, 40.401825, 31.702000>,  <27.219320, 40.068737, 31.043077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.365335, 40.401825, 31.702000> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004990, 40.229671, 31.679321>,  <26.788782, 40.126381, 31.665714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.004990, 40.229671, 31.679321>,  <27.365335, 40.401825, 31.702000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.004990, 40.229671, 31.679321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236828, -0.596721, 0.766706,
		-0.363809, 0.677270, 0.639491,
		-0.900864, -0.430384, -0.056696,
		26.734730, 40.100555, 31.662313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.157667, 40.486656, 32.445652>,  <27.365335, 40.401825, 31.702000>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.157667, 40.486656, 32.445652> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922295, 40.211277, 32.276043>,  <26.781071, 40.046051, 32.174278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.922295, 40.211277, 32.276043>,  <27.157667, 40.486656, 32.445652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.922295, 40.211277, 32.276043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180674, -0.623117, 0.760974,
		-0.788103, 0.371171, 0.491045,
		-0.588430, -0.688445, -0.424020,
		26.745766, 40.004742, 32.148838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651838, 40.215633, 33.022202>,  <27.157667, 40.486656, 32.445652>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651838, 40.215633, 33.022202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675230, 39.945320, 32.728291>,  <26.689264, 39.783131, 32.551945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.675230, 39.945320, 32.728291>,  <26.651838, 40.215633, 33.022202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.675230, 39.945320, 32.728291> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163586, -0.719600, 0.674844,
		-0.984794, -0.159662, 0.068469,
		0.058477, -0.675784, -0.734777,
		26.692774, 39.742584, 32.507858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.084927, 39.658237, 33.074913>,  <26.651838, 40.215633, 33.022202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.084927, 39.658237, 33.074913> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.382944, 39.490986, 32.867039>,  <26.561754, 39.390633, 32.742313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.382944, 39.490986, 32.867039>,  <26.084927, 39.658237, 33.074913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.382944, 39.490986, 32.867039> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013049, -0.788111, 0.615395,
		-0.666886, -0.451716, -0.592635,
		0.745046, -0.418132, -0.519686,
		26.606457, 39.365547, 32.711132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.828302, 39.063797, 32.925823>,  <26.084927, 39.658237, 33.074913>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.828302, 39.063797, 32.925823> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224337, 39.022560, 32.887665>,  <26.461958, 38.997818, 32.864769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.224337, 39.022560, 32.887665>,  <25.828302, 39.063797, 32.925823>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.224337, 39.022560, 32.887665> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030896, -0.822396, 0.568075,
		-0.137022, -0.559496, -0.817428,
		0.990086, -0.103094, -0.095400,
		26.521362, 38.991631, 32.859043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.979389, 38.415981, 32.950829>,  <25.828302, 39.063797, 32.925823>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.979389, 38.415981, 32.950829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.352461, 38.554737, 32.990376>,  <26.576303, 38.637989, 33.014103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.352461, 38.554737, 32.990376>,  <25.979389, 38.415981, 32.950829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.352461, 38.554737, 32.990376> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159238, -0.641930, 0.750046,
		0.323650, -0.683810, -0.653954,
		0.932681, 0.346887, 0.098872,
		26.632265, 38.658802, 33.020039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.372547, 37.844639, 32.987930>,  <25.979389, 38.415981, 32.950829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.372547, 37.844639, 32.987930> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623354, 38.116146, 33.140835>,  <26.773838, 38.279053, 33.232578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.623354, 38.116146, 33.140835>,  <26.372547, 37.844639, 32.987930>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623354, 38.116146, 33.140835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270795, -0.650016, 0.710035,
		0.730426, -0.341688, -0.591377,
		0.627015, 0.678770, 0.382261,
		26.811459, 38.319778, 33.255512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.969013, 37.440556, 33.086094>,  <26.372547, 37.844639, 32.987930>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.969013, 37.440556, 33.086094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001842, 37.766640, 33.315422>,  <27.021540, 37.962292, 33.453018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.001842, 37.766640, 33.315422>,  <26.969013, 37.440556, 33.086094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.001842, 37.766640, 33.315422> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380731, -0.557275, 0.737895,
		0.921037, 0.157720, -0.356113,
		0.082072, 0.815211, 0.573319,
		27.026464, 38.011204, 33.487419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670942, 37.534927, 33.339985>,  <26.969013, 37.440556, 33.086094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670942, 37.534927, 33.339985> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464088, 37.756664, 33.600838>,  <27.339975, 37.889706, 33.757351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.464088, 37.756664, 33.600838>,  <27.670942, 37.534927, 33.339985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.464088, 37.756664, 33.600838> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458749, -0.463719, 0.757967,
		0.722578, 0.691137, -0.014498,
		-0.517137, 0.554341, 0.652131,
		27.308947, 37.922966, 33.796478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177284, 37.874222, 33.746799>,  <27.670942, 37.534927, 33.339985>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177284, 37.874222, 33.746799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842426, 37.863194, 33.965313>,  <27.641512, 37.856575, 34.096420>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.842426, 37.863194, 33.965313>,  <28.177284, 37.874222, 33.746799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842426, 37.863194, 33.965313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528273, -0.299700, 0.794422,
		0.141819, 0.953635, 0.265457,
		-0.837147, -0.027570, 0.546283,
		27.591282, 37.854923, 34.129196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394140, 38.017593, 34.399765>,  <28.177284, 37.874222, 33.746799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394140, 38.017593, 34.399765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028597, 37.881321, 34.488129>,  <27.809271, 37.799557, 34.541145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.028597, 37.881321, 34.488129>,  <28.394140, 38.017593, 34.399765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.028597, 37.881321, 34.488129> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335519, -0.327200, 0.883384,
		-0.228671, 0.881406, 0.413319,
		-0.913858, -0.340680, 0.220907,
		27.754440, 37.779118, 34.554401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.892321, 37.916855, 34.963619>,  <28.394140, 38.017593, 34.399765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.892321, 37.916855, 34.963619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269524, 37.928928, 34.831059>,  <29.495846, 37.936172, 34.751522>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.269524, 37.928928, 34.831059>,  <28.892321, 37.916855, 34.963619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269524, 37.928928, 34.831059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106539, 0.970842, -0.214744,
		0.315256, 0.237812, 0.918727,
		0.943007, 0.030181, -0.331400,
		29.552425, 37.937984, 34.731640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.152979, 38.553471, 35.112331>,  <28.892321, 37.916855, 34.963619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.152979, 38.553471, 35.112331> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405411, 38.464500, 34.815075>,  <29.556870, 38.411118, 34.636719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.405411, 38.464500, 34.815075>,  <29.152979, 38.553471, 35.112331>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405411, 38.464500, 34.815075> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136861, 0.911054, -0.388909,
		0.763548, 0.347141, 0.544507,
		0.631081, -0.222429, -0.743143,
		29.594734, 38.397770, 34.592133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.679115, 39.074829, 35.022396>,  <29.152979, 38.553471, 35.112331>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.679115, 39.074829, 35.022396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631046, 38.885880, 34.673130>,  <29.602205, 38.772511, 34.463570>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.631046, 38.885880, 34.673130>,  <29.679115, 39.074829, 35.022396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631046, 38.885880, 34.673130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165067, 0.876805, -0.451626,
		0.978933, 0.089857, -0.183344,
		-0.120175, -0.472376, -0.873166,
		29.594994, 38.744167, 34.411179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212631, 39.371693, 34.491493>,  <29.679115, 39.074829, 35.022396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212631, 39.371693, 34.491493> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898994, 39.204796, 34.307705>,  <29.710814, 39.104660, 34.197430>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898994, 39.204796, 34.307705>,  <30.212631, 39.371693, 34.491493>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898994, 39.204796, 34.307705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208795, 0.874492, -0.437800,
		0.584473, -0.247339, -0.772797,
		-0.784089, -0.417238, -0.459474,
		29.663767, 39.079624, 34.169865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.346455, 39.689320, 33.916477>,  <30.212631, 39.371693, 34.491493>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.346455, 39.689320, 33.916477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965675, 39.566830, 33.918243>,  <29.737207, 39.493336, 33.919304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.965675, 39.566830, 33.918243>,  <30.346455, 39.689320, 33.916477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.965675, 39.566830, 33.918243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255960, 0.787601, -0.560508,
		0.168165, -0.534705, -0.828137,
		-0.951948, -0.306228, 0.004416,
		29.680092, 39.474960, 33.919567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171015, 39.835640, 33.276627>,  <30.346455, 39.689320, 33.916477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171015, 39.835640, 33.276627> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829769, 39.789181, 33.480080>,  <29.625023, 39.761307, 33.602150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829769, 39.789181, 33.480080>,  <30.171015, 39.835640, 33.276627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829769, 39.789181, 33.480080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356357, 0.841780, -0.405483,
		-0.381062, -0.527178, -0.759523,
		-0.853113, -0.116147, 0.508634,
		29.573835, 39.754337, 33.632671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.668295, 39.939220, 32.740124>,  <30.171015, 39.835640, 33.276627>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.668295, 39.939220, 32.740124> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488600, 40.013691, 33.089645>,  <29.380783, 40.058372, 33.299358>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.488600, 40.013691, 33.089645>,  <29.668295, 39.939220, 32.740124>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488600, 40.013691, 33.089645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443913, 0.802258, -0.399154,
		-0.775325, -0.567206, -0.277758,
		-0.449236, 0.186173, 0.873800,
		29.353828, 40.069542, 33.351784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.965183, 40.216644, 32.530933>,  <29.668295, 39.939220, 32.740124>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.965183, 40.216644, 32.530933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000158, 40.301804, 32.920197>,  <29.021143, 40.352898, 33.153755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.000158, 40.301804, 32.920197>,  <28.965183, 40.216644, 32.530933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.000158, 40.301804, 32.920197> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340654, 0.924392, -0.171620,
		-0.936114, -0.316503, 0.153351,
		0.087438, 0.212896, 0.973155,
		29.026390, 40.365673, 33.212143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.299204, 40.462681, 32.777821>,  <28.965183, 40.216644, 32.530933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.299204, 40.462681, 32.777821> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562563, 40.620712, 33.034081>,  <28.720577, 40.715530, 33.187836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.562563, 40.620712, 33.034081>,  <28.299204, 40.462681, 32.777821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562563, 40.620712, 33.034081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378762, 0.909449, -0.171586,
		-0.650426, -0.129681, 0.748418,
		0.658396, 0.395076, 0.640648,
		28.760082, 40.739235, 33.226276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880630, 40.979729, 33.185543>,  <28.299204, 40.462681, 32.777821>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880630, 40.979729, 33.185543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271147, 41.064365, 33.203800>,  <28.505457, 41.115147, 33.214752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.271147, 41.064365, 33.203800>,  <27.880630, 40.979729, 33.185543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271147, 41.064365, 33.203800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190137, 0.939066, -0.286362,
		-0.103450, 0.270895, 0.957034,
		0.976292, 0.211592, 0.045639,
		28.564034, 41.127842, 33.217491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880079, 41.652760, 33.407730>,  <27.880630, 40.979729, 33.185543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880079, 41.652760, 33.407730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248459, 41.605469, 33.259205>,  <28.469486, 41.577095, 33.170090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.248459, 41.605469, 33.259205>,  <27.880079, 41.652760, 33.407730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.248459, 41.605469, 33.259205> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010737, 0.960203, -0.279097,
		0.389534, 0.253048, 0.885568,
		0.920949, -0.118226, -0.371315,
		28.524744, 41.570000, 33.147812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.329563, 42.212852, 33.627621>,  <27.880079, 41.652760, 33.407730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.329563, 42.212852, 33.627621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505634, 42.098991, 33.286983>,  <28.611277, 42.030674, 33.082600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.505634, 42.098991, 33.286983>,  <28.329563, 42.212852, 33.627621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.505634, 42.098991, 33.286983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165203, 0.906555, -0.388414,
		0.882582, 0.311657, 0.352021,
		0.440179, -0.284652, -0.851596,
		28.637688, 42.013596, 33.031506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.798960, 42.802803, 33.373360>,  <28.329563, 42.212852, 33.627621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.798960, 42.802803, 33.373360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755964, 42.562283, 33.056656>,  <28.730167, 42.417969, 32.866634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.755964, 42.562283, 33.056656>,  <28.798960, 42.802803, 33.373360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.755964, 42.562283, 33.056656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089547, 0.798990, -0.594641,
		0.990165, 0.006982, -0.139727,
		-0.107489, -0.601305, -0.791757,
		28.723717, 42.381889, 32.819130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.141253, 43.117237, 32.796139>,  <28.798960, 42.802803, 33.373360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.141253, 43.117237, 32.796139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878883, 42.873260, 32.618271>,  <28.721462, 42.726875, 32.511551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.878883, 42.873260, 32.618271>,  <29.141253, 43.117237, 32.796139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.878883, 42.873260, 32.618271> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216107, 0.716190, -0.663604,
		0.723229, -0.339178, -0.601580,
		-0.655925, -0.609943, -0.444670,
		28.682106, 42.690277, 32.484871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160137, 43.282379, 32.075249>,  <29.141253, 43.117237, 32.796139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160137, 43.282379, 32.075249> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809004, 43.097820, 32.126652>,  <28.598324, 42.987083, 32.157494>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.809004, 43.097820, 32.126652>,  <29.160137, 43.282379, 32.075249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.809004, 43.097820, 32.126652> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440159, 0.671348, -0.596282,
		0.188852, -0.580002, -0.792422,
		-0.877836, -0.461401, 0.128508,
		28.545652, 42.959400, 32.165203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.948765, 43.085243, 31.438723>,  <29.160137, 43.282379, 32.075249>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.948765, 43.085243, 31.438723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.610291, 43.062622, 31.650673>,  <28.407206, 43.049049, 31.777843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.610291, 43.062622, 31.650673>,  <28.948765, 43.085243, 31.438723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.610291, 43.062622, 31.650673> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471506, 0.542775, -0.695038,
		-0.248294, -0.837972, -0.485956,
		-0.846187, -0.056557, 0.529876,
		28.356434, 43.045654, 31.809635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.396694, 43.056583, 30.978865>,  <28.948765, 43.085243, 31.438723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.396694, 43.056583, 30.978865> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195402, 43.185669, 31.299519>,  <28.074627, 43.263119, 31.491911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.195402, 43.185669, 31.299519>,  <28.396694, 43.056583, 30.978865>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195402, 43.185669, 31.299519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569198, 0.574205, -0.588475,
		-0.650208, -0.752427, -0.105272,
		-0.503232, 0.322711, 0.801632,
		28.044432, 43.282482, 31.540009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.670189, 43.064793, 30.777962>,  <28.396694, 43.056583, 30.978865>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.670189, 43.064793, 30.777962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675045, 43.290428, 31.108212>,  <27.677958, 43.425812, 31.306360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.675045, 43.290428, 31.108212>,  <27.670189, 43.064793, 30.777962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.675045, 43.290428, 31.108212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646670, 0.634202, -0.423800,
		-0.762673, -0.528761, 0.372480,
		0.012139, 0.564092, 0.825622,
		27.678686, 43.459656, 31.355898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.870180, 43.143211, 30.958651>,  <27.670189, 43.064793, 30.777962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.870180, 43.143211, 30.958651> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122105, 43.426735, 31.085728>,  <27.273260, 43.596848, 31.161974>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.122105, 43.426735, 31.085728>,  <26.870180, 43.143211, 30.958651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122105, 43.426735, 31.085728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538290, 0.693152, -0.479359,
		-0.559981, 0.130897, 0.818099,
		0.629813, 0.708807, 0.317692,
		27.311049, 43.639378, 31.181036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.551182, 43.816715, 30.907921>,  <26.870180, 43.143211, 30.958651>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.551182, 43.816715, 30.907921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927380, 43.951221, 30.927502>,  <27.153097, 44.031925, 30.939249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.927380, 43.951221, 30.927502>,  <26.551182, 43.816715, 30.907921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.927380, 43.951221, 30.927502> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247212, 0.775906, -0.580393,
		-0.233149, 0.533754, 0.812864,
		0.940493, 0.336268, 0.048951,
		27.209528, 44.052101, 30.942186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.463757, 44.521099, 30.976734>,  <26.551182, 43.816715, 30.907921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.463757, 44.521099, 30.976734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843622, 44.496857, 30.853794>,  <27.071543, 44.482311, 30.780031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.843622, 44.496857, 30.853794>,  <26.463757, 44.521099, 30.976734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.843622, 44.496857, 30.853794> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152013, 0.768708, -0.621273,
		0.273913, 0.636723, 0.720802,
		0.949665, -0.060603, -0.307349,
		27.128521, 44.478676, 30.761589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777273, 45.248966, 30.935057>,  <26.463757, 44.521099, 30.976734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777273, 45.248966, 30.935057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997490, 45.011707, 30.700081>,  <27.129620, 44.869350, 30.559095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.997490, 45.011707, 30.700081>,  <26.777273, 45.248966, 30.935057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.997490, 45.011707, 30.700081> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123368, 0.638146, -0.759967,
		0.825643, 0.490863, 0.278149,
		0.550540, -0.593147, -0.587437,
		27.162651, 44.833763, 30.523849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.218493, 45.723457, 30.533079>,  <26.777273, 45.248966, 30.935057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.218493, 45.723457, 30.533079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192583, 45.379921, 30.329828>,  <27.177038, 45.173798, 30.207878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.192583, 45.379921, 30.329828>,  <27.218493, 45.723457, 30.533079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192583, 45.379921, 30.329828> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187871, 0.489595, -0.851470,
		0.980056, -0.150613, 0.129640,
		-0.064772, -0.858844, -0.508126,
		27.173151, 45.122269, 30.177391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834658, 45.799881, 30.043892>,  <27.218493, 45.723457, 30.533079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834658, 45.799881, 30.043892> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618107, 45.497795, 29.896076>,  <27.488176, 45.316544, 29.807386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.618107, 45.497795, 29.896076>,  <27.834658, 45.799881, 30.043892>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618107, 45.497795, 29.896076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195695, 0.314262, -0.928947,
		0.817689, -0.575226, -0.022342,
		-0.541376, -0.755218, -0.369537,
		27.455694, 45.271229, 29.785215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.393559, 29.913691, 44.696812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055805, 29.766048, 44.541492>,  <37.853153, 29.677464, 44.448299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.055805, 29.766048, 44.541492>,  <38.393559, 29.913691, 44.696812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055805, 29.766048, 44.541492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333081, -0.205994, 0.920121,
		-0.419608, 0.906272, 0.050997,
		-0.844385, -0.369104, -0.388299,
		37.802490, 29.655317, 44.425003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823208, 30.253014, 45.063072>,  <38.393559, 29.913691, 44.696812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823208, 30.253014, 45.063072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645607, 29.931761, 44.904156>,  <37.539047, 29.739010, 44.808807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.645607, 29.931761, 44.904156>,  <37.823208, 30.253014, 45.063072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645607, 29.931761, 44.904156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527589, -0.124052, 0.840393,
		-0.724232, 0.582743, -0.368644,
		-0.444002, -0.803132, -0.397291,
		37.512405, 29.690821, 44.784969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.056965, 30.303848, 45.075333>,  <37.823208, 30.253014, 45.063072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.056965, 30.303848, 45.075333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173462, 29.921415, 45.062172>,  <37.243362, 29.691956, 45.054276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.173462, 29.921415, 45.062172>,  <37.056965, 30.303848, 45.075333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.173462, 29.921415, 45.062172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475809, -0.174613, 0.862042,
		-0.829928, -0.235410, -0.505768,
		0.291247, -0.956082, -0.032906,
		37.260838, 29.634590, 45.052299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485146, 29.990751, 45.314262>,  <37.056965, 30.303848, 45.075333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485146, 29.990751, 45.314262> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762760, 29.705624, 45.354652>,  <36.929329, 29.534548, 45.378887>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.762760, 29.705624, 45.354652>,  <36.485146, 29.990751, 45.314262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762760, 29.705624, 45.354652> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410511, -0.276608, 0.868889,
		-0.591430, -0.644496, -0.484597,
		0.694039, -0.712820, 0.100979,
		36.970974, 29.491777, 45.384945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138714, 29.319765, 45.399139>,  <36.485146, 29.990751, 45.314262>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138714, 29.319765, 45.399139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499802, 29.302198, 45.570335>,  <36.716454, 29.291658, 45.673054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.499802, 29.302198, 45.570335>,  <36.138714, 29.319765, 45.399139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499802, 29.302198, 45.570335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413561, -0.362862, 0.835044,
		0.118630, -0.930807, -0.345723,
		0.902715, -0.043916, 0.427992,
		36.770615, 29.289024, 45.698734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.998154, 28.685055, 45.779716>,  <36.138714, 29.319765, 45.399139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.998154, 28.685055, 45.779716> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335949, 28.852118, 45.913826>,  <36.538624, 28.952354, 45.994289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.335949, 28.852118, 45.913826>,  <35.998154, 28.685055, 45.779716>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.335949, 28.852118, 45.913826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119183, -0.463753, 0.877911,
		0.522148, -0.781343, -0.341856,
		0.844486, 0.417656, 0.335270,
		36.589294, 28.977415, 46.014408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.462593, 28.175962, 45.991268>,  <35.998154, 28.685055, 45.779716>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.462593, 28.175962, 45.991268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576008, 28.495787, 46.203045>,  <36.644058, 28.687681, 46.330109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.576008, 28.495787, 46.203045>,  <36.462593, 28.175962, 45.991268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.576008, 28.495787, 46.203045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094416, -0.526138, 0.845142,
		0.954301, -0.289619, -0.073690,
		0.283540, 0.799562, 0.529438,
		36.661072, 28.735655, 46.361877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844204, 27.897894, 46.542679>,  <36.462593, 28.175962, 45.991268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844204, 27.897894, 46.542679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795883, 28.278143, 46.657032>,  <36.766891, 28.506292, 46.725643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.795883, 28.278143, 46.657032>,  <36.844204, 27.897894, 46.542679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.795883, 28.278143, 46.657032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051404, -0.293592, 0.954548,
		0.991345, 0.100617, 0.084332,
		-0.120803, 0.950621, 0.285879,
		36.759644, 28.563330, 46.742794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195202, 27.963320, 47.171520>,  <36.844204, 27.897894, 46.542679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195202, 27.963320, 47.171520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958508, 28.285662, 47.163052>,  <36.816490, 28.479067, 47.157970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.958508, 28.285662, 47.163052>,  <37.195202, 27.963320, 47.171520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958508, 28.285662, 47.163052> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151342, -0.085255, 0.984798,
		0.791801, 0.585941, 0.172408,
		-0.591732, 0.805856, -0.021172,
		36.780987, 28.527418, 47.156700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435753, 28.392199, 47.780201>,  <37.195202, 27.963320, 47.171520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435753, 28.392199, 47.780201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056671, 28.488068, 47.695896>,  <36.829224, 28.545589, 47.645313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.056671, 28.488068, 47.695896>,  <37.435753, 28.392199, 47.780201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.056671, 28.488068, 47.695896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200127, 0.068162, 0.977396,
		0.248620, 0.968458, -0.016632,
		-0.947701, 0.239672, -0.210761,
		36.772362, 28.559969, 47.632668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238186, 29.028292, 48.167721>,  <37.435753, 28.392199, 47.780201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238186, 29.028292, 48.167721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899986, 28.828764, 48.091499>,  <36.697067, 28.709047, 48.045769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.899986, 28.828764, 48.091499>,  <37.238186, 29.028292, 48.167721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.899986, 28.828764, 48.091499> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312657, 0.173186, 0.933945,
		-0.432871, 0.849226, -0.302388,
		-0.845499, -0.498821, -0.190549,
		36.646336, 28.679117, 48.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543381, 29.465780, 48.300266>,  <37.238186, 29.028292, 48.167721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543381, 29.465780, 48.300266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593090, 29.078119, 48.385403>,  <36.622917, 28.845524, 48.436485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.593090, 29.078119, 48.385403>,  <36.543381, 29.465780, 48.300266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.593090, 29.078119, 48.385403> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256979, 0.175752, 0.950301,
		-0.958393, -0.172796, -0.227210,
		0.124276, -0.969150, 0.212844,
		36.630371, 28.787374, 48.449257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895290, 29.159016, 48.653133>,  <36.543381, 29.465780, 48.300266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895290, 29.159016, 48.653133> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256130, 28.999929, 48.720112>,  <36.472633, 28.904478, 48.760300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.256130, 28.999929, 48.720112>,  <35.895290, 29.159016, 48.653133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256130, 28.999929, 48.720112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066638, 0.254981, 0.964647,
		-0.426349, -0.881367, 0.203516,
		0.902101, -0.397715, 0.167444,
		36.526760, 28.880615, 48.770344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.882450, 28.792656, 49.333500>,  <35.895290, 29.159016, 48.653133>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.882450, 28.792656, 49.333500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253944, 28.926260, 49.269135>,  <36.476841, 29.006422, 49.230515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.253944, 28.926260, 49.269135>,  <35.882450, 28.792656, 49.333500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.253944, 28.926260, 49.269135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052475, 0.311224, 0.948887,
		0.367021, -0.889705, 0.271516,
		0.928731, 0.334013, -0.160914,
		36.532562, 29.026464, 49.220860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.461006, 29.367170, 49.721619>,  <35.882450, 28.792656, 49.333500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.461006, 29.367170, 49.721619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274841, 29.662697, 49.916569>,  <35.163143, 29.840014, 50.033539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.274841, 29.662697, 49.916569>,  <35.461006, 29.367170, 49.721619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.274841, 29.662697, 49.916569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231047, 0.632973, -0.738893,
		-0.854404, -0.231285, -0.465296,
		-0.465415, 0.738818, 0.487377,
		35.135216, 29.884342, 50.062782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.075611, 29.709665, 49.193367>,  <35.461006, 29.367170, 49.721619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.075611, 29.709665, 49.193367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099781, 29.972990, 49.493492>,  <35.114281, 30.130985, 49.673569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.099781, 29.972990, 49.493492>,  <35.075611, 29.709665, 49.193367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099781, 29.972990, 49.493492> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344265, 0.691824, -0.634713,
		-0.936926, 0.296659, -0.184833,
		0.060422, 0.658311, 0.750317,
		35.117908, 30.170483, 49.718586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732067, 30.338989, 48.992233>,  <35.075611, 29.709665, 49.193367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732067, 30.338989, 48.992233> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951488, 30.482941, 49.294117>,  <35.083141, 30.569311, 49.475246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.951488, 30.482941, 49.294117>,  <34.732067, 30.338989, 48.992233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.951488, 30.482941, 49.294117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324823, 0.740007, -0.588965,
		-0.770443, 0.568223, 0.289034,
		0.548551, 0.359879, 0.754705,
		35.116055, 30.590904, 49.520527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.503777, 31.065889, 49.191837>,  <34.732067, 30.338989, 48.992233>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.503777, 31.065889, 49.191837> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889977, 30.993391, 49.266632>,  <35.121696, 30.949892, 49.311508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.889977, 30.993391, 49.266632>,  <34.503777, 31.065889, 49.191837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889977, 30.993391, 49.266632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255674, 0.796113, -0.548484,
		-0.049454, 0.577368, 0.814985,
		0.965497, -0.181245, 0.186989,
		35.179626, 30.939018, 49.322727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.687363, 31.719898, 49.365871>,  <34.503777, 31.065889, 49.191837>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.687363, 31.719898, 49.365871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020809, 31.515301, 49.282490>,  <35.220879, 31.392542, 49.232460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.020809, 31.515301, 49.282490>,  <34.687363, 31.719898, 49.365871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.020809, 31.515301, 49.282490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248679, 0.684551, -0.685236,
		0.493194, 0.519386, 0.697852,
		0.833617, -0.511496, -0.208456,
		35.270893, 31.361853, 49.219952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.312222, 32.218956, 49.291466>,  <34.687363, 31.719898, 49.365871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.312222, 32.218956, 49.291466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376389, 31.870943, 49.105003>,  <35.414890, 31.662134, 48.993126>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.376389, 31.870943, 49.105003>,  <35.312222, 32.218956, 49.291466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.376389, 31.870943, 49.105003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285769, 0.492987, -0.821767,
		0.944776, -0.001385, 0.327715,
		0.160421, -0.870036, -0.466158,
		35.424515, 31.609932, 48.965157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727001, 32.473274, 48.770687>,  <35.312222, 32.218956, 49.291466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727001, 32.473274, 48.770687> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660839, 32.097759, 48.649815>,  <35.621140, 31.872450, 48.577293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.660839, 32.097759, 48.649815>,  <35.727001, 32.473274, 48.770687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.660839, 32.097759, 48.649815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271748, 0.251151, -0.929019,
		0.948047, -0.235783, 0.213573,
		-0.165408, -0.938792, -0.302177,
		35.611217, 31.816122, 48.559162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.394600, 32.208904, 48.446175>,  <35.727001, 32.473274, 48.770687>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.394600, 32.208904, 48.446175> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117607, 31.971622, 48.281944>,  <35.951412, 31.829254, 48.183407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.117607, 31.971622, 48.281944>,  <36.394600, 32.208904, 48.446175>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.117607, 31.971622, 48.281944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332064, 0.243156, -0.911377,
		0.640467, -0.767453, 0.028600,
		-0.692485, -0.593204, -0.410577,
		35.909863, 31.793661, 48.158772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731678, 31.705053, 48.122154>,  <36.394600, 32.208904, 48.446175>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731678, 31.705053, 48.122154> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377472, 31.722795, 47.937157>,  <36.164948, 31.733440, 47.826157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.377472, 31.722795, 47.937157>,  <36.731678, 31.705053, 48.122154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.377472, 31.722795, 47.937157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464114, 0.038214, -0.884951,
		-0.021582, -0.998285, -0.054426,
		-0.885513, 0.044359, -0.462493,
		36.111816, 31.736101, 47.798409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906906, 31.323311, 47.618446>,  <36.731678, 31.705053, 48.122154>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906906, 31.323311, 47.618446> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556900, 31.489357, 47.518822>,  <36.346897, 31.588985, 47.459049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.556900, 31.489357, 47.518822>,  <36.906906, 31.323311, 47.618446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556900, 31.489357, 47.518822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305901, 0.075380, -0.949075,
		-0.375203, -0.906640, -0.192944,
		-0.875013, 0.415118, -0.249059,
		36.294395, 31.613892, 47.444103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577080, 30.893826, 46.977364>,  <36.906906, 31.323311, 47.618446>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577080, 30.893826, 46.977364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429817, 31.264462, 47.008068>,  <36.341457, 31.486843, 47.026489>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429817, 31.264462, 47.008068>,  <36.577080, 30.893826, 46.977364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429817, 31.264462, 47.008068> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231076, 0.171152, -0.957764,
		-0.900590, -0.334873, -0.277123,
		-0.368160, 0.926589, 0.076757,
		36.319370, 31.542439, 47.031094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276539, 31.016064, 46.364967>,  <36.577080, 30.893826, 46.977364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276539, 31.016064, 46.364967> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307514, 31.392799, 46.495777>,  <36.326099, 31.618841, 46.574265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.307514, 31.392799, 46.495777>,  <36.276539, 31.016064, 46.364967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.307514, 31.392799, 46.495777> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162091, 0.311754, -0.936235,
		-0.983732, 0.125510, -0.128522,
		0.077440, 0.941837, 0.327027,
		36.330746, 31.675350, 46.593884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733418, 31.351229, 46.040466>,  <36.276539, 31.016064, 46.364967>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733418, 31.351229, 46.040466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027222, 31.609097, 46.125221>,  <36.203503, 31.763817, 46.176075>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.027222, 31.609097, 46.125221>,  <35.733418, 31.351229, 46.040466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.027222, 31.609097, 46.125221> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027169, 0.284057, -0.958423,
		-0.678056, 0.709725, 0.191127,
		0.734508, 0.644672, 0.211889,
		36.247574, 31.802498, 46.188789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.627892, 31.886992, 45.525620>,  <35.733418, 31.351229, 46.040466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.627892, 31.886992, 45.525620> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992508, 31.973660, 45.665413>,  <36.211277, 32.025661, 45.749290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.992508, 31.973660, 45.665413>,  <35.627892, 31.886992, 45.525620>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.992508, 31.973660, 45.665413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252335, 0.376326, -0.891463,
		-0.324675, 0.900795, 0.288364,
		0.911544, 0.216671, 0.349486,
		36.265972, 32.038662, 45.770260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.289013, 32.595154, 45.393158>,  <35.627892, 31.886992, 45.525620>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.289013, 32.595154, 45.393158> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930614, 32.713097, 45.260342>,  <34.715576, 32.783863, 45.180653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.930614, 32.713097, 45.260342>,  <35.289013, 32.595154, 45.393158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930614, 32.713097, 45.260342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408204, -0.252533, 0.877267,
		0.174818, 0.921567, 0.346631,
		-0.895996, 0.294858, -0.332039,
		34.661816, 32.801556, 45.160728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934841, 32.945713, 45.962067>,  <35.289013, 32.595154, 45.393158>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934841, 32.945713, 45.962067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644985, 32.832150, 45.710896>,  <34.471069, 32.764011, 45.560192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.644985, 32.832150, 45.710896>,  <34.934841, 32.945713, 45.962067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644985, 32.832150, 45.710896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516676, -0.379121, 0.767668,
		-0.456006, 0.880718, 0.128039,
		-0.724642, -0.283906, -0.627927,
		34.427593, 32.746979, 45.522518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.278744, 33.098721, 46.337318>,  <34.934841, 32.945713, 45.962067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.278744, 33.098721, 46.337318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178829, 32.834377, 46.054230>,  <34.118881, 32.675770, 45.884377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.178829, 32.834377, 46.054230>,  <34.278744, 33.098721, 46.337318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.178829, 32.834377, 46.054230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637215, -0.438136, 0.634029,
		-0.729082, 0.609346, -0.311666,
		-0.249791, -0.660858, -0.707722,
		34.103893, 32.636120, 45.841911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.546722, 33.163876, 46.347130>,  <34.278744, 33.098721, 46.337318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.546722, 33.163876, 46.347130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648018, 32.796494, 46.225605>,  <33.708797, 32.576065, 46.152691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.648018, 32.796494, 46.225605>,  <33.546722, 33.163876, 46.347130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.648018, 32.796494, 46.225605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600366, -0.395467, 0.695101,
		-0.758571, 0.006373, -0.651559,
		0.253240, -0.918458, -0.303816,
		33.723991, 32.520958, 46.134460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939095, 32.782303, 46.369362>,  <33.546722, 33.163876, 46.347130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939095, 32.782303, 46.369362> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218380, 32.496490, 46.351753>,  <33.385952, 32.325001, 46.341190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.218380, 32.496490, 46.351753>,  <32.939095, 32.782303, 46.369362>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218380, 32.496490, 46.351753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559283, -0.582826, 0.589505,
		-0.446876, -0.386983, -0.806564,
		0.698215, -0.714534, -0.044018,
		33.427845, 32.282131, 46.338547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.569633, 32.105904, 46.218220>,  <32.939095, 32.782303, 46.369362>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.569633, 32.105904, 46.218220> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915752, 31.995859, 46.385826>,  <33.123425, 31.929832, 46.486389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.915752, 31.995859, 46.385826>,  <32.569633, 32.105904, 46.218220>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.915752, 31.995859, 46.385826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490447, -0.637357, 0.594338,
		0.103551, -0.719784, -0.686432,
		0.865297, -0.275114, 0.419015,
		33.175343, 31.913324, 46.511532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476665, 31.387390, 46.370274>,  <32.569633, 32.105904, 46.218220>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476665, 31.387390, 46.370274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787983, 31.510113, 46.589409>,  <32.974773, 31.583746, 46.720890>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.787983, 31.510113, 46.589409>,  <32.476665, 31.387390, 46.370274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787983, 31.510113, 46.589409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370404, -0.480171, 0.795133,
		0.507009, -0.821769, -0.260071,
		0.778295, 0.306808, 0.547838,
		33.021473, 31.602156, 46.753761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840969, 30.965906, 46.215343>,  <32.476665, 31.387390, 46.370274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840969, 30.965906, 46.215343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446865, 31.024862, 46.250076>,  <31.210403, 31.060236, 46.270916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.446865, 31.024862, 46.250076>,  <31.840969, 30.965906, 46.215343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446865, 31.024862, 46.250076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023741, 0.620505, -0.783843,
		-0.169412, -0.770227, -0.614857,
		-0.985259, 0.147389, 0.086835,
		31.151287, 31.069078, 46.276127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578064, 30.856771, 45.540852>,  <31.840969, 30.965906, 46.215343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578064, 30.856771, 45.540852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297173, 31.075863, 45.722782>,  <31.128637, 31.207317, 45.831940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.297173, 31.075863, 45.722782>,  <31.578064, 30.856771, 45.540852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.297173, 31.075863, 45.722782> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148642, 0.511975, -0.846042,
		-0.696264, -0.661720, -0.278106,
		-0.702226, 0.547730, 0.454829,
		31.086504, 31.240183, 45.859230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169350, 30.978540, 45.095062>,  <31.578064, 30.856771, 45.540852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.169350, 30.978540, 45.095062> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061951, 31.272778, 45.343838>,  <30.997511, 31.449320, 45.493103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.061951, 31.272778, 45.343838>,  <31.169350, 30.978540, 45.095062>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061951, 31.272778, 45.343838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115827, 0.616310, -0.778939,
		-0.956291, -0.281180, -0.080275,
		-0.268497, 0.735594, 0.621941,
		30.981401, 31.493456, 45.530418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.585905, 31.357779, 44.750340>,  <31.169350, 30.978540, 45.095062>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.585905, 31.357779, 44.750340> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756306, 31.594240, 45.024292>,  <30.858545, 31.736118, 45.188663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.756306, 31.594240, 45.024292>,  <30.585905, 31.357779, 44.750340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.756306, 31.594240, 45.024292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185057, 0.797935, -0.573632,
		-0.885594, 0.117627, 0.449319,
		0.426002, 0.591155, 0.684879,
		30.884106, 31.771587, 45.229755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192408, 31.979591, 44.679985>,  <30.585905, 31.357779, 44.750340>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192408, 31.979591, 44.679985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534414, 32.064785, 44.869125>,  <30.739618, 32.115902, 44.982609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.534414, 32.064785, 44.869125>,  <30.192408, 31.979591, 44.679985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.534414, 32.064785, 44.869125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103784, 0.823058, -0.558394,
		-0.508113, 0.526509, 0.681622,
		0.855015, 0.212986, 0.472850,
		30.790918, 32.128681, 45.010979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.086832, 32.666821, 44.928684>,  <30.192408, 31.979591, 44.679985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.086832, 32.666821, 44.928684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.475595, 32.586941, 44.878864>,  <30.708855, 32.539013, 44.848972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.475595, 32.586941, 44.878864>,  <30.086832, 32.666821, 44.928684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.475595, 32.586941, 44.878864> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089476, 0.802973, -0.589262,
		0.217681, 0.561565, 0.798285,
		0.971910, -0.199699, -0.124546,
		30.767168, 32.527031, 44.841499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331860, 33.348713, 44.717949>,  <30.086832, 32.666821, 44.928684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331860, 33.348713, 44.717949> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.637724, 33.109406, 44.622139>,  <30.821241, 32.965820, 44.564651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.637724, 33.109406, 44.622139>,  <30.331860, 33.348713, 44.717949>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.637724, 33.109406, 44.622139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227620, 0.598465, -0.768133,
		0.602898, 0.532838, 0.593799,
		0.764659, -0.598267, -0.239529,
		30.867121, 32.929924, 44.550282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<34.422657, 28.473438, 47.161385> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673622, 28.206030, 47.321098>,  <34.824203, 28.045586, 47.416927>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.673622, 28.206030, 47.321098>,  <34.422657, 28.473438, 47.161385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673622, 28.206030, 47.321098> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108612, -0.432628, -0.895006,
		0.771073, 0.604908, -0.198828,
		0.627415, -0.668520, 0.399288,
		34.861847, 28.005474, 47.440884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.133652, 28.399664, 46.747719>,  <34.422657, 28.473438, 47.161385>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.133652, 28.399664, 46.747719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092934, 28.053576, 46.944099>,  <35.068501, 27.845922, 47.061928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.092934, 28.053576, 46.944099>,  <35.133652, 28.399664, 46.747719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.092934, 28.053576, 46.944099> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372644, -0.490745, -0.787595,
		0.922374, 0.102773, 0.372376,
		-0.101798, -0.865221, 0.490948,
		35.062393, 27.794010, 47.091385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.717228, 28.053484, 46.596329>,  <35.133652, 28.399664, 46.747719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.717228, 28.053484, 46.596329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463673, 27.767776, 46.714996>,  <35.311539, 27.596352, 46.786198>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.463673, 27.767776, 46.714996>,  <35.717228, 28.053484, 46.596329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463673, 27.767776, 46.714996> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226004, -0.537897, -0.812151,
		0.739671, -0.447760, 0.502391,
		-0.633884, -0.714267, 0.296671,
		35.273506, 27.553497, 46.803997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.053173, 27.482494, 46.427822>,  <35.717228, 28.053484, 46.596329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.053173, 27.482494, 46.427822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691315, 27.320986, 46.482357>,  <35.474201, 27.224081, 46.515079>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.691315, 27.320986, 46.482357>,  <36.053173, 27.482494, 46.427822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.691315, 27.320986, 46.482357> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132833, -0.571127, -0.810043,
		0.404940, -0.714689, 0.570300,
		-0.904643, -0.403774, 0.136338,
		35.419922, 27.199854, 46.523258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074169, 26.679289, 46.451710>,  <36.053173, 27.482494, 46.427822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074169, 26.679289, 46.451710> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706612, 26.777571, 46.328247>,  <35.486076, 26.836540, 46.254169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.706612, 26.777571, 46.328247>,  <36.074169, 26.679289, 46.451710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706612, 26.777571, 46.328247> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176258, -0.444272, -0.878382,
		-0.352949, -0.861541, 0.364930,
		-0.918890, 0.245703, -0.308659,
		35.430946, 26.851282, 46.235649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855927, 26.161137, 45.982597>,  <36.074169, 26.679289, 46.451710>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855927, 26.161137, 45.982597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567909, 26.420618, 45.884033>,  <35.395100, 26.576307, 45.824894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.567909, 26.420618, 45.884033>,  <35.855927, 26.161137, 45.982597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.567909, 26.420618, 45.884033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149583, -0.201656, -0.967967,
		-0.677614, -0.733838, 0.048167,
		-0.720044, 0.648704, -0.246415,
		35.351894, 26.615229, 45.810108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436306, 25.761713, 45.536938>,  <35.855927, 26.161137, 45.982597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436306, 25.761713, 45.536938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.343079, 26.145172, 45.471607>,  <35.287144, 26.375248, 45.432407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.343079, 26.145172, 45.471607>,  <35.436306, 25.761713, 45.536938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343079, 26.145172, 45.471607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123095, -0.137521, -0.982820,
		-0.964638, -0.249170, -0.085952,
		-0.233069, 0.958646, -0.163330,
		35.273159, 26.432766, 45.422607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.040375, 25.742056, 44.939636>,  <35.436306, 25.761713, 45.536938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.040375, 25.742056, 44.939636> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155109, 26.124886, 44.956318>,  <35.223949, 26.354584, 44.966328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.155109, 26.124886, 44.956318>,  <35.040375, 25.742056, 44.939636>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155109, 26.124886, 44.956318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112289, 0.076822, -0.990701,
		-0.951377, 0.279483, 0.129504,
		0.286833, 0.957072, 0.041704,
		35.241158, 26.412006, 44.968830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474857, 26.219744, 44.729717>,  <35.040375, 25.742056, 44.939636>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474857, 26.219744, 44.729717> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828770, 26.384058, 44.641708>,  <35.041119, 26.482647, 44.588902>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.828770, 26.384058, 44.641708>,  <34.474857, 26.219744, 44.729717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828770, 26.384058, 44.641708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273064, 0.074430, -0.959112,
		-0.377613, 0.908689, 0.178025,
		0.884785, 0.410785, -0.220024,
		35.094204, 26.507294, 44.575703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.330009, 26.552168, 44.161358>,  <34.474857, 26.219744, 44.729717>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.330009, 26.552168, 44.161358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727577, 26.591454, 44.141434>,  <34.966118, 26.615025, 44.129478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.727577, 26.591454, 44.141434>,  <34.330009, 26.552168, 44.161358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.727577, 26.591454, 44.141434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089409, 0.455636, -0.885665,
		-0.064288, 0.884731, 0.461646,
		0.993918, 0.098213, -0.049811,
		35.025753, 26.620918, 44.126492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.400700, 27.216074, 43.947151>,  <34.330009, 26.552168, 44.161358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.400700, 27.216074, 43.947151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735840, 27.021160, 43.848717>,  <34.936924, 26.904213, 43.789654>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.735840, 27.021160, 43.848717>,  <34.400700, 27.216074, 43.947151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.735840, 27.021160, 43.848717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071345, 0.349188, -0.934333,
		0.541216, 0.800389, 0.257802,
		0.837851, -0.487283, -0.246090,
		34.987194, 26.874975, 43.774891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.871880, 27.725821, 43.616478>,  <34.400700, 27.216074, 43.947151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.871880, 27.725821, 43.616478> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952381, 27.346087, 43.519932>,  <35.000683, 27.118246, 43.462006>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.952381, 27.346087, 43.519932>,  <34.871880, 27.725821, 43.616478>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.952381, 27.346087, 43.519932> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290738, 0.177406, -0.940212,
		0.935397, 0.259397, -0.240304,
		0.201257, -0.949337, -0.241362,
		35.012756, 27.061285, 43.447525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.187481, 27.852882, 43.292953>,  <34.871880, 27.725821, 43.616478>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.187481, 27.852882, 43.292953> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.878582, 27.757170, 43.057537>,  <33.693245, 27.699743, 42.916286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.878582, 27.757170, 43.057537>,  <34.187481, 27.852882, 43.292953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.878582, 27.757170, 43.057537> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619348, 0.077081, 0.781323,
		-0.141590, 0.967886, -0.207723,
		-0.772244, -0.239280, -0.588545,
		33.646908, 27.685385, 42.880974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.708122, 28.345943, 43.440285>,  <34.187481, 27.852882, 43.292953>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.708122, 28.345943, 43.440285> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512249, 28.030964, 43.290546>,  <33.394726, 27.841976, 43.200703>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.512249, 28.030964, 43.290546>,  <33.708122, 28.345943, 43.440285>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.512249, 28.030964, 43.290546> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727672, 0.132571, 0.672993,
		-0.480320, 0.601955, -0.637922,
		-0.489681, -0.787449, -0.374349,
		33.365345, 27.794729, 43.178242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035976, 28.505980, 43.619400>,  <33.708122, 28.345943, 43.440285>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035976, 28.505980, 43.619400> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006927, 28.120796, 43.515526>,  <32.989498, 27.889687, 43.453201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.006927, 28.120796, 43.515526>,  <33.035976, 28.505980, 43.619400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.006927, 28.120796, 43.515526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685189, -0.141033, 0.714580,
		-0.724736, 0.229829, -0.649567,
		-0.072621, -0.962958, -0.259688,
		32.985142, 27.831909, 43.437618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.322910, 28.427036, 43.573864>,  <33.035976, 28.505980, 43.619400>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.322910, 28.427036, 43.573864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511288, 28.078802, 43.630840>,  <32.624313, 27.869862, 43.665028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.511288, 28.078802, 43.630840>,  <32.322910, 28.427036, 43.573864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.511288, 28.078802, 43.630840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561117, -0.171027, 0.809875,
		-0.680706, -0.461333, -0.569045,
		0.470944, -0.870587, 0.142442,
		32.652573, 27.817625, 43.673573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827869, 27.942867, 43.651176>,  <32.322910, 28.427036, 43.573864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827869, 27.942867, 43.651176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.146961, 27.763790, 43.812767>,  <32.338417, 27.656343, 43.909721>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.146961, 27.763790, 43.812767>,  <31.827869, 27.942867, 43.651176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.146961, 27.763790, 43.812767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541913, -0.238401, 0.805913,
		-0.264503, -0.861816, -0.432795,
		0.797727, -0.447703, 0.403971,
		32.386280, 27.629482, 43.933960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506798, 27.358624, 43.923103>,  <31.827869, 27.942867, 43.651176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506798, 27.358624, 43.923103> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854214, 27.380915, 44.120094>,  <32.062664, 27.394289, 44.238289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.854214, 27.380915, 44.120094>,  <31.506798, 27.358624, 43.923103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.854214, 27.380915, 44.120094> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463768, -0.259073, 0.847231,
		0.174804, -0.964248, -0.199170,
		0.868541, 0.055730, 0.492474,
		32.114777, 27.397635, 44.267838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.630817, 26.754543, 44.184559>,  <31.506798, 27.358624, 43.923103>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.630817, 26.754543, 44.184559> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820923, 27.023628, 44.411392>,  <31.934986, 27.185080, 44.547493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.820923, 27.023628, 44.411392>,  <31.630817, 26.754543, 44.184559>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820923, 27.023628, 44.411392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430564, -0.384253, 0.816679,
		0.767292, -0.632304, 0.107024,
		0.475266, 0.672711, 0.567082,
		31.963503, 27.225441, 44.581516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477459, 26.590378, 44.861374>,  <31.630817, 26.754543, 44.184559>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477459, 26.590378, 44.861374> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678301, 26.920919, 44.963379>,  <31.798805, 27.119246, 45.024582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678301, 26.920919, 44.963379>,  <31.477459, 26.590378, 44.861374>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678301, 26.920919, 44.963379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390717, -0.046301, 0.919346,
		0.771514, -0.561242, 0.299623,
		0.502103, 0.826356, 0.255008,
		31.828932, 27.168825, 45.039883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819399, 26.439308, 45.383358>,  <31.477459, 26.590378, 44.861374>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819399, 26.439308, 45.383358> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753931, 26.833105, 45.408607>,  <31.714651, 27.069384, 45.423756>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.753931, 26.833105, 45.408607>,  <31.819399, 26.439308, 45.383358>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753931, 26.833105, 45.408607> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509490, -0.139142, 0.849152,
		0.844768, 0.106820, 0.524363,
		-0.163668, 0.984494, 0.063119,
		31.704830, 27.128454, 45.427544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115837, 26.632309, 46.029964>,  <31.819399, 26.439308, 45.383358>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115837, 26.632309, 46.029964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864553, 26.920889, 45.913437>,  <31.713783, 27.094036, 45.843521>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.864553, 26.920889, 45.913437>,  <32.115837, 26.632309, 46.029964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.864553, 26.920889, 45.913437> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408733, 0.012579, 0.912567,
		0.662035, 0.692353, 0.286978,
		-0.628209, 0.721449, -0.291316,
		31.676090, 27.137323, 45.826042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036446, 27.196842, 46.598995>,  <32.115837, 26.632309, 46.029964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036446, 27.196842, 46.598995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.714621, 27.196487, 46.361446>,  <31.521526, 27.196276, 46.218918>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.714621, 27.196487, 46.361446>,  <32.036446, 27.196842, 46.598995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.714621, 27.196487, 46.361446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592328, 0.073257, 0.802360,
		0.042795, 0.997313, -0.059464,
		-0.804560, -0.000885, -0.593871,
		31.473253, 27.196222, 46.183285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.549812, 27.737747, 46.832142>,  <32.036446, 27.196842, 46.598995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.549812, 27.737747, 46.832142> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339417, 27.476498, 46.614239>,  <31.213179, 27.319748, 46.483498>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.339417, 27.476498, 46.614239>,  <31.549812, 27.737747, 46.832142>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.339417, 27.476498, 46.614239> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.772891, 0.099768, 0.626647,
		-0.354930, 0.750649, -0.557271,
		-0.525989, -0.653125, -0.544759,
		31.181620, 27.280560, 46.450809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.887083, 27.884703, 47.019291>,  <31.549812, 27.737747, 46.832142>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.887083, 27.884703, 47.019291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.816530, 27.539656, 46.829647>,  <30.774199, 27.332626, 46.715862>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.816530, 27.539656, 46.829647>,  <30.887083, 27.884703, 47.019291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.816530, 27.539656, 46.829647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747464, -0.196015, 0.634725,
		-0.640458, 0.466332, -0.610204,
		-0.176383, -0.862620, -0.474105,
		30.763615, 27.280870, 46.687416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.113691, 27.919369, 46.723587>,  <30.887083, 27.884703, 47.019291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.113691, 27.919369, 46.723587> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252510, 27.546532, 46.765079>,  <30.335802, 27.322830, 46.789974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.252510, 27.546532, 46.765079>,  <30.113691, 27.919369, 46.723587>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.252510, 27.546532, 46.765079> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805858, -0.239798, 0.541377,
		-0.479740, -0.271474, -0.834357,
		0.347047, -0.932094, 0.103729,
		30.356625, 27.266903, 46.796200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263390, 28.593391, 46.986954>,  <30.113691, 27.919369, 46.723587>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263390, 28.593391, 46.986954> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.446842, 28.702148, 47.325359>,  <30.556913, 28.767403, 47.528400>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.446842, 28.702148, 47.325359>,  <30.263390, 28.593391, 46.986954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.446842, 28.702148, 47.325359> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303407, 0.846917, -0.436665,
		-0.835226, 0.456953, 0.305928,
		0.458631, 0.271893, 0.846009,
		30.584431, 28.783716, 47.579163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.992886, 29.228111, 47.174366>,  <30.263390, 28.593391, 46.986954>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.992886, 29.228111, 47.174366> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336685, 29.209967, 47.378014>,  <30.542965, 29.199080, 47.500202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.336685, 29.209967, 47.378014>,  <29.992886, 29.228111, 47.174366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.336685, 29.209967, 47.378014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219159, 0.932556, -0.286895,
		-0.461767, 0.358164, 0.811474,
		0.859500, -0.045363, 0.509119,
		30.594536, 29.196358, 47.530750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982985, 29.770838, 47.608997>,  <29.992886, 29.228111, 47.174366>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982985, 29.770838, 47.608997> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364134, 29.675766, 47.533588>,  <30.592823, 29.618723, 47.488342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.364134, 29.675766, 47.533588>,  <29.982985, 29.770838, 47.608997>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.364134, 29.675766, 47.533588> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183962, 0.946842, -0.263908,
		0.241225, 0.216790, 0.945945,
		0.952874, -0.237679, -0.188521,
		30.649996, 29.604462, 47.477032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.284355, 30.301060, 47.903294>,  <29.982985, 29.770838, 47.608997>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.284355, 30.301060, 47.903294> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544451, 30.158575, 47.634876>,  <30.700508, 30.073084, 47.473824>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.544451, 30.158575, 47.634876>,  <30.284355, 30.301060, 47.903294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544451, 30.158575, 47.634876> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299116, 0.931964, -0.204872,
		0.698370, -0.067505, 0.712546,
		0.650238, -0.356210, -0.671048,
		30.739523, 30.051712, 47.433563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.918438, 30.778133, 47.913040>,  <30.284355, 30.301060, 47.903294>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.918438, 30.778133, 47.913040> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948883, 30.571869, 47.571678>,  <30.967150, 30.448111, 47.366859>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.948883, 30.571869, 47.571678>,  <30.918438, 30.778133, 47.913040>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.948883, 30.571869, 47.571678> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030486, 0.856691, -0.514928,
		0.996633, 0.013177, 0.080927,
		0.076115, -0.515661, -0.853405,
		30.971718, 30.417170, 47.315659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403812, 31.131931, 47.555439>,  <30.918438, 30.778133, 47.913040>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403812, 31.131931, 47.555439> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212103, 30.912176, 47.281658>,  <31.097076, 30.780323, 47.117390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.212103, 30.912176, 47.281658>,  <31.403812, 31.131931, 47.555439>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.212103, 30.912176, 47.281658> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094389, 0.743064, -0.662530,
		0.872575, -0.382138, -0.304275,
		-0.479274, -0.549387, -0.684449,
		31.068321, 30.747360, 47.076324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789974, 31.118246, 46.995613>,  <31.403812, 31.131931, 47.555439>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789974, 31.118246, 46.995613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438931, 31.029406, 46.825684>,  <31.228304, 30.976101, 46.723724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.438931, 31.029406, 46.825684>,  <31.789974, 31.118246, 46.995613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.438931, 31.029406, 46.825684> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164250, 0.693239, -0.701742,
		0.450361, -0.685632, -0.571912,
		-0.877608, -0.222101, -0.424823,
		31.175648, 30.962774, 46.698238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.512993, 30.801888, 46.801243>,  <31.789974, 31.118246, 46.995613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.512993, 30.801888, 46.801243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740879, 31.078791, 46.978424>,  <32.877609, 31.244932, 47.084732>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.740879, 31.078791, 46.978424>,  <32.512993, 30.801888, 46.801243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740879, 31.078791, 46.978424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178867, -0.421613, 0.888959,
		0.802143, -0.585682, -0.116376,
		0.569713, 0.692257, 0.442954,
		32.911793, 31.286469, 47.111309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.991276, 30.427221, 47.238113>,  <32.512993, 30.801888, 46.801243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.991276, 30.427221, 47.238113> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961773, 30.801445, 47.376266>,  <32.944073, 31.025980, 47.459156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.961773, 30.801445, 47.376266>,  <32.991276, 30.427221, 47.238113>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961773, 30.801445, 47.376266> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016480, -0.345132, 0.938409,
		0.997140, 0.074905, 0.010038,
		-0.073756, 0.935560, 0.345380,
		32.939648, 31.082113, 47.479881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599640, 30.573168, 47.648674>,  <32.991276, 30.427221, 47.238113>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599640, 30.573168, 47.648674> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280468, 30.781775, 47.769558>,  <33.088966, 30.906939, 47.842091>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.280468, 30.781775, 47.769558>,  <33.599640, 30.573168, 47.648674>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.280468, 30.781775, 47.769558> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029465, -0.534536, 0.844632,
		0.602033, 0.665050, 0.441888,
		-0.797927, 0.521517, 0.302213,
		33.041088, 30.938229, 47.860222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.833092, 30.951172, 48.344730>,  <33.599640, 30.573168, 47.648674>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.833092, 30.951172, 48.344730> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.433098, 30.953220, 48.343891>,  <33.193100, 30.954451, 48.343388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.433098, 30.953220, 48.343891>,  <33.833092, 30.951172, 48.344730>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433098, 30.953220, 48.343891> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004096, -0.430269, 0.902691,
		0.003722, 0.902686, 0.430283,
		-0.999985, 0.005122, -0.002096,
		33.133102, 30.954758, 48.343262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.540215, 31.292854, 49.004826>,  <33.833092, 30.951172, 48.344730>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.540215, 31.292854, 49.004826> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248516, 31.071005, 48.844528>,  <33.073498, 30.937895, 48.748352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.248516, 31.071005, 48.844528>,  <33.540215, 31.292854, 49.004826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.248516, 31.071005, 48.844528> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165577, -0.425221, 0.889815,
		-0.663917, 0.715247, 0.218257,
		-0.729246, -0.554625, -0.400739,
		33.029743, 30.904617, 48.724308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044361, 31.356871, 49.459038>,  <33.540215, 31.292854, 49.004826>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044361, 31.356871, 49.459038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932674, 31.031673, 49.254654>,  <32.865662, 30.836555, 49.132023>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.932674, 31.031673, 49.254654>,  <33.044361, 31.356871, 49.459038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.932674, 31.031673, 49.254654> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096878, -0.505561, 0.857334,
		-0.955329, 0.288881, 0.062399,
		-0.279214, -0.812991, -0.510964,
		32.848911, 30.787775, 49.101364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515259, 31.150854, 49.754868>,  <33.044361, 31.356871, 49.459038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.515259, 31.150854, 49.754868> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.628872, 30.823322, 49.555332>,  <32.697041, 30.626802, 49.435612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.628872, 30.823322, 49.555332>,  <32.515259, 31.150854, 49.754868>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628872, 30.823322, 49.555332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139327, -0.549995, 0.823464,
		-0.948637, -0.164391, -0.270303,
		0.284035, -0.818829, -0.498841,
		32.714081, 30.577673, 49.405682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054565, 30.661572, 49.933613>,  <32.515259, 31.150854, 49.754868>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054565, 30.661572, 49.933613> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356361, 30.447937, 49.781033>,  <32.537437, 30.319757, 49.689484>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.356361, 30.447937, 49.781033>,  <32.054565, 30.661572, 49.933613>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356361, 30.447937, 49.781033> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015016, -0.567000, 0.823581,
		-0.656146, -0.627107, -0.419773,
		0.754484, -0.534086, -0.381452,
		32.582706, 30.287712, 49.666595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.810480, 29.954256, 49.880184>,  <32.054565, 30.661572, 49.933613>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.810480, 29.954256, 49.880184> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208054, 29.978279, 49.917049>,  <32.446598, 29.992693, 49.939167>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.208054, 29.978279, 49.917049>,  <31.810480, 29.954256, 49.880184>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.208054, 29.978279, 49.917049> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041113, -0.574262, 0.817639,
		0.102028, -0.816466, -0.568308,
		0.993931, 0.060057, 0.092158,
		32.506233, 29.996296, 49.944698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<37.010441, 36.840675, 35.620560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273567, 36.611462, 35.816074>,  <37.431442, 36.473934, 35.933384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.273567, 36.611462, 35.816074>,  <37.010441, 36.840675, 35.620560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.273567, 36.611462, 35.816074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741589, -0.379379, 0.553279,
		-0.131610, -0.726436, -0.674514,
		0.657818, -0.573030, 0.488787,
		37.470913, 36.439552, 35.962711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759823, 36.104420, 35.647152>,  <37.010441, 36.840675, 35.620560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759823, 36.104420, 35.647152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982536, 36.217354, 35.959637>,  <37.116165, 36.285114, 36.147125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.982536, 36.217354, 35.959637>,  <36.759823, 36.104420, 35.647152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.982536, 36.217354, 35.959637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762238, -0.200121, 0.615585,
		0.330136, -0.938211, 0.103782,
		0.556779, 0.282333, 0.781207,
		37.149570, 36.302052, 36.194000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.685566, 35.598804, 36.074959>,  <36.759823, 36.104420, 35.647152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.685566, 35.598804, 36.074959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838261, 35.856239, 36.340313>,  <36.929878, 36.010700, 36.499523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.838261, 35.856239, 36.340313>,  <36.685566, 35.598804, 36.074959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838261, 35.856239, 36.340313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529389, -0.436098, 0.727712,
		0.757645, -0.628980, 0.174234,
		0.381734, 0.643585, 0.663383,
		36.952782, 36.049316, 36.539330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.920116, 35.134682, 36.564487>,  <36.685566, 35.598804, 36.074959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.920116, 35.134682, 36.564487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920612, 35.495663, 36.736805>,  <36.920910, 35.712250, 36.840195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.920612, 35.495663, 36.736805>,  <36.920116, 35.134682, 36.564487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920612, 35.495663, 36.736805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409741, -0.392508, 0.823438,
		0.912201, -0.177535, 0.369284,
		0.001242, 0.902452, 0.430789,
		36.920986, 35.766399, 36.866043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.254013, 35.060932, 37.184143>,  <36.920116, 35.134682, 36.564487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.254013, 35.060932, 37.184143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035812, 35.387024, 37.261936>,  <36.904892, 35.582680, 37.308613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035812, 35.387024, 37.261936>,  <37.254013, 35.060932, 37.184143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035812, 35.387024, 37.261936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365060, -0.440007, 0.820442,
		0.754423, 0.376556, 0.537634,
		-0.545506, 0.815229, 0.194486,
		36.872162, 35.631592, 37.320282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384926, 35.279758, 37.874916>,  <37.254013, 35.060932, 37.184143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384926, 35.279758, 37.874916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033455, 35.449955, 37.788303>,  <36.822571, 35.552071, 37.736336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.033455, 35.449955, 37.788303>,  <37.384926, 35.279758, 37.874916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033455, 35.449955, 37.788303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388759, -0.374412, 0.841833,
		0.277117, 0.823879, 0.494399,
		-0.878677, 0.425488, -0.216534,
		36.769852, 35.577602, 37.723343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133785, 35.475140, 38.449505>,  <37.384926, 35.279758, 37.874916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133785, 35.475140, 38.449505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794159, 35.509476, 38.240997>,  <36.590382, 35.530075, 38.115894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.794159, 35.509476, 38.240997>,  <37.133785, 35.475140, 38.449505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.794159, 35.509476, 38.240997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524415, -0.256175, 0.812012,
		-0.063834, 0.962812, 0.262524,
		-0.849066, 0.085838, -0.521266,
		36.539440, 35.535229, 38.084618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631844, 35.659836, 38.950665>,  <37.133785, 35.475140, 38.449505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631844, 35.659836, 38.950665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385380, 35.547096, 38.656479>,  <36.237499, 35.479450, 38.479969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.385380, 35.547096, 38.656479>,  <36.631844, 35.659836, 38.950665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.385380, 35.547096, 38.656479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624294, -0.394550, 0.674230,
		-0.480209, 0.874580, 0.067149,
		-0.616162, -0.281851, -0.735462,
		36.200531, 35.462540, 38.435841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.978195, 35.822453, 39.175293>,  <36.631844, 35.659836, 38.950665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.978195, 35.822453, 39.175293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955303, 35.520439, 38.914021>,  <35.941570, 35.339230, 38.757259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.955303, 35.520439, 38.914021>,  <35.978195, 35.822453, 39.175293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955303, 35.520439, 38.914021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596046, -0.499016, 0.629057,
		-0.800908, 0.425325, -0.421479,
		-0.057228, -0.755038, -0.653179,
		35.938133, 35.293926, 38.718067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309662, 35.756088, 39.051914>,  <35.978195, 35.822453, 39.175293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309662, 35.756088, 39.051914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463234, 35.399170, 38.956909>,  <35.555378, 35.185020, 38.899906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.463234, 35.399170, 38.956909>,  <35.309662, 35.756088, 39.051914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463234, 35.399170, 38.956909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655434, -0.444540, 0.610566,
		-0.650386, -0.078743, -0.755511,
		0.383933, -0.892292, -0.237512,
		35.578415, 35.131481, 38.885654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698063, 35.316444, 38.958626>,  <35.309662, 35.756088, 39.051914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698063, 35.316444, 38.958626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017357, 35.085194, 39.026257>,  <35.208935, 34.946442, 39.066833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017357, 35.085194, 39.026257>,  <34.698063, 35.316444, 38.958626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017357, 35.085194, 39.026257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532947, -0.547074, 0.645506,
		-0.280688, -0.605374, -0.744806,
		0.798236, -0.578128, 0.169075,
		35.256828, 34.911755, 39.076981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425419, 34.671810, 38.886532>,  <34.698063, 35.316444, 38.958626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425419, 34.671810, 38.886532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760197, 34.644161, 39.103691>,  <34.961063, 34.627571, 39.233986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.760197, 34.644161, 39.103691>,  <34.425419, 34.671810, 38.886532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.760197, 34.644161, 39.103691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483986, -0.556574, 0.675265,
		0.255490, -0.827918, -0.499276,
		0.836948, -0.069119, 0.542900,
		35.011280, 34.623425, 39.266560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786572, 34.329922, 38.872326>,  <34.425419, 34.671810, 38.886532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786572, 34.329922, 38.872326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419167, 34.481972, 38.915859>,  <33.198723, 34.573204, 38.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.419167, 34.481972, 38.915859>,  <33.786572, 34.329922, 38.872326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.419167, 34.481972, 38.915859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037376, 0.190545, -0.980967,
		-0.393632, -0.905094, -0.160809,
		-0.918508, 0.380129, 0.108833,
		33.143616, 34.596012, 38.948509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.562092, 34.212799, 38.171822>,  <33.786572, 34.329922, 38.872326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.562092, 34.212799, 38.171822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278885, 34.430828, 38.351429>,  <33.108963, 34.561646, 38.459194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.278885, 34.430828, 38.351429>,  <33.562092, 34.212799, 38.171822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.278885, 34.430828, 38.351429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405260, 0.207108, -0.890433,
		-0.578343, -0.812407, 0.074259,
		-0.708014, 0.545070, 0.449015,
		33.066479, 34.594349, 38.486134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854538, 34.017937, 37.930618>,  <33.562092, 34.212799, 38.171822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854538, 34.017937, 37.930618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839005, 34.404503, 38.032234>,  <32.829685, 34.636440, 38.093204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.839005, 34.404503, 38.032234>,  <32.854538, 34.017937, 37.930618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839005, 34.404503, 38.032234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444190, 0.211038, -0.870723,
		-0.895091, -0.146656, 0.421076,
		-0.038834, 0.966413, 0.254041,
		32.827354, 34.694427, 38.108448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.126091, 34.256676, 37.873581>,  <32.854538, 34.017937, 37.930618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.126091, 34.256676, 37.873581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354263, 34.584267, 37.848644>,  <32.491165, 34.780823, 37.833683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.354263, 34.584267, 37.848644>,  <32.126091, 34.256676, 37.873581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.354263, 34.584267, 37.848644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387012, 0.201059, -0.899887,
		-0.724455, 0.537446, 0.431644,
		0.570426, 0.818980, -0.062340,
		32.525391, 34.829960, 37.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647345, 34.917507, 37.757294>,  <32.126091, 34.256676, 37.873581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647345, 34.917507, 37.757294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021591, 34.987682, 37.634754>,  <32.246140, 35.029789, 37.561230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.021591, 34.987682, 37.634754>,  <31.647345, 34.917507, 37.757294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.021591, 34.987682, 37.634754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352943, 0.483483, -0.801046,
		0.007580, 0.857593, 0.514273,
		0.935614, 0.175437, -0.306346,
		32.302277, 35.040314, 37.542850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558676, 35.490631, 37.485306>,  <31.647345, 34.917507, 37.757294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558676, 35.490631, 37.485306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903032, 35.362560, 37.327141>,  <32.109646, 35.285717, 37.232243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.903032, 35.362560, 37.327141>,  <31.558676, 35.490631, 37.485306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.903032, 35.362560, 37.327141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233594, 0.441681, -0.866228,
		0.451996, 0.838094, 0.305447,
		0.860891, -0.320181, -0.395412,
		32.161301, 35.266506, 37.208519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.756569, 36.031502, 37.043652>,  <31.558676, 35.490631, 37.485306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.756569, 36.031502, 37.043652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964781, 35.717678, 36.908886>,  <32.089710, 35.529385, 36.828026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.964781, 35.717678, 36.908886>,  <31.756569, 36.031502, 37.043652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.964781, 35.717678, 36.908886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279633, 0.216182, -0.935452,
		0.806754, 0.581145, -0.106859,
		0.520532, -0.784561, -0.336913,
		32.120941, 35.482311, 36.807812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162106, 36.304642, 36.492786>,  <31.756569, 36.031502, 37.043652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162106, 36.304642, 36.492786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122700, 35.913891, 36.416893>,  <32.099056, 35.679440, 36.371357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122700, 35.913891, 36.416893>,  <32.162106, 36.304642, 36.492786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122700, 35.913891, 36.416893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411705, 0.213592, -0.885933,
		0.905977, -0.009161, -0.423229,
		-0.098515, -0.976880, -0.189738,
		32.093147, 35.620827, 36.359970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.751560, 36.178314, 35.935268>,  <32.162106, 36.304642, 36.492786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.751560, 36.178314, 35.935268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487110, 35.879036, 35.912971>,  <32.328438, 35.699467, 35.899593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.487110, 35.879036, 35.912971>,  <32.751560, 36.178314, 35.935268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487110, 35.879036, 35.912971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214172, 0.259409, -0.941720,
		0.719055, -0.610659, -0.331746,
		-0.661128, -0.748199, -0.055743,
		32.288773, 35.654575, 35.896248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720242, 35.900517, 35.230423>,  <32.751560, 36.178314, 35.935268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720242, 35.900517, 35.230423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391026, 35.725975, 35.375858>,  <32.193497, 35.621250, 35.463120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.391026, 35.725975, 35.375858>,  <32.720242, 35.900517, 35.230423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.391026, 35.725975, 35.375858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376941, -0.059228, -0.924342,
		0.424872, -0.897825, -0.115731,
		-0.823043, -0.436351, 0.363591,
		32.144112, 35.595070, 35.484936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.706486, 35.341408, 34.809074>,  <32.720242, 35.900517, 35.230423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.706486, 35.341408, 34.809074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336945, 35.406734, 34.947536>,  <32.115219, 35.445930, 35.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.336945, 35.406734, 34.947536>,  <32.706486, 35.341408, 34.809074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.336945, 35.406734, 34.947536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358352, -0.051350, -0.932173,
		-0.134468, -0.985236, 0.105966,
		-0.923852, 0.163320, 0.346157,
		32.059788, 35.455730, 35.051384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272533, 34.889496, 34.377441>,  <32.706486, 35.341408, 34.809074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272533, 34.889496, 34.377441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007679, 35.148090, 34.529037>,  <31.848766, 35.303246, 34.619995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.007679, 35.148090, 34.529037>,  <32.272533, 34.889496, 34.377441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007679, 35.148090, 34.529037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613601, -0.177387, -0.769433,
		-0.430200, -0.742018, 0.514138,
		-0.662135, 0.646485, 0.378991,
		31.809038, 35.342037, 34.642735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618811, 34.584820, 34.279022>,  <32.272533, 34.889496, 34.377441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618811, 34.584820, 34.279022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548393, 34.972057, 34.350365>,  <31.506144, 35.204399, 34.393169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.548393, 34.972057, 34.350365>,  <31.618811, 34.584820, 34.279022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.548393, 34.972057, 34.350365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700568, 0.004070, -0.713574,
		-0.691530, -0.250570, 0.677496,
		-0.176043, 0.968090, 0.178356,
		31.495581, 35.262486, 34.403870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.923851, 34.665646, 34.276810>,  <31.618811, 34.584820, 34.279022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.923851, 34.665646, 34.276810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061571, 35.033035, 34.198978>,  <31.144203, 35.253471, 34.152279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.061571, 35.033035, 34.198978>,  <30.923851, 34.665646, 34.276810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061571, 35.033035, 34.198978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554805, 0.031849, -0.831371,
		-0.757397, 0.394192, 0.520541,
		0.344298, 0.918476, -0.194578,
		31.164860, 35.308578, 34.140606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855761, 34.061771, 33.841759>,  <30.923851, 34.665646, 34.276810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855761, 34.061771, 33.841759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988710, 34.060024, 34.219013>,  <31.068481, 34.058975, 34.445366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.988710, 34.060024, 34.219013>,  <30.855761, 34.061771, 33.841759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.988710, 34.060024, 34.219013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656245, -0.719296, 0.227937,
		0.677398, -0.694690, -0.241945,
		0.332376, -0.004371, 0.943137,
		31.088423, 34.058712, 34.501953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.950430, 33.308643, 34.046772>,  <30.855761, 34.061771, 33.841759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.950430, 33.308643, 34.046772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897783, 33.558418, 34.354736>,  <30.866196, 33.708282, 34.539516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.897783, 33.558418, 34.354736>,  <30.950430, 33.308643, 34.046772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.897783, 33.558418, 34.354736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761688, -0.560773, 0.324600,
		0.634435, -0.543707, 0.549431,
		-0.131618, 0.624433, 0.769909,
		30.858297, 33.745747, 34.585709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720657, 33.160412, 33.988132>,  <30.950430, 33.308643, 34.046772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.720657, 33.160412, 33.988132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048294, 32.950523, 33.895386>,  <32.244877, 32.824593, 33.839737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.048294, 32.950523, 33.895386>,  <31.720657, 33.160412, 33.988132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048294, 32.950523, 33.895386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204848, -0.645071, 0.736153,
		-0.535842, -0.555478, -0.635859,
		0.819091, -0.524716, -0.231867,
		32.294022, 32.793110, 33.825825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.576855, 32.382648, 33.990360>,  <31.720657, 33.160412, 33.988132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.576855, 32.382648, 33.990360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957134, 32.473808, 34.074486>,  <32.185303, 32.528503, 34.124962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957134, 32.473808, 34.074486>,  <31.576855, 32.382648, 33.990360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957134, 32.473808, 34.074486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020533, -0.722953, 0.690592,
		0.309434, -0.652227, -0.691990,
		0.950699, 0.227901, 0.210314,
		32.242344, 32.542179, 34.137581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.936449, 31.772617, 34.056515>,  <31.576855, 32.382648, 33.990360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.936449, 31.772617, 34.056515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135578, 32.049690, 34.265266>,  <32.255054, 32.215935, 34.390518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135578, 32.049690, 34.265266>,  <31.936449, 31.772617, 34.056515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135578, 32.049690, 34.265266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180543, -0.671334, 0.718828,
		0.848279, -0.263627, -0.459265,
		0.497823, 0.692684, 0.521883,
		32.284924, 32.257496, 34.421833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.595108, 31.506350, 34.184887>,  <31.936449, 31.772617, 34.056515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.595108, 31.506350, 34.184887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564072, 31.798088, 34.456779>,  <32.545452, 31.973131, 34.619915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564072, 31.798088, 34.456779>,  <32.595108, 31.506350, 34.184887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564072, 31.798088, 34.456779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202983, -0.655952, 0.726997,
		0.976103, 0.194381, -0.097151,
		-0.077588, 0.729344, 0.679733,
		32.540794, 32.016891, 34.660698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.994316, 31.294085, 34.713192>,  <32.595108, 31.506350, 34.184887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.994316, 31.294085, 34.713192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804401, 31.588402, 34.906349>,  <32.690453, 31.764992, 35.022243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804401, 31.588402, 34.906349>,  <32.994316, 31.294085, 34.713192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804401, 31.588402, 34.906349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024253, -0.537529, 0.842897,
		0.879766, 0.411909, 0.237367,
		-0.474789, 0.735795, 0.482889,
		32.661964, 31.809139, 35.051216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.431736, 31.389175, 35.307648>,  <32.994316, 31.294085, 34.713192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.431736, 31.389175, 35.307648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066868, 31.537306, 35.377846>,  <32.847946, 31.626184, 35.419964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.066868, 31.537306, 35.377846>,  <33.431736, 31.389175, 35.307648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.066868, 31.537306, 35.377846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104192, -0.623752, 0.774647,
		0.396338, 0.688327, 0.607555,
		-0.912173, 0.370324, 0.175499,
		32.793217, 31.648403, 35.430496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378185, 31.766081, 35.997009>,  <33.431736, 31.389175, 35.307648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378185, 31.766081, 35.997009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026394, 31.618689, 35.876514>,  <32.815319, 31.530254, 35.804218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.026394, 31.618689, 35.876514>,  <33.378185, 31.766081, 35.997009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.026394, 31.618689, 35.876514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098705, -0.477965, 0.872816,
		-0.465597, 0.797354, 0.383987,
		-0.879475, -0.368479, -0.301241,
		32.762550, 31.508144, 35.786140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.937405, 31.953239, 36.593418>,  <33.378185, 31.766081, 35.997009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.937405, 31.953239, 36.593418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759766, 31.655117, 36.394501>,  <32.653183, 31.476244, 36.275150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759766, 31.655117, 36.394501>,  <32.937405, 31.953239, 36.593418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759766, 31.655117, 36.394501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015965, -0.561524, 0.827306,
		-0.895838, 0.359462, 0.261268,
		-0.444093, -0.745304, -0.497296,
		32.626537, 31.431526, 36.245312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352962, 31.689930, 37.051731>,  <32.937405, 31.953239, 36.593418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352962, 31.689930, 37.051731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426701, 31.395342, 36.791386>,  <32.470943, 31.218588, 36.635178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.426701, 31.395342, 36.791386>,  <32.352962, 31.689930, 37.051731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426701, 31.395342, 36.791386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245064, -0.675742, 0.695210,
		-0.951819, 0.031344, -0.305054,
		0.184347, -0.736471, -0.650865,
		32.482006, 31.174400, 36.596127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896935, 31.179720, 37.236725>,  <32.352962, 31.689930, 37.051731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896935, 31.179720, 37.236725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143345, 30.952148, 37.018795>,  <32.291191, 30.815605, 36.888039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.143345, 30.952148, 37.018795>,  <31.896935, 31.179720, 37.236725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143345, 30.952148, 37.018795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146287, -0.762235, 0.630553,
		-0.774032, -0.308728, -0.552776,
		0.616015, -0.568933, -0.544832,
		32.328152, 30.781469, 36.855347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.600891, 30.534037, 37.371956>,  <31.896935, 31.179720, 37.236725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.600891, 30.534037, 37.371956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968348, 30.466101, 37.229263>,  <32.188820, 30.425339, 37.143646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.968348, 30.466101, 37.229263>,  <31.600891, 30.534037, 37.371956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.968348, 30.466101, 37.229263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143131, -0.698507, 0.701143,
		-0.368259, -0.695157, -0.617367,
		0.918640, -0.169838, -0.356730,
		32.243938, 30.415150, 37.122246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.724075, 29.740721, 37.325958>,  <31.600891, 30.534037, 37.371956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.724075, 29.740721, 37.325958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091827, 29.897871, 37.333862>,  <32.312477, 29.992161, 37.338604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091827, 29.897871, 37.333862>,  <31.724075, 29.740721, 37.325958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091827, 29.897871, 37.333862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280074, -0.689030, 0.668428,
		0.276222, -0.609005, -0.743515,
		0.919380, 0.392874, 0.019759,
		32.367641, 30.015734, 37.339790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.171417, 29.172005, 37.341209>,  <31.724075, 29.740721, 37.325958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.171417, 29.172005, 37.341209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403728, 29.464172, 37.484982>,  <32.543114, 29.639473, 37.571243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403728, 29.464172, 37.484982>,  <32.171417, 29.172005, 37.341209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403728, 29.464172, 37.484982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393077, -0.638257, 0.661905,
		0.712875, -0.243136, -0.657795,
		0.580776, 0.730419, 0.359426,
		32.577961, 29.683298, 37.592808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858112, 28.770411, 37.417828>,  <32.171417, 29.172005, 37.341209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858112, 28.770411, 37.417828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849468, 29.107582, 37.632866>,  <32.844280, 29.309885, 37.761887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.849468, 29.107582, 37.632866>,  <32.858112, 28.770411, 37.417828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849468, 29.107582, 37.632866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409812, -0.482999, 0.773800,
		0.911914, 0.237033, -0.335005,
		-0.021610, 0.842928, 0.537592,
		32.842987, 29.360460, 37.794144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387459, 28.630266, 37.892403>,  <32.858112, 28.770411, 37.417828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387459, 28.630266, 37.892403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201939, 28.943083, 38.058922>,  <33.090626, 29.130774, 38.158833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.201939, 28.943083, 38.058922>,  <33.387459, 28.630266, 37.892403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.201939, 28.943083, 38.058922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211515, -0.358556, 0.909230,
		0.860319, 0.509755, 0.000885,
		-0.463802, 0.782041, 0.416293,
		33.062798, 29.177694, 38.183811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.824593, 28.830187, 38.344429>,  <33.387459, 28.630266, 37.892403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.824593, 28.830187, 38.344429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488850, 28.961233, 38.517929>,  <33.287403, 29.039862, 38.622028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.488850, 28.961233, 38.517929>,  <33.824593, 28.830187, 38.344429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.488850, 28.961233, 38.517929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241218, -0.490595, 0.837335,
		0.487121, 0.807455, 0.332759,
		-0.839361, 0.327616, 0.433752,
		33.237041, 29.059519, 38.648056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.082718, 29.024416, 38.956520>,  <33.824593, 28.830187, 38.344429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.082718, 29.024416, 38.956520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688820, 28.984800, 39.013748>,  <33.452480, 28.961031, 39.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.688820, 28.984800, 39.013748>,  <34.082718, 29.024416, 38.956520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688820, 28.984800, 39.013748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173891, -0.529788, 0.830113,
		-0.006416, 0.842328, 0.538928,
		-0.984744, -0.099040, 0.143074,
		33.393398, 28.955088, 39.056671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.879227, 29.314264, 39.572395>,  <34.082718, 29.024416, 38.956520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.879227, 29.314264, 39.572395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597813, 29.039104, 39.501019>,  <33.428967, 28.874008, 39.458195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.597813, 29.039104, 39.501019>,  <33.879227, 29.314264, 39.572395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.597813, 29.039104, 39.501019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069917, -0.316868, 0.945889,
		-0.707217, 0.652986, 0.271022,
		-0.703531, -0.687898, -0.178439,
		33.386753, 28.832735, 39.447487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.351456, 29.439901, 40.077759>,  <33.879227, 29.314264, 39.572395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.351456, 29.439901, 40.077759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282471, 29.066637, 39.951603>,  <33.241077, 28.842678, 39.875912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282471, 29.066637, 39.951603>,  <33.351456, 29.439901, 40.077759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282471, 29.066637, 39.951603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184709, -0.345143, 0.920195,
		-0.967542, 0.100447, 0.231888,
		-0.172465, -0.933160, -0.315387,
		33.230732, 28.786690, 39.856987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.034653, 29.139116, 40.562801>,  <33.351456, 29.439901, 40.077759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.034653, 29.139116, 40.562801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086597, 28.789314, 40.375877>,  <33.117764, 28.579433, 40.263725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086597, 28.789314, 40.375877>,  <33.034653, 29.139116, 40.562801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086597, 28.789314, 40.375877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036319, -0.475177, 0.879141,
		-0.990866, -0.097197, -0.093469,
		0.129865, -0.874505, -0.467307,
		33.125557, 28.526962, 40.235687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.596333, 28.686680, 40.836395>,  <33.034653, 29.139116, 40.562801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.596333, 28.686680, 40.836395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875229, 28.456842, 40.664955>,  <33.042564, 28.318939, 40.562092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.875229, 28.456842, 40.664955>,  <32.596333, 28.686680, 40.836395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.875229, 28.456842, 40.664955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035716, -0.569318, 0.821341,
		-0.715952, -0.587976, -0.376427,
		0.697235, -0.574596, -0.428605,
		33.084400, 28.284464, 40.536373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.387798, 28.138863, 40.961502>,  <32.596333, 28.686680, 40.836395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.387798, 28.138863, 40.961502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765316, 28.048695, 40.864799>,  <32.991825, 27.994593, 40.806778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.765316, 28.048695, 40.864799>,  <32.387798, 28.138863, 40.961502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.765316, 28.048695, 40.864799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083614, -0.544787, 0.834395,
		-0.319796, -0.807708, -0.495316,
		0.943790, -0.225421, -0.241756,
		33.048454, 27.981068, 40.792274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.415028, 27.372061, 41.178593>,  <32.387798, 28.138863, 40.961502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.415028, 27.372061, 41.178593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779823, 27.535578, 41.164951>,  <32.998699, 27.633688, 41.156769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779823, 27.535578, 41.164951>,  <32.415028, 27.372061, 41.178593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779823, 27.535578, 41.164951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254697, -0.499120, 0.828256,
		0.321565, -0.764047, -0.559311,
		0.911990, 0.408793, -0.034101,
		33.053421, 27.658215, 41.154720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865162, 26.859739, 41.502995>,  <32.415028, 27.372061, 41.178593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865162, 26.859739, 41.502995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078152, 27.197617, 41.481228>,  <33.205948, 27.400343, 41.468166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.078152, 27.197617, 41.481228>,  <32.865162, 26.859739, 41.502995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078152, 27.197617, 41.481228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470581, -0.241976, 0.848529,
		0.703578, -0.477431, -0.526344,
		0.532476, 0.844694, -0.054421,
		33.237896, 27.451025, 41.464901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653465, 26.707447, 41.640347>,  <32.865162, 26.859739, 41.502995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653465, 26.707447, 41.640347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582691, 27.093975, 41.715096>,  <33.540226, 27.325891, 41.759945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.582691, 27.093975, 41.715096>,  <33.653465, 26.707447, 41.640347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.582691, 27.093975, 41.715096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377852, -0.108622, 0.919472,
		0.908802, 0.233297, -0.345906,
		-0.176937, 0.966320, 0.186868,
		33.529610, 27.383871, 41.771156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.218437, 27.000921, 41.783691>,  <33.653465, 26.707447, 41.640347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.218437, 27.000921, 41.783691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925255, 27.208160, 41.960033>,  <33.749344, 27.332504, 42.065838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.925255, 27.208160, 41.960033>,  <34.218437, 27.000921, 41.783691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.925255, 27.208160, 41.960033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273503, -0.368937, 0.888303,
		0.622875, 0.771661, 0.128713,
		-0.732955, 0.518098, 0.440853,
		33.705368, 27.363590, 42.092289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.455826, 27.609020, 42.284908>,  <34.218437, 27.000921, 41.783691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.455826, 27.609020, 42.284908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097740, 27.469296, 42.395596>,  <33.882889, 27.385462, 42.462006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.097740, 27.469296, 42.395596>,  <34.455826, 27.609020, 42.284908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097740, 27.469296, 42.395596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374631, -0.253642, 0.891806,
		-0.241331, 0.902024, 0.357926,
		-0.895216, -0.349310, 0.276715,
		33.829174, 27.364502, 42.478611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.020531, 27.162113, 42.058716>,  <34.455826, 27.609020, 42.284908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.020531, 27.162113, 42.058716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355724, 26.943861, 42.055454>,  <35.556839, 26.812910, 42.053497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.355724, 26.943861, 42.055454>,  <35.020531, 27.162113, 42.058716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.355724, 26.943861, 42.055454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482529, 0.747881, -0.455896,
		0.254848, 0.378101, 0.889996,
		0.837985, -0.545632, -0.008152,
		35.607121, 26.780170, 42.053009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616703, 27.502262, 42.411057>,  <35.020531, 27.162113, 42.058716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616703, 27.502262, 42.411057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695808, 27.241325, 42.118389>,  <35.743271, 27.084763, 41.942787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.695808, 27.241325, 42.118389>,  <35.616703, 27.502262, 42.411057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695808, 27.241325, 42.118389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248551, 0.755387, -0.606311,
		0.948216, -0.061953, 0.311526,
		0.197760, -0.652343, -0.731669,
		35.755138, 27.045622, 41.898888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.297508, 27.714630, 42.092083>,  <35.616703, 27.502262, 42.411057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.297508, 27.714630, 42.092083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145252, 27.473793, 41.811344>,  <36.053898, 27.329290, 41.642899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.145252, 27.473793, 41.811344>,  <36.297508, 27.714630, 42.092083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145252, 27.473793, 41.811344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216690, 0.679778, -0.700676,
		0.898975, -0.418792, -0.128287,
		-0.380644, -0.602092, -0.701852,
		36.031059, 27.293165, 41.600788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.737209, 27.803600, 41.605049>,  <36.297508, 27.714630, 42.092083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.737209, 27.803600, 41.605049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420376, 27.656441, 41.410213>,  <36.230274, 27.568144, 41.293312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.420376, 27.656441, 41.410213>,  <36.737209, 27.803600, 41.605049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420376, 27.656441, 41.410213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218999, 0.573567, -0.789342,
		0.569784, -0.731892, -0.373738,
		-0.792077, -0.367907, -0.487093,
		36.182751, 27.546070, 41.264088>
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
