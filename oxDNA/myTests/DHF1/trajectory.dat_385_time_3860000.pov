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
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
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
	<5.513488, 6.282821, 4.128308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.455235, 6.401009, 3.750633>,  <5.420282, 6.471921, 3.524028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.455235, 6.401009, 3.750633>,  <5.513488, 6.282821, 4.128308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.455235, 6.401009, 3.750633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184151, -0.945779, -0.267562,
		-0.972049, 0.134907, 0.192147,
		-0.145633, 0.295468, -0.944187,
		5.411544, 6.489649, 3.467377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.377788, 5.695269, 3.840846>,  <5.513488, 6.282821, 4.128308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.377788, 5.695269, 3.840846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326466, 5.935867, 3.525444>,  <5.295672, 6.080226, 3.336203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.326466, 5.935867, 3.525444>,  <5.377788, 5.695269, 3.840846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.326466, 5.935867, 3.525444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051875, -0.789917, -0.611015,
		-0.990377, -0.119300, 0.070147,
		-0.128305, 0.601496, -0.788505,
		5.287974, 6.116316, 3.288893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.678834, 5.171804, 4.145835>,  <5.377788, 5.695269, 3.840846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.678834, 5.171804, 4.145835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.536385, 5.229370, 3.776520>,  <5.450914, 5.263910, 3.554930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.536385, 5.229370, 3.776520>,  <5.678834, 5.171804, 4.145835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.536385, 5.229370, 3.776520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663897, -0.734293, 0.141618,
		-0.657584, 0.663403, 0.357045,
		-0.356125, 0.143915, -0.923290,
		5.429547, 5.272544, 3.499533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.979523, 5.235653, 4.310664>,  <5.678834, 5.171804, 4.145835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.979523, 5.235653, 4.310664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.086231, 5.042191, 3.977219>,  <5.150256, 4.926113, 3.777152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.086231, 5.042191, 3.977219>,  <4.979523, 5.235653, 4.310664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.086231, 5.042191, 3.977219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564517, -0.779464, 0.271580,
		-0.781122, 0.398137, -0.480974,
		0.266775, -0.483655, -0.833611,
		5.166263, 4.897094, 3.727135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.369695, 5.053970, 4.106829>,  <4.979523, 5.235653, 4.310664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.369695, 5.053970, 4.106829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.639839, 4.815536, 3.933128>,  <4.801926, 4.672477, 3.828908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.639839, 4.815536, 3.933128>,  <4.369695, 5.053970, 4.106829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.639839, 4.815536, 3.933128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557055, -0.798191, 0.229305,
		-0.483300, 0.087038, -0.871117,
		0.675360, -0.596083, -0.434251,
		4.842447, 4.636712, 3.802853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.091324, 4.591546, 3.576694>,  <4.369695, 5.053970, 4.106829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.091324, 4.591546, 3.576694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.421913, 4.379532, 3.652596>,  <4.620266, 4.252323, 3.698136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.421913, 4.379532, 3.652596>,  <4.091324, 4.591546, 3.576694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.421913, 4.379532, 3.652596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562962, -0.780615, 0.271505,
		0.004218, -0.331215, -0.943546,
		0.826472, -0.530035, 0.189754,
		4.669855, 4.220521, 3.709522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.900188, 3.931574, 3.395830>,  <4.091324, 4.591546, 3.576694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.900188, 3.931574, 3.395830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229893, 3.879478, 3.616241>,  <4.427715, 3.848221, 3.748488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229893, 3.879478, 3.616241>,  <3.900188, 3.931574, 3.395830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.229893, 3.879478, 3.616241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399523, -0.823381, 0.403020,
		0.401217, -0.552342, -0.730714,
		0.824261, -0.130239, 0.551028,
		4.477171, 3.840407, 3.781550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.997471, 3.161185, 3.455223>,  <3.900188, 3.931574, 3.395830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.997471, 3.161185, 3.455223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.208652, 3.318970, 3.756065>,  <4.335361, 3.413640, 3.936571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.208652, 3.318970, 3.756065>,  <3.997471, 3.161185, 3.455223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.208652, 3.318970, 3.756065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267439, -0.763313, 0.588072,
		0.806065, -0.511618, -0.297501,
		0.527955, 0.394461, 0.752106,
		4.367039, 3.437308, 3.981697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.439306, 2.878297, 4.439384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.748047, 2.837097, 4.690346>,  <3.933291, 2.812377, 4.840923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.748047, 2.837097, 4.690346>,  <3.439306, 2.878297, 4.439384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.748047, 2.837097, 4.690346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464986, 0.764454, -0.446541,
		-0.433628, 0.636397, 0.637938,
		0.771852, -0.103000, 0.627404,
		3.979603, 2.806197, 4.878567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.650759, 3.610969, 4.710837>,  <3.439306, 2.878297, 4.439384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.650759, 3.610969, 4.710837> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947151, 3.344177, 4.742043>,  <4.124986, 3.184102, 4.760766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.947151, 3.344177, 4.742043>,  <3.650759, 3.610969, 4.710837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.947151, 3.344177, 4.742043> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612112, 0.623070, -0.486932,
		0.276166, 0.408560, 0.869949,
		0.740980, -0.666980, 0.078013,
		4.169445, 3.144083, 4.765447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.249259, 3.815653, 5.093259>,  <3.650759, 3.610969, 4.710837>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.249259, 3.815653, 5.093259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355342, 3.548683, 4.814919>,  <4.418992, 3.388501, 4.647914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.355342, 3.548683, 4.814919>,  <4.249259, 3.815653, 5.093259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.355342, 3.548683, 4.814919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533587, 0.702703, -0.470631,
		0.803087, -0.246482, 0.542492,
		0.265208, -0.667424, -0.695851,
		4.434905, 3.348456, 4.606163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.998890, 3.928107, 4.977550>,  <4.249259, 3.815653, 5.093259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.998890, 3.928107, 4.977550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.819955, 3.774811, 4.654312>,  <4.712594, 3.682833, 4.460370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.819955, 3.774811, 4.654312>,  <4.998890, 3.928107, 4.977550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.819955, 3.774811, 4.654312> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536455, 0.607979, -0.585301,
		0.715615, -0.695333, -0.066380,
		-0.447337, -0.383241, -0.808094,
		4.685753, 3.659839, 4.411884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.505296, 3.649402, 4.550615>,  <4.998890, 3.928107, 4.977550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.505296, 3.649402, 4.550615> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.204386, 3.687164, 4.289795>,  <5.023840, 3.709821, 4.133303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.204386, 3.687164, 4.289795>,  <5.505296, 3.649402, 4.550615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.204386, 3.687164, 4.289795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590450, 0.535707, -0.603645,
		0.292321, -0.839110, -0.458741,
		-0.752275, 0.094405, -0.652051,
		4.978703, 3.715486, 4.094180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.859926, 3.760924, 3.901486>,  <5.505296, 3.649402, 4.550615>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.859926, 3.760924, 3.901486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.486604, 3.889153, 3.836769>,  <5.262610, 3.966089, 3.797939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.486604, 3.889153, 3.836769>,  <5.859926, 3.760924, 3.901486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.486604, 3.889153, 3.836769> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351594, 0.724262, -0.593150,
		-0.072967, -0.610475, -0.788668,
		-0.933305, 0.320571, -0.161792,
		5.206612, 3.985324, 3.788231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.688906, 3.871938, 3.165957>,  <5.859926, 3.760924, 3.901486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.688906, 3.871938, 3.165957> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.450162, 4.115440, 3.375023>,  <5.306916, 4.261541, 3.500462>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.450162, 4.115440, 3.375023>,  <5.688906, 3.871938, 3.165957>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.450162, 4.115440, 3.375023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262922, 0.763845, -0.589418,
		-0.758045, -0.214380, -0.615962,
		-0.596859, 0.608755, 0.522663,
		5.271104, 4.298067, 3.531822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.352363, 4.189041, 2.674975>,  <5.688906, 3.871938, 3.165957>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.352363, 4.189041, 2.674975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.332030, 4.411880, 3.006531>,  <5.319831, 4.545585, 3.205464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.332030, 4.411880, 3.006531>,  <5.352363, 4.189041, 2.674975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.332030, 4.411880, 3.006531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271792, 0.806352, -0.525286,
		-0.961013, 0.198585, -0.192403,
		-0.050831, 0.557100, 0.828888,
		5.316781, 4.579010, 3.255197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
