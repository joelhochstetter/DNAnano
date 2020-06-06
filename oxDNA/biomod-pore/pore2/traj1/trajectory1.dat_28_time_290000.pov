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
	<22.508896, 17.139324, -2.506824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.761475, 16.875813, -2.670425>,  <22.913023, 16.717707, -2.768586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.761475, 16.875813, -2.670425>,  <22.508896, 17.139324, -2.506824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.761475, 16.875813, -2.670425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771474, -0.586865, -0.245799,
		-0.078103, 0.470744, -0.878806,
		0.631449, -0.658778, -0.409003,
		22.950909, 16.678179, -2.793126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.746080, 17.052153, -1.734711>,  <22.508896, 17.139324, -2.506824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.746080, 17.052153, -1.734711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893620, 17.362301, -1.529674>,  <22.982143, 17.548389, -1.406652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.893620, 17.362301, -1.529674>,  <22.746080, 17.052153, -1.734711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.893620, 17.362301, -1.529674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.929132, 0.322849, 0.180226,
		-0.025748, -0.542742, 0.839504,
		0.368849, 0.775370, 0.512592,
		23.004274, 17.594912, -1.375896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527103, 17.093954, -0.971881>,  <22.746080, 17.052153, -1.734711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527103, 17.093954, -0.971881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577843, 17.446861, -1.153214>,  <22.608286, 17.658606, -1.262013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.577843, 17.446861, -1.153214>,  <22.527103, 17.093954, -0.971881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577843, 17.446861, -1.153214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864589, 0.322358, 0.385450,
		0.486206, 0.343052, 0.803691,
		0.126847, 0.882271, -0.453332,
		22.615896, 17.711542, -1.289213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.437834, 17.495943, -0.409625>,  <22.527103, 17.093954, -0.971881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.437834, 17.495943, -0.409625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.355476, 17.636948, -0.774775>,  <22.306061, 17.721550, -0.993866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.355476, 17.636948, -0.774775>,  <22.437834, 17.495943, -0.409625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.355476, 17.636948, -0.774775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803675, 0.471322, 0.363267,
		0.558314, 0.808451, 0.186261,
		-0.205895, 0.352510, -0.912877,
		22.293709, 17.742701, -1.048638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.653448, 18.221855, -0.516422>,  <22.437834, 17.495943, -0.409625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.653448, 18.221855, -0.516422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325027, 18.104214, -0.712128>,  <22.127975, 18.033630, -0.829551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.325027, 18.104214, -0.712128>,  <22.653448, 18.221855, -0.516422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.325027, 18.104214, -0.712128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550784, 0.633394, 0.543552,
		0.150037, 0.715763, -0.682035,
		-0.821051, -0.294101, -0.489264,
		22.078712, 18.015984, -0.858907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.171495, 18.748486, -0.417110>,  <22.653448, 18.221855, -0.516422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.171495, 18.748486, -0.417110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.940342, 18.477562, -0.599231>,  <21.801649, 18.315008, -0.708503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.940342, 18.477562, -0.599231>,  <22.171495, 18.748486, -0.417110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.940342, 18.477562, -0.599231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815449, 0.456618, 0.355729,
		-0.033040, 0.576845, -0.816185,
		-0.577885, -0.677311, -0.455301,
		21.766977, 18.274368, -0.735821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.721838, 19.197535, -0.914700>,  <22.171495, 18.748486, -0.417110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.721838, 19.197535, -0.914700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.615307, 18.829620, -0.799417>,  <21.551388, 18.608871, -0.730248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.615307, 18.829620, -0.799417>,  <21.721838, 19.197535, -0.914700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615307, 18.829620, -0.799417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797906, 0.378129, 0.469431,
		-0.540755, -0.104938, -0.834609,
		-0.266329, -0.919786, 0.288205,
		21.535408, 18.553684, -0.712956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080873, 18.804041, -1.228941>,  <21.721838, 19.197535, -0.914700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080873, 18.804041, -1.228941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156265, 18.726532, -0.843832>,  <21.201500, 18.680027, -0.612767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156265, 18.726532, -0.843832>,  <21.080873, 18.804041, -1.228941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156265, 18.726532, -0.843832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783626, 0.561230, 0.266365,
		-0.591950, -0.804657, -0.046062,
		0.188481, -0.193770, 0.962771,
		21.212809, 18.668402, -0.555001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.441528, 18.830873, -0.798091>,  <21.080873, 18.804041, -1.228941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.441528, 18.830873, -0.798091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.725288, 18.878849, -0.520280>,  <20.895544, 18.907635, -0.353594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.725288, 18.878849, -0.520280>,  <20.441528, 18.830873, -0.798091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.725288, 18.878849, -0.520280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535512, 0.732398, 0.420500,
		-0.458234, -0.670229, 0.583793,
		0.709399, 0.119941, 0.694526,
		20.938108, 18.914831, -0.311923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105652, 18.854946, -0.082244>,  <20.441528, 18.830873, -0.798091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105652, 18.854946, -0.082244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426689, 19.089172, -0.127775>,  <20.619312, 19.229708, -0.155094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.426689, 19.089172, -0.127775>,  <20.105652, 18.854946, -0.082244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.426689, 19.089172, -0.127775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542209, 0.795665, 0.270048,
		0.248701, -0.155020, 0.956095,
		0.802594, 0.585565, -0.113829,
		20.667467, 19.264841, -0.161924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.323906, 19.138563, 0.603750>,  <20.105652, 18.854946, -0.082244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.323906, 19.138563, 0.603750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.367615, 19.356510, 0.271201>,  <20.393841, 19.487278, 0.071671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.367615, 19.356510, 0.271201>,  <20.323906, 19.138563, 0.603750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.367615, 19.356510, 0.271201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585443, 0.711204, 0.389160,
		0.803315, 0.444196, 0.396704,
		0.109274, 0.544866, -0.831373,
		20.400396, 19.519970, 0.021789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.566000, 19.813425, 0.838147>,  <20.323906, 19.138563, 0.603750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.566000, 19.813425, 0.838147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390862, 19.852703, 0.480679>,  <20.285778, 19.876270, 0.266198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.390862, 19.852703, 0.480679>,  <20.566000, 19.813425, 0.838147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.390862, 19.852703, 0.480679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495087, 0.803388, 0.330841,
		0.750452, 0.587303, -0.303145,
		-0.437847, 0.098197, -0.893671,
		20.259508, 19.882162, 0.212578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.567303, 20.528761, 0.618287>,  <20.566000, 19.813425, 0.838147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.567303, 20.528761, 0.618287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.268799, 20.363106, 0.409831>,  <20.089697, 20.263712, 0.284758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.268799, 20.363106, 0.409831>,  <20.567303, 20.528761, 0.618287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.268799, 20.363106, 0.409831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591148, 0.772223, 0.232841,
		0.306007, 0.481830, -0.821097,
		-0.746260, -0.414139, -0.521139,
		20.044920, 20.238865, 0.253490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.289141, 20.986658, -0.019529>,  <20.567303, 20.528761, 0.618287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.289141, 20.986658, -0.019529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043575, 20.730446, 0.165006>,  <19.896236, 20.576719, 0.275728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.043575, 20.730446, 0.165006>,  <20.289141, 20.986658, -0.019529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.043575, 20.730446, 0.165006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712971, 0.700776, 0.024202,
		-0.338797, -0.314063, -0.886894,
		-0.613913, -0.640529, 0.461339,
		19.859402, 20.538286, 0.303408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.959822, 21.010487, 0.663954>,  <20.289141, 20.986658, -0.019529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.959822, 21.010487, 0.663954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580128, 20.995045, 0.788828>,  <19.352310, 20.985781, 0.863753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.580128, 20.995045, 0.788828>,  <19.959822, 21.010487, 0.663954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.580128, 20.995045, 0.788828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263776, -0.443034, -0.856822,
		0.171386, -0.895673, 0.410361,
		-0.949236, -0.038604, 0.312187,
		19.295357, 20.983463, 0.882484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.934160, 21.651205, 0.751363>,  <19.959822, 21.010487, 0.663954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.934160, 21.651205, 0.751363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544716, 21.686081, 0.667002>,  <19.311049, 21.707006, 0.616385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.544716, 21.686081, 0.667002>,  <19.934160, 21.651205, 0.751363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.544716, 21.686081, 0.667002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213553, -0.022178, 0.976680,
		0.080481, 0.995944, 0.040213,
		-0.973611, 0.087192, -0.210902,
		19.252632, 21.712238, 0.603731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.767311, 21.673679, 1.481210>,  <19.934160, 21.651205, 0.751363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.767311, 21.673679, 1.481210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893066, 21.876198, 1.802414>,  <19.968519, 21.997709, 1.995137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.893066, 21.876198, 1.802414>,  <19.767311, 21.673679, 1.481210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.893066, 21.876198, 1.802414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455240, -0.661879, 0.595544,
		0.833017, -0.552793, 0.022401,
		0.314386, 0.506297, 0.803010,
		19.987383, 22.028088, 2.043317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.237549, 21.212101, 1.845791>,  <19.767311, 21.673679, 1.481210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.237549, 21.212101, 1.845791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007484, 21.468933, 2.048540>,  <19.869446, 21.623034, 2.170189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.007484, 21.468933, 2.048540>,  <20.237549, 21.212101, 1.845791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.007484, 21.468933, 2.048540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364731, -0.755903, 0.543674,
		0.732230, 0.127828, 0.668954,
		-0.575161, 0.642083, 0.506872,
		19.834936, 21.661558, 2.200602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.937386, 20.778625, 2.274539>,  <20.237549, 21.212101, 1.845791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.937386, 20.778625, 2.274539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773579, 21.105766, 2.436235>,  <19.675295, 21.302052, 2.533252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.773579, 21.105766, 2.436235>,  <19.937386, 20.778625, 2.274539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.773579, 21.105766, 2.436235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260869, -0.529574, 0.807154,
		0.874209, 0.225091, 0.430223,
		-0.409519, 0.817854, 0.404240,
		19.650723, 21.351122, 2.557507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.338011, 21.009745, 2.899475>,  <19.937386, 20.778625, 2.274539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.338011, 21.009745, 2.899475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947880, 21.097927, 2.894777>,  <19.713802, 21.150837, 2.891958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.947880, 21.097927, 2.894777>,  <20.338011, 21.009745, 2.899475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.947880, 21.097927, 2.894777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112915, -0.452419, 0.884628,
		0.189708, 0.864127, 0.466149,
		-0.975326, 0.220456, -0.011745,
		19.655281, 21.164064, 2.891254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.143641, 21.342205, 3.476048>,  <20.338011, 21.009745, 2.899475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.143641, 21.342205, 3.476048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812649, 21.151493, 3.357415>,  <19.614054, 21.037066, 3.286235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.812649, 21.151493, 3.357415>,  <20.143641, 21.342205, 3.476048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.812649, 21.151493, 3.357415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075683, -0.618085, 0.782460,
		-0.556375, 0.625022, 0.547535,
		-0.827478, -0.476780, -0.296583,
		19.564405, 21.008459, 3.268440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.600897, 21.351337, 3.978586>,  <20.143641, 21.342205, 3.476048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.600897, 21.351337, 3.978586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570744, 21.023209, 3.751821>,  <19.552652, 20.826332, 3.615762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.570744, 21.023209, 3.751821>,  <19.600897, 21.351337, 3.978586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.570744, 21.023209, 3.751821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141084, -0.571584, 0.808323,
		-0.987124, -0.019050, 0.158821,
		-0.075381, -0.820322, -0.566912,
		19.548130, 20.777111, 3.581748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.049580, 20.928511, 4.276376>,  <19.600897, 21.351337, 3.978586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.049580, 20.928511, 4.276376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323601, 20.727768, 4.065153>,  <19.488012, 20.607323, 3.938419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.323601, 20.727768, 4.065153>,  <19.049580, 20.928511, 4.276376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.323601, 20.727768, 4.065153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110123, -0.645193, 0.756041,
		-0.720124, -0.576078, -0.386724,
		0.685051, -0.501856, -0.528058,
		19.529116, 20.577211, 3.906735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.990288, 20.209917, 4.398157>,  <19.049580, 20.928511, 4.276376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.990288, 20.209917, 4.398157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.368240, 20.251881, 4.274094>,  <19.595011, 20.277060, 4.199656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.368240, 20.251881, 4.274094>,  <18.990288, 20.209917, 4.398157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.368240, 20.251881, 4.274094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315517, -0.544824, 0.776927,
		-0.087474, -0.831962, -0.547893,
		0.944879, 0.104908, -0.310156,
		19.651705, 20.283354, 4.181047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.229921, 19.651115, 4.664745>,  <18.990288, 20.209917, 4.398157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.229921, 19.651115, 4.664745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571609, 19.832275, 4.562620>,  <19.776623, 19.940971, 4.501344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.571609, 19.832275, 4.562620>,  <19.229921, 19.651115, 4.664745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.571609, 19.832275, 4.562620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477912, -0.490662, 0.728595,
		0.204709, -0.744399, -0.635582,
		0.854221, 0.452902, -0.255314,
		19.827875, 19.968145, 4.486025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.750734, 19.171389, 4.786025>,  <19.229921, 19.651115, 4.664745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.750734, 19.171389, 4.786025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982243, 19.490284, 4.717399>,  <20.121147, 19.681622, 4.676223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.982243, 19.490284, 4.717399>,  <19.750734, 19.171389, 4.786025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.982243, 19.490284, 4.717399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607459, -0.281115, 0.742945,
		0.544075, -0.534214, -0.646991,
		0.578771, 0.797238, -0.171566,
		20.155874, 19.729456, 4.665929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.459311, 18.993921, 4.826961>,  <19.750734, 19.171389, 4.786025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.459311, 18.993921, 4.826961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409817, 19.374401, 4.940037>,  <20.380119, 19.602688, 5.007882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.409817, 19.374401, 4.940037>,  <20.459311, 18.993921, 4.826961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.409817, 19.374401, 4.940037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601416, -0.154709, 0.783813,
		0.789296, 0.267000, -0.552922,
		-0.123736, 0.951197, 0.282689,
		20.372696, 19.659760, 5.024844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109131, 19.303974, 4.823723>,  <20.459311, 18.993921, 4.826961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109131, 19.303974, 4.823723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872395, 19.510029, 5.071709>,  <20.730352, 19.633663, 5.220500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.872395, 19.510029, 5.071709>,  <21.109131, 19.303974, 4.823723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.872395, 19.510029, 5.071709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712403, -0.025536, 0.701306,
		0.377102, 0.856726, -0.351873,
		-0.591842, 0.515139, 0.619964,
		20.694841, 19.664570, 5.257698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.404953, 19.987177, 5.027313>,  <21.109131, 19.303974, 4.823723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.404953, 19.987177, 5.027313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149643, 19.868900, 5.311615>,  <20.996456, 19.797935, 5.482196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149643, 19.868900, 5.311615>,  <21.404953, 19.987177, 5.027313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149643, 19.868900, 5.311615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743691, 0.001606, 0.668521,
		-0.198817, 0.955283, 0.218877,
		-0.638275, -0.295690, 0.710755,
		20.958160, 19.780193, 5.524841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.838371, 20.151775, 5.561044>,  <21.404953, 19.987177, 5.027313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.838371, 20.151775, 5.561044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581161, 19.886803, 5.714773>,  <21.426836, 19.727819, 5.807011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.581161, 19.886803, 5.714773>,  <21.838371, 20.151775, 5.561044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.581161, 19.886803, 5.714773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656523, -0.218413, 0.721992,
		-0.394329, 0.716577, 0.575346,
		-0.643026, -0.662430, 0.384323,
		21.388254, 19.688074, 5.830070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.797035, 20.394537, 6.245483>,  <21.838371, 20.151775, 5.561044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.797035, 20.394537, 6.245483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733444, 20.005413, 6.178115>,  <21.695290, 19.771938, 6.137694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.733444, 20.005413, 6.178115>,  <21.797035, 20.394537, 6.245483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.733444, 20.005413, 6.178115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643285, -0.231474, 0.729797,
		-0.748940, 0.007678, 0.662593,
		-0.158977, -0.972811, -0.168421,
		21.685751, 19.713570, 6.127588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.449453, 19.958204, 6.811213>,  <21.797035, 20.394537, 6.245483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.449453, 19.958204, 6.811213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.722748, 19.716354, 6.647448>,  <21.886724, 19.571245, 6.549189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.722748, 19.716354, 6.647448>,  <21.449453, 19.958204, 6.811213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.722748, 19.716354, 6.647448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487987, -0.039016, 0.871979,
		-0.543194, -0.795554, 0.268392,
		0.683235, -0.604625, -0.409413,
		21.927719, 19.534967, 6.524624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.496597, 19.247814, 7.134039>,  <21.449453, 19.958204, 6.811213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.496597, 19.247814, 7.134039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837448, 19.391773, 6.982065>,  <22.041960, 19.478148, 6.890881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.837448, 19.391773, 6.982065>,  <21.496597, 19.247814, 7.134039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.837448, 19.391773, 6.982065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398153, 0.025318, 0.916970,
		0.339634, -0.932649, -0.121720,
		0.852129, 0.359897, -0.379936,
		22.093086, 19.499743, 6.868084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.857862, 18.758444, 7.414681>,  <21.496597, 19.247814, 7.134039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.857862, 18.758444, 7.414681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995796, 19.133781, 7.404862>,  <22.078556, 19.358984, 7.398971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.995796, 19.133781, 7.404862>,  <21.857862, 18.758444, 7.414681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.995796, 19.133781, 7.404862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119910, -0.018100, 0.992620,
		0.930973, -0.345232, -0.118758,
		0.344834, 0.938343, -0.024547,
		22.099247, 19.415285, 7.397499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.382748, 18.836887, 7.951165>,  <21.857862, 18.758444, 7.414681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.382748, 18.836887, 7.951165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.319374, 19.229721, 7.910361>,  <22.281349, 19.465422, 7.885880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.319374, 19.229721, 7.910361>,  <22.382748, 18.836887, 7.951165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.319374, 19.229721, 7.910361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119328, 0.121601, 0.985380,
		0.980132, 0.143946, -0.136456,
		-0.158435, 0.982086, -0.102008,
		22.271843, 19.524347, 7.879759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.857233, 19.263088, 8.314450>,  <22.382748, 18.836887, 7.951165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.857233, 19.263088, 8.314450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546497, 19.511570, 8.273219>,  <22.360056, 19.660660, 8.248481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.546497, 19.511570, 8.273219>,  <22.857233, 19.263088, 8.314450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.546497, 19.511570, 8.273219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043824, 0.216631, 0.975269,
		0.628173, 0.753110, -0.195511,
		-0.776839, 0.621206, -0.103078,
		22.313446, 19.697931, 8.242295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.071043, 19.804409, 8.612341>,  <22.857233, 19.263088, 8.314450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.071043, 19.804409, 8.612341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687458, 19.914688, 8.585850>,  <22.457308, 19.980856, 8.569955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.687458, 19.914688, 8.585850>,  <23.071043, 19.804409, 8.612341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.687458, 19.914688, 8.585850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080618, 0.489047, 0.868524,
		0.271839, 0.827541, -0.491203,
		-0.958960, 0.275698, -0.066227,
		22.399771, 19.997398, 8.565982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.166651, 20.503384, 8.650763>,  <23.071043, 19.804409, 8.612341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.166651, 20.503384, 8.650763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800751, 20.387688, 8.763599>,  <22.581211, 20.318270, 8.831302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.800751, 20.387688, 8.763599>,  <23.166651, 20.503384, 8.650763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.800751, 20.387688, 8.763599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120138, 0.471896, 0.873431,
		-0.385750, 0.832859, -0.396917,
		-0.914748, -0.289241, 0.282092,
		22.526327, 20.300915, 8.848227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.900620, 21.037666, 9.093638>,  <23.166651, 20.503384, 8.650763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.900620, 21.037666, 9.093638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659977, 20.724693, 9.157978>,  <22.515591, 20.536909, 9.196582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.659977, 20.724693, 9.157978>,  <22.900620, 21.037666, 9.093638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.659977, 20.724693, 9.157978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097539, 0.271814, 0.957394,
		-0.792816, 0.560285, -0.239843,
		-0.601606, -0.782431, 0.160849,
		22.479496, 20.489964, 9.206233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.337132, 21.325348, 9.403090>,  <22.900620, 21.037666, 9.093638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.337132, 21.325348, 9.403090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366272, 20.940571, 9.508432>,  <22.383757, 20.709703, 9.571638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.366272, 20.940571, 9.508432>,  <22.337132, 21.325348, 9.403090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.366272, 20.940571, 9.508432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106708, 0.255024, 0.961029,
		-0.991618, -0.098114, -0.084068,
		0.072851, -0.961944, 0.263356,
		22.388128, 20.651987, 9.587440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.702053, 21.201380, 9.742672>,  <22.337132, 21.325348, 9.403090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.702053, 21.201380, 9.742672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980343, 20.943451, 9.869270>,  <22.147316, 20.788692, 9.945230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.980343, 20.943451, 9.869270>,  <21.702053, 21.201380, 9.742672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.980343, 20.943451, 9.869270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234014, 0.213106, 0.948590,
		-0.679121, -0.734022, -0.002634,
		0.695724, -0.644824, 0.316496,
		22.189060, 20.750004, 9.964219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.352617, 20.719360, 10.189721>,  <21.702053, 21.201380, 9.742672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.352617, 20.719360, 10.189721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736660, 20.641541, 10.270062>,  <21.967087, 20.594849, 10.318268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736660, 20.641541, 10.270062>,  <21.352617, 20.719360, 10.189721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736660, 20.641541, 10.270062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213753, -0.047528, 0.975731,
		-0.180286, -0.979740, -0.087219,
		0.960107, -0.194554, 0.200853,
		22.024693, 20.583176, 10.330318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371941, 20.225176, 10.792524>,  <21.352617, 20.719360, 10.189721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371941, 20.225176, 10.792524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736195, 20.389648, 10.776162>,  <21.954746, 20.488333, 10.766345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.736195, 20.389648, 10.776162>,  <21.371941, 20.225176, 10.792524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.736195, 20.389648, 10.776162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063768, -0.042034, 0.997079,
		0.408262, -0.910584, -0.064498,
		0.910635, 0.411182, -0.040906,
		22.009384, 20.513002, 10.763890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.805241, 19.757065, 11.122932>,  <21.371941, 20.225176, 10.792524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.805241, 19.757065, 11.122932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998116, 20.107262, 11.135613>,  <22.113840, 20.317381, 11.143222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.998116, 20.107262, 11.135613>,  <21.805241, 19.757065, 11.122932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998116, 20.107262, 11.135613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119683, -0.101679, 0.987592,
		0.867854, -0.472411, -0.153810,
		0.482189, 0.875494, 0.031703,
		22.142773, 20.369909, 11.145124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.356213, 19.657921, 11.615526>,  <21.805241, 19.757065, 11.122932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.356213, 19.657921, 11.615526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.290882, 20.051777, 11.590839>,  <22.251684, 20.288090, 11.576027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.290882, 20.051777, 11.590839>,  <22.356213, 19.657921, 11.615526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.290882, 20.051777, 11.590839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052040, 0.053872, 0.997191,
		0.985198, 0.166080, 0.042442,
		-0.163327, 0.984640, -0.061718,
		22.241884, 20.347168, 11.572324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.777328, 20.056036, 12.080112>,  <22.356213, 19.657921, 11.615526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.777328, 20.056036, 12.080112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478413, 20.309166, 11.999029>,  <22.299063, 20.461044, 11.950379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.478413, 20.309166, 11.999029>,  <22.777328, 20.056036, 12.080112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.478413, 20.309166, 11.999029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158714, 0.126244, 0.979220,
		0.645268, 0.763932, 0.006098,
		-0.747288, 0.632827, -0.202708,
		22.254227, 20.499014, 11.938217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.712017, 20.363726, 12.642869>,  <22.777328, 20.056036, 12.080112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.712017, 20.363726, 12.642869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374382, 20.488071, 12.468111>,  <22.171801, 20.562679, 12.363256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.374382, 20.488071, 12.468111>,  <22.712017, 20.363726, 12.642869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.374382, 20.488071, 12.468111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396325, 0.187108, 0.898842,
		0.361166, 0.931854, -0.034732,
		-0.844089, 0.310866, -0.436894,
		22.121155, 20.581331, 12.337043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.584164, 20.939869, 12.969772>,  <22.712017, 20.363726, 12.642869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.584164, 20.939869, 12.969772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220486, 20.843182, 12.834163>,  <22.002279, 20.785170, 12.752797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.220486, 20.843182, 12.834163>,  <22.584164, 20.939869, 12.969772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.220486, 20.843182, 12.834163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392839, 0.228137, 0.890860,
		-0.137992, 0.943147, -0.302377,
		-0.909195, -0.241717, -0.339024,
		21.947727, 20.770666, 12.732455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.108721, 21.450102, 13.306114>,  <22.584164, 20.939869, 12.969772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.108721, 21.450102, 13.306114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891994, 21.132690, 13.195303>,  <21.761959, 20.942244, 13.128817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.891994, 21.132690, 13.195303>,  <22.108721, 21.450102, 13.306114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.891994, 21.132690, 13.195303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676261, 0.215860, 0.704326,
		-0.499106, 0.568958, -0.653590,
		-0.541816, -0.793531, -0.277027,
		21.729450, 20.894630, 13.112195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.473616, 21.703226, 13.085680>,  <22.108721, 21.450102, 13.306114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.473616, 21.703226, 13.085680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429798, 21.326824, 13.213751>,  <21.403507, 21.100983, 13.290593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.429798, 21.326824, 13.213751>,  <21.473616, 21.703226, 13.085680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429798, 21.326824, 13.213751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563176, 0.324182, 0.760091,
		-0.819044, -0.097051, -0.565463,
		-0.109545, -0.941003, 0.320176,
		21.396935, 21.044523, 13.309804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833815, 21.823175, 13.338858>,  <21.473616, 21.703226, 13.085680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833815, 21.823175, 13.338858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960411, 21.464031, 13.461288>,  <21.036369, 21.248545, 13.534747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.960411, 21.464031, 13.461288>,  <20.833815, 21.823175, 13.338858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.960411, 21.464031, 13.461288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621890, 0.047258, 0.781677,
		-0.716301, -0.437739, -0.543413,
		0.316490, -0.897859, 0.306076,
		21.055359, 21.194674, 13.553111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.229210, 21.387720, 13.555800>,  <20.833815, 21.823175, 13.338858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.229210, 21.387720, 13.555800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542900, 21.256062, 13.766191>,  <20.731115, 21.177067, 13.892426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.542900, 21.256062, 13.766191>,  <20.229210, 21.387720, 13.555800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.542900, 21.256062, 13.766191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578829, -0.082761, 0.811239,
		-0.223484, -0.940646, -0.255422,
		0.784227, -0.329144, 0.525977,
		20.778168, 21.157318, 13.923985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.848703, 21.042118, 14.057865>,  <20.229210, 21.387720, 13.555800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.848703, 21.042118, 14.057865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217541, 21.087933, 14.205717>,  <20.438843, 21.115421, 14.294428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.217541, 21.087933, 14.205717>,  <19.848703, 21.042118, 14.057865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.217541, 21.087933, 14.205717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375439, 0.033373, 0.926246,
		0.093757, -0.992858, 0.073776,
		0.922093, 0.114541, 0.369629,
		20.494169, 21.122293, 14.316606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.754837, 20.816427, 14.758018>,  <19.848703, 21.042118, 14.057865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.754837, 20.816427, 14.758018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118359, 20.981907, 14.779663>,  <20.336472, 21.081194, 14.792649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.118359, 20.981907, 14.779663>,  <19.754837, 20.816427, 14.758018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.118359, 20.981907, 14.779663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151816, 0.207092, 0.966470,
		0.388624, -0.886546, 0.251012,
		0.908803, 0.413701, 0.054111,
		20.390999, 21.106016, 14.795897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122818, 20.393902, 15.313784>,  <19.754837, 20.816427, 14.758018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122818, 20.393902, 15.313784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254658, 20.766865, 15.254475>,  <20.333761, 20.990643, 15.218889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.254658, 20.766865, 15.254475>,  <20.122818, 20.393902, 15.313784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.254658, 20.766865, 15.254475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222386, 0.229303, 0.947609,
		0.917556, -0.279356, 0.282932,
		0.329598, 0.932405, -0.148273,
		20.353537, 21.046587, 15.209992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.523458, 20.553804, 15.858396>,  <20.122818, 20.393902, 15.313784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.523458, 20.553804, 15.858396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434437, 20.927338, 15.746378>,  <20.381023, 21.151459, 15.679168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.434437, 20.927338, 15.746378>,  <20.523458, 20.553804, 15.858396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.434437, 20.927338, 15.746378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214584, 0.233283, 0.948437,
		0.951012, 0.271170, 0.148469,
		-0.222552, 0.933834, -0.280044,
		20.367672, 21.207487, 15.662365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.900694, 20.973166, 16.093842>,  <20.523458, 20.553804, 15.858396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.900694, 20.973166, 16.093842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614319, 21.247570, 16.041965>,  <20.442493, 21.412212, 16.010839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.614319, 21.247570, 16.041965>,  <20.900694, 20.973166, 16.093842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.614319, 21.247570, 16.041965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015720, 0.201551, 0.979352,
		0.697987, 0.699116, -0.155082,
		-0.715937, 0.686013, -0.129690,
		20.399538, 21.453375, 16.003059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.127729, 21.522442, 16.504169>,  <20.900694, 20.973166, 16.093842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.127729, 21.522442, 16.504169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.744785, 21.615776, 16.436029>,  <20.515018, 21.671776, 16.395145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.744785, 21.615776, 16.436029>,  <21.127729, 21.522442, 16.504169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744785, 21.615776, 16.436029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122295, 0.206904, 0.970688,
		0.261742, 0.950129, -0.169545,
		-0.957358, 0.233335, -0.170352,
		20.457579, 21.685776, 16.384924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.029078, 22.113356, 16.841227>,  <21.127729, 21.522442, 16.504169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.029078, 22.113356, 16.841227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655746, 21.972652, 16.812466>,  <20.431747, 21.888231, 16.795210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655746, 21.972652, 16.812466>,  <21.029078, 22.113356, 16.841227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655746, 21.972652, 16.812466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140793, 0.174361, 0.974564,
		-0.330274, 0.919709, -0.212261,
		-0.933326, -0.351758, -0.071901,
		20.375750, 21.867125, 16.790895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.696108, 22.653601, 17.149969>,  <21.029078, 22.113356, 16.841227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.696108, 22.653601, 17.149969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454948, 22.334534, 17.156141>,  <20.310253, 22.143093, 17.159843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.454948, 22.334534, 17.156141>,  <20.696108, 22.653601, 17.149969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.454948, 22.334534, 17.156141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180881, 0.155498, 0.971135,
		-0.777042, 0.582706, -0.238033,
		-0.602899, -0.797668, 0.015428,
		20.274078, 22.095234, 17.160770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.117214, 22.858660, 17.496853>,  <20.696108, 22.653601, 17.149969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.117214, 22.858660, 17.496853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113789, 22.459259, 17.518475>,  <20.111732, 22.219618, 17.531448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.113789, 22.459259, 17.518475>,  <20.117214, 22.858660, 17.496853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113789, 22.459259, 17.518475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210150, 0.054646, 0.976141,
		-0.977632, -0.002997, -0.210303,
		-0.008566, -0.998501, 0.054054,
		20.111219, 22.159708, 17.534691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.443022, 22.714779, 17.805357>,  <20.117214, 22.858660, 17.496853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.443022, 22.714779, 17.805357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701511, 22.419037, 17.880987>,  <19.856606, 22.241592, 17.926365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701511, 22.419037, 17.880987>,  <19.443022, 22.714779, 17.805357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701511, 22.419037, 17.880987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409225, -0.126601, 0.903608,
		-0.644149, -0.661308, -0.384375,
		0.646225, -0.739354, 0.189074,
		19.895378, 22.197231, 17.937710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.002529, 22.285320, 18.037111>,  <19.443022, 22.714779, 17.805357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.002529, 22.285320, 18.037111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357143, 22.151230, 18.164658>,  <19.569912, 22.070776, 18.241186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.357143, 22.151230, 18.164658>,  <19.002529, 22.285320, 18.037111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.357143, 22.151230, 18.164658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384571, -0.150777, 0.910698,
		-0.257213, -0.929994, -0.262588,
		0.886536, -0.335227, 0.318867,
		19.623104, 22.050663, 18.260319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.971605, 21.625435, 18.424921>,  <19.002529, 22.285320, 18.037111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.971605, 21.625435, 18.424921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335648, 21.743149, 18.541613>,  <19.554073, 21.813778, 18.611628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.335648, 21.743149, 18.541613>,  <18.971605, 21.625435, 18.424921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.335648, 21.743149, 18.541613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266524, -0.123349, 0.955903,
		0.317294, -0.947724, -0.033826,
		0.910104, 0.294286, 0.291728,
		19.608679, 21.831434, 18.629131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.113945, 21.144239, 18.851843>,  <18.971605, 21.625435, 18.424921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.113945, 21.144239, 18.851843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346737, 21.455379, 18.946709>,  <19.486412, 21.642063, 19.003628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.346737, 21.455379, 18.946709>,  <19.113945, 21.144239, 18.851843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.346737, 21.455379, 18.946709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264109, -0.095039, 0.959799,
		0.769122, -0.621219, 0.150127,
		0.581978, 0.777852, 0.237166,
		19.521330, 21.688736, 19.017859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.445070, 21.011494, 19.437746>,  <19.113945, 21.144239, 18.851843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.445070, 21.011494, 19.437746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469246, 21.410526, 19.451502>,  <19.483751, 21.649946, 19.459755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.469246, 21.410526, 19.451502>,  <19.445070, 21.011494, 19.437746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469246, 21.410526, 19.451502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160912, -0.024266, 0.986670,
		0.985117, -0.065165, 0.159056,
		0.060437, 0.997580, 0.034391,
		19.487377, 21.709801, 19.461819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953503, 21.095144, 19.892782>,  <19.445070, 21.011494, 19.437746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953503, 21.095144, 19.892782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777424, 21.454159, 19.903055>,  <19.671776, 21.669567, 19.909218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.777424, 21.454159, 19.903055>,  <19.953503, 21.095144, 19.892782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.777424, 21.454159, 19.903055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078597, -0.067008, 0.994652,
		0.894455, 0.435824, 0.100040,
		-0.440197, 0.897534, 0.025681,
		19.645365, 21.723419, 19.910759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.261322, 21.405888, 20.543837>,  <19.953503, 21.095144, 19.892782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.261322, 21.405888, 20.543837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951836, 21.640667, 20.448462>,  <19.766144, 21.781534, 20.391235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.951836, 21.640667, 20.448462>,  <20.261322, 21.405888, 20.543837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.951836, 21.640667, 20.448462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154934, 0.189632, 0.969554,
		0.614294, 0.787103, -0.055782,
		-0.773717, 0.586949, -0.238439,
		19.719721, 21.816751, 20.376930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.214903, 21.943756, 21.049728>,  <20.261322, 21.405888, 20.543837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.214903, 21.943756, 21.049728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856895, 21.910576, 20.874430>,  <19.642092, 21.890667, 20.769251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.856895, 21.910576, 20.874430>,  <20.214903, 21.943756, 21.049728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.856895, 21.910576, 20.874430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445295, 0.222503, 0.867298,
		0.025567, 0.971397, -0.236082,
		-0.895019, -0.082951, -0.438247,
		19.588390, 21.885691, 20.742956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.910101, 22.608864, 21.036633>,  <20.214903, 21.943756, 21.049728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.910101, 22.608864, 21.036633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608212, 22.348438, 21.004347>,  <19.427078, 22.192183, 20.984976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.608212, 22.348438, 21.004347>,  <19.910101, 22.608864, 21.036633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.608212, 22.348438, 21.004347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472454, 0.454028, 0.755411,
		-0.455174, 0.608258, -0.650261,
		-0.754721, -0.651062, -0.080712,
		19.381796, 22.153120, 20.980133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.294905, 23.028645, 21.163551>,  <19.910101, 22.608864, 21.036633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.294905, 23.028645, 21.163551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.181713, 22.651123, 21.231857>,  <19.113798, 22.424610, 21.272840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.181713, 22.651123, 21.231857>,  <19.294905, 23.028645, 21.163551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.181713, 22.651123, 21.231857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576859, 0.309715, 0.755850,
		-0.766262, 0.115383, -0.632084,
		-0.282978, -0.943802, 0.170763,
		19.096819, 22.367983, 21.283087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.571665, 23.011610, 21.116308>,  <19.294905, 23.028645, 21.163551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.571665, 23.011610, 21.116308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720562, 22.726665, 21.354294>,  <18.809900, 22.555698, 21.497086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.720562, 22.726665, 21.354294>,  <18.571665, 23.011610, 21.116308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.720562, 22.726665, 21.354294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590677, 0.312633, 0.743882,
		-0.715917, -0.628334, -0.304400,
		0.372241, -0.712360, 0.594962,
		18.832233, 22.512957, 21.532782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020296, 22.984018, 21.544752>,  <18.571665, 23.011610, 21.116308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020296, 22.984018, 21.544752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304436, 22.775948, 21.734413>,  <18.474920, 22.651104, 21.848209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.304436, 22.775948, 21.734413>,  <18.020296, 22.984018, 21.544752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.304436, 22.775948, 21.734413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270437, 0.420233, 0.866180,
		-0.649822, -0.743518, 0.157836,
		0.710348, -0.520179, 0.474151,
		18.517540, 22.619894, 21.876659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.684422, 22.640333, 22.095951>,  <18.020296, 22.984018, 21.544752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.684422, 22.640333, 22.095951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070854, 22.641182, 22.199240>,  <18.302713, 22.641691, 22.261213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.070854, 22.641182, 22.199240>,  <17.684422, 22.640333, 22.095951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.070854, 22.641182, 22.199240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233469, 0.434470, 0.869901,
		-0.110344, -0.900684, 0.420230,
		0.966083, 0.002123, 0.258222,
		18.360680, 22.641819, 22.276707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.674404, 22.329407, 22.717232>,  <17.684422, 22.640333, 22.095951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.674404, 22.329407, 22.717232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002224, 22.558289, 22.729382>,  <18.198915, 22.695618, 22.736671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.002224, 22.558289, 22.729382>,  <17.674404, 22.329407, 22.717232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002224, 22.558289, 22.729382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175421, 0.200078, 0.963948,
		0.545499, -0.795330, 0.264350,
		0.819548, 0.572205, 0.030376,
		18.248089, 22.729950, 22.738495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.981773, 22.157190, 23.398689>,  <17.674404, 22.329407, 22.717232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.981773, 22.157190, 23.398689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120022, 22.504795, 23.257059>,  <18.202971, 22.713358, 23.172081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120022, 22.504795, 23.257059>,  <17.981773, 22.157190, 23.398689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120022, 22.504795, 23.257059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091985, 0.406887, 0.908836,
		0.933855, -0.281542, 0.220563,
		0.345619, 0.869010, -0.354076,
		18.223707, 22.765497, 23.150837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.366102, 22.358818, 23.952732>,  <17.981773, 22.157190, 23.398689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.366102, 22.358818, 23.952732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334999, 22.689339, 23.729597>,  <18.316338, 22.887651, 23.595716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.334999, 22.689339, 23.729597>,  <18.366102, 22.358818, 23.952732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.334999, 22.689339, 23.729597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222865, 0.530964, 0.817562,
		0.971743, 0.187895, 0.142866,
		-0.077760, 0.826300, -0.557836,
		18.311670, 22.937229, 23.562246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.842642, 22.890303, 24.170111>,  <18.366102, 22.358818, 23.952732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.842642, 22.890303, 24.170111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.528275, 23.074368, 24.004902>,  <18.339655, 23.184807, 23.905777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.528275, 23.074368, 24.004902>,  <18.842642, 22.890303, 24.170111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.528275, 23.074368, 24.004902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143195, 0.514355, 0.845538,
		0.601523, 0.723665, -0.338348,
		-0.785917, 0.460160, -0.413022,
		18.292500, 23.212416, 23.880995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.896461, 23.684269, 24.100376>,  <18.842642, 22.890303, 24.170111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.896461, 23.684269, 24.100376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505127, 23.601570, 24.104589>,  <18.270327, 23.551950, 24.107119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.505127, 23.601570, 24.104589>,  <18.896461, 23.684269, 24.100376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.505127, 23.601570, 24.104589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131845, 0.661511, 0.738255,
		-0.159601, 0.720873, -0.674440,
		-0.978338, -0.206748, 0.010535,
		18.211626, 23.539545, 24.107750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.474463, 24.240469, 24.022055>,  <18.896461, 23.684269, 24.100376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.474463, 24.240469, 24.022055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.288937, 23.990646, 24.273388>,  <18.177620, 23.840754, 24.424189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.288937, 23.990646, 24.273388>,  <18.474463, 24.240469, 24.022055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.288937, 23.990646, 24.273388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135976, 0.751018, 0.646128,
		-0.875434, 0.214246, -0.433259,
		-0.463816, -0.624556, 0.628335,
		18.149792, 23.803280, 24.461889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734348, 24.385504, 24.189348>,  <18.474463, 24.240469, 24.022055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734348, 24.385504, 24.189348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924320, 24.217960, 24.498928>,  <18.038303, 24.117434, 24.684675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924320, 24.217960, 24.498928>,  <17.734348, 24.385504, 24.189348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924320, 24.217960, 24.498928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322517, 0.735431, 0.595923,
		-0.818795, -0.532634, 0.214188,
		0.474929, -0.418860, 0.773950,
		18.066799, 24.092302, 24.731113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.068575, 24.406799, 24.673590>,  <17.734348, 24.385504, 24.189348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.068575, 24.406799, 24.673590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444542, 24.399212, 24.809938>,  <17.670122, 24.394659, 24.891748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.444542, 24.399212, 24.809938>,  <17.068575, 24.406799, 24.673590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.444542, 24.399212, 24.809938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174345, 0.831774, 0.527026,
		-0.293525, -0.554790, 0.778493,
		0.939919, -0.018969, 0.340871,
		17.726517, 24.393520, 24.912199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.089714, 24.376703, 25.447725>,  <17.068575, 24.406799, 24.673590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.089714, 24.376703, 25.447725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425709, 24.533897, 25.298069>,  <17.627306, 24.628214, 25.208275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.425709, 24.533897, 25.298069>,  <17.089714, 24.376703, 25.447725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.425709, 24.533897, 25.298069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057727, 0.750339, 0.658528,
		0.539523, -0.531558, 0.652962,
		0.839989, 0.392985, -0.374140,
		17.677706, 24.651793, 25.185827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.353210, 24.573044, 25.374613>,  <17.089714, 24.376703, 25.447725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.353210, 24.573044, 25.374613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413662, 24.889542, 25.137600>,  <16.449932, 25.079439, 24.995392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.413662, 24.889542, 25.137600>,  <16.353210, 24.573044, 25.374613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.413662, 24.889542, 25.137600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075433, -0.606901, -0.791190,
		-0.985632, 0.074876, -0.151407,
		0.151130, 0.791242, -0.592533,
		16.459002, 25.126915, 24.959841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.162655, 24.351482, 24.665794>,  <16.353210, 24.573044, 25.374613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.162655, 24.351482, 24.665794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365395, 24.694122, 24.627140>,  <16.487038, 24.899706, 24.603947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.365395, 24.694122, 24.627140>,  <16.162655, 24.351482, 24.665794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.365395, 24.694122, 24.627140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201974, -0.226987, -0.952724,
		-0.838040, 0.463369, -0.288059,
		0.506848, 0.856602, -0.096636,
		16.517448, 24.951103, 24.598150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.471556, 23.892448, 24.121424>,  <16.162655, 24.351482, 24.665794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.471556, 23.892448, 24.121424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573311, 24.206062, 23.894945>,  <16.634363, 24.394230, 23.759058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.573311, 24.206062, 23.894945>,  <16.471556, 23.892448, 24.121424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.573311, 24.206062, 23.894945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293170, -0.495389, -0.817704,
		-0.921595, 0.374006, 0.103834,
		0.254388, 0.784034, -0.566196,
		16.649628, 24.441273, 23.725086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.899140, 24.189850, 23.652369>,  <16.471556, 23.892448, 24.121424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.899140, 24.189850, 23.652369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269421, 24.247723, 23.512571>,  <16.491589, 24.282446, 23.428694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.269421, 24.247723, 23.512571>,  <15.899140, 24.189850, 23.652369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.269421, 24.247723, 23.512571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294642, -0.303589, -0.906101,
		-0.237198, 0.941754, -0.238404,
		0.925701, 0.144682, -0.349491,
		16.547131, 24.291128, 23.407724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.870916, 24.542122, 23.011810>,  <15.899140, 24.189850, 23.652369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.870916, 24.542122, 23.011810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224236, 24.356888, 23.041031>,  <16.436226, 24.245747, 23.058563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.224236, 24.356888, 23.041031>,  <15.870916, 24.542122, 23.011810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.224236, 24.356888, 23.041031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076059, -0.295312, -0.952369,
		0.462603, 0.835668, -0.296070,
		0.883297, -0.463087, 0.073052,
		16.489225, 24.217962, 23.062946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.369469, 24.835417, 22.494169>,  <15.870916, 24.542122, 23.011810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.369469, 24.835417, 22.494169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475597, 24.461445, 22.588408>,  <16.539274, 24.237061, 22.644951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.475597, 24.461445, 22.588408>,  <16.369469, 24.835417, 22.494169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.475597, 24.461445, 22.588408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247613, -0.170085, -0.953813,
		0.931822, 0.311406, 0.186373,
		0.265323, -0.934932, 0.235597,
		16.555195, 24.180965, 22.659086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839592, 24.686605, 21.901428>,  <16.369469, 24.835417, 22.494169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839592, 24.686605, 21.901428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748150, 24.317955, 22.026871>,  <16.693285, 24.096766, 22.102137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748150, 24.317955, 22.026871>,  <16.839592, 24.686605, 21.901428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748150, 24.317955, 22.026871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084861, -0.339774, -0.936671,
		0.969814, -0.187514, 0.155884,
		-0.228604, -0.921625, 0.313605,
		16.679569, 24.041468, 22.120953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.317444, 24.268763, 21.517389>,  <16.839592, 24.686605, 21.901428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.317444, 24.268763, 21.517389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043228, 24.007732, 21.646500>,  <16.878700, 23.851114, 21.723967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.043228, 24.007732, 21.646500>,  <17.317444, 24.268763, 21.517389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.043228, 24.007732, 21.646500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064350, -0.387303, -0.919704,
		0.725189, -0.651262, 0.223517,
		-0.685537, -0.652575, 0.322777,
		16.837566, 23.811960, 21.743332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.570807, 23.617517, 21.275909>,  <17.317444, 24.268763, 21.517389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.570807, 23.617517, 21.275909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179718, 23.576836, 21.349361>,  <16.945065, 23.552427, 21.393433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.179718, 23.576836, 21.349361>,  <17.570807, 23.617517, 21.275909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.179718, 23.576836, 21.349361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138640, -0.343977, -0.928687,
		0.157616, -0.933454, 0.322213,
		-0.977720, -0.101704, 0.183630,
		16.886402, 23.546324, 21.404451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.402798, 22.902052, 21.122797>,  <17.570807, 23.617517, 21.275909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.402798, 22.902052, 21.122797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049946, 23.084427, 21.075521>,  <16.838234, 23.193851, 21.047155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.049946, 23.084427, 21.075521>,  <17.402798, 22.902052, 21.122797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.049946, 23.084427, 21.075521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108404, -0.440724, -0.891073,
		-0.458368, -0.773227, 0.438201,
		-0.882127, 0.455942, -0.118193,
		16.785307, 23.221209, 21.040064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983093, 22.343494, 20.875301>,  <17.402798, 22.902052, 21.122797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983093, 22.343494, 20.875301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792984, 22.677471, 20.764313>,  <16.678919, 22.877857, 20.697720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.792984, 22.677471, 20.764313>,  <16.983093, 22.343494, 20.875301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.792984, 22.677471, 20.764313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401336, -0.486376, -0.776124,
		-0.782972, -0.257511, 0.566253,
		-0.475272, 0.834941, -0.277470,
		16.650402, 22.927954, 20.681072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.241175, 22.178234, 20.719666>,  <16.983093, 22.343494, 20.875301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.241175, 22.178234, 20.719666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353077, 22.492638, 20.499147>,  <16.420218, 22.681280, 20.366837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.353077, 22.492638, 20.499147>,  <16.241175, 22.178234, 20.719666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.353077, 22.492638, 20.499147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486636, -0.378900, -0.787159,
		-0.827600, 0.488493, 0.276501,
		0.279755, 0.786009, -0.551296,
		16.437004, 22.728439, 20.333759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.867376, 21.966309, 20.148676>,  <16.241175, 22.178234, 20.719666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.867376, 21.966309, 20.148676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054050, 22.304455, 20.044706>,  <16.166056, 22.507343, 19.982325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054050, 22.304455, 20.044706>,  <15.867376, 21.966309, 20.148676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054050, 22.304455, 20.044706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286661, -0.133441, -0.948693,
		-0.836678, 0.517251, 0.180059,
		0.466685, 0.845366, -0.259923,
		16.194056, 22.558065, 19.966730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.433337, 22.413540, 19.593483>,  <15.867376, 21.966309, 20.148676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.433337, 22.413540, 19.593483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815167, 22.508179, 19.521034>,  <16.044266, 22.564962, 19.477564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.815167, 22.508179, 19.521034>,  <15.433337, 22.413540, 19.593483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.815167, 22.508179, 19.521034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075703, -0.395344, -0.915408,
		-0.288191, 0.887538, -0.359474,
		0.954576, 0.236599, -0.181124,
		16.101540, 22.579159, 19.466698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442281, 22.675995, 18.950359>,  <15.433337, 22.413540, 19.593483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.442281, 22.675995, 18.950359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825496, 22.568935, 18.991404>,  <16.055426, 22.504700, 19.016029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.825496, 22.568935, 18.991404>,  <15.442281, 22.675995, 18.950359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.825496, 22.568935, 18.991404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043262, -0.218854, -0.974798,
		0.283360, 0.938332, -0.198091,
		0.958037, -0.267649, 0.102608,
		16.112907, 22.488640, 19.022186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.758742, 22.972477, 18.456303>,  <15.442281, 22.675995, 18.950359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.758742, 22.972477, 18.456303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037781, 22.697098, 18.535696>,  <16.205204, 22.531870, 18.583332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.037781, 22.697098, 18.535696>,  <15.758742, 22.972477, 18.456303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.037781, 22.697098, 18.535696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090888, -0.189759, -0.977615,
		0.710703, 0.700021, -0.069803,
		0.697597, -0.688449, 0.198486,
		16.247059, 22.490562, 18.595242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.271933, 23.069359, 17.948360>,  <15.758742, 22.972477, 18.456303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.271933, 23.069359, 17.948360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340744, 22.697308, 18.078138>,  <16.382030, 22.474077, 18.156006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340744, 22.697308, 18.078138>,  <16.271933, 23.069359, 17.948360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340744, 22.697308, 18.078138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049419, -0.320791, -0.945860,
		0.983852, 0.178747, -0.009219,
		0.172027, -0.930130, 0.324445,
		16.392353, 22.418268, 18.175472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789665, 22.960155, 17.681681>,  <16.271933, 23.069359, 17.948360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789665, 22.960155, 17.681681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662552, 22.588768, 17.758583>,  <16.586285, 22.365936, 17.804726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.662552, 22.588768, 17.758583>,  <16.789665, 22.960155, 17.681681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.662552, 22.588768, 17.758583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154644, -0.250807, -0.955605,
		0.935467, -0.273944, 0.223284,
		-0.317784, -0.928466, 0.192258,
		16.567217, 22.310228, 17.816261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.375317, 22.530184, 17.615799>,  <16.789665, 22.960155, 17.681681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.375317, 22.530184, 17.615799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047836, 22.309128, 17.553419>,  <16.851349, 22.176495, 17.515991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.047836, 22.309128, 17.553419>,  <17.375317, 22.530184, 17.615799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.047836, 22.309128, 17.553419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358071, -0.279025, -0.891027,
		0.448903, -0.785325, 0.426322,
		-0.818701, -0.552638, -0.155947,
		16.802225, 22.143337, 17.506636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.587427, 22.050238, 17.182072>,  <17.375317, 22.530184, 17.615799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.587427, 22.050238, 17.182072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.198826, 21.964069, 17.142530>,  <16.965664, 21.912369, 17.118805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.198826, 21.964069, 17.142530>,  <17.587427, 22.050238, 17.182072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.198826, 21.964069, 17.142530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134082, -0.155575, -0.978682,
		0.195448, -0.964049, 0.180026,
		-0.971505, -0.215419, -0.098855,
		16.907373, 21.899443, 17.112875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.620031, 21.387472, 16.820711>,  <17.587427, 22.050238, 17.182072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.620031, 21.387472, 16.820711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264778, 21.565536, 16.775017>,  <17.051626, 21.672375, 16.747601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264778, 21.565536, 16.775017>,  <17.620031, 21.387472, 16.820711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264778, 21.565536, 16.775017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107868, -0.039710, -0.993372,
		-0.446746, -0.894570, -0.012751,
		-0.888135, 0.445160, -0.114236,
		16.998339, 21.699085, 16.740746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236595, 20.917297, 16.404263>,  <17.620031, 21.387472, 16.820711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236595, 20.917297, 16.404263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069466, 21.277927, 16.359385>,  <16.969187, 21.494305, 16.332457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.069466, 21.277927, 16.359385>,  <17.236595, 20.917297, 16.404263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.069466, 21.277927, 16.359385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100924, -0.076670, -0.991935,
		-0.902905, -0.425778, -0.058955,
		-0.417824, 0.901573, -0.112197,
		16.944118, 21.548399, 16.325726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.020126, 20.830523, 15.777977>,  <17.236595, 20.917297, 16.404263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.020126, 20.830523, 15.777977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.958622, 21.224754, 15.806244>,  <16.921721, 21.461292, 15.823204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.958622, 21.224754, 15.806244>,  <17.020126, 20.830523, 15.777977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958622, 21.224754, 15.806244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248006, 0.107722, -0.962751,
		-0.956478, -0.130506, -0.260992,
		-0.153760, 0.985578, 0.070667,
		16.912495, 21.520428, 15.827444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.573343, 20.993710, 15.178905>,  <17.020126, 20.830523, 15.777977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.573343, 20.993710, 15.178905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794266, 21.299061, 15.312897>,  <16.926819, 21.482271, 15.393291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.794266, 21.299061, 15.312897>,  <16.573343, 20.993710, 15.178905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.794266, 21.299061, 15.312897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330048, 0.168757, -0.928757,
		-0.765524, 0.623517, -0.158747,
		0.552306, 0.763380, 0.334978,
		16.959957, 21.528074, 15.413390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.419577, 21.560219, 14.738643>,  <16.573343, 20.993710, 15.178905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.419577, 21.560219, 14.738643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772636, 21.622681, 14.915976>,  <16.984472, 21.660158, 15.022375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.772636, 21.622681, 14.915976>,  <16.419577, 21.560219, 14.738643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.772636, 21.622681, 14.915976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416348, 0.177981, -0.891615,
		-0.218136, 0.971565, 0.092080,
		0.882650, 0.156156, 0.443333,
		17.037432, 21.669527, 15.048975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.650000, 22.122169, 14.385367>,  <16.419577, 21.560219, 14.738643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.650000, 22.122169, 14.385367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961704, 21.966660, 14.581980>,  <17.148727, 21.873354, 14.699947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.961704, 21.966660, 14.581980>,  <16.650000, 22.122169, 14.385367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.961704, 21.966660, 14.581980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560523, 0.081586, -0.824110,
		0.280290, 0.917714, 0.281493,
		0.779263, -0.388774, 0.491532,
		17.195484, 21.850027, 14.729440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.033407, 22.531090, 14.068872>,  <16.650000, 22.122169, 14.385367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.033407, 22.531090, 14.068872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264896, 22.257057, 14.245844>,  <17.403790, 22.092638, 14.352027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.264896, 22.257057, 14.245844>,  <17.033407, 22.531090, 14.068872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.264896, 22.257057, 14.245844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459108, -0.174688, -0.871036,
		0.674017, 0.707212, 0.213430,
		0.578724, -0.685080, 0.442429,
		17.438513, 22.051533, 14.378572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.793581, 22.663452, 13.917921>,  <17.033407, 22.531090, 14.068872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.793581, 22.663452, 13.917921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776173, 22.278297, 14.024467>,  <17.765728, 22.047205, 14.088395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.776173, 22.278297, 14.024467>,  <17.793581, 22.663452, 13.917921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.776173, 22.278297, 14.024467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415393, -0.259920, -0.871717,
		0.908600, 0.072708, 0.411289,
		-0.043521, -0.962889, 0.266366,
		17.763117, 21.989431, 14.104377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.444305, 22.401144, 13.837587>,  <17.793581, 22.663452, 13.917921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.444305, 22.401144, 13.837587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192139, 22.090702, 13.831434>,  <18.040838, 21.904436, 13.827743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.192139, 22.090702, 13.831434>,  <18.444305, 22.401144, 13.837587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.192139, 22.090702, 13.831434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493549, -0.385449, -0.779640,
		0.599154, -0.499089, 0.626039,
		-0.630416, -0.776105, -0.015382,
		18.003014, 21.857870, 13.826819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.846180, 21.838858, 13.794783>,  <18.444305, 22.401144, 13.837587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.846180, 21.838858, 13.794783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.480011, 21.732185, 13.674196>,  <18.260309, 21.668182, 13.601844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.480011, 21.732185, 13.674196>,  <18.846180, 21.838858, 13.794783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.480011, 21.732185, 13.674196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371351, -0.270721, -0.888149,
		0.155239, -0.924982, 0.346856,
		-0.915423, -0.266680, -0.301467,
		18.205383, 21.652182, 13.583756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.908203, 21.127060, 13.545326>,  <18.846180, 21.838858, 13.794783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.908203, 21.127060, 13.545326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583176, 21.309242, 13.399839>,  <18.388159, 21.418552, 13.312548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583176, 21.309242, 13.399839>,  <18.908203, 21.127060, 13.545326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583176, 21.309242, 13.399839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338382, -0.139467, -0.930616,
		-0.474583, -0.879265, -0.040792,
		-0.812569, 0.455458, -0.363716,
		18.339405, 21.445879, 13.290725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.762226, 20.766575, 12.994606>,  <18.908203, 21.127060, 13.545326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.762226, 20.766575, 12.994606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543900, 21.090076, 12.906967>,  <18.412905, 21.284178, 12.854383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.543900, 21.090076, 12.906967>,  <18.762226, 20.766575, 12.994606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.543900, 21.090076, 12.906967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376161, 0.002855, -0.926550,
		-0.748724, -0.588142, -0.305780,
		-0.545815, 0.808753, -0.219098,
		18.380156, 21.332703, 12.841238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.479033, 20.565231, 12.366802>,  <18.762226, 20.766575, 12.994606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.479033, 20.565231, 12.366802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432049, 20.961933, 12.387281>,  <18.403858, 21.199955, 12.399569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.432049, 20.961933, 12.387281>,  <18.479033, 20.565231, 12.366802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.432049, 20.961933, 12.387281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268544, 0.081354, -0.959826,
		-0.956079, -0.098993, -0.275887,
		-0.117461, 0.991757, 0.051197,
		18.396811, 21.259460, 12.402640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.071926, 20.724352, 11.774441>,  <18.479033, 20.565231, 12.366802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.071926, 20.724352, 11.774441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247047, 21.069908, 11.874057>,  <18.352119, 21.277243, 11.933826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.247047, 21.069908, 11.874057>,  <18.071926, 20.724352, 11.774441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247047, 21.069908, 11.874057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171880, 0.191467, -0.966332,
		-0.882489, 0.465867, -0.064661,
		0.437802, 0.863891, 0.249041,
		18.378387, 21.329075, 11.948769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.899078, 21.258074, 11.336650>,  <18.071926, 20.724352, 11.774441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.899078, 21.258074, 11.336650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240467, 21.389370, 11.498561>,  <18.445301, 21.468147, 11.595708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.240467, 21.389370, 11.498561>,  <17.899078, 21.258074, 11.336650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.240467, 21.389370, 11.498561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278106, 0.370007, -0.886426,
		-0.440730, 0.869111, 0.224506,
		0.853472, 0.328239, 0.404778,
		18.496510, 21.487841, 11.619994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.057846, 21.909412, 10.968773>,  <17.899078, 21.258074, 11.336650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.057846, 21.909412, 10.968773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396126, 21.777412, 11.136531>,  <18.599094, 21.698212, 11.237185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.396126, 21.777412, 11.136531>,  <18.057846, 21.909412, 10.968773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.396126, 21.777412, 11.136531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474828, 0.106600, -0.873599,
		0.243581, 0.937942, 0.246845,
		0.845699, -0.330001, 0.419396,
		18.649836, 21.678411, 11.262350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581158, 22.160522, 10.544024>,  <18.057846, 21.909412, 10.968773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581158, 22.160522, 10.544024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793304, 21.883625, 10.739784>,  <18.920591, 21.717487, 10.857241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.793304, 21.883625, 10.739784>,  <18.581158, 22.160522, 10.544024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793304, 21.883625, 10.739784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585373, -0.118548, -0.802050,
		0.613230, 0.711862, 0.342347,
		0.530365, -0.692242, 0.489402,
		18.952414, 21.675953, 10.886605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.300510, 22.304489, 10.453421>,  <18.581158, 22.160522, 10.544024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.300510, 22.304489, 10.453421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272167, 21.911682, 10.523418>,  <19.255161, 21.675999, 10.565417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.272167, 21.911682, 10.523418>,  <19.300510, 22.304489, 10.453421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.272167, 21.911682, 10.523418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634350, -0.179752, -0.751857,
		0.769792, 0.057732, 0.635679,
		-0.070858, -0.982016, 0.174994,
		19.250910, 21.617077, 10.575916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.008415, 22.064314, 10.480286>,  <19.300510, 22.304489, 10.453421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.008415, 22.064314, 10.480286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752857, 21.766758, 10.401859>,  <19.599522, 21.588224, 10.354803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.752857, 21.766758, 10.401859>,  <20.008415, 22.064314, 10.480286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.752857, 21.766758, 10.401859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609732, -0.334251, -0.718682,
		0.469084, -0.578711, 0.667124,
		-0.638896, -0.743889, -0.196067,
		19.561188, 21.543591, 10.343040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.508984, 21.486334, 10.270841>,  <20.008415, 22.064314, 10.480286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.508984, 21.486334, 10.270841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137253, 21.386898, 10.161624>,  <19.914213, 21.327236, 10.096094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.137253, 21.386898, 10.161624>,  <20.508984, 21.486334, 10.270841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.137253, 21.386898, 10.161624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348069, -0.342889, -0.872511,
		0.123272, -0.905887, 0.405182,
		-0.929329, -0.248588, -0.273043,
		19.858454, 21.312323, 10.079711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.609011, 20.910742, 9.734454>,  <20.508984, 21.486334, 10.270841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.609011, 20.910742, 9.734454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227627, 21.018791, 9.680874>,  <19.998796, 21.083622, 9.648726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.227627, 21.018791, 9.680874>,  <20.609011, 20.910742, 9.734454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.227627, 21.018791, 9.680874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102741, -0.126607, -0.986618,
		-0.283470, -0.954465, 0.092962,
		-0.953461, 0.270125, -0.133952,
		19.941587, 21.099829, 9.640688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.297722, 20.351587, 9.394281>,  <20.609011, 20.910742, 9.734454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.297722, 20.351587, 9.394281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.048225, 20.657833, 9.331308>,  <19.898527, 20.841579, 9.293525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.048225, 20.657833, 9.331308>,  <20.297722, 20.351587, 9.394281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.048225, 20.657833, 9.331308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077795, -0.261224, -0.962138,
		-0.777751, -0.587876, 0.222497,
		-0.623739, 0.765613, -0.157433,
		19.861103, 20.887518, 9.284079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.692944, 20.073088, 8.935592>,  <20.297722, 20.351587, 9.394281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.692944, 20.073088, 8.935592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687679, 20.471733, 8.903127>,  <19.684521, 20.710920, 8.883648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.687679, 20.471733, 8.903127>,  <19.692944, 20.073088, 8.935592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.687679, 20.471733, 8.903127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142908, -0.082212, -0.986316,
		-0.989648, -0.001381, 0.143506,
		-0.013160, 0.996614, -0.081163,
		19.683731, 20.770718, 8.878778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.140898, 20.204735, 8.567783>,  <19.692944, 20.073088, 8.935592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.140898, 20.204735, 8.567783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393906, 20.508812, 8.508419>,  <19.545710, 20.691259, 8.472800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.393906, 20.508812, 8.508419>,  <19.140898, 20.204735, 8.567783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.393906, 20.508812, 8.508419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087224, -0.120481, -0.988876,
		-0.769619, 0.638427, -0.009899,
		0.632518, 0.760194, -0.148410,
		19.583660, 20.736870, 8.463896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.760315, 19.986095, 9.046144>,  <19.140898, 20.204735, 8.567783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.760315, 19.986095, 9.046144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538116, 19.661499, 8.973586>,  <18.404797, 19.466742, 8.930052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.538116, 19.661499, 8.973586>,  <18.760315, 19.986095, 9.046144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.538116, 19.661499, 8.973586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564815, 0.208140, 0.798538,
		-0.610252, 0.546039, -0.573964,
		-0.555497, -0.811492, -0.181393,
		18.371468, 19.418051, 8.919168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.181395, 20.184067, 9.255124>,  <18.760315, 19.986095, 9.046144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.181395, 20.184067, 9.255124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164646, 19.784756, 9.271574>,  <18.154596, 19.545170, 9.281445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.164646, 19.784756, 9.271574>,  <18.181395, 20.184067, 9.255124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.164646, 19.784756, 9.271574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615917, 0.058201, 0.785659,
		-0.786698, 0.007568, -0.617292,
		-0.041873, -0.998276, 0.041125,
		18.152084, 19.485273, 9.283912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515537, 20.012182, 9.452682>,  <18.181395, 20.184067, 9.255124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515537, 20.012182, 9.452682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705475, 19.676197, 9.557746>,  <17.819437, 19.474606, 9.620784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.705475, 19.676197, 9.557746>,  <17.515537, 20.012182, 9.452682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.705475, 19.676197, 9.557746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664501, -0.146510, 0.732785,
		-0.577029, -0.522494, -0.627724,
		0.474844, -0.839961, 0.262657,
		17.847929, 19.424210, 9.636543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.996170, 19.648243, 9.710137>,  <17.515537, 20.012182, 9.452682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.996170, 19.648243, 9.710137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.324295, 19.481575, 9.866838>,  <17.521170, 19.381575, 9.960859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.324295, 19.481575, 9.866838>,  <16.996170, 19.648243, 9.710137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.324295, 19.481575, 9.866838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506472, -0.211087, 0.836019,
		-0.265652, -0.884210, -0.384190,
		0.820314, -0.416671, 0.391752,
		17.570389, 19.356573, 9.984365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.823957, 18.989550, 10.047991>,  <16.996170, 19.648243, 9.710137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.823957, 18.989550, 10.047991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165936, 19.105522, 10.220040>,  <17.371122, 19.175106, 10.323270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165936, 19.105522, 10.220040>,  <16.823957, 18.989550, 10.047991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165936, 19.105522, 10.220040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409325, -0.132253, 0.902753,
		0.318621, -0.947866, 0.005607,
		0.854947, 0.289931, 0.430123,
		17.422419, 19.192501, 10.349077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.892838, 18.520227, 10.648376>,  <16.823957, 18.989550, 10.047991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.892838, 18.520227, 10.648376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165321, 18.799591, 10.736177>,  <17.328812, 18.967209, 10.788857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.165321, 18.799591, 10.736177>,  <16.892838, 18.520227, 10.648376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.165321, 18.799591, 10.736177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392073, 0.094832, 0.915033,
		0.618252, -0.709388, 0.338427,
		0.681207, 0.698409, 0.219501,
		17.369684, 19.009113, 10.802028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.182762, 18.302553, 11.250502>,  <16.892838, 18.520227, 10.648376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.182762, 18.302553, 11.250502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285030, 18.688076, 11.220285>,  <17.346392, 18.919390, 11.202155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.285030, 18.688076, 11.220285>,  <17.182762, 18.302553, 11.250502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.285030, 18.688076, 11.220285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232211, 0.137073, 0.962958,
		0.938462, -0.228658, 0.258852,
		0.255670, 0.963808, -0.075541,
		17.361731, 18.977219, 11.197623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692509, 18.319878, 11.760344>,  <17.182762, 18.302553, 11.250502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692509, 18.319878, 11.760344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536282, 18.680588, 11.686310>,  <17.442545, 18.897015, 11.641890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.536282, 18.680588, 11.686310>,  <17.692509, 18.319878, 11.760344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.536282, 18.680588, 11.686310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195686, 0.115130, 0.973885,
		0.899535, 0.416587, 0.131499,
		-0.390568, 0.901776, -0.185084,
		17.419111, 18.951120, 11.630785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.919456, 18.721445, 12.296264>,  <17.692509, 18.319878, 11.760344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.919456, 18.721445, 12.296264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609390, 18.927917, 12.150565>,  <17.423351, 19.051802, 12.063146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.609390, 18.927917, 12.150565>,  <17.919456, 18.721445, 12.296264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.609390, 18.927917, 12.150565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229722, 0.306792, 0.923638,
		0.588513, 0.799646, -0.119236,
		-0.775164, 0.516182, -0.364248,
		17.376841, 19.082771, 12.041291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.945066, 19.373711, 12.641321>,  <17.919456, 18.721445, 12.296264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.945066, 19.373711, 12.641321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570045, 19.355995, 12.503314>,  <17.345034, 19.345366, 12.420510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.570045, 19.355995, 12.503314>,  <17.945066, 19.373711, 12.641321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.570045, 19.355995, 12.503314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347621, 0.083415, 0.933917,
		-0.012584, 0.995530, -0.093602,
		-0.937551, -0.044290, -0.345017,
		17.288780, 19.342709, 12.399809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619642, 19.778994, 13.089323>,  <17.945066, 19.373711, 12.641321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619642, 19.778994, 13.089323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303959, 19.598175, 12.923044>,  <17.114550, 19.489683, 12.823277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.303959, 19.598175, 12.923044>,  <17.619642, 19.778994, 13.089323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.303959, 19.598175, 12.923044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552920, 0.228442, 0.801308,
		-0.267265, 0.862246, -0.430234,
		-0.789208, -0.452046, -0.415698,
		17.067196, 19.462561, 12.798335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053577, 20.201176, 13.274569>,  <17.619642, 19.778994, 13.089323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053577, 20.201176, 13.274569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893753, 19.846943, 13.179832>,  <16.797859, 19.634403, 13.122991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.893753, 19.846943, 13.179832>,  <17.053577, 20.201176, 13.274569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.893753, 19.846943, 13.179832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648400, 0.090384, 0.755916,
		-0.648020, 0.455601, -0.610326,
		-0.399560, -0.885584, -0.236840,
		16.773886, 19.581268, 13.108780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244955, 20.272709, 13.282414>,  <17.053577, 20.201176, 13.274569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244955, 20.272709, 13.282414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340302, 19.894642, 13.371714>,  <16.397511, 19.667801, 13.425293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.340302, 19.894642, 13.371714>,  <16.244955, 20.272709, 13.282414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.340302, 19.894642, 13.371714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734581, -0.025102, 0.678056,
		-0.635273, -0.325619, -0.700286,
		0.238367, -0.945168, 0.223247,
		16.411812, 19.611092, 13.438688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.652309, 19.924021, 13.075575>,  <16.244955, 20.272709, 13.282414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.652309, 19.924021, 13.075575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859262, 19.720375, 13.350710>,  <15.983433, 19.598188, 13.515791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.859262, 19.720375, 13.350710>,  <15.652309, 19.924021, 13.075575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.859262, 19.720375, 13.350710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753738, 0.109493, 0.647990,
		-0.405214, -0.853706, -0.327089,
		0.517379, -0.509114, 0.687838,
		16.014475, 19.567640, 13.557061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.191699, 19.601267, 13.477699>,  <15.652309, 19.924021, 13.075575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.191699, 19.601267, 13.477699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505179, 19.529942, 13.715696>,  <15.693268, 19.487146, 13.858495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.505179, 19.529942, 13.715696>,  <15.191699, 19.601267, 13.477699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.505179, 19.529942, 13.715696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582924, 0.119666, 0.803666,
		-0.214504, -0.976670, -0.010161,
		0.783701, -0.178313, 0.594993,
		15.740290, 19.476448, 13.894195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896556, 19.138536, 13.960629>,  <15.191699, 19.601267, 13.477699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896556, 19.138536, 13.960629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217660, 19.324852, 14.109554>,  <15.410322, 19.436642, 14.198909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.217660, 19.324852, 14.109554>,  <14.896556, 19.138536, 13.960629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.217660, 19.324852, 14.109554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475086, 0.122256, 0.871405,
		0.360375, -0.876409, 0.319433,
		0.802760, 0.465791, 0.372311,
		15.458488, 19.464588, 14.221248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945616, 18.884926, 14.716908>,  <14.896556, 19.138536, 13.960629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945616, 18.884926, 14.716908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.168738, 19.214996, 14.681276>,  <15.302612, 19.413038, 14.659897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.168738, 19.214996, 14.681276>,  <14.945616, 18.884926, 14.716908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.168738, 19.214996, 14.681276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322576, 0.314436, 0.892791,
		0.764720, -0.469270, 0.441576,
		0.557807, 0.825176, -0.089080,
		15.336081, 19.462549, 14.654552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.343340, 18.901190, 15.365339>,  <14.945616, 18.884926, 14.716908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.343340, 18.901190, 15.365339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357963, 19.270779, 15.213055>,  <15.366736, 19.492533, 15.121684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.357963, 19.270779, 15.213055>,  <15.343340, 18.901190, 15.365339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.357963, 19.270779, 15.213055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222978, 0.378902, 0.898173,
		0.974138, 0.052056, 0.219877,
		0.036556, 0.923972, -0.380710,
		15.368930, 19.547970, 15.098842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.746828, 19.245279, 15.763845>,  <15.343340, 18.901190, 15.365339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.746828, 19.245279, 15.763845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546369, 19.547234, 15.594612>,  <15.426093, 19.728405, 15.493073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.546369, 19.547234, 15.594612>,  <15.746828, 19.245279, 15.763845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.546369, 19.547234, 15.594612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283347, 0.318815, 0.904473,
		0.817657, 0.573156, 0.054120,
		-0.501150, 0.754884, -0.423083,
		15.396024, 19.773699, 15.467688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.871473, 19.870113, 16.143278>,  <15.746828, 19.245279, 15.763845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.871473, 19.870113, 16.143278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521369, 19.919521, 15.956234>,  <15.311306, 19.949165, 15.844007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.521369, 19.919521, 15.956234>,  <15.871473, 19.870113, 16.143278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.521369, 19.919521, 15.956234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361017, 0.476527, 0.801617,
		0.321845, 0.870440, -0.372493,
		-0.875262, 0.123520, -0.467611,
		15.258791, 19.956577, 15.815950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.724091, 20.619917, 16.083111>,  <15.871473, 19.870113, 16.143278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.724091, 20.619917, 16.083111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.373029, 20.431309, 16.048717>,  <15.162392, 20.318144, 16.028082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.373029, 20.431309, 16.048717>,  <15.724091, 20.619917, 16.083111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.373029, 20.431309, 16.048717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287584, 0.374550, 0.881480,
		-0.383432, 0.798361, -0.464327,
		-0.877653, -0.471521, -0.085981,
		15.109733, 20.289852, 16.022923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.278364, 21.028524, 16.369236>,  <15.724091, 20.619917, 16.083111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.278364, 21.028524, 16.369236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038964, 20.711201, 16.324587>,  <14.895325, 20.520807, 16.297796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.038964, 20.711201, 16.324587>,  <15.278364, 21.028524, 16.369236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.038964, 20.711201, 16.324587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297929, 0.091063, 0.950235,
		-0.743664, 0.601972, -0.290850,
		-0.598500, -0.793308, -0.111625,
		14.859414, 20.473207, 16.291100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.689462, 21.250204, 16.658566>,  <15.278364, 21.028524, 16.369236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.689462, 21.250204, 16.658566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691789, 20.850220, 16.656006>,  <14.693185, 20.610229, 16.654470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.691789, 20.850220, 16.656006>,  <14.689462, 21.250204, 16.658566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.691789, 20.850220, 16.656006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400230, -0.008192, 0.916378,
		-0.916396, -0.002770, -0.400262,
		0.005817, -0.999963, -0.006399,
		14.693534, 20.550230, 16.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133060, 21.047354, 17.106928>,  <14.689462, 21.250204, 16.658566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133060, 21.047354, 17.106928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.349830, 20.711784, 17.086821>,  <14.479891, 20.510443, 17.074757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.349830, 20.711784, 17.086821>,  <14.133060, 21.047354, 17.106928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.349830, 20.711784, 17.086821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116344, -0.134121, 0.984112,
		-0.832336, -0.527465, -0.170287,
		0.541923, -0.838923, -0.050266,
		14.512406, 20.460108, 17.071741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836238, 20.655117, 17.616756>,  <14.133060, 21.047354, 17.106928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836238, 20.655117, 17.616756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158620, 20.441788, 17.513992>,  <14.352049, 20.313791, 17.452333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.158620, 20.441788, 17.513992>,  <13.836238, 20.655117, 17.616756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.158620, 20.441788, 17.513992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105211, -0.298034, 0.948739,
		-0.582552, -0.791672, -0.184091,
		0.805956, -0.533321, -0.256912,
		14.400407, 20.281792, 17.436918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.943942, 19.915876, 17.988480>,  <13.836238, 20.655117, 17.616756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.943942, 19.915876, 17.988480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305867, 20.039219, 17.871021>,  <14.523023, 20.113224, 17.800547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.305867, 20.039219, 17.871021>,  <13.943942, 19.915876, 17.988480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.305867, 20.039219, 17.871021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383802, -0.291936, 0.876054,
		0.184414, -0.905366, -0.382497,
		0.904814, 0.308359, -0.293644,
		14.577312, 20.131727, 17.782928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315639, 19.268181, 18.108839>,  <13.943942, 19.915876, 17.988480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315639, 19.268181, 18.108839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516326, 19.614193, 18.108376>,  <14.636738, 19.821800, 18.108097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.516326, 19.614193, 18.108376>,  <14.315639, 19.268181, 18.108839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.516326, 19.614193, 18.108376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351655, -0.202733, 0.913914,
		0.790329, -0.458933, -0.405907,
		0.501716, 0.865032, -0.001160,
		14.666841, 19.873703, 18.108027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.822418, 19.172033, 18.635258>,  <14.315639, 19.268181, 18.108839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.822418, 19.172033, 18.635258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819779, 19.569756, 18.592705>,  <14.818196, 19.808388, 18.567173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.819779, 19.569756, 18.592705>,  <14.822418, 19.172033, 18.635258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.819779, 19.569756, 18.592705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304201, 0.103337, 0.946986,
		0.952585, -0.026113, -0.303150,
		-0.006598, 0.994303, -0.106381,
		14.817800, 19.868046, 18.560791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.302659, 19.343624, 19.119028>,  <14.822418, 19.172033, 18.635258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.302659, 19.343624, 19.119028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132686, 19.701195, 19.061995>,  <15.030702, 19.915737, 19.027775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.132686, 19.701195, 19.061995>,  <15.302659, 19.343624, 19.119028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.132686, 19.701195, 19.061995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001128, 0.158034, 0.987433,
		0.905224, 0.419432, -0.068162,
		-0.424933, 0.893925, -0.142584,
		15.005206, 19.969372, 19.019220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.754745, 19.923573, 19.371410>,  <15.302659, 19.343624, 19.119028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.754745, 19.923573, 19.371410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371430, 20.037868, 19.368986>,  <15.141441, 20.106447, 19.367533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.371430, 20.037868, 19.368986>,  <15.754745, 19.923573, 19.371410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371430, 20.037868, 19.368986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090429, 0.323247, 0.941984,
		0.271122, 0.902144, -0.335603,
		-0.958288, 0.285741, -0.006060,
		15.083944, 20.123590, 19.367168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.678794, 20.455420, 19.800014>,  <15.754745, 19.923573, 19.371410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.678794, 20.455420, 19.800014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295455, 20.343437, 19.777405>,  <15.065452, 20.276247, 19.763840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.295455, 20.343437, 19.777405>,  <15.678794, 20.455420, 19.800014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295455, 20.343437, 19.777405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115084, 0.197395, 0.973546,
		-0.261393, 0.939500, -0.221391,
		-0.958347, -0.279957, -0.056524,
		15.007951, 20.259451, 19.760448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.204469, 21.010006, 20.241447>,  <15.678794, 20.455420, 19.800014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.204469, 21.010006, 20.241447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.954095, 20.701885, 20.192715>,  <14.803871, 20.517014, 20.163475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.954095, 20.701885, 20.192715>,  <15.204469, 21.010006, 20.241447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.954095, 20.701885, 20.192715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279657, 0.075871, 0.957097,
		-0.728010, 0.633150, -0.262910,
		-0.625934, -0.770301, -0.121830,
		14.766315, 20.470795, 20.156166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.589621, 21.269861, 20.599354>,  <15.204469, 21.010006, 20.241447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.589621, 21.269861, 20.599354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546098, 20.875923, 20.545336>,  <14.519984, 20.639561, 20.512924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.546098, 20.875923, 20.545336>,  <14.589621, 21.269861, 20.599354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.546098, 20.875923, 20.545336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256706, -0.103405, 0.960942,
		-0.960345, 0.139224, -0.241565,
		-0.108807, -0.984847, -0.135045,
		14.513455, 20.580469, 20.504822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.985135, 21.112614, 20.803968>,  <14.589621, 21.269861, 20.599354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.985135, 21.112614, 20.803968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151660, 20.749077, 20.814474>,  <14.251575, 20.530954, 20.820778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.151660, 20.749077, 20.814474>,  <13.985135, 21.112614, 20.803968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.151660, 20.749077, 20.814474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300267, -0.110161, 0.947473,
		-0.858210, -0.402331, -0.318757,
		0.416312, -0.908842, 0.026265,
		14.276553, 20.476423, 20.822353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399295, 20.716101, 21.094759>,  <13.985135, 21.112614, 20.803968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399295, 20.716101, 21.094759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748317, 20.531765, 21.159597>,  <13.957730, 20.421164, 21.198500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.748317, 20.531765, 21.159597>,  <13.399295, 20.716101, 21.094759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.748317, 20.531765, 21.159597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200469, -0.035194, 0.979068,
		-0.445489, -0.886785, -0.123093,
		0.872555, -0.460840, 0.162094,
		14.010083, 20.393513, 21.208225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.201324, 20.285679, 21.555490>,  <13.399295, 20.716101, 21.094759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.201324, 20.285679, 21.555490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598969, 20.254299, 21.585388>,  <13.837557, 20.235472, 21.603327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598969, 20.254299, 21.585388>,  <13.201324, 20.285679, 21.555490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598969, 20.254299, 21.585388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083255, -0.111486, 0.990272,
		-0.069345, -0.990665, -0.117360,
		0.994113, -0.078442, 0.074747,
		13.897203, 20.230764, 21.607813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.407629, 19.617645, 21.881388>,  <13.201324, 20.285679, 21.555490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.407629, 19.617645, 21.881388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673772, 19.905956, 21.959139>,  <13.833458, 20.078943, 22.005789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.673772, 19.905956, 21.959139>,  <13.407629, 19.617645, 21.881388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.673772, 19.905956, 21.959139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080007, -0.190027, 0.978514,
		0.742225, -0.666613, -0.068769,
		0.665358, 0.720776, 0.194376,
		13.873379, 20.122189, 22.017452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.776643, 19.381340, 22.387838>,  <13.407629, 19.617645, 21.881388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.776643, 19.381340, 22.387838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828689, 19.777687, 22.401978>,  <13.859916, 20.015495, 22.410461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.828689, 19.777687, 22.401978>,  <13.776643, 19.381340, 22.387838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.828689, 19.777687, 22.401978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012451, -0.034014, 0.999344,
		0.991421, -0.130469, 0.007912,
		0.130114, 0.990869, 0.035346,
		13.867723, 20.074947, 22.412582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.242284, 18.745564, 22.504423>,  <13.776643, 19.381340, 22.387838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.242284, 18.745564, 22.504423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398488, 18.479603, 22.759109>,  <14.492210, 18.320026, 22.911921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.398488, 18.479603, 22.759109>,  <14.242284, 18.745564, 22.504423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.398488, 18.479603, 22.759109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401960, -0.499072, -0.767695,
		0.828209, 0.555727, 0.072372,
		0.390510, -0.664903, 0.636715,
		14.515641, 18.280132, 22.950125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.977806, 18.706488, 22.332153>,  <14.242284, 18.745564, 22.504423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.977806, 18.706488, 22.332153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877814, 18.360348, 22.505903>,  <14.817819, 18.152664, 22.610153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.877814, 18.360348, 22.505903>,  <14.977806, 18.706488, 22.332153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.877814, 18.360348, 22.505903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357168, -0.499392, -0.789328,
		0.899967, -0.042172, 0.433913,
		-0.249981, -0.865349, 0.434374,
		14.802820, 18.100742, 22.636215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.541544, 18.308397, 22.120264>,  <14.977806, 18.706488, 22.332153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.541544, 18.308397, 22.120264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246957, 18.062023, 22.232149>,  <15.070205, 17.914198, 22.299280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.246957, 18.062023, 22.232149>,  <15.541544, 18.308397, 22.120264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.246957, 18.062023, 22.232149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232124, -0.618475, -0.750737,
		0.635401, -0.487966, 0.598461,
		-0.736467, -0.615936, 0.279711,
		15.026016, 17.877243, 22.316063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.759452, 17.565207, 21.911074>,  <15.541544, 18.308397, 22.120264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.759452, 17.565207, 21.911074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362065, 17.540699, 21.949589>,  <15.123633, 17.525993, 21.972698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.362065, 17.540699, 21.949589>,  <15.759452, 17.565207, 21.911074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.362065, 17.540699, 21.949589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043092, -0.579851, -0.813582,
		0.105682, -0.812415, 0.573422,
		-0.993466, -0.061271, 0.096288,
		15.064026, 17.522318, 21.978476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.682165, 16.855659, 21.775606>,  <15.759452, 17.565207, 21.911074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.682165, 16.855659, 21.775606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336537, 17.048203, 21.716713>,  <15.129161, 17.163729, 21.681377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.336537, 17.048203, 21.716713>,  <15.682165, 16.855659, 21.775606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.336537, 17.048203, 21.716713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086274, -0.429784, -0.898801,
		-0.495925, -0.763923, 0.412892,
		-0.864069, 0.481360, -0.147234,
		15.077316, 17.192610, 21.672543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.271444, 16.372557, 21.491488>,  <15.682165, 16.855659, 21.775606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.271444, 16.372557, 21.491488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073325, 16.706142, 21.394178>,  <14.954453, 16.906294, 21.335793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.073325, 16.706142, 21.394178>,  <15.271444, 16.372557, 21.491488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.073325, 16.706142, 21.394178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136503, -0.351269, -0.926271,
		-0.857932, -0.425572, 0.287821,
		-0.495298, 0.833965, -0.243273,
		14.924736, 16.956331, 21.321196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.650825, 16.088243, 21.084867>,  <15.271444, 16.372557, 21.491488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.650825, 16.088243, 21.084867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687156, 16.480171, 21.013641>,  <14.708955, 16.715328, 20.970905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.687156, 16.480171, 21.013641>,  <14.650825, 16.088243, 21.084867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.687156, 16.480171, 21.013641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179494, -0.159768, -0.970699,
		-0.979557, 0.120128, 0.161360,
		0.090828, 0.979818, -0.178064,
		14.714404, 16.774117, 20.960222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.005349, 16.201731, 20.788155>,  <14.650825, 16.088243, 21.084867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.005349, 16.201731, 20.788155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243829, 16.508263, 20.692419>,  <14.386917, 16.692183, 20.634977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.243829, 16.508263, 20.692419>,  <14.005349, 16.201731, 20.788155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.243829, 16.508263, 20.692419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040616, -0.268942, -0.962299,
		-0.801808, 0.583443, -0.129218,
		0.596199, 0.766331, -0.239337,
		14.422688, 16.738163, 20.620617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.714797, 16.571627, 20.120718>,  <14.005349, 16.201731, 20.788155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.714797, 16.571627, 20.120718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090066, 16.706882, 20.150373>,  <14.315228, 16.788036, 20.168167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.090066, 16.706882, 20.150373>,  <13.714797, 16.571627, 20.120718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.090066, 16.706882, 20.150373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065404, 0.037167, -0.997166,
		-0.339935, 0.940362, 0.012753,
		0.938172, 0.338138, 0.074138,
		14.371517, 16.808323, 20.172615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.695469, 17.172321, 19.723604>,  <13.714797, 16.571627, 20.120718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.695469, 17.172321, 19.723604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082623, 17.072498, 19.735722>,  <14.314916, 17.012604, 19.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.082623, 17.072498, 19.735722>,  <13.695469, 17.172321, 19.723604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.082623, 17.072498, 19.735722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083205, 0.204306, -0.975365,
		0.237221, 0.946562, 0.218509,
		0.967886, -0.249558, 0.030293,
		14.372990, 16.997631, 19.744810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.051061, 17.780653, 19.348341>,  <13.695469, 17.172321, 19.723604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.051061, 17.780653, 19.348341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287744, 17.458447, 19.361166>,  <14.429753, 17.265123, 19.368860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287744, 17.458447, 19.361166>,  <14.051061, 17.780653, 19.348341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287744, 17.458447, 19.361166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208538, 0.114526, -0.971286,
		0.778714, 0.581402, 0.235746,
		0.591706, -0.805516, 0.032061,
		14.465256, 17.216791, 19.370785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.642100, 17.884098, 18.881889>,  <14.051061, 17.780653, 19.348341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.642100, 17.884098, 18.881889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672339, 17.486374, 18.911901>,  <14.690483, 17.247740, 18.929909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.672339, 17.486374, 18.911901>,  <14.642100, 17.884098, 18.881889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672339, 17.486374, 18.911901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454101, -0.032659, -0.890352,
		0.887737, 0.101379, 0.449049,
		0.075597, -0.994312, 0.075029,
		14.695019, 17.188080, 18.934410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.265657, 17.857262, 18.657269>,  <14.642100, 17.884098, 18.881889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.265657, 17.857262, 18.657269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117166, 17.485859, 18.653965>,  <15.028070, 17.263018, 18.651983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.117166, 17.485859, 18.653965>,  <15.265657, 17.857262, 18.657269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.117166, 17.485859, 18.653965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573384, -0.222231, -0.788571,
		0.730356, -0.297476, 0.614889,
		-0.371229, -0.928505, -0.008260,
		15.005797, 17.207308, 18.651487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863533, 17.423347, 18.457705>,  <15.265657, 17.857262, 18.657269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863533, 17.423347, 18.457705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527781, 17.230507, 18.357286>,  <15.326330, 17.114803, 18.297035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.527781, 17.230507, 18.357286>,  <15.863533, 17.423347, 18.457705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.527781, 17.230507, 18.357286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406437, -0.250023, -0.878804,
		0.360904, -0.839683, 0.405807,
		-0.839379, -0.482100, -0.251044,
		15.275968, 17.085876, 18.281973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120184, 16.784611, 18.175213>,  <15.863533, 17.423347, 18.457705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120184, 16.784611, 18.175213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744014, 16.827499, 18.046156>,  <15.518312, 16.853233, 17.968721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.744014, 16.827499, 18.046156>,  <16.120184, 16.784611, 18.175213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.744014, 16.827499, 18.046156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311677, -0.107279, -0.944112,
		-0.135847, -0.988430, 0.067468,
		-0.940427, 0.107226, -0.322645,
		15.461885, 16.859665, 17.949362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047047, 16.313648, 17.681358>,  <16.120184, 16.784611, 18.175213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047047, 16.313648, 17.681358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752929, 16.567917, 17.587326>,  <15.576458, 16.720478, 17.530907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.752929, 16.567917, 17.587326>,  <16.047047, 16.313648, 17.681358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752929, 16.567917, 17.587326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291411, -0.016626, -0.956453,
		-0.611898, -0.771781, -0.173016,
		-0.735296, 0.635671, -0.235079,
		15.532340, 16.758617, 17.516802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.649582, 15.978319, 17.141653>,  <16.047047, 16.313648, 17.681358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.649582, 15.978319, 17.141653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602427, 16.375530, 17.141319>,  <15.574135, 16.613857, 17.141119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.602427, 16.375530, 17.141319>,  <15.649582, 15.978319, 17.141653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.602427, 16.375530, 17.141319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284017, 0.032911, -0.958254,
		-0.951545, -0.113201, -0.285916,
		-0.117885, 0.993027, -0.000834,
		15.567062, 16.673439, 17.141069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.385520, 16.102161, 16.525789>,  <15.649582, 15.978319, 17.141653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.385520, 16.102161, 16.525789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.504159, 16.463989, 16.648287>,  <15.575342, 16.681086, 16.721785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.504159, 16.463989, 16.648287>,  <15.385520, 16.102161, 16.525789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.504159, 16.463989, 16.648287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353138, 0.194060, -0.915223,
		-0.887313, 0.379599, -0.261880,
		0.296597, 0.904569, 0.306243,
		15.593138, 16.735359, 16.740160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.135319, 16.552763, 15.967425>,  <15.385520, 16.102161, 16.525789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.135319, 16.552763, 15.967425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431296, 16.731831, 16.168253>,  <15.608883, 16.839272, 16.288750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.431296, 16.731831, 16.168253>,  <15.135319, 16.552763, 15.967425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.431296, 16.731831, 16.168253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499659, 0.133924, -0.855807,
		-0.450359, 0.884113, -0.124586,
		0.739945, 0.447671, 0.502069,
		15.653279, 16.866133, 16.318874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.258398, 17.209200, 15.612798>,  <15.135319, 16.552763, 15.967425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.258398, 17.209200, 15.612798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577161, 17.113869, 15.834839>,  <15.768418, 17.056669, 15.968063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.577161, 17.113869, 15.834839>,  <15.258398, 17.209200, 15.612798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.577161, 17.113869, 15.834839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594139, 0.142997, -0.791550,
		0.109271, 0.960599, 0.255556,
		0.796906, -0.238329, 0.555104,
		15.816233, 17.042370, 16.001369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683865, 17.771345, 15.513392>,  <15.258398, 17.209200, 15.612798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683865, 17.771345, 15.513392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907224, 17.468498, 15.649017>,  <16.041239, 17.286789, 15.730392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.907224, 17.468498, 15.649017>,  <15.683865, 17.771345, 15.513392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.907224, 17.468498, 15.649017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573352, 0.056836, -0.817336,
		0.599549, 0.650801, 0.465832,
		0.558399, -0.757118, 0.339062,
		16.074743, 17.241364, 15.750736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372105, 17.995972, 15.444216>,  <15.683865, 17.771345, 15.513392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372105, 17.995972, 15.444216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389542, 17.596420, 15.436838>,  <16.400003, 17.356689, 15.432412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389542, 17.596420, 15.436838>,  <16.372105, 17.995972, 15.444216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389542, 17.596420, 15.436838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462085, 0.036527, -0.886083,
		0.885764, 0.030106, 0.463159,
		0.043594, -0.998879, -0.018443,
		16.402620, 17.296757, 15.431305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.135193, 17.773094, 15.273155>,  <16.372105, 17.995972, 15.444216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.135193, 17.773094, 15.273155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933376, 17.441406, 15.176964>,  <16.812286, 17.242393, 15.119249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.933376, 17.441406, 15.176964>,  <17.135193, 17.773094, 15.273155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933376, 17.441406, 15.176964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496388, -0.050704, -0.866619,
		0.706426, -0.556615, 0.437198,
		-0.504541, -0.829221, -0.240478,
		16.782015, 17.192640, 15.104820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.608326, 17.515030, 14.907502>,  <17.135193, 17.773094, 15.273155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.608326, 17.515030, 14.907502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272118, 17.331356, 14.792492>,  <17.070393, 17.221151, 14.723486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.272118, 17.331356, 14.792492>,  <17.608326, 17.515030, 14.907502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272118, 17.331356, 14.792492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302420, 0.042677, -0.952219,
		0.449514, -0.887315, 0.102995,
		-0.840523, -0.459184, -0.287526,
		17.019960, 17.193602, 14.706234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.741194, 16.958719, 14.590611>,  <17.608326, 17.515030, 14.907502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.741194, 16.958719, 14.590611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379738, 16.997402, 14.423719>,  <17.162865, 17.020613, 14.323585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.379738, 16.997402, 14.423719>,  <17.741194, 16.958719, 14.590611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.379738, 16.997402, 14.423719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402148, -0.143542, -0.904253,
		-0.147385, -0.984903, 0.090798,
		-0.903634, 0.096759, -0.417232,
		17.108644, 17.026415, 14.298552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.692417, 16.396427, 14.093306>,  <17.741194, 16.958719, 14.590611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.692417, 16.396427, 14.093306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386951, 16.626694, 13.976397>,  <17.203672, 16.764854, 13.906251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.386951, 16.626694, 13.976397>,  <17.692417, 16.396427, 14.093306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.386951, 16.626694, 13.976397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148475, -0.283976, -0.947266,
		-0.628310, -0.766788, 0.131390,
		-0.763664, 0.575668, -0.292274,
		17.157852, 16.799395, 13.888715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.312944, 15.965412, 13.606782>,  <17.692417, 16.396427, 14.093306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.312944, 15.965412, 13.606782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228569, 16.346703, 13.520189>,  <17.177944, 16.575478, 13.468234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.228569, 16.346703, 13.520189>,  <17.312944, 15.965412, 13.606782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.228569, 16.346703, 13.520189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117760, -0.195071, -0.973694,
		-0.970381, -0.230881, -0.071105,
		-0.210937, 0.953227, -0.216481,
		17.165287, 16.632671, 13.455245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.839560, 15.989885, 13.015131>,  <17.312944, 15.965412, 13.606782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.839560, 15.989885, 13.015131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999798, 16.356380, 13.017387>,  <17.095940, 16.576277, 13.018741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999798, 16.356380, 13.017387>,  <16.839560, 15.989885, 13.015131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999798, 16.356380, 13.017387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146473, -0.057962, -0.987515,
		-0.904472, 0.396419, -0.157423,
		0.400594, 0.916238, 0.005640,
		17.119976, 16.631252, 13.019079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.444979, 16.461859, 12.562904>,  <16.839560, 15.989885, 13.015131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.444979, 16.461859, 12.562904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807247, 16.627228, 12.600512>,  <17.024609, 16.726448, 12.623075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.807247, 16.627228, 12.600512>,  <16.444979, 16.461859, 12.562904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.807247, 16.627228, 12.600512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163175, -0.135215, -0.977288,
		-0.391318, 0.900445, -0.189921,
		0.905673, 0.413420, 0.094018,
		17.078949, 16.751253, 12.628716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.503326, 17.074905, 12.098268>,  <16.444979, 16.461859, 12.562904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.503326, 17.074905, 12.098268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872391, 16.935143, 12.163520>,  <17.093830, 16.851286, 12.202671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.872391, 16.935143, 12.163520>,  <16.503326, 17.074905, 12.098268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.872391, 16.935143, 12.163520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142763, -0.083465, -0.986231,
		0.358211, 0.933246, -0.027128,
		0.922661, -0.349406, 0.163131,
		17.149189, 16.830320, 12.212460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.916208, 17.325050, 11.563722>,  <16.503326, 17.074905, 12.098268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.916208, 17.325050, 11.563722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164555, 17.051991, 11.717870>,  <17.313562, 16.888155, 11.810359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.164555, 17.051991, 11.717870>,  <16.916208, 17.325050, 11.563722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.164555, 17.051991, 11.717870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358117, -0.190310, -0.914076,
		0.697335, 0.705528, 0.126311,
		0.620868, -0.682651, 0.385371,
		17.350815, 16.847195, 11.833481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.440384, 17.473421, 11.259231>,  <16.916208, 17.325050, 11.563722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.440384, 17.473421, 11.259231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505493, 17.106712, 11.405128>,  <17.544558, 16.886688, 11.492665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505493, 17.106712, 11.405128>,  <17.440384, 17.473421, 11.259231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505493, 17.106712, 11.405128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282998, -0.310759, -0.907381,
		0.945207, 0.250917, 0.208862,
		0.162772, -0.916771, 0.364741,
		17.554325, 16.831680, 11.514550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.185852, 17.351479, 11.198452>,  <17.440384, 17.473421, 11.259231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.185852, 17.351479, 11.198452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990177, 17.003090, 11.216804>,  <17.872772, 16.794056, 11.227815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.990177, 17.003090, 11.216804>,  <18.185852, 17.351479, 11.198452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.990177, 17.003090, 11.216804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473524, -0.309396, -0.824651,
		0.732443, -0.381682, 0.563779,
		-0.489185, -0.870973, 0.045879,
		17.843422, 16.741798, 11.230567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.731668, 16.791359, 11.049188>,  <18.185852, 17.351479, 11.198452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.731668, 16.791359, 11.049188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383022, 16.608940, 10.977287>,  <18.173834, 16.499489, 10.934147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383022, 16.608940, 10.977287>,  <18.731668, 16.791359, 11.049188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383022, 16.608940, 10.977287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363558, -0.355449, -0.861093,
		0.328806, -0.815891, 0.475614,
		-0.871615, -0.456046, -0.179750,
		18.121538, 16.472126, 10.923362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.969755, 16.197445, 10.762772>,  <18.731668, 16.791359, 11.049188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.969755, 16.197445, 10.762772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.590153, 16.206619, 10.637001>,  <18.362392, 16.212124, 10.561539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.590153, 16.206619, 10.637001>,  <18.969755, 16.197445, 10.762772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.590153, 16.206619, 10.637001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307302, -0.155411, -0.938836,
		-0.070397, -0.987583, 0.140438,
		-0.949005, 0.022935, -0.314426,
		18.305450, 16.213501, 10.542673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.812189, 15.583557, 10.532439>,  <18.969755, 16.197445, 10.762772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.812189, 15.583557, 10.532439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537674, 15.789467, 10.326910>,  <18.372965, 15.913013, 10.203592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537674, 15.789467, 10.326910>,  <18.812189, 15.583557, 10.532439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537674, 15.789467, 10.326910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184629, -0.560014, -0.807649,
		-0.703506, -0.649147, 0.289289,
		-0.686289, 0.514774, -0.513824,
		18.331787, 15.943899, 10.172763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.373854, 15.177966, 10.253345>,  <18.812189, 15.583557, 10.532439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.373854, 15.177966, 10.253345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312992, 15.492531, 10.013878>,  <18.276474, 15.681270, 9.870197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.312992, 15.492531, 10.013878>,  <18.373854, 15.177966, 10.253345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.312992, 15.492531, 10.013878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114009, -0.587713, -0.800996,
		-0.981759, -0.190129, -0.000235,
		-0.152154, 0.786412, -0.598669,
		18.267345, 15.728455, 9.834277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033600, 14.870375, 9.659406>,  <18.373854, 15.177966, 10.253345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.033600, 14.870375, 9.659406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156021, 15.222832, 9.515228>,  <18.229473, 15.434306, 9.428721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.156021, 15.222832, 9.515228>,  <18.033600, 14.870375, 9.659406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.156021, 15.222832, 9.515228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033708, -0.388403, -0.920873,
		-0.951418, 0.269684, -0.148573,
		0.306051, 0.881143, -0.360444,
		18.247837, 15.487175, 9.407095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.711184, 14.938111, 9.054265>,  <18.033600, 14.870375, 9.659406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.711184, 14.938111, 9.054265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009525, 15.199387, 9.002037>,  <18.188530, 15.356152, 8.970700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.009525, 15.199387, 9.002037>,  <17.711184, 14.938111, 9.054265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.009525, 15.199387, 9.002037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029504, -0.228222, -0.973162,
		-0.665456, 0.721984, -0.189492,
		0.745854, 0.653188, -0.130570,
		18.233282, 15.395343, 8.962866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.569242, 15.176847, 8.396603>,  <17.711184, 14.938111, 9.054265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.569242, 15.176847, 8.396603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958504, 15.241867, 8.461782>,  <18.192060, 15.280879, 8.500891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.958504, 15.241867, 8.461782>,  <17.569242, 15.176847, 8.396603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.958504, 15.241867, 8.461782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197667, -0.227551, -0.953493,
		-0.117911, 0.960103, -0.253572,
		0.973152, 0.162550, 0.162950,
		18.250450, 15.290632, 8.510668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.909822, 15.663348, 7.892349>,  <17.569242, 15.176847, 8.396603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.909822, 15.663348, 7.892349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195457, 15.428337, 8.044607>,  <18.366838, 15.287331, 8.135962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.195457, 15.428337, 8.044607>,  <17.909822, 15.663348, 7.892349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.195457, 15.428337, 8.044607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234769, -0.311269, -0.920867,
		0.659517, 0.746943, -0.084340,
		0.714088, -0.587527, 0.380646,
		18.409683, 15.252079, 8.158801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649864, 15.888270, 7.615705>,  <17.909822, 15.663348, 7.892349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649864, 15.888270, 7.615705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537815, 15.512192, 7.693228>,  <18.470585, 15.286545, 7.739741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.537815, 15.512192, 7.693228>,  <18.649864, 15.888270, 7.615705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.537815, 15.512192, 7.693228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019378, -0.207387, -0.978067,
		0.959768, -0.270225, 0.076314,
		-0.280125, -0.940196, 0.193807,
		18.453777, 15.230133, 7.751370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.191397, 15.326256, 7.455829>,  <18.649864, 15.888270, 7.615705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.191397, 15.326256, 7.455829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817795, 15.190155, 7.412259>,  <18.593634, 15.108495, 7.386117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817795, 15.190155, 7.412259>,  <19.191397, 15.326256, 7.455829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817795, 15.190155, 7.412259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136590, -0.058369, -0.988907,
		0.330119, -0.938521, 0.100991,
		-0.934004, -0.340251, -0.108924,
		18.537594, 15.088079, 7.379582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.979767, 14.538900, 7.435988>,  <19.191397, 15.326256, 7.455829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.979767, 14.538900, 7.435988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717999, 14.737305, 7.207705>,  <18.560938, 14.856347, 7.070735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.717999, 14.737305, 7.207705>,  <18.979767, 14.538900, 7.435988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.717999, 14.737305, 7.207705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235081, -0.583905, -0.777040,
		-0.718661, -0.642673, 0.265516,
		-0.654419, 0.496011, -0.570710,
		18.521673, 14.886107, 7.036492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311470, 14.142122, 7.251977>,  <18.979767, 14.538900, 7.435988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311470, 14.142122, 7.251977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488663, 14.381680, 6.985116>,  <18.594978, 14.525414, 6.824999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488663, 14.381680, 6.985116>,  <18.311470, 14.142122, 7.251977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488663, 14.381680, 6.985116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108983, -0.774604, -0.622985,
		-0.889881, 0.203264, -0.408406,
		0.442983, 0.598892, -0.667154,
		18.621557, 14.561347, 6.784970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973900, 14.201354, 6.673004>,  <18.311470, 14.142122, 7.251977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973900, 14.201354, 6.673004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369091, 14.235367, 6.621364>,  <18.606207, 14.255774, 6.590380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.369091, 14.235367, 6.621364>,  <17.973900, 14.201354, 6.673004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.369091, 14.235367, 6.621364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005279, -0.853197, -0.521562,
		-0.154498, 0.514611, -0.843390,
		0.987979, 0.085032, -0.129100,
		18.665485, 14.260877, 6.582633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.176239, 14.322162, 5.922647>,  <17.973900, 14.201354, 6.673004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.176239, 14.322162, 5.922647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.436829, 14.133987, 6.160730>,  <18.593182, 14.021083, 6.303580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.436829, 14.133987, 6.160730>,  <18.176239, 14.322162, 5.922647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.436829, 14.133987, 6.160730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068138, -0.817651, -0.571668,
		0.755606, 0.331869, -0.564732,
		0.651473, -0.470435, 0.595209,
		18.632271, 13.992857, 6.339293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.496964, 14.126580, 5.369722>,  <18.176239, 14.322162, 5.922647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.496964, 14.126580, 5.369722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502434, 13.911556, 5.706968>,  <18.505716, 13.782542, 5.909316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.502434, 13.911556, 5.706968>,  <18.496964, 14.126580, 5.369722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.502434, 13.911556, 5.706968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115831, -0.838369, -0.532655,
		0.993175, -0.090375, -0.073731,
		0.013675, -0.537560, 0.843115,
		18.506536, 13.750288, 5.959903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.771784, 13.561785, 5.117434>,  <18.496964, 14.126580, 5.369722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.771784, 13.561785, 5.117434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583897, 13.462223, 5.456234>,  <18.471165, 13.402486, 5.659514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.583897, 13.462223, 5.456234>,  <18.771784, 13.561785, 5.117434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.583897, 13.462223, 5.456234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342665, -0.832804, -0.434762,
		0.813600, -0.494453, 0.305892,
		-0.469718, -0.248904, 0.847002,
		18.442982, 13.387552, 5.710334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.884485, 12.834185, 5.227935>,  <18.771784, 13.561785, 5.117434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.884485, 12.834185, 5.227935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559246, 12.935661, 5.437510>,  <18.364103, 12.996548, 5.563256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.559246, 12.935661, 5.437510>,  <18.884485, 12.834185, 5.227935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559246, 12.935661, 5.437510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414668, -0.884102, -0.215438,
		0.408561, -0.392433, 0.824060,
		-0.813098, 0.253692, 0.523939,
		18.315317, 13.011769, 5.594692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.646717, 12.220139, 5.477936>,  <18.884485, 12.834185, 5.227935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.646717, 12.220139, 5.477936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337624, 12.473480, 5.461209>,  <18.152168, 12.625485, 5.451173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.337624, 12.473480, 5.461209>,  <18.646717, 12.220139, 5.477936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.337624, 12.473480, 5.461209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583798, -0.735036, -0.344820,
		-0.249130, -0.242041, 0.937737,
		-0.772731, 0.633354, -0.041817,
		18.105804, 12.663486, 5.448664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.047321, 12.067572, 5.893137>,  <18.646717, 12.220139, 5.477936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.047321, 12.067572, 5.893137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915077, 12.281734, 5.582257>,  <17.835732, 12.410233, 5.395730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.915077, 12.281734, 5.582257>,  <18.047321, 12.067572, 5.893137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915077, 12.281734, 5.582257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405892, -0.824119, -0.395068,
		-0.852026, 0.184845, 0.489780,
		-0.330610, 0.535406, -0.777198,
		17.815893, 12.442356, 5.349098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.288347, 11.896935, 5.729380>,  <18.047321, 12.067572, 5.893137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.288347, 11.896935, 5.729380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445389, 12.018288, 5.382088>,  <17.539614, 12.091100, 5.173713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.445389, 12.018288, 5.382088>,  <17.288347, 11.896935, 5.729380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.445389, 12.018288, 5.382088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207111, -0.890615, -0.404858,
		-0.896085, 0.338768, -0.286823,
		0.392602, 0.303383, -0.868229,
		17.563169, 12.109303, 5.121619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.710472, 12.020440, 5.242594>,  <17.288347, 11.896935, 5.729380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.710472, 12.020440, 5.242594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061138, 11.841862, 5.170877>,  <17.271538, 11.734715, 5.127848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.061138, 11.841862, 5.170877>,  <16.710472, 12.020440, 5.242594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.061138, 11.841862, 5.170877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461569, -0.885596, -0.051709,
		-0.135695, 0.128087, -0.982436,
		0.876665, -0.446445, -0.179291,
		17.324137, 11.707929, 5.117090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.764664, 11.640934, 4.545313>,  <16.710472, 12.020440, 5.242594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.764664, 11.640934, 4.545313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.982235, 11.469242, 4.833731>,  <17.112778, 11.366227, 5.006782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.982235, 11.469242, 4.833731>,  <16.764664, 11.640934, 4.545313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.982235, 11.469242, 4.833731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604797, -0.796183, -0.017724,
		0.581691, -0.426445, -0.692662,
		0.543927, -0.429229, 0.721045,
		17.145412, 11.340473, 5.050045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.055126, 11.101776, 4.244086>,  <16.764664, 11.640934, 4.545313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.055126, 11.101776, 4.244086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999100, 11.034153, 4.634327>,  <16.965483, 10.993579, 4.868472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.999100, 11.034153, 4.634327>,  <17.055126, 11.101776, 4.244086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999100, 11.034153, 4.634327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505511, -0.835016, -0.217273,
		0.851375, -0.523610, 0.031497,
		-0.140067, -0.169059, 0.975602,
		16.957079, 10.983436, 4.927008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.694975, 10.582308, 4.233510>,  <17.055126, 11.101776, 4.244086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.694975, 10.582308, 4.233510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557182, 10.455208, 4.586864>,  <17.474506, 10.378948, 4.798876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.557182, 10.455208, 4.586864>,  <17.694975, 10.582308, 4.233510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.557182, 10.455208, 4.586864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.910837, -0.114805, -0.396480,
		0.227398, -0.941199, -0.249870,
		-0.344480, -0.317750, 0.883385,
		17.453838, 10.359883, 4.851879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.399006, 9.943542, 4.057775>,  <17.694975, 10.582308, 4.233510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.399006, 9.943542, 4.057775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241428, 10.091484, 4.394350>,  <17.146881, 10.180249, 4.596295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.241428, 10.091484, 4.394350>,  <17.399006, 9.943542, 4.057775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.241428, 10.091484, 4.394350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915543, -0.238745, -0.323699,
		0.081167, -0.897891, 0.432670,
		-0.393945, 0.369855, 0.841437,
		17.123245, 10.202440, 4.646781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.975100, 9.908433, 3.648311>,  <17.399006, 9.943542, 4.057775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.975100, 9.908433, 3.648311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243073, 10.049835, 3.909455>,  <18.403856, 10.134677, 4.066141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.243073, 10.049835, 3.909455>,  <17.975100, 9.908433, 3.648311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.243073, 10.049835, 3.909455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705562, -0.029508, -0.708033,
		-0.231029, 0.934967, -0.269189,
		0.669931, 0.353506, 0.652860,
		18.444052, 10.155887, 4.105313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.587721, 10.108287, 3.226426>,  <17.975100, 9.908433, 3.648311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.587721, 10.108287, 3.226426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817097, 10.108822, 3.554125>,  <18.954721, 10.109143, 3.750744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.817097, 10.108822, 3.554125>,  <18.587721, 10.108287, 3.226426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.817097, 10.108822, 3.554125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818962, 0.025519, -0.573280,
		-0.021674, 0.999673, 0.013537,
		0.573439, 0.001339, 0.819248,
		18.989128, 10.109223, 3.799899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.144007, 10.621935, 3.107491>,  <18.587721, 10.108287, 3.226426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.144007, 10.621935, 3.107491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.282539, 10.336449, 3.351020>,  <19.365658, 10.165156, 3.497138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.282539, 10.336449, 3.351020>,  <19.144007, 10.621935, 3.107491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.282539, 10.336449, 3.351020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878489, 0.019065, -0.477382,
		0.329108, 0.700175, 0.633595,
		0.346330, -0.713716, 0.608822,
		19.386438, 10.122334, 3.533667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.835659, 10.839715, 3.301897>,  <19.144007, 10.621935, 3.107491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.835659, 10.839715, 3.301897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808243, 10.441257, 3.323812>,  <19.791792, 10.202183, 3.336960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.808243, 10.441257, 3.323812>,  <19.835659, 10.839715, 3.301897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.808243, 10.441257, 3.323812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875011, -0.086406, -0.476330,
		0.479227, 0.015290, 0.877558,
		-0.068543, -0.996143, 0.054787,
		19.787680, 10.142415, 3.340248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471220, 10.634311, 3.619461>,  <19.835659, 10.839715, 3.301897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471220, 10.634311, 3.619461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316227, 10.336617, 3.401849>,  <20.223230, 10.158000, 3.271281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.316227, 10.336617, 3.401849>,  <20.471220, 10.634311, 3.619461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.316227, 10.336617, 3.401849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.835417, -0.033957, -0.548566,
		0.389789, -0.667053, 0.634906,
		-0.387482, -0.744236, -0.544031,
		20.199982, 10.113346, 3.238639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.895853, 10.043427, 3.737360>,  <20.471220, 10.634311, 3.619461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.895853, 10.043427, 3.737360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693470, 10.136215, 3.405048>,  <20.572041, 10.191889, 3.205661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.693470, 10.136215, 3.405048>,  <20.895853, 10.043427, 3.737360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693470, 10.136215, 3.405048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861916, 0.098799, -0.497333,
		-0.033287, -0.967692, -0.249929,
		-0.505958, 0.231972, -0.830780,
		20.541683, 10.205807, 3.155814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.013489, 9.515882, 3.192419>,  <20.895853, 10.043427, 3.737360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.013489, 9.515882, 3.192419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967831, 9.908703, 3.132356>,  <20.940435, 10.144395, 3.096318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.967831, 9.908703, 3.132356>,  <21.013489, 9.515882, 3.192419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.967831, 9.908703, 3.132356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947676, 0.062276, -0.313102,
		-0.298131, -0.178039, -0.937774,
		-0.114145, 0.982051, -0.150156,
		20.933588, 10.203318, 3.087309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.247017, 9.764964, 2.552948>,  <21.013489, 9.515882, 3.192419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.247017, 9.764964, 2.552948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281342, 10.057281, 2.823822>,  <21.301935, 10.232672, 2.986346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.281342, 10.057281, 2.823822>,  <21.247017, 9.764964, 2.552948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.281342, 10.057281, 2.823822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972037, 0.087715, -0.217831,
		-0.218588, 0.676941, -0.702830,
		0.085810, 0.730792, 0.677185,
		21.307085, 10.276519, 3.026977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477716, 10.381621, 2.184527>,  <21.247017, 9.764964, 2.552948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477716, 10.381621, 2.184527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570900, 10.395187, 2.573285>,  <21.626810, 10.403327, 2.806539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.570900, 10.395187, 2.573285>,  <21.477716, 10.381621, 2.184527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.570900, 10.395187, 2.573285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961282, 0.143238, -0.235416,
		-0.147197, 0.989107, 0.000766,
		0.232961, 0.033916, 0.971894,
		21.640789, 10.405362, 2.864853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750490, 10.991905, 2.315672>,  <21.477716, 10.381621, 2.184527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750490, 10.991905, 2.315672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925884, 10.690762, 2.512013>,  <22.031120, 10.510076, 2.629818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.925884, 10.690762, 2.512013>,  <21.750490, 10.991905, 2.315672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.925884, 10.690762, 2.512013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864829, 0.204840, -0.458380,
		0.244548, 0.625496, 0.740912,
		0.438483, -0.752858, 0.490853,
		22.057428, 10.464904, 2.659269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.380331, 11.156963, 2.746027>,  <21.750490, 10.991905, 2.315672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.380331, 11.156963, 2.746027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405094, 10.777641, 2.621521>,  <22.419952, 10.550048, 2.546816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.405094, 10.777641, 2.621521>,  <22.380331, 11.156963, 2.746027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.405094, 10.777641, 2.621521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964689, 0.136847, -0.225053,
		0.256014, -0.286343, 0.923290,
		0.061907, -0.948304, -0.311267,
		22.423666, 10.493150, 2.528141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863199, 10.771945, 3.033732>,  <22.380331, 11.156963, 2.746027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863199, 10.771945, 3.033732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.779934, 10.661110, 2.658522>,  <22.729975, 10.594608, 2.433396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.779934, 10.661110, 2.658522>,  <22.863199, 10.771945, 3.033732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.779934, 10.661110, 2.658522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856742, 0.411021, -0.311538,
		0.471871, -0.868495, 0.151835,
		-0.208162, -0.277089, -0.938025,
		22.717485, 10.577983, 2.377115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.449242, 10.440719, 2.742992>,  <22.863199, 10.771945, 3.033732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.449242, 10.440719, 2.742992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217274, 10.604523, 2.461285>,  <23.078093, 10.702805, 2.292260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.217274, 10.604523, 2.461285>,  <23.449242, 10.440719, 2.742992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.217274, 10.604523, 2.461285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809227, 0.389343, -0.439958,
		0.094034, -0.825054, -0.557174,
		-0.579921, 0.409509, -0.704268,
		23.043297, 10.727375, 2.250004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.584843, 10.196504, 2.073854>,  <23.449242, 10.440719, 2.742992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.584843, 10.196504, 2.073854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.438034, 10.567883, 2.050935>,  <23.349949, 10.790709, 2.037183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.438034, 10.567883, 2.050935>,  <23.584843, 10.196504, 2.073854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.438034, 10.567883, 2.050935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894162, 0.335144, -0.296907,
		-0.256459, -0.160205, -0.953186,
		-0.367020, 0.928447, -0.057298,
		23.327929, 10.846416, 2.033745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.130697, 9.989858, 2.387331>,  <23.584843, 10.196504, 2.073854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.130697, 9.989858, 2.387331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158756, 9.889843, 2.001055>,  <24.175592, 9.829834, 1.769289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.158756, 9.889843, 2.001055>,  <24.130697, 9.989858, 2.387331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.158756, 9.889843, 2.001055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819138, 0.566918, -0.087282,
		0.569292, -0.784912, 0.244583,
		0.070149, -0.250036, -0.965692,
		24.179802, 9.814833, 1.711347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.861137, 9.933487, 2.297030>,  <24.130697, 9.989858, 2.387331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.861137, 9.933487, 2.297030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657021, 10.043137, 1.970973>,  <24.534550, 10.108927, 1.775339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.657021, 10.043137, 1.970973>,  <24.861137, 9.933487, 2.297030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.657021, 10.043137, 1.970973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667064, 0.724399, -0.173987,
		0.542794, -0.632536, -0.552516,
		-0.510294, 0.274124, -0.815141,
		24.503933, 10.125374, 1.726431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.423534, 10.207919, 1.808122>,  <24.861137, 9.933487, 2.297030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.423534, 10.207919, 1.808122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119865, 10.456650, 1.731195>,  <24.937664, 10.605888, 1.685039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.119865, 10.456650, 1.731195>,  <25.423534, 10.207919, 1.808122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.119865, 10.456650, 1.731195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632623, 0.774431, 0.006711,
		0.153110, -0.116569, -0.981310,
		-0.759175, 0.621826, -0.192317,
		24.892113, 10.643198, 1.673500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<20.413261, 18.017237, 17.471434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.456139, 18.412182, 17.424742>,  <20.481865, 18.649149, 17.396727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.456139, 18.412182, 17.424742>,  <20.413261, 18.017237, 17.471434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.456139, 18.412182, 17.424742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094440, -0.126989, -0.987398,
		-0.989743, 0.094818, -0.106858,
		0.107193, 0.987362, -0.116732,
		20.488297, 18.708391, 17.389723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.982874, 18.151255, 16.969601>,  <20.413261, 18.017237, 17.471434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.982874, 18.151255, 16.969601> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.239525, 18.457794, 16.982433>,  <20.393515, 18.641718, 16.990133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.239525, 18.457794, 16.982433>,  <19.982874, 18.151255, 16.969601>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.239525, 18.457794, 16.982433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242159, -0.162709, -0.956496,
		-0.727788, 0.621481, -0.289976,
		0.641626, 0.766347, 0.032079,
		20.432013, 18.687698, 16.992058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.940832, 18.466795, 16.361483>,  <19.982874, 18.151255, 16.969601>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.940832, 18.466795, 16.361483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.289928, 18.617554, 16.485594>,  <20.499386, 18.708010, 16.560061>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.289928, 18.617554, 16.485594>,  <19.940832, 18.466795, 16.361483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.289928, 18.617554, 16.485594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406582, -0.209368, -0.889301,
		-0.270212, 0.902282, -0.335964,
		0.872741, 0.376897, 0.310278,
		20.551750, 18.730623, 16.578678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.079649, 18.985987, 15.931911>,  <19.940832, 18.466795, 16.361483>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.079649, 18.985987, 15.931911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.439220, 18.874805, 16.067360>,  <20.654964, 18.808096, 16.148630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.439220, 18.874805, 16.067360>,  <20.079649, 18.985987, 15.931911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.439220, 18.874805, 16.067360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363976, 0.043675, -0.930384,
		0.243815, 0.959601, 0.140429,
		0.898930, -0.277954, 0.338624,
		20.708900, 18.791420, 16.168947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.463612, 19.394503, 15.622409>,  <20.079649, 18.985987, 15.931911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.463612, 19.394503, 15.622409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.707062, 19.093300, 15.722454>,  <20.853130, 18.912579, 15.782481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.707062, 19.093300, 15.722454>,  <20.463612, 19.394503, 15.622409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.707062, 19.093300, 15.722454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372559, -0.007108, -0.927981,
		0.700555, 0.657973, 0.276213,
		0.608623, -0.753008, 0.250113,
		20.889648, 18.867397, 15.797488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.103888, 19.574938, 15.449585>,  <20.463612, 19.394503, 15.622409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.103888, 19.574938, 15.449585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123215, 19.175938, 15.470201>,  <21.134811, 18.936537, 15.482572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.123215, 19.175938, 15.470201>,  <21.103888, 19.574938, 15.449585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123215, 19.175938, 15.470201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272181, -0.036500, -0.961554,
		0.961032, 0.060488, 0.269737,
		0.048317, -0.997501, 0.051541,
		21.137711, 18.876688, 15.485663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745726, 19.400131, 15.210277>,  <21.103888, 19.574938, 15.449585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745726, 19.400131, 15.210277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.545822, 19.056057, 15.169630>,  <21.425880, 18.849613, 15.145243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.545822, 19.056057, 15.169630>,  <21.745726, 19.400131, 15.210277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545822, 19.056057, 15.169630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391545, -0.119707, -0.912339,
		0.772615, -0.495736, 0.396625,
		-0.499758, -0.860184, -0.101615,
		21.395895, 18.798002, 15.139145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.217140, 18.850990, 15.026786>,  <21.745726, 19.400131, 15.210277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.217140, 18.850990, 15.026786> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.883186, 18.676888, 14.892017>,  <21.682814, 18.572426, 14.811156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.883186, 18.676888, 14.892017>,  <22.217140, 18.850990, 15.026786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.883186, 18.676888, 14.892017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404620, -0.070338, -0.911776,
		0.373159, -0.897554, 0.234839,
		-0.834886, -0.435258, -0.336921,
		21.632721, 18.546310, 14.790941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.414688, 18.291401, 14.556311>,  <22.217140, 18.850990, 15.026786>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.414688, 18.291401, 14.556311> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.030651, 18.340076, 14.455580>,  <21.800230, 18.369282, 14.395142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.030651, 18.340076, 14.455580>,  <22.414688, 18.291401, 14.556311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030651, 18.340076, 14.455580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238105, -0.116760, -0.964196,
		-0.146738, -0.985677, 0.083125,
		-0.960091, 0.121692, -0.251827,
		21.742624, 18.376583, 14.380032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139204, 17.711964, 14.171138>,  <22.414688, 18.291401, 14.556311>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139204, 17.711964, 14.171138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.884140, 17.996597, 14.053127>,  <21.731102, 18.167377, 13.982321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.884140, 17.996597, 14.053127>,  <22.139204, 17.711964, 14.171138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.884140, 17.996597, 14.053127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051323, -0.342897, -0.937970,
		-0.768606, -0.613248, 0.182131,
		-0.637661, 0.711582, -0.295027,
		21.692842, 18.210072, 13.964620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.716845, 17.426296, 13.684614>,  <22.139204, 17.711964, 14.171138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.716845, 17.426296, 13.684614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.665115, 17.815788, 13.609644>,  <21.634079, 18.049482, 13.564661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.665115, 17.815788, 13.609644>,  <21.716845, 17.426296, 13.684614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.665115, 17.815788, 13.609644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029067, -0.192655, -0.980836,
		-0.991177, -0.121395, 0.053217,
		-0.129322, 0.973729, -0.187427,
		21.626318, 18.107906, 13.553416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.283909, 17.380960, 13.142820>,  <21.716845, 17.426296, 13.684614>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.283909, 17.380960, 13.142820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.429661, 17.752945, 13.123224>,  <21.517113, 17.976135, 13.111466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.429661, 17.752945, 13.123224>,  <21.283909, 17.380960, 13.142820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.429661, 17.752945, 13.123224> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126137, -0.101410, -0.986816,
		-0.922668, 0.353396, -0.154254,
		0.364379, 0.929961, -0.048991,
		21.538975, 18.031933, 13.108527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.880896, 17.877436, 12.596528>,  <21.283909, 17.380960, 13.142820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.880896, 17.877436, 12.596528> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.255478, 18.009472, 12.644009>,  <21.480228, 18.088694, 12.672497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.255478, 18.009472, 12.644009>,  <20.880896, 17.877436, 12.596528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.255478, 18.009472, 12.644009> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113509, 0.035038, -0.992919,
		-0.331911, 0.943299, -0.004657,
		0.936457, 0.330089, 0.118702,
		21.536415, 18.108500, 12.679619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930023, 18.319181, 12.067580>,  <20.880896, 17.877436, 12.596528>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930023, 18.319181, 12.067580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.306400, 18.236351, 12.174719>,  <21.532227, 18.186653, 12.239002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.306400, 18.236351, 12.174719>,  <20.930023, 18.319181, 12.067580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.306400, 18.236351, 12.174719> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272732, -0.005140, -0.962076,
		0.200600, 0.978311, 0.051640,
		0.940945, -0.207076, 0.267847,
		21.588684, 18.174229, 12.255074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.406771, 18.816542, 11.677325>,  <20.930023, 18.319181, 12.067580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.406771, 18.816542, 11.677325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.608360, 18.488453, 11.785579>,  <21.729315, 18.291599, 11.850531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.608360, 18.488453, 11.785579>,  <21.406771, 18.816542, 11.677325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.608360, 18.488453, 11.785579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322216, -0.112170, -0.939997,
		0.801365, 0.560938, 0.207758,
		0.503976, -0.820223, 0.270633,
		21.759554, 18.242386, 11.866769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.062160, 18.849827, 11.273017>,  <21.406771, 18.816542, 11.677325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.062160, 18.849827, 11.273017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078140, 18.462952, 11.373381>,  <22.087729, 18.230827, 11.433599>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.078140, 18.462952, 11.373381>,  <22.062160, 18.849827, 11.273017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.078140, 18.462952, 11.373381> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319341, -0.225582, -0.920399,
		0.946797, 0.116897, 0.299850,
		0.039952, -0.967185, 0.250910,
		22.090126, 18.172796, 11.448654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.706911, 18.613722, 11.077000>,  <22.062160, 18.849827, 11.273017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.706911, 18.613722, 11.077000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.493977, 18.275898, 11.100098>,  <22.366215, 18.073204, 11.113956>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.493977, 18.275898, 11.100098>,  <22.706911, 18.613722, 11.077000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.493977, 18.275898, 11.100098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418275, -0.321724, -0.849435,
		0.735977, -0.428033, 0.524524,
		-0.532338, -0.844560, 0.057746,
		22.334274, 18.022530, 11.117421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.198080, 18.149549, 10.951804>,  <22.706911, 18.613722, 11.077000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.198080, 18.149549, 10.951804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.846542, 17.964333, 10.905804>,  <22.635620, 17.853203, 10.878203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.846542, 17.964333, 10.905804>,  <23.198080, 18.149549, 10.951804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.846542, 17.964333, 10.905804> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403835, -0.593582, -0.696116,
		0.254069, -0.658219, 0.708659,
		-0.878844, -0.463043, -0.115001,
		22.582890, 17.825420, 10.871304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.311737, 17.367609, 11.000768>,  <23.198080, 18.149549, 10.951804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.311737, 17.367609, 11.000768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.954338, 17.407871, 10.825712>,  <22.739899, 17.432030, 10.720678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.954338, 17.407871, 10.825712>,  <23.311737, 17.367609, 11.000768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.954338, 17.407871, 10.825712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284959, -0.626121, -0.725790,
		-0.347072, -0.773201, 0.530755,
		-0.893498, 0.100658, -0.437640,
		22.686289, 17.438068, 10.694420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.107395, 16.690956, 10.838470>,  <23.311737, 17.367609, 11.000768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.107395, 16.690956, 10.838470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.885757, 16.926922, 10.603528>,  <22.752775, 17.068501, 10.462564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.885757, 16.926922, 10.603528>,  <23.107395, 16.690956, 10.838470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.885757, 16.926922, 10.603528> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173982, -0.607922, -0.774701,
		-0.814071, -0.531445, 0.234210,
		-0.554093, 0.589913, -0.587353,
		22.719530, 17.103895, 10.427322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.620440, 16.234926, 10.468753>,  <23.107395, 16.690956, 10.838470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.620440, 16.234926, 10.468753> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.661415, 16.574444, 10.261270>,  <22.686001, 16.778154, 10.136780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.661415, 16.574444, 10.261270>,  <22.620440, 16.234926, 10.468753>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.661415, 16.574444, 10.261270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249216, -0.526720, -0.812685,
		-0.963015, -0.046019, -0.265490,
		0.102440, 0.848792, -0.518708,
		22.692146, 16.829081, 10.105658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291113, 16.034985, 9.734213>,  <22.620440, 16.234926, 10.468753>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291113, 16.034985, 9.734213> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.515972, 16.360645, 9.676044>,  <22.650888, 16.556042, 9.641142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<22.515972, 16.360645, 9.676044>,  <22.291113, 16.034985, 9.734213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.515972, 16.360645, 9.676044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123394, -0.256435, -0.958653,
		-0.817779, 0.520961, -0.244615,
		0.562148, 0.814150, -0.145424,
		22.684616, 16.604891, 9.632417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.477175, 15.892262, 9.575204>,  <22.291113, 16.034985, 9.734213>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.477175, 15.892262, 9.575204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.234600, 15.574402, 9.564161>,  <21.089056, 15.383685, 9.557536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.234600, 15.574402, 9.564161>,  <21.477175, 15.892262, 9.575204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.234600, 15.574402, 9.564161> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165801, 0.092422, 0.981819,
		-0.777653, 0.599989, -0.187803,
		-0.606437, -0.794652, -0.027607,
		21.052670, 15.336006, 9.555880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.901762, 16.059244, 9.998726>,  <21.477175, 15.892262, 9.575204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.901762, 16.059244, 9.998726> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.957161, 15.665184, 9.958139>,  <20.990400, 15.428747, 9.933787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.957161, 15.665184, 9.958139>,  <20.901762, 16.059244, 9.998726>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957161, 15.665184, 9.958139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091838, -0.114788, 0.989136,
		-0.986096, -0.127672, -0.106372,
		0.138495, -0.985152, -0.101466,
		20.998709, 15.369638, 9.927699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.394213, 15.705185, 10.322068>,  <20.901762, 16.059244, 9.998726>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.394213, 15.705185, 10.322068> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.661549, 15.409489, 10.288973>,  <20.821951, 15.232071, 10.269115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.661549, 15.409489, 10.288973>,  <20.394213, 15.705185, 10.322068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.661549, 15.409489, 10.288973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052100, -0.064434, 0.996561,
		-0.742029, -0.670352, -0.004549,
		0.668340, -0.739240, -0.082738,
		20.862051, 15.187716, 10.264152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.129835, 15.157547, 10.744514>,  <20.394213, 15.705185, 10.322068>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.129835, 15.157547, 10.744514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.521832, 15.087048, 10.707513>,  <20.757029, 15.044747, 10.685312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.521832, 15.087048, 10.707513>,  <20.129835, 15.157547, 10.744514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.521832, 15.087048, 10.707513> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053719, -0.213290, 0.975511,
		-0.191653, -0.960961, -0.199555,
		0.979991, -0.176240, -0.092500,
		20.815828, 15.034173, 10.679762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.285147, 14.597968, 11.194154>,  <20.129835, 15.157547, 10.744514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.285147, 14.597968, 11.194154> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.644905, 14.766094, 11.146122>,  <20.860760, 14.866970, 11.117303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.644905, 14.766094, 11.146122>,  <20.285147, 14.597968, 11.194154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.644905, 14.766094, 11.146122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177180, -0.099402, 0.979146,
		0.399614, -0.901917, -0.163873,
		0.899398, 0.420315, -0.120079,
		20.914724, 14.892189, 11.110098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.890760, 14.093732, 11.379827>,  <20.285147, 14.597968, 11.194154>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.890760, 14.093732, 11.379827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.032997, 14.467216, 11.396502>,  <21.118340, 14.691307, 11.406508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.032997, 14.467216, 11.396502>,  <20.890760, 14.093732, 11.379827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.032997, 14.467216, 11.396502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227978, -0.129909, 0.964961,
		0.906411, -0.333628, -0.259060,
		0.355592, 0.933711, 0.041691,
		21.139675, 14.747330, 11.409010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.357525, 14.044106, 11.897395>,  <20.890760, 14.093732, 11.379827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.357525, 14.044106, 11.897395> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.270111, 14.433010, 11.864038>,  <21.217663, 14.666352, 11.844025>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.270111, 14.433010, 11.864038>,  <21.357525, 14.044106, 11.897395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.270111, 14.433010, 11.864038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131926, 0.114108, 0.984670,
		0.966870, 0.204184, -0.153203,
		-0.218535, 0.972259, -0.083391,
		21.204550, 14.724688, 11.839022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.832922, 14.216608, 12.355684>,  <21.357525, 14.044106, 11.897395>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.832922, 14.216608, 12.355684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.549915, 14.490837, 12.287086>,  <21.380112, 14.655375, 12.245928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.549915, 14.490837, 12.287086>,  <21.832922, 14.216608, 12.355684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.549915, 14.490837, 12.287086> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003813, 0.246370, 0.969168,
		0.706687, 0.685048, -0.176925,
		-0.707516, 0.685573, -0.171495,
		21.337660, 14.696509, 12.235638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.146387, 14.817901, 12.557465>,  <21.832922, 14.216608, 12.355684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.146387, 14.817901, 12.557465> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.754196, 14.896545, 12.556427>,  <21.518881, 14.943732, 12.555804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.754196, 14.896545, 12.556427>,  <22.146387, 14.817901, 12.557465>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.754196, 14.896545, 12.556427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069572, 0.359224, 0.930654,
		0.183910, 0.912306, -0.365890,
		-0.980478, 0.196612, -0.002594,
		21.460052, 14.955529, 12.555649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.046434, 15.382545, 13.082522>,  <22.146387, 14.817901, 12.557465>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.046434, 15.382545, 13.082522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.668003, 15.270283, 13.017815>,  <21.440945, 15.202926, 12.978991>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.668003, 15.270283, 13.017815>,  <22.046434, 15.382545, 13.082522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.668003, 15.270283, 13.017815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252744, 0.327163, 0.910541,
		-0.202622, 0.902329, -0.380455,
		-0.946079, -0.280654, -0.161768,
		21.384180, 15.186087, 12.969284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.623220, 15.951057, 13.169212>,  <22.046434, 15.382545, 13.082522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.623220, 15.951057, 13.169212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.367676, 15.646046, 13.210020>,  <21.214350, 15.463038, 13.234505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<21.367676, 15.646046, 13.210020>,  <21.623220, 15.951057, 13.169212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.367676, 15.646046, 13.210020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217754, 0.306418, 0.926656,
		-0.737862, 0.569788, -0.361802,
		-0.638860, -0.762528, 0.102020,
		21.176018, 15.417287, 13.240626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.937826, 16.196583, 13.258903>,  <21.623220, 15.951057, 13.169212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.937826, 16.196583, 13.258903> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.933392, 15.836105, 13.432211>,  <20.930731, 15.619819, 13.536196>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.933392, 15.836105, 13.432211>,  <20.937826, 16.196583, 13.258903>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.933392, 15.836105, 13.432211> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414946, 0.398375, 0.817996,
		-0.909778, -0.170716, -0.378364,
		-0.011086, -0.901196, 0.433270,
		20.930065, 15.565746, 13.562192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.264013, 16.069244, 13.538827>,  <20.937826, 16.196583, 13.258903>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.264013, 16.069244, 13.538827> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.501076, 15.836212, 13.761307>,  <20.643312, 15.696392, 13.894794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.501076, 15.836212, 13.761307>,  <20.264013, 16.069244, 13.538827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.501076, 15.836212, 13.761307> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414500, 0.371486, 0.830776,
		-0.690615, -0.722908, -0.021318,
		0.592655, -0.582583, 0.556199,
		20.678873, 15.661437, 13.928166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.787859, 15.910159, 14.021707>,  <20.264013, 16.069244, 13.538827>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.787859, 15.910159, 14.021707> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.120892, 15.754662, 14.179533>,  <20.320711, 15.661363, 14.274229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.120892, 15.754662, 14.179533>,  <19.787859, 15.910159, 14.021707>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.120892, 15.754662, 14.179533> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324620, 0.234729, 0.916255,
		-0.448806, -0.890943, 0.069238,
		0.832584, -0.388745, 0.394566,
		20.370667, 15.638038, 14.297903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.612539, 15.380719, 14.488986>,  <19.787859, 15.910159, 14.021707>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.612539, 15.380719, 14.488986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.980446, 15.503143, 14.587254>,  <20.201191, 15.576597, 14.646214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.980446, 15.503143, 14.587254>,  <19.612539, 15.380719, 14.488986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.980446, 15.503143, 14.587254> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304046, 0.159881, 0.939145,
		0.248160, -0.938490, 0.240111,
		0.919768, 0.306063, 0.245668,
		20.256376, 15.594961, 14.660954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.819895, 15.010200, 15.067372>,  <19.612539, 15.380719, 14.488986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.819895, 15.010200, 15.067372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.035816, 15.346901, 15.064169>,  <20.165369, 15.548922, 15.062246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.035816, 15.346901, 15.064169>,  <19.819895, 15.010200, 15.067372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.035816, 15.346901, 15.064169> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275604, 0.185715, 0.943161,
		0.795397, -0.506913, 0.332240,
		0.539802, 0.841754, -0.008010,
		20.197758, 15.599427, 15.061766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.124605, 15.096030, 15.823431>,  <19.819895, 15.010200, 15.067372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.124605, 15.096030, 15.823431> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.194847, 15.461689, 15.677280>,  <20.236992, 15.681084, 15.589590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.194847, 15.461689, 15.677280>,  <20.124605, 15.096030, 15.823431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.194847, 15.461689, 15.677280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163580, 0.393078, 0.904837,
		0.970775, -0.099126, 0.218563,
		0.175605, 0.914146, -0.365375,
		20.247528, 15.735933, 15.567668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.581614, 15.456492, 16.342085>,  <20.124605, 15.096030, 15.823431>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.581614, 15.456492, 16.342085> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.429058, 15.734455, 16.098234>,  <20.337524, 15.901233, 15.951923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<20.429058, 15.734455, 16.098234>,  <20.581614, 15.456492, 16.342085>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.429058, 15.734455, 16.098234> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334864, 0.510830, 0.791782,
		0.861631, 0.506120, 0.037874,
		-0.381389, 0.694907, -0.609629,
		20.314642, 15.942927, 15.915345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<20.930584, 16.155853, 16.724318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.610775, 16.211002, 16.490479>,  <20.418890, 16.244091, 16.350174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.610775, 16.211002, 16.490479>,  <20.930584, 16.155853, 16.724318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.610775, 16.211002, 16.490479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506185, 0.369272, 0.779368,
		0.323329, 0.919037, -0.225453,
		-0.799522, 0.137872, -0.584599,
		20.370918, 16.252363, 16.315098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.663473, 16.890785, 16.830996>,  <20.930584, 16.155853, 16.724318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.663473, 16.890785, 16.830996> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.342621, 16.689426, 16.702511>,  <20.150110, 16.568611, 16.625420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.342621, 16.689426, 16.702511>,  <20.663473, 16.890785, 16.830996>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.342621, 16.689426, 16.702511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546276, 0.401334, 0.735197,
		-0.241184, 0.765193, -0.596916,
		-0.802130, -0.503399, -0.321211,
		20.101982, 16.538406, 16.606148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.178011, 17.301003, 16.821676>,  <20.663473, 16.890785, 16.830996>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.178011, 17.301003, 16.821676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.967262, 16.961029, 16.819794>,  <19.840813, 16.757046, 16.818665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.967262, 16.961029, 16.819794>,  <20.178011, 17.301003, 16.821676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.967262, 16.961029, 16.819794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639700, 0.392888, 0.660623,
		-0.559635, 0.351074, -0.750703,
		-0.526870, -0.849933, -0.004708,
		19.809202, 16.706049, 16.818380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.593714, 17.541605, 17.062958>,  <20.178011, 17.301003, 16.821676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.593714, 17.541605, 17.062958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.528358, 17.147560, 17.084333>,  <19.489145, 16.911133, 17.097158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.528358, 17.147560, 17.084333>,  <19.593714, 17.541605, 17.062958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.528358, 17.147560, 17.084333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642735, 0.147386, 0.751777,
		-0.748462, 0.088483, -0.657248,
		-0.163389, -0.985113, 0.053441,
		19.479342, 16.852026, 17.100367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.919466, 17.522968, 17.163576>,  <19.593714, 17.541605, 17.062958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.919466, 17.522968, 17.163576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.076401, 17.183369, 17.305153>,  <19.170561, 16.979609, 17.390099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.076401, 17.183369, 17.305153>,  <18.919466, 17.522968, 17.163576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.076401, 17.183369, 17.305153> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644020, 0.021195, 0.764715,
		-0.656743, -0.527971, -0.538456,
		0.392335, -0.848998, 0.353944,
		19.194101, 16.928669, 17.411337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.332638, 17.174347, 17.418409>,  <18.919466, 17.522968, 17.163576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.332638, 17.174347, 17.418409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632614, 16.994980, 17.612938>,  <18.812601, 16.887360, 17.729654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.632614, 16.994980, 17.612938>,  <18.332638, 17.174347, 17.418409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.632614, 16.994980, 17.612938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502297, 0.092366, 0.859748,
		-0.430447, -0.889038, -0.155971,
		0.749942, -0.448420, 0.486320,
		18.857597, 16.860455, 17.758835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.028332, 16.728897, 17.873346>,  <18.332638, 17.174347, 17.418409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.028332, 16.728897, 17.873346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.392952, 16.756771, 18.035442>,  <18.611725, 16.773495, 18.132700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.392952, 16.756771, 18.035442>,  <18.028332, 16.728897, 17.873346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392952, 16.756771, 18.035442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409906, 0.076193, 0.908940,
		0.032454, -0.994656, 0.098014,
		0.911550, 0.069675, 0.405242,
		18.666416, 16.777676, 18.157015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.020094, 16.214325, 18.399426>,  <18.028332, 16.728897, 17.873346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.020094, 16.214325, 18.399426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.294945, 16.487556, 18.498428>,  <18.459856, 16.651495, 18.557829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.294945, 16.487556, 18.498428>,  <18.020094, 16.214325, 18.399426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.294945, 16.487556, 18.498428> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277436, -0.068156, 0.958323,
		0.671479, -0.727158, 0.142679,
		0.687128, 0.683078, 0.247506,
		18.501083, 16.692480, 18.572680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.297915, 16.030813, 19.007591>,  <18.020094, 16.214325, 18.399426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.297915, 16.030813, 19.007591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.420353, 16.411209, 18.990065>,  <18.493816, 16.639446, 18.979548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.420353, 16.411209, 18.990065>,  <18.297915, 16.030813, 19.007591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.420353, 16.411209, 18.990065> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109554, 0.080910, 0.990682,
		0.945675, -0.298445, 0.128952,
		0.306098, 0.950991, -0.043819,
		18.512182, 16.696507, 18.976919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.793579, 16.144459, 19.594584>,  <18.297915, 16.030813, 19.007591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.793579, 16.144459, 19.594584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.699032, 16.518425, 19.488705>,  <18.642303, 16.742805, 19.425177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.699032, 16.518425, 19.488705>,  <18.793579, 16.144459, 19.594584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.699032, 16.518425, 19.488705> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133665, 0.238541, 0.961890,
		0.962427, 0.262739, 0.068582,
		-0.236366, 0.934915, -0.264697,
		18.628122, 16.798899, 19.409296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.225784, 16.554895, 20.022451>,  <18.793579, 16.144459, 19.594584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.225784, 16.554895, 20.022451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.905369, 16.761204, 19.900917>,  <18.713120, 16.884989, 19.827997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.905369, 16.761204, 19.900917>,  <19.225784, 16.554895, 20.022451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.905369, 16.761204, 19.900917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144497, 0.325956, 0.934277,
		0.580912, 0.792295, -0.186575,
		-0.801038, 0.515773, -0.303836,
		18.665058, 16.915936, 19.809767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.270985, 17.249256, 20.335352>,  <19.225784, 16.554895, 20.022451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.270985, 17.249256, 20.335352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886253, 17.213936, 20.231747>,  <18.655415, 17.192743, 20.169584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.886253, 17.213936, 20.231747>,  <19.270985, 17.249256, 20.335352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.886253, 17.213936, 20.231747> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272595, 0.392162, 0.878579,
		0.023997, 0.915648, -0.401263,
		-0.961829, -0.088299, -0.259012,
		18.597704, 17.187447, 20.154043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949692, 17.897968, 20.562952>,  <19.270985, 17.249256, 20.335352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949692, 17.897968, 20.562952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.645844, 17.641235, 20.520945>,  <18.463535, 17.487196, 20.495739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.645844, 17.641235, 20.520945>,  <18.949692, 17.897968, 20.562952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.645844, 17.641235, 20.520945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417960, 0.358045, 0.834933,
		-0.498286, 0.678125, -0.540239,
		-0.759619, -0.641834, -0.105021,
		18.417957, 17.448685, 20.489439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.394947, 18.082893, 21.082809>,  <18.949692, 17.897968, 20.562952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.394947, 18.082893, 21.082809> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.219311, 17.767361, 20.910788>,  <18.113930, 17.578041, 20.807575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.219311, 17.767361, 20.910788>,  <18.394947, 18.082893, 21.082809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.219311, 17.767361, 20.910788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806400, 0.134975, 0.575762,
		-0.396131, 0.599607, -0.695378,
		-0.439089, -0.788830, -0.430055,
		18.087584, 17.530712, 20.781771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.797747, 18.197918, 20.681505>,  <18.394947, 18.082893, 21.082809>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.797747, 18.197918, 20.681505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.782913, 17.844856, 20.868927>,  <17.774014, 17.633018, 20.981380>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.782913, 17.844856, 20.868927>,  <17.797747, 18.197918, 20.681505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.782913, 17.844856, 20.868927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673072, 0.368635, 0.641157,
		-0.738647, -0.291593, -0.607762,
		-0.037085, -0.882656, 0.468554,
		17.771788, 17.580059, 21.009493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.121891, 18.093206, 20.928944>,  <17.797747, 18.197918, 20.681505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.121891, 18.093206, 20.928944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.356815, 17.870754, 21.164158>,  <17.497770, 17.737284, 21.305286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.356815, 17.870754, 21.164158>,  <17.121891, 18.093206, 20.928944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.356815, 17.870754, 21.164158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547281, 0.262385, 0.794756,
		-0.596279, -0.788589, -0.150258,
		0.587311, -0.556130, 0.588035,
		17.533009, 17.703915, 21.340569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.685202, 17.812355, 21.390774>,  <17.121891, 18.093206, 20.928944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.685202, 17.812355, 21.390774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.021034, 17.753735, 21.600010>,  <17.222534, 17.718563, 21.725552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.021034, 17.753735, 21.600010>,  <16.685202, 17.812355, 21.390774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021034, 17.753735, 21.600010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482164, 0.242531, 0.841841,
		-0.250237, -0.959011, 0.132964,
		0.839583, -0.146549, 0.523090,
		17.272909, 17.709770, 21.756937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.497866, 17.284695, 21.995794>,  <16.685202, 17.812355, 21.390774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.497866, 17.284695, 21.995794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.843781, 17.462029, 22.090111>,  <17.051331, 17.568428, 22.146700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.843781, 17.462029, 22.090111>,  <16.497866, 17.284695, 21.995794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.843781, 17.462029, 22.090111> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385001, 0.283949, 0.878150,
		0.322369, -0.850189, 0.416242,
		0.864785, 0.443342, 0.235787,
		17.103216, 17.595028, 22.160849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.694220, 17.025703, 22.592257>,  <16.497866, 17.284695, 21.995794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.694220, 17.025703, 22.592257> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.896305, 17.370441, 22.574465>,  <17.017557, 17.577284, 22.563789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.896305, 17.370441, 22.574465>,  <16.694220, 17.025703, 22.592257>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896305, 17.370441, 22.574465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393733, 0.276057, 0.876793,
		0.767940, -0.425456, 0.478806,
		0.505215, 0.861846, -0.044479,
		17.047869, 17.628996, 22.561121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.970531, 17.041803, 23.178785>,  <16.694220, 17.025703, 22.592257>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.970531, 17.041803, 23.178785> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.989155, 17.422901, 23.058712>,  <17.000328, 17.651560, 22.986668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.989155, 17.422901, 23.058712>,  <16.970531, 17.041803, 23.178785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.989155, 17.422901, 23.058712> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172580, 0.303660, 0.937020,
		0.983895, 0.008181, 0.178562,
		0.046556, 0.952745, -0.300181,
		17.003122, 17.708725, 22.968658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.518492, 17.367947, 23.554733>,  <16.970531, 17.041803, 23.178785>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.518492, 17.367947, 23.554733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.248726, 17.644577, 23.451281>,  <17.086866, 17.810555, 23.389208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.248726, 17.644577, 23.451281>,  <17.518492, 17.367947, 23.554733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.248726, 17.644577, 23.451281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142550, 0.221736, 0.964631,
		0.724462, 0.687428, -0.050958,
		-0.674414, 0.691575, -0.258633,
		17.046402, 17.852049, 23.373692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.512980, 17.743444, 24.180952>,  <17.518492, 17.367947, 23.554733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.512980, 17.743444, 24.180952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.203201, 17.887707, 23.973045>,  <17.017334, 17.974264, 23.848301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.203201, 17.887707, 23.973045>,  <17.512980, 17.743444, 24.180952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.203201, 17.887707, 23.973045> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314422, 0.493507, 0.810919,
		0.548974, 0.791440, -0.268795,
		-0.774446, 0.360658, -0.519768,
		16.970867, 17.995905, 23.817116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.567745, 18.400211, 24.292564>,  <17.512980, 17.743444, 24.180952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.567745, 18.400211, 24.292564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.184128, 18.340145, 24.196495>,  <16.953957, 18.304106, 24.138853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.184128, 18.340145, 24.196495>,  <17.567745, 18.400211, 24.292564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.184128, 18.340145, 24.196495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282678, 0.561595, 0.777627,
		0.018107, 0.813671, -0.581043,
		-0.959044, -0.150167, -0.240176,
		16.896414, 18.295095, 24.124443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.281565, 19.019037, 24.520370>,  <17.567745, 18.400211, 24.292564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.281565, 19.019037, 24.520370> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.001747, 18.734489, 24.493263>,  <16.833857, 18.563761, 24.476999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.001747, 18.734489, 24.493263>,  <17.281565, 19.019037, 24.520370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.001747, 18.734489, 24.493263> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487713, 0.405980, 0.772862,
		-0.522279, 0.573701, -0.630945,
		-0.699543, -0.711370, -0.067767,
		16.791883, 18.521078, 24.472933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.449909, 19.644554, 24.910856>,  <17.281565, 19.019037, 24.520370>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.449909, 19.644554, 24.910856> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.692505, 19.962589, 24.909479>,  <17.838062, 20.153410, 24.908653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.692505, 19.962589, 24.909479>,  <17.449909, 19.644554, 24.910856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.692505, 19.962589, 24.909479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201778, -0.158101, -0.966587,
		-0.769064, 0.585528, -0.256317,
		0.606487, 0.795086, -0.003443,
		17.874451, 20.201115, 24.908445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.309347, 19.906546, 24.333521>,  <17.449909, 19.644554, 24.910856>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.309347, 19.906546, 24.333521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.662514, 20.077751, 24.410734>,  <17.874414, 20.180473, 24.457062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.662514, 20.077751, 24.410734>,  <17.309347, 19.906546, 24.333521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.662514, 20.077751, 24.410734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263316, -0.110982, -0.958304,
		-0.388743, 0.896933, -0.210691,
		0.882917, 0.428012, 0.193033,
		17.927389, 20.206156, 24.468643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420042, 20.368549, 23.841078>,  <17.309347, 19.906546, 24.333521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420042, 20.368549, 23.841078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.798172, 20.355228, 23.970850>,  <18.025049, 20.347235, 24.048714>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.798172, 20.355228, 23.970850>,  <17.420042, 20.368549, 23.841078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.798172, 20.355228, 23.970850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325398, 0.163203, -0.931387,
		-0.021929, 0.986030, 0.165116,
		0.945323, -0.033304, 0.324431,
		18.081768, 20.345238, 24.068180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.876631, 21.018402, 23.479765>,  <17.420042, 20.368549, 23.841078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.876631, 21.018402, 23.479765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.117905, 20.719788, 23.592087>,  <18.262669, 20.540619, 23.659479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.117905, 20.719788, 23.592087>,  <17.876631, 21.018402, 23.479765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117905, 20.719788, 23.592087> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386499, -0.034388, -0.921648,
		0.697699, 0.664456, 0.267793,
		0.603186, -0.746535, 0.280804,
		18.298861, 20.495827, 23.676329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.575794, 21.162790, 23.245953>,  <17.876631, 21.018402, 23.479765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.575794, 21.162790, 23.245953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.593651, 20.765915, 23.292542>,  <18.604364, 20.527790, 23.320496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.593651, 20.765915, 23.292542>,  <18.575794, 21.162790, 23.245953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.593651, 20.765915, 23.292542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556696, -0.072103, -0.827581,
		0.829516, 0.101785, 0.549130,
		0.044642, -0.992190, 0.116474,
		18.607044, 20.468258, 23.327484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.153828, 21.103241, 22.890381>,  <18.575794, 21.162790, 23.245953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.153828, 21.103241, 22.890381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.031319, 20.723114, 22.912638>,  <18.957813, 20.495039, 22.925991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.031319, 20.723114, 22.912638>,  <19.153828, 21.103241, 22.890381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.031319, 20.723114, 22.912638> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278778, -0.145426, -0.949281,
		0.910208, -0.275229, 0.309467,
		-0.306275, -0.950316, 0.055640,
		18.939436, 20.438019, 22.929329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.730648, 20.616152, 22.612017>,  <19.153828, 21.103241, 22.890381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.730648, 20.616152, 22.612017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.392765, 20.402946, 22.592545>,  <19.190035, 20.275024, 22.580862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.392765, 20.402946, 22.592545>,  <19.730648, 20.616152, 22.612017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.392765, 20.402946, 22.592545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224088, -0.269595, -0.936538,
		0.486062, -0.802008, 0.347170,
		-0.844706, -0.533012, -0.048681,
		19.139353, 20.243044, 22.577940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985897, 19.967207, 22.311279>,  <19.730648, 20.616152, 22.612017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.985897, 19.967207, 22.311279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.588505, 19.955479, 22.267206>,  <19.350069, 19.948442, 22.240763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.588505, 19.955479, 22.267206>,  <19.985897, 19.967207, 22.311279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.588505, 19.955479, 22.267206> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113760, -0.319693, -0.940667,
		-0.007642, -0.947067, 0.320944,
		-0.993479, -0.029322, -0.110182,
		19.290461, 19.946682, 22.234152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.824203, 19.277662, 22.064388>,  <19.985897, 19.967207, 22.311279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.824203, 19.277662, 22.064388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.495571, 19.488068, 21.976465>,  <19.298391, 19.614311, 21.923712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.495571, 19.488068, 21.976465>,  <19.824203, 19.277662, 22.064388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.495571, 19.488068, 21.976465> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047384, -0.447238, -0.893159,
		-0.568123, -0.723385, 0.392366,
		-0.821579, 0.526016, -0.219809,
		19.249098, 19.645872, 21.910522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.384624, 18.867437, 21.736362>,  <19.824203, 19.277662, 22.064388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.384624, 18.867437, 21.736362> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.309498, 19.241062, 21.614866>,  <19.264421, 19.465237, 21.541969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.309498, 19.241062, 21.614866>,  <19.384624, 18.867437, 21.736362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309498, 19.241062, 21.614866> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075931, -0.294508, -0.952627,
		-0.979265, -0.201981, -0.015611,
		-0.187815, 0.934060, -0.303738,
		19.253153, 19.521280, 21.523745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.873844, 18.820803, 21.358000>,  <19.384624, 18.867437, 21.736362>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.873844, 18.820803, 21.358000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.015835, 19.165150, 21.212175>,  <19.101028, 19.371758, 21.124681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.015835, 19.165150, 21.212175>,  <18.873844, 18.820803, 21.358000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.015835, 19.165150, 21.212175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077311, -0.361587, -0.929127,
		-0.931674, 0.358001, -0.061800,
		0.354974, 0.860866, -0.364559,
		19.122328, 19.423409, 21.102808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.540176, 18.999903, 20.713850>,  <18.873844, 18.820803, 21.358000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.540176, 18.999903, 20.713850> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860062, 19.238525, 20.686771>,  <19.051992, 19.381699, 20.670525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.860062, 19.238525, 20.686771>,  <18.540176, 18.999903, 20.713850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.860062, 19.238525, 20.686771> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170869, -0.334240, -0.926870,
		-0.575555, 0.729662, -0.369229,
		0.799712, 0.596554, -0.067697,
		19.099976, 19.417492, 20.666462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.476912, 19.360044, 20.102160>,  <18.540176, 18.999903, 20.713850>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.476912, 19.360044, 20.102160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.853485, 19.440456, 20.210445>,  <19.079430, 19.488703, 20.275417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.853485, 19.440456, 20.210445>,  <18.476912, 19.360044, 20.102160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.853485, 19.440456, 20.210445> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271631, 0.023552, -0.962113,
		-0.199788, 0.979302, -0.032433,
		0.941436, 0.201028, 0.270714,
		19.135916, 19.500765, 20.291660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.716084, 19.903704, 19.673124>,  <18.476912, 19.360044, 20.102160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.716084, 19.903704, 19.673124> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.047806, 19.717079, 19.796133>,  <19.246840, 19.605104, 19.869938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.047806, 19.717079, 19.796133>,  <18.716084, 19.903704, 19.673124>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.047806, 19.717079, 19.796133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383469, 0.074878, -0.920513,
		0.406449, 0.881314, 0.241008,
		0.829307, -0.466561, 0.307522,
		19.296598, 19.577110, 19.888390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.255022, 20.106680, 19.252228>,  <18.716084, 19.903704, 19.673124>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.255022, 20.106680, 19.252228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.401459, 19.760395, 19.388765>,  <19.489321, 19.552624, 19.470688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.401459, 19.760395, 19.388765>,  <19.255022, 20.106680, 19.252228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401459, 19.760395, 19.388765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482307, -0.137180, -0.865195,
		0.795837, 0.481374, 0.367319,
		0.366093, -0.865714, 0.341343,
		19.511286, 19.500681, 19.491169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.953865, 20.178337, 18.932047>,  <19.255022, 20.106680, 19.252228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.953865, 20.178337, 18.932047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.882004, 19.799976, 19.040117>,  <19.838888, 19.572960, 19.104959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.882004, 19.799976, 19.040117>,  <19.953865, 20.178337, 18.932047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.882004, 19.799976, 19.040117> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321340, -0.316004, -0.892682,
		0.929767, -0.073554, 0.360727,
		-0.179651, -0.945902, 0.270174,
		19.828108, 19.516205, 19.121170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.537537, 19.960302, 18.989174>,  <19.953865, 20.178337, 18.932047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.537537, 19.960302, 18.989174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.300659, 19.642654, 18.934502>,  <20.158533, 19.452066, 18.901699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.300659, 19.642654, 18.934502>,  <20.537537, 19.960302, 18.989174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.300659, 19.642654, 18.934502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542839, -0.267805, -0.795994,
		0.595510, -0.545578, 0.589671,
		-0.592194, -0.794119, -0.136680,
		20.123001, 19.404419, 18.893497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.045036, 19.437479, 18.891611>,  <20.537537, 19.960302, 18.989174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.045036, 19.437479, 18.891611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705185, 19.304405, 18.727928>,  <20.501274, 19.224562, 18.629719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705185, 19.304405, 18.727928>,  <21.045036, 19.437479, 18.891611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705185, 19.304405, 18.727928> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477400, -0.155464, -0.864824,
		0.224097, -0.930136, 0.290910,
		-0.849629, -0.332685, -0.409208,
		20.450296, 19.204599, 18.605165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.160963, 18.864172, 18.467354>,  <21.045036, 19.437479, 18.891611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.160963, 18.864172, 18.467354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.802330, 18.957779, 18.316952>,  <20.587151, 19.013943, 18.226711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.802330, 18.957779, 18.316952>,  <21.160963, 18.864172, 18.467354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.802330, 18.957779, 18.316952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334680, -0.198030, -0.921289,
		-0.290058, -0.951851, 0.099229,
		-0.896580, 0.234017, -0.376006,
		20.533356, 19.027983, 18.204149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.919235, 18.350695, 18.142817>,  <21.160963, 18.864172, 18.467354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.919235, 18.350695, 18.142817> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705982, 18.647942, 17.981052>,  <20.578030, 18.826290, 17.883993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<20.705982, 18.647942, 17.981052>,  <20.919235, 18.350695, 18.142817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.705982, 18.647942, 17.981052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309746, -0.273375, -0.910672,
		-0.787290, -0.610774, -0.084432,
		-0.533133, 0.743116, -0.404411,
		20.546041, 18.870876, 17.859730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.820694, 14.331694, 14.083551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859661, 14.695953, 13.922939>,  <20.883041, 14.914510, 13.826572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859661, 14.695953, 13.922939>,  <20.820694, 14.331694, 14.083551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859661, 14.695953, 13.922939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174071, -0.412821, -0.894024,
		-0.979903, 0.017200, -0.198734,
		0.097418, 0.910650, -0.401530,
		20.888887, 14.969149, 13.802481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.409086, 14.421509, 13.505736>,  <20.820694, 14.331694, 14.083551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.409086, 14.421509, 13.505736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.660324, 14.720314, 13.418587>,  <20.811066, 14.899597, 13.366297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.660324, 14.720314, 13.418587>,  <20.409086, 14.421509, 13.505736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.660324, 14.720314, 13.418587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052290, -0.319879, -0.946014,
		-0.776379, 0.582793, -0.239975,
		0.628093, 0.747014, -0.217873,
		20.848753, 14.944418, 13.353225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.160175, 14.688887, 12.978145>,  <20.409086, 14.421509, 13.505736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.160175, 14.688887, 12.978145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.520496, 14.860447, 12.951010>,  <20.736689, 14.963384, 12.934729>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.520496, 14.860447, 12.951010>,  <20.160175, 14.688887, 12.978145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.520496, 14.860447, 12.951010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086145, 0.023393, -0.996008,
		-0.425603, 0.903048, 0.058020,
		0.900801, 0.428902, -0.067837,
		20.790737, 14.989118, 12.930658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222919, 15.222155, 12.389530>,  <20.160175, 14.688887, 12.978145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222919, 15.222155, 12.389530> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.615189, 15.178017, 12.454162>,  <20.850550, 15.151534, 12.492941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.615189, 15.178017, 12.454162>,  <20.222919, 15.222155, 12.389530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.615189, 15.178017, 12.454162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166777, 0.039575, -0.985200,
		0.102318, 0.993105, 0.057213,
		0.980671, -0.110346, 0.161578,
		20.909389, 15.144913, 12.502635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.593470, 15.834563, 12.063703>,  <20.222919, 15.222155, 12.389530>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.593470, 15.834563, 12.063703> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.843922, 15.525707, 12.107082>,  <20.994192, 15.340393, 12.133110>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.843922, 15.525707, 12.107082>,  <20.593470, 15.834563, 12.063703>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.843922, 15.525707, 12.107082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235654, 0.054813, -0.970290,
		0.743256, 0.633083, 0.216279,
		0.626129, -0.772141, 0.108449,
		21.031761, 15.294065, 12.139617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.080242, 16.020489, 11.775335>,  <20.593470, 15.834563, 12.063703>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.080242, 16.020489, 11.775335> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.129852, 15.623653, 11.783151>,  <21.159618, 15.385552, 11.787840>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.129852, 15.623653, 11.783151>,  <21.080242, 16.020489, 11.775335>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.129852, 15.623653, 11.783151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284284, 0.016662, -0.958595,
		0.950684, 0.124447, 0.284101,
		0.124028, -0.992086, 0.019537,
		21.167061, 15.326028, 11.789012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.662645, 15.916000, 11.392376>,  <21.080242, 16.020489, 11.775335>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.662645, 15.916000, 11.392376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469242, 15.565865, 11.392706>,  <21.353201, 15.355783, 11.392904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.469242, 15.565865, 11.392706>,  <21.662645, 15.916000, 11.392376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.469242, 15.565865, 11.392706> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259461, -0.144217, -0.954925,
		0.836003, -0.461498, 0.296847,
		-0.483506, -0.875341, 0.000825,
		21.324190, 15.303263, 11.392954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.060194, 15.408011, 10.890451>,  <21.662645, 15.916000, 11.392376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.060194, 15.408011, 10.890451> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699757, 15.248730, 10.959113>,  <21.483494, 15.153161, 11.000310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.699757, 15.248730, 10.959113>,  <22.060194, 15.408011, 10.890451>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.699757, 15.248730, 10.959113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023846, -0.349753, -0.936538,
		0.432970, -0.848001, 0.305664,
		-0.901093, -0.398204, 0.171654,
		21.429428, 15.129269, 11.010610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077295, 14.823581, 10.460978>,  <22.060194, 15.408011, 10.890451>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077295, 14.823581, 10.460978> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687271, 14.888130, 10.521922>,  <21.453257, 14.926860, 10.558489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.687271, 14.888130, 10.521922>,  <22.077295, 14.823581, 10.460978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687271, 14.888130, 10.521922> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196267, -0.306488, -0.931420,
		-0.103611, -0.938095, 0.330517,
		-0.975061, 0.161375, 0.152361,
		21.394753, 14.936543, 10.567631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.777996, 14.275747, 9.998852>,  <22.077295, 14.823581, 10.460978>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.777996, 14.275747, 9.998852> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488384, 14.527699, 10.111305>,  <21.314617, 14.678869, 10.178778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.488384, 14.527699, 10.111305>,  <21.777996, 14.275747, 9.998852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.488384, 14.527699, 10.111305> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406483, -0.060338, -0.911664,
		-0.557274, -0.774347, 0.299721,
		-0.724028, 0.629878, 0.281133,
		21.271175, 14.716662, 10.195645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.079901, 14.015821, 9.833051>,  <21.777996, 14.275747, 9.998852>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.079901, 14.015821, 9.833051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.055191, 14.414974, 9.841164>,  <21.040365, 14.654467, 9.846031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.055191, 14.414974, 9.841164>,  <21.079901, 14.015821, 9.833051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.055191, 14.414974, 9.841164> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381062, -0.004799, -0.924537,
		-0.922483, -0.064841, 0.380553,
		-0.061774, 0.997884, 0.020281,
		21.036659, 14.714339, 9.847248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447763, 14.200776, 9.469857>,  <21.079901, 14.015821, 9.833051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.447763, 14.200776, 9.469857> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.620872, 14.561157, 9.482448>,  <20.724739, 14.777386, 9.490002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.620872, 14.561157, 9.482448>,  <20.447763, 14.200776, 9.469857>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.620872, 14.561157, 9.482448> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323147, 0.187629, -0.927562,
		-0.841595, 0.391254, 0.372341,
		0.432774, 0.900953, 0.031476,
		20.750706, 14.831443, 9.491890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.967257, 14.768126, 9.335693>,  <20.447763, 14.200776, 9.469857>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.967257, 14.768126, 9.335693> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.329086, 14.893456, 9.220057>,  <20.546185, 14.968653, 9.150675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.329086, 14.893456, 9.220057>,  <19.967257, 14.768126, 9.335693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.329086, 14.893456, 9.220057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353005, 0.170290, -0.919994,
		-0.239026, 0.934254, 0.264644,
		0.904574, 0.313324, -0.289092,
		20.600458, 14.987453, 9.133329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.999125, 15.422775, 9.004039>,  <19.967257, 14.768126, 9.335693>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.999125, 15.422775, 9.004039> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.282711, 15.191406, 8.842648>,  <20.452862, 15.052585, 8.745812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.282711, 15.191406, 8.842648>,  <19.999125, 15.422775, 9.004039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.282711, 15.191406, 8.842648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476571, 0.028785, -0.878665,
		0.519854, 0.815229, -0.255252,
		0.708965, -0.578424, -0.403478,
		20.495401, 15.017879, 8.721604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.391617, 15.738904, 8.796782>,  <19.999125, 15.422775, 9.004039>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.391617, 15.738904, 8.796782> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.028576, 15.616055, 8.682288>,  <18.810751, 15.542345, 8.613591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.028576, 15.616055, 8.682288>,  <19.391617, 15.738904, 8.796782>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.028576, 15.616055, 8.682288> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404053, 0.453857, 0.794201,
		-0.114008, 0.836474, -0.536016,
		-0.907603, -0.307125, -0.286237,
		18.756294, 15.523917, 8.596417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.037075, 16.319263, 8.677999>,  <19.391617, 15.738904, 8.796782>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.037075, 16.319263, 8.677999> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.791389, 16.023796, 8.789073>,  <18.643978, 15.846516, 8.855717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.791389, 16.023796, 8.789073>,  <19.037075, 16.319263, 8.677999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.791389, 16.023796, 8.789073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237428, 0.508557, 0.827646,
		-0.752574, 0.442423, -0.487744,
		-0.614215, -0.738669, 0.277684,
		18.607124, 15.802196, 8.872378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.561459, 16.693237, 9.002983>,  <19.037075, 16.319263, 8.677999>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.561459, 16.693237, 9.002983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.467499, 16.323475, 9.123180>,  <18.411123, 16.101618, 9.195299>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.467499, 16.323475, 9.123180>,  <18.561459, 16.693237, 9.002983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.467499, 16.323475, 9.123180> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365992, 0.370506, 0.853683,
		-0.900484, 0.090554, -0.425357,
		-0.234902, -0.924405, 0.300493,
		18.397028, 16.046154, 9.213328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.870056, 16.750473, 9.191297>,  <18.561459, 16.693237, 9.002983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.870056, 16.750473, 9.191297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.998409, 16.425926, 9.386731>,  <18.075420, 16.231197, 9.503992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.998409, 16.425926, 9.386731>,  <17.870056, 16.750473, 9.191297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.998409, 16.425926, 9.386731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411367, 0.345272, 0.843543,
		-0.853118, -0.471667, -0.222978,
		0.320883, -0.811368, 0.488586,
		18.094675, 16.182516, 9.533307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.381624, 16.695780, 9.723250>,  <17.870056, 16.750473, 9.191297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.381624, 16.695780, 9.723250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.685055, 16.467270, 9.848606>,  <17.867113, 16.330164, 9.923820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.685055, 16.467270, 9.848606>,  <17.381624, 16.695780, 9.723250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.685055, 16.467270, 9.848606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192103, 0.263505, 0.945337,
		-0.622625, -0.777311, 0.090145,
		0.758574, -0.571272, 0.313388,
		17.912626, 16.295889, 9.942622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.086113, 16.168274, 10.129610>,  <17.381624, 16.695780, 9.723250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.086113, 16.168274, 10.129610> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.468307, 16.185337, 10.246381>,  <17.697624, 16.195576, 10.316443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.468307, 16.185337, 10.246381>,  <17.086113, 16.168274, 10.129610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.468307, 16.185337, 10.246381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294854, 0.104030, 0.949863,
		0.010148, -0.993659, 0.111977,
		0.955489, 0.042656, 0.291928,
		17.754953, 16.198135, 10.333960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.076559, 15.716963, 10.683854>,  <17.086113, 16.168274, 10.129610>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.076559, 15.716963, 10.683854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.385952, 15.958988, 10.759353>,  <17.571587, 16.104204, 10.804652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.385952, 15.958988, 10.759353>,  <17.076559, 15.716963, 10.683854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.385952, 15.958988, 10.759353> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221867, -0.020482, 0.974862,
		0.593719, -0.795914, 0.118402,
		0.773481, 0.605064, 0.188747,
		17.617996, 16.140507, 10.815977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.298513, 15.583418, 11.329355>,  <17.076559, 15.716963, 10.683854>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.298513, 15.583418, 11.329355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.469936, 15.944183, 11.307852>,  <17.572790, 16.160643, 11.294950>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.469936, 15.944183, 11.307852>,  <17.298513, 15.583418, 11.329355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.469936, 15.944183, 11.307852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106181, 0.109361, 0.988315,
		0.897254, -0.417841, 0.142634,
		0.428557, 0.901914, -0.053758,
		17.598503, 16.214758, 11.291724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.835758, 15.626001, 11.918171>,  <17.298513, 15.583418, 11.329355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.835758, 15.626001, 11.918171> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.740402, 15.996933, 11.802772>,  <17.683189, 16.219492, 11.733532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.740402, 15.996933, 11.802772>,  <17.835758, 15.626001, 11.918171>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.740402, 15.996933, 11.802772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091799, 0.317249, 0.943889,
		0.966822, 0.198528, -0.160756,
		-0.238388, 0.927329, -0.288498,
		17.668886, 16.275131, 11.716222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.118473, 15.975386, 12.449179>,  <17.835758, 15.626001, 11.918171>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.118473, 15.975386, 12.449179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.913086, 16.263344, 12.262373>,  <17.789854, 16.436119, 12.150290>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.913086, 16.263344, 12.262373>,  <18.118473, 15.975386, 12.449179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.913086, 16.263344, 12.262373> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164064, 0.451838, 0.876884,
		0.842279, 0.526872, -0.113896,
		-0.513468, 0.719895, -0.467014,
		17.759045, 16.479313, 12.122269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.311234, 16.568521, 12.747959>,  <18.118473, 15.975386, 12.449179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.311234, 16.568521, 12.747959> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.977516, 16.701431, 12.571982>,  <17.777287, 16.781178, 12.466396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.977516, 16.701431, 12.571982>,  <18.311234, 16.568521, 12.747959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.977516, 16.701431, 12.571982> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353209, 0.290575, 0.889275,
		0.423320, 0.897307, -0.125062,
		-0.834292, 0.332275, -0.439943,
		17.727228, 16.801113, 12.440000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263708, 17.323689, 12.854812>,  <18.311234, 16.568521, 12.747959>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263708, 17.323689, 12.854812> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.915630, 17.134708, 12.798883>,  <17.706783, 17.021320, 12.765326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.915630, 17.134708, 12.798883>,  <18.263708, 17.323689, 12.854812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.915630, 17.134708, 12.798883> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376389, 0.454306, 0.807426,
		-0.317946, 0.755246, -0.573161,
		-0.870196, -0.472449, -0.139821,
		17.654572, 16.992973, 12.756937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636961, 17.824833, 12.938097>,  <18.263708, 17.323689, 12.854812>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636961, 17.824833, 12.938097> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.480434, 17.458073, 12.969490>,  <17.386518, 17.238016, 12.988326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.480434, 17.458073, 12.969490>,  <17.636961, 17.824833, 12.938097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.480434, 17.458073, 12.969490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494989, 0.281612, 0.821998,
		-0.775794, 0.282815, -0.564057,
		-0.391319, -0.916903, 0.078482,
		17.363039, 17.183002, 12.993034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910473, 17.901962, 13.162457>,  <17.636961, 17.824833, 12.938097>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910473, 17.901962, 13.162457> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.996414, 17.525944, 13.268404>,  <17.047979, 17.300333, 13.331972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.996414, 17.525944, 13.268404>,  <16.910473, 17.901962, 13.162457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996414, 17.525944, 13.268404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345045, 0.180648, 0.921038,
		-0.913665, -0.289277, -0.285545,
		0.214852, -0.940045, 0.264865,
		17.060869, 17.243931, 13.347863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463793, 18.363510, 12.900705>,  <16.910473, 17.901962, 13.162457>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463793, 18.363510, 12.900705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.522018, 18.752514, 12.973404>,  <16.556953, 18.985916, 13.017023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.522018, 18.752514, 12.973404>,  <16.463793, 18.363510, 12.900705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.522018, 18.752514, 12.973404> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461220, 0.095815, -0.882097,
		-0.875264, 0.212228, -0.434594,
		0.145565, 0.972511, 0.181747,
		16.565687, 19.044268, 13.027928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217237, 18.648407, 12.310246>,  <16.463793, 18.363510, 12.900705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.217237, 18.648407, 12.310246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.452579, 18.924446, 12.478819>,  <16.593784, 19.090069, 12.579963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.452579, 18.924446, 12.478819>,  <16.217237, 18.648407, 12.310246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.452579, 18.924446, 12.478819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352139, 0.250497, -0.901803,
		-0.727899, 0.678983, -0.095629,
		0.588355, 0.690096, 0.421433,
		16.629086, 19.131475, 12.605248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.091894, 19.295010, 11.938297>,  <16.217237, 18.648407, 12.310246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.091894, 19.295010, 11.938297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.463394, 19.302677, 12.086381>,  <16.686295, 19.307278, 12.175231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.463394, 19.302677, 12.086381>,  <16.091894, 19.295010, 11.938297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463394, 19.302677, 12.086381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362326, 0.164206, -0.917473,
		-0.078379, 0.986240, 0.145560,
		0.928750, 0.019171, 0.370210,
		16.742020, 19.308428, 12.197444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.417694, 19.841650, 11.561799>,  <16.091894, 19.295010, 11.938297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.417694, 19.841650, 11.561799> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.722908, 19.624172, 11.701612>,  <16.906036, 19.493685, 11.785501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<16.722908, 19.624172, 11.701612>,  <16.417694, 19.841650, 11.561799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.722908, 19.624172, 11.701612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475315, 0.105531, -0.873464,
		0.438010, 0.832622, 0.338950,
		0.763035, -0.543694, 0.349534,
		16.951818, 19.461063, 11.806473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.018000, 20.177475, 11.387189>,  <16.417694, 19.841650, 11.561799>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.018000, 20.177475, 11.387189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.130783, 19.799633, 11.454387>,  <17.198454, 19.572927, 11.494705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.130783, 19.799633, 11.454387>,  <17.018000, 20.177475, 11.387189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.130783, 19.799633, 11.454387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509498, -0.000949, -0.860471,
		0.812963, 0.328212, 0.481006,
		0.281961, -0.944604, 0.167995,
		17.215372, 19.516253, 11.504786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.662769, 20.257076, 11.213510>,  <17.018000, 20.177475, 11.387189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.662769, 20.257076, 11.213510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.595158, 19.863575, 11.189314>,  <17.554590, 19.627474, 11.174797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.595158, 19.863575, 11.189314>,  <17.662769, 20.257076, 11.213510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.595158, 19.863575, 11.189314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506235, -0.033998, -0.861725,
		0.845668, -0.176280, 0.503757,
		-0.169031, -0.983753, -0.060488,
		17.544449, 19.568449, 11.171167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240719, 19.870382, 11.154000>,  <17.662769, 20.257076, 11.213510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240719, 19.870382, 11.154000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.981133, 19.601933, 11.010648>,  <17.825380, 19.440863, 10.924637>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.981133, 19.601933, 11.010648>,  <18.240719, 19.870382, 11.154000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.981133, 19.601933, 11.010648> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554588, -0.094816, -0.826705,
		0.520843, -0.735256, 0.433730,
		-0.648964, -0.671125, -0.358380,
		17.786444, 19.400595, 10.903133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628569, 19.323645, 10.841696>,  <18.240719, 19.870382, 11.154000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628569, 19.323645, 10.841696> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.264454, 19.296284, 10.678381>,  <18.045984, 19.279867, 10.580392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.264454, 19.296284, 10.678381>,  <18.628569, 19.323645, 10.841696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.264454, 19.296284, 10.678381> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413787, -0.180218, -0.892357,
		-0.012544, -0.981246, 0.192353,
		-0.910287, -0.068400, -0.408287,
		17.991367, 19.275764, 10.555895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.622238, 18.754885, 10.437228>,  <18.628569, 19.323645, 10.841696>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.622238, 18.754885, 10.437228> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.313168, 18.962219, 10.290643>,  <18.127724, 19.086620, 10.202692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.313168, 18.962219, 10.290643>,  <18.622238, 18.754885, 10.437228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.313168, 18.962219, 10.290643> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278068, -0.242588, -0.929424,
		-0.570654, -0.820048, 0.043309,
		-0.772679, 0.518337, -0.366463,
		18.081364, 19.117720, 10.180704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.481766, 18.356649, 9.907297>,  <18.622238, 18.754885, 10.437228>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.481766, 18.356649, 9.907297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.260059, 18.674458, 9.808079>,  <18.127035, 18.865143, 9.748548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.260059, 18.674458, 9.808079>,  <18.481766, 18.356649, 9.907297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260059, 18.674458, 9.808079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231710, -0.138943, -0.962811,
		-0.799436, -0.591130, -0.107086,
		-0.554268, 0.794519, -0.248047,
		18.093779, 18.912813, 9.733665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094070, 18.184263, 9.356713>,  <18.481766, 18.356649, 9.907297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.094070, 18.184263, 9.356713> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.108719, 18.583225, 9.331909>,  <18.117508, 18.822601, 9.317026>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.108719, 18.583225, 9.331909>,  <18.094070, 18.184263, 9.356713>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.108719, 18.583225, 9.331909> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288609, -0.069965, -0.954887,
		-0.956747, 0.017074, -0.290422,
		0.036623, 0.997403, -0.062011,
		18.119705, 18.882446, 9.313306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.598083, 18.338993, 8.861465>,  <18.094070, 18.184263, 9.356713>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.598083, 18.338993, 8.861465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.877983, 18.623203, 8.891150>,  <18.045923, 18.793730, 8.908960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<17.877983, 18.623203, 8.891150>,  <17.598083, 18.338993, 8.861465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.877983, 18.623203, 8.891150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322964, -0.221972, -0.920012,
		-0.637219, 0.667744, -0.384799,
		0.699747, 0.710526, 0.074213,
		18.087908, 18.836361, 8.913413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<13.914816, 19.955160, 15.743179> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297021, 20.026192, 15.837381>,  <14.526343, 20.068811, 15.893903>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.297021, 20.026192, 15.837381>,  <13.914816, 19.955160, 15.743179>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.297021, 20.026192, 15.837381> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236283, 0.017061, -0.971535,
		-0.176543, 0.983958, -0.025657,
		0.955512, 0.177580, 0.235504,
		14.583674, 20.079466, 15.908032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.133038, 20.257414, 15.181445>,  <13.914816, 19.955160, 15.743179>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.133038, 20.257414, 15.181445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472348, 20.151943, 15.365141>,  <14.675935, 20.088661, 15.475359>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.472348, 20.151943, 15.365141>,  <14.133038, 20.257414, 15.181445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.472348, 20.151943, 15.365141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463844, -0.048439, -0.884592,
		0.255490, 0.963395, 0.081214,
		0.848277, -0.263675, 0.459240,
		14.726831, 20.072842, 15.502913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.683901, 20.686094, 14.912694>,  <14.133038, 20.257414, 15.181445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.683901, 20.686094, 14.912694> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900424, 20.389572, 15.071413>,  <15.030338, 20.211658, 15.166644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.900424, 20.389572, 15.071413>,  <14.683901, 20.686094, 14.912694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900424, 20.389572, 15.071413> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595164, 0.004457, -0.803592,
		0.593939, 0.671152, 0.443612,
		0.541309, -0.741307, 0.396798,
		15.062817, 20.167181, 15.190453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.379617, 20.765347, 14.643484>,  <14.683901, 20.686094, 14.912694>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.379617, 20.765347, 14.643484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371875, 20.391300, 14.785009>,  <15.367229, 20.166872, 14.869925>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.371875, 20.391300, 14.785009>,  <15.379617, 20.765347, 14.643484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.371875, 20.391300, 14.785009> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639676, -0.283554, -0.714431,
		0.768401, 0.212498, 0.603660,
		-0.019355, -0.935116, 0.353813,
		15.366068, 20.110765, 14.891153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.074993, 20.559183, 14.513988>,  <15.379617, 20.765347, 14.643484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.074993, 20.559183, 14.513988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855479, 20.228100, 14.560860>,  <15.723770, 20.029449, 14.588983>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.855479, 20.228100, 14.560860>,  <16.074993, 20.559183, 14.513988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.855479, 20.228100, 14.560860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559671, -0.467904, -0.683984,
		0.620969, -0.309779, 0.720024,
		-0.548786, -0.827709, 0.117180,
		15.690844, 19.979788, 14.596014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.569054, 20.053297, 14.531206>,  <16.074993, 20.559183, 14.513988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.569054, 20.053297, 14.531206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217636, 19.885078, 14.440607>,  <16.006786, 19.784147, 14.386248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.217636, 19.885078, 14.440607>,  <16.569054, 20.053297, 14.531206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.217636, 19.885078, 14.440607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446866, -0.556127, -0.700737,
		0.168731, -0.716843, 0.676510,
		-0.878545, -0.420546, -0.226496,
		15.954073, 19.758915, 14.372658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.715656, 19.274208, 14.686693>,  <16.569054, 20.053297, 14.531206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.715656, 19.274208, 14.686693> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426708, 19.364872, 14.425371>,  <16.253340, 19.419271, 14.268579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426708, 19.364872, 14.425371>,  <16.715656, 19.274208, 14.686693>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.426708, 19.364872, 14.425371> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471077, -0.530324, -0.704871,
		-0.506227, -0.816935, 0.276318,
		-0.722372, 0.226658, -0.653303,
		16.209997, 19.432871, 14.229380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.842674, 18.668242, 14.168530>,  <16.715656, 19.274208, 14.686693>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.842674, 18.668242, 14.168530> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584599, 18.923878, 14.001059>,  <16.429752, 19.077259, 13.900577>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584599, 18.923878, 14.001059>,  <16.842674, 18.668242, 14.168530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.584599, 18.923878, 14.001059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574408, 0.044426, -0.817363,
		-0.503770, -0.767846, -0.395763,
		-0.645191, 0.639092, -0.418677,
		16.391041, 19.115604, 13.875456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.584570, 18.364094, 13.605518>,  <16.842674, 18.668242, 14.168530>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.584570, 18.364094, 13.605518> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534142, 18.756565, 13.547007>,  <16.503885, 18.992048, 13.511900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.534142, 18.756565, 13.547007>,  <16.584570, 18.364094, 13.605518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.534142, 18.756565, 13.547007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633736, -0.033787, -0.772811,
		-0.763207, -0.190130, -0.617548,
		-0.126069, 0.981177, -0.146279,
		16.496321, 19.050919, 13.503123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.290476, 17.691277, 13.584936>,  <16.584570, 18.364094, 13.605518>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.290476, 17.691277, 13.584936> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565361, 17.416878, 13.680553>,  <16.730293, 17.252237, 13.737924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.565361, 17.416878, 13.680553>,  <16.290476, 17.691277, 13.584936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.565361, 17.416878, 13.680553> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364140, -0.040556, 0.930461,
		-0.628600, -0.726472, -0.277670,
		0.687215, -0.685998, 0.239044,
		16.771526, 17.211079, 13.752267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.915803, 17.215549, 13.886282>,  <16.290476, 17.691277, 13.584936>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.915803, 17.215549, 13.886282> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289906, 17.160828, 14.016869>,  <16.514366, 17.127995, 14.095221>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.289906, 17.160828, 14.016869>,  <15.915803, 17.215549, 13.886282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.289906, 17.160828, 14.016869> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342570, -0.117638, 0.932098,
		-0.089098, -0.983590, -0.156882,
		0.935258, -0.136791, 0.326468,
		16.570482, 17.119785, 14.114808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.883620, 16.650066, 14.339492>,  <15.915803, 17.215549, 13.886282>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.883620, 16.650066, 14.339492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234833, 16.808460, 14.447016>,  <16.445560, 16.903496, 14.511530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.234833, 16.808460, 14.447016>,  <15.883620, 16.650066, 14.339492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.234833, 16.808460, 14.447016> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252520, -0.093823, 0.963032,
		0.406565, -0.913452, 0.017614,
		0.878031, 0.395983, 0.268810,
		16.498241, 16.927256, 14.527658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154514, 16.084478, 14.821651>,  <15.883620, 16.650066, 14.339492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154514, 16.084478, 14.821651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.310318, 16.443356, 14.904915>,  <16.403801, 16.658682, 14.954873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.310318, 16.443356, 14.904915>,  <16.154514, 16.084478, 14.821651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.310318, 16.443356, 14.904915> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233033, -0.122652, 0.964703,
		0.891054, -0.424269, 0.161301,
		0.389510, 0.897191, 0.208158,
		16.427172, 16.712513, 14.967362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.586611, 16.018326, 15.451071>,  <16.154514, 16.084478, 14.821651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.586611, 16.018326, 15.451071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511162, 16.410770, 15.433884>,  <16.465893, 16.646236, 15.423572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511162, 16.410770, 15.433884>,  <16.586611, 16.018326, 15.451071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511162, 16.410770, 15.433884> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186452, 0.007181, 0.982438,
		0.964188, 0.193320, 0.181575,
		-0.188621, 0.981109, -0.042968,
		16.454575, 16.705103, 15.420993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947693, 16.328789, 16.067575>,  <16.586611, 16.018326, 15.451071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947693, 16.328789, 16.067575> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645550, 16.562473, 15.948832>,  <16.464264, 16.702684, 15.877585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.645550, 16.562473, 15.948832>,  <16.947693, 16.328789, 16.067575>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.645550, 16.562473, 15.948832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273219, 0.130990, 0.952991,
		0.595636, 0.800959, 0.060673,
		-0.755360, 0.584213, -0.296860,
		16.418941, 16.737738, 15.859774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.923374, 16.752775, 16.623289>,  <16.947693, 16.328789, 16.067575>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.923374, 16.752775, 16.623289> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583241, 16.817867, 16.423109>,  <16.379160, 16.856922, 16.303001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.583241, 16.817867, 16.423109>,  <16.923374, 16.752775, 16.623289>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.583241, 16.817867, 16.423109> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467895, 0.201443, 0.860520,
		0.240843, 0.965888, -0.095154,
		-0.850334, 0.162728, -0.500451,
		16.328140, 16.866686, 16.272974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.663095, 17.366810, 17.003428>,  <16.923374, 16.752775, 16.623289>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.663095, 17.366810, 17.003428> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350616, 17.230152, 16.794428>,  <16.163128, 17.148157, 16.669027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.350616, 17.230152, 16.794428>,  <16.663095, 17.366810, 17.003428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.350616, 17.230152, 16.794428> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579677, 0.086290, 0.810264,
		-0.231736, 0.935859, -0.265453,
		-0.781200, -0.341644, -0.522500,
		16.116257, 17.127659, 16.637678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.059639, 17.874554, 17.118626>,  <16.663095, 17.366810, 17.003428>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.059639, 17.874554, 17.118626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906632, 17.521904, 17.008051>,  <15.814829, 17.310314, 16.941706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.906632, 17.521904, 17.008051>,  <16.059639, 17.874554, 17.118626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.906632, 17.521904, 17.008051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630546, 0.030398, 0.775556,
		-0.675347, 0.470970, -0.567533,
		-0.382516, -0.881625, -0.276439,
		15.791878, 17.257416, 16.925119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.376484, 17.959639, 17.248604>,  <16.059639, 17.874554, 17.118626>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.376484, 17.959639, 17.248604> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.434262, 17.565437, 17.212999>,  <15.468929, 17.328917, 17.191637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.434262, 17.565437, 17.212999>,  <15.376484, 17.959639, 17.248604>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.434262, 17.565437, 17.212999> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519360, -0.152073, 0.840916,
		-0.842259, -0.075239, -0.533796,
		0.144446, -0.985501, -0.089009,
		15.477596, 17.269787, 17.186296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.632368, 17.654230, 17.299849>,  <15.376484, 17.959639, 17.248604>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.632368, 17.654230, 17.299849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917350, 17.382336, 17.369558>,  <15.088339, 17.219200, 17.411385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.917350, 17.382336, 17.369558>,  <14.632368, 17.654230, 17.299849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.917350, 17.382336, 17.369558> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434445, -0.232236, 0.870243,
		-0.551061, -0.695721, -0.460765,
		0.712453, -0.679734, 0.174277,
		15.131085, 17.178415, 17.421841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.252836, 17.107731, 17.549486>,  <14.632368, 17.654230, 17.299849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.252836, 17.107731, 17.549486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622811, 17.017670, 17.671991>,  <14.844796, 16.963633, 17.745495>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622811, 17.017670, 17.671991>,  <14.252836, 17.107731, 17.549486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.622811, 17.017670, 17.671991> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350324, -0.192229, 0.916690,
		-0.147518, -0.955174, -0.256675,
		0.924939, -0.225147, 0.306263,
		14.900292, 16.950123, 17.763870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.190113, 16.495831, 17.957008>,  <14.252836, 17.107731, 17.549486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.190113, 16.495831, 17.957008> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525201, 16.681572, 18.071968>,  <14.726254, 16.793018, 18.140944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525201, 16.681572, 18.071968>,  <14.190113, 16.495831, 17.957008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.525201, 16.681572, 18.071968> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230790, -0.175928, 0.956967,
		0.494934, -0.868000, -0.040210,
		0.837721, 0.464356, 0.287398,
		14.776517, 16.820879, 18.158188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.444444, 16.043512, 18.293669>,  <14.190113, 16.495831, 17.957008>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.444444, 16.043512, 18.293669> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598149, 16.383663, 18.437445>,  <14.690372, 16.587753, 18.523710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.598149, 16.383663, 18.437445>,  <14.444444, 16.043512, 18.293669>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.598149, 16.383663, 18.437445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024539, -0.379786, 0.924749,
		0.922897, -0.364169, -0.125071,
		0.384265, 0.850379, 0.359440,
		14.713428, 16.638777, 18.545277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<20.873562, 21.604979, 18.522194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.499180, 21.723995, 18.446871>,  <20.274551, 21.795404, 18.401676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.499180, 21.723995, 18.446871>,  <20.873562, 21.604979, 18.522194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.499180, 21.723995, 18.446871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163272, -0.107112, -0.980749,
		-0.311985, -0.948681, 0.051672,
		-0.935952, 0.297543, -0.188310,
		20.218393, 21.813257, 18.390377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.579565, 21.133102, 18.119425>,  <20.873562, 21.604979, 18.522194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.579565, 21.133102, 18.119425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.370380, 21.468746, 18.059546>,  <20.244869, 21.670132, 18.023619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.370380, 21.468746, 18.059546>,  <20.579565, 21.133102, 18.119425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.370380, 21.468746, 18.059546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069185, -0.133261, -0.988663,
		-0.849544, -0.527390, 0.011637,
		-0.522962, 0.839108, -0.149699,
		20.213491, 21.720478, 18.014635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.125334, 20.909544, 17.675482>,  <20.579565, 21.133102, 18.119425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.125334, 20.909544, 17.675482> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.114979, 21.306644, 17.628527>,  <20.108767, 21.544905, 17.600353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.114979, 21.306644, 17.628527>,  <20.125334, 20.909544, 17.675482>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.114979, 21.306644, 17.628527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097326, -0.119370, -0.988068,
		-0.994916, -0.014152, 0.099711,
		-0.025886, 0.992749, -0.117386,
		20.107214, 21.604469, 17.593311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.616631, 21.003084, 17.187763>,  <20.125334, 20.909544, 17.675482>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.616631, 21.003084, 17.187763> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.802128, 21.356770, 17.165455>,  <19.913425, 21.568981, 17.152069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.802128, 21.356770, 17.165455>,  <19.616631, 21.003084, 17.187763>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802128, 21.356770, 17.165455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028606, -0.047975, -0.998439,
		-0.885509, 0.464612, 0.003046,
		0.463741, 0.884214, -0.055773,
		19.941250, 21.622034, 17.148724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.186388, 21.360762, 16.667681>,  <19.616631, 21.003084, 17.187763>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.186388, 21.360762, 16.667681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.548054, 21.526314, 16.709986>,  <19.765053, 21.625645, 16.735369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.548054, 21.526314, 16.709986>,  <19.186388, 21.360762, 16.667681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.548054, 21.526314, 16.709986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128061, -0.026422, -0.991414,
		-0.407533, 0.909947, -0.076892,
		0.904167, 0.413881, 0.105761,
		19.819304, 21.650478, 16.741714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.199118, 21.934162, 16.185345>,  <19.186388, 21.360762, 16.667681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.199118, 21.934162, 16.185345> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.582561, 21.835419, 16.242096>,  <19.812628, 21.776173, 16.276146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.582561, 21.835419, 16.242096>,  <19.199118, 21.934162, 16.185345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.582561, 21.835419, 16.242096> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154651, 0.033046, -0.987416,
		0.239065, 0.968488, 0.069855,
		0.958609, -0.246860, 0.141878,
		19.870144, 21.761360, 16.284658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.602985, 22.437265, 15.801232>,  <19.199118, 21.934162, 16.185345>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.602985, 22.437265, 15.801232> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.844894, 22.125530, 15.866816>,  <19.990040, 21.938490, 15.906165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.844894, 22.125530, 15.866816>,  <19.602985, 22.437265, 15.801232>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.844894, 22.125530, 15.866816> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221619, -0.033054, -0.974573,
		0.764941, 0.625732, 0.152726,
		0.604773, -0.779338, 0.163958,
		20.026327, 21.891729, 15.916003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.072279, 22.395384, 15.184288>,  <19.602985, 22.437265, 15.801232>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.072279, 22.395384, 15.184288> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.180313, 22.041325, 15.335848>,  <20.245134, 21.828888, 15.426784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.180313, 22.041325, 15.335848>,  <20.072279, 22.395384, 15.184288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180313, 22.041325, 15.335848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666191, -0.112324, -0.737274,
		0.695157, 0.451547, 0.559341,
		0.270086, -0.885149, 0.378899,
		20.261339, 21.775780, 15.449517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.827250, 22.353292, 15.278638>,  <20.072279, 22.395384, 15.184288>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.827250, 22.353292, 15.278638> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682777, 21.982075, 15.242231>,  <20.596094, 21.759344, 15.220387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.682777, 21.982075, 15.242231>,  <20.827250, 22.353292, 15.278638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.682777, 21.982075, 15.242231> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801991, -0.259350, -0.538096,
		0.475772, -0.267344, 0.837955,
		-0.361180, -0.928044, -0.091016,
		20.574423, 21.703661, 15.214927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.392902, 21.915306, 15.131666>,  <20.827250, 22.353292, 15.278638>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.392902, 21.915306, 15.131666> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.112030, 21.661995, 15.001495>,  <20.943506, 21.510008, 14.923392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.112030, 21.661995, 15.001495>,  <21.392902, 21.915306, 15.131666>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.112030, 21.661995, 15.001495> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623866, -0.326971, -0.709846,
		0.343124, -0.701464, 0.624672,
		-0.702181, -0.633276, -0.325428,
		20.901377, 21.472012, 14.903867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.709705, 21.233984, 14.936206>,  <21.392902, 21.915306, 15.131666>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.709705, 21.233984, 14.936206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.357925, 21.235569, 14.745815>,  <21.146858, 21.236519, 14.631581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.357925, 21.235569, 14.745815>,  <21.709705, 21.233984, 14.936206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.357925, 21.235569, 14.745815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425488, -0.441717, -0.789839,
		-0.213375, -0.897146, 0.386783,
		-0.879449, 0.003960, -0.475976,
		21.094091, 21.236757, 14.603023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.750923, 20.615997, 14.479944>,  <21.709705, 21.233984, 14.936206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.750923, 20.615997, 14.479944> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.438110, 20.809086, 14.322260>,  <21.250422, 20.924940, 14.227649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.438110, 20.809086, 14.322260>,  <21.750923, 20.615997, 14.479944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.438110, 20.809086, 14.322260> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191304, -0.416061, -0.888986,
		-0.593151, -0.770630, 0.233026,
		-0.782032, 0.482724, -0.394212,
		21.203501, 20.953903, 14.203997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.416977, 20.073801, 14.143788>,  <21.750923, 20.615997, 14.479944>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.416977, 20.073801, 14.143788> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.276089, 20.391300, 13.945435>,  <21.191555, 20.581800, 13.826422>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.276089, 20.391300, 13.945435>,  <21.416977, 20.073801, 14.143788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.276089, 20.391300, 13.945435> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204673, -0.451689, -0.868381,
		-0.913262, -0.407358, -0.003364,
		-0.352223, 0.793749, -0.495886,
		21.170422, 20.629425, 13.796669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.034924, 19.818712, 13.560873>,  <21.416977, 20.073801, 14.143788>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.034924, 19.818712, 13.560873> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.171967, 20.184872, 13.476337>,  <21.254192, 20.404568, 13.425616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.171967, 20.184872, 13.476337>,  <21.034924, 19.818712, 13.560873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171967, 20.184872, 13.476337> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398813, -0.345389, -0.849503,
		-0.850629, 0.206760, -0.483405,
		0.342606, 0.915400, -0.211340,
		21.274748, 20.459492, 13.412935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.872019, 19.101751, 13.561203>,  <21.034924, 19.818712, 13.560873>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.872019, 19.101751, 13.561203> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.105694, 18.799702, 13.680204>,  <21.245899, 18.618471, 13.751605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.105694, 18.799702, 13.680204>,  <20.872019, 19.101751, 13.561203>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105694, 18.799702, 13.680204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410465, 0.041342, 0.910939,
		-0.700172, -0.654276, -0.285801,
		0.584189, -0.755125, 0.297503,
		21.280951, 18.573164, 13.769456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.484594, 18.579756, 14.079738>,  <20.872019, 19.101751, 13.561203>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.484594, 18.579756, 14.079738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.867462, 18.512474, 14.173998>,  <21.097183, 18.472105, 14.230554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.867462, 18.512474, 14.173998>,  <20.484594, 18.579756, 14.079738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867462, 18.512474, 14.173998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251869, -0.082372, 0.964249,
		-0.142781, -0.982304, -0.121209,
		0.957171, -0.168206, 0.235651,
		21.154613, 18.462013, 14.244693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.483419, 18.017536, 14.455070>,  <20.484594, 18.579756, 14.079738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.483419, 18.017536, 14.455070> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.827831, 18.198257, 14.548452>,  <21.034477, 18.306690, 14.604483>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.827831, 18.198257, 14.548452>,  <20.483419, 18.017536, 14.455070>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.827831, 18.198257, 14.548452> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246641, -0.030474, 0.968628,
		0.444746, -0.891595, 0.085195,
		0.861028, 0.451806, 0.233457,
		21.086140, 18.333799, 14.618489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.763840, 17.652021, 15.147057>,  <20.483419, 18.017536, 14.455070>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.763840, 17.652021, 15.147057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.962788, 17.998623, 15.130119>,  <21.082155, 18.206585, 15.119957>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.962788, 17.998623, 15.130119>,  <20.763840, 17.652021, 15.147057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.962788, 17.998623, 15.130119> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238301, 0.183387, 0.953720,
		0.834169, -0.464260, 0.297700,
		0.497368, 0.866506, -0.042342,
		21.111998, 18.258575, 15.117416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.268709, 17.591888, 15.726187>,  <20.763840, 17.652021, 15.147057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.268709, 17.591888, 15.726187> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.254559, 17.984154, 15.649199>,  <21.246067, 18.219513, 15.603005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.254559, 17.984154, 15.649199>,  <21.268709, 17.591888, 15.726187>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.254559, 17.984154, 15.649199> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149593, 0.185224, 0.971243,
		0.988115, 0.063153, 0.140148,
		-0.035378, 0.980665, -0.192470,
		21.243946, 18.278353, 15.591457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.816256, 17.961466, 16.194902>,  <21.268709, 17.591888, 15.726187>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.816256, 17.961466, 16.194902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.545681, 18.229828, 16.073368>,  <21.383335, 18.390844, 16.000448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.545681, 18.229828, 16.073368>,  <21.816256, 17.961466, 16.194902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.545681, 18.229828, 16.073368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188556, 0.241037, 0.952023,
		0.711954, 0.701275, -0.036544,
		-0.676438, 0.670906, -0.303837,
		21.342749, 18.431099, 15.982217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.868547, 18.674162, 16.653069>,  <21.816256, 17.961466, 16.194902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.868547, 18.674162, 16.653069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504402, 18.733788, 16.498657>,  <21.285915, 18.769564, 16.406010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.504402, 18.733788, 16.498657>,  <21.868547, 18.674162, 16.653069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504402, 18.733788, 16.498657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333158, 0.289296, 0.897393,
		0.245447, 0.945562, -0.213702,
		-0.910364, 0.149066, -0.386028,
		21.231293, 18.778507, 16.382849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.641079, 19.235937, 16.999149>,  <21.868547, 18.674162, 16.653069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.641079, 19.235937, 16.999149> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.291218, 19.102783, 16.858196>,  <21.081301, 19.022892, 16.773624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.291218, 19.102783, 16.858196>,  <21.641079, 19.235937, 16.999149>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.291218, 19.102783, 16.858196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443726, 0.257115, 0.858487,
		-0.195173, 0.907238, -0.372594,
		-0.874651, -0.332884, -0.352383,
		21.028822, 19.002918, 16.752481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.136028, 19.831694, 16.979452>,  <21.641079, 19.235937, 16.999149>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.136028, 19.831694, 16.979452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.938553, 19.483864, 16.983616>,  <20.820066, 19.275166, 16.986115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.938553, 19.483864, 16.983616>,  <21.136028, 19.831694, 16.979452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.938553, 19.483864, 16.983616> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416183, 0.246757, 0.875159,
		-0.763585, 0.427727, -0.483724,
		-0.493691, -0.869575, 0.010407,
		20.790445, 19.222992, 16.986738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.471493, 19.994759, 17.162378>,  <21.136028, 19.831694, 16.979452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.471493, 19.994759, 17.162378> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480179, 19.604702, 17.250587>,  <20.485390, 19.370668, 17.303513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.480179, 19.604702, 17.250587>,  <20.471493, 19.994759, 17.162378>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.480179, 19.604702, 17.250587> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385491, 0.195350, 0.901795,
		-0.922456, -0.104590, -0.371666,
		0.021714, -0.975141, 0.220521,
		20.486692, 19.312160, 17.316744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.830793, 19.801432, 17.357346>,  <20.471493, 19.994759, 17.162378>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.830793, 19.801432, 17.357346> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.054947, 19.501614, 17.498287>,  <20.189438, 19.321722, 17.582853>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.054947, 19.501614, 17.498287>,  <19.830793, 19.801432, 17.357346>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.054947, 19.501614, 17.498287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524147, 0.008456, 0.851586,
		-0.641282, -0.661899, -0.388133,
		0.560382, -0.749545, 0.352355,
		20.223061, 19.276751, 17.603994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.402428, 19.490677, 17.755602>,  <19.830793, 19.801432, 17.357346>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.402428, 19.490677, 17.755602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.735767, 19.327950, 17.905283>,  <19.935770, 19.230312, 17.995092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.735767, 19.327950, 17.905283>,  <19.402428, 19.490677, 17.755602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.735767, 19.327950, 17.905283> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412248, -0.006461, 0.911049,
		-0.368216, -0.913485, -0.173095,
		0.833348, -0.406821, 0.374203,
		19.985771, 19.205904, 18.017544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.288507, 18.888166, 18.072500>,  <19.402428, 19.490677, 17.755602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.288507, 18.888166, 18.072500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.631790, 19.000996, 18.244041>,  <19.837761, 19.068693, 18.346966>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.631790, 19.000996, 18.244041>,  <19.288507, 18.888166, 18.072500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.631790, 19.000996, 18.244041> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392519, -0.177743, 0.902406,
		0.330770, -0.942784, -0.041821,
		0.858208, 0.282073, 0.428853,
		19.889252, 19.085617, 18.372698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.411282, 18.354692, 18.632797>,  <19.288507, 18.888166, 18.072500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.411282, 18.354692, 18.632797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.625149, 18.682064, 18.716991>,  <19.753469, 18.878487, 18.767508>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.625149, 18.682064, 18.716991>,  <19.411282, 18.354692, 18.632797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.625149, 18.682064, 18.716991> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297957, -0.050503, 0.953242,
		0.790791, -0.572384, 0.216854,
		0.534669, 0.818429, 0.210483,
		19.785549, 18.927593, 18.780136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.537542, 17.534185, 18.864220>,  <19.411282, 18.354692, 18.632797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.537542, 17.534185, 18.864220> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.235580, 17.284088, 18.785034>,  <19.054403, 17.134029, 18.737522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.235580, 17.284088, 18.785034>,  <19.537542, 17.534185, 18.864220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.235580, 17.284088, 18.785034> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508343, -0.367122, -0.778979,
		0.414374, -0.688690, 0.594980,
		-0.754905, -0.625243, -0.197965,
		19.009109, 17.096516, 18.725645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.825916, 16.966129, 18.720770>,  <19.537542, 17.534185, 18.864220>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.825916, 16.966129, 18.720770> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.469505, 16.932590, 18.542313>,  <19.255659, 16.912466, 18.435238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.469505, 16.932590, 18.542313>,  <19.825916, 16.966129, 18.720770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.469505, 16.932590, 18.542313> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442240, -0.382158, -0.811406,
		-0.102460, -0.920285, 0.377594,
		-0.891025, -0.083850, -0.446143,
		19.202198, 16.907436, 18.408470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831160, 16.363018, 18.411644>,  <19.825916, 16.966129, 18.720770>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831160, 16.363018, 18.411644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.523125, 16.494423, 18.192904>,  <19.338303, 16.573265, 18.061659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.523125, 16.494423, 18.192904>,  <19.831160, 16.363018, 18.411644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.523125, 16.494423, 18.192904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464844, -0.298116, -0.833695,
		-0.436903, -0.896218, 0.076869,
		-0.770088, 0.328512, -0.546849,
		19.292097, 16.592976, 18.028849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601036, 15.769051, 17.856529>,  <19.831160, 16.363018, 18.411644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601036, 15.769051, 17.856529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.485386, 16.125393, 17.716368>,  <19.415997, 16.339199, 17.632271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.485386, 16.125393, 17.716368>,  <19.601036, 15.769051, 17.856529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485386, 16.125393, 17.716368> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357741, -0.238968, -0.902727,
		-0.887934, -0.386355, -0.249604,
		-0.289126, 0.890856, -0.350403,
		19.398647, 16.392649, 17.611246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.400391, 15.534913, 17.282404>,  <19.601036, 15.769051, 17.856529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.400391, 15.534913, 17.282404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.420383, 15.929684, 17.221111>,  <19.432379, 16.166546, 17.184336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.420383, 15.929684, 17.221111>,  <19.400391, 15.534913, 17.282404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.420383, 15.929684, 17.221111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338212, -0.161083, -0.927181,
		-0.939742, -0.005482, -0.341841,
		0.049982, 0.986926, -0.153231,
		19.435377, 16.225761, 17.175142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.096149, 15.623652, 16.661730>,  <19.400391, 15.534913, 17.282404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.096149, 15.623652, 16.661730> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.321056, 15.948719, 16.722958>,  <19.456001, 16.143759, 16.759695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.321056, 15.948719, 16.722958>,  <19.096149, 15.623652, 16.661730>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.321056, 15.948719, 16.722958> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321083, -0.043961, -0.946030,
		-0.762077, 0.581069, -0.285651,
		0.562267, 0.812666, 0.153070,
		19.489737, 16.192518, 16.768879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.091988, 15.922608, 16.043219>,  <19.096149, 15.623652, 16.661730>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.091988, 15.922608, 16.043219> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.401207, 16.103134, 16.221527>,  <19.586739, 16.211449, 16.328512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.401207, 16.103134, 16.221527>,  <19.091988, 15.922608, 16.043219>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.401207, 16.103134, 16.221527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551923, -0.132137, -0.823359,
		-0.312691, 0.882528, -0.351239,
		0.773049, 0.451314, 0.445770,
		19.633121, 16.238529, 16.355259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.265190, 16.469530, 15.693191>,  <19.091988, 15.922608, 16.043219>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.265190, 16.469530, 15.693191> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.614021, 16.403049, 15.877302>,  <19.823320, 16.363161, 15.987769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.614021, 16.403049, 15.877302>,  <19.265190, 16.469530, 15.693191>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.614021, 16.403049, 15.877302> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462834, -0.025369, -0.886082,
		0.158946, 0.985765, 0.054801,
		0.872078, -0.166203, 0.460278,
		19.875645, 16.353189, 16.015385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.769615, 16.901665, 15.296281>,  <19.265190, 16.469530, 15.693191>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.769615, 16.901665, 15.296281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.932121, 16.589565, 15.486506>,  <20.029625, 16.402306, 15.600640>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.932121, 16.589565, 15.486506>,  <19.769615, 16.901665, 15.296281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.932121, 16.589565, 15.486506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540539, -0.214403, -0.813541,
		0.736727, 0.587572, 0.334652,
		0.406263, -0.780250, 0.475562,
		20.054001, 16.355490, 15.629174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.504108, 16.941769, 15.214457>,  <19.769615, 16.901665, 15.296281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.504108, 16.941769, 15.214457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.414627, 16.562275, 15.303772>,  <20.360937, 16.334578, 15.357361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.414627, 16.562275, 15.303772>,  <20.504108, 16.941769, 15.214457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.414627, 16.562275, 15.303772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608424, -0.314908, -0.728459,
		0.761430, -0.027105, 0.647680,
		-0.223704, -0.948735, 0.223289,
		20.347515, 16.277655, 15.370759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.055578, 16.564260, 15.059567>,  <20.504108, 16.941769, 15.214457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.055578, 16.564260, 15.059567> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.787758, 16.268509, 15.087904>,  <20.627066, 16.091057, 15.104906>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<20.787758, 16.268509, 15.087904>,  <21.055578, 16.564260, 15.059567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.787758, 16.268509, 15.087904> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481993, -0.505070, -0.715952,
		0.565141, -0.445221, 0.694546,
		-0.669551, -0.739380, 0.070842,
		20.586893, 16.046696, 15.109157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456844, 16.038040, 14.855633>,  <21.055578, 16.564260, 15.059567>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456844, 16.038040, 14.855633> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.088867, 15.882225, 14.837875>,  <20.868082, 15.788736, 14.827221>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.088867, 15.882225, 14.837875>,  <21.456844, 16.038040, 14.855633>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.088867, 15.882225, 14.837875> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306792, -0.644742, -0.700133,
		0.244105, -0.657700, 0.712631,
		-0.919941, -0.389536, -0.044392,
		20.812885, 15.765365, 14.824557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.557959, 15.321079, 14.797849>,  <21.456844, 16.038040, 14.855633>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.557959, 15.321079, 14.797849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195347, 15.406338, 14.652094>,  <20.977779, 15.457493, 14.564641>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.195347, 15.406338, 14.652094>,  <21.557959, 15.321079, 14.797849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.195347, 15.406338, 14.652094> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219434, -0.499474, -0.838078,
		-0.360632, -0.839700, 0.406016,
		-0.906528, 0.213143, -0.364385,
		20.923389, 15.470282, 14.542778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.371408, 14.762508, 14.492493>,  <21.557959, 15.321079, 14.797849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.371408, 14.762508, 14.492493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.133038, 15.036961, 14.325594>,  <20.990015, 15.201632, 14.225454>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<21.133038, 15.036961, 14.325594>,  <21.371408, 14.762508, 14.492493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<21.133038, 15.036961, 14.325594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285445, -0.304665, -0.908680,
		-0.750595, -0.660608, -0.014295,
		-0.595926, 0.686131, -0.417247,
		20.954260, 15.242800, 14.200419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<14.650881, 15.898095, 19.073877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.680964, 16.294659, 19.031076>,  <14.699015, 16.532597, 19.005396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.680964, 16.294659, 19.031076>,  <14.650881, 15.898095, 19.073877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.680964, 16.294659, 19.031076> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107860, 0.098590, 0.989266,
		0.991317, -0.085944, -0.099519,
		0.075210, 0.991410, -0.107004,
		14.703527, 16.592081, 18.998976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.261022, 16.174650, 19.433264>,  <14.650881, 15.898095, 19.073877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.261022, 16.174650, 19.433264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.994296, 16.471031, 19.401400>,  <14.834261, 16.648861, 19.382280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.994296, 16.471031, 19.401400>,  <15.261022, 16.174650, 19.433264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.994296, 16.471031, 19.401400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018593, 0.123405, 0.992182,
		0.744991, 0.660121, -0.096065,
		-0.666815, 0.740953, -0.079662,
		14.794251, 16.693317, 19.377501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.599939, 16.757778, 19.663086>,  <15.261022, 16.174650, 19.433264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.599939, 16.757778, 19.663086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.204236, 16.799271, 19.704283>,  <14.966814, 16.824167, 19.729000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.204236, 16.799271, 19.704283>,  <15.599939, 16.757778, 19.663086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.204236, 16.799271, 19.704283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121266, 0.188961, 0.974468,
		0.081624, 0.976490, -0.199510,
		-0.989258, 0.103733, 0.102991,
		14.907458, 16.830391, 19.735180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.551186, 17.276108, 20.189890>,  <15.599939, 16.757778, 19.663086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.551186, 17.276108, 20.189890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.187541, 17.111481, 20.164194>,  <14.969354, 17.012705, 20.148777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.187541, 17.111481, 20.164194>,  <15.551186, 17.276108, 20.189890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.187541, 17.111481, 20.164194> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258507, 0.436507, 0.861763,
		-0.326632, 0.800046, -0.503227,
		-0.909113, -0.411567, -0.064240,
		14.914807, 16.988010, 20.144922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.044777, 17.789667, 20.162996>,  <15.551186, 17.276108, 20.189890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.044777, 17.789667, 20.162996> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.900954, 17.449341, 20.316271>,  <14.814660, 17.245146, 20.408236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.900954, 17.449341, 20.316271>,  <15.044777, 17.789667, 20.162996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.900954, 17.449341, 20.316271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136462, 0.454178, 0.880398,
		-0.923091, 0.264264, -0.279407,
		-0.359558, -0.850815, 0.383186,
		14.793087, 17.194096, 20.431227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819894, 18.073641, 20.763552>,  <15.044777, 17.789667, 20.162996>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819894, 18.073641, 20.763552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.763650, 17.681526, 20.819073>,  <14.729903, 17.446257, 20.852385>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.763650, 17.681526, 20.819073>,  <14.819894, 18.073641, 20.763552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.763650, 17.681526, 20.819073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124305, 0.156564, 0.979814,
		-0.982231, 0.120518, -0.143869,
		-0.140610, -0.980287, 0.138801,
		14.721467, 17.387440, 20.860712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.185777, 17.991156, 21.089138>,  <14.819894, 18.073641, 20.763552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.185777, 17.991156, 21.089138> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.409904, 17.667244, 21.158764>,  <14.544380, 17.472897, 21.200539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.409904, 17.667244, 21.158764>,  <14.185777, 17.991156, 21.089138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.409904, 17.667244, 21.158764> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048859, 0.177473, 0.982912,
		-0.826836, -0.559248, 0.059876,
		0.560318, -0.809781, 0.174065,
		14.577999, 17.424309, 21.210983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.944830, 17.812878, 21.668451>,  <14.185777, 17.991156, 21.089138>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.944830, 17.812878, 21.668451> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.279691, 17.594341, 21.657953>,  <14.480607, 17.463219, 21.651655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.279691, 17.594341, 21.657953>,  <13.944830, 17.812878, 21.668451>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.279691, 17.594341, 21.657953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012001, -0.029624, 0.999489,
		-0.546841, -0.837038, -0.018244,
		0.837151, -0.546342, -0.026245,
		14.530836, 17.430439, 21.650080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.802175, 17.335262, 22.069595>,  <13.944830, 17.812878, 21.668451>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.802175, 17.335262, 22.069595> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.200336, 17.371811, 22.058102>,  <14.439232, 17.393740, 22.051205>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.200336, 17.371811, 22.058102>,  <13.802175, 17.335262, 22.069595>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.200336, 17.371811, 22.058102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008511, 0.214447, 0.976698,
		0.095403, -0.972452, 0.212683,
		0.995402, 0.091370, -0.028736,
		14.498956, 17.399221, 22.049480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023930, 17.042780, 22.655628>,  <13.802175, 17.335262, 22.069595>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023930, 17.042780, 22.655628> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.328176, 17.287140, 22.567749>,  <14.510723, 17.433756, 22.515020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.328176, 17.287140, 22.567749>,  <14.023930, 17.042780, 22.655628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328176, 17.287140, 22.567749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138991, 0.483804, 0.864069,
		0.634151, -0.626687, 0.452898,
		0.760614, 0.610899, -0.219701,
		14.556360, 17.470409, 22.501839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.406182, 17.032457, 23.269535>,  <14.023930, 17.042780, 22.655628>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.406182, 17.032457, 23.269535> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.531291, 17.353115, 23.065754>,  <14.606357, 17.545509, 22.943485>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.531291, 17.353115, 23.065754>,  <14.406182, 17.032457, 23.269535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.531291, 17.353115, 23.065754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103924, 0.562026, 0.820565,
		0.944126, -0.203706, 0.259096,
		0.312772, 0.801643, -0.509453,
		14.625123, 17.593609, 22.912918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.945823, 17.291166, 23.695927>,  <14.406182, 17.032457, 23.269535>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.945823, 17.291166, 23.695927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789874, 17.582905, 23.471050>,  <14.696305, 17.757948, 23.336124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.789874, 17.582905, 23.471050>,  <14.945823, 17.291166, 23.695927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.789874, 17.582905, 23.471050> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227015, 0.515535, 0.826249,
		0.892449, 0.449756, -0.035420,
		-0.389871, 0.729344, -0.562190,
		14.672913, 17.801708, 23.302393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.248132, 17.996958, 23.836557>,  <14.945823, 17.291166, 23.695927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.248132, 17.996958, 23.836557> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.865767, 18.034145, 23.725136>,  <14.636349, 18.056458, 23.658283>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.865767, 18.034145, 23.725136>,  <15.248132, 17.996958, 23.836557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.865767, 18.034145, 23.725136> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152953, 0.652106, 0.742538,
		0.250680, 0.752406, -0.609135,
		-0.955911, 0.092970, -0.278553,
		14.578995, 18.062037, 23.641569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.368593, 18.756586, 23.641171>,  <15.248132, 17.996958, 23.836557>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.368593, 18.756586, 23.641171> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.279159, 18.694550, 24.026077>,  <15.225497, 18.657328, 24.257021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.279159, 18.694550, 24.026077>,  <15.368593, 18.756586, 23.641171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.279159, 18.694550, 24.026077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668685, 0.693874, 0.267205,
		-0.709132, 0.703197, -0.051435,
		-0.223588, -0.155090, 0.962266,
		15.212082, 18.648022, 24.314756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.942021, 18.481070, 23.149128>,  <15.368593, 18.756586, 23.641171>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.942021, 18.481070, 23.149128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.262260, 18.330795, 23.335848>,  <16.454403, 18.240631, 23.447880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.262260, 18.330795, 23.335848>,  <15.942021, 18.481070, 23.149128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.262260, 18.330795, 23.335848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425764, -0.191500, -0.884338,
		0.421627, 0.906745, 0.006640,
		0.800597, -0.375688, 0.466801,
		16.502439, 18.218088, 23.475887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.379656, 18.845545, 22.822132>,  <15.942021, 18.481070, 23.149128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.379656, 18.845545, 22.822132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.550034, 18.526783, 22.993484>,  <16.652260, 18.335526, 23.096296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.550034, 18.526783, 22.993484>,  <16.379656, 18.845545, 22.822132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.550034, 18.526783, 22.993484> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508159, -0.181026, -0.842024,
		0.748563, 0.576342, 0.327848,
		0.425944, -0.796906, 0.428382,
		16.677816, 18.287710, 23.122000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.035385, 18.952288, 22.745790>,  <16.379656, 18.845545, 22.822132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.035385, 18.952288, 22.745790> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.002571, 18.557587, 22.801773>,  <16.982883, 18.320766, 22.835363>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.002571, 18.557587, 22.801773>,  <17.035385, 18.952288, 22.745790>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.002571, 18.557587, 22.801773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544591, -0.161994, -0.822909,
		0.834681, 0.008714, 0.550665,
		-0.082034, -0.986753, 0.139959,
		16.977961, 18.261560, 22.843761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.731586, 18.763880, 22.566250>,  <17.035385, 18.952288, 22.745790>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.731586, 18.763880, 22.566250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.495865, 18.440811, 22.558380>,  <17.354431, 18.246969, 22.553658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.495865, 18.440811, 22.558380>,  <17.731586, 18.763880, 22.566250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.495865, 18.440811, 22.558380> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504238, -0.348664, -0.790049,
		0.631240, -0.475500, 0.612728,
		-0.589305, -0.807671, -0.019674,
		17.319073, 18.198509, 22.552479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.170967, 18.198919, 22.509598>,  <17.731586, 18.763880, 22.566250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.170967, 18.198919, 22.509598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.829086, 18.025040, 22.396093>,  <17.623959, 17.920712, 22.327991>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.829086, 18.025040, 22.396093>,  <18.170967, 18.198919, 22.509598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.829086, 18.025040, 22.396093> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514913, -0.640478, -0.569783,
		0.065944, -0.633106, 0.771251,
		-0.854703, -0.434701, -0.283759,
		17.572676, 17.894630, 22.310966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407257, 17.537510, 22.379538>,  <18.170967, 18.198919, 22.509598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407257, 17.537510, 22.379538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.053310, 17.574448, 22.196896>,  <17.840942, 17.596609, 22.087311>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.053310, 17.574448, 22.196896>,  <18.407257, 17.537510, 22.379538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.053310, 17.574448, 22.196896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358744, -0.490204, -0.794357,
		-0.297180, -0.866702, 0.400638,
		-0.884865, 0.092341, -0.456603,
		17.787851, 17.602150, 22.059914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.136955, 16.915201, 22.198223>,  <18.407257, 17.537510, 22.379538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.136955, 16.915201, 22.198223> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.971947, 17.156918, 21.925560>,  <17.872942, 17.301947, 21.761961>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.971947, 17.156918, 21.925560>,  <18.136955, 16.915201, 22.198223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.971947, 17.156918, 21.925560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358715, -0.580078, -0.731323,
		-0.837348, -0.546206, 0.022525,
		-0.412519, 0.604291, -0.681660,
		17.848190, 17.338205, 21.721062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.859678, 16.467030, 21.731207>,  <18.136955, 16.915201, 22.198223>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.859678, 16.467030, 21.731207> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.842457, 16.801167, 21.511990>,  <17.832125, 17.001648, 21.380459>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.842457, 16.801167, 21.511990>,  <17.859678, 16.467030, 21.731207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.842457, 16.801167, 21.511990> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329129, -0.506071, -0.797224,
		-0.943303, -0.214699, -0.253147,
		-0.043053, 0.835342, -0.548042,
		17.829540, 17.051769, 21.347576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.830385, 16.347391, 20.978064>,  <17.859678, 16.467030, 21.731207>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.830385, 16.347391, 20.978064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.925602, 16.733391, 20.934042>,  <17.982733, 16.964991, 20.907629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.925602, 16.733391, 20.934042>,  <17.830385, 16.347391, 20.978064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.925602, 16.733391, 20.934042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265809, -0.173711, -0.948246,
		-0.934174, 0.196470, -0.297856,
		0.238043, 0.964999, -0.110053,
		17.997015, 17.022890, 20.901026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.498148, 16.528105, 20.332096>,  <17.830385, 16.347391, 20.978064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.498148, 16.528105, 20.332096> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.778282, 16.804707, 20.402920>,  <17.946363, 16.970667, 20.445414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.778282, 16.804707, 20.402920>,  <17.498148, 16.528105, 20.332096>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.778282, 16.804707, 20.402920> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169577, 0.079769, -0.982283,
		-0.693378, 0.717954, -0.061398,
		0.700336, 0.691505, 0.177058,
		17.988382, 17.012157, 20.456038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.351606, 17.000826, 19.826704>,  <17.498148, 16.528105, 20.332096>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.351606, 17.000826, 19.826704> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.730022, 17.061123, 19.941442>,  <17.957073, 17.097301, 20.010286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.730022, 17.061123, 19.941442>,  <17.351606, 17.000826, 19.826704>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.730022, 17.061123, 19.941442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274835, 0.095701, -0.956717,
		-0.171669, 0.983930, 0.049108,
		0.946042, 0.150742, 0.286847,
		18.013836, 17.106346, 20.027496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.614285, 17.601917, 19.471905>,  <17.351606, 17.000826, 19.826704>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.614285, 17.601917, 19.471905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.953285, 17.413845, 19.570429>,  <18.156687, 17.301001, 19.629543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.953285, 17.413845, 19.570429>,  <17.614285, 17.601917, 19.471905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.953285, 17.413845, 19.570429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351025, 0.148397, -0.924532,
		0.398146, 0.870004, 0.290813,
		0.847503, -0.470182, 0.246309,
		18.207537, 17.272791, 19.644321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.178947, 17.991009, 19.134850>,  <17.614285, 17.601917, 19.471905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.178947, 17.991009, 19.134850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.321075, 17.631649, 19.238094>,  <18.406353, 17.416033, 19.300041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.321075, 17.631649, 19.238094>,  <18.178947, 17.991009, 19.134850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.321075, 17.631649, 19.238094> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473906, -0.064872, -0.878183,
		0.805704, 0.434358, 0.402707,
		0.355322, -0.898401, 0.258112,
		18.427671, 17.362129, 19.315529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.931568, 17.879232, 19.193348>,  <18.178947, 17.991009, 19.134850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.931568, 17.879232, 19.193348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.793270, 17.514629, 19.104252>,  <18.710291, 17.295868, 19.050795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.793270, 17.514629, 19.104252>,  <18.931568, 17.879232, 19.193348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.793270, 17.514629, 19.104252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608654, -0.037198, -0.792564,
		0.714143, -0.409597, 0.567653,
		-0.345747, -0.911508, -0.222738,
		18.689547, 17.241177, 19.037430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.555132, 18.301090, 19.351435>,  <18.931568, 17.879232, 19.193348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.555132, 18.301090, 19.351435> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.659767, 18.682701, 19.292921>,  <19.722549, 18.911669, 19.257812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.659767, 18.682701, 19.292921>,  <19.555132, 18.301090, 19.351435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.659767, 18.682701, 19.292921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046975, 0.163966, 0.985347,
		0.964035, -0.250886, 0.087707,
		0.261590, 0.954029, -0.146283,
		19.738245, 18.968910, 19.249037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.097916, 18.437490, 19.812544>,  <19.555132, 18.301090, 19.351435>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.097916, 18.437490, 19.812544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.894886, 18.771992, 19.729548>,  <19.773067, 18.972692, 19.679750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.894886, 18.771992, 19.729548>,  <20.097916, 18.437490, 19.812544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.894886, 18.771992, 19.729548> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144633, 0.154702, 0.977317,
		0.849381, 0.526071, 0.042427,
		-0.507575, 0.836251, -0.207489,
		19.742613, 19.022867, 19.667301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.299036, 18.884047, 20.317705>,  <20.097916, 18.437490, 19.812544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.299036, 18.884047, 20.317705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.990940, 19.097927, 20.178665>,  <19.806084, 19.226255, 20.095242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.990940, 19.097927, 20.178665>,  <20.299036, 18.884047, 20.317705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.990940, 19.097927, 20.178665> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094288, 0.443574, 0.891264,
		0.630748, 0.719260, -0.291241,
		-0.770238, 0.534703, -0.347601,
		19.759869, 19.258339, 20.074385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.378353, 19.574713, 20.577190>,  <20.299036, 18.884047, 20.317705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.378353, 19.574713, 20.577190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992046, 19.550003, 20.476410>,  <19.760263, 19.535177, 20.415941>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.992046, 19.550003, 20.476410>,  <20.378353, 19.574713, 20.577190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.992046, 19.550003, 20.476410> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238149, 0.596243, 0.766668,
		0.102865, 0.800424, -0.590542,
		-0.965766, -0.061774, -0.251953,
		19.702316, 19.531471, 20.400824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.118956, 20.205114, 20.679525>,  <20.378353, 19.574713, 20.577190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.118956, 20.205114, 20.679525> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.804317, 19.959202, 20.702555>,  <19.615536, 19.811655, 20.716373>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.804317, 19.959202, 20.702555>,  <20.118956, 20.205114, 20.679525>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.804317, 19.959202, 20.702555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339812, 0.508852, 0.790947,
		-0.515557, 0.602588, -0.609170,
		-0.786593, -0.614781, 0.057575,
		19.568340, 19.774767, 20.719828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.495560, 20.579601, 20.705275>,  <20.118956, 20.205114, 20.679525>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.495560, 20.579601, 20.705275> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.403976, 20.233936, 20.884520>,  <19.349028, 20.026537, 20.992065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.403976, 20.233936, 20.884520>,  <19.495560, 20.579601, 20.705275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.403976, 20.233936, 20.884520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510602, 0.498542, 0.700529,
		-0.828772, -0.068415, -0.555388,
		-0.228957, -0.864161, 0.448111,
		19.335289, 19.974688, 21.018953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.934105, 20.688057, 21.054457>,  <19.495560, 20.579601, 20.705275>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.934105, 20.688057, 21.054457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.034401, 20.332897, 21.208736>,  <19.094580, 20.119802, 21.301304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.034401, 20.332897, 21.208736>,  <18.934105, 20.688057, 21.054457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.034401, 20.332897, 21.208736> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209377, 0.339257, 0.917097,
		-0.945140, -0.310711, -0.100840,
		0.250741, -0.887899, 0.385701,
		19.109623, 20.066528, 21.324448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.446211, 21.262556, 20.778831>,  <18.934105, 20.688057, 21.054457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.446211, 21.262556, 20.778831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.719101, 21.545059, 20.854481>,  <18.882835, 21.714561, 20.899870>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.719101, 21.545059, 20.854481>,  <18.446211, 21.262556, 20.778831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.719101, 21.545059, 20.854481> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295782, -0.030042, -0.954783,
		-0.668640, 0.707318, -0.229394,
		0.682227, 0.706257, 0.189124,
		18.923769, 21.756937, 20.911219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375456, 21.796988, 20.278296>,  <18.446211, 21.262556, 20.778831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375456, 21.796988, 20.278296> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.747364, 21.832699, 20.421158>,  <18.970509, 21.854126, 20.506876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.747364, 21.832699, 20.421158>,  <18.375456, 21.796988, 20.278296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.747364, 21.832699, 20.421158> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341138, 0.155785, -0.927014,
		-0.138403, 0.983748, 0.114387,
		0.929768, 0.089279, 0.357155,
		19.026295, 21.859482, 20.528305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.635462, 22.483698, 20.134396>,  <18.375456, 21.796988, 20.278296>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.635462, 22.483698, 20.134396> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.966057, 22.265388, 20.189604>,  <19.164413, 22.134403, 20.222729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.966057, 22.265388, 20.189604>,  <18.635462, 22.483698, 20.134396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.966057, 22.265388, 20.189604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263311, 0.158078, -0.951672,
		0.497579, 0.822887, 0.274358,
		0.826488, -0.545774, 0.138019,
		19.214003, 22.101656, 20.231009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.196949, 22.900709, 19.928896>,  <18.635462, 22.483698, 20.134396>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.196949, 22.900709, 19.928896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.322845, 22.522659, 19.893848>,  <19.398382, 22.295830, 19.872820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.322845, 22.522659, 19.893848>,  <19.196949, 22.900709, 19.928896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.322845, 22.522659, 19.893848> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225018, 0.163973, -0.960458,
		0.922120, 0.282579, 0.264279,
		0.314740, -0.945125, -0.087618,
		19.417267, 22.239122, 19.867563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.688271, 22.963007, 19.493759>,  <19.196949, 22.900709, 19.928896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.688271, 22.963007, 19.493759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.650272, 22.564823, 19.491308>,  <19.627474, 22.325912, 19.489838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<19.650272, 22.564823, 19.491308>,  <19.688271, 22.963007, 19.493759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.650272, 22.564823, 19.491308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370523, -0.029644, -0.928350,
		0.923953, -0.090458, 0.371657,
		-0.094994, -0.995459, -0.006127,
		19.621775, 22.266186, 19.489470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.324650, 22.690584, 19.225958>,  <19.688271, 22.963007, 19.493759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.324650, 22.690584, 19.225958> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.059544, 22.396038, 19.171549>,  <19.900480, 22.219311, 19.138903>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.059544, 22.396038, 19.171549>,  <20.324650, 22.690584, 19.225958>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.059544, 22.396038, 19.171549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421747, -0.216971, -0.880371,
		0.618764, -0.640848, 0.454362,
		-0.662767, -0.736367, -0.136022,
		19.860714, 22.175127, 19.130741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731501, 22.219494, 19.043036>,  <20.324650, 22.690584, 19.225958>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731501, 22.219494, 19.043036> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.369987, 22.109470, 18.911873>,  <20.153080, 22.043457, 18.833176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<20.369987, 22.109470, 18.911873>,  <20.731501, 22.219494, 19.043036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369987, 22.109470, 18.911873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423549, -0.464644, -0.777633,
		0.061534, -0.841694, 0.536437,
		-0.903781, -0.275058, -0.327907,
		20.098854, 22.026953, 18.813501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<14.295766, 21.355110, 22.560139> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.169311, 20.977917, 22.518501>,  <14.093437, 20.751600, 22.493519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.169311, 20.977917, 22.518501>,  <14.295766, 21.355110, 22.560139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.169311, 20.977917, 22.518501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273551, 0.014456, -0.961749,
		0.908419, -0.332521, 0.253385,
		-0.316139, -0.942985, -0.104093,
		14.074469, 20.695021, 22.487274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.811280, 21.080450, 22.116302>,  <14.295766, 21.355110, 22.560139>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.811280, 21.080450, 22.116302> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.517499, 20.809849, 22.094675>,  <14.341230, 20.647488, 22.081699>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.517499, 20.809849, 22.094675>,  <14.811280, 21.080450, 22.116302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.517499, 20.809849, 22.094675> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268247, -0.216197, -0.938777,
		0.623395, -0.703991, 0.340256,
		-0.734453, -0.676502, -0.054068,
		14.297163, 20.606897, 22.078455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.161401, 20.412457, 21.833708>,  <14.811280, 21.080450, 22.116302>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.161401, 20.412457, 21.833708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.773868, 20.372620, 21.742983>,  <14.541348, 20.348717, 21.688549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.773868, 20.372620, 21.742983>,  <15.161401, 20.412457, 21.833708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.773868, 20.372620, 21.742983> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245928, -0.276931, -0.928886,
		0.029701, -0.955714, 0.292793,
		-0.968833, -0.099595, -0.226811,
		14.483217, 20.342741, 21.674940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.172433, 19.895885, 21.360460>,  <15.161401, 20.412457, 21.833708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.172433, 19.895885, 21.360460> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.802815, 20.041214, 21.312891>,  <14.581045, 20.128410, 21.284349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.802815, 20.041214, 21.312891>,  <15.172433, 19.895885, 21.360460>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.802815, 20.041214, 21.312891> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011372, -0.337068, -0.941411,
		-0.382122, -0.868551, 0.315597,
		-0.924042, 0.363323, -0.118924,
		14.525602, 20.150209, 21.277214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896365, 19.315752, 21.095179>,  <15.172433, 19.895885, 21.360460>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896365, 19.315752, 21.095179> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.721612, 19.663094, 21.001289>,  <14.616760, 19.871498, 20.944956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.721612, 19.663094, 21.001289>,  <14.896365, 19.315752, 21.095179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.721612, 19.663094, 21.001289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116536, -0.204103, -0.971988,
		-0.891937, -0.451999, -0.012025,
		-0.436883, 0.868354, -0.234721,
		14.590547, 19.923599, 20.930874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.488189, 19.179688, 20.564663>,  <14.896365, 19.315752, 21.095179>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.488189, 19.179688, 20.564663> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.507537, 19.578884, 20.548309>,  <14.519146, 19.818403, 20.538498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.507537, 19.578884, 20.548309>,  <14.488189, 19.179688, 20.564663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.507537, 19.578884, 20.548309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030091, -0.039456, -0.998768,
		-0.998376, 0.049541, 0.028122,
		0.048370, 0.997992, -0.040883,
		14.522048, 19.878283, 20.536045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.050042, 19.365797, 20.037270>,  <14.488189, 19.179688, 20.564663>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.050042, 19.365797, 20.037270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.255349, 19.708015, 20.064388>,  <14.378533, 19.913347, 20.080660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.255349, 19.708015, 20.064388>,  <14.050042, 19.365797, 20.037270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.255349, 19.708015, 20.064388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136618, 0.159439, -0.977709,
		-0.847285, 0.492564, 0.198718,
		0.513268, 0.855546, 0.067797,
		14.409329, 19.964680, 20.084728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.767200, 19.858725, 19.648983>,  <14.050042, 19.365797, 20.037270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.767200, 19.858725, 19.648983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.139152, 20.000957, 19.686701>,  <14.362322, 20.086296, 19.709332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.139152, 20.000957, 19.686701>,  <13.767200, 19.858725, 19.648983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.139152, 20.000957, 19.686701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039565, 0.158164, -0.986620,
		-0.365736, 0.921166, 0.133004,
		0.929877, 0.355580, 0.094292,
		14.418115, 20.107632, 19.714989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.853038, 20.540537, 19.351341>,  <13.767200, 19.858725, 19.648983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.853038, 20.540537, 19.351341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.235024, 20.421856, 19.352297>,  <14.464216, 20.350647, 19.352871>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.235024, 20.421856, 19.352297>,  <13.853038, 20.540537, 19.351341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.235024, 20.421856, 19.352297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071376, 0.221898, -0.972454,
		0.287999, 0.928832, 0.233083,
		0.954967, -0.296703, 0.002390,
		14.521515, 20.332846, 19.353014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.103424, 20.898699, 18.887156>,  <13.853038, 20.540537, 19.351341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.103424, 20.898699, 18.887156> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.396527, 20.629192, 18.925322>,  <14.572390, 20.467487, 18.948221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.396527, 20.629192, 18.925322>,  <14.103424, 20.898699, 18.887156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.396527, 20.629192, 18.925322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210868, 0.091511, -0.973222,
		0.646993, 0.733255, 0.209132,
		0.732758, -0.673767, 0.095413,
		14.616355, 20.427063, 18.953945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.717978, 21.153263, 18.528015>,  <14.103424, 20.898699, 18.887156>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.717978, 21.153263, 18.528015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.738786, 20.754280, 18.547514>,  <14.751270, 20.514891, 18.559214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<14.738786, 20.754280, 18.547514>,  <14.717978, 21.153263, 18.528015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.738786, 20.754280, 18.547514> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069772, -0.045064, -0.996545,
		0.996206, 0.055242, 0.067250,
		0.052021, -0.997456, 0.048748,
		14.754392, 20.455044, 18.562138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.237604, 21.083311, 17.946478>,  <14.717978, 21.153263, 18.528015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.237604, 21.083311, 17.946478> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.056880, 20.732979, 18.014349>,  <14.948445, 20.522779, 18.055071>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.056880, 20.732979, 18.014349>,  <15.237604, 21.083311, 17.946478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.056880, 20.732979, 18.014349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045502, -0.167326, -0.984851,
		0.890953, -0.452687, 0.035748,
		-0.451810, -0.875829, 0.169678,
		14.921337, 20.470230, 18.065252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.047905, 21.150454, 18.013903>,  <15.237604, 21.083311, 17.946478>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.047905, 21.150454, 18.013903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.208557, 21.513554, 17.965427>,  <16.304949, 21.731413, 17.936342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.208557, 21.513554, 17.965427>,  <16.047905, 21.150454, 18.013903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208557, 21.513554, 17.965427> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210025, 0.220098, 0.952600,
		0.891395, -0.357139, 0.279048,
		0.401628, 0.907749, -0.121186,
		16.329046, 21.785879, 17.929071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.594484, 21.218529, 18.554787>,  <16.047905, 21.150454, 18.013903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.594484, 21.218529, 18.554787> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.520668, 21.593285, 18.436003>,  <16.476377, 21.818138, 18.364733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.520668, 21.593285, 18.436003>,  <16.594484, 21.218529, 18.554787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.520668, 21.593285, 18.436003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011759, 0.304234, 0.952525,
		0.982754, 0.172288, -0.067160,
		-0.184541, 0.936888, -0.296961,
		16.465305, 21.874352, 18.346914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.119841, 21.627211, 18.974806>,  <16.594484, 21.218529, 18.554787>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.119841, 21.627211, 18.974806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.852966, 21.893791, 18.841717>,  <16.692842, 22.053740, 18.761864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.852966, 21.893791, 18.841717>,  <17.119841, 21.627211, 18.974806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.852966, 21.893791, 18.841717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206474, 0.594630, 0.777035,
		0.715704, 0.449727, -0.534334,
		-0.667185, 0.666454, -0.332722,
		16.652811, 22.093727, 18.741899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.420855, 22.321671, 19.049576>,  <17.119841, 21.627211, 18.974806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.420855, 22.321671, 19.049576> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.021942, 22.350243, 19.056847>,  <16.782595, 22.367386, 19.061209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.021942, 22.350243, 19.056847>,  <17.420855, 22.321671, 19.049576>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.021942, 22.350243, 19.056847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058955, 0.625009, 0.778388,
		0.044241, 0.777343, -0.627520,
		-0.997280, 0.071432, 0.018178,
		16.722757, 22.371672, 19.062300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.310961, 22.848471, 19.666466>,  <17.420855, 22.321671, 19.049576>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.310961, 22.848471, 19.666466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.931854, 22.770748, 19.565287>,  <16.704390, 22.724113, 19.504580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.931854, 22.770748, 19.565287>,  <17.310961, 22.848471, 19.666466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.931854, 22.770748, 19.565287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318932, 0.566262, 0.760020,
		-0.004444, 0.800994, -0.598655,
		-0.947767, -0.194307, -0.252946,
		16.647524, 22.712456, 19.489403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.036905, 23.496758, 19.500973>,  <17.310961, 22.848471, 19.666466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.036905, 23.496758, 19.500973> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.767471, 23.235130, 19.638653>,  <16.605810, 23.078154, 19.721260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.767471, 23.235130, 19.638653>,  <17.036905, 23.496758, 19.500973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.767471, 23.235130, 19.638653> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054826, 0.508631, 0.859237,
		-0.737073, 0.559899, -0.378467,
		-0.673586, -0.654070, 0.344201,
		16.565395, 23.038910, 19.741913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.420357, 23.897131, 19.778181>,  <17.036905, 23.496758, 19.500973>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.420357, 23.897131, 19.778181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.428299, 23.531330, 19.939819>,  <16.433064, 23.311850, 20.036802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.428299, 23.531330, 19.939819>,  <16.420357, 23.897131, 19.778181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.428299, 23.531330, 19.939819> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073709, 0.401738, 0.912783,
		-0.997082, -0.047908, -0.059431,
		0.019853, -0.914501, 0.404097,
		16.434256, 23.256979, 20.061049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.025797, 24.009418, 20.417221>,  <16.420357, 23.897131, 19.778181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.025797, 24.009418, 20.417221> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.238377, 23.677094, 20.483324>,  <16.365925, 23.477699, 20.522985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.238377, 23.677094, 20.483324>,  <16.025797, 24.009418, 20.417221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238377, 23.677094, 20.483324> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020879, 0.207879, 0.977932,
		-0.846832, -0.516272, 0.127824,
		0.531451, -0.830813, 0.165260,
		16.397812, 23.427849, 20.532902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.595228, 23.789715, 20.961950>,  <16.025797, 24.009418, 20.417221>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.595228, 23.789715, 20.961950> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.963210, 23.632912, 20.963219>,  <16.184000, 23.538830, 20.963980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<15.963210, 23.632912, 20.963219>,  <15.595228, 23.789715, 20.961950>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.963210, 23.632912, 20.963219> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168296, 0.402234, 0.899935,
		-0.354059, -0.827367, 0.436012,
		0.919956, -0.392009, 0.003172,
		16.239197, 23.515308, 20.964170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.611403, 23.436300, 21.557514>,  <15.595228, 23.789715, 20.961950>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.611403, 23.436300, 21.557514> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.006310, 23.468468, 21.502611>,  <16.243254, 23.487768, 21.469669>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.006310, 23.468468, 21.502611>,  <15.611403, 23.436300, 21.557514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.006310, 23.468468, 21.502611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135265, 0.029758, 0.990362,
		0.083729, -0.996317, 0.018501,
		0.987265, 0.080420, -0.137259,
		16.302488, 23.492594, 21.461433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.947575, 22.943514, 22.084545>,  <15.611403, 23.436300, 21.557514>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.947575, 22.943514, 22.084545> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.213268, 23.222050, 21.975801>,  <16.372684, 23.389172, 21.910555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.213268, 23.222050, 21.975801>,  <15.947575, 22.943514, 22.084545>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.213268, 23.222050, 21.975801> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253335, 0.132462, 0.958267,
		0.703289, -0.705384, -0.088421,
		0.664233, 0.696339, -0.271857,
		16.412539, 23.430952, 21.894245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.494736, 22.822529, 22.536383>,  <15.947575, 22.943514, 22.084545>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.494736, 22.822529, 22.536383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.566914, 23.189617, 22.394835>,  <16.610220, 23.409870, 22.309906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.566914, 23.189617, 22.394835>,  <16.494736, 22.822529, 22.536383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.566914, 23.189617, 22.394835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241345, 0.307467, 0.920444,
		0.953516, -0.251495, -0.166006,
		0.180445, 0.917722, -0.353872,
		16.621048, 23.464933, 22.288673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.167244, 23.111521, 22.869133>,  <16.494736, 22.822529, 22.536383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.167244, 23.111521, 22.869133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.944553, 23.436749, 22.801043>,  <16.810940, 23.631886, 22.760189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<16.944553, 23.436749, 22.801043>,  <17.167244, 23.111521, 22.869133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.944553, 23.436749, 22.801043> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195174, 0.327210, 0.924576,
		0.807443, 0.481511, -0.340855,
		-0.556725, 0.813069, -0.170225,
		16.777536, 23.680670, 22.749975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.638126, 23.613546, 23.230064>,  <17.167244, 23.111521, 22.869133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.638126, 23.613546, 23.230064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.272438, 23.765717, 23.174232>,  <17.053026, 23.857018, 23.140734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<17.272438, 23.765717, 23.174232>,  <17.638126, 23.613546, 23.230064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.272438, 23.765717, 23.174232> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056722, 0.461195, 0.885484,
		0.401232, 0.801609, -0.443211,
		-0.914219, 0.380424, -0.139578,
		16.998173, 23.879845, 23.132359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.240219, 24.100853, 23.013151>,  <17.638126, 23.613546, 23.230064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.240219, 24.100853, 23.013151> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.276295, 23.741119, 23.184298>,  <18.297941, 23.525280, 23.286985>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.276295, 23.741119, 23.184298>,  <18.240219, 24.100853, 23.013151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.276295, 23.741119, 23.184298> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461151, -0.343073, -0.818316,
		0.882726, 0.271115, 0.383785,
		0.090191, -0.899332, 0.427864,
		18.303352, 23.471319, 23.312656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.857466, 23.874275, 22.794516>,  <18.240219, 24.100853, 23.013151>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.857466, 23.874275, 22.794516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.679550, 23.535320, 22.910511>,  <18.572800, 23.331947, 22.980108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.679550, 23.535320, 22.910511>,  <18.857466, 23.874275, 22.794516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.679550, 23.535320, 22.910511> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363934, -0.466846, -0.805982,
		0.818361, -0.252955, 0.516042,
		-0.444790, -0.847389, 0.289990,
		18.546114, 23.281103, 22.997507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.411068, 23.316851, 22.749592>,  <18.857466, 23.874275, 22.794516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.411068, 23.316851, 22.749592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.059006, 23.127380, 22.737221>,  <18.847769, 23.013699, 22.729797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.059006, 23.127380, 22.737221>,  <19.411068, 23.316851, 22.749592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.059006, 23.127380, 22.737221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318048, -0.540102, -0.779188,
		0.352379, -0.695644, 0.626026,
		-0.880156, -0.473676, -0.030928,
		18.794958, 22.985277, 22.727942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.597742, 22.698143, 22.650116>,  <19.411068, 23.316851, 22.749592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.597742, 22.698143, 22.650116> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.212486, 22.666462, 22.547285>,  <18.981333, 22.647453, 22.485586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.212486, 22.666462, 22.547285>,  <19.597742, 22.698143, 22.650116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.212486, 22.666462, 22.547285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250192, -0.614819, -0.747931,
		-0.098818, -0.784681, 0.611972,
		-0.963140, -0.079202, -0.257076,
		18.923544, 22.642702, 22.470161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.352201, 21.961212, 22.600712>,  <19.597742, 22.698143, 22.650116>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.352201, 21.961212, 22.600712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115902, 22.189468, 22.372541>,  <18.974123, 22.326422, 22.235640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<19.115902, 22.189468, 22.372541>,  <19.352201, 21.961212, 22.600712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.115902, 22.189468, 22.372541> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195494, -0.584677, -0.787360,
		-0.782815, -0.576646, 0.233839,
		-0.590748, 0.570642, -0.570424,
		18.938677, 22.360661, 22.201414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.042923, 21.409534, 22.167128>,  <19.352201, 21.961212, 22.600712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.042923, 21.409534, 22.167128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.975025, 21.755939, 21.978998>,  <18.934286, 21.963783, 21.866119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.975025, 21.755939, 21.978998>,  <19.042923, 21.409534, 22.167128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.975025, 21.755939, 21.978998> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305843, -0.407393, -0.860518,
		-0.936828, -0.289914, -0.195711,
		-0.169745, 0.866015, -0.470325,
		18.924101, 22.015743, 21.837900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593910, 21.241423, 21.491129>,  <19.042923, 21.409534, 22.167128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593910, 21.241423, 21.491129> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.778473, 21.591618, 21.433687>,  <18.889212, 21.801735, 21.399223>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.778473, 21.591618, 21.433687>,  <18.593910, 21.241423, 21.491129>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.778473, 21.591618, 21.433687> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173723, -0.247888, -0.953085,
		-0.870013, 0.414814, -0.266470,
		0.461408, 0.875489, -0.143603,
		18.916895, 21.854265, 21.390606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.343319, 20.499918, 21.545231>,  <18.593910, 21.241423, 21.491129>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.343319, 20.499918, 21.545231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.627350, 20.237484, 21.647476>,  <18.797770, 20.080023, 21.708824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.627350, 20.237484, 21.647476>,  <18.343319, 20.499918, 21.545231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.627350, 20.237484, 21.647476> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260449, 0.092543, 0.961042,
		-0.654183, -0.748989, -0.105165,
		0.710078, -0.656087, 0.255613,
		18.840374, 20.040657, 21.724159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.001554, 19.938148, 21.935575>,  <18.343319, 20.499918, 21.545231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.001554, 19.938148, 21.935575> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.386864, 19.950211, 22.042307>,  <18.618050, 19.957447, 22.106346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.386864, 19.950211, 22.042307>,  <18.001554, 19.938148, 21.935575>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.386864, 19.950211, 22.042307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268153, 0.160521, 0.949909,
		-0.014189, -0.986572, 0.162712,
		0.963271, 0.030153, 0.266830,
		18.675846, 19.959257, 22.122356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095249, 19.529230, 22.563902>,  <18.001554, 19.938148, 21.935575>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095249, 19.529230, 22.563902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.409233, 19.776997, 22.558744>,  <18.597624, 19.925655, 22.555649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.409233, 19.776997, 22.558744>,  <18.095249, 19.529230, 22.563902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409233, 19.776997, 22.558744> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052253, -0.045450, 0.997599,
		0.617342, -0.783747, -0.068042,
		0.784958, 0.619415, -0.012895,
		18.644720, 19.962822, 22.554876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.475588, 19.183620, 23.075565>,  <18.095249, 19.529230, 22.563902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.475588, 19.183620, 23.075565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.614841, 19.556816, 23.039047>,  <18.698393, 19.780733, 23.017138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.614841, 19.556816, 23.039047>,  <18.475588, 19.183620, 23.075565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.614841, 19.556816, 23.039047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194954, 0.167311, 0.966437,
		0.916949, -0.318651, 0.240137,
		0.348133, 0.932989, -0.091293,
		18.719282, 19.836712, 23.011660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.775391, 19.272564, 23.649977>,  <18.475588, 19.183620, 23.075565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.775391, 19.272564, 23.649977> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.709045, 19.648552, 23.530682>,  <18.669237, 19.874146, 23.459105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.709045, 19.648552, 23.530682>,  <18.775391, 19.272564, 23.649977>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.709045, 19.648552, 23.530682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110683, 0.282773, 0.952779,
		0.979917, 0.191042, 0.057137,
		-0.165865, 0.939969, -0.298240,
		18.659286, 19.930542, 23.441210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.135712, 19.625257, 24.089046>,  <18.775391, 19.272564, 23.649977>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.135712, 19.625257, 24.089046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.888840, 19.905144, 23.945110>,  <18.740717, 20.073076, 23.858747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.888840, 19.905144, 23.945110>,  <19.135712, 19.625257, 24.089046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.888840, 19.905144, 23.945110> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233279, 0.274047, 0.932995,
		0.751446, 0.659768, -0.005907,
		-0.617179, 0.699717, -0.359842,
		18.703686, 20.115059, 23.837158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.299562, 20.136240, 24.453217>,  <19.135712, 19.625257, 24.089046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.299562, 20.136240, 24.453217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.919857, 20.188244, 24.338676>,  <18.692034, 20.219446, 24.269953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.919857, 20.188244, 24.338676>,  <19.299562, 20.136240, 24.453217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.919857, 20.188244, 24.338676> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269984, 0.130040, 0.954043,
		0.161272, 0.982948, -0.088342,
		-0.949263, 0.130009, -0.286352,
		18.635078, 20.227247, 24.252771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.074945, 20.775398, 24.643044>,  <19.299562, 20.136240, 24.453217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.074945, 20.775398, 24.643044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.728752, 20.577507, 24.611586>,  <18.521036, 20.458773, 24.592710>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.728752, 20.577507, 24.611586>,  <19.074945, 20.775398, 24.643044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.728752, 20.577507, 24.611586> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299486, 0.385163, 0.872902,
		-0.401557, 0.779035, -0.481515,
		-0.865483, -0.494727, -0.078646,
		18.469107, 20.429089, 24.587992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.640507, 21.231922, 24.857561>,  <19.074945, 20.775398, 24.643044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.640507, 21.231922, 24.857561> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.439377, 20.887669, 24.889755>,  <18.318699, 20.681116, 24.909073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<18.439377, 20.887669, 24.889755>,  <18.640507, 21.231922, 24.857561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.439377, 20.887669, 24.889755> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278316, 0.249352, 0.927558,
		-0.818356, 0.443998, -0.364909,
		-0.502825, -0.860633, 0.080487,
		18.288530, 20.629478, 24.913902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<23.329647, 17.695066, 9.214744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.123280, 17.379757, 9.348880>,  <22.999458, 17.190571, 9.429361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.123280, 17.379757, 9.348880>,  <23.329647, 17.695066, 9.214744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.123280, 17.379757, 9.348880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570855, 0.608240, 0.551515,
		-0.638712, 0.093106, -0.763792,
		-0.515918, -0.788274, 0.335340,
		22.968504, 17.143274, 9.449482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.713793, 17.954370, 9.370940>,  <23.329647, 17.695066, 9.214744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.713793, 17.954370, 9.370940> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.721355, 17.620361, 9.590896>,  <22.725893, 17.419956, 9.722869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.721355, 17.620361, 9.590896>,  <22.713793, 17.954370, 9.370940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.721355, 17.620361, 9.590896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527533, 0.458870, 0.714945,
		-0.849324, -0.303601, -0.431828,
		0.018905, -0.835024, 0.549889,
		22.727028, 17.369854, 9.755862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.127932, 17.964273, 9.715171>,  <22.713793, 17.954370, 9.370940>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.127932, 17.964273, 9.715171> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.301476, 17.681202, 9.938225>,  <22.405602, 17.511360, 10.072058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.301476, 17.681202, 9.938225>,  <22.127932, 17.964273, 9.715171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.301476, 17.681202, 9.938225> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460849, 0.357522, 0.812278,
		-0.774198, -0.609402, -0.171017,
		0.433862, -0.707677, 0.557635,
		22.431635, 17.468899, 10.105515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.603264, 17.547787, 10.006475>,  <22.127932, 17.964273, 9.715171>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.603264, 17.547787, 10.006475> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.933861, 17.518196, 10.229703>,  <22.132219, 17.500443, 10.363640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.933861, 17.518196, 10.229703>,  <21.603264, 17.547787, 10.006475>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.933861, 17.518196, 10.229703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500847, 0.355999, 0.788935,
		-0.257034, -0.931554, 0.257179,
		0.826490, -0.073976, 0.558069,
		22.181808, 17.496004, 10.397123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.391300, 17.339783, 10.619103>,  <21.603264, 17.547787, 10.006475>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.391300, 17.339783, 10.619103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.757008, 17.484371, 10.692265>,  <21.976433, 17.571125, 10.736161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.757008, 17.484371, 10.692265>,  <21.391300, 17.339783, 10.619103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.757008, 17.484371, 10.692265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274182, 0.219762, 0.936231,
		0.298228, -0.906114, 0.300031,
		0.914267, 0.361473, 0.182901,
		22.031288, 17.592812, 10.747135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.607748, 16.962700, 11.220074>,  <21.391300, 17.339783, 10.619103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.607748, 16.962700, 11.220074> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.811684, 17.305630, 11.191641>,  <21.934046, 17.511389, 11.174581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.811684, 17.305630, 11.191641>,  <21.607748, 16.962700, 11.220074>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.811684, 17.305630, 11.191641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218835, 0.209161, 0.953081,
		0.831970, -0.470364, 0.294252,
		0.509841, 0.857327, -0.071083,
		21.964636, 17.562828, 11.170316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.139719, 16.901424, 11.771011>,  <21.607748, 16.962700, 11.220074>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.139719, 16.901424, 11.771011> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.120029, 17.289070, 11.674348>,  <22.108215, 17.521658, 11.616350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.120029, 17.289070, 11.674348>,  <22.139719, 16.901424, 11.771011>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.120029, 17.289070, 11.674348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129694, 0.246105, 0.960527,
		0.990332, 0.015938, -0.137802,
		-0.049223, 0.969112, -0.241659,
		22.105263, 17.579803, 11.601851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.586807, 17.297489, 12.152876>,  <22.139719, 16.901424, 11.771011>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.586807, 17.297489, 12.152876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.337044, 17.599331, 12.072189>,  <22.187185, 17.780436, 12.023777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.337044, 17.599331, 12.072189>,  <22.586807, 17.297489, 12.152876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.337044, 17.599331, 12.072189> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000303, 0.258014, 0.966141,
		0.781098, 0.603328, -0.160877,
		-0.624408, 0.754602, -0.201717,
		22.149721, 17.825712, 12.011674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.839226, 17.925426, 12.559553>,  <22.586807, 17.297489, 12.152876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.839226, 17.925426, 12.559553> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.456577, 17.992619, 12.464341>,  <22.226988, 18.032934, 12.407214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.456577, 17.992619, 12.464341>,  <22.839226, 17.925426, 12.559553>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.456577, 17.992619, 12.464341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188657, 0.265405, 0.945499,
		0.221999, 0.949391, -0.222202,
		-0.956622, 0.167980, -0.238029,
		22.169590, 18.043013, 12.392933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.711174, 18.618597, 12.839343>,  <22.839226, 17.925426, 12.559553>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.711174, 18.618597, 12.839343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.341496, 18.479675, 12.775797>,  <22.119688, 18.396322, 12.737669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.341496, 18.479675, 12.775797>,  <22.711174, 18.618597, 12.839343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.341496, 18.479675, 12.775797> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226569, 0.163723, 0.960136,
		-0.307449, 0.923350, -0.230001,
		-0.924198, -0.347304, -0.158866,
		22.064236, 18.375484, 12.728137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.185129, 19.129774, 13.089486>,  <22.711174, 18.618597, 12.839343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.185129, 19.129774, 13.089486> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.965233, 18.795715, 13.096626>,  <21.833296, 18.595280, 13.100910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.965233, 18.795715, 13.096626>,  <22.185129, 19.129774, 13.089486>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.965233, 18.795715, 13.096626> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411197, 0.289149, 0.864471,
		-0.727120, 0.467894, -0.502366,
		-0.549740, -0.835145, 0.017849,
		21.800310, 18.545172, 13.101981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.456326, 19.350191, 13.216105>,  <22.185129, 19.129774, 13.089486>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.456326, 19.350191, 13.216105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.501148, 18.966682, 13.320568>,  <21.528042, 18.736578, 13.383245>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.501148, 18.966682, 13.320568>,  <21.456326, 19.350191, 13.216105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.501148, 18.966682, 13.320568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375616, 0.202444, 0.904394,
		-0.919976, -0.199438, -0.337444,
		0.112058, -0.958771, 0.261156,
		21.534765, 18.679050, 13.398914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.007524, 19.832928, 12.838415>,  <21.456326, 19.350191, 13.216105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.007524, 19.832928, 12.838415> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.227615, 20.156528, 12.921133>,  <21.359671, 20.350689, 12.970764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.227615, 20.156528, 12.921133>,  <21.007524, 19.832928, 12.838415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.227615, 20.156528, 12.921133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343486, 0.006445, -0.939136,
		-0.761096, 0.587769, -0.274335,
		0.550227, 0.809003, 0.206796,
		21.392683, 20.399229, 12.983171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.833078, 20.325851, 12.257096>,  <21.007524, 19.832928, 12.838415>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.833078, 20.325851, 12.257096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.179379, 20.470684, 12.395298>,  <21.387159, 20.557583, 12.478219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.179379, 20.470684, 12.395298>,  <20.833078, 20.325851, 12.257096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.179379, 20.470684, 12.395298> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332262, 0.100435, -0.937824,
		-0.374268, 0.926720, -0.033354,
		0.865751, 0.362080, 0.345504,
		21.439104, 20.579308, 12.498949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.967791, 21.005713, 11.911686>,  <20.833078, 20.325851, 12.257096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.967791, 21.005713, 11.911686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.312374, 20.848267, 12.040033>,  <21.519125, 20.753799, 12.117042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.312374, 20.848267, 12.040033>,  <20.967791, 21.005713, 11.911686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.312374, 20.848267, 12.040033> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424250, 0.210553, -0.880727,
		0.279106, 0.894839, 0.348373,
		0.861459, -0.393613, 0.320868,
		21.570812, 20.730183, 12.136293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.452488, 21.437054, 11.649091>,  <20.967791, 21.005713, 11.911686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.452488, 21.437054, 11.649091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.681492, 21.127071, 11.756182>,  <21.818893, 20.941082, 11.820436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.681492, 21.127071, 11.756182>,  <21.452488, 21.437054, 11.649091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.681492, 21.127071, 11.756182> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522443, 0.093149, -0.847571,
		0.631890, 0.625115, 0.458198,
		0.572510, -0.774954, 0.267727,
		21.853245, 20.894585, 11.836500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.197178, 21.681301, 11.492237>,  <21.452488, 21.437054, 11.649091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.197178, 21.681301, 11.492237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.213512, 21.282482, 11.518234>,  <22.223314, 21.043190, 11.533833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.213512, 21.282482, 11.518234>,  <22.197178, 21.681301, 11.492237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.213512, 21.282482, 11.518234> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349915, -0.046657, -0.935619,
		0.935891, 0.060951, 0.346977,
		0.040838, -0.997050, 0.064994,
		22.225763, 20.983368, 11.537732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.859497, 21.468824, 11.237878>,  <22.197178, 21.681301, 11.492237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.859497, 21.468824, 11.237878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.644096, 21.132938, 11.209906>,  <22.514856, 20.931406, 11.193122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.644096, 21.132938, 11.209906>,  <22.859497, 21.468824, 11.237878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.644096, 21.132938, 11.209906> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394692, -0.178045, -0.901398,
		0.744468, -0.513006, 0.427308,
		-0.538502, -0.839717, -0.069930,
		22.482546, 20.881023, 11.188927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.206125, 20.913168, 10.987185>,  <22.859497, 21.468824, 11.237878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.206125, 20.913168, 10.987185> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.827381, 20.821514, 10.896893>,  <22.600134, 20.766521, 10.842717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.827381, 20.821514, 10.896893>,  <23.206125, 20.913168, 10.987185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.827381, 20.821514, 10.896893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302057, -0.392286, -0.868834,
		0.110528, -0.890848, 0.440651,
		-0.946860, -0.229132, -0.225729,
		22.543324, 20.752775, 10.829174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.282373, 20.174805, 10.688621>,  <23.206125, 20.913168, 10.987185>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.282373, 20.174805, 10.688621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.930008, 20.319778, 10.566878>,  <22.718590, 20.406763, 10.493833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.930008, 20.319778, 10.566878>,  <23.282373, 20.174805, 10.688621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.930008, 20.319778, 10.566878> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076778, -0.525123, -0.847556,
		-0.467009, -0.769991, 0.434761,
		-0.880913, 0.362436, -0.304356,
		22.665733, 20.428509, 10.475572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.972368, 19.668186, 10.305536>,  <23.282373, 20.174805, 10.688621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.972368, 19.668186, 10.305536> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.738747, 19.984573, 10.232596>,  <22.598574, 20.174406, 10.188832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.738747, 19.984573, 10.232596>,  <22.972368, 19.668186, 10.305536>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.738747, 19.984573, 10.232596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354347, -0.450561, -0.819410,
		-0.730286, -0.413966, 0.543429,
		-0.584056, 0.790966, -0.182351,
		22.563530, 20.221863, 10.177892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.287851, 19.454023, 10.018423>,  <22.972368, 19.668186, 10.305536>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.287851, 19.454023, 10.018423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.326595, 19.824474, 9.872600>,  <22.349842, 20.046745, 9.785106>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.326595, 19.824474, 9.872600>,  <22.287851, 19.454023, 10.018423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.326595, 19.824474, 9.872600> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265871, -0.328896, -0.906168,
		-0.959130, 0.184695, 0.214375,
		0.096858, 0.926129, -0.364559,
		22.355652, 20.102314, 9.763232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.792068, 19.456886, 9.582814>,  <22.287851, 19.454023, 10.018423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.792068, 19.456886, 9.582814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.998119, 19.772041, 9.447834>,  <22.121750, 19.961134, 9.366846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.998119, 19.772041, 9.447834>,  <21.792068, 19.456886, 9.582814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.998119, 19.772041, 9.447834> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217267, -0.260815, -0.940622,
		-0.829119, 0.557858, 0.036830,
		0.515128, 0.787890, -0.337451,
		22.152658, 20.008408, 9.346599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.343489, 19.816109, 9.115712>,  <21.792068, 19.456886, 9.582814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.343489, 19.816109, 9.115712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.707520, 19.964489, 9.041785>,  <21.925938, 20.053516, 8.997429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.707520, 19.964489, 9.041785>,  <21.343489, 19.816109, 9.115712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.707520, 19.964489, 9.041785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132521, -0.162066, -0.977841,
		-0.392684, 0.914402, -0.098333,
		0.910076, 0.370951, -0.184818,
		21.980541, 20.075775, 8.986340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.129454, 20.144028, 8.511410>,  <21.343489, 19.816109, 9.115712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.129454, 20.144028, 8.511410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.529003, 20.132702, 8.526643>,  <21.768732, 20.125906, 8.535783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.529003, 20.132702, 8.526643>,  <21.129454, 20.144028, 8.511410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.529003, 20.132702, 8.526643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027461, -0.309596, -0.950472,
		0.038703, 0.950446, -0.308469,
		0.998873, -0.028315, 0.038082,
		21.828665, 20.124207, 8.538068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.321302, 20.483002, 7.916991>,  <21.129454, 20.144028, 8.511410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.321302, 20.483002, 7.916991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.615494, 20.242752, 8.042418>,  <21.792007, 20.098602, 8.117674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<21.615494, 20.242752, 8.042418>,  <21.321302, 20.483002, 7.916991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<21.615494, 20.242752, 8.042418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105055, -0.356110, -0.928520,
		0.669355, 0.715847, -0.198812,
		0.735478, -0.600623, 0.313567,
		21.836138, 20.062565, 8.136488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.694721, 20.618647, 7.683470>,  <21.321302, 20.483002, 7.916991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.694721, 20.618647, 7.683470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.320877, 20.759964, 7.667013>,  <20.096571, 20.844753, 7.657139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.320877, 20.759964, 7.667013>,  <20.694721, 20.618647, 7.683470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.320877, 20.759964, 7.667013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100920, 0.374321, 0.921791,
		0.341061, 0.857362, -0.385497,
		-0.934608, 0.353291, -0.041141,
		20.040495, 20.865952, 7.654671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.688971, 21.290632, 8.075645>,  <20.694721, 20.618647, 7.683470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.688971, 21.290632, 8.075645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302471, 21.188061, 8.065745>,  <20.070572, 21.126518, 8.059805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.302471, 21.188061, 8.065745>,  <20.688971, 21.290632, 8.075645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.302471, 21.188061, 8.065745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083775, 0.221908, 0.971462,
		-0.243617, 0.940745, -0.235900,
		-0.966247, -0.256427, -0.024750,
		20.012598, 21.111134, 8.058320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.383554, 21.813457, 8.369534>,  <20.688971, 21.290632, 8.075645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.383554, 21.813457, 8.369534> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.113140, 21.518887, 8.379775>,  <19.950891, 21.342144, 8.385920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<20.113140, 21.518887, 8.379775>,  <20.383554, 21.813457, 8.369534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<20.113140, 21.518887, 8.379775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168971, 0.188744, 0.967380,
		-0.717236, 0.649656, -0.252032,
		-0.676034, -0.736425, 0.025601,
		19.910330, 21.297958, 8.387456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.877073, 22.028559, 8.690411>,  <20.383554, 21.813457, 8.369534>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.877073, 22.028559, 8.690411> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.797039, 21.641071, 8.749124>,  <19.749018, 21.408579, 8.784351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.797039, 21.641071, 8.749124>,  <19.877073, 22.028559, 8.690411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.797039, 21.641071, 8.749124> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288233, 0.201380, 0.936145,
		-0.936422, 0.145003, -0.319511,
		-0.200087, -0.968721, 0.146782,
		19.737013, 21.350454, 8.793159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143377, 21.868107, 8.922403>,  <19.877073, 22.028559, 8.690411>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143377, 21.868107, 8.922403> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391781, 21.578518, 9.042541>,  <19.540823, 21.404764, 9.114623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.391781, 21.578518, 9.042541>,  <19.143377, 21.868107, 8.922403>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.391781, 21.578518, 9.042541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217192, 0.209236, 0.953440,
		-0.753109, -0.657329, -0.027303,
		0.621011, -0.723974, 0.300344,
		19.578085, 21.361326, 9.132644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.816700, 21.676222, 9.545579>,  <19.143377, 21.868107, 8.922403>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.816700, 21.676222, 9.545579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.151993, 21.458275, 9.554360>,  <19.353168, 21.327507, 9.559629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.151993, 21.458275, 9.554360>,  <18.816700, 21.676222, 9.545579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.151993, 21.458275, 9.554360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165994, -0.216607, 0.962043,
		-0.519432, -0.810061, -0.272013,
		0.838234, -0.544869, 0.021953,
		19.403463, 21.294815, 9.560946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.711742, 20.910181, 9.684633>,  <18.816700, 21.676222, 9.545579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.711742, 20.910181, 9.684633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.056789, 21.054935, 9.826015>,  <19.263817, 21.141788, 9.910845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.056789, 21.054935, 9.826015>,  <18.711742, 20.910181, 9.684633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.056789, 21.054935, 9.826015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312101, -0.169145, 0.934871,
		0.398104, -0.916748, -0.032961,
		0.862616, 0.361888, 0.353455,
		19.315575, 21.163502, 9.932052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.834818, 20.494480, 10.351712>,  <18.711742, 20.910181, 9.684633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.834818, 20.494480, 10.351712> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.070679, 20.815868, 10.318863>,  <19.212196, 21.008701, 10.299153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.070679, 20.815868, 10.318863>,  <18.834818, 20.494480, 10.351712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.070679, 20.815868, 10.318863> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050289, 0.138007, 0.989154,
		0.806090, -0.579128, 0.121782,
		0.589653, 0.803471, -0.082122,
		19.247574, 21.056910, 10.294227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.382357, 20.383512, 10.798505>,  <18.834818, 20.494480, 10.351712>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.382357, 20.383512, 10.798505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.339172, 20.777653, 10.745692>,  <19.313263, 21.014137, 10.714005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.339172, 20.777653, 10.745692>,  <19.382357, 20.383512, 10.798505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.339172, 20.777653, 10.745692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168353, 0.112770, 0.979255,
		0.979797, 0.127948, 0.153712,
		-0.107960, 0.985349, -0.132032,
		19.306784, 21.073257, 10.706082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544960, 20.695375, 11.459268>,  <19.382357, 20.383512, 10.798505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544960, 20.695375, 11.459268> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.379604, 21.013744, 11.282351>,  <19.280392, 21.204765, 11.176202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.379604, 21.013744, 11.282351>,  <19.544960, 20.695375, 11.459268>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.379604, 21.013744, 11.282351> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341839, 0.314552, 0.885553,
		0.843952, 0.517270, 0.142044,
		-0.413390, 0.795920, -0.442290,
		19.255587, 21.252520, 11.149665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.812283, 21.292021, 11.794441>,  <19.544960, 20.695375, 11.459268>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.812283, 21.292021, 11.794441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.459965, 21.407780, 11.644536>,  <19.248573, 21.477236, 11.554593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.459965, 21.407780, 11.644536>,  <19.812283, 21.292021, 11.794441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459965, 21.407780, 11.644536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319908, 0.219797, 0.921601,
		0.349081, 0.931632, -0.101016,
		-0.880796, 0.289397, -0.374764,
		19.195726, 21.494598, 11.532106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.625294, 21.994785, 12.038751>,  <19.812283, 21.292021, 11.794441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.625294, 21.994785, 12.038751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.280704, 21.832417, 11.916709>,  <19.073950, 21.734995, 11.843484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.280704, 21.832417, 11.916709>,  <19.625294, 21.994785, 12.038751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.280704, 21.832417, 11.916709> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397625, 0.165522, 0.902494,
		-0.315841, 0.898793, -0.303998,
		-0.861475, -0.405922, -0.305105,
		19.022263, 21.710640, 11.825177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.062019, 22.428017, 12.245698>,  <19.625294, 21.994785, 12.038751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.062019, 22.428017, 12.245698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.840130, 22.107670, 12.155463>,  <18.706995, 21.915461, 12.101322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.840130, 22.107670, 12.155463>,  <19.062019, 22.428017, 12.245698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.840130, 22.107670, 12.155463> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476935, 0.083904, 0.874925,
		-0.681773, 0.592933, -0.428506,
		-0.554725, -0.800869, -0.225586,
		18.673712, 21.867409, 12.087788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.424809, 22.620300, 12.348909>,  <19.062019, 22.428017, 12.245698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.424809, 22.620300, 12.348909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415737, 22.221180, 12.373822>,  <18.410294, 21.981709, 12.388770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.415737, 22.221180, 12.373822>,  <18.424809, 22.620300, 12.348909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.415737, 22.221180, 12.373822> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492522, 0.065365, 0.867842,
		-0.870004, -0.010994, -0.492921,
		-0.022679, -0.997801, 0.062283,
		18.408934, 21.921841, 12.392507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.776989, 22.477087, 12.478427>,  <18.424809, 22.620300, 12.348909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.776989, 22.477087, 12.478427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.980244, 22.157410, 12.606855>,  <18.102196, 21.965603, 12.683912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.980244, 22.157410, 12.606855>,  <17.776989, 22.477087, 12.478427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.980244, 22.157410, 12.606855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623800, -0.084461, 0.777007,
		-0.593861, -0.595109, -0.541455,
		0.508136, -0.799194, 0.321071,
		18.132685, 21.917652, 12.703176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259249, 22.107328, 12.872586>,  <17.776989, 22.477087, 12.478427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259249, 22.107328, 12.872586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.592522, 21.908791, 12.970114>,  <17.792486, 21.789667, 13.028630>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.592522, 21.908791, 12.970114>,  <17.259249, 22.107328, 12.872586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.592522, 21.908791, 12.970114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377641, -0.188604, 0.906540,
		-0.403972, -0.847390, -0.344582,
		0.833183, -0.496345, 0.243819,
		17.842476, 21.759888, 13.043260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.993130, 21.447906, 13.210081>,  <17.259249, 22.107328, 12.872586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.993130, 21.447906, 13.210081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.372776, 21.503048, 13.323343>,  <17.600563, 21.536133, 13.391301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.372776, 21.503048, 13.323343>,  <16.993130, 21.447906, 13.210081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.372776, 21.503048, 13.323343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229078, -0.314788, 0.921103,
		0.216112, -0.939098, -0.267190,
		0.949115, 0.137854, 0.283157,
		17.657511, 21.544405, 13.408290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.252163, 20.795898, 13.696174>,  <16.993130, 21.447906, 13.210081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.252163, 20.795898, 13.696174> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475807, 21.124462, 13.741217>,  <17.609993, 21.321600, 13.768243>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.475807, 21.124462, 13.741217>,  <17.252163, 20.795898, 13.696174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.475807, 21.124462, 13.741217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176055, -0.015098, 0.984265,
		0.810186, -0.570136, 0.136172,
		0.559109, 0.821412, 0.112607,
		17.643539, 21.370886, 13.774999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.619703, 20.666407, 14.286459>,  <17.252163, 20.795898, 13.696174>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.619703, 20.666407, 14.286459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.645763, 21.063122, 14.242441>,  <17.661400, 21.301151, 14.216031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.645763, 21.063122, 14.242441>,  <17.619703, 20.666407, 14.286459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.645763, 21.063122, 14.242441> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115280, 0.117020, 0.986416,
		0.991194, -0.051580, 0.121957,
		0.065150, 0.991789, -0.110043,
		17.665308, 21.360659, 14.209428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075716, 20.886127, 14.790584>,  <17.619703, 20.666407, 14.286459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075716, 20.886127, 14.790584> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899357, 21.227074, 14.678101>,  <17.793541, 21.431643, 14.610611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.899357, 21.227074, 14.678101>,  <18.075716, 20.886127, 14.790584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.899357, 21.227074, 14.678101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148684, 0.239614, 0.959415,
		0.885156, 0.464817, 0.021088,
		-0.440900, 0.852368, -0.281206,
		17.767086, 21.482784, 14.593739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190180, 21.327065, 15.355289>,  <18.075716, 20.886127, 14.790584>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190180, 21.327065, 15.355289> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.885090, 21.497883, 15.161020>,  <17.702036, 21.600374, 15.044458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.885090, 21.497883, 15.161020>,  <18.190180, 21.327065, 15.355289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885090, 21.497883, 15.161020> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371905, 0.324752, 0.869611,
		0.529088, 0.843900, -0.088876,
		-0.762727, 0.427047, -0.485673,
		17.656271, 21.625998, 15.015319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.106546, 21.989054, 15.645272>,  <18.190180, 21.327065, 15.355289>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.106546, 21.989054, 15.645272> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.761543, 21.878883, 15.475464>,  <17.554541, 21.812780, 15.373579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.761543, 21.878883, 15.475464>,  <18.106546, 21.989054, 15.645272>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.761543, 21.878883, 15.475464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494103, 0.277210, 0.824025,
		-0.109277, 0.920486, -0.375186,
		-0.862508, -0.275428, -0.424522,
		17.502790, 21.796255, 15.348107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.665359, 22.653168, 15.652988>,  <18.106546, 21.989054, 15.645272>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.665359, 22.653168, 15.652988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.464069, 22.309948, 15.611969>,  <17.343296, 22.104015, 15.587358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.464069, 22.309948, 15.611969>,  <17.665359, 22.653168, 15.652988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.464069, 22.309948, 15.611969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483094, 0.180939, 0.856668,
		-0.716509, 0.480638, -0.505572,
		-0.503225, -0.858049, -0.102549,
		17.313103, 22.052534, 15.581204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.053953, 22.762840, 15.960135>,  <17.665359, 22.653168, 15.652988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.053953, 22.762840, 15.960135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.012028, 22.366505, 15.926064>,  <16.986872, 22.128704, 15.905621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.012028, 22.366505, 15.926064>,  <17.053953, 22.762840, 15.960135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.012028, 22.366505, 15.926064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366964, -0.041074, 0.929328,
		-0.924311, 0.128664, -0.359297,
		-0.104813, -0.990837, -0.085180,
		16.980583, 22.069254, 15.900510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.256004, 22.641136, 16.093634>,  <17.053953, 22.762840, 15.960135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.256004, 22.641136, 16.093634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.479313, 22.322548, 16.186556>,  <16.613298, 22.131395, 16.242310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.479313, 22.322548, 16.186556>,  <16.256004, 22.641136, 16.093634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.479313, 22.322548, 16.186556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486811, -0.087734, 0.869090,
		-0.671826, -0.598276, -0.436711,
		0.558270, -0.796473, 0.232305,
		16.646793, 22.083607, 16.256247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.796524, 22.266239, 16.464211>,  <16.256004, 22.641136, 16.093634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.796524, 22.266239, 16.464211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.150173, 22.115578, 16.574816>,  <16.362362, 22.025181, 16.641178>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.150173, 22.115578, 16.574816>,  <15.796524, 22.266239, 16.464211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.150173, 22.115578, 16.574816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293194, 0.013581, 0.955956,
		-0.363821, -0.926254, -0.098426,
		0.884121, -0.376655, 0.276513,
		16.415409, 22.002581, 16.657770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.653498, 21.724678, 16.872473>,  <15.796524, 22.266239, 16.464211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.653498, 21.724678, 16.872473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.035694, 21.796432, 16.966160>,  <16.265013, 21.839485, 17.022371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.035694, 21.796432, 16.966160>,  <15.653498, 21.724678, 16.872473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.035694, 21.796432, 16.966160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237440, -0.003601, 0.971396,
		0.175099, -0.983772, 0.039153,
		0.955491, 0.179386, 0.234218,
		16.322342, 21.850248, 17.036425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.737310, 21.341118, 17.388769>,  <15.653498, 21.724678, 16.872473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.737310, 21.341118, 17.388769> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.040344, 21.600006, 17.422640>,  <16.222164, 21.755339, 17.442963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.040344, 21.600006, 17.422640>,  <15.737310, 21.341118, 17.388769>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.040344, 21.600006, 17.422640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153256, 0.050269, 0.986907,
		0.634491, -0.760643, 0.137273,
		0.757584, 0.647221, 0.084678,
		16.267620, 21.794172, 17.448044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.718494, 20.613245, 17.485153>,  <15.737310, 21.341118, 17.388769>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.718494, 20.613245, 17.485153> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.356799, 20.472008, 17.581219>,  <15.139782, 20.387266, 17.638857>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.356799, 20.472008, 17.581219>,  <15.718494, 20.613245, 17.485153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.356799, 20.472008, 17.581219> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167221, -0.224703, -0.959972,
		0.392923, -0.908204, 0.144141,
		-0.904239, -0.353091, 0.240162,
		15.085527, 20.366081, 17.653267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.603292, 19.834568, 17.265186>,  <15.718494, 20.613245, 17.485153>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.603292, 19.834568, 17.265186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.233464, 19.970390, 17.334318>,  <15.011567, 20.051884, 17.375797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.233464, 19.970390, 17.334318>,  <15.603292, 19.834568, 17.265186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.233464, 19.970390, 17.334318> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230645, -0.137747, -0.963239,
		-0.303266, -0.930445, 0.205674,
		-0.924572, 0.339555, 0.172829,
		14.956093, 20.072258, 17.386168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243222, 19.402655, 16.921404>,  <15.603292, 19.834568, 17.265186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243222, 19.402655, 16.921404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.032353, 19.740303, 16.960485>,  <14.905832, 19.942892, 16.983934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.032353, 19.740303, 16.960485>,  <15.243222, 19.402655, 16.921404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.032353, 19.740303, 16.960485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193244, -0.007124, -0.981125,
		-0.827494, -0.536103, 0.166877,
		-0.527172, 0.844123, 0.097704,
		14.874202, 19.993540, 16.989796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.696476, 19.217033, 16.559698>,  <15.243222, 19.402655, 16.921404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.696476, 19.217033, 16.559698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.704638, 19.614456, 16.604296>,  <14.709536, 19.852909, 16.631054>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.704638, 19.614456, 16.604296>,  <14.696476, 19.217033, 16.559698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.704638, 19.614456, 16.604296> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097652, 0.112964, -0.988789,
		-0.995011, 0.009290, 0.099327,
		0.020407, 0.993555, 0.111494,
		14.710760, 19.912523, 16.637743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.075262, 19.434467, 16.193634>,  <14.696476, 19.217033, 16.559698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.075262, 19.434467, 16.193634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.328013, 19.742844, 16.225580>,  <14.479664, 19.927870, 16.244747>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.328013, 19.742844, 16.225580>,  <14.075262, 19.434467, 16.193634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.328013, 19.742844, 16.225580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013238, 0.113762, -0.993420,
		-0.774955, 0.626663, 0.082089,
		0.631878, 0.770942, 0.079865,
		14.517577, 19.974127, 16.249540>
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
