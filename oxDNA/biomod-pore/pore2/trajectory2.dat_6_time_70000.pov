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
	right 1.6 * <1, 0, 0>
	location <18.5, 18.5, 82.5562>
	look_at <18.5, 18.5, 18.5>
	direction <0, 0, -64.0562>
	angle 67.0682
}


# declare cpy_camera_pos = <18.5, 18.5, 82.5562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 29.6
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<22.716774, 17.416208, -1.989486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825047, 17.034103, -1.941814>,  <22.890011, 16.804840, -1.913211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.825047, 17.034103, -1.941814>,  <22.716774, 17.416208, -1.989486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.825047, 17.034103, -1.941814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455205, 0.236094, 0.858515,
		-0.848245, -0.178132, 0.498747,
		0.270680, -0.955264, 0.119179,
		22.906250, 16.747524, -1.906060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364170, 17.060057, -1.395991>,  <22.716774, 17.416208, -1.989486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364170, 17.060057, -1.395991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.750427, 16.973118, -1.452970>,  <22.982182, 16.920954, -1.487157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.750427, 16.973118, -1.452970>,  <22.364170, 17.060057, -1.395991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.750427, 16.973118, -1.452970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199409, 0.268253, 0.942484,
		-0.166635, -0.938510, 0.302378,
		0.965644, -0.217348, -0.142447,
		23.040121, 16.907913, -1.495704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.557348, 16.456236, -1.061100>,  <22.364170, 17.060057, -1.395991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.557348, 16.456236, -1.061100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.809032, 16.764282, -1.103084>,  <22.960043, 16.949110, -1.128275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.809032, 16.764282, -1.103084>,  <22.557348, 16.456236, -1.061100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.809032, 16.764282, -1.103084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005984, 0.130241, 0.991464,
		0.777212, -0.624468, 0.077340,
		0.629211, 0.770115, -0.104962,
		22.997795, 16.995317, -1.134573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.066708, 16.149769, -0.750526>,  <22.557348, 16.456236, -1.061100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.066708, 16.149769, -0.750526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058578, 16.549648, -0.756066>,  <23.053701, 16.789576, -0.759390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.058578, 16.549648, -0.756066>,  <23.066708, 16.149769, -0.750526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.058578, 16.549648, -0.756066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078467, 0.012216, 0.996842,
		0.996710, 0.021346, 0.078195,
		-0.020324, 0.999698, -0.013851,
		23.052481, 16.849558, -0.760221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.592106, 16.473471, -0.242608>,  <23.066708, 16.149769, -0.750526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.592106, 16.473471, -0.242608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290966, 16.730759, -0.298445>,  <23.110283, 16.885132, -0.331947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.290966, 16.730759, -0.298445>,  <23.592106, 16.473471, -0.242608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.290966, 16.730759, -0.298445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224330, -0.051368, 0.973158,
		0.618786, 0.763955, 0.182967,
		-0.752847, 0.643222, -0.139592,
		23.065111, 16.923725, -0.340323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.792141, 16.985319, 0.322210>,  <23.592106, 16.473471, -0.242608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.792141, 16.985319, 0.322210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421906, 16.905594, 0.193489>,  <23.199764, 16.857759, 0.116257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.421906, 16.905594, 0.193489>,  <23.792141, 16.985319, 0.322210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.421906, 16.905594, 0.193489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275179, -0.229458, 0.933609,
		-0.259920, 0.952693, 0.157538,
		-0.925591, -0.199312, -0.321802,
		23.144228, 16.845800, 0.096949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.388464, 17.477177, 0.691719>,  <23.792141, 16.985319, 0.322210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.388464, 17.477177, 0.691719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190514, 17.140396, 0.605727>,  <23.071743, 16.938328, 0.554132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.190514, 17.140396, 0.605727>,  <23.388464, 17.477177, 0.691719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.190514, 17.140396, 0.605727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163988, -0.152465, 0.974609,
		-0.853351, 0.517563, -0.062619,
		-0.494874, -0.841952, -0.214981,
		23.042051, 16.887810, 0.541233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.628893, 17.356039, 1.042001>,  <23.388464, 17.477177, 0.691719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.628893, 17.356039, 1.042001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.812340, 17.004719, 0.987957>,  <22.922407, 16.793926, 0.955531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.812340, 17.004719, 0.987957>,  <22.628893, 17.356039, 1.042001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.812340, 17.004719, 0.987957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053458, -0.179034, 0.982389,
		-0.887024, -0.443318, -0.129060,
		0.458617, -0.878302, -0.135109,
		22.949924, 16.741228, 0.947424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.168236, 16.802803, 1.472780>,  <22.628893, 17.356039, 1.042001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.168236, 16.802803, 1.472780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549286, 16.700108, 1.407548>,  <22.777916, 16.638491, 1.368409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.549286, 16.700108, 1.407548>,  <22.168236, 16.802803, 1.472780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549286, 16.700108, 1.407548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124341, -0.160592, 0.979158,
		-0.277578, -0.953045, -0.121061,
		0.952623, -0.256739, -0.163079,
		22.835073, 16.623087, 1.358624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.295912, 16.342382, 2.013256>,  <22.168236, 16.802803, 1.472780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.295912, 16.342382, 2.013256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648621, 16.458324, 1.864413>,  <22.860245, 16.527889, 1.775107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.648621, 16.458324, 1.864413>,  <22.295912, 16.342382, 2.013256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.648621, 16.458324, 1.864413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416894, -0.109904, 0.902286,
		0.220637, -0.950739, -0.217749,
		0.881770, 0.289856, -0.372108,
		22.913153, 16.545280, 1.752780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.461605, 16.106680, 2.646998>,  <22.295912, 16.342382, 2.013256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.461605, 16.106680, 2.646998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781273, 16.292233, 2.494081>,  <22.973074, 16.403564, 2.402331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.781273, 16.292233, 2.494081>,  <22.461605, 16.106680, 2.646998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.781273, 16.292233, 2.494081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537974, -0.268220, 0.799151,
		0.268172, -0.844318, -0.463908,
		0.799167, 0.463880, -0.382292,
		23.021023, 16.431396, 2.379394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149496, 15.730411, 2.834422>,  <22.461605, 16.106680, 2.646998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149496, 15.730411, 2.834422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269791, 16.095844, 2.724936>,  <23.341967, 16.315105, 2.659244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.269791, 16.095844, 2.724936>,  <23.149496, 15.730411, 2.834422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.269791, 16.095844, 2.724936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708943, -0.022173, 0.704917,
		0.637932, -0.406043, -0.654348,
		0.300735, 0.913585, -0.273717,
		23.360010, 16.369921, 2.642821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.906445, 15.727025, 2.769978>,  <23.149496, 15.730411, 2.834422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.906445, 15.727025, 2.769978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774296, 16.097218, 2.844103>,  <23.695007, 16.319332, 2.888578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.774296, 16.097218, 2.844103>,  <23.906445, 15.727025, 2.769978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.774296, 16.097218, 2.844103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618360, 0.063894, 0.783294,
		0.713082, 0.373368, -0.593389,
		-0.330371, 0.925480, 0.185314,
		23.675184, 16.374861, 2.899697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.460148, 16.024706, 3.127927>,  <23.906445, 15.727025, 2.769978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.460148, 16.024706, 3.127927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125755, 16.213131, 3.240520>,  <23.925119, 16.326185, 3.308076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125755, 16.213131, 3.240520>,  <24.460148, 16.024706, 3.127927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125755, 16.213131, 3.240520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292610, -0.051284, 0.954856,
		0.464232, 0.880608, -0.094965,
		-0.835983, 0.471063, 0.281482,
		23.874960, 16.354450, 3.324965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.538893, 16.728006, 3.590670>,  <24.460148, 16.024706, 3.127927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.538893, 16.728006, 3.590670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218681, 16.496834, 3.654107>,  <24.026554, 16.358131, 3.692170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.218681, 16.496834, 3.654107>,  <24.538893, 16.728006, 3.590670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.218681, 16.496834, 3.654107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274254, -0.117988, 0.954392,
		-0.532859, 0.807513, 0.252952,
		-0.800529, -0.577929, 0.158593,
		23.978523, 16.323456, 3.701685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.096684, 16.942253, 4.083180>,  <24.538893, 16.728006, 3.590670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.096684, 16.942253, 4.083180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.093002, 16.543251, 4.055172>,  <24.090794, 16.303850, 4.038367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.093002, 16.543251, 4.055172>,  <24.096684, 16.942253, 4.083180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.093002, 16.543251, 4.055172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399432, -0.067861, 0.914248,
		-0.916717, -0.019556, 0.399059,
		-0.009202, -0.997503, -0.070020,
		24.090242, 16.243999, 4.034166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.914894, 17.568270, 4.424420>,  <24.096684, 16.942253, 4.083180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.914894, 17.568270, 4.424420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.876369, 17.769245, 4.080728>,  <23.853254, 17.889830, 3.874512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.876369, 17.769245, 4.080728>,  <23.914894, 17.568270, 4.424420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.876369, 17.769245, 4.080728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750116, 0.530782, 0.394458,
		0.654255, 0.682516, 0.325765,
		-0.096314, 0.502438, -0.859232,
		23.847475, 17.919977, 3.822958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.951389, 18.262690, 4.527025>,  <23.914894, 17.568270, 4.424420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.951389, 18.262690, 4.527025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734314, 18.196877, 4.197560>,  <23.604069, 18.157389, 3.999881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.734314, 18.196877, 4.197560>,  <23.951389, 18.262690, 4.527025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.734314, 18.196877, 4.197560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753567, 0.528498, 0.390930,
		0.370982, 0.832837, -0.410796,
		-0.542686, -0.164535, -0.823663,
		23.571508, 18.147516, 3.950461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.692703, 18.885914, 4.171722>,  <23.951389, 18.262690, 4.527025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.692703, 18.885914, 4.171722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449383, 18.573841, 4.113367>,  <23.303391, 18.386597, 4.078354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.449383, 18.573841, 4.113367>,  <23.692703, 18.885914, 4.171722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.449383, 18.573841, 4.113367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781464, 0.556562, 0.282050,
		-0.138855, 0.285579, -0.948243,
		-0.608303, -0.780182, -0.145889,
		23.266891, 18.339787, 4.069601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107067, 18.965132, 3.692004>,  <23.692703, 18.885914, 4.171722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107067, 18.965132, 3.692004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954296, 18.678970, 3.926039>,  <22.862635, 18.507273, 4.066461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.954296, 18.678970, 3.926039>,  <23.107067, 18.965132, 3.692004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954296, 18.678970, 3.926039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768106, 0.597773, 0.229522,
		-0.513951, -0.361749, -0.777812,
		-0.381925, -0.715406, 0.585087,
		22.839718, 18.464348, 4.101566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.402262, 19.041748, 3.698881>,  <23.107067, 18.965132, 3.692004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.402262, 19.041748, 3.698881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.480782, 18.878357, 4.055445>,  <22.527893, 18.780323, 4.269383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.480782, 18.878357, 4.055445>,  <22.402262, 19.041748, 3.698881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.480782, 18.878357, 4.055445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635198, 0.639584, 0.432962,
		-0.746987, -0.651213, -0.133913,
		0.196301, -0.408478, 0.891409,
		22.539673, 18.755814, 4.322867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745518, 18.818939, 4.075806>,  <22.402262, 19.041748, 3.698881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745518, 18.818939, 4.075806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020779, 18.978611, 4.318161>,  <22.185936, 19.074413, 4.463574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.020779, 18.978611, 4.318161>,  <21.745518, 18.818939, 4.075806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.020779, 18.978611, 4.318161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724234, 0.428452, 0.540291,
		-0.043921, -0.810608, 0.583940,
		0.688154, 0.399179, 0.605888,
		22.227224, 19.098364, 4.499927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.447311, 18.878130, 4.756415>,  <21.745518, 18.818939, 4.075806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.447311, 18.878130, 4.756415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747169, 19.142460, 4.741761>,  <21.927084, 19.301058, 4.732969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.747169, 19.142460, 4.741761>,  <21.447311, 18.878130, 4.756415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.747169, 19.142460, 4.741761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546942, 0.649725, 0.527932,
		0.372673, -0.375724, 0.848496,
		0.749646, 0.660824, -0.036635,
		21.972063, 19.340708, 4.730771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.755877, 19.025009, 5.495625>,  <21.447311, 18.878130, 4.756415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.755877, 19.025009, 5.495625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.751358, 19.311680, 5.216700>,  <21.748646, 19.483683, 5.049344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.751358, 19.311680, 5.216700>,  <21.755877, 19.025009, 5.495625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.751358, 19.311680, 5.216700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511892, 0.594907, 0.619719,
		0.858975, 0.363951, 0.360140,
		-0.011298, 0.716676, -0.697315,
		21.747969, 19.526682, 5.007505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.936596, 19.648508, 5.840906>,  <21.755877, 19.025009, 5.495625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.936596, 19.648508, 5.840906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739616, 19.745617, 5.506588>,  <21.621428, 19.803883, 5.305997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.739616, 19.745617, 5.506588>,  <21.936596, 19.648508, 5.840906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.739616, 19.745617, 5.506588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400265, 0.789556, 0.465176,
		0.772839, 0.563616, -0.291645,
		-0.492451, 0.242771, -0.835796,
		21.591881, 19.818449, 5.255849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720049, 20.341606, 6.048986>,  <21.936596, 19.648508, 5.840906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720049, 20.341606, 6.048986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507469, 20.214607, 5.734850>,  <21.379921, 20.138409, 5.546369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507469, 20.214607, 5.734850>,  <21.720049, 20.341606, 6.048986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507469, 20.214607, 5.734850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783642, 0.536318, 0.313477,
		0.321664, 0.782022, -0.533830,
		-0.531448, -0.317497, -0.785340,
		21.348034, 20.119358, 5.499248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.302536, 20.861103, 5.762745>,  <21.720049, 20.341606, 6.048986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.302536, 20.861103, 5.762745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105995, 20.537300, 5.634201>,  <20.988071, 20.343018, 5.557075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.105995, 20.537300, 5.634201>,  <21.302536, 20.861103, 5.762745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105995, 20.537300, 5.634201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870444, 0.443689, 0.213229,
		-0.030026, 0.384497, -0.922638,
		-0.491350, -0.809508, -0.321361,
		20.958590, 20.294447, 5.537793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.726122, 21.103498, 5.239529>,  <21.302536, 20.861103, 5.762745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.726122, 21.103498, 5.239529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656845, 20.759205, 5.431005>,  <20.615280, 20.552629, 5.545890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.656845, 20.759205, 5.431005>,  <20.726122, 21.103498, 5.239529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656845, 20.759205, 5.431005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.938054, 0.292257, 0.186121,
		-0.300101, -0.416801, -0.858030,
		-0.173190, -0.860734, 0.478688,
		20.604889, 20.500984, 5.574611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.099058, 20.881201, 4.837706>,  <20.726122, 21.103498, 5.239529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.099058, 20.881201, 4.837706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.149387, 20.790913, 5.224118>,  <20.179585, 20.736740, 5.455966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.149387, 20.790913, 5.224118>,  <20.099058, 20.881201, 4.837706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.149387, 20.790913, 5.224118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919176, 0.339805, 0.199119,
		-0.373208, -0.913007, -0.164724,
		0.125823, -0.225723, 0.966032,
		20.187134, 20.723196, 5.513928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.524191, 20.481947, 4.971198>,  <20.099058, 20.881201, 4.837706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.524191, 20.481947, 4.971198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.680820, 20.706108, 5.263121>,  <19.774797, 20.840605, 5.438274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.680820, 20.706108, 5.263121>,  <19.524191, 20.481947, 4.971198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.680820, 20.706108, 5.263121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914822, 0.322310, 0.243344,
		-0.098853, -0.762931, 0.638878,
		0.391571, 0.560404, 0.729807,
		19.798292, 20.874229, 5.482063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.245737, 20.355747, 5.722502>,  <19.524191, 20.481947, 4.971198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.245737, 20.355747, 5.722502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390484, 20.722664, 5.656015>,  <19.477333, 20.942814, 5.616123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.390484, 20.722664, 5.656015>,  <19.245737, 20.355747, 5.722502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.390484, 20.722664, 5.656015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849999, 0.397881, 0.345243,
		0.382823, 0.016353, 0.923677,
		0.361867, 0.917291, -0.166218,
		19.499044, 20.997850, 5.606150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.503090, 20.342228, 6.361577>,  <19.245737, 20.355747, 5.722502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.503090, 20.342228, 6.361577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829395, 20.119308, 6.299675>,  <20.025179, 19.985558, 6.262534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.829395, 20.119308, 6.299675>,  <19.503090, 20.342228, 6.361577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.829395, 20.119308, 6.299675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147357, -0.058476, 0.987353,
		-0.559300, -0.828251, 0.034420,
		0.815763, -0.557299, -0.154754,
		20.074123, 19.952120, 6.253249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.482277, 19.802965, 6.785302>,  <19.503090, 20.342228, 6.361577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.482277, 19.802965, 6.785302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873959, 19.822861, 6.706629>,  <20.108967, 19.834799, 6.659425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.873959, 19.822861, 6.706629>,  <19.482277, 19.802965, 6.785302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.873959, 19.822861, 6.706629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202772, -0.209286, 0.956600,
		0.006418, -0.976589, -0.215019,
		0.979205, 0.049739, -0.196682,
		20.167721, 19.837782, 6.647624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.807840, 19.139502, 6.905849>,  <19.482277, 19.802965, 6.785302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.807840, 19.139502, 6.905849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.057884, 19.447231, 6.958579>,  <20.207911, 19.631870, 6.990217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.057884, 19.447231, 6.958579>,  <19.807840, 19.139502, 6.905849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.057884, 19.447231, 6.958579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185227, -0.310277, 0.932427,
		0.758242, -0.558449, -0.336456,
		0.625108, 0.769326, 0.131826,
		20.245417, 19.678028, 6.998127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347502, 18.893888, 7.337945>,  <19.807840, 19.139502, 6.905849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347502, 18.893888, 7.337945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439003, 19.282600, 7.360977>,  <20.493904, 19.515827, 7.374796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.439003, 19.282600, 7.360977>,  <20.347502, 18.893888, 7.337945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439003, 19.282600, 7.360977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411013, -0.150030, 0.899200,
		0.882464, -0.182026, -0.433734,
		0.228751, 0.971781, 0.057581,
		20.507627, 19.574135, 7.378252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112970, 18.971710, 7.481685>,  <20.347502, 18.893888, 7.337945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112970, 18.971710, 7.481685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940350, 19.315186, 7.592260>,  <20.836777, 19.521271, 7.658606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.940350, 19.315186, 7.592260>,  <21.112970, 18.971710, 7.481685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.940350, 19.315186, 7.592260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516852, -0.015796, 0.855929,
		0.739343, 0.512255, -0.436998,
		-0.431551, 0.858688, 0.276439,
		20.810884, 19.572792, 7.675192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.666565, 19.457943, 7.725574>,  <21.112970, 18.971710, 7.481685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.666565, 19.457943, 7.725574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321415, 19.580109, 7.886655>,  <21.114325, 19.653408, 7.983303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.321415, 19.580109, 7.886655>,  <21.666565, 19.457943, 7.725574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.321415, 19.580109, 7.886655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463113, 0.158670, 0.871981,
		0.202419, 0.938906, -0.278354,
		-0.862875, 0.305415, 0.402701,
		21.062553, 19.671734, 8.007465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745888, 20.171917, 8.006494>,  <21.666565, 19.457943, 7.725574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745888, 20.171917, 8.006494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471348, 19.993378, 8.236170>,  <21.306623, 19.886255, 8.373976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.471348, 19.993378, 8.236170>,  <21.745888, 20.171917, 8.006494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.471348, 19.993378, 8.236170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428680, 0.389491, 0.815187,
		-0.587498, 0.805650, -0.075988,
		-0.686352, -0.446347, 0.574191,
		21.265442, 19.859474, 8.408427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.987860, 20.392344, 8.707461>,  <21.745888, 20.171917, 8.006494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.987860, 20.392344, 8.707461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655582, 20.177578, 8.766348>,  <21.456217, 20.048717, 8.801680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.655582, 20.177578, 8.766348>,  <21.987860, 20.392344, 8.707461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.655582, 20.177578, 8.766348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035208, 0.213238, 0.976366,
		-0.555617, 0.816243, -0.158231,
		-0.830692, -0.536915, 0.147217,
		21.406374, 20.016504, 8.810513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.492916, 20.796354, 9.109103>,  <21.987860, 20.392344, 8.707461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.492916, 20.796354, 9.109103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421730, 20.405479, 9.155457>,  <21.379019, 20.170954, 9.183269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.421730, 20.405479, 9.155457>,  <21.492916, 20.796354, 9.109103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.421730, 20.405479, 9.155457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103175, 0.098584, 0.989766,
		-0.978613, 0.188102, 0.083277,
		-0.177967, -0.977189, 0.115883,
		21.368340, 20.112322, 9.190222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.902487, 20.707792, 9.590903>,  <21.492916, 20.796354, 9.109103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.902487, 20.707792, 9.590903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070278, 20.344696, 9.593477>,  <21.170954, 20.126839, 9.595022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.070278, 20.344696, 9.593477>,  <20.902487, 20.707792, 9.590903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070278, 20.344696, 9.593477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091526, 0.049347, 0.994579,
		-0.903139, -0.416617, 0.103782,
		0.419480, -0.907742, 0.006436,
		21.196123, 20.072374, 9.595408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.544556, 20.234838, 10.133961>,  <20.902487, 20.707792, 9.590903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.544556, 20.234838, 10.133961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.906025, 20.088440, 10.045038>,  <21.122908, 20.000601, 9.991685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.906025, 20.088440, 10.045038>,  <20.544556, 20.234838, 10.133961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.906025, 20.088440, 10.045038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126362, -0.268111, 0.955065,
		-0.409153, -0.891159, -0.196037,
		0.903674, -0.365996, -0.222307,
		21.177128, 19.978642, 9.978346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.656651, 19.626240, 10.514530>,  <20.544556, 20.234838, 10.133961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.656651, 19.626240, 10.514530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034145, 19.732349, 10.435546>,  <21.260643, 19.796015, 10.388155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.034145, 19.732349, 10.435546>,  <20.656651, 19.626240, 10.514530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.034145, 19.732349, 10.435546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260190, -0.227077, 0.938476,
		0.204115, -0.937052, -0.283323,
		0.943737, 0.265274, -0.197462,
		21.317266, 19.811932, 10.376307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.963383, 19.215849, 10.942285>,  <20.656651, 19.626240, 10.514530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.963383, 19.215849, 10.942285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213974, 19.513916, 10.850850>,  <21.364328, 19.692757, 10.795989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.213974, 19.513916, 10.850850>,  <20.963383, 19.215849, 10.942285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.213974, 19.513916, 10.850850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195869, 0.133352, 0.971521,
		0.754428, -0.653408, -0.062413,
		0.626477, 0.745168, -0.228587,
		21.401917, 19.737467, 10.782274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565393, 19.055822, 11.297249>,  <20.963383, 19.215849, 10.942285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565393, 19.055822, 11.297249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602375, 19.446404, 11.219281>,  <21.624565, 19.680752, 11.172501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602375, 19.446404, 11.219281>,  <21.565393, 19.055822, 11.297249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602375, 19.446404, 11.219281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342673, 0.152597, 0.926979,
		0.934894, -0.152498, -0.320495,
		0.092456, 0.976452, -0.194919,
		21.630112, 19.739340, 11.160806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.163700, 19.270456, 11.719335>,  <21.565393, 19.055822, 11.297249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.163700, 19.270456, 11.719335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972565, 19.614685, 11.648812>,  <21.857883, 19.821222, 11.606499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.972565, 19.614685, 11.648812>,  <22.163700, 19.270456, 11.719335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.972565, 19.614685, 11.648812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189152, 0.296791, 0.936022,
		0.857840, 0.413920, -0.304598,
		-0.477841, 0.860572, -0.176306,
		21.829212, 19.872856, 11.595921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.635576, 19.802271, 12.008944>,  <22.163700, 19.270456, 11.719335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.635576, 19.802271, 12.008944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277271, 19.975853, 11.970388>,  <22.062288, 20.080002, 11.947255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.277271, 19.975853, 11.970388>,  <22.635576, 19.802271, 12.008944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277271, 19.975853, 11.970388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053688, 0.320854, 0.945606,
		0.441279, 0.841863, -0.310707,
		-0.895762, 0.433957, -0.096389,
		22.008543, 20.106041, 11.941472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.757671, 20.425520, 12.324678>,  <22.635576, 19.802271, 12.008944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.757671, 20.425520, 12.324678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362579, 20.363609, 12.316330>,  <22.125525, 20.326464, 12.311321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.362579, 20.363609, 12.316330>,  <22.757671, 20.425520, 12.324678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362579, 20.363609, 12.316330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066312, 0.294634, 0.953307,
		-0.141400, 0.942993, -0.301282,
		-0.987729, -0.154776, -0.020871,
		22.066261, 20.317177, 12.310069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.576761, 20.933056, 12.614682>,  <22.757671, 20.425520, 12.324678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.576761, 20.933056, 12.614682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.254555, 20.698254, 12.647096>,  <22.061230, 20.557373, 12.666544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.254555, 20.698254, 12.647096>,  <22.576761, 20.933056, 12.614682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.254555, 20.698254, 12.647096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112922, 0.286301, 0.951462,
		-0.581714, 0.757269, -0.296906,
		-0.805517, -0.587006, 0.081033,
		22.012899, 20.522152, 12.671406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.916811, 21.297991, 12.756575>,  <22.576761, 20.933056, 12.614682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.916811, 21.297991, 12.756575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891823, 20.929367, 12.909846>,  <21.876831, 20.708193, 13.001809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891823, 20.929367, 12.909846>,  <21.916811, 21.297991, 12.756575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891823, 20.929367, 12.909846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125623, 0.388137, 0.913000,
		-0.990109, 0.008898, -0.140016,
		-0.062469, -0.921559, 0.383180,
		21.873081, 20.652899, 13.024800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697449, 21.439075, 13.432373>,  <21.916811, 21.297991, 12.756575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697449, 21.439075, 13.432373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737751, 21.041363, 13.446516>,  <21.761932, 20.802734, 13.455002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.737751, 21.041363, 13.446516>,  <21.697449, 21.439075, 13.432373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.737751, 21.041363, 13.446516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120802, 0.023050, 0.992409,
		-0.987550, -0.104264, -0.117789,
		0.100757, -0.994283, 0.035358,
		21.767979, 20.743078, 13.457124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.194080, 21.170761, 13.941403>,  <21.697449, 21.439075, 13.432373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.194080, 21.170761, 13.941403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479496, 20.891903, 13.913550>,  <21.650745, 20.724588, 13.896838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.479496, 20.891903, 13.913550>,  <21.194080, 21.170761, 13.941403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.479496, 20.891903, 13.913550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106098, 0.009278, 0.994312,
		-0.692533, -0.716871, 0.080586,
		0.713541, -0.697145, -0.069633,
		21.693558, 20.682760, 13.892660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.002497, 20.525612, 14.431191>,  <21.194080, 21.170761, 13.941403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.002497, 20.525612, 14.431191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396236, 20.550625, 14.365289>,  <21.632481, 20.565634, 14.325747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.396236, 20.550625, 14.365289>,  <21.002497, 20.525612, 14.431191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.396236, 20.550625, 14.365289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169771, -0.085816, 0.981740,
		0.047254, -0.994347, -0.095089,
		0.984350, 0.062535, -0.164756,
		21.691542, 20.569386, 14.315862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.338427, 20.070805, 14.914344>,  <21.002497, 20.525612, 14.431191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.338427, 20.070805, 14.914344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643791, 20.302071, 14.799155>,  <21.827009, 20.440830, 14.730042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.643791, 20.302071, 14.799155>,  <21.338427, 20.070805, 14.914344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.643791, 20.302071, 14.799155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390676, -0.058275, 0.918682,
		0.514369, -0.813835, -0.270363,
		0.763411, 0.578166, -0.287971,
		21.872814, 20.475521, 14.712764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.929621, 19.733788, 15.218897>,  <21.338427, 20.070805, 14.914344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.929621, 19.733788, 15.218897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.043148, 20.105537, 15.124490>,  <22.111265, 20.328588, 15.067845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.043148, 20.105537, 15.124490>,  <21.929621, 19.733788, 15.218897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.043148, 20.105537, 15.124490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457217, 0.085188, 0.885266,
		0.842851, -0.359168, -0.400749,
		0.283820, 0.929377, -0.236018,
		22.128294, 20.384350, 15.053684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.621117, 19.789932, 15.189868>,  <21.929621, 19.733788, 15.218897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.621117, 19.789932, 15.189868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490486, 20.161198, 15.261264>,  <22.412107, 20.383957, 15.304102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.490486, 20.161198, 15.261264>,  <22.621117, 19.789932, 15.189868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.490486, 20.161198, 15.261264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211989, -0.112104, 0.970821,
		0.921091, 0.354885, -0.160150,
		-0.326577, 0.928164, 0.178490,
		22.392513, 20.439648, 15.314811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.141668, 20.049625, 15.623125>,  <22.621117, 19.789932, 15.189868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.141668, 20.049625, 15.623125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.827251, 20.291740, 15.673348>,  <22.638601, 20.437010, 15.703483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.827251, 20.291740, 15.673348>,  <23.141668, 20.049625, 15.623125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827251, 20.291740, 15.673348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209596, 0.069874, 0.975288,
		0.581559, 0.792933, -0.181790,
		-0.786040, 0.605290, 0.125559,
		22.591440, 20.473328, 15.711017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.394163, 20.544853, 16.129831>,  <23.141668, 20.049625, 15.623125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.394163, 20.544853, 16.129831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995064, 20.571030, 16.135674>,  <22.755604, 20.586737, 16.139179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.995064, 20.571030, 16.135674>,  <23.394163, 20.544853, 16.129831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.995064, 20.571030, 16.135674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024213, 0.148542, 0.988610,
		0.062528, 0.986738, -0.149792,
		-0.997750, 0.065442, 0.014603,
		22.695740, 20.590662, 16.140055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.251604, 21.119419, 16.632500>,  <23.394163, 20.544853, 16.129831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.251604, 21.119419, 16.632500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.917290, 20.900249, 16.618389>,  <22.716702, 20.768747, 16.609922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.917290, 20.900249, 16.618389>,  <23.251604, 21.119419, 16.632500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.917290, 20.900249, 16.618389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041820, -0.000533, 0.999125,
		-0.547461, 0.836529, -0.022469,
		-0.835785, -0.547922, -0.035276,
		22.666553, 20.735872, 16.607807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.811394, 21.567915, 16.934912>,  <23.251604, 21.119419, 16.632500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.811394, 21.567915, 16.934912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.654007, 21.200386, 16.947262>,  <22.559576, 20.979870, 16.954672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.654007, 21.200386, 16.947262>,  <22.811394, 21.567915, 16.934912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.654007, 21.200386, 16.947262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130658, 0.089130, 0.987413,
		-0.910008, 0.384478, -0.155121,
		-0.393465, -0.918821, 0.030874,
		22.535967, 20.924740, 16.956524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.213533, 21.588820, 17.407831>,  <22.811394, 21.567915, 16.934912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.213533, 21.588820, 17.407831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.331970, 21.207478, 17.384348>,  <22.403032, 20.978672, 17.370258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.331970, 21.207478, 17.384348>,  <22.213533, 21.588820, 17.407831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.331970, 21.207478, 17.384348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087987, -0.088426, 0.992189,
		-0.951099, -0.288611, -0.110065,
		0.296090, -0.953354, -0.058708,
		22.420797, 20.921471, 17.366735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753017, 21.209799, 17.850960>,  <22.213533, 21.588820, 17.407831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753017, 21.209799, 17.850960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.042427, 20.936028, 17.815020>,  <22.216072, 20.771765, 17.793455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.042427, 20.936028, 17.815020>,  <21.753017, 21.209799, 17.850960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042427, 20.936028, 17.815020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157131, -0.290035, 0.944028,
		-0.672179, -0.668908, -0.317392,
		0.723522, -0.684428, -0.089850,
		22.259483, 20.730700, 17.788065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.453421, 20.572306, 18.163919>,  <21.753017, 21.209799, 17.850960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.453421, 20.572306, 18.163919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.852531, 20.545677, 18.165205>,  <22.091997, 20.529701, 18.165977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.852531, 20.545677, 18.165205>,  <21.453421, 20.572306, 18.163919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.852531, 20.545677, 18.165205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020301, -0.257629, 0.966031,
		-0.063479, -0.963948, -0.258408,
		0.997777, -0.066569, 0.003215,
		22.151865, 20.525707, 18.166170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741756, 19.958733, 18.532330>,  <21.453421, 20.572306, 18.163919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741756, 19.958733, 18.532330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051353, 20.211418, 18.549648>,  <22.237112, 20.363029, 18.560040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051353, 20.211418, 18.549648>,  <21.741756, 19.958733, 18.532330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051353, 20.211418, 18.549648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073065, -0.157027, 0.984888,
		0.628968, -0.759130, -0.167693,
		0.773990, 0.631715, 0.043299,
		22.283550, 20.400932, 18.562637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127527, 19.628164, 19.107841>,  <21.741756, 19.958733, 18.532330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127527, 19.628164, 19.107841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273342, 19.991848, 19.027388>,  <22.360830, 20.210058, 18.979115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.273342, 19.991848, 19.027388>,  <22.127527, 19.628164, 19.107841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.273342, 19.991848, 19.027388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214023, 0.128408, 0.968352,
		0.906260, -0.396047, -0.147782,
		0.364537, 0.909207, -0.201134,
		22.382704, 20.264610, 18.967047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.773796, 19.601168, 19.338293>,  <22.127527, 19.628164, 19.107841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.773796, 19.601168, 19.338293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665932, 19.986286, 19.345325>,  <22.601213, 20.217358, 19.349545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.665932, 19.986286, 19.345325>,  <22.773796, 19.601168, 19.338293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.665932, 19.986286, 19.345325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127876, 0.017710, 0.991632,
		0.954426, 0.269654, -0.127894,
		-0.269663, 0.962794, 0.017579,
		22.585033, 20.275124, 19.350599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244390, 19.848633, 19.878798>,  <22.773796, 19.601168, 19.338293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244390, 19.848633, 19.878798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956535, 20.119469, 19.817251>,  <22.783823, 20.281969, 19.780323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.956535, 20.119469, 19.817251>,  <23.244390, 19.848633, 19.878798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.956535, 20.119469, 19.817251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005339, 0.216193, 0.976336,
		0.694329, 0.703430, -0.151965,
		-0.719638, 0.677087, -0.153865,
		22.740644, 20.322596, 19.771091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.489342, 20.412310, 20.271772>,  <23.244390, 19.848633, 19.878798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.489342, 20.412310, 20.271772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099556, 20.471664, 20.204367>,  <22.865685, 20.507277, 20.163923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.099556, 20.471664, 20.204367>,  <23.489342, 20.412310, 20.271772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.099556, 20.471664, 20.204367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104609, 0.364051, 0.925486,
		0.198676, 0.919483, -0.339233,
		-0.974466, 0.148385, -0.168514,
		22.807217, 20.516180, 20.153812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.406338, 20.959379, 20.705435>,  <23.489342, 20.412310, 20.271772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.406338, 20.959379, 20.705435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.053516, 20.791969, 20.618881>,  <22.841824, 20.691523, 20.566950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.053516, 20.791969, 20.618881>,  <23.406338, 20.959379, 20.705435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.053516, 20.791969, 20.618881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321502, 0.198933, 0.925776,
		-0.344414, 0.886150, -0.310026,
		-0.882052, -0.418525, -0.216384,
		22.788900, 20.666412, 20.553967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863781, 21.397251, 20.994741>,  <23.406338, 20.959379, 20.705435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863781, 21.397251, 20.994741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684261, 21.041893, 20.956093>,  <22.576550, 20.828678, 20.932903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.684261, 21.041893, 20.956093>,  <22.863781, 21.397251, 20.994741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.684261, 21.041893, 20.956093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436790, 0.123750, 0.891011,
		-0.779613, 0.442087, -0.443580,
		-0.448797, -0.888395, -0.096622,
		22.549622, 20.775375, 20.927107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.244429, 21.552933, 21.255463>,  <22.863781, 21.397251, 20.994741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.244429, 21.552933, 21.255463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.274525, 21.155102, 21.284193>,  <22.292583, 20.916403, 21.301432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.274525, 21.155102, 21.284193>,  <22.244429, 21.552933, 21.255463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.274525, 21.155102, 21.284193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329343, 0.043202, 0.943222,
		-0.941208, -0.094625, -0.324306,
		0.075242, -0.994575, 0.071826,
		22.297098, 20.856730, 21.305740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.673164, 21.327843, 21.532185>,  <22.244429, 21.552933, 21.255463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.673164, 21.327843, 21.532185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928768, 21.031437, 21.614708>,  <22.082130, 20.853592, 21.664221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.928768, 21.031437, 21.614708>,  <21.673164, 21.327843, 21.532185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.928768, 21.031437, 21.614708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225632, 0.075836, 0.971256,
		-0.735363, -0.667190, -0.118737,
		0.639008, -0.741017, 0.206306,
		22.120470, 20.809132, 21.676600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.342018, 20.725712, 21.827545>,  <21.673164, 21.327843, 21.532185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.342018, 20.725712, 21.827545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716408, 20.726074, 21.968374>,  <21.941042, 20.726292, 22.052872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.716408, 20.726074, 21.968374>,  <21.342018, 20.725712, 21.827545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.716408, 20.726074, 21.968374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351669, -0.045534, 0.935016,
		0.016882, -0.998962, -0.042299,
		0.935972, 0.000910, 0.352073,
		21.997200, 20.726345, 22.073996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212063, 20.495600, 22.524464>,  <21.342018, 20.725712, 21.827545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212063, 20.495600, 22.524464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602493, 20.582531, 22.526997>,  <21.836752, 20.634689, 22.528517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.602493, 20.582531, 22.526997>,  <21.212063, 20.495600, 22.524464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.602493, 20.582531, 22.526997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047238, 0.183541, 0.981876,
		0.212229, -0.958687, 0.189416,
		0.976078, 0.217331, 0.006334,
		21.895317, 20.647730, 22.528896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.457933, 19.986261, 23.052628>,  <21.212063, 20.495600, 22.524464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.457933, 19.986261, 23.052628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.689430, 20.310764, 23.019356>,  <21.828327, 20.505466, 22.999393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.689430, 20.310764, 23.019356>,  <21.457933, 19.986261, 23.052628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.689430, 20.310764, 23.019356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060725, 0.144581, 0.987628,
		0.813248, -0.566529, 0.132939,
		0.578740, 0.811259, -0.083178,
		21.863052, 20.554142, 22.994402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.879425, 20.095993, 23.661695>,  <21.457933, 19.986261, 23.052628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.879425, 20.095993, 23.661695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099476, 20.289894, 23.389702>,  <22.231506, 20.406235, 23.226505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.099476, 20.289894, 23.389702>,  <21.879425, 20.095993, 23.661695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.099476, 20.289894, 23.389702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239377, 0.688563, 0.684529,
		0.800038, -0.539349, 0.262757,
		0.550125, 0.484752, -0.679985,
		22.264513, 20.435320, 23.185707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.547894, 20.039660, 23.891775>,  <21.879425, 20.095993, 23.661695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.547894, 20.039660, 23.891775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452862, 20.369858, 23.686987>,  <22.395842, 20.567976, 23.564114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.452862, 20.369858, 23.686987>,  <22.547894, 20.039660, 23.891775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.452862, 20.369858, 23.686987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064439, 0.512507, 0.856262,
		0.969228, 0.236422, -0.068568,
		-0.237581, 0.825495, -0.511971,
		22.381588, 20.617506, 23.533396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.955992, 20.432411, 24.176294>,  <22.547894, 20.039660, 23.891775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.955992, 20.432411, 24.176294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691132, 20.668228, 23.991257>,  <22.532215, 20.809719, 23.880234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.691132, 20.668228, 23.991257>,  <22.955992, 20.432411, 24.176294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.691132, 20.668228, 23.991257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147452, 0.502742, 0.851768,
		0.734719, 0.632211, -0.245963,
		-0.662153, 0.589542, -0.462595,
		22.492485, 20.845091, 23.852478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.291893, 21.116615, 24.111137>,  <22.955992, 20.432411, 24.176294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.291893, 21.116615, 24.111137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898243, 21.083035, 24.173677>,  <22.662052, 21.062885, 24.211203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898243, 21.083035, 24.173677>,  <23.291893, 21.116615, 24.111137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898243, 21.083035, 24.173677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102541, 0.450072, 0.887085,
		-0.144842, 0.889037, -0.434320,
		-0.984127, -0.083951, 0.156352,
		22.603004, 21.057850, 24.220583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.111864, 21.758934, 24.513691>,  <23.291893, 21.116615, 24.111137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.111864, 21.758934, 24.513691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841797, 21.469990, 24.573481>,  <22.679756, 21.296623, 24.609354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.841797, 21.469990, 24.573481>,  <23.111864, 21.758934, 24.513691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.841797, 21.469990, 24.573481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116604, 0.095573, 0.988570,
		-0.728391, 0.684878, 0.019703,
		-0.675167, -0.722363, 0.149474,
		22.639246, 21.253281, 24.618322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.849285, 21.935419, 25.189758>,  <23.111864, 21.758934, 24.513691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.849285, 21.935419, 25.189758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.725601, 21.562160, 25.116409>,  <22.651390, 21.338205, 25.072401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.725601, 21.562160, 25.116409>,  <22.849285, 21.935419, 25.189758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.725601, 21.562160, 25.116409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074691, -0.216053, 0.973520,
		-0.948056, 0.287326, 0.136503,
		-0.309209, -0.933148, -0.183370,
		22.632839, 21.282217, 25.061398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.281912, 21.757154, 25.674612>,  <22.849285, 21.935419, 25.189758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.281912, 21.757154, 25.674612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470985, 21.428642, 25.546822>,  <22.584431, 21.231535, 25.470148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470985, 21.428642, 25.546822>,  <22.281912, 21.757154, 25.674612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470985, 21.428642, 25.546822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173498, -0.268706, 0.947468,
		-0.863983, -0.503283, 0.015477,
		0.472686, -0.821282, -0.319476,
		22.612791, 21.182259, 25.450979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.675467, 21.584415, 26.183193>,  <22.281912, 21.757154, 25.674612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.675467, 21.584415, 26.183193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318111, 21.762199, 26.156925>,  <21.103699, 21.868870, 26.141165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.318111, 21.762199, 26.156925>,  <21.675467, 21.584415, 26.183193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.318111, 21.762199, 26.156925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073450, 0.000287, -0.997299,
		-0.443239, -0.895799, -0.032902,
		-0.893389, 0.444459, -0.065669,
		21.050095, 21.895536, 26.137224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.192368, 21.202616, 25.752695>,  <21.675467, 21.584415, 26.183193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.192368, 21.202616, 25.752695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118408, 21.595684, 25.747486>,  <21.074034, 21.831526, 25.744362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118408, 21.595684, 25.747486>,  <21.192368, 21.202616, 25.752695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118408, 21.595684, 25.747486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061271, -0.024750, -0.997814,
		-0.980846, -0.183696, 0.064785,
		-0.184898, 0.982671, -0.013021,
		21.062939, 21.890486, 25.743580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652267, 21.259249, 25.336891>,  <21.192368, 21.202616, 25.752695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652267, 21.259249, 25.336891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767399, 21.641197, 25.307568>,  <20.836477, 21.870367, 25.289974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767399, 21.641197, 25.307568>,  <20.652267, 21.259249, 25.336891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767399, 21.641197, 25.307568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193322, -0.017040, -0.980988,
		-0.937967, 0.296528, 0.179693,
		0.287828, 0.954872, -0.073308,
		20.853746, 21.927658, 25.285576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.048401, 21.564594, 24.929924>,  <20.652267, 21.259249, 25.336891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.048401, 21.564594, 24.929924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.394356, 21.764507, 24.948652>,  <20.601929, 21.884455, 24.959888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.394356, 21.764507, 24.948652>,  <20.048401, 21.564594, 24.929924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.394356, 21.764507, 24.948652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038587, 0.159191, -0.986493,
		-0.500483, 0.851398, 0.156968,
		0.864886, 0.499780, 0.046820,
		20.653822, 21.914442, 24.962698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.821493, 22.155506, 24.662914>,  <20.048401, 21.564594, 24.929924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.821493, 22.155506, 24.662914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.213459, 22.093338, 24.612938>,  <20.448639, 22.056038, 24.582952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.213459, 22.093338, 24.612938>,  <19.821493, 22.155506, 24.662914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.213459, 22.093338, 24.612938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099213, 0.163511, -0.981540,
		0.172979, 0.974222, 0.144807,
		0.979916, -0.155419, -0.124939,
		20.507433, 22.046713, 24.575457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.174259, 22.767572, 24.383638>,  <19.821493, 22.155506, 24.662914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.174259, 22.767572, 24.383638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383503, 22.438496, 24.294615>,  <20.509050, 22.241049, 24.241201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.383503, 22.438496, 24.294615>,  <20.174259, 22.767572, 24.383638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.383503, 22.438496, 24.294615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050700, 0.290713, -0.955466,
		0.850755, 0.488531, 0.193785,
		0.523111, -0.822693, -0.222557,
		20.540436, 22.191689, 24.227848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.491175, 22.978064, 23.835911>,  <20.174259, 22.767572, 24.383638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.491175, 22.978064, 23.835911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532520, 22.581184, 23.808022>,  <20.557327, 22.343058, 23.791288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.532520, 22.581184, 23.808022>,  <20.491175, 22.978064, 23.835911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.532520, 22.581184, 23.808022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297506, 0.097732, -0.949705,
		0.949108, 0.077420, 0.305286,
		0.103362, -0.992197, -0.069725,
		20.563528, 22.283525, 23.787104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.090303, 22.867228, 23.416378>,  <20.491175, 22.978064, 23.835911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.090303, 22.867228, 23.416378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854183, 22.545437, 23.389957>,  <20.712511, 22.352362, 23.374105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.854183, 22.545437, 23.389957>,  <21.090303, 22.867228, 23.416378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.854183, 22.545437, 23.389957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008799, 0.075410, -0.997114,
		0.807136, -0.589177, -0.037436,
		-0.590300, -0.804477, -0.066051,
		20.677094, 22.304094, 23.370142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.399084, 22.395416, 22.962017>,  <21.090303, 22.867228, 23.416378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.399084, 22.395416, 22.962017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018681, 22.272396, 22.974613>,  <20.790438, 22.198584, 22.982172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.018681, 22.272396, 22.974613>,  <21.399084, 22.395416, 22.962017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.018681, 22.272396, 22.974613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020805, -0.037968, -0.999062,
		0.308461, -0.950773, 0.029709,
		-0.951010, -0.307553, 0.031492,
		20.733377, 22.180130, 22.984060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.444128, 21.864067, 22.448513>,  <21.399084, 22.395416, 22.962017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.444128, 21.864067, 22.448513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059849, 21.946026, 22.523424>,  <20.829281, 21.995201, 22.568371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.059849, 21.946026, 22.523424>,  <21.444128, 21.864067, 22.448513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.059849, 21.946026, 22.523424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197097, -0.028422, -0.979972,
		-0.195474, -0.978370, 0.067691,
		-0.960699, 0.204901, 0.187278,
		20.771639, 22.007496, 22.579607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.066486, 21.405107, 21.959700>,  <21.444128, 21.864067, 22.448513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.066486, 21.405107, 21.959700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808922, 21.682201, 22.089622>,  <20.654383, 21.848457, 22.167576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808922, 21.682201, 22.089622>,  <21.066486, 21.405107, 21.959700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808922, 21.682201, 22.089622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319004, 0.142787, -0.936936,
		-0.695426, -0.706916, 0.129043,
		-0.643909, 0.692735, 0.324807,
		20.615749, 21.890022, 22.187065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483643, 21.262686, 21.641827>,  <21.066486, 21.405107, 21.959700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483643, 21.262686, 21.641827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423306, 21.649029, 21.726078>,  <20.387102, 21.880835, 21.776628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423306, 21.649029, 21.726078>,  <20.483643, 21.262686, 21.641827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423306, 21.649029, 21.726078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207931, 0.177301, -0.961940,
		-0.966442, -0.188899, 0.174087,
		-0.150844, 0.965858, 0.210630,
		20.378052, 21.938786, 21.789267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.863630, 21.340277, 21.355534>,  <20.483643, 21.262686, 21.641827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.863630, 21.340277, 21.355534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050213, 21.691029, 21.402012>,  <20.162163, 21.901480, 21.429899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.050213, 21.691029, 21.402012>,  <19.863630, 21.340277, 21.355534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.050213, 21.691029, 21.402012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141357, 0.203569, -0.968802,
		-0.873177, 0.435478, 0.218909,
		0.466455, 0.876880, 0.116194,
		20.190149, 21.954092, 21.436871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388269, 21.864908, 21.300858>,  <19.863630, 21.340277, 21.355534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388269, 21.864908, 21.300858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.741722, 22.020088, 21.196018>,  <19.953793, 22.113195, 21.133116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.741722, 22.020088, 21.196018>,  <19.388269, 21.864908, 21.300858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.741722, 22.020088, 21.196018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396855, 0.323622, -0.858938,
		-0.248403, 0.862998, 0.439921,
		0.883630, 0.387948, -0.262097,
		20.006811, 22.136473, 21.117390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.169216, 22.399210, 20.876122>,  <19.388269, 21.864908, 21.300858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.169216, 22.399210, 20.876122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561977, 22.415390, 20.802116>,  <19.797634, 22.425098, 20.757713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.561977, 22.415390, 20.802116>,  <19.169216, 22.399210, 20.876122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.561977, 22.415390, 20.802116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188679, 0.293096, -0.937281,
		0.016313, 0.955227, 0.295424,
		0.981903, 0.040451, -0.185012,
		19.856548, 22.427525, 20.746613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294159, 22.931725, 20.523323>,  <19.169216, 22.399210, 20.876122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294159, 22.931725, 20.523323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607746, 22.698463, 20.438164>,  <19.795898, 22.558506, 20.387068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.607746, 22.698463, 20.438164>,  <19.294159, 22.931725, 20.523323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.607746, 22.698463, 20.438164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168745, 0.129859, -0.977068,
		0.597429, 0.801915, 0.003400,
		0.783967, -0.583155, -0.212900,
		19.842936, 22.523518, 20.374294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.623129, 23.285629, 20.082294>,  <19.294159, 22.931725, 20.523323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.623129, 23.285629, 20.082294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774094, 22.921112, 20.016436>,  <19.864672, 22.702402, 19.976919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.774094, 22.921112, 20.016436>,  <19.623129, 23.285629, 20.082294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.774094, 22.921112, 20.016436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296410, 0.049566, -0.953774,
		0.877327, 0.408768, -0.251410,
		0.377410, -0.911291, -0.164648,
		19.887318, 22.647724, 19.967041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.106668, 23.288599, 19.556093>,  <19.623129, 23.285629, 20.082294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.106668, 23.288599, 19.556093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980244, 22.909103, 19.556768>,  <19.904388, 22.681406, 19.557173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.980244, 22.909103, 19.556768>,  <20.106668, 23.288599, 19.556093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980244, 22.909103, 19.556768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014892, -0.006740, -0.999866,
		0.948622, -0.315994, 0.016259,
		-0.316062, -0.948737, 0.001688,
		19.885426, 22.624483, 19.557274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.542717, 22.899689, 19.090332>,  <20.106668, 23.288599, 19.556093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.542717, 22.899689, 19.090332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216579, 22.671223, 19.128244>,  <20.020897, 22.534143, 19.150991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.216579, 22.671223, 19.128244>,  <20.542717, 22.899689, 19.090332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.216579, 22.671223, 19.128244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021365, -0.133908, -0.990763,
		0.578580, -0.809839, 0.096979,
		-0.815345, -0.571164, 0.094779,
		19.971975, 22.499874, 19.156677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.724634, 22.332300, 18.617601>,  <20.542717, 22.899689, 19.090332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.724634, 22.332300, 18.617601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.324959, 22.335678, 18.633343>,  <20.085154, 22.337706, 18.642788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.324959, 22.335678, 18.633343>,  <20.724634, 22.332300, 18.617601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.324959, 22.335678, 18.633343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040043, -0.110178, -0.993105,
		-0.004050, -0.993876, 0.110427,
		-0.999190, 0.008444, 0.039352,
		20.025202, 22.338211, 18.645147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.645803, 21.912104, 18.069193>,  <20.724634, 22.332300, 18.617601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.645803, 21.912104, 18.069193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.287964, 22.079708, 18.131311>,  <20.073259, 22.180271, 18.168583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.287964, 22.079708, 18.131311>,  <20.645803, 21.912104, 18.069193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.287964, 22.079708, 18.131311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226706, -0.126086, -0.965768,
		-0.385089, -0.899183, 0.207790,
		-0.894601, 0.419014, 0.155295,
		20.019583, 22.205412, 18.177900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199947, 21.540775, 17.650307>,  <20.645803, 21.912104, 18.069193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199947, 21.540775, 17.650307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.997952, 21.874130, 17.740154>,  <19.876755, 22.074142, 17.794064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.997952, 21.874130, 17.740154>,  <20.199947, 21.540775, 17.650307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.997952, 21.874130, 17.740154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294554, 0.078221, -0.952428,
		-0.811311, -0.547127, 0.205977,
		-0.504988, 0.833387, 0.224620,
		19.846455, 22.124146, 17.807541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.594114, 21.530552, 17.327162>,  <20.199947, 21.540775, 17.650307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.594114, 21.530552, 17.327162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640881, 21.921165, 17.399513>,  <19.668940, 22.155533, 17.442924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.640881, 21.921165, 17.399513>,  <19.594114, 21.530552, 17.327162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640881, 21.921165, 17.399513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210712, 0.202372, -0.956371,
		-0.970532, 0.073699, 0.229427,
		0.116913, 0.976532, 0.180879,
		19.675955, 22.214125, 17.453777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.061056, 21.861000, 16.983191>,  <19.594114, 21.530552, 17.327162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.061056, 21.861000, 16.983191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303501, 22.173248, 17.044197>,  <19.448969, 22.360598, 17.080801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303501, 22.173248, 17.044197>,  <19.061056, 21.861000, 16.983191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303501, 22.173248, 17.044197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158293, 0.306305, -0.938680,
		-0.779468, 0.544804, 0.309222,
		0.606113, 0.780619, 0.152516,
		19.485334, 22.407434, 17.089952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711239, 22.400974, 16.627630>,  <19.061056, 21.861000, 16.983191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711239, 22.400974, 16.627630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088715, 22.531414, 16.649944>,  <19.315199, 22.609678, 16.663332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088715, 22.531414, 16.649944>,  <18.711239, 22.400974, 16.627630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088715, 22.531414, 16.649944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042898, 0.287805, -0.956728,
		-0.328045, 0.900459, 0.285587,
		0.943687, 0.326101, 0.055785,
		19.371820, 22.629244, 16.666679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.672661, 22.914614, 16.159550>,  <18.711239, 22.400974, 16.627630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.672661, 22.914614, 16.159550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063496, 22.854641, 16.219982>,  <19.297997, 22.818657, 16.256241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.063496, 22.854641, 16.219982>,  <18.672661, 22.914614, 16.159550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.063496, 22.854641, 16.219982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202467, 0.435716, -0.877017,
		0.065666, 0.887509, 0.456088,
		0.977085, -0.149933, 0.151080,
		19.356621, 22.809662, 16.265306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.982998, 23.554203, 16.089205>,  <18.672661, 22.914614, 16.159550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.982998, 23.554203, 16.089205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249897, 23.263313, 16.024797>,  <19.410036, 23.088779, 15.986153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.249897, 23.263313, 16.024797>,  <18.982998, 23.554203, 16.089205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.249897, 23.263313, 16.024797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142379, 0.336727, -0.930775,
		0.731101, 0.598132, 0.328222,
		0.667248, -0.727222, -0.161020,
		19.450071, 23.045147, 15.976491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.534702, 23.867271, 15.555037>,  <18.982998, 23.554203, 16.089205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.534702, 23.867271, 15.555037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578152, 23.471237, 15.519408>,  <19.604221, 23.233618, 15.498032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.578152, 23.471237, 15.519408>,  <19.534702, 23.867271, 15.555037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.578152, 23.471237, 15.519408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202649, 0.109774, -0.973079,
		0.973208, 0.087647, 0.212564,
		0.108622, -0.990085, -0.089071,
		19.610739, 23.174212, 15.492687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.164339, 23.678787, 15.069331>,  <19.534702, 23.867271, 15.555037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.164339, 23.678787, 15.069331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935219, 23.351727, 15.092450>,  <19.797747, 23.155489, 15.106321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.935219, 23.351727, 15.092450>,  <20.164339, 23.678787, 15.069331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.935219, 23.351727, 15.092450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120742, -0.153907, -0.980680,
		0.810753, -0.554756, 0.186884,
		-0.572801, -0.817654, 0.057798,
		19.763378, 23.106430, 15.109790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.476904, 23.230675, 14.654757>,  <20.164339, 23.678787, 15.069331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.476904, 23.230675, 14.654757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093136, 23.119736, 14.675134>,  <19.862875, 23.053173, 14.687360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.093136, 23.119736, 14.675134>,  <20.476904, 23.230675, 14.654757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.093136, 23.119736, 14.675134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002134, -0.173513, -0.984829,
		0.281978, -0.944972, 0.165879,
		-0.959419, -0.277347, 0.050943,
		19.805311, 23.036531, 14.690416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549774, 22.703083, 14.263421>,  <20.476904, 23.230675, 14.654757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549774, 22.703083, 14.263421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155972, 22.771294, 14.279742>,  <19.919689, 22.812220, 14.289535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.155972, 22.771294, 14.279742>,  <20.549774, 22.703083, 14.263421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.155972, 22.771294, 14.279742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091474, -0.300984, -0.949232,
		-0.149587, -0.938259, 0.311920,
		-0.984508, 0.170525, 0.040803,
		19.860619, 22.822451, 14.291983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.217657, 22.131041, 13.861595>,  <20.549774, 22.703083, 14.263421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.217657, 22.131041, 13.861595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944984, 22.423531, 13.871600>,  <19.781382, 22.599024, 13.877603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.944984, 22.423531, 13.871600>,  <20.217657, 22.131041, 13.861595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.944984, 22.423531, 13.871600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173726, -0.128559, -0.976367,
		-0.710727, -0.669914, 0.214668,
		-0.681679, 0.731223, 0.025012,
		19.740480, 22.642899, 13.879104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.589394, 21.850018, 13.452289>,  <20.217657, 22.131041, 13.861595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.589394, 21.850018, 13.452289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557178, 22.248680, 13.446805>,  <19.537849, 22.487879, 13.443515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.557178, 22.248680, 13.446805>,  <19.589394, 21.850018, 13.452289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.557178, 22.248680, 13.446805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217999, -0.031032, -0.975456,
		-0.972621, -0.075570, 0.219769,
		-0.080536, 0.996658, -0.013709,
		19.533018, 22.547678, 13.442693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.817789, 22.045746, 13.143365>,  <19.589394, 21.850018, 13.452289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.817789, 22.045746, 13.143365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044315, 22.375271, 13.133381>,  <19.180231, 22.572987, 13.127391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.044315, 22.375271, 13.133381>,  <18.817789, 22.045746, 13.143365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.044315, 22.375271, 13.133381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268959, 0.156096, -0.950418,
		-0.779070, 0.544948, 0.309971,
		0.566314, 0.823812, -0.024959,
		19.214209, 22.622414, 13.125894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407425, 22.598627, 12.860615>,  <18.817789, 22.045746, 13.143365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407425, 22.598627, 12.860615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.787807, 22.703865, 12.795542>,  <19.016037, 22.767008, 12.756498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.787807, 22.703865, 12.795542>,  <18.407425, 22.598627, 12.860615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.787807, 22.703865, 12.795542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226093, 0.232253, -0.946013,
		-0.211107, 0.936397, 0.280346,
		0.950955, 0.263094, -0.162682,
		19.073093, 22.782793, 12.746737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332039, 23.303741, 12.481094>,  <18.407425, 22.598627, 12.860615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332039, 23.303741, 12.481094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686234, 23.139133, 12.394781>,  <18.898750, 23.040369, 12.342993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.686234, 23.139133, 12.394781>,  <18.332039, 23.303741, 12.481094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.686234, 23.139133, 12.394781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106782, 0.271743, -0.956427,
		0.452226, 0.869947, 0.196683,
		0.885488, -0.411519, -0.215783,
		18.951880, 23.015678, 12.330046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.388151, 23.357229, 11.788148>,  <18.332039, 23.303741, 12.481094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.388151, 23.357229, 11.788148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713238, 23.125435, 11.812447>,  <18.908289, 22.986359, 11.827026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.713238, 23.125435, 11.812447>,  <18.388151, 23.357229, 11.788148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.713238, 23.125435, 11.812447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147068, 0.103134, -0.983735,
		0.563796, 0.808430, 0.169043,
		0.812715, -0.579486, 0.060748,
		18.957052, 22.951590, 11.830671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775951, 23.642088, 11.281347>,  <18.388151, 23.357229, 11.788148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775951, 23.642088, 11.281347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840527, 23.249920, 11.326448>,  <18.879271, 23.014620, 11.353509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.840527, 23.249920, 11.326448>,  <18.775951, 23.642088, 11.281347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840527, 23.249920, 11.326448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045888, -0.106671, -0.993235,
		0.985816, 0.165519, 0.027769,
		0.161437, -0.980421, 0.112754,
		18.888958, 22.955793, 11.360274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.378635, 23.495472, 10.952923>,  <18.775951, 23.642088, 11.281347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.378635, 23.495472, 10.952923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241436, 23.122761, 11.000486>,  <19.159117, 22.899134, 11.029024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.241436, 23.122761, 11.000486>,  <19.378635, 23.495472, 10.952923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.241436, 23.122761, 11.000486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166103, -0.184757, -0.968646,
		0.924534, -0.312491, 0.218142,
		-0.342997, -0.931780, 0.118908,
		19.138536, 22.843227, 11.036159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.883692, 23.119566, 10.578902>,  <19.378635, 23.495472, 10.952923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.883692, 23.119566, 10.578902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550541, 22.900394, 10.610112>,  <19.350651, 22.768890, 10.628839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.550541, 22.900394, 10.610112>,  <19.883692, 23.119566, 10.578902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.550541, 22.900394, 10.610112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073941, -0.249873, -0.965451,
		0.548497, -0.798333, 0.248628,
		-0.832877, -0.547931, 0.078026,
		19.300678, 22.736015, 10.633520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.041653, 22.510717, 10.273890>,  <19.883692, 23.119566, 10.578902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.041653, 22.510717, 10.273890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643364, 22.473858, 10.271031>,  <19.404390, 22.451742, 10.269317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.643364, 22.473858, 10.271031>,  <20.041653, 22.510717, 10.273890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.643364, 22.473858, 10.271031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055484, -0.534123, -0.843584,
		0.073921, -0.840370, 0.536949,
		-0.995720, -0.092151, -0.007144,
		19.344648, 22.446213, 10.268888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.983988, 21.806416, 10.112344>,  <20.041653, 22.510717, 10.273890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.983988, 21.806416, 10.112344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638229, 21.980053, 10.010853>,  <19.430775, 22.084236, 9.949959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.638229, 21.980053, 10.010853>,  <19.983988, 21.806416, 10.112344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.638229, 21.980053, 10.010853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065066, -0.403804, -0.912529,
		-0.498582, -0.805296, 0.320802,
		-0.864397, 0.434097, -0.253727,
		19.378910, 22.110281, 9.934735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.504448, 21.296820, 9.779517>,  <19.983988, 21.806416, 10.112344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.504448, 21.296820, 9.779517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379101, 21.657150, 9.659308>,  <19.303892, 21.873348, 9.587183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.379101, 21.657150, 9.659308>,  <19.504448, 21.296820, 9.779517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379101, 21.657150, 9.659308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011446, -0.312855, -0.949732,
		-0.949563, -0.301056, 0.087729,
		-0.313369, 0.900826, -0.300521,
		19.285089, 21.927399, 9.569152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.967257, 21.185560, 9.303923>,  <19.504448, 21.296820, 9.779517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.967257, 21.185560, 9.303923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118240, 21.546478, 9.220603>,  <19.208830, 21.763029, 9.170611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.118240, 21.546478, 9.220603>,  <18.967257, 21.185560, 9.303923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.118240, 21.546478, 9.220603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006809, -0.227636, -0.973723,
		-0.926002, 0.366121, -0.092067,
		0.377458, 0.902296, -0.208298,
		19.231478, 21.817167, 9.158113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605505, 21.336824, 8.724246>,  <18.967257, 21.185560, 9.303923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605505, 21.336824, 8.724246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926220, 21.575787, 8.718048>,  <19.118649, 21.719164, 8.714330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.926220, 21.575787, 8.718048>,  <18.605505, 21.336824, 8.724246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.926220, 21.575787, 8.718048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110536, -0.173731, -0.978570,
		-0.587296, 0.782894, -0.205330,
		0.801789, 0.597407, -0.015494,
		19.166756, 21.755009, 8.713400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131453, 20.681108, 8.748211>,  <18.605505, 21.336824, 8.724246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131453, 20.681108, 8.748211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979710, 20.313480, 8.790921>,  <17.888664, 20.092903, 8.816547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.979710, 20.313480, 8.790921>,  <18.131453, 20.681108, 8.748211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979710, 20.313480, 8.790921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190522, 0.190522, 0.963017,
		-0.905423, 0.344984, -0.247379,
		-0.379356, -0.919069, 0.106776,
		17.865902, 20.037760, 8.822954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598663, 20.851896, 9.119930>,  <18.131453, 20.681108, 8.748211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598663, 20.851896, 9.119930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661041, 20.458359, 9.155099>,  <17.698467, 20.222237, 9.176200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.661041, 20.458359, 9.155099>,  <17.598663, 20.851896, 9.119930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.661041, 20.458359, 9.155099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376048, 0.023174, 0.926311,
		-0.913383, -0.177516, -0.366359,
		0.155945, -0.983845, 0.087922,
		17.707825, 20.163206, 9.181476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.911451, 20.673731, 9.413140>,  <17.598663, 20.851896, 9.119930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.911451, 20.673731, 9.413140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205299, 20.419811, 9.508946>,  <17.381607, 20.267460, 9.566430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.205299, 20.419811, 9.508946>,  <16.911451, 20.673731, 9.413140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.205299, 20.419811, 9.508946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356114, -0.060271, 0.932497,
		-0.577510, -0.770324, -0.270337,
		0.734618, -0.634797, 0.239516,
		17.425686, 20.229372, 9.580801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.599398, 20.381191, 9.997739>,  <16.911451, 20.673731, 9.413140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.599398, 20.381191, 9.997739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956802, 20.202679, 10.017629>,  <17.171246, 20.095572, 10.029563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.956802, 20.202679, 10.017629>,  <16.599398, 20.381191, 9.997739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.956802, 20.202679, 10.017629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103849, -0.097634, 0.989789,
		-0.436871, -0.889550, -0.133583,
		0.893509, -0.446283, 0.049725,
		17.224855, 20.068794, 10.032546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.502941, 19.663277, 10.418930>,  <16.599398, 20.381191, 9.997739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.502941, 19.663277, 10.418930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886887, 19.773678, 10.438850>,  <17.117254, 19.839918, 10.450803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.886887, 19.773678, 10.438850>,  <16.502941, 19.663277, 10.418930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886887, 19.773678, 10.438850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061417, 0.033600, 0.997547,
		0.273655, -0.960569, 0.049203,
		0.959865, 0.276005, 0.049800,
		17.174847, 19.856480, 10.453791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.899532, 19.273659, 10.982217>,  <16.502941, 19.663277, 10.418930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.899532, 19.273659, 10.982217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099762, 19.616894, 10.936411>,  <17.219900, 19.822834, 10.908927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.099762, 19.616894, 10.936411>,  <16.899532, 19.273659, 10.982217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.099762, 19.616894, 10.936411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065467, 0.169425, 0.983366,
		0.863215, -0.484751, 0.140986,
		0.500574, 0.858086, -0.114515,
		17.249933, 19.874319, 10.902057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.353559, 19.219273, 11.439840>,  <16.899532, 19.273659, 10.982217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.353559, 19.219273, 11.439840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376060, 19.612518, 11.370192>,  <17.389561, 19.848467, 11.328403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.376060, 19.612518, 11.370192>,  <17.353559, 19.219273, 11.439840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.376060, 19.612518, 11.370192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068664, 0.170176, 0.983019,
		0.996053, -0.067253, -0.057932,
		0.056252, 0.983116, -0.174122,
		17.392937, 19.907454, 11.317955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721113, 19.563999, 12.016555>,  <17.353559, 19.219273, 11.439840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721113, 19.563999, 12.016555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508408, 19.860905, 11.853451>,  <17.380785, 20.039049, 11.755589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.508408, 19.860905, 11.853451>,  <17.721113, 19.563999, 12.016555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.508408, 19.860905, 11.853451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311546, 0.276263, 0.909185,
		0.787507, 0.610508, 0.084343,
		-0.531763, 0.742266, -0.407761,
		17.348879, 20.083584, 11.731123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.937164, 20.096346, 12.419825>,  <17.721113, 19.563999, 12.016555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.937164, 20.096346, 12.419825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600735, 20.225159, 12.245977>,  <17.398876, 20.302446, 12.141669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.600735, 20.225159, 12.245977>,  <17.937164, 20.096346, 12.419825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.600735, 20.225159, 12.245977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283528, 0.421800, 0.861218,
		0.460660, 0.847574, -0.263460,
		-0.841073, 0.322031, -0.434617,
		17.348413, 20.321768, 12.115592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803457, 20.852947, 12.561914>,  <17.937164, 20.096346, 12.419825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803457, 20.852947, 12.561914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434208, 20.715519, 12.492861>,  <17.212658, 20.633062, 12.451428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.434208, 20.715519, 12.492861>,  <17.803457, 20.852947, 12.561914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.434208, 20.715519, 12.492861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260507, 0.228622, 0.938013,
		-0.282806, 0.910874, -0.300549,
		-0.923123, -0.343571, -0.172633,
		17.157270, 20.612448, 12.441071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397413, 21.321196, 12.890394>,  <17.803457, 20.852947, 12.561914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397413, 21.321196, 12.890394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.176884, 20.990227, 12.847650>,  <17.044567, 20.791645, 12.822002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.176884, 20.990227, 12.847650>,  <17.397413, 21.321196, 12.890394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.176884, 20.990227, 12.847650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258509, 0.047639, 0.964833,
		-0.793232, 0.559559, -0.240161,
		-0.551322, -0.827421, -0.106862,
		17.011488, 20.742001, 12.815591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.782143, 21.477440, 13.268772>,  <17.397413, 21.321196, 12.890394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.782143, 21.477440, 13.268772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789272, 21.080524, 13.219715>,  <16.793550, 20.842375, 13.190281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.789272, 21.080524, 13.219715>,  <16.782143, 21.477440, 13.268772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789272, 21.080524, 13.219715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381068, -0.120146, 0.916707,
		-0.924375, 0.030397, -0.380272,
		0.017823, -0.992291, -0.122643,
		16.794619, 20.782837, 13.182922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.092863, 21.183720, 13.350952>,  <16.782143, 21.477440, 13.268772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.092863, 21.183720, 13.350952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396763, 20.940575, 13.443286>,  <16.579102, 20.794687, 13.498686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396763, 20.940575, 13.443286>,  <16.092863, 21.183720, 13.350952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396763, 20.940575, 13.443286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356504, -0.092532, 0.929700,
		-0.543772, -0.788631, -0.287007,
		0.759748, -0.607864, 0.230834,
		16.624687, 20.758215, 13.512536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906741, 21.210594, 13.958596>,  <16.092863, 21.183720, 13.350952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.906741, 21.210594, 13.958596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213417, 20.953934, 13.967256>,  <16.397423, 20.799936, 13.972451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.213417, 20.953934, 13.967256>,  <15.906741, 21.210594, 13.958596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213417, 20.953934, 13.967256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020601, 0.009114, 0.999746,
		-0.641688, -0.766940, -0.006231,
		0.766689, -0.641653, 0.021648,
		16.443424, 20.761438, 13.973750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.771541, 20.636770, 14.447796>,  <15.906741, 21.210594, 13.958596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.771541, 20.636770, 14.447796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170441, 20.608650, 14.438415>,  <16.409781, 20.591778, 14.432786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.170441, 20.608650, 14.438415>,  <15.771541, 20.636770, 14.447796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.170441, 20.608650, 14.438415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016783, -0.094011, 0.995430,
		-0.072168, -0.993087, -0.092573,
		0.997251, -0.070285, -0.023451,
		16.469616, 20.587561, 14.431378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983799, 19.972813, 14.824736>,  <15.771541, 20.636770, 14.447796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.983799, 19.972813, 14.824736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299034, 20.218754, 14.812945>,  <16.488176, 20.366320, 14.805871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299034, 20.218754, 14.812945>,  <15.983799, 19.972813, 14.824736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299034, 20.218754, 14.812945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068120, -0.039523, 0.996894,
		0.611781, -0.787649, -0.073031,
		0.788089, 0.614856, -0.029476,
		16.535461, 20.403210, 14.804103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479040, 19.723366, 15.288867>,  <15.983799, 19.972813, 14.824736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479040, 19.723366, 15.288867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.614491, 20.093193, 15.219005>,  <16.695761, 20.315090, 15.177088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.614491, 20.093193, 15.219005>,  <16.479040, 19.723366, 15.288867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.614491, 20.093193, 15.219005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204430, 0.108894, 0.972805,
		0.918444, -0.365124, -0.152135,
		0.338628, 0.924568, -0.174655,
		16.716080, 20.370564, 15.166608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.150564, 19.773476, 15.666051>,  <16.479040, 19.723366, 15.288867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.150564, 19.773476, 15.666051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004688, 20.143250, 15.621469>,  <16.917164, 20.365114, 15.594719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.004688, 20.143250, 15.621469>,  <17.150564, 19.773476, 15.666051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004688, 20.143250, 15.621469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110860, 0.161956, 0.980551,
		0.924507, 0.345239, -0.161546,
		-0.364688, 0.924435, -0.111456,
		16.895283, 20.420580, 15.588032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615814, 20.150570, 16.035997>,  <17.150564, 19.773476, 15.666051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615814, 20.150570, 16.035997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.293457, 20.384556, 15.999433>,  <17.100042, 20.524946, 15.977494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.293457, 20.384556, 15.999433>,  <17.615814, 20.150570, 16.035997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.293457, 20.384556, 15.999433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070632, 0.248281, 0.966109,
		0.587835, 0.772123, -0.241405,
		-0.805892, 0.584964, -0.091412,
		17.051689, 20.560045, 15.972009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.843393, 20.760714, 16.314398>,  <17.615814, 20.150570, 16.035997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.843393, 20.760714, 16.314398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448803, 20.826084, 16.319485>,  <17.212049, 20.865307, 16.322536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.448803, 20.826084, 16.319485>,  <17.843393, 20.760714, 16.314398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.448803, 20.826084, 16.319485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055129, 0.257698, 0.964652,
		0.154370, 0.952305, -0.263221,
		-0.986474, 0.163424, 0.012719,
		17.152861, 20.875111, 16.323299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.792526, 21.515196, 16.462769>,  <17.843393, 20.760714, 16.314398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.792526, 21.515196, 16.462769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513012, 21.251057, 16.572777>,  <17.345303, 21.092573, 16.638783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.513012, 21.251057, 16.572777>,  <17.792526, 21.515196, 16.462769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.513012, 21.251057, 16.572777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168692, 0.221501, 0.960458,
		-0.695153, 0.717551, -0.043387,
		-0.698788, -0.660347, 0.275022,
		17.303375, 21.052952, 16.655283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376137, 21.886936, 17.029093>,  <17.792526, 21.515196, 16.462769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376137, 21.886936, 17.029093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312515, 21.492691, 17.051968>,  <17.274342, 21.256144, 17.065693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.312515, 21.492691, 17.051968>,  <17.376137, 21.886936, 17.029093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.312515, 21.492691, 17.051968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203888, 0.023883, 0.978703,
		-0.965987, 0.167328, 0.197156,
		-0.159056, -0.985612, 0.057187,
		17.264799, 21.197008, 17.069124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.031237, 21.770754, 17.702618>,  <17.376137, 21.886936, 17.029093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.031237, 21.770754, 17.702618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146881, 21.402096, 17.599091>,  <17.216269, 21.180901, 17.536974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.146881, 21.402096, 17.599091>,  <17.031237, 21.770754, 17.702618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.146881, 21.402096, 17.599091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354637, -0.148012, 0.923214,
		-0.889183, -0.358699, 0.284057,
		0.289112, -0.921644, -0.258818,
		17.233614, 21.125603, 17.521444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892185, 21.301899, 18.288218>,  <17.031237, 21.770754, 17.702618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892185, 21.301899, 18.288218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187042, 21.124004, 18.084715>,  <17.363956, 21.017267, 17.962614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.187042, 21.124004, 18.084715>,  <16.892185, 21.301899, 18.288218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.187042, 21.124004, 18.084715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476613, -0.191530, 0.857996,
		-0.479025, -0.874943, 0.070783,
		0.737140, -0.444737, -0.508756,
		17.408184, 20.990583, 17.932089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.942482, 20.576555, 18.545439>,  <16.892185, 21.301899, 18.288218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.942482, 20.576555, 18.545439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304092, 20.640320, 18.386780>,  <17.521059, 20.678577, 18.291584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.304092, 20.640320, 18.386780>,  <16.942482, 20.576555, 18.545439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304092, 20.640320, 18.386780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416196, -0.540000, 0.731561,
		-0.097571, -0.826431, -0.554519,
		0.904025, 0.159409, -0.396646,
		17.575300, 20.688143, 18.267786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.376909, 19.983263, 18.626852>,  <16.942482, 20.576555, 18.545439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.376909, 19.983263, 18.626852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667984, 20.249241, 18.559536>,  <17.842628, 20.408829, 18.519146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.667984, 20.249241, 18.559536>,  <17.376909, 19.983263, 18.626852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667984, 20.249241, 18.559536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516588, -0.369891, 0.772216,
		0.451233, -0.648867, -0.612667,
		0.727685, 0.664946, -0.168290,
		17.886290, 20.448725, 18.509048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075127, 19.657972, 18.519266>,  <17.376909, 19.983263, 18.626852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075127, 19.657972, 18.519266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129616, 20.029388, 18.657400>,  <18.162310, 20.252237, 18.740280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.129616, 20.029388, 18.657400>,  <18.075127, 19.657972, 18.519266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.129616, 20.029388, 18.657400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336783, -0.371228, 0.865313,
		0.931676, -0.001571, -0.363286,
		0.136221, 0.928540, 0.345336,
		18.170483, 20.307951, 18.761002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658182, 19.610346, 18.953808>,  <18.075127, 19.657972, 18.519266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658182, 19.610346, 18.953808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538677, 19.971226, 19.078247>,  <18.466974, 20.187754, 19.152910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538677, 19.971226, 19.078247>,  <18.658182, 19.610346, 18.953808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538677, 19.971226, 19.078247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297343, -0.221756, 0.928661,
		0.906823, 0.369951, -0.202010,
		-0.298762, 0.902197, 0.311096,
		18.449049, 20.241884, 19.171576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265289, 19.957523, 19.214039>,  <18.658182, 19.610346, 18.953808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265289, 19.957523, 19.214039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941921, 20.127567, 19.376881>,  <18.747900, 20.229593, 19.474586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.941921, 20.127567, 19.376881>,  <19.265289, 19.957523, 19.214039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.941921, 20.127567, 19.376881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262742, -0.358287, 0.895878,
		0.526708, 0.831211, 0.177952,
		-0.808421, 0.425111, 0.407107,
		18.699394, 20.255100, 19.499012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.621571, 20.247578, 19.869957>,  <19.265289, 19.957523, 19.214039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.621571, 20.247578, 19.869957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226604, 20.210991, 19.921558>,  <18.989624, 20.189039, 19.952518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.226604, 20.210991, 19.921558>,  <19.621571, 20.247578, 19.869957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.226604, 20.210991, 19.921558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134821, -0.060565, 0.989017,
		-0.082649, 0.993965, 0.072134,
		-0.987417, -0.091466, 0.129001,
		18.930380, 20.183552, 19.960258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456020, 20.588232, 20.473799>,  <19.621571, 20.247578, 19.869957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456020, 20.588232, 20.473799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119751, 20.373993, 20.441780>,  <18.917990, 20.245449, 20.422569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.119751, 20.373993, 20.441780>,  <19.456020, 20.588232, 20.473799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.119751, 20.373993, 20.441780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015733, -0.123591, 0.992209,
		-0.541317, 0.835381, 0.095473,
		-0.840671, -0.535597, -0.080045,
		18.867550, 20.213314, 20.417767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.227268, 20.700214, 21.105927>,  <19.456020, 20.588232, 20.473799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.227268, 20.700214, 21.105927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998646, 20.401886, 20.969063>,  <18.861473, 20.222889, 20.886944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.998646, 20.401886, 20.969063>,  <19.227268, 20.700214, 21.105927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.998646, 20.401886, 20.969063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119870, -0.336618, 0.933981,
		-0.811760, 0.574837, 0.102994,
		-0.571556, -0.745822, -0.342159,
		18.827179, 20.178139, 20.866415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.690346, 20.692167, 21.514643>,  <19.227268, 20.700214, 21.105927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.690346, 20.692167, 21.514643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710712, 20.320339, 21.368599>,  <18.722933, 20.097242, 21.280972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.710712, 20.320339, 21.368599>,  <18.690346, 20.692167, 21.514643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.710712, 20.320339, 21.368599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257532, -0.365443, 0.894499,
		-0.964927, 0.048483, -0.258001,
		0.050917, -0.929570, -0.365111,
		18.725988, 20.041468, 21.259066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.056793, 20.302877, 21.620184>,  <18.690346, 20.692167, 21.514643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.056793, 20.302877, 21.620184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331619, 20.012978, 21.599474>,  <18.496515, 19.839037, 21.587048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.331619, 20.012978, 21.599474>,  <18.056793, 20.302877, 21.620184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331619, 20.012978, 21.599474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361600, -0.402863, 0.840801,
		-0.630228, -0.558963, -0.538863,
		0.687064, -0.724750, -0.051775,
		18.537739, 19.795553, 21.583942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.704622, 19.786915, 21.729628>,  <18.056793, 20.302877, 21.620184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.704622, 19.786915, 21.729628> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079697, 19.662304, 21.791203>,  <18.304741, 19.587538, 21.828148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.079697, 19.662304, 21.791203>,  <17.704622, 19.786915, 21.729628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079697, 19.662304, 21.791203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277132, -0.403207, 0.872137,
		-0.209626, -0.860451, -0.464415,
		0.937686, -0.311526, 0.153936,
		18.361002, 19.568846, 21.837383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.670931, 18.976715, 21.883236>,  <17.704622, 19.786915, 21.729628>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.670931, 18.976715, 21.883236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.021786, 19.098602, 22.031710>,  <18.232300, 19.171734, 22.120794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.021786, 19.098602, 22.031710>,  <17.670931, 18.976715, 21.883236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021786, 19.098602, 22.031710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201278, -0.468487, 0.860237,
		0.436023, -0.829257, -0.349595,
		0.877138, 0.304717, 0.371182,
		18.284927, 19.190018, 22.143064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.753199, 18.407570, 22.321856>,  <17.670931, 18.976715, 21.883236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.753199, 18.407570, 22.321856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038525, 18.676926, 22.399551>,  <18.209721, 18.838539, 22.446169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.038525, 18.676926, 22.399551>,  <17.753199, 18.407570, 22.321856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.038525, 18.676926, 22.399551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062464, -0.337130, 0.939384,
		0.698056, -0.657942, -0.282542,
		0.713313, 0.673391, 0.194238,
		18.252518, 18.878942, 22.457823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.457222, 18.071018, 22.466764>,  <17.753199, 18.407570, 22.321856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.457222, 18.071018, 22.466764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447235, 18.437515, 22.626705>,  <18.441242, 18.657413, 22.722670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.447235, 18.437515, 22.626705>,  <18.457222, 18.071018, 22.466764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.447235, 18.437515, 22.626705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055860, -0.398071, 0.915652,
		0.998127, 0.045196, -0.041243,
		-0.024967, 0.916241, 0.399850,
		18.439745, 18.712387, 22.746660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.163002, 17.940842, 22.634144>,  <18.457222, 18.071018, 22.466764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.163002, 17.940842, 22.634144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.003376, 17.581001, 22.705099>,  <18.907600, 17.365097, 22.747673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.003376, 17.581001, 22.705099>,  <19.163002, 17.940842, 22.634144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.003376, 17.581001, 22.705099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069769, -0.222691, -0.972389,
		0.914263, -0.375672, 0.151633,
		-0.399067, -0.899599, 0.177388,
		18.883656, 17.311121, 22.758316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506060, 17.467226, 22.115311>,  <19.163002, 17.940842, 22.634144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506060, 17.467226, 22.115311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201397, 17.237690, 22.235701>,  <19.018599, 17.099968, 22.307934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.201397, 17.237690, 22.235701>,  <19.506060, 17.467226, 22.115311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201397, 17.237690, 22.235701> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242077, -0.178860, -0.953629,
		0.601064, -0.799196, -0.002684,
		-0.761656, -0.573842, 0.300973,
		18.972900, 17.065536, 22.325993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.530624, 16.767000, 21.713779>,  <19.506060, 17.467226, 22.115311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.530624, 16.767000, 21.713779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162399, 16.840153, 21.851833>,  <18.941463, 16.884045, 21.934666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.162399, 16.840153, 21.851833>,  <19.530624, 16.767000, 21.713779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162399, 16.840153, 21.851833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366952, -0.102164, -0.924613,
		-0.133835, -0.977812, 0.161158,
		-0.920562, 0.182883, 0.345137,
		18.886230, 16.895018, 21.955374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.173552, 16.298107, 21.449234>,  <19.530624, 16.767000, 21.713779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.173552, 16.298107, 21.449234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.906742, 16.581043, 21.542828>,  <18.746656, 16.750805, 21.598984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.906742, 16.581043, 21.542828>,  <19.173552, 16.298107, 21.449234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.906742, 16.581043, 21.542828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408181, -0.084218, -0.909008,
		-0.623273, -0.701837, 0.344899,
		-0.667022, 0.707341, 0.233986,
		18.706635, 16.793245, 21.613024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587534, 16.151628, 21.134947>,  <19.173552, 16.298107, 21.449234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587534, 16.151628, 21.134947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504013, 16.531563, 21.228081>,  <18.453899, 16.759523, 21.283962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.504013, 16.531563, 21.228081>,  <18.587534, 16.151628, 21.134947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.504013, 16.531563, 21.228081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541254, 0.086055, -0.836444,
		-0.814521, -0.300676, 0.496134,
		-0.208804, 0.949836, 0.232836,
		18.441372, 16.816513, 21.297932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818476, 16.238583, 21.139105>,  <18.587534, 16.151628, 21.134947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818476, 16.238583, 21.139105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946678, 16.615498, 21.100389>,  <18.023600, 16.841646, 21.077160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.946678, 16.615498, 21.100389>,  <17.818476, 16.238583, 21.139105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.946678, 16.615498, 21.100389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691225, 0.162790, -0.704065,
		-0.647677, 0.292558, 0.703509,
		0.320504, 0.942289, -0.096788,
		18.042830, 16.898184, 21.071354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207748, 16.611885, 21.049118>,  <17.818476, 16.238583, 21.139105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207748, 16.611885, 21.049118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.502110, 16.849213, 20.918631>,  <17.678726, 16.991610, 20.840338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.502110, 16.849213, 20.918631>,  <17.207748, 16.611885, 21.049118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.502110, 16.849213, 20.918631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500822, 0.152748, -0.851966,
		-0.455659, 0.790341, 0.409555,
		0.735903, 0.593320, -0.326219,
		17.722879, 17.027208, 20.820765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.864258, 17.186445, 20.640482>,  <17.207748, 16.611885, 21.049118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.864258, 17.186445, 20.640482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245903, 17.179714, 20.520895>,  <17.474890, 17.175674, 20.449142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.245903, 17.179714, 20.520895>,  <16.864258, 17.186445, 20.640482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.245903, 17.179714, 20.520895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289102, 0.208315, -0.934358,
		0.078004, 0.977917, 0.193891,
		0.954115, -0.016830, -0.298967,
		17.532137, 17.174665, 20.431204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968239, 17.769297, 20.253248>,  <16.864258, 17.186445, 20.640482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968239, 17.769297, 20.253248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253735, 17.520020, 20.125370>,  <17.425032, 17.370453, 20.048643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.253735, 17.520020, 20.125370>,  <16.968239, 17.769297, 20.253248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.253735, 17.520020, 20.125370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241103, 0.209943, -0.947520,
		0.657607, 0.753362, -0.000409,
		0.713739, -0.623194, -0.319697,
		17.467855, 17.333061, 20.029461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.222574, 18.111727, 19.647629>,  <16.968239, 17.769297, 20.253248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.222574, 18.111727, 19.647629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412125, 17.760021, 19.628307>,  <17.525856, 17.548998, 19.616714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.412125, 17.760021, 19.628307>,  <17.222574, 18.111727, 19.647629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.412125, 17.760021, 19.628307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010643, 0.060569, -0.998107,
		0.880526, 0.472467, 0.038061,
		0.473878, -0.879265, -0.048304,
		17.554289, 17.496243, 19.613815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.633186, 18.227091, 18.994560>,  <17.222574, 18.111727, 19.647629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.633186, 18.227091, 18.994560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597450, 17.835808, 19.069527>,  <17.576008, 17.601038, 19.114506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.597450, 17.835808, 19.069527>,  <17.633186, 18.227091, 18.994560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.597450, 17.835808, 19.069527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036595, -0.191265, -0.980856,
		0.995329, -0.080773, 0.052886,
		-0.089341, -0.978209, 0.187415,
		17.570648, 17.542345, 19.125751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.217485, 17.790110, 18.711340>,  <17.633186, 18.227091, 18.994560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.217485, 17.790110, 18.711340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919304, 17.525703, 18.745651>,  <17.740395, 17.367060, 18.766237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.919304, 17.525703, 18.745651>,  <18.217485, 17.790110, 18.711340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.919304, 17.525703, 18.745651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020097, -0.150915, -0.988342,
		0.666257, -0.735038, 0.125784,
		-0.745452, -0.661018, 0.085777,
		17.695669, 17.327398, 18.771385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.362013, 17.319263, 18.221521>,  <18.217485, 17.790110, 18.711340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.362013, 17.319263, 18.221521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976948, 17.242138, 18.297529>,  <17.745909, 17.195862, 18.343134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.976948, 17.242138, 18.297529>,  <18.362013, 17.319263, 18.221521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.976948, 17.242138, 18.297529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173943, -0.097295, -0.979937,
		0.207435, -0.976399, 0.060124,
		-0.962660, -0.192815, 0.190020,
		17.688150, 17.184294, 18.354536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.266163, 16.777775, 17.822407>,  <18.362013, 17.319263, 18.221521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.266163, 16.777775, 17.822407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908394, 16.928066, 17.919436>,  <17.693733, 17.018240, 17.977652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.908394, 16.928066, 17.919436>,  <18.266163, 16.777775, 17.822407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.908394, 16.928066, 17.919436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304883, -0.115445, -0.945367,
		-0.327199, -0.919511, 0.217810,
		-0.894420, 0.375729, 0.242569,
		17.640068, 17.040785, 17.992207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.796097, 16.313623, 17.551525>,  <18.266163, 16.777775, 17.822407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.796097, 16.313623, 17.551525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623283, 16.674236, 17.561220>,  <17.519594, 16.890604, 17.567038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.623283, 16.674236, 17.561220>,  <17.796097, 16.313623, 17.551525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623283, 16.674236, 17.561220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367234, -0.151312, -0.917739,
		-0.823702, -0.405397, 0.396444,
		-0.432035, 0.901531, 0.024240,
		17.493673, 16.944696, 17.568493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.225588, 16.205145, 17.112736>,  <17.796097, 16.313623, 17.551525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.225588, 16.205145, 17.112736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275593, 16.601479, 17.133211>,  <17.305595, 16.839279, 17.145496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.275593, 16.601479, 17.133211>,  <17.225588, 16.205145, 17.112736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.275593, 16.601479, 17.133211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386449, 0.096146, -0.917285,
		-0.913799, 0.094893, 0.394927,
		0.125014, 0.990833, 0.051187,
		17.313097, 16.898729, 17.148567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.699121, 16.463215, 16.649948>,  <17.225588, 16.205145, 17.112736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.699121, 16.463215, 16.649948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922115, 16.793518, 16.684210>,  <17.055912, 16.991699, 16.704767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.922115, 16.793518, 16.684210>,  <16.699121, 16.463215, 16.649948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.922115, 16.793518, 16.684210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218314, 0.245364, -0.944529,
		-0.800968, 0.507861, 0.317061,
		0.557485, 0.825756, 0.085655,
		17.089361, 17.041245, 16.709906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303747, 17.100712, 16.443218>,  <16.699121, 16.463215, 16.649948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303747, 17.100712, 16.443218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686848, 17.206863, 16.398882>,  <16.916708, 17.270554, 16.372280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.686848, 17.206863, 16.398882>,  <16.303747, 17.100712, 16.443218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.686848, 17.206863, 16.398882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196822, 0.323812, -0.925423,
		-0.209697, 0.908141, 0.362363,
		0.957752, 0.265379, -0.110840,
		16.974173, 17.286478, 16.365629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244997, 17.731234, 16.130205>,  <16.303747, 17.100712, 16.443218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244997, 17.731234, 16.130205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623737, 17.625111, 16.057446>,  <16.850981, 17.561438, 16.013790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.623737, 17.625111, 16.057446>,  <16.244997, 17.731234, 16.130205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.623737, 17.625111, 16.057446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089500, 0.325873, -0.941168,
		0.308973, 0.907425, 0.284808,
		0.946850, -0.265305, -0.181901,
		16.907793, 17.545519, 16.002874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.590118, 18.294117, 15.857373>,  <16.244997, 17.731234, 16.130205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.590118, 18.294117, 15.857373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799709, 17.971691, 15.747310>,  <16.925463, 17.778236, 15.681272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.799709, 17.971691, 15.747310>,  <16.590118, 18.294117, 15.857373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.799709, 17.971691, 15.747310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060592, 0.286962, -0.956024,
		0.849575, 0.517606, 0.101520,
		0.523976, -0.806062, -0.275158,
		16.956902, 17.729872, 15.664762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.157146, 18.495996, 15.529232>,  <16.590118, 18.294117, 15.857373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.157146, 18.495996, 15.529232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.140106, 18.125313, 15.379888>,  <17.129883, 17.902903, 15.290281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.140106, 18.125313, 15.379888>,  <17.157146, 18.495996, 15.529232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.140106, 18.125313, 15.379888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089106, 0.375736, -0.922433,
		0.995111, -0.006028, -0.098581,
		-0.042601, -0.926707, -0.373361,
		17.127325, 17.847301, 15.267879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.533304, 18.508789, 14.917801>,  <17.157146, 18.495996, 15.529232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.533304, 18.508789, 14.917801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.328945, 18.166550, 14.884488>,  <17.206329, 17.961206, 14.864501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.328945, 18.166550, 14.884488>,  <17.533304, 18.508789, 14.917801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.328945, 18.166550, 14.884488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048420, 0.125366, -0.990928,
		0.858277, -0.502230, -0.105477,
		-0.510897, -0.855599, -0.083281,
		17.175676, 17.909870, 14.859504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966810, 18.072754, 14.436498>,  <17.533304, 18.508789, 14.917801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966810, 18.072754, 14.436498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592003, 17.933155, 14.430865>,  <17.367119, 17.849396, 14.427486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.592003, 17.933155, 14.430865>,  <17.966810, 18.072754, 14.436498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592003, 17.933155, 14.430865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007644, 0.060791, -0.998121,
		0.349199, -0.935149, -0.059630,
		-0.937017, -0.348999, -0.014080,
		17.310898, 17.828455, 14.426641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.842978, 17.647432, 13.751832>,  <17.966810, 18.072754, 14.436498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.842978, 17.647432, 13.751832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459332, 17.678066, 13.860818>,  <17.229145, 17.696445, 13.926209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.459332, 17.678066, 13.860818>,  <17.842978, 17.647432, 13.751832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.459332, 17.678066, 13.860818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272688, 0.007729, -0.962072,
		-0.075788, -0.997033, 0.013471,
		-0.959113, 0.076587, 0.272464,
		17.171598, 17.701040, 13.942557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381788, 17.163061, 13.378391>,  <17.842978, 17.647432, 13.751832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381788, 17.163061, 13.378391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147095, 17.465748, 13.493716>,  <17.006279, 17.647360, 13.562911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.147095, 17.465748, 13.493716>,  <17.381788, 17.163061, 13.378391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.147095, 17.465748, 13.493716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441136, -0.000113, -0.897440,
		-0.679075, -0.653743, 0.333882,
		-0.586733, 0.756716, 0.288313,
		16.971075, 17.692762, 13.580210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.688665, 16.989103, 13.116649>,  <17.381788, 17.163061, 13.378391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.688665, 16.989103, 13.116649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.651131, 17.375988, 13.211050>,  <16.628611, 17.608118, 13.267691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.651131, 17.375988, 13.211050>,  <16.688665, 16.989103, 13.116649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651131, 17.375988, 13.211050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203429, 0.213420, -0.955546,
		-0.974582, -0.137676, 0.176732,
		-0.093837, 0.967211, 0.236002,
		16.622980, 17.666151, 13.281851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.017677, 17.199789, 12.975009>,  <16.688665, 16.989103, 13.116649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.017677, 17.199789, 12.975009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276966, 17.502689, 12.943049>,  <16.432539, 17.684429, 12.923874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.276966, 17.502689, 12.943049>,  <16.017677, 17.199789, 12.975009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.276966, 17.502689, 12.943049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241423, 0.104872, -0.964737,
		-0.722167, 0.644651, 0.250798,
		0.648220, 0.757249, -0.079899,
		16.471432, 17.729864, 12.919080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.698446, 17.704250, 12.555499>,  <16.017677, 17.199789, 12.975009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.698446, 17.704250, 12.555499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071781, 17.847851, 12.555745>,  <16.295782, 17.934011, 12.555893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.071781, 17.847851, 12.555745>,  <15.698446, 17.704250, 12.555499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.071781, 17.847851, 12.555745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131056, 0.342311, -0.930402,
		-0.334227, 0.868297, 0.366541,
		0.933336, 0.359002, 0.000614,
		16.351782, 17.955551, 12.555929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.619086, 18.269554, 12.121412>,  <15.698446, 17.704250, 12.555499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.619086, 18.269554, 12.121412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.015911, 18.221619, 12.136658>,  <16.254005, 18.192858, 12.145805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.015911, 18.221619, 12.136658>,  <15.619086, 18.269554, 12.121412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.015911, 18.221619, 12.136658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040785, 0.019911, -0.998969,
		0.118954, 0.992594, 0.024641,
		0.992062, -0.119836, 0.038115,
		16.313530, 18.185667, 12.148092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.853878, 18.719410, 11.687960>,  <15.619086, 18.269554, 12.121412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.853878, 18.719410, 11.687960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.153862, 18.458691, 11.733068>,  <16.333853, 18.302259, 11.760133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.153862, 18.458691, 11.733068>,  <15.853878, 18.719410, 11.687960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.153862, 18.458691, 11.733068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002042, -0.168199, -0.985751,
		0.661480, 0.739504, -0.124812,
		0.749960, -0.651800, 0.112770,
		16.378849, 18.263151, 11.766898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.229069, 18.788359, 11.063548>,  <15.853878, 18.719410, 11.687960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.229069, 18.788359, 11.063548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300201, 18.426220, 11.217807>,  <16.342882, 18.208937, 11.310362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.300201, 18.426220, 11.217807>,  <16.229069, 18.788359, 11.063548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.300201, 18.426220, 11.217807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127623, -0.409803, -0.903202,
		0.975750, 0.111402, -0.188419,
		0.177833, -0.905346, 0.385648,
		16.353552, 18.154615, 11.333501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.625725, 18.533337, 10.559008>,  <16.229069, 18.788359, 11.063548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.625725, 18.533337, 10.559008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508953, 18.198158, 10.743450>,  <16.438890, 17.997051, 10.854115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.508953, 18.198158, 10.743450>,  <16.625725, 18.533337, 10.559008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.508953, 18.198158, 10.743450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021608, -0.476206, -0.879068,
		0.956195, -0.266591, 0.120913,
		-0.291931, -0.837948, 0.461107,
		16.421373, 17.946774, 10.881783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.111658, 17.944487, 10.283031>,  <16.625725, 18.533337, 10.559008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.111658, 17.944487, 10.283031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794159, 17.748192, 10.426777>,  <16.603659, 17.630415, 10.513024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794159, 17.748192, 10.426777>,  <17.111658, 17.944487, 10.283031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794159, 17.748192, 10.426777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084012, -0.673610, -0.734297,
		0.602418, -0.552655, 0.575904,
		-0.793747, -0.490736, 0.359365,
		16.556034, 17.600971, 10.534587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.289576, 17.247972, 10.243505>,  <17.111658, 17.944487, 10.283031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.289576, 17.247972, 10.243505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891552, 17.277813, 10.269706>,  <16.652737, 17.295717, 10.285426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.891552, 17.277813, 10.269706>,  <17.289576, 17.247972, 10.243505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891552, 17.277813, 10.269706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098149, -0.640101, -0.761996,
		-0.014917, -0.764660, 0.644261,
		-0.995060, 0.074600, 0.065503,
		16.593035, 17.300194, 10.289356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967205, 16.551487, 10.252305>,  <17.289576, 17.247972, 10.243505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967205, 16.551487, 10.252305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670277, 16.787739, 10.125739>,  <16.492119, 16.929489, 10.049799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.670277, 16.787739, 10.125739>,  <16.967205, 16.551487, 10.252305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.670277, 16.787739, 10.125739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088478, -0.554499, -0.827467,
		-0.664178, -0.586250, 0.463873,
		-0.742320, 0.590628, -0.316416,
		16.447580, 16.964928, 10.030814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.499876, 16.155966, 9.908766>,  <16.967205, 16.551487, 10.252305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.499876, 16.155966, 9.908766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416107, 16.523872, 9.775995>,  <16.365847, 16.744616, 9.696333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.416107, 16.523872, 9.775995>,  <16.499876, 16.155966, 9.908766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.416107, 16.523872, 9.775995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018130, -0.335742, -0.941779,
		-0.977658, -0.203245, 0.053636,
		-0.209420, 0.919765, -0.331925,
		16.353281, 16.799803, 9.676417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.053373, 16.055857, 9.364676>,  <16.499876, 16.155966, 9.908766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.053373, 16.055857, 9.364676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200497, 16.423584, 9.308713>,  <16.288771, 16.644220, 9.275135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.200497, 16.423584, 9.308713>,  <16.053373, 16.055857, 9.364676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.200497, 16.423584, 9.308713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056504, -0.128080, -0.990153,
		-0.928184, 0.372091, 0.004836,
		0.367808, 0.919317, -0.139906,
		16.310839, 16.699379, 9.266741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.707138, 16.245857, 8.710055>,  <16.053373, 16.055857, 9.364676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.707138, 16.245857, 8.710055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003830, 16.509724, 8.758516>,  <16.181845, 16.668043, 8.787593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.003830, 16.509724, 8.758516>,  <15.707138, 16.245857, 8.710055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.003830, 16.509724, 8.758516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131119, 0.034530, -0.990765,
		-0.657758, 0.750765, -0.060883,
		0.741729, 0.659667, 0.121152,
		16.226349, 16.707624, 8.794862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.495508, 16.814754, 8.336078>,  <15.707138, 16.245857, 8.710055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.495508, 16.814754, 8.336078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888555, 16.883205, 8.364876>,  <16.124382, 16.924276, 8.382154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.888555, 16.883205, 8.364876>,  <15.495508, 16.814754, 8.336078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.888555, 16.883205, 8.364876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104460, -0.189030, -0.976399,
		-0.153480, 0.966945, -0.203620,
		0.982615, 0.171128, 0.071994,
		16.183338, 16.934544, 8.386474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.680948, 17.375536, 7.864599>,  <15.495508, 16.814754, 8.336078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.680948, 17.375536, 7.864599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013062, 17.158943, 7.917403>,  <16.212330, 17.028988, 7.949086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.013062, 17.158943, 7.917403>,  <15.680948, 17.375536, 7.864599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.013062, 17.158943, 7.917403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037288, -0.290294, -0.956211,
		0.556093, 0.789003, -0.261217,
		0.830283, -0.541482, 0.132010,
		16.262146, 16.996498, 7.957006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.118317, 17.441658, 7.348949>,  <15.680948, 17.375536, 7.864599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.118317, 17.441658, 7.348949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219715, 17.076771, 7.477695>,  <16.280554, 16.857838, 7.554944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219715, 17.076771, 7.477695>,  <16.118317, 17.441658, 7.348949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219715, 17.076771, 7.477695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075729, -0.350428, -0.933523,
		0.964367, 0.212272, -0.157914,
		0.253498, -0.912218, 0.321866,
		16.295765, 16.803106, 7.574255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.567778, 17.085073, 6.856033>,  <16.118317, 17.441658, 7.348949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.567778, 17.085073, 6.856033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330898, 16.839241, 7.064490>,  <16.188770, 16.691742, 7.189565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.330898, 16.839241, 7.064490>,  <16.567778, 17.085073, 6.856033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330898, 16.839241, 7.064490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273941, -0.454673, -0.847484,
		0.757798, -0.644641, 0.100898,
		-0.592198, -0.614582, 0.521144,
		16.153238, 16.654867, 7.220833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743567, 16.377590, 6.633569>,  <16.567778, 17.085073, 6.856033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743567, 16.377590, 6.633569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366978, 16.429432, 6.758043>,  <16.141026, 16.460537, 6.832728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.366978, 16.429432, 6.758043>,  <16.743567, 16.377590, 6.633569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.366978, 16.429432, 6.758043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336539, -0.414455, -0.845558,
		0.019383, -0.900793, 0.433815,
		-0.941470, 0.129606, 0.311186,
		16.084538, 16.468313, 6.851399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.351768, 15.765644, 6.795234>,  <16.743567, 16.377590, 6.633569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.351768, 15.765644, 6.795234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165588, 16.082619, 6.637551>,  <16.053881, 16.272804, 6.542942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.165588, 16.082619, 6.637551>,  <16.351768, 15.765644, 6.795234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.165588, 16.082619, 6.637551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224827, -0.536644, -0.813306,
		-0.856042, -0.289926, 0.427942,
		-0.465451, 0.792437, -0.394207,
		16.025953, 16.320351, 6.519289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.869347, 15.368636, 6.507855>,  <16.351768, 15.765644, 6.795234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.869347, 15.368636, 6.507855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877431, 15.709515, 6.298722>,  <15.882281, 15.914042, 6.173242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.877431, 15.709515, 6.298722>,  <15.869347, 15.368636, 6.507855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.877431, 15.709515, 6.298722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006142, -0.522824, -0.852418,
		-0.999777, 0.020440, -0.005333,
		0.020212, 0.852195, -0.522833,
		15.883494, 15.965174, 6.141872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.250711, 15.536951, 6.053322>,  <15.869347, 15.368636, 6.507855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.250711, 15.536951, 6.053322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604831, 15.678543, 5.932695>,  <15.817303, 15.763498, 5.860319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.604831, 15.678543, 5.932695>,  <15.250711, 15.536951, 6.053322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.604831, 15.678543, 5.932695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124918, -0.443636, -0.887458,
		-0.447929, 0.823338, -0.348532,
		0.885299, 0.353981, -0.301568,
		15.870420, 15.784738, 5.842225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.075811, 15.959586, 5.385925>,  <15.250711, 15.536951, 6.053322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.075811, 15.959586, 5.385925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453294, 15.836483, 5.434432>,  <15.679783, 15.762621, 5.463536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.453294, 15.836483, 5.434432>,  <15.075811, 15.959586, 5.385925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.453294, 15.836483, 5.434432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011878, -0.334841, -0.942200,
		0.330574, 0.890599, -0.312336,
		0.943705, -0.307757, 0.121269,
		15.736405, 15.744156, 5.470813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.372575, 15.963361, 4.746294>,  <15.075811, 15.959586, 5.385925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.372575, 15.963361, 4.746294> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608491, 15.726749, 4.966200>,  <15.750041, 15.584783, 5.098143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.608491, 15.726749, 4.966200>,  <15.372575, 15.963361, 4.746294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.608491, 15.726749, 4.966200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155214, -0.585048, -0.796007,
		0.792500, 0.554809, -0.253243,
		0.589791, -0.591529, 0.549764,
		15.785428, 15.549291, 5.131129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.921540, 15.822417, 4.355485>,  <15.372575, 15.963361, 4.746294>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.921540, 15.822417, 4.355485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919105, 15.526443, 4.624545>,  <15.917644, 15.348859, 4.785981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.919105, 15.526443, 4.624545>,  <15.921540, 15.822417, 4.355485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.919105, 15.526443, 4.624545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149840, -0.665744, -0.730981,
		0.988692, 0.096339, 0.114925,
		-0.006089, -0.739935, 0.672651,
		15.917278, 15.304463, 4.826340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.598322, 15.377477, 4.341037>,  <15.921540, 15.822417, 4.355485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.598322, 15.377477, 4.341037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270477, 15.185860, 4.466737>,  <16.073771, 15.070889, 4.542157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.270477, 15.185860, 4.466737>,  <16.598322, 15.377477, 4.341037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.270477, 15.185860, 4.466737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220234, -0.769801, -0.599085,
		0.528897, -0.421809, 0.736440,
		-0.819613, -0.479043, 0.314249,
		16.024593, 15.042147, 4.561011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.653389, 14.640626, 4.639680>,  <16.598322, 15.377477, 4.341037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.653389, 14.640626, 4.639680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323273, 14.727688, 4.431251>,  <16.125202, 14.779925, 4.306193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.323273, 14.727688, 4.431251>,  <16.653389, 14.640626, 4.639680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.323273, 14.727688, 4.431251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302158, -0.609331, -0.733087,
		-0.477066, -0.762458, 0.437111,
		-0.825293, 0.217654, -0.521074,
		16.075686, 14.792984, 4.274928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.464378, 13.983179, 4.315827>,  <16.653389, 14.640626, 4.639680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.464378, 13.983179, 4.315827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298248, 14.278755, 4.103610>,  <16.198570, 14.456100, 3.976280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.298248, 14.278755, 4.103610>,  <16.464378, 13.983179, 4.315827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298248, 14.278755, 4.103610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101269, -0.542039, -0.834229,
		-0.904019, -0.400203, 0.150290,
		-0.415324, 0.738940, -0.530542,
		16.173651, 14.500437, 3.944448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855485, 13.786593, 3.917486>,  <16.464378, 13.983179, 4.315827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.855485, 13.786593, 3.917486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.062340, 14.077480, 3.736942>,  <16.186453, 14.252012, 3.628616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.062340, 14.077480, 3.736942>,  <15.855485, 13.786593, 3.917486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.062340, 14.077480, 3.736942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076983, -0.564731, -0.821676,
		-0.852433, 0.390172, -0.348027,
		0.517137, 0.727217, -0.451359,
		16.217482, 14.295646, 3.601534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.494975, 14.068933, 3.394642>,  <15.855485, 13.786593, 3.917486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.494975, 14.068933, 3.394642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886865, 14.106430, 3.323814>,  <16.121998, 14.128928, 3.281317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.886865, 14.106430, 3.323814>,  <15.494975, 14.068933, 3.394642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.886865, 14.106430, 3.323814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117340, -0.447893, -0.886354,
		-0.162398, 0.889159, -0.427811,
		0.979724, 0.093743, -0.177071,
		16.180782, 14.134553, 3.270693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.637387, 14.376418, 2.759449>,  <15.494975, 14.068933, 3.394642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.637387, 14.376418, 2.759449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915002, 14.106312, 2.859313>,  <16.081570, 13.944248, 2.919232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.915002, 14.106312, 2.859313>,  <15.637387, 14.376418, 2.759449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915002, 14.106312, 2.859313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269560, -0.565289, -0.779606,
		0.667572, 0.473776, -0.574355,
		0.694036, -0.675267, 0.249660,
		16.123213, 13.903732, 2.934211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.003956, 14.234420, 2.203938>,  <15.637387, 14.376418, 2.759449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.003956, 14.234420, 2.203938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007973, 13.915218, 2.444965>,  <16.010384, 13.723698, 2.589581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.007973, 13.915218, 2.444965>,  <16.003956, 14.234420, 2.203938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.007973, 13.915218, 2.444965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328940, -0.571697, -0.751639,
		0.944298, -0.190661, -0.268236,
		0.010042, -0.798005, 0.602568,
		16.010984, 13.675817, 2.625735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.028545, 15.001666, 1.991937>,  <16.003956, 14.234420, 2.203938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.028545, 15.001666, 1.991937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280125, 14.898708, 1.698497>,  <16.431072, 14.836933, 1.522433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.280125, 14.898708, 1.698497>,  <16.028545, 15.001666, 1.991937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.280125, 14.898708, 1.698497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123707, 0.898447, -0.421294,
		0.767540, 0.355725, 0.533237,
		0.628951, -0.257395, -0.733600,
		16.468809, 14.821489, 1.478417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.532373, 15.451982, 2.073161>,  <16.028545, 15.001666, 1.991937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.532373, 15.451982, 2.073161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497578, 15.321297, 1.696717>,  <16.476700, 15.242886, 1.470850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.497578, 15.321297, 1.696717>,  <16.532373, 15.451982, 2.073161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.497578, 15.321297, 1.696717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315865, 0.904996, -0.284977,
		0.944808, 0.272474, -0.181923,
		-0.086991, -0.326712, -0.941113,
		16.471481, 15.223284, 1.414383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.963219, 15.897398, 1.641135>,  <16.532373, 15.451982, 2.073161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.963219, 15.897398, 1.641135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650780, 15.730217, 1.455577>,  <16.463316, 15.629909, 1.344242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.650780, 15.730217, 1.455577>,  <16.963219, 15.897398, 1.641135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.650780, 15.730217, 1.455577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351835, 0.908371, -0.225996,
		0.515845, -0.013311, -0.856579,
		-0.781099, -0.417953, -0.463895,
		16.416451, 15.604831, 1.316408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.751226, 16.360859, 1.033363>,  <16.963219, 15.897398, 1.641135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.751226, 16.360859, 1.033363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434174, 16.170780, 1.186161>,  <16.243942, 16.056732, 1.277840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434174, 16.170780, 1.186161>,  <16.751226, 16.360859, 1.033363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434174, 16.170780, 1.186161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570476, 0.799125, -0.189622,
		-0.215155, -0.368220, -0.904501,
		-0.792632, -0.475198, 0.381996,
		16.196384, 16.028221, 1.300760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.355183, 16.093765, 0.591886>,  <16.751226, 16.360859, 1.033363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.355183, 16.093765, 0.591886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101006, 16.206799, 0.879318>,  <15.948499, 16.274618, 1.051777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.101006, 16.206799, 0.879318>,  <16.355183, 16.093765, 0.591886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.101006, 16.206799, 0.879318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439708, 0.632561, -0.637592,
		-0.634719, -0.721119, -0.277703,
		-0.635444, 0.282583, 0.718580,
		15.910373, 16.291574, 1.094892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.728504, 15.911416, 0.311586>,  <16.355183, 16.093765, 0.591886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.728504, 15.911416, 0.311586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653510, 16.188702, 0.589953>,  <15.608514, 16.355074, 0.756973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.653510, 16.188702, 0.589953>,  <15.728504, 15.911416, 0.311586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.653510, 16.188702, 0.589953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561049, 0.505966, -0.655151,
		-0.806271, -0.513276, 0.294065,
		-0.187486, 0.693215, 0.695918,
		15.597264, 16.396666, 0.798728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.875060, 15.930672, 0.540451>,  <15.728504, 15.911416, 0.311586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.875060, 15.930672, 0.540451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075416, 16.276348, 0.559565>,  <15.195629, 16.483755, 0.571033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.075416, 16.276348, 0.559565>,  <14.875060, 15.930672, 0.540451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.075416, 16.276348, 0.559565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567148, 0.369422, -0.736119,
		-0.653800, 0.341613, 0.675164,
		0.500888, 0.864192, 0.047783,
		15.225682, 16.535606, 0.573900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.432024, 16.487797, 0.712708>,  <14.875060, 15.930672, 0.540451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.432024, 16.487797, 0.712708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.743337, 16.637913, 0.511340>,  <14.930124, 16.727982, 0.390519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.743337, 16.637913, 0.511340>,  <14.432024, 16.487797, 0.712708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.743337, 16.637913, 0.511340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625145, 0.538322, -0.565158,
		0.058905, 0.754564, 0.653578,
		0.778283, 0.375290, -0.503421,
		14.976822, 16.750500, 0.360313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.329567, 17.242882, 0.446684>,  <14.432024, 16.487797, 0.712708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.329567, 17.242882, 0.446684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174611, 17.444508, 0.755448>,  <14.081637, 17.565483, 0.940707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.174611, 17.444508, 0.755448>,  <14.329567, 17.242882, 0.446684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.174611, 17.444508, 0.755448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253483, 0.863257, -0.436502,
		-0.886384, 0.026570, -0.462188,
		-0.387390, 0.504065, 0.771912,
		14.058394, 17.595728, 0.987022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.867159, 17.662987, 0.169674>,  <14.329567, 17.242882, 0.446684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.867159, 17.662987, 0.169674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961701, 17.849396, 0.510722>,  <14.018427, 17.961241, 0.715350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.961701, 17.849396, 0.510722>,  <13.867159, 17.662987, 0.169674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961701, 17.849396, 0.510722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066609, 0.867646, -0.492701,
		-0.969381, 0.173245, 0.174033,
		0.236357, 0.466023, 0.852618,
		14.032608, 17.989202, 0.766507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.330312, 18.231930, 0.272126>,  <13.867159, 17.662987, 0.169674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.330312, 18.231930, 0.272126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690949, 18.302902, 0.429935>,  <13.907331, 18.345486, 0.524620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.690949, 18.302902, 0.429935>,  <13.330312, 18.231930, 0.272126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.690949, 18.302902, 0.429935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182284, 0.671256, -0.718462,
		-0.392303, 0.719675, 0.572857,
		0.901593, 0.177432, 0.394521,
		13.961428, 18.356133, 0.548291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.460910, 18.989334, 0.171067>,  <13.330312, 18.231930, 0.272126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.460910, 18.989334, 0.171067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816077, 18.806053, 0.187340>,  <14.029178, 18.696085, 0.197104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.816077, 18.806053, 0.187340>,  <13.460910, 18.989334, 0.171067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.816077, 18.806053, 0.187340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313649, 0.538354, -0.782176,
		0.336491, 0.707267, 0.621728,
		0.887918, -0.458200, 0.040682,
		14.082453, 18.668592, 0.199545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.008306, 19.289083, 0.518634>,  <13.460910, 18.989334, 0.171067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.008306, 19.289083, 0.518634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078353, 19.073135, 0.189302>,  <14.120381, 18.943567, -0.008298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.078353, 19.073135, 0.189302>,  <14.008306, 19.289083, 0.518634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.078353, 19.073135, 0.189302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052214, 0.840169, -0.539806,
		0.983162, 0.051541, 0.175318,
		0.175119, -0.539871, -0.823331,
		14.130889, 18.911175, -0.057697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.342674, 19.655771, -0.038476>,  <14.008306, 19.289083, 0.518634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.342674, 19.655771, -0.038476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190160, 19.409077, -0.313941>,  <14.098651, 19.261061, -0.479220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.190160, 19.409077, -0.313941>,  <14.342674, 19.655771, -0.038476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.190160, 19.409077, -0.313941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138347, 0.698482, -0.702128,
		0.914046, -0.362986, -0.180998,
		-0.381286, -0.616737, -0.688663,
		14.075774, 19.224056, -0.520540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.793914, 19.435282, -0.503446>,  <14.342674, 19.655771, -0.038476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.793914, 19.435282, -0.503446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447652, 19.430187, -0.703638>,  <14.239895, 19.427132, -0.823753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.447652, 19.430187, -0.703638>,  <14.793914, 19.435282, -0.503446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.447652, 19.430187, -0.703638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445475, 0.436593, -0.781626,
		0.228459, -0.899569, -0.372266,
		-0.865655, -0.012735, -0.500479,
		14.187956, 19.426367, -0.853781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.865429, 18.964975, -0.957401>,  <14.793914, 19.435282, -0.503446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.865429, 18.964975, -0.957401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626298, 19.269688, -1.057235>,  <14.482820, 19.452515, -1.117136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.626298, 19.269688, -1.057235>,  <14.865429, 18.964975, -0.957401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.626298, 19.269688, -1.057235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655395, 0.285202, -0.699370,
		-0.461583, -0.581681, -0.669768,
		-0.597829, 0.761779, -0.249587,
		14.446949, 19.498222, -1.132111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.657661, 18.908241, -1.664923>,  <14.865429, 18.964975, -0.957401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.657661, 18.908241, -1.664923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666013, 19.291237, -1.549839>,  <14.671023, 19.521034, -1.480789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.666013, 19.291237, -1.549839>,  <14.657661, 18.908241, -1.664923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.666013, 19.291237, -1.549839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668384, 0.200644, -0.716243,
		-0.743523, 0.207253, -0.635782,
		0.020878, 0.957491, 0.287709,
		14.672276, 19.578484, -1.463527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525375, 19.549707, -2.156796>,  <14.657661, 18.908241, -1.664923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525375, 19.549707, -2.156796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.777337, 19.693840, -1.881585>,  <14.928514, 19.780319, -1.716459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.777337, 19.693840, -1.881585>,  <14.525375, 19.549707, -2.156796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.777337, 19.693840, -1.881585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640627, 0.259796, -0.722567,
		-0.439111, 0.895917, -0.067193,
		0.629903, 0.360333, 0.688028,
		14.966308, 19.801939, -1.675177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.675092, 20.252701, -2.280826>,  <14.525375, 19.549707, -2.156796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.675092, 20.252701, -2.280826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993674, 20.085339, -2.106198>,  <15.184824, 19.984921, -2.001421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.993674, 20.085339, -2.106198>,  <14.675092, 20.252701, -2.280826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.993674, 20.085339, -2.106198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575723, 0.303891, -0.759074,
		0.184931, 0.855913, 0.482922,
		0.796457, -0.418405, 0.436570,
		15.232612, 19.959818, -1.975227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<21.584808, 16.861235, 16.537758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.805286, 17.194157, 16.561255>,  <21.937572, 17.393909, 16.575354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.805286, 17.194157, 16.561255>,  <21.584808, 16.861235, 16.537758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805286, 17.194157, 16.561255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131521, 0.156191, -0.978931,
		-0.823946, 0.531855, 0.195558,
		0.551194, 0.832307, 0.058742,
		21.970644, 17.443850, 16.578876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.185812, 17.301468, 16.245407>,  <21.584808, 16.861235, 16.537758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.185812, 17.301468, 16.245407> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.556175, 17.452343, 16.237207>,  <21.778393, 17.542868, 16.232288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.556175, 17.452343, 16.237207>,  <21.185812, 17.301468, 16.245407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.556175, 17.452343, 16.237207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105022, 0.204919, -0.973128,
		-0.362851, 0.903182, 0.229349,
		0.925910, 0.377187, -0.020499,
		21.833948, 17.565498, 16.231058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.104185, 18.025553, 16.096331>,  <21.185812, 17.301468, 16.245407>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.104185, 18.025553, 16.096331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.465221, 17.905045, 15.973327>,  <21.681843, 17.832739, 15.899525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.465221, 17.905045, 15.973327>,  <21.104185, 18.025553, 16.096331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.465221, 17.905045, 15.973327> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191640, 0.358439, -0.913671,
		0.385486, 0.883604, 0.265789,
		0.902593, -0.301272, -0.307508,
		21.736000, 17.814663, 15.881074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.306202, 18.512012, 15.630805>,  <21.104185, 18.025553, 16.096331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.306202, 18.512012, 15.630805> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.584385, 18.243938, 15.527120>,  <21.751295, 18.083094, 15.464909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.584385, 18.243938, 15.527120>,  <21.306202, 18.512012, 15.630805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584385, 18.243938, 15.527120> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025864, 0.383850, -0.923033,
		0.718100, 0.635227, 0.284285,
		0.695459, -0.670183, -0.259213,
		21.793022, 18.042883, 15.449355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.823320, 18.831581, 15.229718>,  <21.306202, 18.512012, 15.630805>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.823320, 18.831581, 15.229718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.868637, 18.445541, 15.135278>,  <21.895828, 18.213917, 15.078613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.868637, 18.445541, 15.135278>,  <21.823320, 18.831581, 15.229718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.868637, 18.445541, 15.135278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023023, 0.240118, -0.970471,
		0.993295, 0.104513, 0.049423,
		0.113294, -0.965101, -0.236102,
		21.902626, 18.156012, 15.064447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.264977, 18.852959, 14.607124>,  <21.823320, 18.831581, 15.229718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.264977, 18.852959, 14.607124> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.093674, 18.491882, 14.590404>,  <21.990892, 18.275236, 14.580371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.093674, 18.491882, 14.590404>,  <22.264977, 18.852959, 14.607124>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.093674, 18.491882, 14.590404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026636, 0.058848, -0.997911,
		0.903264, -0.426250, -0.049246,
		-0.428258, -0.902689, -0.041802,
		21.965197, 18.221075, 14.577863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.558638, 18.523577, 13.907758>,  <22.264977, 18.852959, 14.607124>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.558638, 18.523577, 13.907758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.241814, 18.309010, 14.024308>,  <22.051720, 18.180269, 14.094238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.241814, 18.309010, 14.024308>,  <22.558638, 18.523577, 13.907758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.241814, 18.309010, 14.024308> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388269, 0.074368, -0.918540,
		0.471052, -0.840670, -0.267178,
		-0.792059, -0.536417, 0.291375,
		22.004196, 18.148085, 14.111721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.482735, 17.991024, 13.408145>,  <22.558638, 18.523577, 13.907758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.482735, 17.991024, 13.408145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.111481, 18.023609, 13.553432>,  <21.888727, 18.043159, 13.640603>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.111481, 18.023609, 13.553432>,  <22.482735, 17.991024, 13.408145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.111481, 18.023609, 13.553432> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362085, 0.028774, -0.931701,
		-0.086353, -0.996261, 0.002791,
		-0.928137, 0.081466, 0.363215,
		21.833040, 18.048048, 13.662396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.039801, 17.611605, 12.977449>,  <22.482735, 17.991024, 13.408145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.039801, 17.611605, 12.977449> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.775414, 17.829678, 13.183710>,  <21.616781, 17.960522, 13.307467>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.775414, 17.829678, 13.183710>,  <22.039801, 17.611605, 12.977449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.775414, 17.829678, 13.183710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596449, 0.035316, -0.801873,
		-0.455378, -0.837573, 0.301831,
		-0.660968, 0.545182, 0.515652,
		21.577124, 17.993233, 13.338406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.467728, 17.253796, 12.921555>,  <22.039801, 17.611605, 12.977449>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.467728, 17.253796, 12.921555> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.323856, 17.617260, 13.006381>,  <21.237534, 17.835339, 13.057277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.323856, 17.617260, 13.006381>,  <21.467728, 17.253796, 12.921555>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.323856, 17.617260, 13.006381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725245, -0.129250, -0.676250,
		-0.587071, -0.397031, 0.705489,
		-0.359676, 0.908659, 0.212066,
		21.215954, 17.889858, 13.070001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688797, 17.150702, 12.890272>,  <21.467728, 17.253796, 12.921555>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688797, 17.150702, 12.890272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.747826, 17.546070, 12.876136>,  <20.783243, 17.783291, 12.867654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.747826, 17.546070, 12.876136>,  <20.688797, 17.150702, 12.890272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.747826, 17.546070, 12.876136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528549, 0.048610, -0.847510,
		-0.835978, 0.143746, 0.529602,
		0.147570, 0.988420, -0.035340,
		20.792097, 17.842596, 12.865534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.002636, 17.482449, 12.804086>,  <20.688797, 17.150702, 12.890272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.002636, 17.482449, 12.804086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.282127, 17.727955, 12.657080>,  <20.449823, 17.875259, 12.568876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.282127, 17.727955, 12.657080>,  <20.002636, 17.482449, 12.804086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282127, 17.727955, 12.657080> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489320, 0.035278, -0.871391,
		-0.521865, 0.788699, 0.324978,
		0.698729, 0.613767, -0.367515,
		20.491747, 17.912085, 12.546825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.678064, 18.104856, 12.515103>,  <20.002636, 17.482449, 12.804086>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.678064, 18.104856, 12.515103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.037800, 18.073292, 12.343074>,  <20.253641, 18.054352, 12.239857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.037800, 18.073292, 12.343074>,  <19.678064, 18.104856, 12.515103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.037800, 18.073292, 12.343074> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430384, 0.013893, -0.902539,
		0.077198, 0.996785, -0.021469,
		0.899338, -0.078914, -0.430073,
		20.307602, 18.049618, 12.214052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506454, 18.569515, 11.970592>,  <19.678064, 18.104856, 12.515103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506454, 18.569515, 11.970592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.838322, 18.359730, 11.894078>,  <20.037441, 18.233858, 11.848169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.838322, 18.359730, 11.894078>,  <19.506454, 18.569515, 11.970592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838322, 18.359730, 11.894078> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251708, -0.045593, -0.966729,
		0.498294, 0.850211, -0.169839,
		0.829666, -0.524465, -0.191286,
		20.087221, 18.202391, 11.836693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.834925, 18.859249, 11.367356>,  <19.506454, 18.569515, 11.970592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.834925, 18.859249, 11.367356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.015984, 18.503326, 11.390540>,  <20.124619, 18.289774, 11.404450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.015984, 18.503326, 11.390540>,  <19.834925, 18.859249, 11.367356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.015984, 18.503326, 11.390540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199511, -0.164414, -0.966004,
		0.869084, 0.425694, -0.251947,
		0.452646, -0.889805, 0.057959,
		20.151777, 18.236385, 11.407928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.347553, 18.829771, 10.830109>,  <19.834925, 18.859249, 11.367356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.347553, 18.829771, 10.830109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.300179, 18.442535, 10.918453>,  <20.271753, 18.210194, 10.971459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.300179, 18.442535, 10.918453>,  <20.347553, 18.829771, 10.830109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300179, 18.442535, 10.918453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040373, -0.226937, -0.973072,
		0.992140, -0.106332, 0.065963,
		-0.118438, -0.968087, 0.220861,
		20.264647, 18.152109, 10.984712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833654, 18.599079, 10.444523>,  <20.347553, 18.829771, 10.830109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833654, 18.599079, 10.444523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.579742, 18.300797, 10.525496>,  <20.427395, 18.121828, 10.574079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.579742, 18.300797, 10.525496>,  <20.833654, 18.599079, 10.444523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.579742, 18.300797, 10.525496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097586, -0.337253, -0.936343,
		0.766505, -0.574618, 0.286852,
		-0.634781, -0.745704, 0.202431,
		20.389309, 18.077085, 10.586225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.119305, 18.020823, 10.271646>,  <20.833654, 18.599079, 10.444523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.119305, 18.020823, 10.271646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.731564, 17.922657, 10.267114>,  <20.498919, 17.863758, 10.264394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.731564, 17.922657, 10.267114>,  <21.119305, 18.020823, 10.271646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731564, 17.922657, 10.267114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150984, -0.558709, -0.815505,
		0.193804, -0.792223, 0.578639,
		-0.969352, -0.245413, -0.011332,
		20.440758, 17.849033, 10.263714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.131113, 17.267778, 10.042446>,  <21.119305, 18.020823, 10.271646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.131113, 17.267778, 10.042446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.760986, 17.408207, 9.985126>,  <20.538910, 17.492464, 9.950735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.760986, 17.408207, 9.985126>,  <21.131113, 17.267778, 10.042446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760986, 17.408207, 9.985126> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080248, -0.550649, -0.830871,
		-0.370602, -0.757321, 0.537698,
		-0.925318, 0.351071, -0.143298,
		20.483391, 17.513529, 9.942137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737329, 16.651423, 9.976947>,  <21.131113, 17.267778, 10.042446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737329, 16.651423, 9.976947> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.533379, 16.946510, 9.799953>,  <20.411007, 17.123564, 9.693757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.533379, 16.946510, 9.799953>,  <20.737329, 16.651423, 9.976947>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.533379, 16.946510, 9.799953> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020053, -0.524421, -0.851223,
		-0.860013, -0.425146, 0.282184,
		-0.509878, 0.737722, -0.442483,
		20.380415, 17.167828, 9.667209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.365988, 16.281553, 9.589347>,  <20.737329, 16.651423, 9.976947>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.365988, 16.281553, 9.589347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.327168, 16.643810, 9.424232>,  <20.303875, 16.861164, 9.325163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.327168, 16.643810, 9.424232>,  <20.365988, 16.281553, 9.589347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.327168, 16.643810, 9.424232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124533, -0.422536, -0.897750,
		-0.987458, -0.035722, 0.153790,
		-0.097051, 0.905642, -0.412788,
		20.298052, 16.915503, 9.300395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.766100, 16.209415, 9.155553>,  <20.365988, 16.281553, 9.589347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.766100, 16.209415, 9.155553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.953655, 16.530151, 9.007390>,  <20.066189, 16.722593, 8.918492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.953655, 16.530151, 9.007390>,  <19.766100, 16.209415, 9.155553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.953655, 16.530151, 9.007390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247827, -0.283086, -0.926523,
		-0.847778, 0.526231, 0.065982,
		0.468886, 0.801837, -0.370408,
		20.094320, 16.770702, 8.896268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196997, 16.625267, 9.463136>,  <19.766100, 16.209415, 9.155553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196997, 16.625267, 9.463136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.851852, 16.451458, 9.359861>,  <18.644766, 16.347172, 9.297896>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.851852, 16.451458, 9.359861>,  <19.196997, 16.625267, 9.463136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.851852, 16.451458, 9.359861> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095378, -0.361658, 0.927419,
		-0.496360, 0.824859, 0.270617,
		-0.862862, -0.434523, -0.258186,
		18.592995, 16.321100, 9.282406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.605259, 16.823360, 9.882748>,  <19.196997, 16.625267, 9.463136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.605259, 16.823360, 9.882748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.508789, 16.467300, 9.728104>,  <18.450907, 16.253664, 9.635317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.508789, 16.467300, 9.728104>,  <18.605259, 16.823360, 9.882748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.508789, 16.467300, 9.728104> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230989, -0.334270, 0.913733,
		-0.942592, 0.309671, -0.124998,
		-0.241174, -0.890150, -0.386611,
		18.436438, 16.200254, 9.612121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.956827, 16.644405, 10.249885>,  <18.605259, 16.823360, 9.882748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.956827, 16.644405, 10.249885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158173, 16.322941, 10.122919>,  <18.278980, 16.130062, 10.046740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.158173, 16.322941, 10.122919>,  <17.956827, 16.644405, 10.249885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.158173, 16.322941, 10.122919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052411, -0.338271, 0.939588,
		-0.862483, -0.489592, -0.128154,
		0.503366, -0.803662, -0.317413,
		18.309183, 16.081842, 10.027696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.593763, 16.104431, 10.379977>,  <17.956827, 16.644405, 10.249885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.593763, 16.104431, 10.379977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.970737, 15.971535, 10.364819>,  <18.196922, 15.891797, 10.355723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.970737, 15.971535, 10.364819>,  <17.593763, 16.104431, 10.379977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970737, 15.971535, 10.364819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072528, -0.313719, 0.946742,
		-0.326451, -0.889487, -0.319756,
		0.942428, -0.332256, -0.037901,
		18.253468, 15.871862, 10.353450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.552134, 15.477908, 10.765249>,  <17.593763, 16.104431, 10.379977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.552134, 15.477908, 10.765249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.943050, 15.562035, 10.754942>,  <18.177601, 15.612511, 10.748757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.943050, 15.562035, 10.754942>,  <17.552134, 15.477908, 10.765249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.943050, 15.562035, 10.754942> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091241, -0.307948, 0.947018,
		0.191237, -0.927866, -0.320145,
		0.977294, 0.210316, -0.025769,
		18.236238, 15.625129, 10.747211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.761967, 14.976851, 11.182679>,  <17.552134, 15.477908, 10.765249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.761967, 14.976851, 11.182679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.059437, 15.240292, 11.136738>,  <18.237919, 15.398356, 11.109173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.059437, 15.240292, 11.136738>,  <17.761967, 14.976851, 11.182679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.059437, 15.240292, 11.136738> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169024, -0.019011, 0.985429,
		0.646822, -0.752251, -0.125457,
		0.743674, 0.658602, -0.114852,
		18.282539, 15.437872, 11.102283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.236717, 14.756977, 11.640742>,  <17.761967, 14.976851, 11.182679>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.236717, 14.756977, 11.640742> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316277, 15.143414, 11.574883>,  <18.364012, 15.375276, 11.535367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316277, 15.143414, 11.574883>,  <18.236717, 14.756977, 11.640742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316277, 15.143414, 11.574883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108001, 0.145376, 0.983464,
		0.974051, -0.213392, -0.075423,
		0.198898, 0.966090, -0.164650,
		18.375946, 15.433241, 11.525488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.719196, 14.809450, 12.091129>,  <18.236717, 14.756977, 11.640742>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.719196, 14.809450, 12.091129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.602318, 15.180111, 11.996525>,  <18.532190, 15.402507, 11.939762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.602318, 15.180111, 11.996525>,  <18.719196, 14.809450, 12.091129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.602318, 15.180111, 11.996525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009609, 0.250136, 0.968163,
		0.956309, 0.280623, -0.081994,
		-0.292199, 0.926651, -0.236510,
		18.514658, 15.458106, 11.925571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.262653, 15.083649, 12.399080>,  <18.719196, 14.809450, 12.091129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.262653, 15.083649, 12.399080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.950119, 15.332401, 12.378008>,  <18.762598, 15.481653, 12.365364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.950119, 15.332401, 12.378008>,  <19.262653, 15.083649, 12.399080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.950119, 15.332401, 12.378008> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049185, 0.145504, 0.988135,
		0.622168, 0.769475, -0.144275,
		-0.781337, 0.621882, -0.052682,
		18.715717, 15.518966, 12.362204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.388937, 15.677996, 12.808261>,  <19.262653, 15.083649, 12.399080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.388937, 15.677996, 12.808261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.997967, 15.756378, 12.776656>,  <18.763386, 15.803408, 12.757693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.997967, 15.756378, 12.776656>,  <19.388937, 15.677996, 12.808261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.997967, 15.756378, 12.776656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082104, -0.007692, 0.996594,
		0.194680, 0.980583, 0.023607,
		-0.977424, 0.195955, -0.079012,
		18.704739, 15.815165, 12.752953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.356041, 16.104805, 13.272614>,  <19.388937, 15.677996, 12.808261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.356041, 16.104805, 13.272614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.967232, 16.017101, 13.238920>,  <18.733946, 15.964479, 13.218703>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.967232, 16.017101, 13.238920>,  <19.356041, 16.104805, 13.272614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.967232, 16.017101, 13.238920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083186, -0.014031, 0.996435,
		-0.219658, 0.975566, -0.004601,
		-0.972024, -0.219258, -0.084236,
		18.675625, 15.951324, 13.213650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.915045, 16.682116, 13.727055>,  <19.356041, 16.104805, 13.272614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.915045, 16.682116, 13.727055> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.723362, 16.335270, 13.672687>,  <18.608353, 16.127163, 13.640066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.723362, 16.335270, 13.672687>,  <18.915045, 16.682116, 13.727055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.723362, 16.335270, 13.672687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107440, -0.095742, 0.989591,
		-0.871102, 0.488820, -0.047283,
		-0.479205, -0.867115, -0.135920,
		18.579601, 16.075136, 13.631910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405531, 16.862894, 14.123308>,  <18.915045, 16.682116, 13.727055>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405531, 16.862894, 14.123308> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.464119, 16.470779, 14.070271>,  <18.499271, 16.235510, 14.038449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.464119, 16.470779, 14.070271>,  <18.405531, 16.862894, 14.123308>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.464119, 16.470779, 14.070271> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017564, -0.136594, 0.990472,
		-0.989059, -0.142746, -0.037225,
		0.146471, -0.980289, -0.132593,
		18.508060, 16.176693, 14.030494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.970642, 16.541779, 14.617825>,  <18.405531, 16.862894, 14.123308>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.970642, 16.541779, 14.617825> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.247665, 16.266056, 14.532765>,  <18.413879, 16.100622, 14.481730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.247665, 16.266056, 14.532765>,  <17.970642, 16.541779, 14.617825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247665, 16.266056, 14.532765> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122151, -0.178468, 0.976334,
		-0.710944, -0.702144, -0.039400,
		0.692558, -0.689307, -0.212648,
		18.455433, 16.059263, 14.468971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800457, 15.986687, 15.047401>,  <17.970642, 16.541779, 14.617825>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800457, 15.986687, 15.047401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.181377, 15.937973, 14.935479>,  <18.409929, 15.908745, 14.868325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.181377, 15.937973, 14.935479>,  <17.800457, 15.986687, 15.047401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.181377, 15.937973, 14.935479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244873, -0.242189, 0.938819,
		-0.182098, -0.962555, -0.200816,
		0.952301, -0.121783, -0.279806,
		18.467068, 15.901438, 14.851538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.092379, 15.365632, 15.399596>,  <17.800457, 15.986687, 15.047401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.092379, 15.365632, 15.399596> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.410606, 15.575169, 15.277837>,  <18.601543, 15.700891, 15.204781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.410606, 15.575169, 15.277837>,  <18.092379, 15.365632, 15.399596>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410606, 15.575169, 15.277837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370528, -0.023168, 0.928532,
		0.479351, -0.851501, -0.212530,
		0.795570, 0.523842, -0.304400,
		18.649277, 15.732321, 15.186517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575874, 14.903861, 15.486275>,  <18.092379, 15.365632, 15.399596>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575874, 14.903861, 15.486275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.731300, 15.272339, 15.478084>,  <18.824556, 15.493425, 15.473169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.731300, 15.272339, 15.478084>,  <18.575874, 14.903861, 15.486275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.731300, 15.272339, 15.478084> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624467, -0.246933, 0.740989,
		0.677538, -0.300710, -0.671205,
		0.388566, 0.921194, -0.020477,
		18.847870, 15.548697, 15.471940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.334028, 14.895652, 15.559927>,  <18.575874, 14.903861, 15.486275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.334028, 14.895652, 15.559927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.255672, 15.278423, 15.645640>,  <19.208660, 15.508086, 15.697068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.255672, 15.278423, 15.645640>,  <19.334028, 14.895652, 15.559927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255672, 15.278423, 15.645640> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570286, -0.066599, 0.818742,
		0.797748, 0.282584, -0.532677,
		-0.195888, 0.956928, 0.214283,
		19.196907, 15.565501, 15.709926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<19.937447, 15.193037, 15.818033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664822, 15.460533, 15.936866>,  <19.501247, 15.621031, 16.008165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.664822, 15.460533, 15.936866>,  <19.937447, 15.193037, 15.818033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.664822, 15.460533, 15.936866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498621, 0.127277, 0.857425,
		0.535584, 0.732520, -0.420196,
		-0.681563, 0.668741, 0.297082,
		19.460352, 15.661156, 16.025990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261898, 15.783459, 15.952147>,  <19.937447, 15.193037, 15.818033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261898, 15.783459, 15.952147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.943943, 15.814201, 16.192894>,  <19.753170, 15.832647, 16.337343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.943943, 15.814201, 16.192894>,  <20.261898, 15.783459, 15.952147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.943943, 15.814201, 16.192894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602743, 0.213915, 0.768727,
		-0.069667, 0.973824, -0.216363,
		-0.794889, 0.076857, 0.601868,
		19.705477, 15.837258, 16.373455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.319201, 16.399591, 16.281778>,  <20.261898, 15.783459, 15.952147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.319201, 16.399591, 16.281778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.065395, 16.188026, 16.507217>,  <19.913113, 16.061087, 16.642481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.065395, 16.188026, 16.507217>,  <20.319201, 16.399591, 16.281778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.065395, 16.188026, 16.507217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387740, 0.412971, 0.824083,
		-0.668617, 0.741422, -0.056956,
		-0.634515, -0.528912, 0.563598,
		19.875040, 16.029352, 16.676296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.213001, 16.847227, 16.765980>,  <20.319201, 16.399591, 16.281778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.213001, 16.847227, 16.765980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.077229, 16.504696, 16.921665>,  <19.995764, 16.299177, 17.015076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.077229, 16.504696, 16.921665>,  <20.213001, 16.847227, 16.765980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.077229, 16.504696, 16.921665> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372443, 0.257609, 0.891585,
		-0.863754, 0.447594, 0.231492,
		-0.339434, -0.856328, 0.389214,
		19.975399, 16.247797, 17.038429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.047232, 17.046370, 17.452250>,  <20.213001, 16.847227, 16.765980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.047232, 17.046370, 17.452250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101479, 16.650097, 17.447290>,  <20.134026, 16.412333, 17.444315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.101479, 16.650097, 17.447290>,  <20.047232, 17.046370, 17.452250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.101479, 16.650097, 17.447290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457303, 0.051488, 0.887819,
		-0.878910, -0.126072, 0.460025,
		0.135615, -0.990684, -0.012399,
		20.142162, 16.352892, 17.443571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.736818, 16.806236, 18.016354>,  <20.047232, 17.046370, 17.452250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.736818, 16.806236, 18.016354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.025288, 16.542091, 17.932610>,  <20.198370, 16.383604, 17.882362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.025288, 16.542091, 17.932610>,  <19.736818, 16.806236, 18.016354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025288, 16.542091, 17.932610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243577, -0.041205, 0.969006,
		-0.648520, -0.749817, 0.131132,
		0.721174, -0.660361, -0.209361,
		20.241640, 16.343983, 17.869801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.571682, 16.344656, 18.551340>,  <19.736818, 16.806236, 18.016354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.571682, 16.344656, 18.551340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.936241, 16.265060, 18.407255>,  <20.154978, 16.217302, 18.320805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.936241, 16.265060, 18.407255>,  <19.571682, 16.344656, 18.551340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.936241, 16.265060, 18.407255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247265, -0.434894, 0.865868,
		-0.328952, -0.878220, -0.347160,
		0.911401, -0.198988, -0.360212,
		20.209661, 16.205364, 18.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.733250, 15.650216, 18.808983>,  <19.571682, 16.344656, 18.551340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.733250, 15.650216, 18.808983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.085751, 15.820889, 18.727655>,  <20.297251, 15.923292, 18.678860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.085751, 15.820889, 18.727655>,  <19.733250, 15.650216, 18.808983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.085751, 15.820889, 18.727655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370960, -0.357829, 0.856940,
		0.292887, -0.830604, -0.473619,
		0.881253, 0.426680, -0.203317,
		20.350126, 15.948893, 18.666660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.172613, 15.099611, 18.866488>,  <19.733250, 15.650216, 18.808983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.172613, 15.099611, 18.866488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.375107, 15.441830, 18.909880>,  <20.496603, 15.647161, 18.935915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.375107, 15.441830, 18.909880>,  <20.172613, 15.099611, 18.866488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.375107, 15.441830, 18.909880> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379066, -0.333736, 0.863093,
		0.774619, -0.395807, -0.493257,
		0.506235, 0.855545, 0.108481,
		20.526978, 15.698493, 18.942425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.804474, 14.816569, 19.167366>,  <20.172613, 15.099611, 18.866488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.804474, 14.816569, 19.167366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.825668, 15.212631, 19.219191>,  <20.838385, 15.450269, 19.250284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.825668, 15.212631, 19.219191>,  <20.804474, 14.816569, 19.167366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.825668, 15.212631, 19.219191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468416, -0.139229, 0.872469,
		0.881917, 0.014458, -0.471182,
		0.052988, 0.990155, 0.129561,
		20.841564, 15.509678, 19.258059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.488216, 14.930962, 19.415380>,  <20.804474, 14.816569, 19.167366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.488216, 14.930962, 19.415380> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.271992, 15.243851, 19.539265>,  <21.142256, 15.431584, 19.613596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.271992, 15.243851, 19.539265>,  <21.488216, 14.930962, 19.415380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.271992, 15.243851, 19.539265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258355, -0.196000, 0.945958,
		0.800652, 0.591365, -0.096141,
		-0.540563, 0.782222, 0.309710,
		21.109823, 15.478518, 19.632177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.886463, 15.399513, 19.910841>,  <21.488216, 14.930962, 19.415380>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.886463, 15.399513, 19.910841> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.505070, 15.482388, 19.998425>,  <21.276234, 15.532112, 20.050976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.505070, 15.482388, 19.998425>,  <21.886463, 15.399513, 19.910841>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.505070, 15.482388, 19.998425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182602, -0.180961, 0.966390,
		0.239847, 0.961419, 0.134711,
		-0.953483, 0.207187, 0.218960,
		21.219025, 15.544543, 20.064112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.922100, 15.512633, 20.530296>,  <21.886463, 15.399513, 19.910841>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.922100, 15.512633, 20.530296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.529396, 15.587532, 20.517117>,  <21.293774, 15.632471, 20.509209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.529396, 15.587532, 20.517117>,  <21.922100, 15.512633, 20.530296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529396, 15.587532, 20.517117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010925, 0.228574, 0.973465,
		0.189809, 0.955349, -0.226451,
		-0.981760, 0.187246, -0.032948,
		21.234867, 15.643706, 20.507233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709341, 16.223265, 20.713074>,  <21.922100, 15.512633, 20.530296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709341, 16.223265, 20.713074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.399288, 15.987045, 20.802893>,  <21.213257, 15.845313, 20.856783>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.399288, 15.987045, 20.802893>,  <21.709341, 16.223265, 20.713074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399288, 15.987045, 20.802893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062214, 0.282335, 0.957296,
		-0.628728, 0.756002, -0.182107,
		-0.775133, -0.590549, 0.224546,
		21.166748, 15.809880, 20.870256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.249418, 16.570578, 21.044369>,  <21.709341, 16.223265, 20.713074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.249418, 16.570578, 21.044369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.130840, 16.205437, 21.156672>,  <21.059694, 15.986353, 21.224054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.130840, 16.205437, 21.156672>,  <21.249418, 16.570578, 21.044369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.130840, 16.205437, 21.156672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227008, 0.352896, 0.907707,
		-0.927680, 0.205349, -0.311837,
		-0.296443, -0.912851, 0.280759,
		21.041908, 15.931581, 21.240900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.790209, 16.745583, 21.573074>,  <21.249418, 16.570578, 21.044369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.790209, 16.745583, 21.573074> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.831825, 16.351295, 21.626045>,  <20.856794, 16.114723, 21.657827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.831825, 16.351295, 21.626045>,  <20.790209, 16.745583, 21.573074>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.831825, 16.351295, 21.626045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316330, 0.093439, 0.944036,
		-0.942927, -0.140107, -0.302091,
		0.104039, -0.985718, 0.132426,
		20.863037, 16.055580, 21.665773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.199091, 16.475914, 21.985882>,  <20.790209, 16.745583, 21.573074>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.199091, 16.475914, 21.985882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.497253, 16.216736, 22.048538>,  <20.676151, 16.061228, 22.086132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.497253, 16.216736, 22.048538>,  <20.199091, 16.475914, 21.985882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.497253, 16.216736, 22.048538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193627, 0.014402, 0.980969,
		-0.637872, -0.761550, -0.114725,
		0.745404, -0.647946, 0.156643,
		20.720875, 16.022352, 22.095531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.925146, 15.925613, 22.375984>,  <20.199091, 16.475914, 21.985882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.925146, 15.925613, 22.375984> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.319874, 15.874634, 22.415878>,  <20.556709, 15.844046, 22.439814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.319874, 15.874634, 22.415878>,  <19.925146, 15.925613, 22.375984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.319874, 15.874634, 22.415878> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089554, 0.083265, 0.992495,
		-0.134799, -0.988344, 0.070754,
		0.986818, -0.127451, 0.099734,
		20.615919, 15.836399, 22.445799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.965616, 15.442608, 23.001812>,  <19.925146, 15.925613, 22.375984>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.965616, 15.442608, 23.001812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.325214, 15.617352, 22.989393>,  <20.540974, 15.722198, 22.981943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.325214, 15.617352, 22.989393>,  <19.965616, 15.442608, 23.001812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.325214, 15.617352, 22.989393> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042767, 0.158113, 0.986494,
		0.435869, -0.885524, 0.160825,
		0.898993, 0.436861, -0.031045,
		20.594912, 15.748409, 22.980080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.314924, 15.091898, 23.527971>,  <19.965616, 15.442608, 23.001812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.314924, 15.091898, 23.527971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.502197, 15.437115, 23.452118>,  <20.614561, 15.644245, 23.406607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.502197, 15.437115, 23.452118>,  <20.314924, 15.091898, 23.527971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.502197, 15.437115, 23.452118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158365, 0.129180, 0.978894,
		0.869324, -0.488334, -0.076195,
		0.468184, 0.863043, -0.189634,
		20.642653, 15.696028, 23.395227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949406, 14.955062, 23.843079>,  <20.314924, 15.091898, 23.527971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949406, 14.955062, 23.843079> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.893658, 15.349491, 23.806774>,  <20.860209, 15.586148, 23.784992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.893658, 15.349491, 23.806774>,  <20.949406, 14.955062, 23.843079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.893658, 15.349491, 23.806774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074559, 0.101844, 0.992002,
		0.987429, 0.131488, -0.087715,
		-0.139370, 0.986072, -0.090760,
		20.851847, 15.645313, 23.779547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.368610, 15.186925, 24.404152>,  <20.949406, 14.955062, 23.843079>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.368610, 15.186925, 24.404152> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.153198, 15.511562, 24.313553>,  <21.023951, 15.706345, 24.259193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.153198, 15.511562, 24.313553>,  <21.368610, 15.186925, 24.404152>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.153198, 15.511562, 24.313553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011483, 0.261710, 0.965078,
		0.842528, 0.522325, -0.131619,
		-0.538530, 0.811594, -0.226496,
		20.991640, 15.755040, 24.245604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.743351, 15.820977, 24.736462>,  <21.368610, 15.186925, 24.404152>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.743351, 15.820977, 24.736462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.350536, 15.881397, 24.691229>,  <21.114847, 15.917649, 24.664089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.350536, 15.881397, 24.691229>,  <21.743351, 15.820977, 24.736462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350536, 15.881397, 24.691229> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103564, 0.069477, 0.992193,
		0.157727, 0.986082, -0.052586,
		-0.982037, 0.151050, -0.113081,
		21.055925, 15.926712, 24.657305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.441116, 16.563921, 25.050121>,  <21.743351, 15.820977, 24.736462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.441116, 16.563921, 25.050121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.189514, 16.252960, 25.050051>,  <21.038553, 16.066383, 25.050009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<21.189514, 16.252960, 25.050051>,  <21.441116, 16.563921, 25.050121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.189514, 16.252960, 25.050051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043401, 0.034890, 0.998448,
		-0.776190, 0.628035, -0.055686,
		-0.629003, -0.777403, -0.000176,
		21.000813, 16.019739, 25.049997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.052776, 16.778549, 24.619045>,  <21.441116, 16.563921, 25.050121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.052776, 16.778549, 24.619045> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.350006, 17.046169, 24.624851>,  <22.528343, 17.206741, 24.628334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.350006, 17.046169, 24.624851>,  <22.052776, 16.778549, 24.619045>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.350006, 17.046169, 24.624851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009228, 0.031932, -0.999448,
		-0.669146, 0.742529, 0.029902,
		0.743074, 0.669052, 0.014515,
		22.572927, 17.246885, 24.629206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.880499, 17.447447, 24.268669>,  <22.052776, 16.778549, 24.619045>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.880499, 17.447447, 24.268669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.277489, 17.415501, 24.231543>,  <22.515682, 17.396334, 24.209267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.277489, 17.415501, 24.231543>,  <21.880499, 17.447447, 24.268669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.277489, 17.415501, 24.231543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066179, 0.287876, -0.955378,
		0.103021, 0.954332, 0.280424,
		0.992475, -0.079866, -0.092814,
		22.575232, 17.391541, 24.203699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.176760, 18.099525, 24.015059>,  <21.880499, 17.447447, 24.268669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.176760, 18.099525, 24.015059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.487003, 17.855698, 23.949503>,  <22.673149, 17.709402, 23.910170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.487003, 17.855698, 23.949503>,  <22.176760, 18.099525, 24.015059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.487003, 17.855698, 23.949503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087557, 0.361025, -0.928437,
		0.625113, 0.705754, 0.333386,
		0.775608, -0.609568, -0.163888,
		22.719687, 17.672827, 23.900337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.697924, 18.442471, 23.661869>,  <22.176760, 18.099525, 24.015059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.697924, 18.442471, 23.661869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.743889, 18.054581, 23.575680>,  <22.771467, 17.821846, 23.523966>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.743889, 18.054581, 23.575680>,  <22.697924, 18.442471, 23.661869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.743889, 18.054581, 23.575680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194254, 0.234657, -0.952471,
		0.974197, 0.067593, 0.215337,
		0.114911, -0.969725, -0.215472,
		22.778362, 17.763662, 23.511038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.216671, 18.497391, 23.168402>,  <22.697924, 18.442471, 23.661869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.216671, 18.497391, 23.168402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.076317, 18.125214, 23.126162>,  <22.992104, 17.901907, 23.100817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.076317, 18.125214, 23.126162>,  <23.216671, 18.497391, 23.168402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.076317, 18.125214, 23.126162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267781, 0.008364, -0.963444,
		0.897315, -0.366336, 0.246220,
		-0.350885, -0.930445, -0.105602,
		22.971052, 17.846081, 23.094481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.734333, 18.286783, 22.642195>,  <23.216671, 18.497391, 23.168402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.734333, 18.286783, 22.642195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.426903, 18.030880, 22.641525>,  <23.242445, 17.877338, 22.641125>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.426903, 18.030880, 22.641525>,  <23.734333, 18.286783, 22.642195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.426903, 18.030880, 22.641525> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045440, -0.051982, -0.997614,
		0.638143, -0.766817, 0.069023,
		-0.768575, -0.639757, -0.001672,
		23.196331, 17.838953, 22.641024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.893908, 17.826468, 22.196514>,  <23.734333, 18.286783, 22.642195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.893908, 17.826468, 22.196514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.494286, 17.835167, 22.211590>,  <23.254513, 17.840387, 22.220634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.494286, 17.835167, 22.211590>,  <23.893908, 17.826468, 22.196514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.494286, 17.835167, 22.211590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034262, 0.140738, -0.989454,
		-0.026825, -0.989808, -0.139860,
		-0.999053, 0.021750, 0.037688,
		23.194571, 17.841692, 22.222897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.706867, 17.682856, 21.572824>,  <23.893908, 17.826468, 22.196514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.706867, 17.682856, 21.572824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.332272, 17.755615, 21.692759>,  <23.107513, 17.799271, 21.764719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.332272, 17.755615, 21.692759>,  <23.706867, 17.682856, 21.572824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.332272, 17.755615, 21.692759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281913, 0.118067, -0.952148,
		-0.208598, -0.976203, -0.059288,
		-0.936489, 0.181902, 0.299833,
		23.051325, 17.810186, 21.782709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.225004, 17.146429, 21.301065>,  <23.706867, 17.682856, 21.572824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.225004, 17.146429, 21.301065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.038422, 17.494473, 21.364723>,  <22.926472, 17.703299, 21.402918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.038422, 17.494473, 21.364723>,  <23.225004, 17.146429, 21.301065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.038422, 17.494473, 21.364723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239126, 0.049175, -0.969742,
		-0.851608, -0.490398, 0.185128,
		-0.466456, 0.870110, 0.159145,
		22.898485, 17.755505, 21.412466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509008, 16.985209, 21.112782>,  <23.225004, 17.146429, 21.301065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509008, 16.985209, 21.112782> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.549747, 17.382553, 21.091377>,  <22.574192, 17.620960, 21.078535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.549747, 17.382553, 21.091377>,  <22.509008, 16.985209, 21.112782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.549747, 17.382553, 21.091377> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152164, -0.037601, -0.987640,
		-0.983094, 0.108733, 0.147323,
		0.101850, 0.993360, -0.053510,
		22.580303, 17.680561, 21.075325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.098680, 17.180445, 20.586882>,  <22.509008, 16.985209, 21.112782>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.098680, 17.180445, 20.586882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.316673, 17.515091, 20.609051>,  <22.447468, 17.715879, 20.622353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.316673, 17.515091, 20.609051>,  <22.098680, 17.180445, 20.586882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.316673, 17.515091, 20.609051> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105515, 0.134009, -0.985347,
		-0.831783, 0.531146, 0.161308,
		0.544980, 0.836615, 0.055423,
		22.480167, 17.766075, 20.625677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.727879, 17.807444, 20.229498>,  <22.098680, 17.180445, 20.586882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.727879, 17.807444, 20.229498> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.122314, 17.873917, 20.228043>,  <22.358976, 17.913801, 20.227169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.122314, 17.873917, 20.228043>,  <21.727879, 17.807444, 20.229498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.122314, 17.873917, 20.228043> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039454, 0.212744, -0.976311,
		-0.161472, 0.962872, 0.216341,
		0.986088, 0.166182, -0.003637,
		22.418140, 17.923771, 20.226952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.714142, 18.446030, 19.981836>,  <21.727879, 17.807444, 20.229498>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.714142, 18.446030, 19.981836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.051311, 18.240021, 19.919573>,  <22.253613, 18.116415, 19.882215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.051311, 18.240021, 19.919573>,  <21.714142, 18.446030, 19.981836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051311, 18.240021, 19.919573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009471, 0.275062, -0.961380,
		0.537950, 0.811844, 0.226978,
		0.842923, -0.515024, -0.155659,
		22.304188, 18.085514, 19.872875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.940746, 18.805912, 19.452505>,  <21.714142, 18.446030, 19.981836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.940746, 18.805912, 19.452505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.210529, 18.511005, 19.436785>,  <22.372398, 18.334061, 19.427353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.210529, 18.511005, 19.436785>,  <21.940746, 18.805912, 19.452505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.210529, 18.511005, 19.436785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044868, 0.012204, -0.998918,
		0.736950, 0.675490, -0.024848,
		0.674456, -0.737268, -0.039302,
		22.412867, 18.289825, 19.424994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.350334, 18.989986, 18.896038>,  <21.940746, 18.805912, 19.452505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.350334, 18.989986, 18.896038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.422520, 18.598766, 18.937710>,  <22.465830, 18.364035, 18.962713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.422520, 18.598766, 18.937710>,  <22.350334, 18.989986, 18.896038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.422520, 18.598766, 18.937710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080410, -0.090895, -0.992609,
		0.980290, 0.187505, 0.062242,
		0.180462, -0.978049, 0.104181,
		22.476658, 18.305351, 18.968964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.966232, 18.829447, 18.385401>,  <22.350334, 18.989986, 18.896038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.966232, 18.829447, 18.385401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.814030, 18.466225, 18.455425>,  <22.722708, 18.248291, 18.497440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.814030, 18.466225, 18.455425>,  <22.966232, 18.829447, 18.385401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.814030, 18.466225, 18.455425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150300, -0.247508, -0.957157,
		0.912482, -0.337894, 0.230660,
		-0.380508, -0.908057, 0.175061,
		22.699877, 18.193808, 18.507944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.464581, 18.259987, 18.126312>,  <22.966232, 18.829447, 18.385401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.464581, 18.259987, 18.126312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.109619, 18.077625, 18.153646>,  <22.896643, 17.968208, 18.170046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.109619, 18.077625, 18.153646>,  <23.464581, 18.259987, 18.126312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.109619, 18.077625, 18.153646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161103, -0.445575, -0.880629,
		0.431930, -0.770464, 0.468852,
		-0.887402, -0.455903, 0.068333,
		22.843399, 17.940855, 18.174147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.540751, 17.809990, 17.631594>,  <23.464581, 18.259987, 18.126312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.540751, 17.809990, 17.631594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.145157, 17.812080, 17.690763>,  <22.907801, 17.813335, 17.726265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.145157, 17.812080, 17.690763>,  <23.540751, 17.809990, 17.631594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.145157, 17.812080, 17.690763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134465, -0.449432, -0.883136,
		0.061867, -0.893299, 0.445185,
		-0.988985, 0.005225, 0.147922,
		22.848461, 17.813648, 17.735140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.344894, 17.229818, 17.289883>,  <23.540751, 17.809990, 17.631594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.344894, 17.229818, 17.289883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.003948, 17.434563, 17.332729>,  <22.799381, 17.557409, 17.358437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.003948, 17.434563, 17.332729>,  <23.344894, 17.229818, 17.289883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.003948, 17.434563, 17.332729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275135, -0.264754, -0.924232,
		-0.444720, -0.817253, 0.366498,
		-0.852364, 0.511861, 0.107114,
		22.748240, 17.588121, 17.364864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.772541, 16.816416, 17.050062>,  <23.344894, 17.229818, 17.289883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.772541, 16.816416, 17.050062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.630424, 17.189693, 17.028460>,  <22.545155, 17.413660, 17.015499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.630424, 17.189693, 17.028460>,  <22.772541, 16.816416, 17.050062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.630424, 17.189693, 17.028460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478632, -0.231246, -0.847016,
		-0.802919, -0.275088, 0.528817,
		-0.355291, 0.933194, -0.054006,
		22.523838, 17.469652, 17.012259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<17.961718, 14.942744, 13.579007> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.154938, 15.292942, 13.573802>,  <18.270870, 15.503060, 13.570679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.154938, 15.292942, 13.573802>,  <17.961718, 14.942744, 13.579007>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.154938, 15.292942, 13.573802> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070035, 0.023818, -0.997260,
		-0.872786, 0.482640, 0.072820,
		0.483053, 0.875495, -0.013014,
		18.299854, 15.555591, 13.569898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.493296, 15.426801, 13.242320>,  <17.961718, 14.942744, 13.579007>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.493296, 15.426801, 13.242320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.862858, 15.578487, 13.221940>,  <18.084595, 15.669499, 13.209712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.862858, 15.578487, 13.221940>,  <17.493296, 15.426801, 13.242320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.862858, 15.578487, 13.221940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099497, 0.109534, -0.988991,
		-0.369462, 0.918802, 0.138930,
		0.923904, 0.379218, -0.050949,
		18.140030, 15.692253, 13.206656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438206, 15.837272, 12.665076>,  <17.493296, 15.426801, 13.242320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438206, 15.837272, 12.665076> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.836864, 15.825932, 12.695781>,  <18.076059, 15.819127, 12.714204>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.836864, 15.825932, 12.695781>,  <17.438206, 15.837272, 12.665076>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.836864, 15.825932, 12.695781> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080018, 0.141385, -0.986716,
		0.017121, 0.989549, 0.143179,
		0.996646, -0.028351, 0.076761,
		18.135859, 15.817427, 12.718809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697048, 16.389143, 12.303460>,  <17.438206, 15.837272, 12.665076>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697048, 16.389143, 12.303460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.979053, 16.105492, 12.299678>,  <18.148256, 15.935301, 12.297408>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.979053, 16.105492, 12.299678>,  <17.697048, 16.389143, 12.303460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.979053, 16.105492, 12.299678> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180401, 0.192217, -0.964629,
		0.685864, 0.678372, 0.263443,
		0.705015, -0.709129, -0.009456,
		18.190557, 15.892753, 12.296842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.078035, 16.652666, 11.787330>,  <17.697048, 16.389143, 12.303460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.078035, 16.652666, 11.787330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.227154, 16.285763, 11.843420>,  <18.316626, 16.065620, 11.877074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.227154, 16.285763, 11.843420>,  <18.078035, 16.652666, 11.787330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.227154, 16.285763, 11.843420> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226465, -0.056611, -0.972373,
		0.899854, 0.394254, 0.186622,
		0.372797, -0.917256, 0.140226,
		18.338993, 16.010586, 11.885488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.742899, 16.644131, 11.331400>,  <18.078035, 16.652666, 11.787330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.742899, 16.644131, 11.331400> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.633575, 16.265057, 11.397365>,  <18.567982, 16.037613, 11.436943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.633575, 16.265057, 11.397365>,  <18.742899, 16.644131, 11.331400>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.633575, 16.265057, 11.397365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072901, -0.191352, -0.978810,
		0.959160, -0.255496, 0.121386,
		-0.273309, -0.947685, 0.164911,
		18.551582, 15.980751, 11.446838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.275570, 16.175970, 11.077061>,  <18.742899, 16.644131, 11.331400>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.275570, 16.175970, 11.077061> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.935894, 15.965061, 11.088769>,  <18.732088, 15.838515, 11.095794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.935894, 15.965061, 11.088769>,  <19.275570, 16.175970, 11.077061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.935894, 15.965061, 11.088769> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116048, -0.240398, -0.963712,
		0.515178, -0.814979, 0.265333,
		-0.849191, -0.527274, 0.029271,
		18.681137, 15.806879, 11.097550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.549089, 15.643860, 10.711496>,  <19.275570, 16.175970, 11.077061>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.549089, 15.643860, 10.711496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.149693, 15.665756, 10.713253>,  <18.910055, 15.678894, 10.714307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.149693, 15.665756, 10.713253>,  <19.549089, 15.643860, 10.711496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.149693, 15.665756, 10.713253> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010354, -0.109129, -0.993974,
		-0.053927, -0.992520, 0.109531,
		-0.998491, 0.054736, 0.004391,
		18.850145, 15.682178, 10.714570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.423815, 15.335315, 10.184643>,  <19.549089, 15.643860, 10.711496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.423815, 15.335315, 10.184643> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058697, 15.490791, 10.234807>,  <18.839626, 15.584077, 10.264905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.058697, 15.490791, 10.234807>,  <19.423815, 15.335315, 10.184643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.058697, 15.490791, 10.234807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161188, -0.060705, -0.985055,
		-0.375269, -0.919366, 0.118064,
		-0.912793, 0.388691, 0.125410,
		18.784859, 15.607399, 10.272430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.975428, 14.959044, 9.679919>,  <19.423815, 15.335315, 10.184643>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.975428, 14.959044, 9.679919> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.782581, 15.294140, 9.782493>,  <18.666874, 15.495197, 9.844037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.782581, 15.294140, 9.782493>,  <18.975428, 14.959044, 9.679919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782581, 15.294140, 9.782493> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170430, 0.197426, -0.965389,
		-0.859370, -0.509134, 0.047593,
		-0.482116, 0.837738, 0.256434,
		18.637947, 15.545462, 9.859423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.371267, 14.959324, 9.218925>,  <18.975428, 14.959044, 9.679919>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.371267, 14.959324, 9.218925> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.401512, 15.333920, 9.355906>,  <18.419659, 15.558677, 9.438094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.401512, 15.333920, 9.355906>,  <18.371267, 14.959324, 9.218925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.401512, 15.333920, 9.355906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083830, 0.348189, -0.933668,
		-0.993607, 0.041889, 0.104834,
		0.075613, 0.936488, 0.342452,
		18.424196, 15.614866, 9.458641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.818834, 15.360233, 8.806403>,  <18.371267, 14.959324, 9.218925>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.818834, 15.360233, 8.806403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.091297, 15.620857, 8.939966>,  <18.254774, 15.777231, 9.020104>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.091297, 15.620857, 8.939966>,  <17.818834, 15.360233, 8.806403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.091297, 15.620857, 8.939966> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191213, 0.281923, -0.940190,
		-0.706726, 0.704265, 0.067448,
		0.681158, 0.651560, 0.333907,
		18.295645, 15.816325, 9.040138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.924784, 15.832077, 8.319450>,  <17.818834, 15.360233, 8.806403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.924784, 15.832077, 8.319450> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.231140, 15.947380, 8.549345>,  <18.414953, 16.016562, 8.687282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.231140, 15.947380, 8.549345>,  <17.924784, 15.832077, 8.319450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.231140, 15.947380, 8.549345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434330, 0.427161, -0.793027,
		-0.474100, 0.856996, 0.201959,
		0.765889, 0.288257, 0.574736,
		18.460907, 16.033857, 8.721766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.157534, 16.557411, 8.217283>,  <17.924784, 15.832077, 8.319450>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.157534, 16.557411, 8.217283> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.478321, 16.373947, 8.370373>,  <18.670794, 16.263868, 8.462226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.478321, 16.373947, 8.370373>,  <18.157534, 16.557411, 8.217283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478321, 16.373947, 8.370373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568202, 0.387951, -0.725700,
		0.184372, 0.799453, 0.571736,
		0.801969, -0.458661, 0.382723,
		18.718912, 16.236349, 8.485189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.413965, 16.386761, 8.100460>,  <18.157534, 16.557411, 8.217283>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.413965, 16.386761, 8.100460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.067394, 16.581573, 8.056458>,  <16.859451, 16.698462, 8.030058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.067394, 16.581573, 8.056458>,  <17.413965, 16.386761, 8.100460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.067394, 16.581573, 8.056458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088563, 0.366729, 0.926103,
		0.491382, 0.792661, -0.360878,
		-0.866430, 0.487031, -0.110003,
		16.807465, 16.727682, 8.023458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.488070, 17.124300, 8.431951>,  <17.413965, 16.386761, 8.100460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.488070, 17.124300, 8.431951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094498, 17.053059, 8.426799>,  <16.858355, 17.010315, 8.423708>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.094498, 17.053059, 8.426799>,  <17.488070, 17.124300, 8.431951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.094498, 17.053059, 8.426799> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076725, 0.356536, 0.931126,
		-0.161243, 0.917149, -0.364470,
		-0.983928, -0.178102, -0.012879,
		16.799320, 16.999628, 8.422935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.192324, 17.620605, 8.836631>,  <17.488070, 17.124300, 8.431951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.192324, 17.620605, 8.836631> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886803, 17.362854, 8.821757>,  <16.703491, 17.208202, 8.812833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.886803, 17.362854, 8.821757>,  <17.192324, 17.620605, 8.836631>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.886803, 17.362854, 8.821757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213378, 0.197713, 0.956755,
		-0.609161, 0.738705, -0.288510,
		-0.763802, -0.644379, -0.037184,
		16.657661, 17.169540, 8.810602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586515, 17.963074, 9.082100>,  <17.192324, 17.620605, 8.836631>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586515, 17.963074, 9.082100> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.484299, 17.580574, 9.139071>,  <16.422968, 17.351074, 9.173254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.484299, 17.580574, 9.139071>,  <16.586515, 17.963074, 9.082100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.484299, 17.580574, 9.139071> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304969, 0.219527, 0.926716,
		-0.917438, 0.193379, -0.347725,
		-0.255543, -0.956249, 0.142428,
		16.407637, 17.293699, 9.181800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894787, 17.985014, 9.282096>,  <16.586515, 17.963074, 9.082100>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894787, 17.985014, 9.282096> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.017921, 17.623089, 9.399773>,  <16.091803, 17.405933, 9.470379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.017921, 17.623089, 9.399773>,  <15.894787, 17.985014, 9.282096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.017921, 17.623089, 9.399773> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222133, 0.232314, 0.946936,
		-0.925145, -0.356851, -0.129475,
		0.307837, -0.904814, 0.294193,
		16.110273, 17.351645, 9.488030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.410559, 17.628838, 9.685296>,  <15.894787, 17.985014, 9.282096>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.410559, 17.628838, 9.685296> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.760217, 17.456326, 9.774618>,  <15.970012, 17.352818, 9.828211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.760217, 17.456326, 9.774618>,  <15.410559, 17.628838, 9.685296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.760217, 17.456326, 9.774618> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130669, 0.233981, 0.963420,
		-0.467755, -0.871349, 0.148178,
		0.874146, -0.431282, 0.223304,
		16.022461, 17.326941, 9.841609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.301347, 17.277716, 10.266814>,  <15.410559, 17.628838, 9.685296>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.301347, 17.277716, 10.266814> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700139, 17.308159, 10.272964>,  <15.939415, 17.326424, 10.276655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.700139, 17.308159, 10.272964>,  <15.301347, 17.277716, 10.266814>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.700139, 17.308159, 10.272964> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032217, 0.225303, 0.973756,
		0.070643, -0.971312, 0.227075,
		0.996981, 0.076105, 0.015377,
		15.999233, 17.330992, 10.277577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.478704, 17.014130, 10.864418>,  <15.301347, 17.277716, 10.266814>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.478704, 17.014130, 10.864418> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.803435, 17.226776, 10.767819>,  <15.998274, 17.354364, 10.709860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<15.803435, 17.226776, 10.767819>,  <15.478704, 17.014130, 10.864418>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.803435, 17.226776, 10.767819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218168, 0.107469, 0.969976,
		0.541610, -0.840139, -0.028737,
		0.811826, 0.531618, -0.241498,
		16.046984, 17.386261, 10.695370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.014359, 16.828363, 11.355737>,  <15.478704, 17.014130, 10.864418>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.014359, 16.828363, 11.355737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.143101, 17.181656, 11.219319>,  <16.220346, 17.393631, 11.137468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.143101, 17.181656, 11.219319>,  <16.014359, 16.828363, 11.355737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143101, 17.181656, 11.219319> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412237, 0.193544, 0.890282,
		0.852332, -0.427133, -0.301807,
		0.321856, 0.883232, -0.341044,
		16.239658, 17.446625, 11.117006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.611332, 16.966160, 11.764196>,  <16.014359, 16.828363, 11.355737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.611332, 16.966160, 11.764196> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.587925, 17.340363, 11.624824>,  <16.573881, 17.564884, 11.541200>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.587925, 17.340363, 11.624824>,  <16.611332, 16.966160, 11.764196>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.587925, 17.340363, 11.624824> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170797, 0.353267, 0.919799,
		0.983567, -0.005687, -0.180454,
		-0.058518, 0.935505, -0.348433,
		16.570370, 17.621014, 11.520293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.227262, 17.282110, 11.887774>,  <16.611332, 16.966160, 11.764196>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.227262, 17.282110, 11.887774> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968166, 17.584942, 11.853692>,  <16.812708, 17.766642, 11.833242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.968166, 17.584942, 11.853692>,  <17.227262, 17.282110, 11.887774>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.968166, 17.584942, 11.853692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194567, 0.272516, 0.942273,
		0.736596, 0.593772, -0.323823,
		-0.647742, 0.757080, -0.085206,
		16.773844, 17.812065, 11.828130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.545515, 17.919926, 12.046352>,  <17.227262, 17.282110, 11.887774>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.545515, 17.919926, 12.046352> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.156403, 18.002296, 12.088861>,  <16.922935, 18.051720, 12.114366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.156403, 18.002296, 12.088861>,  <17.545515, 17.919926, 12.046352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.156403, 18.002296, 12.088861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149740, 0.208607, 0.966468,
		0.176854, 0.956074, -0.233764,
		-0.972780, 0.205928, 0.106269,
		16.864569, 18.064075, 12.120741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.479935, 18.602489, 12.393972>,  <17.545515, 17.919926, 12.046352>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.479935, 18.602489, 12.393972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.135555, 18.407063, 12.450641>,  <16.928928, 18.289806, 12.484641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.135555, 18.407063, 12.450641>,  <17.479935, 18.602489, 12.393972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.135555, 18.407063, 12.450641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119513, 0.076433, 0.989886,
		-0.494452, 0.869173, -0.007415,
		-0.860949, -0.488565, 0.141670,
		16.877270, 18.260492, 12.493141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.178818, 18.883745, 12.984142>,  <17.479935, 18.602489, 12.393972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.178818, 18.883745, 12.984142> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.983212, 18.538071, 12.936732>,  <16.865847, 18.330666, 12.908286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.983212, 18.538071, 12.936732>,  <17.178818, 18.883745, 12.984142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.983212, 18.538071, 12.936732> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142803, -0.054730, 0.988237,
		-0.860506, 0.500190, -0.096644,
		-0.489017, -0.864184, -0.118524,
		16.836506, 18.278816, 12.901175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.796165, 19.474230, 13.082324>,  <17.178818, 18.883745, 12.984142>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.796165, 19.474230, 13.082324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.755096, 19.871361, 13.106831>,  <16.730455, 20.109638, 13.121534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.755096, 19.871361, 13.106831>,  <16.796165, 19.474230, 13.082324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.755096, 19.871361, 13.106831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132913, 0.074733, -0.988306,
		-0.985795, -0.093329, -0.139632,
		-0.102673, 0.992827, 0.061267,
		16.724295, 20.169209, 13.125211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.352654, 19.637150, 12.537064>,  <16.796165, 19.474230, 13.082324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.352654, 19.637150, 12.537064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.545277, 19.975372, 12.629266>,  <16.660851, 20.178307, 12.684587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.545277, 19.975372, 12.629266>,  <16.352654, 19.637150, 12.537064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.545277, 19.975372, 12.629266> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113304, 0.200737, -0.973071,
		-0.869059, 0.494708, 0.000862,
		0.481559, 0.845558, 0.230505,
		16.689745, 20.229040, 12.698418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.061127, 20.099680, 12.019017>,  <16.352654, 19.637150, 12.537064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.061127, 20.099680, 12.019017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.396580, 20.279926, 12.141419>,  <16.597851, 20.388075, 12.214861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.396580, 20.279926, 12.141419>,  <16.061127, 20.099680, 12.019017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396580, 20.279926, 12.141419> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265821, 0.151771, -0.952000,
		-0.475431, 0.879721, 0.007497,
		0.838632, 0.450618, 0.306005,
		16.648170, 20.415112, 12.233221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.235775, 20.815992, 11.652205>,  <16.061127, 20.099680, 12.019017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.235775, 20.815992, 11.652205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.583096, 20.649052, 11.759441>,  <16.791487, 20.548887, 11.823784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.583096, 20.649052, 11.759441>,  <16.235775, 20.815992, 11.652205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583096, 20.649052, 11.759441> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350041, 0.132595, -0.927302,
		0.351464, 0.899020, 0.261222,
		0.868300, -0.417352, 0.268092,
		16.843586, 20.523846, 11.839869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762201, 21.188234, 11.334320>,  <16.235775, 20.815992, 11.652205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762201, 21.188234, 11.334320> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.917816, 20.833305, 11.433363>,  <17.011185, 20.620348, 11.492789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.917816, 20.833305, 11.433363>,  <16.762201, 21.188234, 11.334320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.917816, 20.833305, 11.433363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326350, -0.118603, -0.937779,
		0.861478, 0.445639, 0.243436,
		0.389038, -0.887322, 0.247608,
		17.034527, 20.567108, 11.507646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.407713, 21.205912, 10.976676>,  <16.762201, 21.188234, 11.334320>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.407713, 21.205912, 10.976676> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.369030, 20.819538, 11.072691>,  <17.345821, 20.587713, 11.130300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.369030, 20.819538, 11.072691>,  <17.407713, 21.205912, 10.976676>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.369030, 20.819538, 11.072691> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361536, -0.258785, -0.895724,
		0.927329, 0.000160, 0.374246,
		-0.096706, -0.965935, 0.240037,
		17.340017, 20.529758, 11.144702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.879704, 20.919277, 10.526830>,  <17.407713, 21.205912, 10.976676>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.879704, 20.919277, 10.526830> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.682987, 20.593975, 10.651252>,  <17.564957, 20.398794, 10.725905>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.682987, 20.593975, 10.651252>,  <17.879704, 20.919277, 10.526830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.682987, 20.593975, 10.651252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094567, -0.405018, -0.909405,
		0.865563, -0.417822, 0.276091,
		-0.491791, -0.813256, 0.311056,
		17.535450, 20.349998, 10.744569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.347176, 20.371807, 10.531579>,  <17.879704, 20.919277, 10.526830>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.347176, 20.371807, 10.531579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.980911, 20.216267, 10.490866>,  <17.761152, 20.122942, 10.466437>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.980911, 20.216267, 10.490866>,  <18.347176, 20.371807, 10.531579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980911, 20.216267, 10.490866> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262995, -0.388090, -0.883300,
		0.303972, -0.835572, 0.457625,
		-0.915661, -0.388852, -0.101783,
		17.706213, 20.099611, 10.460331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.445059, 19.696854, 10.303340>,  <18.347176, 20.371807, 10.531579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.445059, 19.696854, 10.303340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071056, 19.794353, 10.200308>,  <17.846655, 19.852854, 10.138489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.071056, 19.794353, 10.200308>,  <18.445059, 19.696854, 10.303340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.071056, 19.794353, 10.200308> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215150, -0.187492, -0.958414,
		-0.281909, -0.951542, 0.122864,
		-0.935007, 0.243751, -0.257580,
		17.790554, 19.867477, 10.123034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.165430, 19.188734, 9.906561>,  <18.445059, 19.696854, 10.303340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.165430, 19.188734, 9.906561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.911549, 19.479843, 9.802642>,  <17.759220, 19.654509, 9.740291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.911549, 19.479843, 9.802642>,  <18.165430, 19.188734, 9.906561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.911549, 19.479843, 9.802642> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100797, -0.255353, -0.961579,
		-0.766153, -0.636505, 0.088716,
		-0.634704, 0.727775, -0.259798,
		17.721138, 19.698175, 9.724703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.751595, 18.899023, 9.458414>,  <18.165430, 19.188734, 9.906561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.751595, 18.899023, 9.458414> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.727036, 19.288673, 9.371411>,  <17.712299, 19.522463, 9.319210>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.727036, 19.288673, 9.371411>,  <17.751595, 18.899023, 9.458414>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.727036, 19.288673, 9.371411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115859, -0.209489, -0.970923,
		-0.991366, -0.084814, -0.099999,
		-0.061399, 0.974126, -0.217507,
		17.708616, 19.580912, 9.306159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.213495, 18.925623, 8.934677>,  <17.751595, 18.899023, 9.458414>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.213495, 18.925623, 8.934677> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.451733, 19.246937, 8.934401>,  <17.594675, 19.439726, 8.934235>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.451733, 19.246937, 8.934401>,  <17.213495, 18.925623, 8.934677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.451733, 19.246937, 8.934401> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066530, -0.050187, -0.996521,
		-0.800527, 0.593474, -0.083333,
		0.595592, 0.803287, -0.000692,
		17.630411, 19.487923, 8.934193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<16.183508, 20.491312, 17.083563> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540058, 20.635220, 16.973278>,  <16.753988, 20.721563, 16.907106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.540058, 20.635220, 16.973278>,  <16.183508, 20.491312, 17.083563>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.540058, 20.635220, 16.973278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337118, 0.119601, -0.933834,
		-0.302988, 0.925345, 0.227894,
		0.891375, 0.359768, -0.275713,
		16.807470, 20.743151, 16.890564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.864788, 20.855949, 16.457273>,  <16.183508, 20.491312, 17.083563>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.864788, 20.855949, 16.457273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259869, 20.883629, 16.401188>,  <16.496916, 20.900236, 16.367537>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.259869, 20.883629, 16.401188>,  <15.864788, 20.855949, 16.457273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.259869, 20.883629, 16.401188> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145171, 0.072717, -0.986731,
		-0.058084, 0.994949, 0.081868,
		0.987700, 0.069198, -0.140214,
		16.556179, 20.904388, 16.359123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946936, 21.239868, 15.821797>,  <15.864788, 20.855949, 16.457273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946936, 21.239868, 15.821797> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298225, 21.054619, 15.869529>,  <16.508999, 20.943468, 15.898168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.298225, 21.054619, 15.869529>,  <15.946936, 21.239868, 15.821797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.298225, 21.054619, 15.869529> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090487, -0.084094, -0.992341,
		0.469612, 0.882294, -0.031947,
		0.878223, -0.463125, 0.119328,
		16.561693, 20.915682, 15.905327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.356030, 21.584360, 15.457600>,  <15.946936, 21.239868, 15.821797>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.356030, 21.584360, 15.457600> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556538, 21.240410, 15.496253>,  <16.676842, 21.034039, 15.519445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556538, 21.240410, 15.496253>,  <16.356030, 21.584360, 15.457600>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556538, 21.240410, 15.496253> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128021, -0.036748, -0.991090,
		0.855768, 0.509176, 0.091662,
		0.501271, -0.859878, 0.096633,
		16.706919, 20.982447, 15.525243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.040537, 21.628988, 15.056464>,  <16.356030, 21.584360, 15.457600>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.040537, 21.628988, 15.056464> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967670, 21.236641, 15.083928>,  <16.923950, 21.001232, 15.100407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967670, 21.236641, 15.083928>,  <17.040537, 21.628988, 15.056464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.967670, 21.236641, 15.083928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185645, -0.102882, -0.977216,
		0.965584, -0.165269, 0.200834,
		-0.182166, -0.980868, 0.068660,
		16.913021, 20.942381, 15.104526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.432907, 21.296501, 14.653126>,  <17.040537, 21.628988, 15.056464>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.432907, 21.296501, 14.653126> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166523, 21.002583, 14.704612>,  <17.006691, 20.826231, 14.735503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.166523, 21.002583, 14.704612>,  <17.432907, 21.296501, 14.653126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.166523, 21.002583, 14.704612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068795, -0.232304, -0.970207,
		0.742806, -0.637267, 0.205256,
		-0.665962, -0.734797, 0.128716,
		16.966734, 20.782145, 14.743227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.708145, 20.670641, 14.349866>,  <17.432907, 21.296501, 14.653126>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.708145, 20.670641, 14.349866> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310017, 20.648972, 14.381877>,  <17.071140, 20.635969, 14.401084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310017, 20.648972, 14.381877>,  <17.708145, 20.670641, 14.349866>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.310017, 20.648972, 14.381877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057329, -0.335660, -0.940237,
		0.077800, -0.940424, 0.330983,
		-0.995320, -0.054176, 0.080028,
		17.011421, 20.632719, 14.405885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.500647, 20.000412, 14.138945>,  <17.708145, 20.670641, 14.349866>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.500647, 20.000412, 14.138945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169899, 20.219345, 14.087226>,  <16.971451, 20.350704, 14.056194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.169899, 20.219345, 14.087226>,  <17.500647, 20.000412, 14.138945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.169899, 20.219345, 14.087226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010668, -0.245128, -0.969432,
		-0.562295, -0.800213, 0.208528,
		-0.826868, 0.547331, -0.129297,
		16.921839, 20.383545, 14.048437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.130175, 19.577824, 13.702651>,  <17.500647, 20.000412, 14.138945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.130175, 19.577824, 13.702651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971447, 19.941921, 13.655337>,  <16.876211, 20.160379, 13.626949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971447, 19.941921, 13.655337>,  <17.130175, 19.577824, 13.702651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.971447, 19.941921, 13.655337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102840, -0.172141, -0.979689,
		-0.912118, -0.376594, 0.161918,
		-0.396818, 0.910244, -0.118284,
		16.852402, 20.214994, 13.619852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.705467, 18.940681, 13.549877>,  <17.130175, 19.577824, 13.702651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.705467, 18.940681, 13.549877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649288, 18.556000, 13.455731>,  <16.615580, 18.325190, 13.399243>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.649288, 18.556000, 13.455731>,  <16.705467, 18.940681, 13.549877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.649288, 18.556000, 13.455731> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039259, -0.232125, 0.971893,
		-0.989309, 0.145742, -0.005153,
		-0.140450, -0.961705, -0.235365,
		16.607153, 18.267488, 13.385121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.312664, 18.671799, 14.052811>,  <16.705467, 18.940681, 13.549877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.312664, 18.671799, 14.052811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504971, 18.363640, 13.885312>,  <16.620354, 18.178743, 13.784813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504971, 18.363640, 13.885312>,  <16.312664, 18.671799, 14.052811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504971, 18.363640, 13.885312> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234489, -0.347206, 0.907999,
		-0.844913, -0.534727, 0.013725,
		0.480766, -0.770399, -0.418747,
		16.649200, 18.132521, 13.759688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.991458, 18.108358, 14.364592>,  <16.312664, 18.671799, 14.052811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.991458, 18.108358, 14.364592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350407, 17.996067, 14.228406>,  <16.565777, 17.928692, 14.146695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350407, 17.996067, 14.228406>,  <15.991458, 18.108358, 14.364592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350407, 17.996067, 14.228406> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214003, -0.397881, 0.892129,
		-0.385899, -0.873435, -0.296974,
		0.897377, -0.280719, -0.340460,
		16.619617, 17.911848, 14.126267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.040300, 17.394142, 14.539074>,  <15.991458, 18.108358, 14.364592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.040300, 17.394142, 14.539074> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412304, 17.536774, 14.503442>,  <16.635506, 17.622353, 14.482062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412304, 17.536774, 14.503442>,  <16.040300, 17.394142, 14.539074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.412304, 17.536774, 14.503442> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205480, -0.303490, 0.930415,
		0.304730, -0.883599, -0.355519,
		0.930009, 0.356577, -0.089080,
		16.691307, 17.643747, 14.476718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.563591, 16.769756, 14.581601>,  <16.040300, 17.394142, 14.539074>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.563591, 16.769756, 14.581601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744862, 17.114723, 14.671819>,  <16.853624, 17.321703, 14.725949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.744862, 17.114723, 14.671819>,  <16.563591, 16.769756, 14.581601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.744862, 17.114723, 14.671819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388971, -0.418967, 0.820468,
		0.802080, -0.284088, -0.525321,
		0.453177, 0.862416, 0.225543,
		16.880816, 17.373447, 14.739482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.968122, 16.586493, 15.026972>,  <16.563591, 16.769756, 14.581601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.968122, 16.586493, 15.026972> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017395, 16.980370, 15.076293>,  <17.046959, 17.216696, 15.105886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.017395, 16.980370, 15.076293>,  <16.968122, 16.586493, 15.026972>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017395, 16.980370, 15.076293> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270666, -0.152875, 0.950457,
		0.954760, -0.083703, -0.285355,
		0.123179, 0.984694, 0.123304,
		17.054348, 17.275778, 15.113284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.800945, 16.688717, 15.338923>,  <16.968122, 16.586493, 15.026972>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.800945, 16.688717, 15.338923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525707, 16.967148, 15.420896>,  <17.360563, 17.134207, 15.470079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.525707, 16.967148, 15.420896>,  <17.800945, 16.688717, 15.338923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.525707, 16.967148, 15.420896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190581, -0.099142, 0.976652,
		0.700144, 0.711087, -0.064440,
		-0.688096, 0.696079, 0.204934,
		17.319279, 17.175972, 15.482376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.152916, 17.258579, 15.641979>,  <17.800945, 16.688717, 15.338923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.152916, 17.258579, 15.641979> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771614, 17.296543, 15.756732>,  <17.542833, 17.319321, 15.825583>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.771614, 17.296543, 15.756732>,  <18.152916, 17.258579, 15.641979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.771614, 17.296543, 15.756732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299384, 0.167934, 0.939238,
		0.040964, 0.981219, -0.188498,
		-0.953253, 0.094908, 0.286882,
		17.485638, 17.325016, 15.842796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.213175, 17.451538, 16.309864>,  <18.152916, 17.258579, 15.641979>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.213175, 17.451538, 16.309864> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816200, 17.402439, 16.310673>,  <17.578016, 17.372980, 16.311159>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816200, 17.402439, 16.310673>,  <18.213175, 17.451538, 16.309864>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.816200, 17.402439, 16.310673> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016212, -0.114701, 0.993268,
		-0.121689, 0.985788, 0.115823,
		-0.992436, -0.122747, 0.002023,
		17.518469, 17.365614, 16.311279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.966602, 17.914318, 16.793129>,  <18.213175, 17.451538, 16.309864>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.966602, 17.914318, 16.793129> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694633, 17.622303, 16.765549>,  <17.531452, 17.447094, 16.749001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694633, 17.622303, 16.765549>,  <17.966602, 17.914318, 16.793129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694633, 17.622303, 16.765549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061767, -0.150711, 0.986646,
		-0.730680, 0.666583, 0.147564,
		-0.679921, -0.730037, -0.068949,
		17.490658, 17.403292, 16.744864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.438198, 18.166952, 17.231340>,  <17.966602, 17.914318, 16.793129>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.438198, 18.166952, 17.231340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410561, 17.771027, 17.181557>,  <17.393978, 17.533470, 17.151688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.410561, 17.771027, 17.181557>,  <17.438198, 18.166952, 17.231340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.410561, 17.771027, 17.181557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084290, -0.118518, 0.989368,
		-0.994043, 0.078852, -0.075243,
		-0.069096, -0.989816, -0.124458,
		17.389832, 17.474081, 17.144218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.953756, 18.082975, 17.662584>,  <17.438198, 18.166952, 17.231340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.953756, 18.082975, 17.662584> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093872, 17.709827, 17.628996>,  <17.177942, 17.485939, 17.608843>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.093872, 17.709827, 17.628996>,  <16.953756, 18.082975, 17.662584>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.093872, 17.709827, 17.628996> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156505, -0.146685, 0.976724,
		-0.923473, -0.328996, -0.197381,
		0.350291, -0.932869, -0.083970,
		17.198959, 17.429966, 17.603806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503748, 17.625389, 18.149643>,  <16.953756, 18.082975, 17.662584>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503748, 17.625389, 18.149643> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857944, 17.444393, 18.107388>,  <17.070463, 17.335796, 18.082033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.857944, 17.444393, 18.107388>,  <16.503748, 17.625389, 18.149643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.857944, 17.444393, 18.107388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039018, -0.298957, 0.953468,
		-0.463016, -0.840165, -0.282379,
		0.885491, -0.452490, -0.105640,
		17.123592, 17.308647, 18.075695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.447695, 17.121937, 18.628777>,  <16.503748, 17.625389, 18.149643>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.447695, 17.121937, 18.628777> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834297, 17.092655, 18.530386>,  <17.066259, 17.075087, 18.471352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834297, 17.092655, 18.530386>,  <16.447695, 17.121937, 18.628777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.834297, 17.092655, 18.530386> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223232, -0.233051, 0.946496,
		-0.126609, -0.969706, -0.208905,
		0.966508, -0.073201, -0.245976,
		17.124250, 17.070694, 18.456593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<23.480055, 20.429258, 18.223944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.081356, 20.452496, 18.201605>,  <22.842136, 20.466438, 18.188202>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<23.081356, 20.452496, 18.201605>,  <23.480055, 20.429258, 18.223944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.081356, 20.452496, 18.201605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055817, -0.002111, -0.998439,
		-0.058126, -0.998309, -0.001139,
		-0.996748, 0.058099, -0.055845,
		22.782331, 20.469923, 18.184851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.339424, 20.099083, 17.615927>,  <23.480055, 20.429258, 18.223944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.339424, 20.099083, 17.615927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.982552, 20.261963, 17.694103>,  <22.768427, 20.359692, 17.741009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.982552, 20.261963, 17.694103>,  <23.339424, 20.099083, 17.615927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.982552, 20.261963, 17.694103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239584, -0.059837, -0.969030,
		-0.382897, -0.911376, 0.150944,
		-0.892183, 0.407203, 0.195440,
		22.714897, 20.384123, 17.752735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.777115, 19.641464, 17.338709>,  <23.339424, 20.099083, 17.615927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.777115, 19.641464, 17.338709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.676613, 20.028622, 17.335722>,  <22.616312, 20.260916, 17.333929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.676613, 20.028622, 17.335722>,  <22.777115, 19.641464, 17.338709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.676613, 20.028622, 17.335722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218221, -0.064161, -0.973788,
		-0.943000, -0.243042, 0.227335,
		-0.251257, 0.967892, -0.007467,
		22.601236, 20.318989, 17.333483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029728, 19.743616, 17.000250>,  <22.777115, 19.641464, 17.338709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029728, 19.743616, 17.000250> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.212303, 20.099258, 16.986662>,  <22.321848, 20.312643, 16.978508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.212303, 20.099258, 16.986662>,  <22.029728, 19.743616, 17.000250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.212303, 20.099258, 16.986662> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365709, 0.152664, -0.918124,
		-0.811123, 0.431491, 0.394836,
		0.456439, 0.889106, -0.033971,
		22.349236, 20.365990, 16.976471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.565798, 20.096252, 16.543137>,  <22.029728, 19.743616, 17.000250>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.565798, 20.096252, 16.543137> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.919720, 20.282486, 16.550657>,  <22.132072, 20.394226, 16.555170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.919720, 20.282486, 16.550657>,  <21.565798, 20.096252, 16.543137>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919720, 20.282486, 16.550657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160303, 0.342034, -0.925914,
		-0.437523, 0.816237, 0.377267,
		0.884803, 0.465585, 0.018803,
		22.185162, 20.422161, 16.556297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.396261, 20.675097, 16.233105>,  <21.565798, 20.096252, 16.543137>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.396261, 20.675097, 16.233105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.792332, 20.631870, 16.197605>,  <22.029974, 20.605934, 16.176306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.792332, 20.631870, 16.197605>,  <21.396261, 20.675097, 16.233105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792332, 20.631870, 16.197605> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056703, 0.269843, -0.961233,
		0.127822, 0.956821, 0.261065,
		0.990175, -0.108064, -0.088747,
		22.089384, 20.599451, 16.170980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.610453, 21.232422, 15.943642>,  <21.396261, 20.675097, 16.233105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.610453, 21.232422, 15.943642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.927094, 21.005009, 15.854079>,  <22.117079, 20.868561, 15.800342>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.927094, 21.005009, 15.854079>,  <21.610453, 21.232422, 15.943642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927094, 21.005009, 15.854079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057849, 0.295060, -0.953726,
		0.608293, 0.767924, 0.200681,
		0.791602, -0.568535, -0.223907,
		22.164574, 20.834448, 15.786907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.994007, 21.643644, 15.456928>,  <21.610453, 21.232422, 15.943642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.994007, 21.643644, 15.456928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.124424, 21.267723, 15.416015>,  <22.202675, 21.042170, 15.391466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.124424, 21.267723, 15.416015>,  <21.994007, 21.643644, 15.456928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.124424, 21.267723, 15.416015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005138, 0.106434, -0.994306,
		0.945341, 0.324713, 0.029873,
		0.326043, -0.939805, -0.102285,
		22.222237, 20.985781, 15.385329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.537626, 21.654188, 15.016655>,  <21.994007, 21.643644, 15.456928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.537626, 21.654188, 15.016655> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.404152, 21.277489, 14.999848>,  <22.324068, 21.051470, 14.989764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.404152, 21.277489, 14.999848>,  <22.537626, 21.654188, 15.016655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.404152, 21.277489, 14.999848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119093, 0.002100, -0.992881,
		0.935132, -0.336312, 0.111455,
		-0.333684, -0.941748, -0.042016,
		22.304047, 20.994965, 14.987244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.821398, 21.306913, 14.453190>,  <22.537626, 21.654188, 15.016655>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.821398, 21.306913, 14.453190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.523930, 21.045185, 14.508067>,  <22.345449, 20.888149, 14.540994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.523930, 21.045185, 14.508067>,  <22.821398, 21.306913, 14.453190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.523930, 21.045185, 14.508067> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106293, -0.086879, -0.990532,
		0.660043, -0.751212, -0.004941,
		-0.743670, -0.654319, 0.137192,
		22.300829, 20.848890, 14.549225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.941233, 20.732546, 13.996842>,  <22.821398, 21.306913, 14.453190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.941233, 20.732546, 13.996842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.558674, 20.683121, 14.102700>,  <22.329138, 20.653465, 14.166215>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.558674, 20.683121, 14.102700>,  <22.941233, 20.732546, 13.996842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.558674, 20.683121, 14.102700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238072, -0.195084, -0.951454,
		0.169195, -0.972972, 0.157160,
		-0.956397, -0.123566, 0.264644,
		22.271755, 20.646051, 14.182094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.837069, 20.035362, 13.722659>,  <22.941233, 20.732546, 13.996842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.837069, 20.035362, 13.722659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.498985, 20.244324, 13.767776>,  <22.296135, 20.369699, 13.794846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.498985, 20.244324, 13.767776>,  <22.837069, 20.035362, 13.722659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.498985, 20.244324, 13.767776> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216689, -0.142051, -0.965851,
		-0.488541, -0.840784, 0.233261,
		-0.845206, 0.522402, 0.112791,
		22.245422, 20.401045, 13.801613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.347151, 19.598181, 13.463694>,  <22.837069, 20.035362, 13.722659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.347151, 19.598181, 13.463694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.139542, 19.938389, 13.497693>,  <22.014977, 20.142513, 13.518092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.139542, 19.938389, 13.497693>,  <22.347151, 19.598181, 13.463694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.139542, 19.938389, 13.497693> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527206, -0.240270, -0.815061,
		-0.672806, -0.467848, 0.573107,
		-0.519025, 0.850523, 0.084997,
		21.983833, 20.193546, 13.523192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.498859, 19.479895, 13.376679>,  <22.347151, 19.598181, 13.463694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.498859, 19.479895, 13.376679> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.632210, 19.841602, 13.269978>,  <21.712219, 20.058626, 13.205956>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.632210, 19.841602, 13.269978>,  <21.498859, 19.479895, 13.376679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.632210, 19.841602, 13.269978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561285, -0.036972, -0.826796,
		-0.757509, 0.425360, 0.495227,
		0.333377, 0.904269, -0.266755,
		21.732224, 20.112883, 13.189951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.853113, 19.106289, 13.310593>,  <21.498859, 19.479895, 13.376679>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.853113, 19.106289, 13.310593> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.979282, 18.733273, 13.240308>,  <21.054985, 18.509462, 13.198136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.979282, 18.733273, 13.240308>,  <20.853113, 19.106289, 13.310593>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.979282, 18.733273, 13.240308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374434, -0.047834, 0.926019,
		-0.871956, -0.357881, 0.334087,
		0.315424, -0.932541, -0.175712,
		21.073910, 18.453510, 13.187594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.651567, 18.732433, 13.868872>,  <20.853113, 19.106289, 13.310593>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.651567, 18.732433, 13.868872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.951481, 18.522907, 13.707160>,  <21.131428, 18.397190, 13.610133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.951481, 18.522907, 13.707160>,  <20.651567, 18.732433, 13.868872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.951481, 18.522907, 13.707160> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369523, -0.175355, 0.912526,
		-0.548890, -0.833586, 0.062085,
		0.749781, -0.523818, -0.404280,
		21.176416, 18.365763, 13.585876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.674999, 18.106358, 14.335629>,  <20.651567, 18.732433, 13.868872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.674999, 18.106358, 14.335629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.026909, 18.110863, 14.145524>,  <21.238054, 18.113565, 14.031461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.026909, 18.110863, 14.145524>,  <20.674999, 18.106358, 14.335629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.026909, 18.110863, 14.145524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443649, -0.378661, 0.812276,
		-0.170813, -0.925467, -0.338133,
		0.879772, 0.011265, -0.475262,
		21.290840, 18.114243, 14.002945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.947569, 17.430201, 14.385683>,  <20.674999, 18.106358, 14.335629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.947569, 17.430201, 14.385683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.264572, 17.667713, 14.330033>,  <21.454773, 17.810221, 14.296643>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.264572, 17.667713, 14.330033>,  <20.947569, 17.430201, 14.385683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.264572, 17.667713, 14.330033> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456677, -0.426599, 0.780679,
		0.404204, -0.682227, -0.609249,
		0.792506, 0.593783, -0.139124,
		21.502323, 17.845848, 14.288296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.414759, 17.007301, 14.561537>,  <20.947569, 17.430201, 14.385683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.414759, 17.007301, 14.561537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.584106, 17.369389, 14.576158>,  <21.685715, 17.586641, 14.584930>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.584106, 17.369389, 14.576158>,  <21.414759, 17.007301, 14.561537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.584106, 17.369389, 14.576158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374212, -0.211477, 0.902908,
		0.825060, -0.368584, -0.428277,
		0.423369, 0.905220, 0.036553,
		21.711117, 17.640955, 14.587124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.165329, 16.870764, 14.766664>,  <21.414759, 17.007301, 14.561537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.165329, 16.870764, 14.766664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.095928, 17.255856, 14.849660>,  <22.054287, 17.486910, 14.899458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.095928, 17.255856, 14.849660>,  <22.165329, 16.870764, 14.766664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.095928, 17.255856, 14.849660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159930, -0.180347, 0.970514,
		0.971761, 0.201571, -0.122678,
		-0.173502, 0.962728, 0.207491,
		22.043877, 17.544674, 14.911907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623198, 17.046383, 15.248904>,  <22.165329, 16.870764, 14.766664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623198, 17.046383, 15.248904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.362858, 17.346783, 15.293441>,  <22.206654, 17.527021, 15.320163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.362858, 17.346783, 15.293441>,  <22.623198, 17.046383, 15.248904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.362858, 17.346783, 15.293441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137156, -0.027934, 0.990156,
		0.746715, 0.659713, -0.084823,
		-0.650849, 0.750998, 0.111342,
		22.167603, 17.572083, 15.326843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956192, 17.637722, 15.635303>,  <22.623198, 17.046383, 15.248904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956192, 17.637722, 15.635303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.562012, 17.656963, 15.700509>,  <22.325504, 17.668509, 15.739634>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.562012, 17.656963, 15.700509>,  <22.956192, 17.637722, 15.635303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562012, 17.656963, 15.700509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163040, -0.003468, 0.986613,
		0.048025, 0.998836, -0.004426,
		-0.985450, 0.048104, 0.163017,
		22.266376, 17.671394, 15.749414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.022255, 18.113722, 16.136389>,  <22.956192, 17.637722, 15.635303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.022255, 18.113722, 16.136389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.655064, 17.956539, 16.157944>,  <22.434750, 17.862230, 16.170877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.655064, 17.956539, 16.157944>,  <23.022255, 18.113722, 16.136389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.655064, 17.956539, 16.157944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067343, -0.020521, 0.997519,
		-0.390876, 0.919328, 0.045301,
		-0.917976, -0.392957, 0.053889,
		22.379671, 17.838652, 16.174110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.727465, 18.492920, 16.683256>,  <23.022255, 18.113722, 16.136389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.727465, 18.492920, 16.683256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.521564, 18.152782, 16.639524>,  <22.398026, 17.948700, 16.613285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.521564, 18.152782, 16.639524>,  <22.727465, 18.492920, 16.683256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.521564, 18.152782, 16.639524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128670, -0.049452, 0.990454,
		-0.847630, 0.523903, -0.083958,
		-0.514749, -0.850341, -0.109328,
		22.367140, 17.897680, 16.606726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.023479, 18.701500, 17.028139>,  <22.727465, 18.492920, 16.683256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.023479, 18.701500, 17.028139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.165112, 18.327824, 17.010645>,  <22.250092, 18.103619, 17.000149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.165112, 18.327824, 17.010645>,  <22.023479, 18.701500, 17.028139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.165112, 18.327824, 17.010645> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034183, -0.059664, 0.997633,
		-0.934590, -0.351748, -0.053059,
		0.354081, -0.934191, -0.043737,
		22.271336, 18.047565, 16.997524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.726021, 18.346140, 17.625462>,  <22.023479, 18.701500, 17.028139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.726021, 18.346140, 17.625462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.030392, 18.098789, 17.546873>,  <22.213015, 17.950378, 17.499720>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.030392, 18.098789, 17.546873>,  <21.726021, 18.346140, 17.625462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030392, 18.098789, 17.546873> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143826, -0.134515, 0.980418,
		-0.632697, -0.774283, -0.013417,
		0.760926, -0.618378, -0.196470,
		22.258669, 17.913277, 17.487932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.628036, 17.864223, 18.169664>,  <21.726021, 18.346140, 17.625462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.628036, 17.864223, 18.169664> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.988663, 17.783634, 18.016518>,  <22.205038, 17.735281, 17.924629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.988663, 17.783634, 18.016518>,  <21.628036, 17.864223, 18.169664>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.988663, 17.783634, 18.016518> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317095, -0.294329, 0.901566,
		-0.294329, -0.934227, -0.201471,
		-0.901566, 0.201471, 0.382869,
		22.259132, 17.723192, 17.901657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.795946, 17.152699, 18.283821>,  <21.628036, 17.864223, 18.169664>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.795946, 17.152699, 18.283821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.107296, 17.403774, 18.279045>,  <22.294106, 17.554419, 18.276178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<22.107296, 17.403774, 18.279045>,  <21.795946, 17.152699, 18.283821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.107296, 17.403774, 18.279045> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218766, -0.253356, 0.942312,
		0.588452, -0.736083, -0.334522,
		0.778373, 0.627688, -0.011942,
		22.340809, 17.592081, 18.275463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.482481, 16.386358, 18.273256>,  <21.795946, 17.152699, 18.283821>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.482481, 16.386358, 18.273256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.134174, 16.236217, 18.400301>,  <20.925190, 16.146133, 18.476528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.134174, 16.236217, 18.400301>,  <21.482481, 16.386358, 18.273256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134174, 16.236217, 18.400301> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410821, 0.200460, -0.889405,
		0.270174, -0.904944, -0.328758,
		-0.870765, -0.375355, 0.317611,
		20.872944, 16.123611, 18.495584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353201, 15.826050, 17.793365>,  <21.482481, 16.386358, 18.273256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353201, 15.826050, 17.793365> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.017426, 15.970070, 17.956194>,  <20.815960, 16.056482, 18.053890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.017426, 15.970070, 17.956194>,  <21.353201, 15.826050, 17.793365>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017426, 15.970070, 17.956194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490889, -0.180966, -0.852220,
		-0.233181, -0.915211, 0.328656,
		-0.839437, 0.360055, 0.407069,
		20.765594, 16.078085, 18.078316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.915693, 15.276717, 17.739826>,  <21.353201, 15.826050, 17.793365>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.915693, 15.276717, 17.739826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.718876, 15.623543, 17.771057>,  <20.600786, 15.831638, 17.789797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.718876, 15.623543, 17.771057>,  <20.915693, 15.276717, 17.739826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.718876, 15.623543, 17.771057> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463747, -0.185149, -0.866406,
		-0.736772, -0.462517, 0.493199,
		-0.492043, 0.867063, 0.078078,
		20.571262, 15.883661, 17.794481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.204620, 15.094483, 17.669203>,  <20.915693, 15.276717, 17.739826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.204620, 15.094483, 17.669203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.185928, 15.480858, 17.567392>,  <20.174713, 15.712683, 17.506306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.185928, 15.480858, 17.567392>,  <20.204620, 15.094483, 17.669203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.185928, 15.480858, 17.567392> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609448, -0.229456, -0.758896,
		-0.791447, 0.119659, 0.599410,
		-0.046729, 0.965936, -0.254528,
		20.171909, 15.770638, 17.491034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.509684, 15.211964, 17.587105>,  <20.204620, 15.094483, 17.669203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.509684, 15.211964, 17.587105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.674671, 15.532906, 17.414549>,  <19.773663, 15.725471, 17.311016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.674671, 15.532906, 17.414549>,  <19.509684, 15.211964, 17.587105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.674671, 15.532906, 17.414549> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614845, -0.104227, -0.781731,
		-0.672188, 0.587676, 0.450333,
		0.412468, 0.802355, -0.431390,
		19.798412, 15.773612, 17.285131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.894257, 15.662540, 17.453966>,  <19.509684, 15.211964, 17.587105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.894257, 15.662540, 17.453966> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.188522, 15.761364, 17.201694>,  <19.365082, 15.820659, 17.050331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.188522, 15.761364, 17.201694>,  <18.894257, 15.662540, 17.453966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188522, 15.761364, 17.201694> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644587, -0.030707, -0.763914,
		-0.208099, 0.968514, 0.136661,
		0.735665, 0.247060, -0.630681,
		19.409222, 15.835482, 17.012489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.514284, 16.046356, 16.940920>,  <18.894257, 15.662540, 17.453966>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.514284, 16.046356, 16.940920> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.870373, 15.981972, 16.770462>,  <19.084026, 15.943341, 16.668188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.870373, 15.981972, 16.770462>,  <18.514284, 16.046356, 16.940920>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.870373, 15.981972, 16.770462> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441022, -0.070340, -0.894736,
		0.114043, 0.984451, -0.133605,
		0.890221, -0.160961, -0.426143,
		19.137440, 15.933683, 16.642618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.619291, 16.594355, 16.327271>,  <18.514284, 16.046356, 16.940920>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.619291, 16.594355, 16.327271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.890053, 16.312412, 16.242439>,  <19.052509, 16.143248, 16.191540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.890053, 16.312412, 16.242439>,  <18.619291, 16.594355, 16.327271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.890053, 16.312412, 16.242439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168383, 0.132200, -0.976817,
		0.716552, 0.696922, -0.029199,
		0.676905, -0.704856, -0.212078,
		19.093124, 16.100956, 16.178816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.139139, 16.873476, 15.883304>,  <18.619291, 16.594355, 16.327271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.139139, 16.873476, 15.883304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.131771, 16.478466, 15.820754>,  <19.127350, 16.241459, 15.783224>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.131771, 16.478466, 15.820754>,  <19.139139, 16.873476, 15.883304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.131771, 16.478466, 15.820754> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338373, 0.153328, -0.928436,
		0.940832, 0.035812, -0.336976,
		-0.018419, -0.987526, -0.156374,
		19.126245, 16.182209, 15.773842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.328806, 16.880737, 15.196426>,  <19.139139, 16.873476, 15.883304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.328806, 16.880737, 15.196426> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.223476, 16.508183, 15.296968>,  <19.160278, 16.284649, 15.357292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.223476, 16.508183, 15.296968>,  <19.328806, 16.880737, 15.196426>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.223476, 16.508183, 15.296968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229823, -0.192480, -0.954009,
		0.936932, -0.308980, -0.163369,
		-0.263324, -0.931387, 0.251352,
		19.144480, 16.228765, 15.372373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.700249, 16.435392, 14.782689>,  <19.328806, 16.880737, 15.196426>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.700249, 16.435392, 14.782689> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.395626, 16.215038, 14.919250>,  <19.212852, 16.082825, 15.001185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.395626, 16.215038, 14.919250>,  <19.700249, 16.435392, 14.782689>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.395626, 16.215038, 14.919250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279286, -0.196398, -0.939908,
		0.584833, -0.811142, -0.004287,
		-0.761557, -0.550887, 0.341401,
		19.167158, 16.049772, 15.021669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.745598, 15.676535, 14.588389>,  <19.700249, 16.435392, 14.782689>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.745598, 15.676535, 14.588389> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.358093, 15.755615, 14.648274>,  <19.125589, 15.803063, 14.684205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.358093, 15.755615, 14.648274>,  <19.745598, 15.676535, 14.588389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.358093, 15.755615, 14.648274> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196255, -0.242132, -0.950188,
		-0.151602, -0.949888, 0.273368,
		-0.968763, 0.197700, 0.149712,
		19.067465, 15.814926, 14.693188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.429598, 15.305853, 14.106287>,  <19.745598, 15.676535, 14.588389>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.429598, 15.305853, 14.106287> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.113777, 15.517147, 14.231235>,  <18.924284, 15.643924, 14.306203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.113777, 15.517147, 14.231235>,  <19.429598, 15.305853, 14.106287>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.113777, 15.517147, 14.231235> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444782, -0.141872, -0.884331,
		-0.422819, -0.837161, 0.346965,
		-0.789552, 0.528236, 0.312368,
		18.876911, 15.675617, 14.324945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.758469, 14.917357, 13.886858>,  <19.429598, 15.305853, 14.106287>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.758469, 14.917357, 13.886858> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.675423, 15.305542, 13.936011>,  <18.625595, 15.538453, 13.965503>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.675423, 15.305542, 13.936011>,  <18.758469, 14.917357, 13.886858>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.675423, 15.305542, 13.936011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279912, 0.061429, -0.958058,
		-0.937307, -0.233304, 0.258890,
		-0.207616, 0.970462, 0.122882,
		18.613138, 15.596681, 13.972876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<16.737473, 16.508659, 18.917786> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.041080, 16.767025, 18.885077>,  <17.223244, 16.922045, 18.865452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.041080, 16.767025, 18.885077>,  <16.737473, 16.508659, 18.917786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041080, 16.767025, 18.885077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253169, -0.177093, 0.951075,
		0.599832, -0.742585, -0.297942,
		0.759017, 0.645915, -0.081773,
		17.268785, 16.960800, 18.860544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.173376, 16.361097, 19.435869>,  <16.737473, 16.508659, 18.917786>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.173376, 16.361097, 19.435869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.327133, 16.710735, 19.317078>,  <17.419388, 16.920519, 19.245802>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.327133, 16.710735, 19.317078>,  <17.173376, 16.361097, 19.435869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.327133, 16.710735, 19.317078> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476308, 0.087786, 0.874885,
		0.790805, -0.477754, -0.382595,
		0.384393, 0.874097, -0.296980,
		17.442451, 16.972965, 19.227983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.901382, 16.233171, 19.521475>,  <17.173376, 16.361097, 19.435869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.901382, 16.233171, 19.521475> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.809265, 16.622189, 19.534904>,  <17.753994, 16.855598, 19.542963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.809265, 16.622189, 19.534904>,  <17.901382, 16.233171, 19.521475>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.809265, 16.622189, 19.534904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464186, 0.079463, 0.882166,
		0.855275, 0.218742, -0.469741,
		-0.230293, 0.972542, 0.033574,
		17.740177, 16.913952, 19.544977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.493248, 16.641226, 19.665625>,  <17.901382, 16.233171, 19.521475>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.493248, 16.641226, 19.665625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.169167, 16.836418, 19.795513>,  <17.974718, 16.953533, 19.873446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.169167, 16.836418, 19.795513>,  <18.493248, 16.641226, 19.665625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.169167, 16.836418, 19.795513> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451246, 0.165706, 0.876880,
		0.374093, 0.856981, -0.354455,
		-0.810205, 0.487981, 0.324720,
		17.926105, 16.982813, 19.892929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.781729, 17.010307, 20.135462>,  <18.493248, 16.641226, 19.665625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.781729, 17.010307, 20.135462> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.399059, 17.090176, 20.220230>,  <18.169458, 17.138096, 20.271091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.399059, 17.090176, 20.220230>,  <18.781729, 17.010307, 20.135462>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.399059, 17.090176, 20.220230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235941, 0.105113, 0.966066,
		0.170620, 0.974209, -0.147670,
		-0.956672, 0.199671, 0.211922,
		18.112059, 17.150078, 20.283806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.578585, 17.808403, 20.341675>,  <18.781729, 17.010307, 20.135462>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.578585, 17.808403, 20.341675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.315636, 17.549931, 20.496756>,  <18.157866, 17.394848, 20.589804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.315636, 17.549931, 20.496756>,  <18.578585, 17.808403, 20.341675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.315636, 17.549931, 20.496756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317931, 0.228636, 0.920133,
		-0.683214, 0.728133, 0.055142,
		-0.657372, -0.646180, 0.387703,
		18.118423, 17.356077, 20.613066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711622, 17.981251, 21.037109>,  <18.578585, 17.808403, 20.341675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711622, 17.981251, 21.037109> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.458775, 17.671459, 21.046989>,  <18.307066, 17.485584, 21.052917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.458775, 17.671459, 21.046989>,  <18.711622, 17.981251, 21.037109>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.458775, 17.671459, 21.046989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188706, -0.122945, 0.974307,
		-0.751543, 0.620538, 0.223864,
		-0.632118, -0.774479, 0.024701,
		18.269138, 17.439116, 21.054399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.262819, 18.098421, 21.583824>,  <18.711622, 17.981251, 21.037109>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.262819, 18.098421, 21.583824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.301670, 17.708153, 21.505205>,  <18.324982, 17.473991, 21.458035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.301670, 17.708153, 21.505205>,  <18.262819, 18.098421, 21.583824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.301670, 17.708153, 21.505205> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256464, -0.166275, 0.952144,
		-0.961661, -0.142887, 0.234074,
		0.097128, -0.975672, -0.196546,
		18.330809, 17.415451, 21.446241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.848835, 17.670187, 21.956768>,  <18.262819, 18.098421, 21.583824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.848835, 17.670187, 21.956768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.101746, 17.380493, 21.846704>,  <18.253492, 17.206676, 21.780666>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.101746, 17.380493, 21.846704>,  <17.848835, 17.670187, 21.956768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.101746, 17.380493, 21.846704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168596, -0.218030, 0.961269,
		-0.756178, -0.654177, -0.015752,
		0.632274, -0.724234, -0.275161,
		18.291428, 17.163223, 21.764156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.641623, 17.151138, 22.325706>,  <17.848835, 17.670187, 21.956768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.641623, 17.151138, 22.325706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.027874, 17.116707, 22.227604>,  <18.259624, 17.096048, 22.168743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.027874, 17.116707, 22.227604>,  <17.641623, 17.151138, 22.325706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.027874, 17.116707, 22.227604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225380, -0.192722, 0.955020,
		-0.129471, -0.977471, -0.166698,
		0.965630, -0.086077, -0.245254,
		18.317562, 17.090883, 22.154028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.819069, 16.524067, 22.646093>,  <17.641623, 17.151138, 22.325706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.819069, 16.524067, 22.646093> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.171638, 16.694786, 22.565159>,  <18.383181, 16.797218, 22.516598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.171638, 16.694786, 22.565159>,  <17.819069, 16.524067, 22.646093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.171638, 16.694786, 22.565159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299230, -0.173122, 0.938345,
		0.365455, -0.887622, -0.280304,
		0.881422, 0.426798, -0.202335,
		18.436066, 16.822826, 22.504459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311880, 16.101883, 22.915070>,  <17.819069, 16.524067, 22.646093>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311880, 16.101883, 22.915070> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.460323, 16.472942, 22.898335>,  <18.549389, 16.695578, 22.888292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.460323, 16.472942, 22.898335>,  <18.311880, 16.101883, 22.915070>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.460323, 16.472942, 22.898335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331073, -0.090081, 0.939296,
		0.867566, -0.362431, -0.340548,
		0.371106, 0.927647, -0.041840,
		18.571655, 16.751236, 22.885782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096708, 16.089214, 23.166315>,  <18.311880, 16.101883, 22.915070>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096708, 16.089214, 23.166315> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.917461, 16.442833, 23.219460>,  <18.809914, 16.655005, 23.251347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.917461, 16.442833, 23.219460>,  <19.096708, 16.089214, 23.166315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.917461, 16.442833, 23.219460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116353, -0.089680, 0.989151,
		0.886370, 0.458715, -0.062674,
		-0.448118, 0.884046, 0.132863,
		18.783026, 16.708046, 23.259319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.417744, 16.414944, 23.723757>,  <19.096708, 16.089214, 23.166315>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.417744, 16.414944, 23.723757> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.056656, 16.587036, 23.723423>,  <18.840004, 16.690290, 23.723223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.056656, 16.587036, 23.723423>,  <19.417744, 16.414944, 23.723757>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056656, 16.587036, 23.723423> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064443, -0.133294, 0.988979,
		0.425376, 0.892825, 0.148052,
		-0.902719, 0.430229, -0.000837,
		18.785841, 16.716105, 23.723171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.077368, 16.701132, 23.965628>,  <19.417744, 16.414944, 23.723757>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.077368, 16.701132, 23.965628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.377426, 16.450127, 24.049059>,  <20.557461, 16.299522, 24.099117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.377426, 16.450127, 24.049059>,  <20.077368, 16.701132, 23.965628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.377426, 16.450127, 24.049059> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290606, 0.029504, -0.956388,
		0.593993, 0.778046, 0.204492,
		0.750147, -0.627514, 0.208580,
		20.602470, 16.261873, 24.111633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.819424, 16.968508, 23.753687>,  <20.077368, 16.701132, 23.965628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.819424, 16.968508, 23.753687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.836079, 16.568863, 23.756361>,  <20.846071, 16.329077, 23.757965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.836079, 16.568863, 23.756361>,  <20.819424, 16.968508, 23.753687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.836079, 16.568863, 23.756361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346970, 0.008187, -0.937841,
		0.936952, 0.041369, 0.347002,
		0.041639, -0.999111, 0.006683,
		20.848570, 16.269131, 23.758366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.353975, 16.827297, 23.306519>,  <20.819424, 16.968508, 23.753687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.353975, 16.827297, 23.306519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.137810, 16.490757, 23.310225>,  <21.008110, 16.288834, 23.312449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.137810, 16.490757, 23.310225>,  <21.353975, 16.827297, 23.306519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137810, 16.490757, 23.310225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316447, -0.213440, -0.924286,
		0.779626, -0.496562, 0.381588,
		-0.540412, -0.841350, 0.009267,
		20.975687, 16.238352, 23.313005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.720331, 16.368614, 22.941433>,  <21.353975, 16.827297, 23.306519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.720331, 16.368614, 22.941433> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.377846, 16.161976, 22.943525>,  <21.172354, 16.037992, 22.944780>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.377846, 16.161976, 22.943525>,  <21.720331, 16.368614, 22.941433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.377846, 16.161976, 22.943525> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161478, -0.277229, -0.947137,
		0.490739, -0.810106, 0.320786,
		-0.856213, -0.516597, 0.005233,
		21.120981, 16.006996, 22.945095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.866919, 15.706883, 22.723091>,  <21.720331, 16.368614, 22.941433>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.866919, 15.706883, 22.723091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.481918, 15.758297, 22.627533>,  <21.250917, 15.789145, 22.570198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.481918, 15.758297, 22.627533>,  <21.866919, 15.706883, 22.723091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.481918, 15.758297, 22.627533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168349, -0.407531, -0.897539,
		-0.212720, -0.904100, 0.370611,
		-0.962501, 0.128532, -0.238895,
		21.193169, 15.796857, 22.555864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.764751, 15.314509, 22.137932>,  <21.866919, 15.706883, 22.723091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.764751, 15.314509, 22.137932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.415203, 15.508377, 22.153141>,  <21.205475, 15.624698, 22.162266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.415203, 15.508377, 22.153141>,  <21.764751, 15.314509, 22.137932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.415203, 15.508377, 22.153141> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202692, -0.292136, -0.934651,
		-0.441889, -0.824471, 0.353527,
		-0.873871, 0.484669, 0.038023,
		21.153042, 15.653777, 22.164547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.223166, 14.833713, 21.939873>,  <21.764751, 15.314509, 22.137932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.223166, 14.833713, 21.939873> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.107605, 15.208988, 21.863625>,  <21.038269, 15.434154, 21.817875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.107605, 15.208988, 21.863625>,  <21.223166, 14.833713, 21.939873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.107605, 15.208988, 21.863625> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085480, -0.223595, -0.970927,
		-0.953535, -0.264209, 0.144794,
		-0.288903, 0.938189, -0.190621,
		21.020935, 15.490445, 21.806438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675068, 14.706906, 21.424095>,  <21.223166, 14.833713, 21.939873>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675068, 14.706906, 21.424095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.795517, 15.086319, 21.384882>,  <20.867786, 15.313967, 21.361353>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.795517, 15.086319, 21.384882>,  <20.675068, 14.706906, 21.424095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.795517, 15.086319, 21.384882> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125058, -0.062637, -0.990170,
		-0.945349, 0.310423, 0.099760,
		0.301122, 0.948533, -0.098035,
		20.885853, 15.370879, 21.355471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.163219, 15.080792, 21.049519>,  <20.675068, 14.706906, 21.424095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.163219, 15.080792, 21.049519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.481247, 15.315933, 20.989796>,  <20.672064, 15.457018, 20.953962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.481247, 15.315933, 20.989796>,  <20.163219, 15.080792, 21.049519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.481247, 15.315933, 20.989796> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185404, 0.001174, -0.982662,
		-0.577484, 0.808968, 0.109924,
		0.795071, 0.587851, -0.149308,
		20.719769, 15.492289, 20.945004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.927094, 15.628583, 20.736700>,  <20.163219, 15.080792, 21.049519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.927094, 15.628583, 20.736700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.314827, 15.605648, 20.641113>,  <20.547466, 15.591887, 20.583761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.314827, 15.605648, 20.641113>,  <19.927094, 15.628583, 20.736700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314827, 15.605648, 20.641113> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235007, 0.068096, -0.969605,
		0.071868, 0.996030, 0.052533,
		0.969333, -0.057338, -0.238968,
		20.605627, 15.588447, 20.569424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.010641, 15.953500, 20.053526>,  <19.927094, 15.628583, 20.736700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.010641, 15.953500, 20.053526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.391880, 15.835621, 20.081108>,  <20.620625, 15.764894, 20.097656>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.391880, 15.835621, 20.081108>,  <20.010641, 15.953500, 20.053526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.391880, 15.835621, 20.081108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184253, 0.384228, -0.904666,
		0.240109, 0.874941, 0.420506,
		0.953099, -0.294698, 0.068954,
		20.677811, 15.747211, 20.101793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537180, 16.527731, 20.111240>,  <20.010641, 15.953500, 20.053526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537180, 16.527731, 20.111240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.687660, 16.196976, 19.944036>,  <20.777948, 15.998523, 19.843714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.687660, 16.196976, 19.944036>,  <20.537180, 16.527731, 20.111240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.687660, 16.196976, 19.944036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065881, 0.473881, -0.878121,
		0.924192, 0.302812, 0.232751,
		0.376202, -0.826887, -0.418008,
		20.800520, 15.948910, 19.818634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.948195, 16.767237, 19.574579>,  <20.537180, 16.527731, 20.111240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.948195, 16.767237, 19.574579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.919788, 16.381901, 19.471096>,  <20.902744, 16.150700, 19.409006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.919788, 16.381901, 19.471096>,  <20.948195, 16.767237, 19.574579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.919788, 16.381901, 19.471096> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018679, 0.260601, -0.965266,
		0.997300, -0.063718, -0.036501,
		-0.071017, -0.963342, -0.258707,
		20.898483, 16.092897, 19.393484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.324068, 16.712015, 19.036341>,  <20.948195, 16.767237, 19.574579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.324068, 16.712015, 19.036341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.053608, 16.418701, 19.007723>,  <20.891333, 16.242714, 18.990551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.053608, 16.418701, 19.007723>,  <21.324068, 16.712015, 19.036341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053608, 16.418701, 19.007723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120614, 0.205966, -0.971097,
		0.726825, -0.647977, -0.227708,
		-0.676149, -0.733283, -0.071546,
		20.850763, 16.198717, 18.986259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.906210, 17.124605, 18.986244>,  <21.324068, 16.712015, 19.036341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.906210, 17.124605, 18.986244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.151375, 17.401051, 18.833036>,  <22.298473, 17.566917, 18.741112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.151375, 17.401051, 18.833036>,  <21.906210, 17.124605, 18.986244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.151375, 17.401051, 18.833036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348691, 0.198416, 0.915994,
		0.709052, -0.694979, -0.119373,
		0.612911, 0.691112, -0.383020,
		22.335249, 17.608383, 18.718130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.670820, 17.032152, 19.109310>,  <21.906210, 17.124605, 18.986244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.670820, 17.032152, 19.109310> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.628727, 17.427647, 19.066736>,  <22.603472, 17.664944, 19.041193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.628727, 17.427647, 19.066736>,  <22.670820, 17.032152, 19.109310>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.628727, 17.427647, 19.066736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287219, 0.132685, 0.948630,
		0.952066, 0.069259, -0.297947,
		-0.105234, 0.988735, -0.106433,
		22.597157, 17.724268, 19.034807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.275450, 17.322330, 19.338821>,  <22.670820, 17.032152, 19.109310>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.275450, 17.322330, 19.338821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.008518, 17.618622, 19.369802>,  <22.848360, 17.796396, 19.388391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.008518, 17.618622, 19.369802>,  <23.275450, 17.322330, 19.338821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.008518, 17.618622, 19.369802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236255, 0.111918, 0.965224,
		0.706299, 0.662419, -0.249686,
		-0.667327, 0.740726, 0.077452,
		22.808319, 17.840839, 19.393038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.567820, 17.756134, 19.773294>,  <23.275450, 17.322330, 19.338821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.567820, 17.756134, 19.773294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.179955, 17.850121, 19.800257>,  <22.947235, 17.906511, 19.816435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.179955, 17.850121, 19.800257>,  <23.567820, 17.756134, 19.773294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.179955, 17.850121, 19.800257> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088959, 0.082361, 0.992624,
		0.227681, 0.968508, -0.100765,
		-0.969664, 0.234965, 0.067406,
		22.889055, 17.920610, 19.820478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.612869, 18.328033, 20.293678>,  <23.567820, 17.756134, 19.773294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.612869, 18.328033, 20.293678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.237209, 18.193142, 20.267532>,  <23.011814, 18.112207, 20.251844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.237209, 18.193142, 20.267532>,  <23.612869, 18.328033, 20.293678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.237209, 18.193142, 20.267532> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049143, -0.056424, 0.997197,
		-0.339973, 0.939730, 0.036418,
		-0.939150, -0.337231, -0.065364,
		22.955463, 18.091972, 20.247923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.244167, 18.794401, 20.810467>,  <23.612869, 18.328033, 20.293678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.244167, 18.794401, 20.810467> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.027401, 18.464344, 20.746634>,  <22.897341, 18.266310, 20.708334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.027401, 18.464344, 20.746634>,  <23.244167, 18.794401, 20.810467>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.027401, 18.464344, 20.746634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225416, -0.040220, 0.973432,
		-0.809640, 0.563489, -0.164205,
		-0.541914, -0.825144, -0.159583,
		22.864826, 18.216801, 20.698759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.588726, 18.994577, 21.051426>,  <23.244167, 18.794401, 20.810467>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.588726, 18.994577, 21.051426> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.599819, 18.595207, 21.070927>,  <22.606474, 18.355585, 21.082626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.599819, 18.595207, 21.070927>,  <22.588726, 18.994577, 21.051426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.599819, 18.595207, 21.070927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082847, 0.046307, 0.995486,
		-0.996176, -0.031645, -0.081432,
		0.027732, -0.998426, 0.048752,
		22.608139, 18.295679, 21.085552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.027691, 19.626253, 20.839268>,  <22.588726, 18.994577, 21.051426>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.027691, 19.626253, 20.839268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.159458, 20.001457, 20.882381>,  <22.238518, 20.226580, 20.908249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.159458, 20.001457, 20.882381>,  <22.027691, 19.626253, 20.839268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.159458, 20.001457, 20.882381> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002293, 0.114950, -0.993369,
		-0.944181, 0.326986, 0.040018,
		0.329418, 0.938012, 0.107784,
		22.258284, 20.282862, 20.914717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.634426, 19.993996, 20.335045>,  <22.027691, 19.626253, 20.839268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.634426, 19.993996, 20.335045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.951202, 20.227547, 20.406500>,  <22.141268, 20.367678, 20.449373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.951202, 20.227547, 20.406500>,  <21.634426, 19.993996, 20.335045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.951202, 20.227547, 20.406500> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052413, 0.226479, -0.972605,
		-0.608342, 0.779610, 0.148756,
		0.791943, 0.583879, 0.178639,
		22.188786, 20.402710, 20.460091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.503031, 20.642244, 19.926306>,  <21.634426, 19.993996, 20.335045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.503031, 20.642244, 19.926306> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.895367, 20.597031, 19.989777>,  <22.130768, 20.569902, 20.027859>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.895367, 20.597031, 19.989777>,  <21.503031, 20.642244, 19.926306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.895367, 20.597031, 19.989777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175810, 0.162608, -0.970901,
		0.083941, 0.980195, 0.179364,
		0.980839, -0.113033, 0.158679,
		22.189619, 20.563120, 20.037380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.695656, 21.135592, 19.513681>,  <21.503031, 20.642244, 19.926306>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.695656, 21.135592, 19.513681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.996777, 20.882904, 19.587679>,  <22.177448, 20.731293, 19.632078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<21.996777, 20.882904, 19.587679>,  <21.695656, 21.135592, 19.513681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.996777, 20.882904, 19.587679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264231, 0.032603, -0.963908,
		0.602885, 0.774514, 0.191463,
		0.752802, -0.631716, 0.184994,
		22.222618, 20.693390, 19.643177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.290541, 21.511143, 19.192236>,  <21.695656, 21.135592, 19.513681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.290541, 21.511143, 19.192236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.366390, 21.122013, 19.245380>,  <22.411900, 20.888535, 19.277267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.366390, 21.122013, 19.245380>,  <22.290541, 21.511143, 19.192236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366390, 21.122013, 19.245380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485474, -0.024720, -0.873901,
		0.853439, 0.230212, 0.467595,
		0.189624, -0.972826, 0.132859,
		22.423277, 20.830166, 19.285238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.957308, 21.464334, 18.959970>,  <22.290541, 21.511143, 19.192236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.957308, 21.464334, 18.959970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.758564, 21.117565, 18.944094>,  <22.639318, 20.909504, 18.934566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<22.758564, 21.117565, 18.944094>,  <22.957308, 21.464334, 18.959970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.758564, 21.117565, 18.944094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247322, -0.097609, -0.964004,
		0.831843, -0.488791, 0.262907,
		-0.496859, -0.866923, -0.039693,
		22.609507, 20.857489, 18.932186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.428392, 21.036282, 18.595972>,  <22.957308, 21.464334, 18.959970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.428392, 21.036282, 18.595972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.075668, 20.848942, 18.573845>,  <22.864035, 20.736538, 18.560570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<23.075668, 20.848942, 18.573845>,  <23.428392, 21.036282, 18.595972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.075668, 20.848942, 18.573845> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115017, -0.099822, -0.988335,
		0.457367, -0.877885, 0.141893,
		-0.881809, -0.468352, -0.055316,
		22.811125, 20.708437, 18.557251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<18.311413, 19.938789, 23.205065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.370602, 19.563038, 23.081345>,  <18.406115, 19.337585, 23.007113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.370602, 19.563038, 23.081345>,  <18.311413, 19.938789, 23.205065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.370602, 19.563038, 23.081345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219791, 0.336159, -0.915800,
		0.964259, 0.067531, 0.256210,
		0.147972, -0.939381, -0.309302,
		18.414993, 19.281223, 22.988554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.955034, 19.935612, 22.854029>,  <18.311413, 19.938789, 23.205065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.955034, 19.935612, 22.854029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.776073, 19.595718, 22.742470>,  <18.668697, 19.391783, 22.675535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.776073, 19.595718, 22.742470>,  <18.955034, 19.935612, 22.854029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.776073, 19.595718, 22.742470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322694, 0.137461, -0.936468,
		0.834087, -0.508974, 0.212705,
		-0.447400, -0.849735, -0.278898,
		18.641853, 19.340797, 22.658800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.460188, 19.500433, 22.541330>,  <18.955034, 19.935612, 22.854029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.460188, 19.500433, 22.541330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.095142, 19.408371, 22.406178>,  <18.876114, 19.353134, 22.325087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.095142, 19.408371, 22.406178>,  <19.460188, 19.500433, 22.541330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.095142, 19.408371, 22.406178> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283604, 0.238857, -0.928717,
		0.294456, -0.943385, -0.152711,
		-0.912614, -0.230156, -0.337881,
		18.821358, 19.339325, 22.304813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537960, 19.093691, 21.969830>,  <19.460188, 19.500433, 22.541330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537960, 19.093691, 21.969830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.162880, 19.227383, 21.931873>,  <18.937832, 19.307598, 21.909100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.162880, 19.227383, 21.931873>,  <19.537960, 19.093691, 21.969830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.162880, 19.227383, 21.931873> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149477, 0.141541, -0.978582,
		-0.313641, -0.931803, -0.182684,
		-0.937702, 0.334231, -0.094890,
		18.881569, 19.327652, 21.903406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.501059, 19.004959, 21.347092>,  <19.537960, 19.093691, 21.969830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.501059, 19.004959, 21.347092> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.188324, 19.245358, 21.413464>,  <19.000683, 19.389597, 21.453287>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.188324, 19.245358, 21.413464>,  <19.501059, 19.004959, 21.347092>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.188324, 19.245358, 21.413464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047970, 0.207363, -0.977087,
		-0.621634, -0.771883, -0.133294,
		-0.781837, 0.600996, 0.165931,
		18.953773, 19.425655, 21.463243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.926304, 18.807772, 20.935987>,  <19.501059, 19.004959, 21.347092>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.926304, 18.807772, 20.935987> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.862968, 19.193726, 21.019825>,  <18.824966, 19.425297, 21.070127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.862968, 19.193726, 21.019825>,  <18.926304, 18.807772, 20.935987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.862968, 19.193726, 21.019825> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118237, 0.192217, -0.974204,
		-0.980280, -0.179036, 0.083649,
		-0.158339, 0.964883, 0.209595,
		18.815466, 19.483191, 21.082703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.265581, 18.989594, 20.474060>,  <18.926304, 18.807772, 20.935987>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.265581, 18.989594, 20.474060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.410809, 19.345741, 20.583912>,  <18.497946, 19.559431, 20.649822>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.410809, 19.345741, 20.583912>,  <18.265581, 18.989594, 20.474060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.410809, 19.345741, 20.583912> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117534, 0.336149, -0.934446,
		-0.924320, 0.306989, 0.226694,
		0.363068, 0.890372, 0.274627,
		18.519730, 19.612852, 20.666300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.846331, 19.489454, 20.253607>,  <18.265581, 18.989594, 20.474060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.846331, 19.489454, 20.253607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.167110, 19.719898, 20.316822>,  <18.359577, 19.858164, 20.354752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.167110, 19.719898, 20.316822>,  <17.846331, 19.489454, 20.253607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.167110, 19.719898, 20.316822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161312, 0.463552, -0.871263,
		-0.575202, 0.673214, 0.464678,
		0.801948, 0.576110, 0.158038,
		18.407696, 19.892731, 20.364233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638025, 20.209625, 20.248756>,  <17.846331, 19.489454, 20.253607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638025, 20.209625, 20.248756> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.024689, 20.210400, 20.146328>,  <18.256687, 20.210865, 20.084871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.024689, 20.210400, 20.146328>,  <17.638025, 20.209625, 20.248756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.024689, 20.210400, 20.146328> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222088, 0.504155, -0.834569,
		0.127483, 0.863611, 0.487774,
		0.966657, 0.001936, -0.256069,
		18.314686, 20.210981, 20.069508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.749952, 20.884190, 20.096025>,  <17.638025, 20.209625, 20.248756>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.749952, 20.884190, 20.096025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.021873, 20.668034, 19.897694>,  <18.185026, 20.538340, 19.778694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.021873, 20.668034, 19.897694>,  <17.749952, 20.884190, 20.096025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.021873, 20.668034, 19.897694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185366, 0.527521, -0.829072,
		0.709581, 0.655517, 0.258442,
		0.679805, -0.540388, -0.495829,
		18.225815, 20.505917, 19.748945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851404, 21.294563, 19.575525>,  <17.749952, 20.884190, 20.096025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851404, 21.294563, 19.575525> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.041126, 20.964180, 19.453657>,  <18.154961, 20.765949, 19.380535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.041126, 20.964180, 19.453657>,  <17.851404, 21.294563, 19.575525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041126, 20.964180, 19.453657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044713, 0.323029, -0.945332,
		0.879223, 0.462001, 0.116283,
		0.474307, -0.825959, -0.304672,
		18.183418, 20.716393, 19.362255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.285233, 21.595480, 19.191063>,  <17.851404, 21.294563, 19.575525>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.285233, 21.595480, 19.191063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.250309, 21.214668, 19.073748>,  <18.229355, 20.986181, 19.003357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.250309, 21.214668, 19.073748>,  <18.285233, 21.595480, 19.191063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.250309, 21.214668, 19.073748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039892, 0.297520, -0.953882,
		0.995382, -0.071583, -0.063955,
		-0.087309, -0.952028, -0.293291,
		18.224115, 20.929060, 18.985760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.927151, 21.778717, 19.299829>,  <18.285233, 21.595480, 19.191063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.927151, 21.778717, 19.299829> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.270927, 21.973667, 19.238087>,  <19.477194, 22.090637, 19.201040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.270927, 21.973667, 19.238087>,  <18.927151, 21.778717, 19.299829>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.270927, 21.973667, 19.238087> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194295, -0.032114, 0.980417,
		0.472876, -0.872601, -0.122295,
		0.859441, 0.487377, -0.154356,
		19.528759, 22.119881, 19.191780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.577742, 21.339340, 19.583515>,  <18.927151, 21.778717, 19.299829>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.577742, 21.339340, 19.583515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.669914, 21.728058, 19.563457>,  <19.725218, 21.961288, 19.551424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.669914, 21.728058, 19.563457>,  <19.577742, 21.339340, 19.583515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.669914, 21.728058, 19.563457> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291321, -0.019729, 0.956422,
		0.928457, -0.234999, -0.287650,
		0.230433, 0.971795, -0.050142,
		19.739044, 22.019596, 19.548414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.355791, 21.417599, 19.778959>,  <19.577742, 21.339340, 19.583515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.355791, 21.417599, 19.778959> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.190914, 21.776566, 19.841877>,  <20.091988, 21.991945, 19.879627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.190914, 21.776566, 19.841877>,  <20.355791, 21.417599, 19.778959>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.190914, 21.776566, 19.841877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306471, -0.026013, 0.951524,
		0.858005, 0.440418, -0.264309,
		-0.412193, 0.897416, 0.157295,
		20.067257, 22.045790, 19.889065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.830414, 21.692232, 20.069803>,  <20.355791, 21.417599, 19.778959>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.830414, 21.692232, 20.069803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.526596, 21.933487, 20.167223>,  <20.344305, 22.078239, 20.225674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.526596, 21.933487, 20.167223>,  <20.830414, 21.692232, 20.069803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.526596, 21.933487, 20.167223> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331409, 0.036658, 0.942775,
		0.559695, 0.796795, -0.227728,
		-0.759546, 0.603137, 0.243548,
		20.298733, 22.114428, 20.240288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127335, 22.230095, 20.459648>,  <20.830414, 21.692232, 20.069803>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127335, 22.230095, 20.459648> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.744045, 22.301708, 20.548874>,  <20.514072, 22.344677, 20.602409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.744045, 22.301708, 20.548874>,  <21.127335, 22.230095, 20.459648>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744045, 22.301708, 20.548874> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243027, 0.098373, 0.965018,
		0.150826, 0.978913, -0.137773,
		-0.958222, 0.179033, 0.223065,
		20.456579, 22.355417, 20.615793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103825, 22.825155, 20.984554>,  <21.127335, 22.230095, 20.459648>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103825, 22.825155, 20.984554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.767193, 22.610977, 21.012953>,  <20.565212, 22.482471, 21.029991>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.767193, 22.610977, 21.012953>,  <21.103825, 22.825155, 20.984554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767193, 22.610977, 21.012953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084982, -0.001460, 0.996381,
		-0.533402, 0.844570, 0.046731,
		-0.841582, -0.535443, 0.070994,
		20.514719, 22.450344, 21.034250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.737825, 23.116377, 21.495792>,  <21.103825, 22.825155, 20.984554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.737825, 23.116377, 21.495792> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.547264, 22.765156, 21.477621>,  <20.432926, 22.554424, 21.466719>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.547264, 22.765156, 21.477621>,  <20.737825, 23.116377, 21.495792>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.547264, 22.765156, 21.477621> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001620, -0.050790, 0.998708,
		-0.879224, 0.475863, 0.022774,
		-0.476405, -0.878052, -0.045427,
		20.404343, 22.501740, 21.463993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297543, 23.133179, 22.147175>,  <20.737825, 23.116377, 21.495792>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297543, 23.133179, 22.147175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.277985, 22.753429, 22.023048>,  <20.266251, 22.525579, 21.948572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.277985, 22.753429, 22.023048>,  <20.297543, 23.133179, 22.147175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.277985, 22.753429, 22.023048> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082212, -0.305807, 0.948538,
		-0.995415, 0.071888, -0.063098,
		-0.048893, -0.949376, -0.310315,
		20.263317, 22.468616, 21.929955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.719406, 22.827795, 22.472422>,  <20.297543, 23.133179, 22.147175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.719406, 22.827795, 22.472422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.984180, 22.542301, 22.380840>,  <20.143045, 22.371004, 22.325891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.984180, 22.542301, 22.380840>,  <19.719406, 22.827795, 22.472422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.984180, 22.542301, 22.380840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050226, -0.262529, 0.963616,
		-0.747875, -0.649352, -0.137929,
		0.661937, -0.713736, -0.228953,
		20.182762, 22.328180, 22.312155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.456556, 22.251348, 22.812010>,  <19.719406, 22.827795, 22.472422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.456556, 22.251348, 22.812010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.842384, 22.174633, 22.739542>,  <20.073881, 22.128603, 22.696062>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.842384, 22.174633, 22.739542>,  <19.456556, 22.251348, 22.812010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.842384, 22.174633, 22.739542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133760, -0.236389, 0.962408,
		-0.227405, -0.952542, -0.202360,
		0.964570, -0.191789, -0.181168,
		20.131756, 22.117096, 22.685192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.630260, 21.629547, 23.096754>,  <19.456556, 22.251348, 22.812010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.630260, 21.629547, 23.096754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.994923, 21.785049, 23.043451>,  <20.213720, 21.878351, 23.011471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.994923, 21.785049, 23.043451>,  <19.630260, 21.629547, 23.096754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.994923, 21.785049, 23.043451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266457, -0.312300, 0.911849,
		0.312872, -0.866797, -0.388296,
		0.911653, 0.388756, -0.133255,
		20.268419, 21.901676, 23.003475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.056290, 21.173122, 23.370621>,  <19.630260, 21.629547, 23.096754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.056290, 21.173122, 23.370621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.230999, 21.532951, 23.371099>,  <20.335825, 21.748848, 23.371387>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.230999, 21.532951, 23.371099>,  <20.056290, 21.173122, 23.370621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.230999, 21.532951, 23.371099> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371312, -0.181497, 0.910597,
		0.819365, -0.397277, -0.413294,
		0.436771, 0.899572, 0.001199,
		20.362030, 21.802822, 23.371460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.774311, 20.983204, 23.592630>,  <20.056290, 21.173122, 23.370621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.774311, 20.983204, 23.592630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.690453, 21.369144, 23.656013>,  <20.640139, 21.600710, 23.694044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<20.690453, 21.369144, 23.656013>,  <20.774311, 20.983204, 23.592630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.690453, 21.369144, 23.656013> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403272, -0.062312, 0.912956,
		0.890741, 0.255299, -0.376035,
		-0.209645, 0.964852, 0.158458,
		20.627560, 21.658600, 23.703550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343771, 21.241728, 23.931141>,  <20.774311, 20.983204, 23.592630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343771, 21.241728, 23.931141> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.053040, 21.499844, 24.025225>,  <20.878601, 21.654713, 24.081675>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.053040, 21.499844, 24.025225>,  <21.343771, 21.241728, 23.931141>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.053040, 21.499844, 24.025225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232379, -0.091216, 0.968338,
		0.646312, 0.758475, -0.083652,
		-0.726830, 0.645287, 0.235208,
		20.834991, 21.693430, 24.095787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.573072, 21.656000, 23.404453>,  <21.343771, 21.241728, 23.931141>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.573072, 21.656000, 23.404453> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.881229, 21.434246, 23.530405>,  <22.066124, 21.301193, 23.605976>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<21.881229, 21.434246, 23.530405>,  <21.573072, 21.656000, 23.404453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.881229, 21.434246, 23.530405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174445, -0.291741, -0.940455,
		0.613238, 0.779450, -0.128046,
		0.770394, -0.554386, 0.314879,
		22.112349, 21.267931, 23.624868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.200079, 21.792572, 22.959963>,  <21.573072, 21.656000, 23.404453>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.200079, 21.792572, 22.959963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.232029, 21.428661, 23.122898>,  <22.251200, 21.210316, 23.220659>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.232029, 21.428661, 23.122898>,  <22.200079, 21.792572, 22.959963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.232029, 21.428661, 23.122898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200152, -0.385685, -0.900659,
		0.976504, 0.153471, 0.151287,
		0.079876, -0.909777, 0.407340,
		22.255991, 21.155727, 23.245100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.809422, 21.466097, 22.595350>,  <22.200079, 21.792572, 22.959963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.809422, 21.466097, 22.595350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.565788, 21.186554, 22.745344>,  <22.419609, 21.018827, 22.835340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.565788, 21.186554, 22.745344>,  <22.809422, 21.466097, 22.595350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.565788, 21.186554, 22.745344> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164871, -0.574048, -0.802052,
		0.775781, -0.426692, 0.464864,
		-0.609083, -0.698859, 0.374986,
		22.383064, 20.976896, 22.857840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.163166, 20.909525, 22.525433>,  <22.809422, 21.466097, 22.595350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.163166, 20.909525, 22.525433> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.770641, 20.832691, 22.520834>,  <22.535128, 20.786591, 22.518076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.770641, 20.832691, 22.520834>,  <23.163166, 20.909525, 22.525433>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.770641, 20.832691, 22.520834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098742, -0.451378, -0.886853,
		0.165164, -0.871413, 0.461910,
		-0.981311, -0.192086, -0.011494,
		22.476248, 20.775066, 22.517385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.143253, 20.126177, 22.328377>,  <23.163166, 20.909525, 22.525433>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.143253, 20.126177, 22.328377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.802616, 20.320686, 22.250069>,  <22.598234, 20.437393, 22.203083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.802616, 20.320686, 22.250069>,  <23.143253, 20.126177, 22.328377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802616, 20.320686, 22.250069> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002613, -0.377397, -0.926048,
		-0.524199, -0.788103, 0.322658,
		-0.851592, 0.486277, -0.195772,
		22.547138, 20.466568, 22.191338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875259, 19.739386, 21.899271>,  <23.143253, 20.126177, 22.328377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875259, 19.739386, 21.899271> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.652206, 20.066212, 21.840689>,  <22.518373, 20.262308, 21.805538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.652206, 20.066212, 21.840689>,  <22.875259, 19.739386, 21.899271>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.652206, 20.066212, 21.840689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119030, -0.253320, -0.960032,
		-0.821509, -0.517913, 0.238514,
		-0.557633, 0.817065, -0.146457,
		22.484917, 20.311331, 21.796751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437691, 19.589060, 21.423637>,  <22.875259, 19.739386, 21.899271>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437691, 19.589060, 21.423637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.415226, 19.985237, 21.373243>,  <22.401747, 20.222942, 21.343008>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.415226, 19.985237, 21.373243>,  <22.437691, 19.589060, 21.423637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.415226, 19.985237, 21.373243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081813, -0.130324, -0.988090,
		-0.995064, -0.045185, 0.088350,
		-0.056161, 0.990441, -0.125984,
		22.398378, 20.282370, 21.335447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287231, 18.886656, 21.697298>,  <22.437691, 19.589060, 21.423637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287231, 18.886656, 21.697298> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.465038, 18.537785, 21.615612>,  <22.571722, 18.328461, 21.566601>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.465038, 18.537785, 21.615612>,  <22.287231, 18.886656, 21.697298>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.465038, 18.537785, 21.615612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028501, -0.241634, 0.969948,
		-0.895316, -0.425340, -0.132269,
		0.444519, -0.872180, -0.204216,
		22.598394, 18.276131, 21.554348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.965193, 18.413443, 22.062431>,  <22.287231, 18.886656, 21.697298>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.965193, 18.413443, 22.062431> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.293427, 18.202209, 21.975008>,  <22.490368, 18.075470, 21.922554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.293427, 18.202209, 21.975008>,  <21.965193, 18.413443, 22.062431>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.293427, 18.202209, 21.975008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029759, -0.421372, 0.906400,
		-0.570748, -0.737274, -0.361487,
		0.820586, -0.528084, -0.218557,
		22.539602, 18.043785, 21.909441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.897579, 17.741032, 22.232222>,  <21.965193, 18.413443, 22.062431>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.897579, 17.741032, 22.232222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.294849, 17.786892, 22.223684>,  <22.533213, 17.814407, 22.218563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.294849, 17.786892, 22.223684>,  <21.897579, 17.741032, 22.232222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.294849, 17.786892, 22.223684> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069180, -0.431890, 0.899269,
		0.093885, -0.894610, -0.436874,
		0.993177, 0.114651, -0.021342,
		22.592802, 17.821287, 22.217281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.162752, 17.055189, 22.508688>,  <21.897579, 17.741032, 22.232222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.162752, 17.055189, 22.508688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.476826, 17.299583, 22.549061>,  <22.665270, 17.446220, 22.573284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.476826, 17.299583, 22.549061>,  <22.162752, 17.055189, 22.508688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.476826, 17.299583, 22.549061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094738, -0.279585, 0.955436,
		0.611975, -0.740629, -0.277408,
		0.785182, 0.610984, 0.100933,
		22.712379, 17.482878, 22.579340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.509712, 16.634544, 22.950233>,  <22.162752, 17.055189, 22.508688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.509712, 16.634544, 22.950233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.683952, 16.992462, 22.989420>,  <22.788496, 17.207212, 23.012932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<22.683952, 16.992462, 22.989420>,  <22.509712, 16.634544, 22.950233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.683952, 16.992462, 22.989420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168290, -0.187870, 0.967669,
		0.884268, -0.405032, -0.232421,
		0.435602, 0.894792, 0.097965,
		22.814632, 17.260900, 23.018810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.115988, 16.540518, 23.283054>,  <22.509712, 16.634544, 22.950233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.115988, 16.540518, 23.283054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.025265, 16.922356, 23.360315>,  <22.970831, 17.151459, 23.406672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.025265, 16.922356, 23.360315>,  <23.115988, 16.540518, 23.283054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.025265, 16.922356, 23.360315> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095649, -0.175531, 0.979816,
		0.969231, 0.240706, -0.051494,
		-0.226809, 0.954594, 0.193153,
		22.957222, 17.208735, 23.418261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.648159, 16.777058, 23.720932>,  <23.115988, 16.540518, 23.283054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.648159, 16.777058, 23.720932> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.359680, 17.049614, 23.770864>,  <23.186592, 17.213148, 23.800825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.359680, 17.049614, 23.770864>,  <23.648159, 16.777058, 23.720932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.359680, 17.049614, 23.770864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148347, -0.024109, 0.988641,
		0.676659, 0.731525, -0.083695,
		-0.721198, 0.681389, 0.124833,
		23.143320, 17.254030, 23.808315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.863855, 17.203411, 24.185722>,  <23.648159, 16.777058, 23.720932>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.863855, 17.203411, 24.185722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.467930, 17.260220, 24.189638>,  <23.230373, 17.294306, 24.191988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.467930, 17.260220, 24.189638>,  <23.863855, 17.203411, 24.185722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.467930, 17.260220, 24.189638> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003328, -0.045682, 0.998951,
		0.142322, 0.988809, 0.044744,
		-0.989815, 0.142023, 0.009792,
		23.170986, 17.302826, 24.192575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.753307, 17.806467, 24.562687>,  <23.863855, 17.203411, 24.185722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.753307, 17.806467, 24.562687> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.398003, 17.626499, 24.599695>,  <23.184820, 17.518518, 24.621901>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<23.398003, 17.626499, 24.599695>,  <23.753307, 17.806467, 24.562687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.398003, 17.626499, 24.599695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061863, 0.082408, 0.994677,
		-0.455149, 0.889259, -0.045367,
		-0.888264, -0.449919, 0.092520,
		23.131523, 17.491524, 24.627451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<20.773008, 17.750391, 8.517455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.520683, 17.455082, 8.612977>,  <20.369289, 17.277897, 8.670290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.520683, 17.455082, 8.612977>,  <20.773008, 17.750391, 8.517455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520683, 17.455082, 8.612977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205799, 0.455928, 0.865896,
		-0.748147, 0.497071, -0.439541,
		-0.630811, -0.738275, 0.238805,
		20.331440, 17.233599, 8.684619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.112137, 17.974205, 8.642513>,  <20.773008, 17.750391, 8.517455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.112137, 17.974205, 8.642513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.176529, 17.647354, 8.863924>,  <20.215164, 17.451244, 8.996770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.176529, 17.647354, 8.863924>,  <20.112137, 17.974205, 8.642513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.176529, 17.647354, 8.863924> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312171, 0.489892, 0.813975,
		-0.936288, -0.303827, -0.176221,
		0.160978, -0.817126, 0.553526,
		20.224823, 17.402216, 9.029982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.663069, 18.157215, 9.136170>,  <20.112137, 17.974205, 8.642513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.663069, 18.157215, 9.136170> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.869247, 17.859310, 9.305706>,  <19.992954, 17.680567, 9.407428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.869247, 17.859310, 9.305706>,  <19.663069, 18.157215, 9.136170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.869247, 17.859310, 9.305706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211413, 0.368796, 0.905149,
		-0.830433, -0.556161, 0.032642,
		0.515447, -0.744765, 0.423840,
		20.023882, 17.635881, 9.432858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308165, 17.960094, 9.709945>,  <19.663069, 18.157215, 9.136170>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308165, 17.960094, 9.709945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.671844, 17.815060, 9.791811>,  <19.890053, 17.728039, 9.840931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.671844, 17.815060, 9.791811>,  <19.308165, 17.960094, 9.709945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.671844, 17.815060, 9.791811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112263, 0.259870, 0.959096,
		-0.400941, -0.894986, 0.195569,
		0.909200, -0.362585, 0.204666,
		19.944605, 17.706284, 9.853210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.184940, 17.622332, 10.384322>,  <19.308165, 17.960094, 9.709945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.184940, 17.622332, 10.384322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.577919, 17.668724, 10.325884>,  <19.813707, 17.696560, 10.290821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.577919, 17.668724, 10.325884>,  <19.184940, 17.622332, 10.384322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.577919, 17.668724, 10.325884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134743, 0.100366, 0.985784,
		0.129002, -0.988167, 0.082976,
		0.982447, 0.115987, -0.146096,
		19.872654, 17.703518, 10.282055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.494610, 17.058285, 10.777153>,  <19.184940, 17.622332, 10.384322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.494610, 17.058285, 10.777153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.752769, 17.358540, 10.720578>,  <19.907665, 17.538692, 10.686633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.752769, 17.358540, 10.720578>,  <19.494610, 17.058285, 10.777153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752769, 17.358540, 10.720578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106018, 0.095343, 0.989783,
		0.756452, -0.653800, -0.018046,
		0.645399, 0.750637, -0.141437,
		19.946388, 17.583731, 10.678147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910254, 16.937073, 11.332899>,  <19.494610, 17.058285, 10.777153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910254, 16.937073, 11.332899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.026196, 17.300411, 11.212306>,  <20.095760, 17.518414, 11.139950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.026196, 17.300411, 11.212306>,  <19.910254, 16.937073, 11.332899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026196, 17.300411, 11.212306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314260, 0.207211, 0.926447,
		0.904005, -0.363277, -0.225396,
		0.289853, 0.908346, -0.301483,
		20.113152, 17.572916, 11.121861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617313, 17.006252, 11.483176>,  <19.910254, 16.937073, 11.332899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617313, 17.006252, 11.483176> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.465481, 17.376091, 11.470296>,  <20.374382, 17.597994, 11.462568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.465481, 17.376091, 11.470296>,  <20.617313, 17.006252, 11.483176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.465481, 17.376091, 11.470296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438475, 0.210439, 0.873759,
		0.814652, 0.317544, -0.485291,
		-0.379581, 0.924598, -0.032200,
		20.351606, 17.653471, 11.460636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.176188, 17.450365, 11.519020>,  <20.617313, 17.006252, 11.483176>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.176188, 17.450365, 11.519020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.849312, 17.667953, 11.595224>,  <20.653187, 17.798508, 11.640947>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.849312, 17.667953, 11.595224>,  <21.176188, 17.450365, 11.519020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.849312, 17.667953, 11.595224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485191, 0.470835, 0.736820,
		0.311110, 0.694556, -0.648693,
		-0.817190, 0.543972, 0.190511,
		20.604155, 17.831144, 11.652378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.515650, 18.099871, 11.694299>,  <21.176188, 17.450365, 11.519020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.515650, 18.099871, 11.694299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.141296, 18.093441, 11.835076>,  <20.916685, 18.089582, 11.919543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.141296, 18.093441, 11.835076>,  <21.515650, 18.099871, 11.694299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.141296, 18.093441, 11.835076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330950, 0.302439, 0.893870,
		-0.120811, 0.953033, -0.277727,
		-0.935883, -0.016075, 0.351944,
		20.860531, 18.088619, 11.940660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365307, 18.706654, 12.048067>,  <21.515650, 18.099871, 11.694299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365307, 18.706654, 12.048067> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.113304, 18.446495, 12.217809>,  <20.962103, 18.290400, 12.319654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.113304, 18.446495, 12.217809>,  <21.365307, 18.706654, 12.048067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.113304, 18.446495, 12.217809> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333215, 0.267183, 0.904202,
		-0.701471, 0.711053, 0.048395,
		-0.630005, -0.650397, 0.424354,
		20.924303, 18.251375, 12.345115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.949810, 19.128317, 12.585114>,  <21.365307, 18.706654, 12.048067>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.949810, 19.128317, 12.585114> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.910263, 18.738838, 12.667222>,  <20.886536, 18.505150, 12.716487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.910263, 18.738838, 12.667222>,  <20.949810, 19.128317, 12.585114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910263, 18.738838, 12.667222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533376, 0.122294, 0.836991,
		-0.840080, 0.192236, 0.507257,
		-0.098865, -0.973699, 0.205271,
		20.880604, 18.446728, 12.728804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022192, 19.757093, 12.893754>,  <20.949810, 19.128317, 12.585114>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022192, 19.757093, 12.893754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.343521, 19.985477, 12.826014>,  <21.536318, 20.122507, 12.785370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.343521, 19.985477, 12.826014>,  <21.022192, 19.757093, 12.893754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.343521, 19.985477, 12.826014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247357, 0.061209, -0.966989,
		-0.541744, 0.818694, 0.190401,
		0.803323, 0.570958, -0.169350,
		21.584518, 20.156765, 12.775208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.752466, 20.234007, 12.351015>,  <21.022192, 19.757093, 12.893754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.752466, 20.234007, 12.351015> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.151306, 20.260437, 12.335907>,  <21.390610, 20.276295, 12.326842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.151306, 20.260437, 12.335907>,  <20.752466, 20.234007, 12.351015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.151306, 20.260437, 12.335907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039069, 0.018474, -0.999066,
		-0.065316, 0.997644, 0.021002,
		0.997099, 0.066076, -0.037770,
		21.450436, 20.280260, 12.324576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.844364, 20.685692, 11.829294>,  <20.752466, 20.234007, 12.351015>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.844364, 20.685692, 11.829294> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.193340, 20.494747, 11.871201>,  <21.402725, 20.380180, 11.896344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.193340, 20.494747, 11.871201>,  <20.844364, 20.685692, 11.829294>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.193340, 20.494747, 11.871201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181681, 0.117783, -0.976278,
		0.453697, 0.870778, 0.189486,
		0.872440, -0.477361, 0.104765,
		21.455072, 20.351540, 11.902630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.144342, 21.002008, 11.366464>,  <20.844364, 20.685692, 11.829294>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.144342, 21.002008, 11.366464> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.367214, 20.678596, 11.442179>,  <21.500938, 20.484549, 11.487608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.367214, 20.678596, 11.442179>,  <21.144342, 21.002008, 11.366464>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367214, 20.678596, 11.442179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149029, -0.126884, -0.980658,
		0.816908, 0.574614, 0.049797,
		0.557181, -0.808529, 0.189287,
		21.534369, 20.436037, 11.498964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.730528, 20.967176, 10.926698>,  <21.144342, 21.002008, 11.366464>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.730528, 20.967176, 10.926698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.725323, 20.575184, 11.006162>,  <21.722198, 20.339989, 11.053840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.725323, 20.575184, 11.006162>,  <21.730528, 20.967176, 10.926698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.725323, 20.575184, 11.006162> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055882, -0.199079, -0.978389,
		0.998353, -0.001631, 0.057354,
		-0.013014, -0.979982, 0.198660,
		21.721418, 20.281189, 11.065760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209976, 20.748398, 10.474110>,  <21.730528, 20.967176, 10.926698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209976, 20.748398, 10.474110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.971226, 20.443493, 10.574265>,  <21.827974, 20.260550, 10.634359>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.971226, 20.443493, 10.574265>,  <22.209976, 20.748398, 10.474110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.971226, 20.443493, 10.574265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118115, -0.225197, -0.967127,
		0.793590, -0.606832, 0.044381,
		-0.596878, -0.762261, 0.250390,
		21.792162, 20.214815, 10.649383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.496185, 20.168440, 10.208275>,  <22.209976, 20.748398, 10.474110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.496185, 20.168440, 10.208275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.106773, 20.095070, 10.262815>,  <21.873125, 20.051048, 10.295540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.106773, 20.095070, 10.262815>,  <22.496185, 20.168440, 10.208275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.106773, 20.095070, 10.262815> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091036, -0.236009, -0.967477,
		0.209641, -0.954282, 0.213064,
		-0.973531, -0.183427, 0.136351,
		21.814714, 20.040043, 10.303720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.422491, 19.538179, 9.716755>,  <22.496185, 20.168440, 10.208275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.422491, 19.538179, 9.716755> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.042774, 19.649292, 9.775647>,  <21.814943, 19.715960, 9.810983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.042774, 19.649292, 9.775647>,  <22.422491, 19.538179, 9.716755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.042774, 19.649292, 9.775647> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205631, -0.194367, -0.959134,
		-0.237814, -0.940775, 0.241632,
		-0.949294, 0.277783, 0.147230,
		21.757986, 19.732628, 9.819816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.885824, 18.980093, 9.427413>,  <22.422491, 19.538179, 9.716755>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.885824, 18.980093, 9.427413> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.686028, 19.321987, 9.483889>,  <21.566149, 19.527124, 9.517774>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.686028, 19.321987, 9.483889>,  <21.885824, 18.980093, 9.427413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686028, 19.321987, 9.483889> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326766, -0.034948, -0.944459,
		-0.802328, -0.517887, 0.296755,
		-0.499494, 0.854735, 0.141188,
		21.536179, 19.578407, 9.526245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.214165, 18.825140, 9.319332>,  <21.885824, 18.980093, 9.427413>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.214165, 18.825140, 9.319332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.274395, 19.217190, 9.267662>,  <21.310534, 19.452419, 9.236660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.274395, 19.217190, 9.267662>,  <21.214165, 18.825140, 9.319332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.274395, 19.217190, 9.267662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520039, -0.032596, -0.853521,
		-0.840766, 0.195695, 0.504794,
		0.150575, 0.980123, -0.129174,
		21.319567, 19.511227, 9.228909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.552238, 19.015875, 9.092414>,  <21.214165, 18.825140, 9.319332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.552238, 19.015875, 9.092414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.801498, 19.313145, 8.994946>,  <20.951054, 19.491507, 8.936466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.801498, 19.313145, 8.994946>,  <20.552238, 19.015875, 9.092414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.801498, 19.313145, 8.994946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523535, 0.164912, -0.835892,
		-0.581031, 0.648455, 0.491843,
		0.623149, 0.743176, -0.243670,
		20.988443, 19.536097, 8.921845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.152056, 19.485487, 8.859014>,  <20.552238, 19.015875, 9.092414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.152056, 19.485487, 8.859014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.501389, 19.603645, 8.704079>,  <20.710989, 19.674540, 8.611118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.501389, 19.603645, 8.704079>,  <20.152056, 19.485487, 8.859014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501389, 19.603645, 8.704079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448472, 0.177171, -0.876061,
		-0.190161, 0.938803, 0.287206,
		0.873334, 0.295396, -0.387336,
		20.763390, 19.692265, 8.587878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.039679, 20.125137, 8.636032>,  <20.152056, 19.485487, 8.859014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.039679, 20.125137, 8.636032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.345310, 19.967747, 8.431539>,  <20.528688, 19.873312, 8.308843>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.345310, 19.967747, 8.431539>,  <20.039679, 20.125137, 8.636032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.345310, 19.967747, 8.431539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510004, 0.116874, -0.852195,
		0.395068, 0.911875, -0.111373,
		0.764079, -0.393476, -0.511234,
		20.574533, 19.849705, 8.278169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167749, 20.628784, 8.136390>,  <20.039679, 20.125137, 8.636032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167749, 20.628784, 8.136390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.340755, 20.301178, 7.985580>,  <20.444559, 20.104614, 7.895095>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.340755, 20.301178, 7.985580>,  <20.167749, 20.628784, 8.136390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.340755, 20.301178, 7.985580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406999, 0.195780, -0.892201,
		0.804538, 0.539340, -0.248659,
		0.432517, -0.819013, -0.377023,
		20.470510, 20.055473, 7.872474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.085117, 21.356621, 7.987036>,  <20.167749, 20.628784, 8.136390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.085117, 21.356621, 7.987036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.931503, 21.710686, 7.881962>,  <19.839334, 21.923124, 7.818917>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.931503, 21.710686, 7.881962>,  <20.085117, 21.356621, 7.987036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.931503, 21.710686, 7.881962> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265040, 0.166845, 0.949693,
		0.884461, 0.434337, 0.170530,
		-0.384034, 0.885163, -0.262685,
		19.816294, 21.976234, 7.803156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.287836, 21.865822, 8.528942>,  <20.085117, 21.356621, 7.987036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.287836, 21.865822, 8.528942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.930676, 21.972458, 8.383805>,  <19.716379, 22.036440, 8.296723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.930676, 21.972458, 8.383805>,  <20.287836, 21.865822, 8.528942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.930676, 21.972458, 8.383805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357444, 0.070319, 0.931283,
		0.273784, 0.961242, 0.032503,
		-0.892903, 0.266588, -0.362843,
		19.662804, 22.052435, 8.274953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.123394, 22.630199, 8.680974>,  <20.287836, 21.865822, 8.528942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.123394, 22.630199, 8.680974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798786, 22.397591, 8.658112>,  <19.604021, 22.258026, 8.644394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.798786, 22.397591, 8.658112>,  <20.123394, 22.630199, 8.680974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.798786, 22.397591, 8.658112> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266608, 0.281454, 0.921794,
		-0.519955, 0.763294, -0.383444,
		-0.811522, -0.581520, -0.057156,
		19.555330, 22.223135, 8.640965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.534845, 23.022966, 8.896810>,  <20.123394, 22.630199, 8.680974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.534845, 23.022966, 8.896810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.407913, 22.647568, 8.951253>,  <19.331755, 22.422329, 8.983919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.407913, 22.647568, 8.951253>,  <19.534845, 23.022966, 8.896810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.407913, 22.647568, 8.951253> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178002, 0.199922, 0.963507,
		-0.931460, 0.281521, -0.230495,
		-0.317329, -0.938497, 0.136109,
		19.312716, 22.366018, 8.992085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837667, 23.076742, 9.233590>,  <19.534845, 23.022966, 8.896810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.837667, 23.076742, 9.233590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.992802, 22.725574, 9.345907>,  <19.085882, 22.514874, 9.413298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.992802, 22.725574, 9.345907>,  <18.837667, 23.076742, 9.233590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.992802, 22.725574, 9.345907> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309259, 0.163038, 0.936898,
		-0.868299, -0.450199, -0.208272,
		0.387834, -0.877918, 0.280794,
		19.109152, 22.462198, 9.430145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.199409, 22.574686, 9.537713>,  <18.837667, 23.076742, 9.233590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.199409, 22.574686, 9.537713> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.558414, 22.448914, 9.661392>,  <18.773817, 22.373449, 9.735600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.558414, 22.448914, 9.661392>,  <18.199409, 22.574686, 9.537713>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.558414, 22.448914, 9.661392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251035, 0.212167, 0.944440,
		-0.362565, -0.925266, 0.111489,
		0.897512, -0.314434, 0.309199,
		18.827667, 22.354584, 9.754152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.088572, 22.216888, 10.197300>,  <18.199409, 22.574686, 9.537713>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.088572, 22.216888, 10.197300> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.478844, 22.303688, 10.209701>,  <18.713007, 22.355768, 10.217141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.478844, 22.303688, 10.209701>,  <18.088572, 22.216888, 10.197300>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.478844, 22.303688, 10.209701> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034206, 0.011030, 0.999354,
		0.216517, -0.976109, 0.018185,
		0.975679, 0.217000, 0.031001,
		18.771547, 22.368788, 10.219001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.259821, 21.918943, 10.690204>,  <18.088572, 22.216888, 10.197300>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.259821, 21.918943, 10.690204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.581573, 22.155308, 10.665579>,  <18.774626, 22.297127, 10.650804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.581573, 22.155308, 10.665579>,  <18.259821, 21.918943, 10.690204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.581573, 22.155308, 10.665579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090430, -0.019363, 0.995714,
		0.587188, -0.806503, -0.069011,
		0.804383, 0.590912, -0.061562,
		18.822889, 22.332581, 10.647110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.568115, 21.724312, 11.240260>,  <18.259821, 21.918943, 10.690204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.568115, 21.724312, 11.240260> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.782211, 22.051098, 11.154392>,  <18.910669, 22.247169, 11.102872>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.782211, 22.051098, 11.154392>,  <18.568115, 21.724312, 11.240260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.782211, 22.051098, 11.154392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301248, 0.052809, 0.952083,
		0.789157, -0.574261, -0.217844,
		0.535239, 0.816967, -0.214669,
		18.942783, 22.296188, 11.089992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.251762, 21.687836, 11.577955>,  <18.568115, 21.724312, 11.240260>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.251762, 21.687836, 11.577955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156342, 22.070850, 11.513196>,  <19.099089, 22.300659, 11.474340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.156342, 22.070850, 11.513196>,  <19.251762, 21.687836, 11.577955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.156342, 22.070850, 11.513196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465302, 0.259029, 0.846403,
		0.852400, 0.126582, -0.507337,
		-0.238554, 0.957539, -0.161898,
		19.084776, 22.358112, 11.464626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.731253, 21.957666, 11.952381>,  <19.251762, 21.687836, 11.577955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.731253, 21.957666, 11.952381> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.500290, 22.281609, 11.910946>,  <19.361712, 22.475975, 11.886085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.500290, 22.281609, 11.910946>,  <19.731253, 21.957666, 11.952381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.500290, 22.281609, 11.910946> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353462, 0.362323, 0.862431,
		0.735979, 0.461359, -0.495462,
		-0.577408, 0.809858, -0.103589,
		19.327068, 22.524567, 11.879869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.151379, 22.500921, 12.141454>,  <19.731253, 21.957666, 11.952381>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.151379, 22.500921, 12.141454> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785042, 22.654236, 12.189332>,  <19.565241, 22.746225, 12.218060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.785042, 22.654236, 12.189332>,  <20.151379, 22.500921, 12.141454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.785042, 22.654236, 12.189332> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220749, 0.231590, 0.947437,
		0.335421, 0.894123, -0.296710,
		-0.915840, 0.383289, 0.119696,
		19.510290, 22.769222, 12.225241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.269453, 23.167843, 12.536025>,  <20.151379, 22.500921, 12.141454>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.269453, 23.167843, 12.536025> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.892460, 23.064152, 12.620434>,  <19.666264, 23.001938, 12.671079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.892460, 23.064152, 12.620434>,  <20.269453, 23.167843, 12.536025>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.892460, 23.064152, 12.620434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158237, 0.210071, 0.964796,
		-0.294432, 0.942693, -0.156969,
		-0.942481, -0.259228, 0.211021,
		19.609715, 22.986383, 12.683740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890388, 23.784304, 12.979673>,  <20.269453, 23.167843, 12.536025>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890388, 23.784304, 12.979673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.691700, 23.440807, 13.030007>,  <19.572487, 23.234711, 13.060208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.691700, 23.440807, 13.030007>,  <19.890388, 23.784304, 12.979673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.691700, 23.440807, 13.030007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040384, 0.167698, 0.985011,
		-0.866969, 0.484195, -0.117979,
		-0.496723, -0.858739, 0.125835,
		19.542683, 23.183186, 13.067758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.455282, 23.864323, 13.546130>,  <19.890388, 23.784304, 12.979673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.455282, 23.864323, 13.546130> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489292, 23.467274, 13.511556>,  <19.509699, 23.229044, 13.490810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.489292, 23.467274, 13.511556>,  <19.455282, 23.864323, 13.546130>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.489292, 23.467274, 13.511556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050359, -0.090921, 0.994584,
		-0.995105, -0.080212, -0.057719,
		0.085025, -0.992623, -0.086437,
		19.514799, 23.169487, 13.485624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.856981, 23.529455, 13.780741>,  <19.455282, 23.864323, 13.546130>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.856981, 23.529455, 13.780741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.116192, 23.230537, 13.839545>,  <19.271717, 23.051186, 13.874828>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.116192, 23.230537, 13.839545>,  <18.856981, 23.529455, 13.780741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.116192, 23.230537, 13.839545> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151413, 0.062765, 0.986476,
		-0.746417, -0.661520, -0.072478,
		0.648024, -0.747296, 0.147011,
		19.310598, 23.006348, 13.883649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.560263, 23.025621, 14.372732>,  <18.856981, 23.529455, 13.780741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.560263, 23.025621, 14.372732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.954655, 22.963310, 14.348821>,  <19.191290, 22.925922, 14.334474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.954655, 22.963310, 14.348821>,  <18.560263, 23.025621, 14.372732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.954655, 22.963310, 14.348821> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070892, 0.066780, 0.995246,
		-0.151046, -0.985532, 0.076888,
		0.985981, -0.155779, -0.059780,
		19.250448, 22.916576, 14.330887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656914, 22.443895, 14.803376>,  <18.560263, 23.025621, 14.372732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656914, 22.443895, 14.803376> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.002754, 22.642338, 14.771520>,  <19.210258, 22.761404, 14.752406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.002754, 22.642338, 14.771520>,  <18.656914, 22.443895, 14.803376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.002754, 22.642338, 14.771520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133363, -0.073765, 0.988318,
		0.484439, -0.865121, -0.129940,
		0.864600, 0.496109, -0.079640,
		19.262135, 22.791170, 14.747627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.013449, 22.030855, 15.258554>,  <18.656914, 22.443895, 14.803376>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.013449, 22.030855, 15.258554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232285, 22.359699, 15.195525>,  <19.363586, 22.557005, 15.157708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.232285, 22.359699, 15.195525>,  <19.013449, 22.030855, 15.258554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.232285, 22.359699, 15.195525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326326, -0.036119, 0.944567,
		0.770846, -0.568183, -0.288036,
		0.547090, 0.822109, -0.157570,
		19.396412, 22.606333, 15.148254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706024, 21.842651, 15.439422>,  <19.013449, 22.030855, 15.258554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706024, 21.842651, 15.439422> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.662498, 22.239876, 15.457271>,  <19.636383, 22.478210, 15.467980>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.662498, 22.239876, 15.457271>,  <19.706024, 21.842651, 15.439422>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.662498, 22.239876, 15.457271> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205509, -0.021447, 0.978420,
		0.972587, 0.115636, -0.201749,
		-0.108814, 0.993060, 0.044623,
		19.629854, 22.537794, 15.470657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.399479, 22.179668, 15.773482>,  <19.706024, 21.842651, 15.439422>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.399479, 22.179668, 15.773482> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.088165, 22.426315, 15.820901>,  <19.901377, 22.574305, 15.849352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.088165, 22.426315, 15.820901>,  <20.399479, 22.179668, 15.773482>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.088165, 22.426315, 15.820901> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204517, 0.070435, 0.976326,
		0.593671, 0.784105, -0.180927,
		-0.778285, 0.616619, 0.118547,
		19.854679, 22.611301, 15.856465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.635956, 22.503368, 16.315599>,  <20.399479, 22.179668, 15.773482>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.635956, 22.503368, 16.315599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.246811, 22.595772, 16.320930>,  <20.013325, 22.651213, 16.324129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.246811, 22.595772, 16.320930>,  <20.635956, 22.503368, 16.315599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.246811, 22.595772, 16.320930> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035327, 0.091354, 0.995192,
		0.228679, 0.968654, -0.097035,
		-0.972861, 0.231007, 0.013329,
		19.954952, 22.665073, 16.324928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.626713, 22.959631, 16.749481>,  <20.635956, 22.503368, 16.315599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.626713, 22.959631, 16.749481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.252216, 22.820827, 16.727430>,  <20.027519, 22.737545, 16.714201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.252216, 22.820827, 16.727430>,  <20.626713, 22.959631, 16.749481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.252216, 22.820827, 16.727430> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096243, 0.102384, 0.990078,
		-0.337922, 0.932256, -0.129253,
		-0.936240, -0.347009, -0.055125,
		19.971344, 22.716724, 16.710894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.322670, 23.368980, 17.203432>,  <20.626713, 22.959631, 16.749481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.322670, 23.368980, 17.203432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.083546, 23.051800, 17.156351>,  <19.940071, 22.861492, 17.128103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.083546, 23.051800, 17.156351>,  <20.322670, 23.368980, 17.203432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083546, 23.051800, 17.156351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029230, -0.125166, 0.991705,
		-0.801104, 0.596292, 0.051648,
		-0.597810, -0.792950, -0.117701,
		19.904203, 22.813915, 17.121040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.741110, 23.474417, 17.612783>,  <20.322670, 23.368980, 17.203432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.741110, 23.474417, 17.612783> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.757839, 23.076927, 17.571289>,  <19.767878, 22.838432, 17.546392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.757839, 23.076927, 17.571289>,  <19.741110, 23.474417, 17.612783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.757839, 23.076927, 17.571289> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153733, -0.108993, 0.982083,
		-0.987227, -0.025126, -0.157327,
		0.041823, -0.993725, -0.103738,
		19.770386, 22.778811, 17.540167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.178907, 23.222542, 18.217846>,  <19.741110, 23.474417, 17.612783>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.178907, 23.222542, 18.217846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.381680, 22.908913, 18.074594>,  <19.503342, 22.720736, 17.988644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.381680, 22.908913, 18.074594>,  <19.178907, 23.222542, 18.217846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.381680, 22.908913, 18.074594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022600, -0.427412, 0.903774,
		-0.861692, -0.450056, -0.234387,
		0.506929, -0.784072, -0.358127,
		19.533758, 22.673691, 17.967157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.818289, 22.739828, 18.458410>,  <19.178907, 23.222542, 18.217846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.818289, 22.739828, 18.458410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.174942, 22.584694, 18.364964>,  <19.388933, 22.491613, 18.308895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.174942, 22.584694, 18.364964>,  <18.818289, 22.739828, 18.458410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.174942, 22.584694, 18.364964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081501, -0.370073, 0.925421,
		-0.445369, -0.844173, -0.298359,
		0.891630, -0.387837, -0.233620,
		19.442430, 22.468344, 18.294878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775698, 22.082886, 18.646753>,  <18.818289, 22.739828, 18.458410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775698, 22.082886, 18.646753> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.166851, 22.164711, 18.664185>,  <19.401543, 22.213806, 18.674644>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.166851, 22.164711, 18.664185>,  <18.775698, 22.082886, 18.646753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.166851, 22.164711, 18.664185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024147, -0.317394, 0.947986,
		0.207753, -0.925967, -0.315314,
		0.977883, 0.204561, 0.043580,
		19.460217, 22.226080, 18.677259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705112, 21.427465, 18.310894>,  <18.775698, 22.082886, 18.646753>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.705112, 21.427465, 18.310894> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.438450, 21.140106, 18.390371>,  <18.278452, 20.967691, 18.438057>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.438450, 21.140106, 18.390371>,  <18.705112, 21.427465, 18.310894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.438450, 21.140106, 18.390371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435629, 0.159226, -0.885931,
		0.604813, -0.677166, -0.419103,
		-0.666655, -0.718396, 0.198692,
		18.238453, 20.924587, 18.449980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.740334, 20.993792, 17.778923>,  <18.705112, 21.427465, 18.310894>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.740334, 20.993792, 17.778923> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.386997, 20.869694, 17.919470>,  <18.174995, 20.795235, 18.003798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.386997, 20.869694, 17.919470>,  <18.740334, 20.993792, 17.778923>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.386997, 20.869694, 17.919470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391054, 0.074478, -0.917349,
		0.258431, -0.947736, -0.187111,
		-0.883340, -0.310242, 0.351369,
		18.121996, 20.776621, 18.024881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.372887, 20.423365, 17.313637>,  <18.740334, 20.993792, 17.778923>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.372887, 20.423365, 17.313637> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.079185, 20.596916, 17.522490>,  <17.902966, 20.701048, 17.647800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.079185, 20.596916, 17.522490>,  <18.372887, 20.423365, 17.313637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.079185, 20.596916, 17.522490> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597230, -0.047145, -0.800683,
		-0.322785, -0.899736, 0.293743,
		-0.734252, 0.433881, 0.522132,
		17.858910, 20.727081, 17.679129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.787472, 20.030342, 17.117531>,  <18.372887, 20.423365, 17.313637>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.787472, 20.030342, 17.117531> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626354, 20.370678, 17.252487>,  <17.529684, 20.574879, 17.333462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.626354, 20.370678, 17.252487>,  <17.787472, 20.030342, 17.117531>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.626354, 20.370678, 17.252487> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637671, 0.003578, -0.770301,
		-0.656608, -0.525417, 0.541113,
		-0.402793, 0.850837, 0.337393,
		17.505516, 20.625929, 17.353704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971582, 19.878456, 17.192970>,  <17.787472, 20.030342, 17.117531>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971582, 19.878456, 17.192970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.063900, 20.263474, 17.136055>,  <17.119289, 20.494484, 17.101906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.063900, 20.263474, 17.136055>,  <16.971582, 19.878456, 17.192970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.063900, 20.263474, 17.136055> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596656, 0.024489, -0.802123,
		-0.768593, 0.270022, 0.579959,
		0.230793, 0.962543, -0.142288,
		17.133139, 20.552237, 17.093369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 37.000000>,  <37.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 37.000000, 0.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<37.000000, 0.000000, 37.000000>,  <37.000000, 0.000000, 0.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 37.000000, 0.000000>,  <0.000000, 37.000000, 37.000000>, 0.185000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
