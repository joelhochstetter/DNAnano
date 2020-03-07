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
	<1.256040, 3.261649, 1.612742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582508, 3.349700, 1.826438>,  <1.778389, 3.402530, 1.954655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.582508, 3.349700, 1.826438>,  <1.256040, 3.261649, 1.612742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.582508, 3.349700, 1.826438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378090, 0.902627, 0.205701,
		-0.436938, -0.369877, 0.819924,
		0.816170, 0.220127, 0.534239,
		1.827359, 3.415738, 1.986710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.966210, 3.755361, 2.058988>,  <1.256040, 3.261649, 1.612742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.966210, 3.755361, 2.058988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.361416, 3.731098, 2.115768>,  <1.598539, 3.716540, 2.149837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.361416, 3.731098, 2.115768>,  <0.966210, 3.755361, 2.058988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.361416, 3.731098, 2.115768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017034, 0.956786, 0.290295,
		-0.153425, -0.284397, 0.946350,
		0.988013, -0.060658, 0.141951,
		1.657820, 3.712900, 2.158354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.066747, 4.029792, 2.620328>,  <0.966210, 3.755361, 2.058988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.066747, 4.029792, 2.620328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.399784, 4.110305, 2.413921>,  <1.599606, 4.158614, 2.290077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.399784, 4.110305, 2.413921>,  <1.066747, 4.029792, 2.620328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.399784, 4.110305, 2.413921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029448, 0.914228, 0.404129,
		0.553102, -0.351671, 0.755252,
		0.832593, 0.201284, -0.516017,
		1.649562, 4.170691, 2.259116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.679365, 4.320176, 3.027845>,  <1.066747, 4.029792, 2.620328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.679365, 4.320176, 3.027845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.688412, 4.444873, 2.647886>,  <1.693840, 4.519691, 2.419911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.688412, 4.444873, 2.647886>,  <1.679365, 4.320176, 3.027845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.688412, 4.444873, 2.647886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158939, 0.936935, 0.311273,
		0.987029, -0.158015, -0.028358,
		0.022617, 0.311743, -0.949897,
		1.695197, 4.538396, 2.362917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.370925, 4.841243, 2.769015>,  <1.679365, 4.320176, 3.027845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.370925, 4.841243, 2.769015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.042274, 4.907260, 2.550772>,  <1.845084, 4.946871, 2.419826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.042274, 4.907260, 2.550772>,  <2.370925, 4.841243, 2.769015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.042274, 4.907260, 2.550772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087826, 0.982391, 0.164910,
		0.563218, 0.087576, -0.821654,
		-0.821628, 0.165043, -0.545609,
		1.795786, 4.956773, 2.387089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.513522, 5.362247, 2.358978>,  <2.370925, 4.841243, 2.769015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.513522, 5.362247, 2.358978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.114334, 5.347880, 2.380013>,  <1.874821, 5.339261, 2.392635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.114334, 5.347880, 2.380013>,  <2.513522, 5.362247, 2.358978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.114334, 5.347880, 2.380013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022562, 0.971632, 0.235418,
		-0.059552, 0.233754, -0.970470,
		-0.997970, -0.035916, 0.052589,
		1.814943, 5.337106, 2.395790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.376569, 5.919139, 1.939403>,  <2.513522, 5.362247, 2.358978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.376569, 5.919139, 1.939403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060596, 5.841396, 2.172034>,  <1.871013, 5.794750, 2.311613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.060596, 5.841396, 2.172034>,  <2.376569, 5.919139, 1.939403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.060596, 5.841396, 2.172034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085153, 0.974019, 0.209848,
		-0.607254, 0.116242, -0.785958,
		-0.789931, -0.194358, 0.581578,
		1.823617, 5.783089, 2.346508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.843728, 6.285431, 1.615156>,  <2.376569, 5.919139, 1.939403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.843728, 6.285431, 1.615156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.819839, 6.218035, 2.008713>,  <1.805506, 6.177597, 2.244847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.819839, 6.218035, 2.008713>,  <1.843728, 6.285431, 1.615156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.819839, 6.218035, 2.008713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109155, 0.980843, 0.161342,
		-0.992229, -0.097762, -0.076969,
		-0.059721, -0.168490, 0.983892,
		1.801923, 6.167488, 2.303880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.097466, 2.327287, 2.141550> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.945694, 2.294852, 2.510214>,  <1.854631, 2.275391, 2.731412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.945694, 2.294852, 2.510214>,  <2.097466, 2.327287, 2.141550>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.945694, 2.294852, 2.510214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399864, -0.883945, -0.242385,
		0.834351, -0.460507, 0.302970,
		-0.379429, -0.081087, 0.921661,
		1.831865, 2.270526, 2.786712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.328543, 1.680529, 2.652020>,  <2.097466, 2.327287, 2.141550>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.328543, 1.680529, 2.652020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957535, 1.815525, 2.716276>,  <1.734930, 1.896523, 2.754830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.957535, 1.815525, 2.716276>,  <2.328543, 1.680529, 2.652020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.957535, 1.815525, 2.716276> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355352, -0.929471, -0.099042,
		0.115885, -0.148948, 0.982031,
		-0.927521, 0.337489, 0.160640,
		1.679278, 1.916772, 2.764468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.966238, 1.360108, 3.152209>,  <2.328543, 1.680529, 2.652020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.966238, 1.360108, 3.152209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669273, 1.462142, 2.904417>,  <1.491094, 1.523362, 2.755742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.669273, 1.462142, 2.904417>,  <1.966238, 1.360108, 3.152209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.669273, 1.462142, 2.904417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203559, -0.966848, -0.154167,
		-0.638269, 0.011645, 0.769726,
		-0.742413, 0.255085, -0.619480,
		1.446550, 1.538668, 2.718573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.432184, 0.858993, 3.401936>,  <1.966238, 1.360108, 3.152209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.432184, 0.858993, 3.401936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.407654, 0.969643, 3.018328>,  <1.392936, 1.036032, 2.788163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.407654, 0.969643, 3.018328>,  <1.432184, 0.858993, 3.401936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.407654, 0.969643, 3.018328> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117808, -0.956119, -0.268253,
		-0.991141, 0.096529, 0.091223,
		-0.061326, 0.276623, -0.959020,
		1.389256, 1.052629, 2.730622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.751211, 0.525567, 3.033813>,  <1.432184, 0.858993, 3.401936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.751211, 0.525567, 3.033813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061096, 0.612885, 2.796438>,  <1.247027, 0.665276, 2.654013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.061096, 0.612885, 2.796438>,  <0.751211, 0.525567, 3.033813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.061096, 0.612885, 2.796438> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092066, -0.889574, -0.447418,
		-0.625575, 0.401255, -0.669066,
		0.774712, 0.218295, -0.593438,
		1.293510, 0.678374, 2.618407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.546996, 0.298604, 2.322469>,  <0.751211, 0.525567, 3.033813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.546996, 0.298604, 2.322469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.945923, 0.323508, 2.337870>,  <1.185279, 0.338451, 2.347110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.945923, 0.323508, 2.337870>,  <0.546996, 0.298604, 2.322469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.945923, 0.323508, 2.337870> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072935, -0.800050, -0.595483,
		-0.006271, 0.596694, -0.802445,
		0.997317, 0.062261, 0.038503,
		1.245118, 0.342186, 2.349420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.852230, 0.216981, 1.591461>,  <0.546996, 0.298604, 2.322469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.852230, 0.216981, 1.591461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.132225, 0.112799, 1.857449>,  <1.300222, 0.050290, 2.017041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.132225, 0.112799, 1.857449>,  <0.852230, 0.216981, 1.591461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.132225, 0.112799, 1.857449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273636, -0.762246, -0.586603,
		0.659653, 0.592574, -0.462292,
		0.699986, -0.260455, 0.664968,
		1.342221, 0.034662, 2.056939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.487268, 0.034458, 1.200224>,  <0.852230, 0.216981, 1.591461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.487268, 0.034458, 1.200224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.509346, -0.142837, 1.558105>,  <1.522593, -0.249213, 1.772834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.509346, -0.142837, 1.558105>,  <1.487268, 0.034458, 1.200224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.509346, -0.142837, 1.558105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085687, -0.890661, -0.446520,
		0.994792, 0.101310, -0.011181,
		0.055195, -0.443236, 0.894704,
		1.525905, -0.275808, 1.826517>
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
