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
	right 1.6 * <0.724836, 0, 0.688921>
	location <12.1561, 44.2, 77.9145>
	look_at <46.7464, 44.2, 41.5209>
	direction <34.5903, 0, -36.3936>
	angle 67.0682
}


# declare cpy_camera_pos = <12.1561, 44.2, 77.9145>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 70.72
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.0359156, -1, 1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.0359156, 1, -1.41376>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<48.060764, 44.563061, 47.315845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715492, 44.463669, 47.140038>,  <47.508327, 44.404034, 47.034554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.715492, 44.463669, 47.140038>,  <48.060764, 44.563061, 47.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.715492, 44.463669, 47.140038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329359, -0.382671, 0.863183,
		-0.382671, 0.889844, 0.248477,
		-0.863183, -0.248477, -0.439516,
		47.456539, 44.389126, 47.008183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.604778, 44.726040, 47.840946>,  <48.060764, 44.563061, 47.315845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.604778, 44.726040, 47.840946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360367, 44.544556, 47.581474>,  <47.213718, 44.435665, 47.425793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.360367, 44.544556, 47.581474>,  <47.604778, 44.726040, 47.840946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.360367, 44.544556, 47.581474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495108, -0.420344, 0.760381,
		-0.617663, 0.785783, 0.032207,
		-0.611032, -0.453714, -0.648679,
		47.177055, 44.408443, 47.386871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.963905, 44.888809, 48.098087>,  <47.604778, 44.726040, 47.840946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.963905, 44.888809, 48.098087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899467, 44.559242, 47.880753>,  <46.860806, 44.361504, 47.750351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.899467, 44.559242, 47.880753>,  <46.963905, 44.888809, 48.098087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.899467, 44.559242, 47.880753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.513292, -0.400267, 0.759156,
		-0.842959, 0.401185, -0.358429,
		-0.161095, -0.823916, -0.543333,
		46.851139, 44.312069, 47.717754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265228, 44.839939, 48.042179>,  <46.963905, 44.888809, 48.098087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265228, 44.839939, 48.042179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426636, 44.479172, 47.980583>,  <46.523479, 44.262711, 47.943626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.426636, 44.479172, 47.980583>,  <46.265228, 44.839939, 48.042179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.426636, 44.479172, 47.980583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592667, -0.385869, 0.707001,
		-0.697077, -0.194027, -0.690245,
		0.403521, -0.901919, -0.153986,
		46.547691, 44.208595, 47.934387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.713032, 44.309406, 48.131058>,  <46.265228, 44.839939, 48.042179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.713032, 44.309406, 48.131058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023361, 44.057358, 48.144016>,  <46.209560, 43.906128, 48.151791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.023361, 44.057358, 48.144016>,  <45.713032, 44.309406, 48.131058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.023361, 44.057358, 48.144016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428733, -0.488813, 0.759770,
		-0.462911, -0.603335, -0.649385,
		0.775823, -0.630118, 0.032393,
		46.256107, 43.868324, 48.153736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.471256, 43.665478, 48.005302>,  <45.713032, 44.309406, 48.131058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.471256, 43.665478, 48.005302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797318, 43.667892, 48.236988>,  <45.992954, 43.669342, 48.375999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.797318, 43.667892, 48.236988>,  <45.471256, 43.665478, 48.005302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.797318, 43.667892, 48.236988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426962, -0.669485, 0.607860,
		0.391445, -0.742801, -0.543154,
		0.815153, 0.006038, 0.579215,
		46.041862, 43.669704, 48.410751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.512218, 42.998775, 48.155659>,  <45.471256, 43.665478, 48.005302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.512218, 42.998775, 48.155659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740891, 43.186523, 48.424843>,  <45.878094, 43.299171, 48.586353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.740891, 43.186523, 48.424843>,  <45.512218, 42.998775, 48.155659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.740891, 43.186523, 48.424843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411702, -0.545370, 0.730118,
		0.709706, -0.694454, -0.118538,
		0.571680, 0.469367, 0.672961,
		45.912395, 43.327335, 48.626732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662224, 42.581676, 48.784466>,  <45.512218, 42.998775, 48.155659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662224, 42.581676, 48.784466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747040, 42.946548, 48.924736>,  <45.797928, 43.165470, 49.008896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.747040, 42.946548, 48.924736>,  <45.662224, 42.581676, 48.784466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.747040, 42.946548, 48.924736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432884, -0.234038, 0.870539,
		0.876157, -0.336388, 0.345242,
		0.212039, 0.912178, 0.350671,
		45.810650, 43.220203, 49.029938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.764576, 42.413010, 49.473385>,  <45.662224, 42.581676, 48.784466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.764576, 42.413010, 49.473385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698860, 42.806297, 49.441673>,  <45.659431, 43.042271, 49.422646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.698860, 42.806297, 49.441673>,  <45.764576, 42.413010, 49.473385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.698860, 42.806297, 49.441673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678012, -0.054181, 0.733051,
		0.716457, 0.174182, 0.675537,
		-0.164286, 0.983222, -0.079279,
		45.649574, 43.101265, 49.417889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.731907, 42.564835, 50.140633>,  <45.764576, 42.413010, 49.473385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.731907, 42.564835, 50.140633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541603, 42.869186, 49.964127>,  <45.427422, 43.051796, 49.858223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541603, 42.869186, 49.964127>,  <45.731907, 42.564835, 50.140633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541603, 42.869186, 49.964127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672496, 0.008697, 0.740049,
		0.566926, 0.648835, 0.507551,
		-0.475755, 0.760880, -0.441270,
		45.398876, 43.097450, 49.831745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.572735, 42.991287, 50.651455>,  <45.731907, 42.564835, 50.140633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.572735, 42.991287, 50.651455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323181, 43.103432, 50.359657>,  <45.173447, 43.170719, 50.184578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.323181, 43.103432, 50.359657>,  <45.572735, 42.991287, 50.651455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.323181, 43.103432, 50.359657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748939, 0.052212, 0.660579,
		0.223287, 0.958475, 0.177396,
		-0.623886, 0.280358, -0.729497,
		45.136017, 43.187538, 50.140808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.111488, 43.442230, 51.005409>,  <45.572735, 42.991287, 50.651455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.111488, 43.442230, 51.005409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908287, 43.389076, 50.664993>,  <44.786366, 43.357182, 50.460743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.908287, 43.389076, 50.664993>,  <45.111488, 43.442230, 51.005409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.908287, 43.389076, 50.664993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860616, 0.037350, 0.507883,
		-0.035704, 0.990427, -0.133339,
		-0.508002, -0.132887, -0.851044,
		44.755886, 43.349209, 50.409679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.603577, 43.820908, 51.086712>,  <45.111488, 43.442230, 51.005409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.603577, 43.820908, 51.086712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481308, 43.597939, 50.777950>,  <44.407948, 43.464157, 50.592693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.481308, 43.597939, 50.777950>,  <44.603577, 43.820908, 51.086712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.481308, 43.597939, 50.777950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949755, 0.121203, 0.288574,
		-0.067301, 0.821331, -0.566468,
		-0.305672, -0.557427, -0.771907,
		44.389606, 43.430710, 50.546379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.999306, 44.138863, 50.826969>,  <44.603577, 43.820908, 51.086712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.999306, 44.138863, 50.826969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989273, 43.755257, 50.714066>,  <43.983253, 43.525093, 50.646324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.989273, 43.755257, 50.714066>,  <43.999306, 44.138863, 50.826969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.989273, 43.755257, 50.714066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959599, -0.056052, 0.275731,
		-0.280250, 0.277771, -0.918860,
		-0.025086, -0.959011, -0.282257,
		43.981747, 43.467552, 50.629387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319427, 44.025414, 50.367073>,  <43.999306, 44.138863, 50.826969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319427, 44.025414, 50.367073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424812, 43.674751, 50.528099>,  <43.488045, 43.464352, 50.624714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.424812, 43.674751, 50.528099>,  <43.319427, 44.025414, 50.367073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.424812, 43.674751, 50.528099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899841, -0.072937, 0.430076,
		-0.347669, -0.475550, -0.808071,
		0.263461, -0.876660, 0.402561,
		43.503849, 43.411755, 50.648869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664856, 43.724762, 50.461491>,  <43.319427, 44.025414, 50.367073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664856, 43.724762, 50.461491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925133, 43.536903, 50.700165>,  <43.081299, 43.424187, 50.843369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.925133, 43.536903, 50.700165>,  <42.664856, 43.724762, 50.461491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.925133, 43.536903, 50.700165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673172, 0.006807, 0.739454,
		-0.351345, -0.882828, -0.311725,
		0.650689, -0.469648, 0.596686,
		43.120338, 43.396008, 50.879169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.244705, 43.243687, 50.890057>,  <42.664856, 43.724762, 50.461491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.244705, 43.243687, 50.890057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593353, 43.293037, 51.079815>,  <42.802544, 43.322647, 51.193668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.593353, 43.293037, 51.079815>,  <42.244705, 43.243687, 50.890057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.593353, 43.293037, 51.079815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472100, -0.049113, 0.880176,
		0.131896, -0.991143, 0.015440,
		0.871622, 0.123381, 0.474396,
		42.854839, 43.330051, 51.222134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.201042, 42.637650, 51.430740>,  <42.244705, 43.243687, 50.890057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.201042, 42.637650, 51.430740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499912, 42.884895, 51.528446>,  <42.679234, 43.033241, 51.587070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499912, 42.884895, 51.528446>,  <42.201042, 42.637650, 51.430740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499912, 42.884895, 51.528446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306486, -0.005667, 0.951858,
		0.589737, -0.786072, 0.185208,
		0.747179, 0.618110, 0.244262,
		42.724068, 43.070328, 51.601727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.386219, 42.403732, 52.094025>,  <42.201042, 42.637650, 51.430740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.386219, 42.403732, 52.094025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542015, 42.770798, 52.062569>,  <42.635494, 42.991039, 52.043694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.542015, 42.770798, 52.062569>,  <42.386219, 42.403732, 52.094025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542015, 42.770798, 52.062569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246925, 0.186300, 0.950958,
		0.887313, -0.350972, 0.299157,
		0.389492, 0.917666, -0.078642,
		42.658863, 43.046097, 52.038975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921635, 42.434456, 52.732780>,  <42.386219, 42.403732, 52.094025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921635, 42.434456, 52.732780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784180, 42.787727, 52.605087>,  <42.701706, 42.999691, 52.528473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.784180, 42.787727, 52.605087>,  <42.921635, 42.434456, 52.732780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.784180, 42.787727, 52.605087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365551, 0.187324, 0.911747,
		0.865034, 0.430010, 0.258474,
		-0.343642, 0.883177, -0.319232,
		42.681087, 43.052681, 52.509319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.005543, 42.916889, 53.264656>,  <42.921635, 42.434456, 52.732780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.005543, 42.916889, 53.264656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737061, 43.103027, 53.033852>,  <42.575970, 43.214710, 52.895370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.737061, 43.103027, 53.033852>,  <43.005543, 42.916889, 53.264656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.737061, 43.103027, 53.033852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514535, 0.267858, 0.814558,
		0.533608, 0.843626, 0.059650,
		-0.671205, 0.465347, -0.577007,
		42.535698, 43.242630, 52.860748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.921749, 43.573254, 53.545414>,  <43.005543, 42.916889, 53.264656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.921749, 43.573254, 53.545414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587746, 43.524399, 53.330811>,  <42.387344, 43.495087, 53.202049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.587746, 43.524399, 53.330811>,  <42.921749, 43.573254, 53.545414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.587746, 43.524399, 53.330811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549120, 0.246933, 0.798431,
		0.034966, 0.961305, -0.273257,
		-0.835012, -0.122133, -0.536506,
		42.337242, 43.487759, 53.169857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535316, 44.177193, 53.690338>,  <42.921749, 43.573254, 53.545414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535316, 44.177193, 53.690338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279205, 43.917580, 53.525997>,  <42.125538, 43.761810, 53.427391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.279205, 43.917580, 53.525997>,  <42.535316, 44.177193, 53.690338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.279205, 43.917580, 53.525997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581677, 0.060328, 0.811180,
		-0.501698, 0.758363, -0.416155,
		-0.640274, -0.649035, -0.410856,
		42.087124, 43.722870, 53.402740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.900604, 44.547817, 53.935356>,  <42.535316, 44.177193, 53.690338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.900604, 44.547817, 53.935356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808571, 44.183632, 53.797882>,  <41.753353, 43.965122, 53.715397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.808571, 44.183632, 53.797882>,  <41.900604, 44.547817, 53.935356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.808571, 44.183632, 53.797882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743487, -0.063418, 0.665737,
		-0.627925, 0.408697, -0.662327,
		-0.230081, -0.910464, -0.343682,
		41.739548, 43.910492, 53.694778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216179, 44.568523, 53.828617>,  <41.900604, 44.547817, 53.935356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216179, 44.568523, 53.828617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308689, 44.181313, 53.867474>,  <41.364197, 43.948986, 53.890789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.308689, 44.181313, 53.867474>,  <41.216179, 44.568523, 53.828617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308689, 44.181313, 53.867474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705323, -0.098057, 0.702072,
		-0.670099, -0.230888, -0.705449,
		0.231275, -0.968026, 0.097143,
		41.378071, 43.890903, 53.896618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.543732, 44.218693, 53.858452>,  <41.216179, 44.568523, 53.828617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.543732, 44.218693, 53.858452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829082, 43.979256, 54.004208>,  <41.000294, 43.835594, 54.091660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.829082, 43.979256, 54.004208>,  <40.543732, 44.218693, 53.858452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.829082, 43.979256, 54.004208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564972, -0.183627, 0.804417,
		-0.414611, -0.779719, -0.469186,
		0.713375, -0.598597, 0.364386,
		41.043095, 43.799675, 54.113525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178909, 43.720753, 54.319698>,  <40.543732, 44.218693, 53.858452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178909, 43.720753, 54.319698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559830, 43.680031, 54.434769>,  <40.788383, 43.655598, 54.503811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.559830, 43.680031, 54.434769>,  <40.178909, 43.720753, 54.319698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.559830, 43.680031, 54.434769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304658, -0.262956, 0.915444,
		-0.017551, -0.959422, -0.281429,
		0.952300, -0.101806, 0.287681,
		40.845520, 43.649490, 54.521072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227764, 43.143578, 54.784824>,  <40.178909, 43.720753, 54.319698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227764, 43.143578, 54.784824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556816, 43.356140, 54.865707>,  <40.754246, 43.483677, 54.914238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.556816, 43.356140, 54.865707>,  <40.227764, 43.143578, 54.784824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.556816, 43.356140, 54.865707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131924, -0.167536, 0.976999,
		0.553065, -0.830382, -0.067714,
		0.822627, 0.531411, 0.202205,
		40.803604, 43.515564, 54.926369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.708305, 42.737644, 55.272854>,  <40.227764, 43.143578, 54.784824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.708305, 42.737644, 55.272854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804482, 43.121330, 55.332302>,  <40.862186, 43.351543, 55.367970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.804482, 43.121330, 55.332302>,  <40.708305, 42.737644, 55.272854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.804482, 43.121330, 55.332302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120706, -0.122373, 0.985117,
		0.963130, -0.254798, 0.086360,
		0.240438, 0.959220, 0.148617,
		40.876614, 43.409096, 55.376888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.234669, 42.814690, 55.761578>,  <40.708305, 42.737644, 55.272854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.234669, 42.814690, 55.761578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044998, 43.166763, 55.769890>,  <40.931194, 43.378006, 55.774876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.044998, 43.166763, 55.769890>,  <41.234669, 42.814690, 55.761578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.044998, 43.166763, 55.769890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096752, -0.075552, 0.992437,
		0.875097, 0.468581, 0.120985,
		-0.474178, 0.880184, 0.020779,
		40.902744, 43.430817, 55.776123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.607185, 43.173740, 56.388775>,  <41.234669, 42.814690, 55.761578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.607185, 43.173740, 56.388775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256824, 43.351799, 56.314339>,  <41.046608, 43.458633, 56.269676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.256824, 43.351799, 56.314339>,  <41.607185, 43.173740, 56.388775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256824, 43.351799, 56.314339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181318, 0.053726, 0.981956,
		0.447116, 0.893843, 0.033654,
		-0.875906, 0.445150, -0.186091,
		40.994053, 43.485344, 56.258511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.641949, 43.704857, 56.824047>,  <41.607185, 43.173740, 56.388775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.641949, 43.704857, 56.824047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250443, 43.671181, 56.749283>,  <41.015541, 43.650974, 56.704426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.250443, 43.671181, 56.749283>,  <41.641949, 43.704857, 56.824047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.250443, 43.671181, 56.749283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202562, 0.257059, 0.944928,
		-0.031508, 0.962721, -0.268654,
		-0.978762, -0.084192, -0.186911,
		40.956814, 43.645924, 56.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.319820, 44.306721, 57.084183>,  <41.641949, 43.704857, 56.824047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.319820, 44.306721, 57.084183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038582, 44.023407, 57.058914>,  <40.869839, 43.853420, 57.043755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.038582, 44.023407, 57.058914>,  <41.319820, 44.306721, 57.084183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.038582, 44.023407, 57.058914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308516, 0.223801, 0.924517,
		-0.640680, 0.669516, -0.375870,
		-0.703099, -0.708281, -0.063171,
		40.827652, 43.810925, 57.039963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863190, 44.588909, 57.371117>,  <41.319820, 44.306721, 57.084183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863190, 44.588909, 57.371117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710018, 44.219513, 57.361935>,  <40.618114, 43.997875, 57.356426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710018, 44.219513, 57.361935>,  <40.863190, 44.588909, 57.371117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710018, 44.219513, 57.361935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324754, 0.111314, 0.939225,
		-0.864812, 0.367111, -0.342533,
		-0.382929, -0.923493, -0.022956,
		40.595139, 43.942467, 57.355049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.283936, 44.620495, 57.707424>,  <40.863190, 44.588909, 57.371117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.283936, 44.620495, 57.707424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332527, 44.223778, 57.723396>,  <40.361683, 43.985748, 57.732979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.332527, 44.223778, 57.723396>,  <40.283936, 44.620495, 57.707424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.332527, 44.223778, 57.723396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385568, -0.010079, 0.922624,
		-0.914648, -0.127471, -0.383627,
		0.121475, -0.991791, 0.039930,
		40.368969, 43.926239, 57.735374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654190, 44.352402, 57.950703>,  <40.283936, 44.620495, 57.707424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654190, 44.352402, 57.950703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934196, 44.071053, 58.000092>,  <40.102200, 43.902241, 58.029724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.934196, 44.071053, 58.000092>,  <39.654190, 44.352402, 57.950703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.934196, 44.071053, 58.000092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290629, -0.122657, 0.948941,
		-0.652316, -0.700156, -0.290282,
		0.700013, -0.703375, 0.123474,
		40.144199, 43.860039, 58.037132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321781, 43.948277, 58.277302>,  <39.654190, 44.352402, 57.950703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321781, 43.948277, 58.277302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701973, 43.855942, 58.360542>,  <39.930088, 43.800541, 58.410484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.701973, 43.855942, 58.360542>,  <39.321781, 43.948277, 58.277302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.701973, 43.855942, 58.360542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209265, 0.019701, 0.977661,
		-0.229783, -0.972792, -0.029582,
		0.950478, -0.230840, 0.208098,
		39.987118, 43.786690, 58.422970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.322437, 43.481174, 58.844707>,  <39.321781, 43.948277, 58.277302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.322437, 43.481174, 58.844707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698906, 43.616295, 58.840878>,  <39.924786, 43.697369, 58.838577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.698906, 43.616295, 58.840878>,  <39.322437, 43.481174, 58.844707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.698906, 43.616295, 58.840878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054541, 0.179807, 0.982189,
		0.333507, -0.923883, 0.187652,
		0.941168, 0.337802, -0.009577,
		39.981258, 43.717636, 58.838005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579403, 43.136581, 59.417976>,  <39.322437, 43.481174, 58.844707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579403, 43.136581, 59.417976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831512, 43.438179, 59.343948>,  <39.982777, 43.619137, 59.299534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831512, 43.438179, 59.343948>,  <39.579403, 43.136581, 59.417976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831512, 43.438179, 59.343948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062309, 0.188481, 0.980098,
		0.773869, -0.629261, 0.071813,
		0.630273, 0.753993, -0.185068,
		40.020596, 43.664375, 59.288429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.209023, 43.026173, 59.846367>,  <39.579403, 43.136581, 59.417976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.209023, 43.026173, 59.846367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205479, 43.416054, 59.757034>,  <40.203354, 43.649982, 59.703434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.205479, 43.416054, 59.757034>,  <40.209023, 43.026173, 59.846367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.205479, 43.416054, 59.757034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240602, 0.218854, 0.945629,
		0.970583, -0.045356, -0.236455,
		-0.008859, 0.974703, -0.223328,
		40.202820, 43.708466, 59.690037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784058, 43.227840, 60.108303>,  <40.209023, 43.026173, 59.846367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784058, 43.227840, 60.108303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557545, 43.557274, 60.095432>,  <40.421638, 43.754932, 60.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.557545, 43.557274, 60.095432>,  <40.784058, 43.227840, 60.108303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.557545, 43.557274, 60.095432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160065, 0.148189, 0.975920,
		0.808520, 0.547495, -0.215743,
		-0.566282, 0.823583, -0.032179,
		40.387661, 43.804348, 60.085777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211426, 43.668159, 60.423851>,  <40.784058, 43.227840, 60.108303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211426, 43.668159, 60.423851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838196, 43.811516, 60.436062>,  <40.614258, 43.897530, 60.443386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.838196, 43.811516, 60.436062>,  <41.211426, 43.668159, 60.423851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.838196, 43.811516, 60.436062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062874, 0.078953, 0.994894,
		0.354152, 0.930227, -0.096202,
		-0.933072, 0.358392, 0.030525,
		40.558273, 43.919033, 60.445221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185223, 44.073696, 61.000790>,  <41.211426, 43.668159, 60.423851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185223, 44.073696, 61.000790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799591, 44.010323, 60.915512>,  <40.568211, 43.972298, 60.864346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.799591, 44.010323, 60.915512>,  <41.185223, 44.073696, 61.000790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.799591, 44.010323, 60.915512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237983, 0.158745, 0.958209,
		-0.117965, 0.974526, -0.190746,
		-0.964079, -0.158430, -0.213194,
		40.510368, 43.962795, 60.851555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.751301, 44.770744, 61.040340>,  <41.185223, 44.073696, 61.000790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.751301, 44.770744, 61.040340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568039, 44.424149, 61.119633>,  <40.458084, 44.216190, 61.167210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.568039, 44.424149, 61.119633>,  <40.751301, 44.770744, 61.040340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.568039, 44.424149, 61.119633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004732, 0.220637, 0.975345,
		-0.888862, 0.447792, -0.096984,
		-0.458150, -0.866488, 0.198235,
		40.430595, 44.164204, 61.179104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.174728, 44.912785, 61.449215>,  <40.751301, 44.770744, 61.040340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.174728, 44.912785, 61.449215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322594, 44.548080, 61.520813>,  <40.411312, 44.329258, 61.563774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.322594, 44.548080, 61.520813>,  <40.174728, 44.912785, 61.449215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322594, 44.548080, 61.520813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156032, 0.250823, 0.955375,
		-0.915970, -0.325241, 0.234985,
		0.369667, -0.911760, 0.178998,
		40.433495, 44.274551, 61.574512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.616096, 45.567303, 61.400925>,  <40.174728, 44.912785, 61.449215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.616096, 45.567303, 61.400925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259304, 45.674416, 61.255234>,  <39.045227, 45.738682, 61.167820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259304, 45.674416, 61.255234>,  <39.616096, 45.567303, 61.400925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259304, 45.674416, 61.255234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394882, -0.069274, 0.916117,
		0.220086, 0.960986, 0.167533,
		-0.891981, 0.267780, -0.364229,
		38.991711, 45.754749, 61.145966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237316, 46.022991, 61.876820>,  <39.616096, 45.567303, 61.400925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237316, 46.022991, 61.876820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984947, 45.815186, 61.646324>,  <38.833527, 45.690502, 61.508026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.984947, 45.815186, 61.646324>,  <39.237316, 46.022991, 61.876820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984947, 45.815186, 61.646324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406725, -0.411008, 0.815872,
		-0.660695, 0.749118, 0.048013,
		-0.630918, -0.519514, -0.576236,
		38.795673, 45.659332, 61.473454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021774, 45.787991, 62.573635>,  <39.237316, 46.022991, 61.876820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021774, 45.787991, 62.573635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627357, 45.776588, 62.639252>,  <38.390709, 45.769749, 62.678623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.627357, 45.776588, 62.639252>,  <39.021774, 45.787991, 62.573635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.627357, 45.776588, 62.639252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164485, 0.013908, -0.986282,
		0.025846, -0.999497, -0.018405,
		-0.986041, -0.028519, 0.164043,
		38.331547, 45.768036, 62.688465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.723587, 45.295940, 62.296429>,  <39.021774, 45.787991, 62.573635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.723587, 45.295940, 62.296429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470955, 45.606056, 62.298775>,  <38.319374, 45.792126, 62.300182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.470955, 45.606056, 62.298775>,  <38.723587, 45.295940, 62.296429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.470955, 45.606056, 62.298775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003217, 0.010191, -0.999943,
		-0.775303, -0.631527, -0.008931,
		-0.631582, 0.775288, 0.005869,
		38.281479, 45.838642, 62.300537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.024548, 45.184025, 61.915466>,  <38.723587, 45.295940, 62.296429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.024548, 45.184025, 61.915466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151955, 45.562309, 61.889622>,  <38.228397, 45.789280, 61.874115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.151955, 45.562309, 61.889622>,  <38.024548, 45.184025, 61.915466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.151955, 45.562309, 61.889622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008150, -0.070892, -0.997451,
		-0.947883, 0.317177, -0.030287,
		0.318515, 0.945713, -0.064612,
		38.247509, 45.846024, 61.870239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.671543, 45.562340, 61.391357>,  <38.024548, 45.184025, 61.915466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.671543, 45.562340, 61.391357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050346, 45.688461, 61.415871>,  <38.277630, 45.764133, 61.430576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.050346, 45.688461, 61.415871>,  <37.671543, 45.562340, 61.391357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.050346, 45.688461, 61.415871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074015, -0.028560, -0.996848,
		-0.312558, 0.948562, -0.050384,
		0.947011, 0.315302, 0.061281,
		38.334450, 45.783051, 61.434254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.789875, 46.037182, 60.823151>,  <37.671543, 45.562340, 61.391357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.789875, 46.037182, 60.823151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165886, 45.977135, 60.945671>,  <38.391491, 45.941105, 61.019184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.165886, 45.977135, 60.945671>,  <37.789875, 46.037182, 60.823151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.165886, 45.977135, 60.945671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330240, 0.175640, -0.927412,
		0.085426, 0.972941, 0.214682,
		0.940023, -0.150122, 0.306300,
		38.447891, 45.932098, 61.037560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083694, 46.616722, 60.658627>,  <37.789875, 46.037182, 60.823151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083694, 46.616722, 60.658627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374683, 46.342430, 60.649170>,  <38.549278, 46.177856, 60.643497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374683, 46.342430, 60.649170>,  <38.083694, 46.616722, 60.658627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374683, 46.342430, 60.649170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368563, 0.419596, -0.829518,
		0.578747, 0.594737, 0.557979,
		0.727471, -0.685731, -0.023642,
		38.592926, 46.136711, 60.642078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.665482, 47.096478, 60.647739>,  <38.083694, 46.616722, 60.658627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.665482, 47.096478, 60.647739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773621, 46.737846, 60.507423>,  <38.838505, 46.522667, 60.423233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773621, 46.737846, 60.507423>,  <38.665482, 47.096478, 60.647739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773621, 46.737846, 60.507423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454714, 0.440066, -0.774323,
		0.848616, 0.049824, 0.526658,
		0.270344, -0.896582, -0.350791,
		38.854725, 46.468872, 60.402187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.317402, 47.164211, 60.345051>,  <38.665482, 47.096478, 60.647739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.317402, 47.164211, 60.345051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213070, 46.813858, 60.182671>,  <39.150471, 46.603645, 60.085243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.213070, 46.813858, 60.182671>,  <39.317402, 47.164211, 60.345051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.213070, 46.813858, 60.182671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643437, 0.155757, -0.749486,
		0.719693, -0.456689, 0.522951,
		-0.260829, -0.875885, -0.405948,
		39.134823, 46.551094, 60.060886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958488, 46.881008, 60.078369>,  <39.317402, 47.164211, 60.345051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958488, 46.881008, 60.078369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687477, 46.655792, 59.889080>,  <39.524868, 46.520664, 59.775505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687477, 46.655792, 59.889080>,  <39.958488, 46.881008, 60.078369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687477, 46.655792, 59.889080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520297, 0.087859, -0.849454,
		0.519850, -0.821749, 0.233418,
		-0.677531, -0.563035, -0.473227,
		39.484219, 46.486881, 59.747112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.403603, 46.332886, 59.661621>,  <39.958488, 46.881008, 60.078369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.403603, 46.332886, 59.661621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033379, 46.359840, 59.512596>,  <39.811245, 46.376011, 59.423183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033379, 46.359840, 59.512596>,  <40.403603, 46.332886, 59.661621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033379, 46.359840, 59.512596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369898, -0.048860, -0.927787,
		-0.080727, -0.996530, 0.020295,
		-0.925559, 0.067390, -0.372559,
		39.755711, 46.380054, 59.400829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.352764, 45.763985, 59.213951>,  <40.403603, 46.332886, 59.661621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.352764, 45.763985, 59.213951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 46.053734, 59.093143>,  <39.956135, 46.227581, 59.020660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104870, 46.053734, 59.093143>,  <40.352764, 45.763985, 59.213951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104870, 46.053734, 59.093143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332067, -0.106659, -0.937206,
		-0.711097, -0.681111, -0.174438,
		-0.619736, 0.724370, -0.302020,
		39.918949, 46.271046, 59.002537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.005653, 45.517776, 58.666859>,  <40.352764, 45.763985, 59.213951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.005653, 45.517776, 58.666859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972305, 45.912720, 58.612946>,  <39.952297, 46.149685, 58.580597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.972305, 45.912720, 58.612946>,  <40.005653, 45.517776, 58.666859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972305, 45.912720, 58.612946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355137, -0.096934, -0.929775,
		-0.931089, -0.125385, -0.342567,
		-0.083374, 0.987361, -0.134783,
		39.947292, 46.208927, 58.572510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021637, 45.581837, 58.000202>,  <40.005653, 45.517776, 58.666859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021637, 45.581837, 58.000202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046368, 45.969658, 58.094986>,  <40.061207, 46.202351, 58.151855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.046368, 45.969658, 58.094986>,  <40.021637, 45.581837, 58.000202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.046368, 45.969658, 58.094986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481812, 0.178932, -0.857812,
		-0.874091, 0.167204, -0.456079,
		0.061822, 0.969550, 0.236963,
		40.064915, 46.260521, 58.166077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.635891, 45.995670, 57.502079>,  <40.021637, 45.581837, 58.000202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.635891, 45.995670, 57.502079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923702, 46.229080, 57.652691>,  <40.096390, 46.369125, 57.743057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.923702, 46.229080, 57.652691>,  <39.635891, 45.995670, 57.502079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.923702, 46.229080, 57.652691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305355, 0.221131, -0.926207,
		-0.623727, 0.781409, -0.019072,
		0.719529, 0.583524, 0.376533,
		40.139561, 46.404137, 57.765652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.621601, 46.589802, 57.005737>,  <39.635891, 45.995670, 57.502079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.621601, 46.589802, 57.005737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978104, 46.592712, 57.187111>,  <40.192005, 46.594460, 57.295937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.978104, 46.592712, 57.187111>,  <39.621601, 46.589802, 57.005737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.978104, 46.592712, 57.187111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437056, 0.252995, -0.863120,
		-0.121000, 0.967440, 0.222302,
		0.891258, 0.007279, 0.453438,
		40.245480, 46.594894, 57.323143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.880577, 47.113903, 56.666664>,  <39.621601, 46.589802, 57.005737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.880577, 47.113903, 56.666664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190987, 46.948242, 56.856930>,  <40.377232, 46.848846, 56.971088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.190987, 46.948242, 56.856930>,  <39.880577, 47.113903, 56.666664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.190987, 46.948242, 56.856930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591899, 0.217796, -0.776028,
		0.217796, 0.883766, 0.414153,
		0.776028, -0.414153, 0.475666,
		40.423794, 46.823997, 56.999630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440651, 47.567566, 56.677052>,  <39.880577, 47.113903, 56.666664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440651, 47.567566, 56.677052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577156, 47.191765, 56.688873>,  <40.659058, 46.966286, 56.695969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.577156, 47.191765, 56.688873>,  <40.440651, 47.567566, 56.677052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.577156, 47.191765, 56.688873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573075, 0.183031, -0.798802,
		0.745068, 0.289538, 0.600867,
		0.341261, -0.939504, 0.029556,
		40.679535, 46.909912, 56.697739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.185581, 47.651897, 56.681038>,  <40.440651, 47.567566, 56.677052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.185581, 47.651897, 56.681038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099953, 47.281952, 56.555305>,  <41.048576, 47.059986, 56.479866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.099953, 47.281952, 56.555305>,  <41.185581, 47.651897, 56.681038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.099953, 47.281952, 56.555305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711124, 0.073056, -0.699261,
		0.669683, -0.373221, 0.642052,
		-0.214073, -0.924862, -0.314331,
		41.035732, 47.004494, 56.461006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.762527, 47.425014, 56.417007>,  <41.185581, 47.651897, 56.681038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.762527, 47.425014, 56.417007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514549, 47.145760, 56.273750>,  <41.365761, 46.978207, 56.187798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.514549, 47.145760, 56.273750>,  <41.762527, 47.425014, 56.417007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514549, 47.145760, 56.273750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604593, -0.134096, -0.785166,
		0.500130, -0.703293, 0.505222,
		-0.619950, -0.698139, -0.358141,
		41.328564, 46.936317, 56.166309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.196907, 46.795017, 56.227970>,  <41.762527, 47.425014, 56.417007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.196907, 46.795017, 56.227970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868744, 46.788773, 55.999344>,  <41.671844, 46.785027, 55.862167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.868744, 46.788773, 55.999344>,  <42.196907, 46.795017, 56.227970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868744, 46.788773, 55.999344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570403, 0.046969, -0.820021,
		0.039651, -0.998774, -0.029626,
		-0.820407, -0.015616, -0.571567,
		41.622623, 46.784088, 55.827873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.324524, 46.303509, 55.766434>,  <42.196907, 46.795017, 56.227970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.324524, 46.303509, 55.766434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013245, 46.479568, 55.587250>,  <41.826477, 46.585205, 55.479740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.013245, 46.479568, 55.587250>,  <42.324524, 46.303509, 55.766434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.013245, 46.479568, 55.587250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484029, -0.034113, -0.874387,
		-0.400146, -0.897274, -0.186501,
		-0.778203, 0.440154, -0.447957,
		41.779785, 46.611614, 55.452862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.357582, 46.015301, 55.147560>,  <42.324524, 46.303509, 55.766434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.357582, 46.015301, 55.147560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143150, 46.349281, 55.097794>,  <42.014492, 46.549667, 55.067932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143150, 46.349281, 55.097794>,  <42.357582, 46.015301, 55.147560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143150, 46.349281, 55.097794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415236, 0.132490, -0.900014,
		-0.734981, -0.534142, -0.417726,
		-0.536080, 0.834948, -0.124418,
		41.982327, 46.599766, 55.060467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151794, 45.985874, 54.447136>,  <42.357582, 46.015301, 55.147560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151794, 45.985874, 54.447136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131012, 46.370926, 54.553448>,  <42.118542, 46.601959, 54.617237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131012, 46.370926, 54.553448>,  <42.151794, 45.985874, 54.447136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131012, 46.370926, 54.553448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208875, 0.270731, -0.939721,
		-0.976561, 0.006694, -0.215135,
		-0.051953, 0.962632, 0.265784,
		42.115425, 46.659714, 54.633183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.686604, 46.277798, 54.020306>,  <42.151794, 45.985874, 54.447136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.686604, 46.277798, 54.020306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920982, 46.570251, 54.160080>,  <42.061611, 46.745724, 54.243946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.920982, 46.570251, 54.160080>,  <41.686604, 46.277798, 54.020306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.920982, 46.570251, 54.160080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317577, 0.189538, -0.929096,
		-0.745528, 0.655374, -0.121133,
		0.585946, 0.731136, 0.349437,
		42.096767, 46.789593, 54.264912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.763592, 46.632332, 53.484062>,  <41.686604, 46.277798, 54.020306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.763592, 46.632332, 53.484062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027817, 46.810829, 53.725567>,  <42.186352, 46.917927, 53.870468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027817, 46.810829, 53.725567>,  <41.763592, 46.632332, 53.484062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027817, 46.810829, 53.725567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446299, 0.413274, -0.793739,
		-0.603718, 0.793772, 0.073836,
		0.660562, 0.446241, 0.603761,
		42.225986, 46.944702, 53.906696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825836, 47.369896, 53.246506>,  <41.763592, 46.632332, 53.484062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825836, 47.369896, 53.246506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153290, 47.232506, 53.430618>,  <42.349762, 47.150074, 53.541084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.153290, 47.232506, 53.430618>,  <41.825836, 47.369896, 53.246506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.153290, 47.232506, 53.430618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548210, 0.228479, -0.804527,
		0.171168, 0.910947, 0.375337,
		0.818637, -0.343473, 0.460282,
		42.398880, 47.129463, 53.568703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.370430, 47.834602, 53.194225>,  <41.825836, 47.369896, 53.246506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.370430, 47.834602, 53.194225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595528, 47.512321, 53.268158>,  <42.730587, 47.318954, 53.312515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.595528, 47.512321, 53.268158>,  <42.370430, 47.834602, 53.194225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.595528, 47.512321, 53.268158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522864, 0.173754, -0.834520,
		0.640260, 0.566262, 0.519052,
		0.562744, -0.805703, 0.184830,
		42.764351, 47.270611, 53.323608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052174, 47.973152, 52.965408>,  <42.370430, 47.834602, 53.194225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052174, 47.973152, 52.965408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101967, 47.582710, 53.036659>,  <43.131844, 47.348446, 53.079411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.101967, 47.582710, 53.036659>,  <43.052174, 47.973152, 52.965408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.101967, 47.582710, 53.036659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765979, -0.019577, -0.642568,
		0.630700, 0.216425, 0.745237,
		0.124479, -0.976103, 0.178124,
		43.139309, 47.289879, 53.090096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749504, 47.850605, 52.997856>,  <43.052174, 47.973152, 52.965408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749504, 47.850605, 52.997856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572895, 47.500526, 52.918781>,  <43.466930, 47.290478, 52.871338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.572895, 47.500526, 52.918781>,  <43.749504, 47.850605, 52.997856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.572895, 47.500526, 52.918781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715525, -0.210516, -0.666113,
		0.541367, -0.435554, 0.719176,
		-0.441527, -0.875200, -0.197684,
		43.440437, 47.237965, 52.859478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.318752, 47.325455, 52.984058>,  <43.749504, 47.850605, 52.997856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.318752, 47.325455, 52.984058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995567, 47.204376, 52.781845>,  <43.801655, 47.131729, 52.660519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995567, 47.204376, 52.781845>,  <44.318752, 47.325455, 52.984058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995567, 47.204376, 52.781845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579216, -0.250522, -0.775724,
		0.108165, -0.919571, 0.377742,
		-0.807966, -0.302701, -0.505533,
		43.753178, 47.113567, 52.630184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.477436, 46.672928, 52.817188>,  <44.318752, 47.325455, 52.984058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.477436, 46.672928, 52.817188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205250, 46.778519, 52.543755>,  <44.041939, 46.841873, 52.379696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.205250, 46.778519, 52.543755>,  <44.477436, 46.672928, 52.817188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.205250, 46.778519, 52.543755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565646, -0.403819, -0.719010,
		-0.465850, -0.875924, 0.125463,
		-0.680462, 0.263983, -0.683582,
		44.001110, 46.857712, 52.338680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372829, 46.052765, 52.369743>,  <44.477436, 46.672928, 52.817188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372829, 46.052765, 52.369743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199856, 46.323853, 52.131851>,  <44.096073, 46.486504, 51.989117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.199856, 46.323853, 52.131851>,  <44.372829, 46.052765, 52.369743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.199856, 46.323853, 52.131851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419039, -0.432976, -0.798084,
		-0.798378, -0.594332, -0.096757,
		-0.432433, 0.677718, -0.594727,
		44.070126, 46.527168, 51.953434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.086990, 45.599560, 51.823532>,  <44.372829, 46.052765, 52.369743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.086990, 45.599560, 51.823532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107632, 45.969353, 51.672447>,  <44.120018, 46.191231, 51.581799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.107632, 45.969353, 51.672447>,  <44.086990, 45.599560, 51.823532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.107632, 45.969353, 51.672447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204439, -0.379981, -0.902119,
		-0.977518, -0.030664, -0.208610,
		0.051606, 0.924485, -0.377708,
		44.123112, 46.246700, 51.559135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.663979, 45.593327, 51.119297>,  <44.086990, 45.599560, 51.823532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.663979, 45.593327, 51.119297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892540, 45.921280, 51.104904>,  <44.029678, 46.118050, 51.096268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.892540, 45.921280, 51.104904>,  <43.663979, 45.593327, 51.119297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.892540, 45.921280, 51.104904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239336, -0.208416, -0.948304,
		-0.784993, 0.533256, -0.315316,
		0.571406, 0.819879, -0.035977,
		44.063961, 46.167244, 51.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.613564, 45.905453, 50.412289>,  <43.663979, 45.593327, 51.119297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.613564, 45.905453, 50.412289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956444, 46.053680, 50.555336>,  <44.162170, 46.142616, 50.641167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.956444, 46.053680, 50.555336>,  <43.613564, 45.905453, 50.412289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.956444, 46.053680, 50.555336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391127, -0.016719, -0.920185,
		-0.335013, 0.928655, -0.159270,
		0.857197, 0.370569, 0.357621,
		44.213604, 46.164852, 50.662621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.814121, 46.629505, 49.954048>,  <43.613564, 45.905453, 50.412289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.814121, 46.629505, 49.954048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143253, 46.490990, 50.134285>,  <44.340733, 46.407883, 50.242428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.143253, 46.490990, 50.134285>,  <43.814121, 46.629505, 49.954048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143253, 46.490990, 50.134285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500086, 0.064609, -0.863562,
		0.269927, 0.935901, 0.226336,
		0.822832, -0.346286, 0.450592,
		44.390102, 46.387104, 50.269463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.403374, 47.048325, 49.734512>,  <43.814121, 46.629505, 49.954048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.403374, 47.048325, 49.734512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591896, 46.736832, 49.900139>,  <44.705009, 46.549934, 49.999516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.591896, 46.736832, 49.900139>,  <44.403374, 47.048325, 49.734512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.591896, 46.736832, 49.900139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602688, -0.058400, -0.795837,
		0.643924, 0.624634, 0.441807,
		0.471306, -0.778731, 0.414065,
		44.733288, 46.503212, 50.024357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.153084, 47.250526, 49.755184>,  <44.403374, 47.048325, 49.734512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.153084, 47.250526, 49.755184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110718, 46.853493, 49.779060>,  <45.085297, 46.615273, 49.793388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.110718, 46.853493, 49.779060>,  <45.153084, 47.250526, 49.755184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.110718, 46.853493, 49.779060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566253, -0.109551, -0.816919,
		0.817398, -0.052722, 0.573655,
		-0.105914, -0.992582, 0.059693,
		45.078945, 46.555717, 49.796967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.825947, 46.996910, 49.609280>,  <45.153084, 47.250526, 49.755184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.825947, 46.996910, 49.609280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594582, 46.673172, 49.568493>,  <45.455761, 46.478928, 49.544022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.594582, 46.673172, 49.568493>,  <45.825947, 46.996910, 49.609280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.594582, 46.673172, 49.568493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535565, -0.282488, -0.795846,
		0.615309, -0.514940, 0.596852,
		-0.578416, -0.809344, -0.101966,
		45.421059, 46.430370, 49.537903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.350731, 46.463799, 49.372810>,  <45.825947, 46.996910, 49.609280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.350731, 46.463799, 49.372810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978867, 46.338760, 49.294827>,  <45.755749, 46.263737, 49.248035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.978867, 46.338760, 49.294827>,  <46.350731, 46.463799, 49.372810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.978867, 46.338760, 49.294827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285510, -0.276872, -0.917511,
		0.232826, -0.908641, 0.346646,
		-0.929664, -0.312591, -0.194963,
		45.699966, 46.244984, 49.236336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376064, 45.808868, 49.088867>,  <46.350731, 46.463799, 49.372810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376064, 45.808868, 49.088867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028275, 45.965233, 48.968071>,  <45.819599, 46.059052, 48.895592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.028275, 45.965233, 48.968071>,  <46.376064, 45.808868, 49.088867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.028275, 45.965233, 48.968071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215108, -0.250716, -0.943859,
		-0.444681, -0.885624, 0.133903,
		-0.869475, 0.390912, -0.301993,
		45.767433, 46.082508, 48.877472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.985996, 45.276363, 48.746899>,  <46.376064, 45.808868, 49.088867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.985996, 45.276363, 48.746899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845940, 45.621613, 48.601341>,  <45.761906, 45.828762, 48.514008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.845940, 45.621613, 48.601341>,  <45.985996, 45.276363, 48.746899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.845940, 45.621613, 48.601341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105788, -0.349566, -0.930921,
		-0.930703, -0.364451, 0.031090,
		-0.350143, 0.863122, -0.363896,
		45.740898, 45.880550, 48.492172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.534206, 45.027885, 48.242538>,  <45.985996, 45.276363, 48.746899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.534206, 45.027885, 48.242538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601997, 45.408951, 48.141571>,  <45.642670, 45.637589, 48.080990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.601997, 45.408951, 48.141571>,  <45.534206, 45.027885, 48.242538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.601997, 45.408951, 48.141571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042127, -0.262893, -0.963905,
		-0.984634, 0.152724, -0.084686,
		0.169475, 0.952661, -0.252420,
		45.652840, 45.694748, 48.065845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.070293, 45.146709, 47.767990>,  <45.534206, 45.027885, 48.242538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.070293, 45.146709, 47.767990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343727, 45.432243, 47.707123>,  <45.507786, 45.603565, 47.670601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.343727, 45.432243, 47.707123>,  <45.070293, 45.146709, 47.767990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.343727, 45.432243, 47.707123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140918, -0.333643, -0.932108,
		-0.716141, 0.615729, -0.328664,
		0.683582, 0.713835, -0.152168,
		45.548801, 45.646393, 47.661472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859314, 45.437454, 47.097324>,  <45.070293, 45.146709, 47.767990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859314, 45.437454, 47.097324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245377, 45.501007, 47.180496>,  <45.477013, 45.539139, 47.230400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.245377, 45.501007, 47.180496>,  <44.859314, 45.437454, 47.097324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.245377, 45.501007, 47.180496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261597, -0.606513, -0.750806,
		0.006821, 0.779037, -0.626941,
		0.965153, 0.158885, 0.207931,
		45.534924, 45.548672, 47.242874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.053764, 46.055164, 46.740742>,  <44.859314, 45.437454, 47.097324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.053764, 46.055164, 46.740742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678314, 45.988564, 46.619911>,  <44.453045, 45.948601, 46.547413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.678314, 45.988564, 46.619911>,  <45.053764, 46.055164, 46.740742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.678314, 45.988564, 46.619911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343589, 0.374180, 0.861357,
		-0.030388, 0.912286, -0.408426,
		-0.938628, -0.166505, -0.302081,
		44.396725, 45.938610, 46.529285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.654865, 46.613335, 47.004311>,  <45.053764, 46.055164, 46.740742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.654865, 46.613335, 47.004311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371761, 46.342148, 46.924881>,  <44.201900, 46.179436, 46.877224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.371761, 46.342148, 46.924881>,  <44.654865, 46.613335, 47.004311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.371761, 46.342148, 46.924881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523618, 0.314744, 0.791682,
		-0.474236, 0.664298, -0.577761,
		-0.707760, -0.677970, -0.198575,
		44.159431, 46.138756, 46.865307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.964745, 46.983891, 47.184299>,  <44.654865, 46.613335, 47.004311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.964745, 46.983891, 47.184299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862049, 46.598251, 47.157177>,  <43.800430, 46.366867, 47.140903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.862049, 46.598251, 47.157177>,  <43.964745, 46.983891, 47.184299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.862049, 46.598251, 47.157177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661828, 0.124250, 0.739287,
		-0.704322, 0.234680, -0.669968,
		-0.256739, -0.964099, -0.067806,
		43.785027, 46.309021, 47.136837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206726, 47.053776, 47.243164>,  <43.964745, 46.983891, 47.184299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206726, 47.053776, 47.243164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276863, 46.664253, 47.301067>,  <43.318947, 46.430538, 47.335808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.276863, 46.664253, 47.301067>,  <43.206726, 47.053776, 47.243164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.276863, 46.664253, 47.301067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691557, -0.017178, 0.722117,
		-0.700716, -0.226728, -0.676455,
		0.175344, -0.973807, 0.144758,
		43.329468, 46.372112, 47.344494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.542206, 46.708855, 47.311359>,  <43.206726, 47.053776, 47.243164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.542206, 46.708855, 47.311359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797615, 46.459320, 47.491631>,  <42.950863, 46.309601, 47.599792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.797615, 46.459320, 47.491631>,  <42.542206, 46.708855, 47.311359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.797615, 46.459320, 47.491631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696047, -0.218282, 0.684011,
		-0.328333, -0.750456, -0.573596,
		0.638526, -0.623834, 0.450683,
		42.989174, 46.272171, 47.626835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.169258, 46.077351, 47.394436>,  <42.542206, 46.708855, 47.311359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.169258, 46.077351, 47.394436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468971, 46.081535, 47.659302>,  <42.648800, 46.084045, 47.818222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.468971, 46.081535, 47.659302>,  <42.169258, 46.077351, 47.394436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.468971, 46.081535, 47.659302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652137, -0.162413, 0.740499,
		0.115289, -0.986667, -0.114872,
		0.749284, 0.010459, 0.662167,
		42.693756, 46.084671, 47.857952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.895863, 45.569939, 47.881775>,  <42.169258, 46.077351, 47.394436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.895863, 45.569939, 47.881775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182335, 45.775307, 48.070869>,  <42.354218, 45.898529, 48.184326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.182335, 45.775307, 48.070869>,  <41.895863, 45.569939, 47.881775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.182335, 45.775307, 48.070869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525199, -0.049604, 0.849532,
		0.459621, -0.856700, 0.234125,
		0.716181, 0.513425, 0.472737,
		42.397190, 45.929333, 48.212692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925259, 45.267075, 48.520077>,  <41.895863, 45.569939, 47.881775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925259, 45.267075, 48.520077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058830, 45.643097, 48.547760>,  <42.138973, 45.868710, 48.564369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.058830, 45.643097, 48.547760>,  <41.925259, 45.267075, 48.520077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.058830, 45.643097, 48.547760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489025, 0.110010, 0.865305,
		0.805822, -0.322789, 0.496446,
		0.333925, 0.940056, 0.069204,
		42.159008, 45.925114, 48.568520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314243, 45.234478, 49.161587>,  <41.925259, 45.267075, 48.520077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314243, 45.234478, 49.161587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221378, 45.615646, 49.083576>,  <42.165661, 45.844349, 49.036770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.221378, 45.615646, 49.083576>,  <42.314243, 45.234478, 49.161587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.221378, 45.615646, 49.083576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350850, 0.104961, 0.930530,
		0.907196, 0.284458, 0.309966,
		-0.232162, 0.952925, -0.195023,
		42.151730, 45.901524, 49.025070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.437325, 45.586048, 49.752151>,  <42.314243, 45.234478, 49.161587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.437325, 45.586048, 49.752151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199974, 45.838890, 49.552818>,  <42.057564, 45.990597, 49.433216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.199974, 45.838890, 49.552818>,  <42.437325, 45.586048, 49.752151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.199974, 45.838890, 49.552818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461390, 0.240199, 0.854063,
		0.659561, 0.736711, 0.149119,
		-0.593379, 0.632109, -0.498337,
		42.021961, 46.028522, 49.403316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260174, 46.277889, 50.167728>,  <42.437325, 45.586048, 49.752151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260174, 46.277889, 50.167728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971825, 46.289391, 49.890739>,  <41.798817, 46.296291, 49.724548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.971825, 46.289391, 49.890739>,  <42.260174, 46.277889, 50.167728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.971825, 46.289391, 49.890739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677271, 0.182866, 0.712646,
		0.147121, 0.982717, -0.112348,
		-0.720874, 0.028755, -0.692470,
		41.755562, 46.298016, 49.682999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.888599, 46.931446, 50.220268>,  <42.260174, 46.277889, 50.167728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.888599, 46.931446, 50.220268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631310, 46.698700, 50.021194>,  <41.476936, 46.559052, 49.901749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.631310, 46.698700, 50.021194>,  <41.888599, 46.931446, 50.220268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.631310, 46.698700, 50.021194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685556, 0.148195, 0.712777,
		-0.340988, 0.799668, -0.494225,
		-0.643227, -0.581867, -0.497685,
		41.438343, 46.524139, 49.871887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257191, 47.330299, 50.079182>,  <41.888599, 46.931446, 50.220268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257191, 47.330299, 50.079182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141640, 46.947487, 50.069107>,  <41.072311, 46.717800, 50.063061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.141640, 46.947487, 50.069107>,  <41.257191, 47.330299, 50.079182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.141640, 46.947487, 50.069107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741230, 0.206930, 0.638559,
		-0.605912, 0.203131, -0.769161,
		-0.288874, -0.957036, -0.025185,
		41.054977, 46.660378, 50.061550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.442104, 47.315163, 50.053524>,  <41.257191, 47.330299, 50.079182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.442104, 47.315163, 50.053524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578476, 46.957680, 50.170181>,  <40.660297, 46.743191, 50.240173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.578476, 46.957680, 50.170181>,  <40.442104, 47.315163, 50.053524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.578476, 46.957680, 50.170181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627886, 0.014412, 0.778172,
		-0.699662, -0.448418, -0.556233,
		0.340930, -0.893708, 0.291639,
		40.680756, 46.689568, 50.257671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887379, 46.986553, 50.101566>,  <40.442104, 47.315163, 50.053524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887379, 46.986553, 50.101566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170387, 46.833183, 50.339020>,  <40.340195, 46.741161, 50.481491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170387, 46.833183, 50.339020>,  <39.887379, 46.986553, 50.101566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170387, 46.833183, 50.339020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592223, 0.136643, 0.794104,
		-0.385594, -0.913408, -0.130395,
		0.707523, -0.383424, 0.593630,
		40.382645, 46.718155, 50.517109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.453564, 46.623013, 50.515881>,  <39.887379, 46.986553, 50.101566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.453564, 46.623013, 50.515881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798473, 46.619347, 50.718426>,  <40.005417, 46.617149, 50.839954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.798473, 46.619347, 50.718426>,  <39.453564, 46.623013, 50.515881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798473, 46.619347, 50.718426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503474, -0.123733, 0.855105,
		0.054819, -0.992273, -0.111305,
		0.862270, -0.009163, 0.506367,
		40.057156, 46.616596, 50.870335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459747, 46.085552, 51.008118>,  <39.453564, 46.623013, 50.515881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459747, 46.085552, 51.008118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738884, 46.339134, 51.141457>,  <39.906364, 46.491283, 51.221462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738884, 46.339134, 51.141457>,  <39.459747, 46.085552, 51.008118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738884, 46.339134, 51.141457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281410, -0.185313, 0.941524,
		0.658658, -0.750840, 0.049083,
		0.697838, 0.633954, 0.333352,
		39.948235, 46.529320, 51.241463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.681492, 45.847759, 51.669247>,  <39.459747, 46.085552, 51.008118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.681492, 45.847759, 51.669247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808884, 46.225922, 51.641586>,  <39.885319, 46.452820, 51.624992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.808884, 46.225922, 51.641586>,  <39.681492, 45.847759, 51.669247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.808884, 46.225922, 51.641586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188454, 0.134637, 0.972809,
		0.929009, -0.296784, 0.221044,
		0.318475, 0.945406, -0.069149,
		39.904427, 46.509544, 51.620842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.154037, 45.968166, 52.222111>,  <39.681492, 45.847759, 51.669247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.154037, 45.968166, 52.222111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049786, 46.349457, 52.160881>,  <39.987236, 46.578232, 52.124142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049786, 46.349457, 52.160881>,  <40.154037, 45.968166, 52.222111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049786, 46.349457, 52.160881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031453, 0.166856, 0.985479,
		0.964927, 0.252028, -0.073469,
		-0.260627, 0.953227, -0.153076,
		39.971596, 46.635426, 52.114960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618904, 46.275578, 52.586170>,  <40.154037, 45.968166, 52.222111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618904, 46.275578, 52.586170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299564, 46.510201, 52.531624>,  <40.107960, 46.650974, 52.498898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.299564, 46.510201, 52.531624>,  <40.618904, 46.275578, 52.586170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.299564, 46.510201, 52.531624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104230, 0.088439, 0.990613,
		0.593111, 0.805065, -0.009468,
		-0.798345, 0.586557, -0.136366,
		40.060062, 46.686169, 52.490715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723839, 46.874981, 53.016102>,  <40.618904, 46.275578, 52.586170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723839, 46.874981, 53.016102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334469, 46.866455, 52.924904>,  <40.100845, 46.861340, 52.870186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334469, 46.866455, 52.924904>,  <40.723839, 46.874981, 53.016102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334469, 46.866455, 52.924904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222622, -0.145048, 0.964054,
		-0.053622, 0.989195, 0.136448,
		-0.973429, -0.021318, -0.227995,
		40.042439, 46.860062, 52.856506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.443531, 47.190762, 53.611671>,  <40.723839, 46.874981, 53.016102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.443531, 47.190762, 53.611671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138580, 46.993416, 53.444164>,  <39.955608, 46.875008, 53.343658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138580, 46.993416, 53.444164>,  <40.443531, 47.190762, 53.611671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138580, 46.993416, 53.444164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339010, -0.246728, 0.907853,
		-0.551228, 0.834094, 0.020843,
		-0.762378, -0.493368, -0.418770,
		39.909866, 46.845406, 53.318535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877628, 47.469803, 54.022247>,  <40.443531, 47.190762, 53.611671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877628, 47.469803, 54.022247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766411, 47.118591, 53.866417>,  <39.699680, 46.907864, 53.772919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.766411, 47.118591, 53.866417>,  <39.877628, 47.469803, 54.022247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.766411, 47.118591, 53.866417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255621, -0.323307, 0.911115,
		-0.925933, 0.352909, -0.134549,
		-0.278040, -0.878025, -0.389572,
		39.682999, 46.855183, 53.749546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.143963, 47.341244, 54.271591>,  <39.877628, 47.469803, 54.022247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.143963, 47.341244, 54.271591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315697, 46.988853, 54.192043>,  <39.418736, 46.777420, 54.144314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.315697, 46.988853, 54.192043>,  <39.143963, 47.341244, 54.271591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.315697, 46.988853, 54.192043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309640, -0.350429, 0.883925,
		-0.848408, -0.317922, -0.423237,
		0.429333, -0.880980, -0.198865,
		39.444496, 46.724560, 54.132385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673973, 46.851608, 54.441582>,  <39.143963, 47.341244, 54.271591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673973, 46.851608, 54.441582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990334, 46.609795, 54.403595>,  <39.180149, 46.464706, 54.380802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.990334, 46.609795, 54.403595>,  <38.673973, 46.851608, 54.441582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.990334, 46.609795, 54.403595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296994, -0.514881, 0.804172,
		-0.535053, -0.607808, -0.586760,
		0.790894, -0.604539, -0.094973,
		39.227604, 46.428432, 54.375103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.380836, 46.205601, 54.335251>,  <38.673973, 46.851608, 54.441582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.380836, 46.205601, 54.335251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744202, 46.126549, 54.482613>,  <38.962223, 46.079117, 54.571030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.744202, 46.126549, 54.482613>,  <38.380836, 46.205601, 54.335251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744202, 46.126549, 54.482613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411415, -0.579156, 0.703787,
		0.074279, -0.790900, -0.607421,
		0.908416, -0.197626, 0.368408,
		39.016727, 46.067261, 54.593136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.301464, 45.546288, 54.571339>,  <38.380836, 46.205601, 54.335251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.301464, 45.546288, 54.571339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646278, 45.657799, 54.740658>,  <38.853168, 45.724705, 54.842251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646278, 45.657799, 54.740658>,  <38.301464, 45.546288, 54.571339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646278, 45.657799, 54.740658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184031, -0.606006, 0.773880,
		0.472260, -0.745011, -0.471094,
		0.862034, 0.278776, 0.423297,
		38.904888, 45.741432, 54.867645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708084, 44.924965, 54.959976>,  <38.301464, 45.546288, 54.571339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708084, 44.924965, 54.959976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849297, 45.251709, 55.142452>,  <38.934025, 45.447754, 55.251938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849297, 45.251709, 55.142452>,  <38.708084, 44.924965, 54.959976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849297, 45.251709, 55.142452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103432, -0.450521, 0.886754,
		0.929876, -0.360239, -0.074561,
		0.353035, 0.816859, 0.456188,
		38.955208, 45.496765, 55.279308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.260868, 44.697567, 55.533173>,  <38.708084, 44.924965, 54.959976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.260868, 44.697567, 55.533173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124260, 45.060112, 55.632664>,  <39.042294, 45.277637, 55.692360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.124260, 45.060112, 55.632664>,  <39.260868, 44.697567, 55.533173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.124260, 45.060112, 55.632664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066241, -0.287195, 0.955579,
		0.937536, 0.309877, 0.158122,
		-0.341524, 0.906364, 0.248729,
		39.021801, 45.332020, 55.707283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306770, 44.621716, 56.209255>,  <39.260868, 44.697567, 55.533173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306770, 44.621716, 56.209255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095802, 44.961418, 56.199577>,  <38.969219, 45.165241, 56.193771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095802, 44.961418, 56.199577>,  <39.306770, 44.621716, 56.209255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095802, 44.961418, 56.199577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258149, -0.133056, 0.956899,
		0.809434, 0.510938, 0.289412,
		-0.527423, 0.849258, -0.024198,
		38.937576, 45.216194, 56.192318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380413, 44.915771, 56.894436>,  <39.306770, 44.621716, 56.209255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380413, 44.915771, 56.894436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078239, 45.127487, 56.739944>,  <38.896935, 45.254517, 56.647251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.078239, 45.127487, 56.739944>,  <39.380413, 44.915771, 56.894436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.078239, 45.127487, 56.739944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498436, -0.081606, 0.863077,
		0.425297, 0.844509, 0.325464,
		-0.755436, 0.529287, -0.386227,
		38.851608, 45.286274, 56.624077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.194691, 45.418652, 57.466534>,  <39.380413, 44.915771, 56.894436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.194691, 45.418652, 57.466534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881935, 45.359489, 57.224285>,  <38.694283, 45.323994, 57.078934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.881935, 45.359489, 57.224285>,  <39.194691, 45.418652, 57.466534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.881935, 45.359489, 57.224285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621967, 0.118708, 0.773993,
		-0.042582, 0.981852, -0.184806,
		-0.781885, -0.147901, -0.605625,
		38.647369, 45.315121, 57.042599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550377, 45.859833, 57.652542>,  <39.194691, 45.418652, 57.466534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550377, 45.859833, 57.652542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381950, 45.572128, 57.431503>,  <38.280895, 45.399506, 57.298878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381950, 45.572128, 57.431503>,  <38.550377, 45.859833, 57.652542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381950, 45.572128, 57.431503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732200, -0.090037, 0.675112,
		-0.535336, 0.688881, -0.488731,
		-0.421068, -0.719261, -0.552599,
		38.255630, 45.356350, 57.265724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.834484, 45.977509, 57.608543>,  <38.550377, 45.859833, 57.652542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.834484, 45.977509, 57.608543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858051, 45.584145, 57.539928>,  <37.872192, 45.348125, 57.498760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858051, 45.584145, 57.539928>,  <37.834484, 45.977509, 57.608543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858051, 45.584145, 57.539928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748251, -0.157248, 0.644510,
		-0.660794, 0.090382, -0.745105,
		0.058915, -0.983415, -0.171537,
		37.875725, 45.289120, 57.488468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093559, 45.702034, 57.596275>,  <37.834484, 45.977509, 57.608543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093559, 45.702034, 57.596275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336632, 45.389038, 57.650589>,  <37.482475, 45.201241, 57.683178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336632, 45.389038, 57.650589>,  <37.093559, 45.702034, 57.596275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336632, 45.389038, 57.650589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621949, -0.362563, 0.694066,
		-0.493868, -0.506221, -0.706990,
		0.607679, -0.782488, 0.135785,
		37.518936, 45.154293, 57.691326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.662796, 45.139122, 57.708576>,  <37.093559, 45.702034, 57.596275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.662796, 45.139122, 57.708576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010422, 44.973885, 57.817444>,  <37.218998, 44.874741, 57.882763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.010422, 44.973885, 57.817444>,  <36.662796, 45.139122, 57.708576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.010422, 44.973885, 57.817444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465234, -0.495474, 0.733528,
		-0.168167, -0.764105, -0.622787,
		0.869067, -0.413097, 0.272166,
		37.271141, 44.849957, 57.899094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.677029, 44.339996, 57.673500>,  <36.662796, 45.139122, 57.708576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.677029, 44.339996, 57.673500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934788, 44.471565, 57.949635>,  <37.089443, 44.550507, 58.115314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.934788, 44.471565, 57.949635>,  <36.677029, 44.339996, 57.673500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934788, 44.471565, 57.949635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547504, -0.431781, 0.716802,
		0.533847, -0.839865, -0.098151,
		0.644396, 0.328925, 0.690334,
		37.128105, 44.570244, 58.156734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854439, 43.796146, 58.143604>,  <36.677029, 44.339996, 57.673500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854439, 43.796146, 58.143604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895439, 44.128197, 58.362835>,  <36.920040, 44.327427, 58.494373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.895439, 44.128197, 58.362835>,  <36.854439, 43.796146, 58.143604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895439, 44.128197, 58.362835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541091, -0.415807, 0.730976,
		0.834694, -0.371487, 0.406550,
		0.102501, 0.830122, 0.548080,
		36.926189, 44.377232, 58.527260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321583, 43.353817, 58.466423>,  <36.854439, 43.796146, 58.143604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321583, 43.353817, 58.466423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959362, 43.218658, 58.363819>,  <35.742027, 43.137562, 58.302258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.959362, 43.218658, 58.363819>,  <36.321583, 43.353817, 58.466423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959362, 43.218658, 58.363819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237506, 0.097192, -0.966512,
		0.351512, -0.936151, -0.007760,
		-0.905555, -0.337897, -0.256506,
		35.687695, 43.117290, 58.286869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.418736, 42.979103, 57.824524>,  <36.321583, 43.353817, 58.466423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.418736, 42.979103, 57.824524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028252, 43.065826, 57.824898>,  <35.793961, 43.117859, 57.825123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.028252, 43.065826, 57.824898>,  <36.418736, 42.979103, 57.824524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028252, 43.065826, 57.824898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021748, 0.102224, -0.994524,
		-0.215717, -0.970847, -0.104507,
		-0.976214, 0.216809, 0.000938,
		35.735386, 43.130867, 57.825180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.178383, 42.533226, 57.314503>,  <36.418736, 42.979103, 57.824524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.178383, 42.533226, 57.314503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896927, 42.814705, 57.353882>,  <35.728054, 42.983593, 57.377510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896927, 42.814705, 57.353882>,  <36.178383, 42.533226, 57.314503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896927, 42.814705, 57.353882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083613, 0.219588, -0.972003,
		-0.705618, -0.675711, -0.213349,
		-0.703642, 0.703701, 0.098447,
		35.685833, 43.025814, 57.383415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815517, 42.444519, 56.729630>,  <36.178383, 42.533226, 57.314503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815517, 42.444519, 56.729630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769852, 42.818817, 56.863102>,  <35.742455, 43.043396, 56.943184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769852, 42.818817, 56.863102>,  <35.815517, 42.444519, 56.729630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769852, 42.818817, 56.863102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077355, 0.343228, -0.936061,
		-0.990446, -0.081050, -0.111568,
		-0.114161, 0.935748, 0.333679,
		35.735603, 43.099541, 56.963207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.421379, 42.724262, 56.273952>,  <35.815517, 42.444519, 56.729630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.421379, 42.724262, 56.273952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581306, 43.035141, 56.468315>,  <35.677265, 43.221668, 56.584930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.581306, 43.035141, 56.468315>,  <35.421379, 42.724262, 56.273952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.581306, 43.035141, 56.468315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134566, 0.474603, -0.869853,
		-0.906661, 0.413172, 0.085172,
		0.399822, 0.777200, 0.485903,
		35.701252, 43.268303, 56.614086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052174, 43.281555, 56.058716>,  <35.421379, 42.724262, 56.273952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052174, 43.281555, 56.058716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406601, 43.422676, 56.178993>,  <35.619259, 43.507347, 56.251160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.406601, 43.422676, 56.178993>,  <35.052174, 43.281555, 56.058716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.406601, 43.422676, 56.178993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134830, 0.424480, -0.895342,
		-0.443515, 0.833876, 0.328550,
		0.886068, 0.352799, 0.300695,
		35.672421, 43.528515, 56.269203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.021561, 43.889893, 55.612942>,  <35.052174, 43.281555, 56.058716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.021561, 43.889893, 55.612942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391701, 43.831787, 55.753017>,  <35.613785, 43.796925, 55.837063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.391701, 43.831787, 55.753017>,  <35.021561, 43.889893, 55.612942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.391701, 43.831787, 55.753017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377126, 0.258046, -0.889488,
		0.038843, 0.955150, 0.293564,
		0.925347, -0.145261, 0.350189,
		35.669304, 43.788208, 55.858074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.338741, 44.343971, 55.301624>,  <35.021561, 43.889893, 55.612942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.338741, 44.343971, 55.301624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644188, 44.118370, 55.427345>,  <35.827457, 43.983009, 55.502777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644188, 44.118370, 55.427345>,  <35.338741, 44.343971, 55.301624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644188, 44.118370, 55.427345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514223, 0.236860, -0.824301,
		0.390467, 0.791071, 0.470895,
		0.763617, -0.564007, 0.314301,
		35.873272, 43.949169, 55.521637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942726, 44.756554, 55.188099>,  <35.338741, 44.343971, 55.301624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942726, 44.756554, 55.188099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099628, 44.389847, 55.218224>,  <36.193768, 44.169823, 55.236298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.099628, 44.389847, 55.218224>,  <35.942726, 44.756554, 55.188099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.099628, 44.389847, 55.218224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483450, 0.135813, -0.864772,
		0.782569, 0.375618, 0.496485,
		0.392253, -0.916770, 0.075310,
		36.217304, 44.114815, 55.240818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.670887, 44.780830, 55.187096>,  <35.942726, 44.756554, 55.188099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.670887, 44.780830, 55.187096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552979, 44.422379, 55.054398>,  <36.482231, 44.207306, 54.974777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.552979, 44.422379, 55.054398>,  <36.670887, 44.780830, 55.187096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552979, 44.422379, 55.054398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540023, 0.130194, -0.831520,
		0.788342, -0.424264, 0.445553,
		-0.294775, -0.896130, -0.331749,
		36.464546, 44.153538, 54.954872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.319332, 44.466400, 55.013554>,  <36.670887, 44.780830, 55.187096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.319332, 44.466400, 55.013554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035057, 44.257614, 54.824886>,  <36.864491, 44.132343, 54.711685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.035057, 44.257614, 54.824886>,  <37.319332, 44.466400, 55.013554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.035057, 44.257614, 54.824886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561234, -0.016402, -0.827495,
		0.424190, -0.852807, 0.304603,
		-0.710689, -0.521969, -0.471667,
		36.821850, 44.101025, 54.683388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.571617, 43.810398, 54.796360>,  <37.319332, 44.466400, 55.013554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.571617, 43.810398, 54.796360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257637, 43.888229, 54.561077>,  <37.069248, 43.934929, 54.419907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.257637, 43.888229, 54.561077>,  <37.571617, 43.810398, 54.796360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.257637, 43.888229, 54.561077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588365, -0.063347, -0.806110,
		-0.194112, -0.978840, -0.064759,
		-0.784950, 0.194578, -0.588212,
		37.022152, 43.946602, 54.384613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.653328, 43.217461, 54.242481>,  <37.571617, 43.810398, 54.796360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.653328, 43.217461, 54.242481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432991, 43.524834, 54.112198>,  <37.300789, 43.709259, 54.034027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.432991, 43.524834, 54.112198>,  <37.653328, 43.217461, 54.242481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.432991, 43.524834, 54.112198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427077, -0.075767, -0.901035,
		-0.717063, -0.635429, -0.286445,
		-0.550841, 0.768433, -0.325707,
		37.267738, 43.755363, 54.014484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601711, 43.033230, 53.596909>,  <37.653328, 43.217461, 54.242481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601711, 43.033230, 53.596909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470543, 43.410873, 53.583511>,  <37.391842, 43.637459, 53.575474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.470543, 43.410873, 53.583511>,  <37.601711, 43.033230, 53.596909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.470543, 43.410873, 53.583511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341144, 0.085282, -0.936135,
		-0.880960, -0.318402, -0.350044,
		-0.327919, 0.944112, -0.033490,
		37.372166, 43.694107, 53.573463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227188, 43.032139, 52.974155>,  <37.601711, 43.033230, 53.596909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.227188, 43.032139, 52.974155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325737, 43.408554, 53.066887>,  <37.384869, 43.634403, 53.122524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325737, 43.408554, 53.066887>,  <37.227188, 43.032139, 52.974155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325737, 43.408554, 53.066887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281036, 0.159555, -0.946341,
		-0.927533, 0.298308, -0.225156,
		0.246376, 0.941039, 0.231828,
		37.399651, 43.690865, 53.136436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.156364, 43.314720, 52.374382>,  <37.227188, 43.032139, 52.974155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.156364, 43.314720, 52.374382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321548, 43.618309, 52.575745>,  <37.420658, 43.800461, 52.696564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.321548, 43.618309, 52.575745>,  <37.156364, 43.314720, 52.374382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321548, 43.618309, 52.575745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339861, 0.384394, -0.858333,
		-0.844960, 0.525549, -0.099205,
		0.412962, 0.758973, 0.503411,
		37.445438, 43.846001, 52.726768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.020584, 43.898643, 52.038536>,  <37.156364, 43.314720, 52.374382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.020584, 43.898643, 52.038536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351067, 44.020256, 52.228256>,  <37.549355, 44.093224, 52.342087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.351067, 44.020256, 52.228256>,  <37.020584, 43.898643, 52.038536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.351067, 44.020256, 52.228256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366878, 0.348545, -0.862506,
		-0.427540, 0.886613, 0.176428,
		0.826202, 0.304028, 0.474296,
		37.598927, 44.111465, 52.370544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238945, 44.536873, 51.633987>,  <37.020584, 43.898643, 52.038536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238945, 44.536873, 51.633987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572166, 44.439621, 51.832748>,  <37.772099, 44.381271, 51.952007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.572166, 44.439621, 51.832748>,  <37.238945, 44.536873, 51.633987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.572166, 44.439621, 51.832748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553140, 0.353165, -0.754527,
		0.007957, 0.903418, 0.428688,
		0.833051, -0.243128, 0.496906,
		37.822083, 44.366684, 51.981819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730194, 45.063465, 51.520023>,  <37.238945, 44.536873, 51.633987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730194, 45.063465, 51.520023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967087, 44.765083, 51.641884>,  <38.109222, 44.586056, 51.715000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967087, 44.765083, 51.641884>,  <37.730194, 45.063465, 51.520023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967087, 44.765083, 51.641884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655172, 0.225704, -0.720976,
		0.469053, 0.626586, 0.622398,
		0.592231, -0.745954, 0.304655,
		38.144756, 44.541298, 51.733280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432697, 45.353874, 51.602154>,  <37.730194, 45.063465, 51.520023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.432697, 45.353874, 51.602154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455315, 44.957336, 51.554756>,  <38.468884, 44.719414, 51.526318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.455315, 44.957336, 51.554756>,  <38.432697, 45.353874, 51.602154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455315, 44.957336, 51.554756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658587, 0.126231, -0.741842,
		0.750378, -0.036094, 0.660023,
		0.056539, -0.991344, -0.118492,
		38.472275, 44.659935, 51.519207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237984, 45.242001, 51.449982>,  <38.432697, 45.353874, 51.602154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237984, 45.242001, 51.449982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005836, 44.942673, 51.321491>,  <38.866547, 44.763077, 51.244396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.005836, 44.942673, 51.321491>,  <39.237984, 45.242001, 51.449982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.005836, 44.942673, 51.321491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584269, -0.107856, -0.804361,
		0.567277, -0.654506, 0.499819,
		-0.580368, -0.748324, -0.321223,
		38.831726, 44.718174, 51.225124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.706684, 44.783150, 51.079304>,  <39.237984, 45.242001, 51.449982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.706684, 44.783150, 51.079304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349571, 44.680672, 50.931087>,  <39.135303, 44.619186, 50.842155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.349571, 44.680672, 50.931087>,  <39.706684, 44.783150, 51.079304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349571, 44.680672, 50.931087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407892, -0.110593, -0.906308,
		0.191211, -0.960278, 0.203235,
		-0.892784, -0.256194, -0.370543,
		39.081738, 44.603813, 50.819923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798817, 44.188889, 50.633186>,  <39.706684, 44.783150, 51.079304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798817, 44.188889, 50.633186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455811, 44.354790, 50.511429>,  <39.250008, 44.454330, 50.438374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.455811, 44.354790, 50.511429>,  <39.798817, 44.188889, 50.633186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455811, 44.354790, 50.511429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219203, -0.240715, -0.945519,
		-0.465430, -0.877516, 0.115500,
		-0.857511, 0.414755, -0.304390,
		39.198559, 44.479218, 50.420113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.579536, 43.763256, 50.057140>,  <39.798817, 44.188889, 50.633186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.579536, 43.763256, 50.057140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379219, 44.108917, 50.037384>,  <39.259029, 44.316315, 50.025532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379219, 44.108917, 50.037384>,  <39.579536, 43.763256, 50.057140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379219, 44.108917, 50.037384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099416, 0.000746, -0.995046,
		-0.859837, -0.503224, -0.086285,
		-0.500795, 0.864156, -0.049387,
		39.228981, 44.368164, 50.022568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137699, 43.710358, 49.389420>,  <39.579536, 43.763256, 50.057140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137699, 43.710358, 49.389420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160339, 44.101440, 49.470295>,  <39.173923, 44.336090, 49.518822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.160339, 44.101440, 49.470295>,  <39.137699, 43.710358, 49.389420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160339, 44.101440, 49.470295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229911, 0.184312, -0.955600,
		-0.971565, 0.100571, -0.214354,
		0.056598, 0.977709, 0.202193,
		39.177319, 44.394753, 49.530952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822437, 43.980804, 48.820911>,  <39.137699, 43.710358, 49.389420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822437, 43.980804, 48.820911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029282, 44.284134, 48.979679>,  <39.153389, 44.466129, 49.074940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029282, 44.284134, 48.979679>,  <38.822437, 43.980804, 48.820911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029282, 44.284134, 48.979679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305266, 0.269843, -0.913234,
		-0.799631, 0.593410, -0.091950,
		0.517111, 0.758320, 0.396923,
		39.184414, 44.511631, 49.098755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.684689, 44.502022, 48.420403>,  <38.822437, 43.980804, 48.820911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.684689, 44.502022, 48.420403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015148, 44.633652, 48.603348>,  <39.213425, 44.712631, 48.713116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.015148, 44.633652, 48.603348>,  <38.684689, 44.502022, 48.420403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.015148, 44.633652, 48.603348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376859, 0.280717, -0.882709,
		-0.418869, 0.901613, 0.107900,
		0.826151, 0.329077, 0.457365,
		39.262993, 44.732376, 48.740559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844524, 45.069656, 48.134121>,  <38.684689, 44.502022, 48.420403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844524, 45.069656, 48.134121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202740, 44.960266, 48.274529>,  <39.417671, 44.894634, 48.358772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.202740, 44.960266, 48.274529>,  <38.844524, 45.069656, 48.134121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202740, 44.960266, 48.274529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401892, 0.158463, -0.901872,
		0.191013, 0.948737, 0.251816,
		0.895543, -0.273472, 0.351021,
		39.471401, 44.878223, 48.379833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346756, 45.531754, 47.956589>,  <38.844524, 45.069656, 48.134121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346756, 45.531754, 47.956589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511868, 45.172096, 48.014778>,  <39.610935, 44.956303, 48.049690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.511868, 45.172096, 48.014778>,  <39.346756, 45.531754, 47.956589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.511868, 45.172096, 48.014778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427829, 0.050398, -0.902453,
		0.804101, 0.434750, 0.405481,
		0.412777, -0.899140, 0.145473,
		39.635700, 44.902355, 48.058418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.934937, 45.671124, 47.670761>,  <39.346756, 45.531754, 47.956589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.934937, 45.671124, 47.670761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909645, 45.273972, 47.711136>,  <39.894470, 45.035679, 47.735363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909645, 45.273972, 47.711136>,  <39.934937, 45.671124, 47.670761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909645, 45.273972, 47.711136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522856, -0.119107, -0.844059,
		0.850073, -0.000594, 0.526665,
		-0.063231, -0.992881, 0.100939,
		39.890675, 44.976109, 47.741417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585552, 45.385670, 47.465073>,  <39.934937, 45.671124, 47.670761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585552, 45.385670, 47.465073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348953, 45.063705, 47.446106>,  <40.206993, 44.870525, 47.434727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.348953, 45.063705, 47.446106>,  <40.585552, 45.385670, 47.465073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.348953, 45.063705, 47.446106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543461, -0.354538, -0.760890,
		0.595639, -0.475831, 0.647146,
		-0.591493, -0.804915, -0.047419,
		40.171505, 44.822231, 47.431881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041321, 44.843246, 47.384182>,  <40.585552, 45.385670, 47.465073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041321, 44.843246, 47.384182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694000, 44.704689, 47.242161>,  <40.485607, 44.621555, 47.156948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694000, 44.704689, 47.242161>,  <41.041321, 44.843246, 47.384182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694000, 44.704689, 47.242161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474694, -0.372578, -0.797403,
		0.143926, -0.860930, 0.487939,
		-0.868303, -0.346389, -0.355055,
		40.433510, 44.600773, 47.135643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.135841, 44.060444, 47.262699>,  <41.041321, 44.843246, 47.384182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.135841, 44.060444, 47.262699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824509, 44.162651, 47.033298>,  <40.637707, 44.223976, 46.895660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824509, 44.162651, 47.033298>,  <41.135841, 44.060444, 47.262699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824509, 44.162651, 47.033298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459159, -0.391336, -0.797515,
		-0.428217, -0.884060, 0.187264,
		-0.778334, 0.255525, -0.573501,
		40.591007, 44.239307, 46.861248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035286, 43.502674, 46.821255>,  <41.135841, 44.060444, 47.262699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035286, 43.502674, 46.821255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860039, 43.801994, 46.622017>,  <40.754890, 43.981586, 46.502472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860039, 43.801994, 46.622017>,  <41.035286, 43.502674, 46.821255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860039, 43.801994, 46.622017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510755, -0.248751, -0.822953,
		-0.739719, -0.614954, -0.273217,
		-0.438115, 0.748301, -0.498097,
		40.728603, 44.026485, 46.472588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.645813, 43.184494, 46.212296>,  <41.035286, 43.502674, 46.821255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.645813, 43.184494, 46.212296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730694, 43.565804, 46.126286>,  <40.781620, 43.794590, 46.074680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730694, 43.565804, 46.126286>,  <40.645813, 43.184494, 46.212296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730694, 43.565804, 46.126286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413696, -0.286975, -0.864003,
		-0.885340, 0.094388, -0.455263,
		0.212200, 0.953276, -0.215023,
		40.794353, 43.851788, 46.061779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674557, 43.149483, 45.467422>,  <40.645813, 43.184494, 46.212296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674557, 43.149483, 45.467422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825584, 43.513969, 45.533302>,  <40.916199, 43.732662, 45.572830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.825584, 43.513969, 45.533302>,  <40.674557, 43.149483, 45.467422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825584, 43.513969, 45.533302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573523, -0.090479, -0.814178,
		-0.726991, 0.401867, -0.556765,
		0.377566, 0.911217, 0.164702,
		40.938854, 43.787334, 45.582714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.529720, 43.558216, 44.840408>,  <40.674557, 43.149483, 45.467422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.529720, 43.558216, 44.840408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844402, 43.721947, 45.025253>,  <41.033211, 43.820183, 45.136162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844402, 43.721947, 45.025253>,  <40.529720, 43.558216, 44.840408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844402, 43.721947, 45.025253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566525, -0.181326, -0.803847,
		-0.245241, 0.894189, -0.374543,
		0.786705, 0.409324, 0.462112,
		41.080414, 43.844746, 45.163887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.848305, 44.063534, 44.387547>,  <40.529720, 43.558216, 44.840408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.848305, 44.063534, 44.387547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143150, 44.008919, 44.652279>,  <41.320057, 43.976151, 44.811119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.143150, 44.008919, 44.652279>,  <40.848305, 44.063534, 44.387547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.143150, 44.008919, 44.652279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648465, -0.132658, -0.749596,
		0.190147, 0.981712, -0.009242,
		0.737114, -0.136540, 0.661831,
		41.364285, 43.967957, 44.850826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.283649, 44.571678, 44.219044>,  <40.848305, 44.063534, 44.387547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.283649, 44.571678, 44.219044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491016, 44.298241, 44.424541>,  <41.615437, 44.134178, 44.547840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.491016, 44.298241, 44.424541>,  <41.283649, 44.571678, 44.219044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.491016, 44.298241, 44.424541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682973, -0.030525, -0.729805,
		0.514576, 0.729220, 0.451055,
		0.518420, -0.683598, 0.513745,
		41.646542, 44.093163, 44.578667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.978561, 44.841476, 44.451050>,  <41.283649, 44.571678, 44.219044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.978561, 44.841476, 44.451050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008987, 44.446182, 44.397972>,  <42.027245, 44.209007, 44.366127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.008987, 44.446182, 44.397972>,  <41.978561, 44.841476, 44.451050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.008987, 44.446182, 44.397972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815101, 0.138277, -0.562574,
		0.574303, -0.065365, 0.816029,
		0.076065, -0.988234, -0.132692,
		42.031807, 44.149712, 44.358166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<40.897442, 40.251560, 53.829430> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.231743, 40.453163, 53.916603>,  <41.432323, 40.574127, 53.968906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.231743, 40.453163, 53.916603>,  <40.897442, 40.251560, 53.829430>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.231743, 40.453163, 53.916603> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197778, 0.093950, -0.975734,
		-0.512254, 0.858573, -0.021163,
		0.835751, 0.504009, 0.217933,
		41.482468, 40.604366, 53.981983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.913425, 40.859940, 53.359558>,  <40.897442, 40.251560, 53.829430>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.913425, 40.859940, 53.359558> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.279953, 40.788307, 53.502827>,  <41.499870, 40.745327, 53.588787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.279953, 40.788307, 53.502827>,  <40.913425, 40.859940, 53.359558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279953, 40.788307, 53.502827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388756, 0.183311, -0.902921,
		0.096040, 0.966606, 0.237591,
		0.916321, -0.179082, 0.358169,
		41.554848, 40.734581, 53.610279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.285507, 41.507118, 53.152775>,  <40.913425, 40.859940, 53.359558>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.285507, 41.507118, 53.152775> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537186, 41.205048, 53.226334>,  <41.688194, 41.023804, 53.270470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.537186, 41.205048, 53.226334>,  <41.285507, 41.507118, 53.152775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537186, 41.205048, 53.226334> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465158, 0.176310, -0.867492,
		0.622687, 0.631365, 0.462210,
		0.629197, -0.755177, 0.183898,
		41.725945, 40.978493, 53.281502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.992886, 41.799412, 52.964100>,  <41.285507, 41.507118, 53.152775>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.992886, 41.799412, 52.964100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998287, 41.399483, 52.958855>,  <42.001526, 41.159527, 52.955708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.998287, 41.399483, 52.958855>,  <41.992886, 41.799412, 52.964100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.998287, 41.399483, 52.958855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516325, 0.018199, -0.856199,
		0.856286, 0.004791, 0.516479,
		0.013501, -0.999823, -0.013110,
		42.002338, 41.099537, 52.954922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.620369, 41.633957, 52.815353>,  <41.992886, 41.799412, 52.964100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.620369, 41.633957, 52.815353> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.415176, 41.309845, 52.702003>,  <42.292061, 41.115379, 52.633995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.415176, 41.309845, 52.702003>,  <42.620369, 41.633957, 52.815353>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.415176, 41.309845, 52.702003> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513998, -0.025548, -0.857411,
		0.687503, -0.585486, 0.429588,
		-0.512977, -0.810279, -0.283374,
		42.261284, 41.066761, 52.616993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.113876, 41.200909, 52.558666>,  <42.620369, 41.633957, 52.815353>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.113876, 41.200909, 52.558666> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.774883, 41.039536, 52.420670>,  <42.571487, 40.942711, 52.337872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.774883, 41.039536, 52.420670>,  <43.113876, 41.200909, 52.558666>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774883, 41.039536, 52.420670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406660, -0.075712, -0.910437,
		0.341176, -0.911873, 0.228222,
		-0.847483, -0.403428, -0.344991,
		42.520638, 40.918507, 52.317173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.319035, 40.581993, 52.162857>,  <43.113876, 41.200909, 52.558666>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.319035, 40.581993, 52.162857> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.943985, 40.679611, 52.063812>,  <42.718956, 40.738182, 52.004387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.943985, 40.679611, 52.063812>,  <43.319035, 40.581993, 52.162857>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943985, 40.679611, 52.063812> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198988, -0.207316, -0.957822,
		-0.285085, -0.947345, 0.145822,
		-0.937619, 0.244044, -0.247613,
		42.662701, 40.752823, 51.989529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.160667, 40.084415, 51.578392>,  <43.319035, 40.581993, 52.162857>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.160667, 40.084415, 51.578392> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.908913, 40.394577, 51.557911>,  <42.757858, 40.580673, 51.545624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.908913, 40.394577, 51.557911>,  <43.160667, 40.084415, 51.578392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.908913, 40.394577, 51.557911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055945, -0.020505, -0.998223,
		-0.775074, -0.631135, -0.030474,
		-0.629389, 0.775402, -0.051202,
		42.720097, 40.627197, 51.542549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.809422, 39.991795, 51.012424>,  <43.160667, 40.084415, 51.578392>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.809422, 39.991795, 51.012424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.739029, 40.383904, 51.048401>,  <42.696793, 40.619171, 51.069988>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.739029, 40.383904, 51.048401>,  <42.809422, 39.991795, 51.012424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.739029, 40.383904, 51.048401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018163, 0.094589, -0.995351,
		-0.984227, -0.173525, -0.034450,
		-0.175977, 0.980277, 0.089945,
		42.686237, 40.677986, 51.075386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265549, 40.114368, 50.501705>,  <42.809422, 39.991795, 51.012424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265549, 40.114368, 50.501705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.412300, 40.479202, 50.574917>,  <42.500351, 40.698101, 50.618843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.412300, 40.479202, 50.574917>,  <42.265549, 40.114368, 50.501705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.412300, 40.479202, 50.574917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147908, 0.137051, -0.979459,
		-0.918434, 0.386417, -0.084623,
		0.366882, 0.912085, 0.183027,
		42.522366, 40.752827, 50.629826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.940052, 40.548138, 50.031517>,  <42.265549, 40.114368, 50.501705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.940052, 40.548138, 50.031517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.278893, 40.734314, 50.134113>,  <42.482197, 40.846020, 50.195671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.278893, 40.734314, 50.134113>,  <41.940052, 40.548138, 50.031517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.278893, 40.734314, 50.134113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240453, 0.094730, -0.966027,
		-0.473928, 0.879994, -0.031672,
		0.847098, 0.465443, 0.256493,
		42.533020, 40.873947, 50.211060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.923321, 41.160717, 49.677521>,  <41.940052, 40.548138, 50.031517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.923321, 41.160717, 49.677521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.309967, 41.096504, 49.757404>,  <42.541954, 41.057976, 49.805332>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.309967, 41.096504, 49.757404>,  <41.923321, 41.160717, 49.677521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.309967, 41.096504, 49.757404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229922, 0.199443, -0.952553,
		0.113082, 0.966671, 0.229694,
		0.966617, -0.160528, 0.199706,
		42.599953, 41.048347, 49.817318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.221924, 41.652473, 49.209583>,  <41.923321, 41.160717, 49.677521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.221924, 41.652473, 49.209583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498817, 41.384705, 49.317421>,  <42.664955, 41.224045, 49.382126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.498817, 41.384705, 49.317421>,  <42.221924, 41.652473, 49.209583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.498817, 41.384705, 49.317421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275509, -0.100142, -0.956068,
		0.667012, 0.736101, 0.115110,
		0.692236, -0.669422, 0.269599,
		42.706490, 41.183876, 49.398300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.857323, 41.995289, 48.979275>,  <42.221924, 41.652473, 49.209583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.857323, 41.995289, 48.979275> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.931282, 41.602531, 48.995796>,  <42.975658, 41.366879, 49.005711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.931282, 41.602531, 48.995796>,  <42.857323, 41.995289, 48.979275>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.931282, 41.602531, 48.995796> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245887, 0.005529, -0.969283,
		0.951500, 0.189373, 0.242456,
		0.184897, -0.981890, 0.041303,
		42.986752, 41.307964, 49.008186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.603195, 41.830238, 48.703087>,  <42.857323, 41.995289, 48.979275>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.603195, 41.830238, 48.703087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.413239, 41.478592, 48.686939>,  <43.299267, 41.267605, 48.677250>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.413239, 41.478592, 48.686939>,  <43.603195, 41.830238, 48.703087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413239, 41.478592, 48.686939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394817, -0.171830, -0.902549,
		0.786512, -0.444547, 0.428691,
		-0.474887, -0.879120, -0.040369,
		43.270771, 41.214855, 48.674828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.070374, 41.373844, 48.387718>,  <43.603195, 41.830238, 48.703087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.070374, 41.373844, 48.387718> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.711555, 41.203529, 48.340351>,  <43.496265, 41.101341, 48.311932>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.711555, 41.203529, 48.340351>,  <44.070374, 41.373844, 48.387718>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.711555, 41.203529, 48.340351> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212363, -0.180294, -0.960415,
		0.387581, -0.886679, 0.252153,
		-0.897041, -0.425786, -0.118419,
		43.442444, 41.075794, 48.304825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.176994, 40.831978, 47.953770>,  <44.070374, 41.373844, 48.387718>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.176994, 40.831978, 47.953770> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.783180, 40.881760, 47.904453>,  <43.546890, 40.911629, 47.874863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.783180, 40.881760, 47.904453>,  <44.176994, 40.831978, 47.953770>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.783180, 40.881760, 47.904453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107870, -0.123875, -0.986417,
		-0.138053, -0.984460, 0.108532,
		-0.984533, 0.124471, -0.123295,
		43.487820, 40.919098, 47.867466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.941463, 40.241489, 47.599937>,  <44.176994, 40.831978, 47.953770>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.941463, 40.241489, 47.599937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.652775, 40.505829, 47.517578>,  <43.479561, 40.664433, 47.468163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.652775, 40.505829, 47.517578>,  <43.941463, 40.241489, 47.599937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.652775, 40.505829, 47.517578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128336, -0.164545, -0.977985,
		-0.680183, -0.732256, 0.033944,
		-0.721721, 0.660852, -0.205895,
		43.436260, 40.704086, 47.455811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.579288, 40.063400, 46.987293>,  <43.941463, 40.241489, 47.599937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.579288, 40.063400, 46.987293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.477531, 40.449425, 47.012394>,  <43.416477, 40.681038, 47.027454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.477531, 40.449425, 47.012394>,  <43.579288, 40.063400, 46.987293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477531, 40.449425, 47.012394> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082564, 0.086322, -0.992840,
		-0.963570, -0.247391, -0.101639,
		-0.254394, 0.965063, 0.062752,
		43.401215, 40.738945, 47.031219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.206860, 40.137627, 46.409027>,  <43.579288, 40.063400, 46.987293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.206860, 40.137627, 46.409027> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.284180, 40.517136, 46.508995>,  <43.330574, 40.744843, 46.568974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.284180, 40.517136, 46.508995>,  <43.206860, 40.137627, 46.409027>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.284180, 40.517136, 46.508995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033473, 0.248196, -0.968131,
		-0.980568, 0.195510, 0.016219,
		0.193305, 0.948775, 0.249917,
		43.342171, 40.801769, 46.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.669403, 40.562840, 46.040722>,  <43.206860, 40.137627, 46.409027>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.669403, 40.562840, 46.040722> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.995056, 40.787254, 46.100628>,  <43.190449, 40.921902, 46.136570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.995056, 40.787254, 46.100628>,  <42.669403, 40.562840, 46.040722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.995056, 40.787254, 46.100628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015447, 0.278744, -0.960241,
		-0.580476, 0.779449, 0.235601,
		0.814131, 0.561036, 0.149764,
		43.239296, 40.955566, 46.145557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.619175, 41.173115, 45.672619>,  <42.669403, 40.562840, 46.040722>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.619175, 41.173115, 45.672619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.014282, 41.148216, 45.729797>,  <43.251347, 41.133278, 45.764103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.014282, 41.148216, 45.729797>,  <42.619175, 41.173115, 45.672619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014282, 41.148216, 45.729797> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155817, 0.362161, -0.919000,
		0.005434, 0.930035, 0.367431,
		0.987771, -0.062245, 0.142947,
		43.310612, 41.129543, 45.772682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.979931, 40.937279, 45.291706>,  <42.619175, 41.173115, 45.672619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.979931, 40.937279, 45.291706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.673557, 41.098434, 45.091297>,  <41.489735, 41.195129, 44.971050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.673557, 41.098434, 45.091297>,  <41.979931, 40.937279, 45.291706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673557, 41.098434, 45.091297> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604773, -0.187048, 0.774121,
		0.218170, 0.895931, 0.386923,
		-0.765932, 0.402891, -0.501027,
		41.443779, 41.219303, 44.940990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722523, 41.444283, 45.697521>,  <41.979931, 40.937279, 45.291706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722523, 41.444283, 45.697521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.431522, 41.334175, 45.446136>,  <41.256924, 41.268112, 45.295303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.431522, 41.334175, 45.446136>,  <41.722523, 41.444283, 45.697521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.431522, 41.334175, 45.446136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644315, -0.040704, 0.763676,
		-0.235796, 0.960506, -0.147746,
		-0.727502, -0.275267, -0.628466,
		41.213272, 41.251595, 45.257595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169079, 41.961121, 45.821625>,  <41.722523, 41.444283, 45.697521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169079, 41.961121, 45.821625> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011475, 41.635155, 45.651604>,  <40.916912, 41.439575, 45.549591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.011475, 41.635155, 45.651604>,  <41.169079, 41.961121, 45.821625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.011475, 41.635155, 45.651604> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657797, -0.072971, 0.749652,
		-0.641919, 0.574968, -0.507298,
		-0.394008, -0.814916, -0.425053,
		40.893272, 41.390678, 45.524086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.470810, 42.180286, 45.796486>,  <41.169079, 41.961121, 45.821625>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.470810, 42.180286, 45.796486> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510315, 41.784019, 45.758892>,  <40.534016, 41.546261, 45.736336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.510315, 41.784019, 45.758892>,  <40.470810, 42.180286, 45.796486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.510315, 41.784019, 45.758892> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481510, -0.130228, 0.866712,
		-0.870859, -0.040339, -0.489875,
		0.098758, -0.990663, -0.093987,
		40.539944, 41.486820, 45.730698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905602, 42.013157, 46.146404>,  <40.470810, 42.180286, 45.796486>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905602, 42.013157, 46.146404> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126976, 41.680252, 46.133446>,  <40.259800, 41.480511, 46.125671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.126976, 41.680252, 46.133446>,  <39.905602, 42.013157, 46.146404>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.126976, 41.680252, 46.133446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538882, -0.387462, 0.747983,
		-0.635072, -0.396500, -0.662926,
		0.553434, -0.832263, -0.032399,
		40.293007, 41.430573, 46.123726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.493336, 41.450016, 46.113586>,  <39.905602, 42.013157, 46.146404>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.493336, 41.450016, 46.113586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820229, 41.292480, 46.281883>,  <40.016365, 41.197960, 46.382862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.820229, 41.292480, 46.281883>,  <39.493336, 41.450016, 46.113586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820229, 41.292480, 46.281883> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550428, -0.317045, 0.772342,
		-0.170780, -0.862772, -0.475877,
		0.817229, -0.393836, 0.420749,
		40.065395, 41.174328, 46.408108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.307209, 40.780853, 46.295269>,  <39.493336, 41.450016, 46.113586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.307209, 40.780853, 46.295269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628502, 40.872833, 46.515068>,  <39.821278, 40.928020, 46.646946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.628502, 40.872833, 46.515068>,  <39.307209, 40.780853, 46.295269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.628502, 40.872833, 46.515068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432361, -0.409475, 0.803364,
		0.409742, -0.882865, -0.229478,
		0.803228, 0.229955, 0.549496,
		39.869469, 40.941818, 46.679916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369419, 40.266453, 46.838646>,  <39.307209, 40.780853, 46.295269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369419, 40.266453, 46.838646> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600151, 40.540527, 47.016541>,  <39.738590, 40.704971, 47.123276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.600151, 40.540527, 47.016541>,  <39.369419, 40.266453, 46.838646>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.600151, 40.540527, 47.016541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345301, -0.288875, 0.892927,
		0.740290, -0.668638, 0.069962,
		0.576834, 0.685183, 0.444732,
		39.773201, 40.746082, 47.149960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844311, 39.879524, 47.333351>,  <39.369419, 40.266453, 46.838646>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844311, 39.879524, 47.333351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824219, 40.256874, 47.464508>,  <39.812164, 40.483284, 47.543201>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.824219, 40.256874, 47.464508>,  <39.844311, 39.879524, 47.333351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824219, 40.256874, 47.464508> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395059, -0.320298, 0.861009,
		0.917281, -0.086289, 0.388779,
		-0.050229, 0.943379, 0.327893,
		39.809151, 40.539886, 47.562878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.090477, 39.924694, 48.014435>,  <39.844311, 39.879524, 47.333351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.090477, 39.924694, 48.014435> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909195, 40.280960, 48.028980>,  <39.800426, 40.494720, 48.037708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.909195, 40.280960, 48.028980>,  <40.090477, 39.924694, 48.014435>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909195, 40.280960, 48.028980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259327, -0.170762, 0.950573,
		0.852849, 0.421378, 0.308364,
		-0.453208, 0.890663, 0.036359,
		39.773232, 40.548161, 48.039886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.436588, 40.169693, 48.584076>,  <40.090477, 39.924694, 48.014435>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.436588, 40.169693, 48.584076> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102158, 40.384010, 48.536919>,  <39.901497, 40.512600, 48.508625>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.102158, 40.384010, 48.536919>,  <40.436588, 40.169693, 48.584076>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.102158, 40.384010, 48.536919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143970, -0.006925, 0.989558,
		0.529378, 0.844323, 0.082927,
		-0.836081, 0.535789, -0.117891,
		39.851334, 40.544746, 48.501553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378563, 40.758495, 49.075890>,  <40.436588, 40.169693, 48.584076>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378563, 40.758495, 49.075890> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997749, 40.683113, 48.979458>,  <39.769260, 40.637882, 48.921597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.997749, 40.683113, 48.979458>,  <40.378563, 40.758495, 49.075890>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997749, 40.683113, 48.979458> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263154, 0.102169, 0.959329,
		-0.156159, 0.976753, -0.146861,
		-0.952032, -0.188455, -0.241082,
		39.712139, 40.626575, 48.907135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.912083, 41.303856, 49.352695>,  <40.378563, 40.758495, 49.075890>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.912083, 41.303856, 49.352695> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712379, 40.959007, 49.318069>,  <39.592560, 40.752098, 49.297295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.712379, 40.959007, 49.318069>,  <39.912083, 41.303856, 49.352695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.712379, 40.959007, 49.318069> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363460, 0.117682, 0.924147,
		-0.786538, 0.492849, -0.372099,
		-0.499255, -0.862120, -0.086569,
		39.562603, 40.700371, 49.292099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206432, 41.393044, 49.638313>,  <39.912083, 41.303856, 49.352695>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206432, 41.393044, 49.638313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242802, 40.994766, 49.631020>,  <39.264622, 40.755802, 49.626644>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.242802, 40.994766, 49.631020>,  <39.206432, 41.393044, 49.638313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.242802, 40.994766, 49.631020> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426171, -0.055456, 0.902941,
		-0.900062, -0.074325, -0.429376,
		0.090923, -0.995691, -0.018238,
		39.270077, 40.696060, 49.625549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522923, 41.168335, 49.998474>,  <39.206432, 41.393044, 49.638313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522923, 41.168335, 49.998474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798725, 40.878868, 50.010380>,  <38.964207, 40.705189, 50.017521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.798725, 40.878868, 50.010380>,  <38.522923, 41.168335, 49.998474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.798725, 40.878868, 50.010380> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188102, -0.139238, 0.972230,
		-0.699430, -0.675954, -0.232129,
		0.689504, -0.723670, 0.029761,
		39.005577, 40.661766, 50.019310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280834, 40.767284, 50.623676>,  <38.522923, 41.168335, 49.998474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280834, 40.767284, 50.623676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654213, 40.635429, 50.567085>,  <38.878239, 40.556316, 50.533131>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.654213, 40.635429, 50.567085>,  <38.280834, 40.767284, 50.623676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654213, 40.635429, 50.567085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062072, -0.240027, 0.968780,
		-0.353309, -0.913085, -0.203591,
		0.933445, -0.329641, -0.141480,
		38.934246, 40.536537, 50.524643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.324532, 40.091862, 50.764423>,  <38.280834, 40.767284, 50.623676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.324532, 40.091862, 50.764423> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693497, 40.224968, 50.842819>,  <38.914875, 40.304832, 50.889858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693497, 40.224968, 50.842819>,  <38.324532, 40.091862, 50.764423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693497, 40.224968, 50.842819> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100034, -0.284294, 0.953504,
		0.373017, -0.899134, -0.228949,
		0.922416, 0.332770, 0.195990,
		38.970222, 40.324799, 50.901615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.630264, 39.574348, 51.176109>,  <38.324532, 40.091862, 50.764423>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.630264, 39.574348, 51.176109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869156, 39.888145, 51.242920>,  <39.012489, 40.076424, 51.283005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.869156, 39.888145, 51.242920>,  <38.630264, 39.574348, 51.176109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.869156, 39.888145, 51.242920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175598, -0.331072, 0.927123,
		0.782614, -0.524374, -0.335480,
		0.597227, 0.784489, 0.167022,
		39.048325, 40.123493, 51.293026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<39.276241, 39.354267, 51.715347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316772, 39.750275, 51.754547>,  <39.341091, 39.987877, 51.778069>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.316772, 39.750275, 51.754547>,  <39.276241, 39.354267, 51.715347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.316772, 39.750275, 51.754547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194929, -0.116354, 0.973891,
		0.975569, -0.079577, -0.204773,
		0.101326, 0.990015, 0.098000,
		39.347172, 40.047279, 51.783947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816715, 39.552185, 52.252754>,  <39.276241, 39.354267, 51.715347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.816715, 39.552185, 52.252754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595474, 39.883163, 52.213966>,  <39.462730, 40.081753, 52.190693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.595474, 39.883163, 52.213966>,  <39.816715, 39.552185, 52.252754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.595474, 39.883163, 52.213966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167515, 0.224478, 0.959973,
		0.816097, 0.514721, -0.262770,
		-0.553105, 0.827449, -0.096973,
		39.429543, 40.131397, 52.184875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.233490, 40.032520, 52.713806>,  <39.816715, 39.552185, 52.252754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.233490, 40.032520, 52.713806> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862991, 40.179756, 52.681358>,  <39.640694, 40.268097, 52.661892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.862991, 40.179756, 52.681358>,  <40.233490, 40.032520, 52.713806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.862991, 40.179756, 52.681358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063892, 0.365416, 0.928649,
		0.371469, 0.854973, -0.361983,
		-0.926244, 0.368092, -0.081115,
		39.585117, 40.290184, 52.657024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.205307, 40.614525, 53.120426>,  <40.233490, 40.032520, 52.713806>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.205307, 40.614525, 53.120426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823151, 40.507507, 53.070396>,  <39.593857, 40.443298, 53.040379>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.823151, 40.507507, 53.070396>,  <40.205307, 40.614525, 53.120426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823151, 40.507507, 53.070396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200058, 0.274738, 0.940476,
		-0.217253, 0.923548, -0.316006,
		-0.955394, -0.267541, -0.125076,
		39.536533, 40.427246, 53.032875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778004, 41.285233, 53.426014>,  <40.205307, 40.614525, 53.120426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778004, 41.285233, 53.426014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530853, 40.972519, 53.392456>,  <39.382565, 40.784889, 53.372322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.530853, 40.972519, 53.392456>,  <39.778004, 41.285233, 53.426014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530853, 40.972519, 53.392456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358490, 0.185143, 0.914990,
		-0.699796, 0.595425, -0.394659,
		-0.617876, -0.781787, -0.083891,
		39.345490, 40.737984, 53.367290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165359, 41.607525, 53.700745>,  <39.778004, 41.285233, 53.426014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165359, 41.607525, 53.700745> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184074, 41.208374, 53.718834>,  <39.195305, 40.968884, 53.729687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.184074, 41.208374, 53.718834>,  <39.165359, 41.607525, 53.700745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.184074, 41.208374, 53.718834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171333, 0.036587, 0.984534,
		-0.984102, -0.053817, -0.169258,
		0.046792, -0.997881, 0.045226,
		39.198112, 40.909008, 53.732403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500931, 41.461475, 53.890751>,  <39.165359, 41.607525, 53.700745>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500931, 41.461475, 53.890751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738991, 41.150734, 53.973007>,  <38.881828, 40.964287, 54.022362>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.738991, 41.150734, 53.973007>,  <38.500931, 41.461475, 53.890751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738991, 41.150734, 53.973007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459081, -0.118638, 0.880437,
		-0.659575, -0.618402, -0.427247,
		0.595152, -0.776856, 0.205645,
		38.917538, 40.917679, 54.034702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.014111, 40.874737, 54.040295>,  <38.500931, 41.461475, 53.890751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.014111, 40.874737, 54.040295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370655, 40.798241, 54.204689>,  <38.584579, 40.752342, 54.303326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.370655, 40.798241, 54.204689>,  <38.014111, 40.874737, 54.040295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370655, 40.798241, 54.204689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441907, -0.164614, 0.881828,
		-0.100986, -0.967641, -0.231240,
		0.891358, -0.191239, 0.410984,
		38.638062, 40.740868, 54.327984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.869537, 40.396492, 54.466839>,  <38.014111, 40.874737, 54.040295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.869537, 40.396492, 54.466839> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226234, 40.526878, 54.592400>,  <38.440254, 40.605110, 54.667736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.226234, 40.526878, 54.592400>,  <37.869537, 40.396492, 54.466839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226234, 40.526878, 54.592400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351087, 0.060667, 0.934375,
		0.285536, -0.943431, 0.168544,
		0.891744, 0.325971, 0.313904,
		38.493759, 40.624668, 54.686569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.930679, 39.960129, 55.092426>,  <37.869537, 40.396492, 54.466839>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.930679, 39.960129, 55.092426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178947, 40.273712, 55.097797>,  <38.327908, 40.461861, 55.101021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.178947, 40.273712, 55.097797>,  <37.930679, 39.960129, 55.092426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178947, 40.273712, 55.097797> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212880, 0.152004, 0.965182,
		0.754620, -0.601919, 0.261233,
		0.620670, 0.783957, 0.013431,
		38.365147, 40.508900, 55.101826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338505, 39.788300, 55.609909>,  <37.930679, 39.960129, 55.092426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338505, 39.788300, 55.609909> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329865, 40.184143, 55.553059>,  <38.324680, 40.421650, 55.518948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.329865, 40.184143, 55.553059>,  <38.338505, 39.788300, 55.609909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.329865, 40.184143, 55.553059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226473, 0.133619, 0.964809,
		0.973778, 0.053026, 0.221235,
		-0.021598, 0.989613, -0.142124,
		38.323383, 40.481026, 55.510422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.688759, 40.060776, 56.138096>,  <38.338505, 39.788300, 55.609909>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.688759, 40.060776, 56.138096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481400, 40.385162, 56.029579>,  <38.356983, 40.579796, 55.964470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.481400, 40.385162, 56.029579>,  <38.688759, 40.060776, 56.138096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.481400, 40.385162, 56.029579> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290808, 0.131154, 0.947749,
		0.804174, 0.570203, 0.167846,
		-0.518396, 0.810966, -0.271290,
		38.325882, 40.628452, 55.948193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.799217, 40.583668, 56.770947>,  <38.688759, 40.060776, 56.138096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.799217, 40.583668, 56.770947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.482758, 40.680580, 56.546310>,  <38.292881, 40.738728, 56.411530>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.482758, 40.680580, 56.546310>,  <38.799217, 40.583668, 56.770947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.482758, 40.680580, 56.546310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464065, 0.360318, 0.809206,
		0.398403, 0.900818, -0.172633,
		-0.791150, 0.242277, -0.561590,
		38.245411, 40.753262, 56.377834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.547703, 41.205006, 57.037949>,  <38.799217, 40.583668, 56.770947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.547703, 41.205006, 57.037949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245300, 41.097702, 56.799118>,  <38.063858, 41.033321, 56.655819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.245300, 41.097702, 56.799118>,  <38.547703, 41.205006, 57.037949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.245300, 41.097702, 56.799118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654505, 0.322406, 0.683869,
		0.009046, 0.907795, -0.419317,
		-0.756003, -0.268259, -0.597073,
		38.018497, 41.017223, 56.619995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066383, 41.718533, 57.003265>,  <38.547703, 41.205006, 57.037949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066383, 41.718533, 57.003265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847683, 41.397926, 56.906403>,  <37.716461, 41.205563, 56.848286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.847683, 41.397926, 56.906403>,  <38.066383, 41.718533, 57.003265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.847683, 41.397926, 56.906403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671169, 0.246625, 0.699077,
		-0.500595, 0.544752, -0.672792,
		-0.546751, -0.801512, -0.242161,
		37.683659, 41.157475, 56.833755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.400753, 42.007175, 56.970009>,  <38.066383, 41.718533, 57.003265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.400753, 42.007175, 56.970009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379047, 41.609825, 57.010540>,  <37.366024, 41.371414, 57.034859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.379047, 41.609825, 57.010540>,  <37.400753, 42.007175, 56.970009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379047, 41.609825, 57.010540> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700445, 0.110194, 0.705148,
		-0.711640, -0.032712, -0.701782,
		-0.054266, -0.993372, 0.101332,
		37.362766, 41.311813, 57.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601349, 41.803684, 56.982258>,  <37.400753, 42.007175, 56.970009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601349, 41.803684, 56.982258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810909, 41.504143, 57.144615>,  <36.936646, 41.324417, 57.242031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810909, 41.504143, 57.144615>,  <36.601349, 41.803684, 56.982258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810909, 41.504143, 57.144615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525650, 0.090723, 0.845850,
		-0.670239, -0.656501, -0.346103,
		0.523901, -0.748850, 0.405896,
		36.968079, 41.279488, 57.266384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.212669, 41.463497, 57.476273>,  <36.601349, 41.803684, 56.982258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.212669, 41.463497, 57.476273> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566383, 41.334404, 57.611259>,  <36.778610, 41.256947, 57.692253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.566383, 41.334404, 57.611259>,  <36.212669, 41.463497, 57.476273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.566383, 41.334404, 57.611259> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357277, -0.002286, 0.933996,
		-0.300664, -0.946486, -0.117328,
		0.884282, -0.322738, 0.337470,
		36.831669, 41.237583, 57.712502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.969402, 40.947006, 57.804680>,  <36.212669, 41.463497, 57.476273>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.969402, 40.947006, 57.804680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323963, 41.068352, 57.944542>,  <36.536701, 41.141159, 58.028458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.323963, 41.068352, 57.944542>,  <35.969402, 40.947006, 57.804680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.323963, 41.068352, 57.944542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332388, -0.108604, 0.936869,
		0.322185, -0.946666, 0.004567,
		0.886406, 0.303363, 0.349650,
		36.589886, 41.159359, 58.049438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191658, 40.402142, 58.218510>,  <35.969402, 40.947006, 57.804680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191658, 40.402142, 58.218510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365063, 40.746147, 58.326172>,  <36.469105, 40.952549, 58.390770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.365063, 40.746147, 58.326172>,  <36.191658, 40.402142, 58.218510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365063, 40.746147, 58.326172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373693, -0.100224, 0.922122,
		0.820014, -0.500330, 0.277933,
		0.433510, 0.860014, 0.269155,
		36.495117, 41.004150, 58.406918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.331123, 40.265007, 58.905258>,  <36.191658, 40.402142, 58.218510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.331123, 40.265007, 58.905258> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392380, 40.660065, 58.891945>,  <36.429134, 40.897099, 58.883957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.392380, 40.660065, 58.891945>,  <36.331123, 40.265007, 58.905258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.392380, 40.660065, 58.891945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117809, 0.051692, 0.991690,
		0.981157, -0.147950, 0.124270,
		0.153144, 0.987643, -0.033288,
		36.438324, 40.956356, 58.881958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904724, 40.343212, 59.363228>,  <36.331123, 40.265007, 58.905258>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904724, 40.343212, 59.363228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714935, 40.691978, 59.314819>,  <36.601063, 40.901237, 59.285774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.714935, 40.691978, 59.314819>,  <36.904724, 40.343212, 59.363228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714935, 40.691978, 59.314819> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142723, 0.059464, 0.987975,
		0.868625, 0.486036, 0.096228,
		-0.474469, 0.871913, -0.121021,
		36.572594, 40.953552, 59.278515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055420, 40.996540, 59.814419>,  <36.904724, 40.343212, 59.363228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055420, 40.996540, 59.814419> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671738, 41.001427, 59.701439>,  <36.441528, 41.004356, 59.633652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.671738, 41.001427, 59.701439>,  <37.055420, 40.996540, 59.814419>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671738, 41.001427, 59.701439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274930, 0.192461, 0.942004,
		0.065865, 0.981228, -0.181252,
		-0.959205, 0.012213, -0.282446,
		36.383976, 41.005089, 59.616707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.778477, 41.659500, 59.993710>,  <37.055420, 40.996540, 59.814419>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.778477, 41.659500, 59.993710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472183, 41.405846, 59.950768>,  <36.288406, 41.253654, 59.925003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.472183, 41.405846, 59.950768>,  <36.778477, 41.659500, 59.993710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.472183, 41.405846, 59.950768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434258, 0.386643, 0.813589,
		-0.474420, 0.669609, -0.571444,
		-0.765732, -0.634138, -0.107352,
		36.242462, 41.215603, 59.918560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093761, 42.300339, 59.909500>,  <36.778477, 41.659500, 59.993710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093761, 42.300339, 59.909500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336052, 42.216530, 60.216537>,  <37.481426, 42.166245, 60.400761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.336052, 42.216530, 60.216537>,  <37.093761, 42.300339, 59.909500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336052, 42.216530, 60.216537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791763, 0.063179, -0.607553,
		0.078798, 0.975762, 0.204158,
		0.605725, -0.209518, 0.767593,
		37.517769, 42.153675, 60.446815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609383, 42.812508, 59.874748>,  <37.093761, 42.300339, 59.909500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609383, 42.812508, 59.874748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758286, 42.514526, 60.096184>,  <37.847630, 42.335739, 60.229046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.758286, 42.514526, 60.096184>,  <37.609383, 42.812508, 59.874748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.758286, 42.514526, 60.096184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809967, -0.030485, -0.585683,
		0.453183, 0.666419, 0.592039,
		0.372262, -0.744954, 0.553593,
		37.869965, 42.291039, 60.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.270386, 42.928883, 59.869610>,  <37.609383, 42.812508, 59.874748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.270386, 42.928883, 59.869610> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309464, 42.561600, 60.023155>,  <38.332909, 42.341228, 60.115284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.309464, 42.561600, 60.023155>,  <38.270386, 42.928883, 59.869610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309464, 42.561600, 60.023155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.908727, -0.074974, -0.410602,
		0.405798, 0.388941, 0.827075,
		0.097691, -0.918207, 0.383866,
		38.338772, 42.286137, 60.138313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000343, 42.868206, 60.014366>,  <38.270386, 42.928883, 59.869610>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000343, 42.868206, 60.014366> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843475, 42.500900, 59.992485>,  <38.749355, 42.280518, 59.979359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.843475, 42.500900, 59.992485>,  <39.000343, 42.868206, 60.014366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843475, 42.500900, 59.992485> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798075, -0.310067, -0.516657,
		0.457468, -0.246272, 0.854443,
		-0.392173, -0.918264, -0.054698,
		38.725822, 42.225422, 59.976074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.566418, 42.452919, 60.053776>,  <39.000343, 42.868206, 60.014366>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.566418, 42.452919, 60.053776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281517, 42.225769, 59.888741>,  <39.110577, 42.089481, 59.789719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.281517, 42.225769, 59.888741>,  <39.566418, 42.452919, 60.053776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281517, 42.225769, 59.888741> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659315, -0.339560, -0.670822,
		0.240843, -0.749815, 0.616257,
		-0.712249, -0.567871, -0.412583,
		39.067841, 42.055408, 59.764965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.848145, 41.854046, 60.162098>,  <39.566418, 42.452919, 60.053776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.848145, 41.854046, 60.162098> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578705, 41.850090, 59.866486>,  <39.417038, 41.847717, 59.689117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.578705, 41.850090, 59.866486>,  <39.848145, 41.854046, 60.162098>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578705, 41.850090, 59.866486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713950, -0.267296, -0.647170,
		-0.191138, -0.963564, 0.187113,
		-0.673604, -0.009891, -0.739026,
		39.376625, 41.847122, 59.644779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.039272, 41.274876, 59.699440>,  <39.848145, 41.854046, 60.162098>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.039272, 41.274876, 59.699440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765553, 41.482460, 59.494537>,  <39.601318, 41.607010, 59.371593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.765553, 41.482460, 59.494537>,  <40.039272, 41.274876, 59.699440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765553, 41.482460, 59.494537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348412, -0.384429, -0.854882,
		-0.640577, -0.763476, 0.082254,
		-0.684303, 0.518959, -0.512260,
		39.560261, 41.638149, 59.340858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.770096, 40.830296, 59.123459>,  <40.039272, 41.274876, 59.699440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.770096, 40.830296, 59.123459> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692204, 41.207504, 59.015533>,  <39.645470, 41.433830, 58.950779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.692204, 41.207504, 59.015533>,  <39.770096, 40.830296, 59.123459>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692204, 41.207504, 59.015533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400265, -0.174731, -0.899587,
		-0.895470, -0.283174, -0.343431,
		-0.194731, 0.943017, -0.269811,
		39.633785, 41.490410, 58.934589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445297, 40.847893, 58.472309>,  <39.770096, 40.830296, 59.123459>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445297, 40.847893, 58.472309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579926, 41.223907, 58.494423>,  <39.660702, 41.449516, 58.507690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.579926, 41.223907, 58.494423>,  <39.445297, 40.847893, 58.472309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.579926, 41.223907, 58.494423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247864, -0.031799, -0.968273,
		-0.908449, 0.339600, -0.243703,
		0.336575, 0.940032, 0.055287,
		39.680897, 41.505917, 58.511009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.178150, 41.140602, 57.872871>,  <39.445297, 40.847893, 58.472309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.178150, 41.140602, 57.872871> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512962, 41.338699, 57.965927>,  <39.713848, 41.457558, 58.021759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.512962, 41.338699, 57.965927>,  <39.178150, 41.140602, 57.872871>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.512962, 41.338699, 57.965927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284633, -0.030992, -0.958136,
		-0.467298, 0.868203, -0.166903,
		0.837028, 0.495241, 0.232636,
		39.764072, 41.487270, 58.035717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271336, 41.609398, 57.255585>,  <39.178150, 41.140602, 57.872871>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271336, 41.609398, 57.255585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622887, 41.574753, 57.443233>,  <39.833817, 41.553967, 57.555824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.622887, 41.574753, 57.443233>,  <39.271336, 41.609398, 57.255585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.622887, 41.574753, 57.443233> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444032, -0.210982, -0.870817,
		0.174399, 0.973645, -0.146969,
		0.878875, -0.086610, 0.469125,
		39.886551, 41.548771, 57.583969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.698795, 41.889221, 56.765732>,  <39.271336, 41.609398, 57.255585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.698795, 41.889221, 56.765732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972366, 41.721634, 57.004631>,  <40.136509, 41.621082, 57.147972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.972366, 41.721634, 57.004631>,  <39.698795, 41.889221, 56.765732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.972366, 41.721634, 57.004631> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514580, -0.303283, -0.802014,
		0.517151, 0.855855, 0.008166,
		0.683932, -0.418964, 0.597249,
		40.177547, 41.595943, 57.183807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.249294, 42.130749, 56.705250>,  <39.698795, 41.889221, 56.765732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.249294, 42.130749, 56.705250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369240, 41.775955, 56.845730>,  <40.441208, 41.563080, 56.930016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.369240, 41.775955, 56.845730>,  <40.249294, 42.130749, 56.705250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.369240, 41.775955, 56.845730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564096, -0.132026, -0.815086,
		0.769336, 0.442523, 0.460755,
		0.299863, -0.886985, 0.351198,
		40.459198, 41.509861, 56.951088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953732, 42.107769, 56.775120>,  <40.249294, 42.130749, 56.705250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.953732, 42.107769, 56.775120> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839653, 41.728889, 56.716499>,  <40.771206, 41.501560, 56.681328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.839653, 41.728889, 56.716499>,  <40.953732, 42.107769, 56.775120>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.839653, 41.728889, 56.716499> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582782, -0.049983, -0.811090,
		0.760938, -0.316729, 0.566265,
		-0.285200, -0.947198, -0.146550,
		40.754093, 41.444729, 56.672535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.475700, 41.886845, 56.295334>,  <40.953732, 42.107769, 56.775120>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.475700, 41.886845, 56.295334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222404, 41.577454, 56.306145>,  <41.070427, 41.391819, 56.312630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.222404, 41.577454, 56.306145>,  <41.475700, 41.886845, 56.295334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.222404, 41.577454, 56.306145> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410503, -0.365271, -0.835503,
		0.656118, -0.517981, 0.548821,
		-0.633243, -0.773481, 0.027028,
		41.032433, 41.345409, 56.314255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.904987, 41.271011, 56.159130>,  <41.475700, 41.886845, 56.295334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.904987, 41.271011, 56.159130> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534561, 41.150177, 56.068672>,  <41.312305, 41.077679, 56.014397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.534561, 41.150177, 56.068672>,  <41.904987, 41.271011, 56.159130>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.534561, 41.150177, 56.068672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344746, -0.433589, -0.832557,
		0.153446, -0.848968, 0.505675,
		-0.926069, -0.302082, -0.226146,
		41.256741, 41.059551, 56.000828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.981525, 40.562469, 55.996769>,  <41.904987, 41.271011, 56.159130>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.981525, 40.562469, 55.996769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650646, 40.687012, 55.809666>,  <41.452118, 40.761738, 55.697403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.650646, 40.687012, 55.809666>,  <41.981525, 40.562469, 55.996769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.650646, 40.687012, 55.809666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332808, -0.399250, -0.854306,
		-0.452745, -0.862356, 0.226639,
		-0.827201, 0.311355, -0.467757,
		41.402485, 40.780418, 55.669338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902847, 40.041088, 55.599308>,  <41.981525, 40.562469, 55.996769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902847, 40.041088, 55.599308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694992, 40.337585, 55.429356>,  <41.570278, 40.515484, 55.327385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.694992, 40.337585, 55.429356>,  <41.902847, 40.041088, 55.599308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694992, 40.337585, 55.429356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384061, -0.241567, -0.891147,
		-0.763198, -0.626257, -0.159156,
		-0.519640, 0.741247, -0.424884,
		41.539101, 40.559959, 55.301891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.698437, 39.803623, 54.922352>,  <41.902847, 40.041088, 55.599308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.698437, 39.803623, 54.922352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.637222, 40.197578, 54.889919>,  <41.600494, 40.433952, 54.870461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.637222, 40.197578, 54.889919>,  <41.698437, 39.803623, 54.922352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.637222, 40.197578, 54.889919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175494, -0.053659, -0.983017,
		-0.972512, -0.164671, -0.164629,
		-0.153040, 0.984888, -0.081082,
		41.591309, 40.493046, 54.865593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.303341, 39.842548, 54.319847>,  <41.698437, 39.803623, 54.922352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.303341, 39.842548, 54.319847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.441078, 40.216255, 54.356888>,  <41.523720, 40.440479, 54.379112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.441078, 40.216255, 54.356888>,  <41.303341, 39.842548, 54.319847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.441078, 40.216255, 54.356888> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159456, 0.038998, -0.986434,
		-0.925202, 0.354441, -0.135545,
		0.344347, 0.934265, 0.092598,
		41.544384, 40.496536, 54.384666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<38.487812, 40.475815, 48.543411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872902, 40.521370, 48.641552>,  <39.103954, 40.548702, 48.700436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.872902, 40.521370, 48.641552>,  <38.487812, 40.475815, 48.543411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872902, 40.521370, 48.641552> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223835, 0.173835, -0.958999,
		-0.151868, 0.978167, 0.141863,
		0.962722, 0.113888, 0.245348,
		39.161720, 40.555534, 48.715157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.682926, 41.062420, 48.214577>,  <38.487812, 40.475815, 48.543411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.682926, 41.062420, 48.214577> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045212, 40.924004, 48.312508>,  <39.262585, 40.840954, 48.371265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.045212, 40.924004, 48.312508>,  <38.682926, 41.062420, 48.214577>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.045212, 40.924004, 48.312508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369290, 0.360586, -0.856506,
		0.208108, 0.866159, 0.454378,
		0.905713, -0.346043, 0.244823,
		39.316925, 40.820190, 48.385956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094620, 41.620121, 48.053833>,  <38.682926, 41.062420, 48.214577>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094620, 41.620121, 48.053833> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307922, 41.281754, 48.050968>,  <39.435905, 41.078732, 48.049248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307922, 41.281754, 48.050968>,  <39.094620, 41.620121, 48.053833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307922, 41.281754, 48.050968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410768, 0.266328, -0.871974,
		0.739532, 0.462043, 0.489499,
		0.533257, -0.845923, -0.007166,
		39.467899, 41.027977, 48.048817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752644, 41.791042, 47.831249>,  <39.094620, 41.620121, 48.053833>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752644, 41.791042, 47.831249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759624, 41.399521, 47.749626>,  <39.763813, 41.164608, 47.700653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.759624, 41.399521, 47.749626>,  <39.752644, 41.791042, 47.831249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.759624, 41.399521, 47.749626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629412, 0.169330, -0.758399,
		0.776876, -0.115205, 0.619024,
		0.017448, -0.978803, -0.204060,
		39.764858, 41.105881, 47.688408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.424324, 41.674564, 47.668510>,  <39.752644, 41.791042, 47.831249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.424324, 41.674564, 47.668510> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232239, 41.363396, 47.506409>,  <40.116989, 41.176693, 47.409149>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.232239, 41.363396, 47.506409>,  <40.424324, 41.674564, 47.668510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232239, 41.363396, 47.506409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637516, 0.007794, -0.770398,
		0.602468, -0.628312, 0.492195,
		-0.480214, -0.777922, -0.405254,
		40.088173, 41.130020, 47.384830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.910179, 41.427116, 47.254333>,  <40.424324, 41.674564, 47.668510>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.910179, 41.427116, 47.254333> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601021, 41.215950, 47.113510>,  <40.415527, 41.089252, 47.029015>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.601021, 41.215950, 47.113510>,  <40.910179, 41.427116, 47.254333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.601021, 41.215950, 47.113510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492343, -0.148914, -0.857568,
		0.400295, -0.836141, 0.375009,
		-0.772892, -0.527913, -0.352058,
		40.369152, 41.057575, 47.007893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.235195, 40.825314, 46.820564>,  <40.910179, 41.427116, 47.254333>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.235195, 40.825314, 46.820564> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864967, 40.923584, 46.705345>,  <40.642830, 40.982548, 46.636215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.864967, 40.923584, 46.705345>,  <41.235195, 40.825314, 46.820564>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.864967, 40.923584, 46.705345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322936, 0.115252, -0.939377,
		-0.197588, -0.962475, -0.186012,
		-0.925565, 0.245680, -0.288046,
		40.587299, 40.997288, 46.618931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996231, 40.318100, 46.187340>,  <41.235195, 40.825314, 46.820564>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996231, 40.318100, 46.187340> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798439, 40.665283, 46.168869>,  <40.679764, 40.873592, 46.157787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.798439, 40.665283, 46.168869>,  <40.996231, 40.318100, 46.187340>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798439, 40.665283, 46.168869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297608, 0.119159, -0.947223,
		-0.816649, -0.482127, -0.317234,
		-0.494483, 0.867960, -0.046174,
		40.650093, 40.925671, 46.155018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610317, 40.228046, 45.538948>,  <40.996231, 40.318100, 46.187340>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610317, 40.228046, 45.538948> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536186, 40.618408, 45.584999>,  <40.491707, 40.852627, 45.612629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.536186, 40.618408, 45.584999>,  <40.610317, 40.228046, 45.538948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.536186, 40.618408, 45.584999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204017, 0.152816, -0.966967,
		-0.961265, -0.155720, -0.227423,
		-0.185330, 0.975909, 0.115127,
		40.480587, 40.911182, 45.619537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.392883, 40.342213, 44.917339>,  <40.610317, 40.228046, 45.538948>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.392883, 40.342213, 44.917339> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500023, 40.685204, 45.093063>,  <40.564304, 40.890999, 45.198498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.500023, 40.685204, 45.093063>,  <40.392883, 40.342213, 44.917339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.500023, 40.685204, 45.093063> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502089, 0.264931, -0.823236,
		-0.822293, 0.441071, -0.359569,
		0.267845, 0.857477, 0.439308,
		40.580376, 40.942448, 45.224857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.221378, 40.976532, 44.523064>,  <40.392883, 40.342213, 44.917339>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.221378, 40.976532, 44.523064> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538910, 41.060730, 44.751282>,  <40.729431, 41.111248, 44.888214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.538910, 41.060730, 44.751282>,  <40.221378, 40.976532, 44.523064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538910, 41.060730, 44.751282> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537293, 0.196717, -0.820134,
		-0.284867, 0.957599, 0.043065,
		0.793831, 0.210491, 0.570549,
		40.777058, 41.123878, 44.922447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.406696, 41.551346, 44.260502>,  <40.221378, 40.976532, 44.523064>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.406696, 41.551346, 44.260502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725784, 41.418861, 44.462070>,  <40.917236, 41.339371, 44.583012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.725784, 41.418861, 44.462070>,  <40.406696, 41.551346, 44.260502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.725784, 41.418861, 44.462070> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600986, 0.368039, -0.709481,
		0.049528, 0.868818, 0.492648,
		0.797723, -0.331214, 0.503919,
		40.965103, 41.319496, 44.613247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.832829, 42.064587, 44.114105>,  <40.406696, 41.551346, 44.260502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.832829, 42.064587, 44.114105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047104, 41.742538, 44.215939>,  <41.175671, 41.549309, 44.277039>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.047104, 41.742538, 44.215939>,  <40.832829, 42.064587, 44.114105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.047104, 41.742538, 44.215939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678988, 0.231470, -0.696704,
		0.502005, 0.546076, 0.670666,
		0.535693, -0.805123, 0.254580,
		41.207813, 41.501003, 44.292313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.511562, 42.188858, 44.429054>,  <40.832829, 42.064587, 44.114105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.511562, 42.188858, 44.429054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514038, 41.839516, 44.234238>,  <41.515526, 41.629910, 44.117348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.514038, 41.839516, 44.234238>,  <41.511562, 42.188858, 44.429054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.514038, 41.839516, 44.234238> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642379, 0.376737, -0.667396,
		0.766362, -0.308731, 0.563360,
		0.006192, -0.873358, -0.487039,
		41.515896, 41.577507, 44.088127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.951435, 42.896126, 44.481609>,  <41.511562, 42.188858, 44.429054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.951435, 42.896126, 44.481609> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041969, 43.285645, 44.472797>,  <42.096291, 43.519356, 44.467510>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.041969, 43.285645, 44.472797>,  <41.951435, 42.896126, 44.481609>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.041969, 43.285645, 44.472797> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453426, 0.125351, 0.882435,
		0.862076, -0.189741, 0.469918,
		0.226339, 0.973800, -0.022029,
		42.109871, 43.577785, 44.466190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.226383, 43.045307, 45.167068>,  <41.951435, 42.896126, 44.481609>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.226383, 43.045307, 45.167068> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074364, 43.375526, 45.000198>,  <41.983150, 43.573658, 44.900074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.074364, 43.375526, 45.000198>,  <42.226383, 43.045307, 45.167068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.074364, 43.375526, 45.000198> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559001, 0.154342, 0.814676,
		0.736940, 0.542821, 0.402822,
		-0.380051, 0.825545, -0.417177,
		41.960350, 43.623192, 44.875046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.222828, 43.575150, 45.723747>,  <42.226383, 43.045307, 45.167068>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.222828, 43.575150, 45.723747> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965874, 43.711075, 45.448978>,  <41.811699, 43.792629, 45.284119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.965874, 43.711075, 45.448978>,  <42.222828, 43.575150, 45.723747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.965874, 43.711075, 45.448978> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594411, 0.344849, 0.726467,
		0.483749, 0.874989, -0.019537,
		-0.642388, 0.339815, -0.686923,
		41.773159, 43.813019, 45.242901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.043434, 44.190006, 45.958656>,  <42.222828, 43.575150, 45.723747>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.043434, 44.190006, 45.958656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759827, 44.082710, 45.697784>,  <41.589661, 44.018333, 45.541260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.759827, 44.082710, 45.697784>,  <42.043434, 44.190006, 45.958656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759827, 44.082710, 45.697784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702879, 0.343614, 0.622808,
		0.057039, 0.899988, -0.432167,
		-0.709019, -0.268237, -0.652182,
		41.547123, 44.002239, 45.502129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626896, 44.829109, 45.999565>,  <42.043434, 44.190006, 45.958656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626896, 44.829109, 45.999565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417656, 44.517609, 45.861057>,  <41.292110, 44.330708, 45.777954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.417656, 44.517609, 45.861057>,  <41.626896, 44.829109, 45.999565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.417656, 44.517609, 45.861057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700625, 0.161600, 0.694989,
		-0.485270, 0.606156, -0.630149,
		-0.523104, -0.778756, -0.346268,
		41.260723, 44.283981, 45.757175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977661, 45.048122, 45.663422>,  <41.626896, 44.829109, 45.999565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977661, 45.048122, 45.663422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917969, 44.673889, 45.791435>,  <40.882153, 44.449348, 45.868244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.917969, 44.673889, 45.791435>,  <40.977661, 45.048122, 45.663422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.917969, 44.673889, 45.791435> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760851, 0.315363, 0.567144,
		-0.631536, -0.158866, -0.758897,
		-0.149228, -0.935579, 0.320036,
		40.873199, 44.393215, 45.887447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245140, 45.023033, 45.725601>,  <40.977661, 45.048122, 45.663422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245140, 45.023033, 45.725601> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390087, 44.732628, 45.959385>,  <40.477055, 44.558384, 46.099655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.390087, 44.732628, 45.959385>,  <40.245140, 45.023033, 45.725601>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390087, 44.732628, 45.959385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716070, 0.184538, 0.673193,
		-0.596603, -0.662458, -0.453006,
		0.362366, -0.726013, 0.584462,
		40.498798, 44.514824, 46.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.595535, 44.789398, 46.139755>,  <40.245140, 45.023033, 45.725601>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.595535, 44.789398, 46.139755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898235, 44.631981, 46.348541>,  <40.079857, 44.537529, 46.473812>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.898235, 44.631981, 46.348541>,  <39.595535, 44.789398, 46.139755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898235, 44.631981, 46.348541> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520702, 0.119846, 0.845285,
		-0.395213, -0.911460, -0.114225,
		0.756754, -0.393545, 0.521963,
		40.125263, 44.513916, 46.505131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.310459, 44.304020, 46.663853>,  <39.595535, 44.789398, 46.139755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.310459, 44.304020, 46.663853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663712, 44.402527, 46.823570>,  <39.875664, 44.461632, 46.919399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.663712, 44.402527, 46.823570>,  <39.310459, 44.304020, 46.663853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.663712, 44.402527, 46.823570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446860, 0.182456, 0.875800,
		0.142832, -0.951872, 0.271181,
		0.883128, 0.246272, 0.399293,
		39.928650, 44.476410, 46.943359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264412, 43.891186, 47.231884>,  <39.310459, 44.304020, 46.663853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264412, 43.891186, 47.231884> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568073, 44.141113, 47.304863>,  <39.750271, 44.291069, 47.348652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.568073, 44.141113, 47.304863>,  <39.264412, 43.891186, 47.231884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.568073, 44.141113, 47.304863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277248, 0.056792, 0.959119,
		0.588914, -0.778701, 0.216343,
		0.759153, 0.624819, 0.182448,
		39.795818, 44.328560, 47.359596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.489071, 43.694450, 47.902328>,  <39.264412, 43.891186, 47.231884>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.489071, 43.694450, 47.902328> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636158, 44.058411, 47.825535>,  <39.724411, 44.276787, 47.779457>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.636158, 44.058411, 47.825535>,  <39.489071, 43.694450, 47.902328>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.636158, 44.058411, 47.825535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120992, 0.251508, 0.960263,
		0.922034, -0.329874, 0.202574,
		0.367714, 0.909905, -0.191986,
		39.746471, 44.331383, 47.767941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.143402, 43.782341, 48.324265>,  <39.489071, 43.694450, 47.902328>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.143402, 43.782341, 48.324265> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985184, 44.140549, 48.242695>,  <39.890255, 44.355473, 48.193752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.985184, 44.140549, 48.242695>,  <40.143402, 43.782341, 48.324265>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.985184, 44.140549, 48.242695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030649, 0.209043, 0.977426,
		0.917935, 0.392865, -0.055239,
		-0.395544, 0.895521, -0.203929,
		39.866520, 44.409206, 48.181515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.541550, 44.323826, 48.849972>,  <40.143402, 43.782341, 48.324265>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.541550, 44.323826, 48.849972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207355, 44.486954, 48.702652>,  <40.006840, 44.584831, 48.614262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.207355, 44.486954, 48.702652>,  <40.541550, 44.323826, 48.849972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.207355, 44.486954, 48.702652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, 0.235156, 0.926537,
		0.464464, 0.882263, -0.076715,
		-0.835489, 0.407816, -0.368300,
		39.956707, 44.609299, 48.592163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.498199, 44.943951, 49.239838>,  <40.541550, 44.323826, 48.849972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.498199, 44.943951, 49.239838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132931, 44.842964, 49.111851>,  <39.913769, 44.782372, 49.035057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.132931, 44.842964, 49.111851>,  <40.498199, 44.943951, 49.239838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.132931, 44.842964, 49.111851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393683, 0.343157, 0.852794,
		-0.105502, 0.904713, -0.412752,
		-0.913172, -0.252465, -0.319966,
		39.858978, 44.767223, 49.015862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.647373, 45.685669, 49.251099>,  <40.498199, 44.943951, 49.239838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.647373, 45.685669, 49.251099> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878586, 45.949944, 49.442669>,  <41.017315, 46.108509, 49.557610>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.878586, 45.949944, 49.442669>,  <40.647373, 45.685669, 49.251099>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878586, 45.949944, 49.442669> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625263, 0.018515, -0.780194,
		-0.524334, 0.750431, -0.402403,
		0.578031, 0.660690, 0.478925,
		41.051994, 46.148151, 49.586346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817242, 46.184269, 48.765842>,  <40.647373, 45.685669, 49.251099>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817242, 46.184269, 48.765842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104527, 46.212524, 49.042736>,  <41.276897, 46.229477, 49.208874>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.104527, 46.212524, 49.042736>,  <40.817242, 46.184269, 48.765842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.104527, 46.212524, 49.042736> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679256, 0.144654, -0.719504,
		-0.150957, 0.986958, 0.055911,
		0.718208, 0.070637, 0.692234,
		41.319988, 46.233715, 49.250408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.265141, 46.879971, 48.794529>,  <40.817242, 46.184269, 48.765842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.265141, 46.879971, 48.794529> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501507, 46.619064, 48.984421>,  <41.643326, 46.462521, 49.098354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.501507, 46.619064, 48.984421>,  <41.265141, 46.879971, 48.794529>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501507, 46.619064, 48.984421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.755889, 0.242051, -0.608311,
		0.281874, 0.718301, 0.636074,
		0.590913, -0.652269, 0.474728,
		41.678780, 46.423382, 49.126839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964104, 47.219727, 48.852013>,  <41.265141, 46.879971, 48.794529>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964104, 47.219727, 48.852013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027504, 46.825729, 48.879356>,  <42.065544, 46.589333, 48.895763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.027504, 46.825729, 48.879356>,  <41.964104, 47.219727, 48.852013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027504, 46.825729, 48.879356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768001, 0.079479, -0.635498,
		0.620525, 0.153231, 0.769070,
		0.158503, -0.984989, 0.068363,
		42.075054, 46.530231, 48.899864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.629135, 47.156300, 48.796589>,  <41.964104, 47.219727, 48.852013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.629135, 47.156300, 48.796589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508492, 46.782494, 48.720997>,  <42.436108, 46.558208, 48.675640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.508492, 46.782494, 48.720997>,  <42.629135, 47.156300, 48.796589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.508492, 46.782494, 48.720997> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810394, -0.146846, -0.567184,
		0.502291, -0.324217, 0.801615,
		-0.301605, -0.934516, -0.188984,
		42.418011, 46.502140, 48.664303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.210278, 46.675880, 48.911098>,  <42.629135, 47.156300, 48.796589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.210278, 46.675880, 48.911098> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966522, 46.466705, 48.672710>,  <42.820271, 46.341198, 48.529678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.966522, 46.466705, 48.672710>,  <43.210278, 46.675880, 48.911098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.966522, 46.466705, 48.672710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763485, -0.184280, -0.618976,
		0.213862, -0.832210, 0.511556,
		-0.609388, -0.522941, -0.595969,
		42.783707, 46.309822, 48.493919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.644646, 46.143372, 48.771767>,  <43.210278, 46.675880, 48.911098>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.644646, 46.143372, 48.771767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364197, 46.138206, 48.486599>,  <43.195927, 46.135105, 48.315498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.364197, 46.138206, 48.486599>,  <43.644646, 46.143372, 48.771767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.364197, 46.138206, 48.486599> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704977, -0.162505, -0.690362,
		-0.106935, -0.986623, 0.123042,
		-0.701122, -0.012918, -0.712924,
		43.153858, 46.134331, 48.272720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.837685, 45.604347, 48.286755>,  <43.644646, 46.143372, 48.771767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.837685, 45.604347, 48.286755> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571907, 45.798965, 48.059849>,  <43.412441, 45.915737, 47.923706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.571907, 45.798965, 48.059849>,  <43.837685, 45.604347, 48.286755>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.571907, 45.798965, 48.059849> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605452, -0.094529, -0.790248,
		-0.438115, -0.868526, -0.231772,
		-0.664442, 0.486546, -0.567265,
		43.372574, 45.944931, 47.889668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.701263, 45.165680, 47.745346>,  <43.837685, 45.604347, 48.286755>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.701263, 45.165680, 47.745346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594879, 45.530922, 47.621738>,  <43.531048, 45.750069, 47.547573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.594879, 45.530922, 47.621738>,  <43.701263, 45.165680, 47.745346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.594879, 45.530922, 47.621738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506287, -0.140484, -0.850845,
		-0.820327, -0.382747, -0.424932,
		-0.265962, 0.913109, -0.309022,
		43.515091, 45.804855, 47.529030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.481068, 45.078262, 47.157780>,  <43.701263, 45.165680, 47.745346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.481068, 45.078262, 47.157780> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562859, 45.469070, 47.133694>,  <43.611935, 45.703556, 47.119240>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.562859, 45.469070, 47.133694>,  <43.481068, 45.078262, 47.157780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562859, 45.469070, 47.133694> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362940, -0.132804, -0.922300,
		-0.909101, 0.166733, -0.381754,
		0.204476, 0.977017, -0.060219,
		43.624203, 45.762177, 47.115627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.198528, 45.389153, 46.454407>,  <43.481068, 45.078262, 47.157780>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.198528, 45.389153, 46.454407> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489433, 45.622696, 46.598740>,  <43.663979, 45.762821, 46.685341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489433, 45.622696, 46.598740>,  <43.198528, 45.389153, 46.454407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489433, 45.622696, 46.598740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456527, -0.018928, -0.889508,
		-0.512514, 0.811638, -0.280311,
		0.727264, 0.583854, 0.360834,
		43.707611, 45.797852, 46.706989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196030, 45.895084, 46.090961>,  <43.198528, 45.389153, 46.454407>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196030, 45.895084, 46.090961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563934, 45.858307, 46.243580>,  <43.784679, 45.836239, 46.335152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563934, 45.858307, 46.243580>,  <43.196030, 45.895084, 46.090961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563934, 45.858307, 46.243580> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369345, -0.125978, -0.920714,
		0.132720, 0.987763, -0.081912,
		0.919766, -0.091944, 0.381545,
		43.839863, 45.830723, 46.358044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<38.787315, 46.912018, 52.724270> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185341, 46.885193, 52.753525>,  <39.424156, 46.869099, 52.771076>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185341, 46.885193, 52.753525>,  <38.787315, 46.912018, 52.724270>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185341, 46.885193, 52.753525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089577, 0.289998, -0.952826,
		0.042690, 0.954675, 0.294574,
		0.995065, -0.067063, 0.073137,
		39.483860, 46.865074, 52.775467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.023148, 47.468075, 52.264175>,  <38.787315, 46.912018, 52.724270>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.023148, 47.468075, 52.264175> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343784, 47.245148, 52.350754>,  <39.536167, 47.111389, 52.402699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.343784, 47.245148, 52.350754>,  <39.023148, 47.468075, 52.264175>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.343784, 47.245148, 52.350754> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340501, 0.127982, -0.931493,
		0.491438, 0.820375, 0.292357,
		0.801590, -0.557319, 0.216444,
		39.584263, 47.077953, 52.415688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.655346, 47.845242, 51.881985>,  <39.023148, 47.468075, 52.264175>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.655346, 47.845242, 51.881985> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730469, 47.459496, 51.956532>,  <39.775543, 47.228050, 52.001259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.730469, 47.459496, 51.956532>,  <39.655346, 47.845242, 51.881985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730469, 47.459496, 51.956532> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485355, -0.073841, -0.871193,
		0.853907, 0.254076, 0.454190,
		0.187812, -0.964361, 0.186370,
		39.786812, 47.170189, 52.012444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324345, 47.764362, 51.658543>,  <39.655346, 47.845242, 51.881985>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324345, 47.764362, 51.658543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196419, 47.385376, 51.660500>,  <40.119663, 47.157982, 51.661674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.196419, 47.385376, 51.660500>,  <40.324345, 47.764362, 51.658543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.196419, 47.385376, 51.660500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638056, -0.219182, -0.738136,
		0.700433, -0.232942, 0.674635,
		-0.319810, -0.947469, 0.004892,
		40.100475, 47.101135, 51.661968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.945328, 47.253387, 51.677292>,  <40.324345, 47.764362, 51.658543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.945328, 47.253387, 51.677292> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636459, 47.032242, 51.552010>,  <40.451138, 46.899555, 51.476841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636459, 47.032242, 51.552010>,  <40.945328, 47.253387, 51.677292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636459, 47.032242, 51.552010> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558876, -0.356371, -0.748771,
		0.302348, -0.753222, 0.584159,
		-0.772168, -0.552862, -0.313210,
		40.404808, 46.866383, 51.458046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.251106, 46.576328, 51.477524>,  <40.945328, 47.253387, 51.677292>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.251106, 46.576328, 51.477524> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893303, 46.596611, 51.299854>,  <40.678623, 46.608780, 51.193253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.893303, 46.596611, 51.299854>,  <41.251106, 46.576328, 51.477524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.893303, 46.596611, 51.299854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400379, -0.351152, -0.846398,
		-0.198887, -0.934945, 0.293807,
		-0.894506, 0.050703, -0.444172,
		40.624950, 46.611824, 51.166603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.219471, 45.937557, 51.121971>,  <41.251106, 46.576328, 51.477524>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.219471, 45.937557, 51.121971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953514, 46.169418, 50.933537>,  <40.793941, 46.308537, 50.820477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.953514, 46.169418, 50.933537>,  <41.219471, 45.937557, 51.121971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.953514, 46.169418, 50.933537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369454, -0.292924, -0.881872,
		-0.649175, -0.760392, -0.019394,
		-0.664887, 0.579655, -0.471089,
		40.754047, 46.343315, 50.792210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.956070, 45.480083, 50.592697>,  <41.219471, 45.937557, 51.121971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.956070, 45.480083, 50.592697> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873013, 45.854996, 50.480701>,  <40.823177, 46.079941, 50.413506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873013, 45.854996, 50.480701>,  <40.956070, 45.480083, 50.592697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.873013, 45.854996, 50.480701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416502, -0.174270, -0.892276,
		-0.885104, -0.301894, -0.354191,
		-0.207648, 0.937278, -0.279986,
		40.810719, 46.136181, 50.396706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.749237, 45.392712, 49.916466>,  <40.956070, 45.480083, 50.592697>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.749237, 45.392712, 49.916466> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830139, 45.782768, 49.952667>,  <40.878681, 46.016804, 49.974388>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830139, 45.782768, 49.952667>,  <40.749237, 45.392712, 49.916466>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.830139, 45.782768, 49.952667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434078, -0.006423, -0.900852,
		-0.877878, 0.221486, -0.424587,
		0.202254, 0.975142, 0.090504,
		40.890816, 46.075310, 49.979820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.051605, 45.375576, 49.601498>,  <40.749237, 45.392712, 49.916466>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.051605, 45.375576, 49.601498> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796371, 45.104317, 49.455643>,  <39.643230, 44.941559, 49.368130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.796371, 45.104317, 49.455643>,  <40.051605, 45.375576, 49.601498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.796371, 45.104317, 49.455643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543796, 0.061638, 0.836951,
		-0.545104, 0.732333, -0.408106,
		-0.638082, -0.678151, -0.364640,
		39.604946, 44.900871, 49.346252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387604, 45.615540, 49.823631>,  <40.051605, 45.375576, 49.601498>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387604, 45.615540, 49.823631> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370987, 45.222397, 49.751789>,  <39.361015, 44.986511, 49.708683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.370987, 45.222397, 49.751789>,  <39.387604, 45.615540, 49.823631>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370987, 45.222397, 49.751789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522127, -0.131907, 0.842605,
		-0.851855, 0.128784, -0.507698,
		-0.041545, -0.982861, -0.179608,
		39.358524, 44.927540, 49.697906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.602829, 45.462891, 49.847801>,  <39.387604, 45.615540, 49.823631>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.602829, 45.462891, 49.847801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782684, 45.109055, 49.897316>,  <38.890598, 44.896751, 49.927025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782684, 45.109055, 49.897316>,  <38.602829, 45.462891, 49.847801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.782684, 45.109055, 49.897316> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474319, -0.119037, 0.872268,
		-0.756866, -0.450919, -0.473102,
		0.449639, -0.884591, 0.123784,
		38.917576, 44.843678, 49.934452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034325, 44.915359, 50.101780>,  <38.602829, 45.462891, 49.847801>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034325, 44.915359, 50.101780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396019, 44.783859, 50.210800>,  <38.613033, 44.704960, 50.276215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396019, 44.783859, 50.210800>,  <38.034325, 44.915359, 50.101780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.396019, 44.783859, 50.210800> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368065, -0.276344, 0.887785,
		-0.216538, -0.903083, -0.370880,
		0.904234, -0.328748, 0.272555,
		38.667290, 44.685234, 50.292568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890995, 44.330177, 50.451187>,  <38.034325, 44.915359, 50.101780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890995, 44.330177, 50.451187> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271645, 44.397751, 50.553856>,  <38.500034, 44.438293, 50.615456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.271645, 44.397751, 50.553856>,  <37.890995, 44.330177, 50.451187>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.271645, 44.397751, 50.553856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211390, -0.246317, 0.945855,
		0.223008, -0.954353, -0.198690,
		0.951621, 0.168932, 0.256671,
		38.557129, 44.448429, 50.630856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123112, 43.726143, 50.797237>,  <37.890995, 44.330177, 50.451187>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123112, 43.726143, 50.797237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351498, 44.034149, 50.911133>,  <38.488529, 44.218952, 50.979469>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.351498, 44.034149, 50.911133>,  <38.123112, 43.726143, 50.797237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.351498, 44.034149, 50.911133> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168462, -0.229562, 0.958604,
		0.803503, -0.595299, -0.001354,
		0.570968, 0.770013, 0.284739,
		38.522789, 44.265152, 50.996555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542606, 43.397728, 51.251877>,  <38.123112, 43.726143, 50.797237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542606, 43.397728, 51.251877> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525124, 43.788986, 51.333179>,  <38.514633, 44.023743, 51.381962>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525124, 43.788986, 51.333179>,  <38.542606, 43.397728, 51.251877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525124, 43.788986, 51.333179> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257300, -0.207612, 0.943766,
		0.965343, -0.011051, 0.260751,
		-0.043705, 0.978149, 0.203260,
		38.512012, 44.082432, 51.394157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831284, 43.482983, 51.954453>,  <38.542606, 43.397728, 51.251877>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831284, 43.482983, 51.954453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610569, 43.809746, 51.887295>,  <38.478142, 44.005806, 51.847000>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.610569, 43.809746, 51.887295>,  <38.831284, 43.482983, 51.954453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610569, 43.809746, 51.887295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415273, -0.094549, 0.904770,
		0.723244, 0.568959, 0.391412,
		-0.551785, 0.816913, -0.167891,
		38.445034, 44.054821, 51.836929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858223, 43.847164, 52.572990>,  <38.831284, 43.482983, 51.954453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858223, 43.847164, 52.572990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542271, 44.020653, 52.399567>,  <38.352699, 44.124748, 52.295513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542271, 44.020653, 52.399567>,  <38.858223, 43.847164, 52.572990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.542271, 44.020653, 52.399567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441637, 0.088226, 0.892846,
		0.425500, 0.896716, 0.121861,
		-0.789878, 0.433724, -0.433563,
		38.305305, 44.150768, 52.269497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692341, 44.484558, 52.975277>,  <38.858223, 43.847164, 52.572990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692341, 44.484558, 52.975277> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361752, 44.351997, 52.793236>,  <38.163399, 44.272461, 52.684013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.361752, 44.351997, 52.793236>,  <38.692341, 44.484558, 52.975277>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.361752, 44.351997, 52.793236> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508357, 0.091968, 0.856222,
		-0.241898, 0.938997, -0.244479,
		-0.826474, -0.331401, -0.455099,
		38.113808, 44.252579, 52.656708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.192379, 44.739044, 53.415863>,  <38.692341, 44.484558, 52.975277>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.192379, 44.739044, 53.415863> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960011, 44.514679, 53.179928>,  <37.820587, 44.380062, 53.038368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960011, 44.514679, 53.179928>,  <38.192379, 44.739044, 53.415863>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960011, 44.514679, 53.179928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.671729, -0.078874, 0.736586,
		-0.459681, 0.824112, -0.330959,
		-0.580925, -0.560909, -0.589837,
		37.785732, 44.346405, 53.002975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534817, 44.969780, 53.384682>,  <38.192379, 44.739044, 53.415863>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534817, 44.969780, 53.384682> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508736, 44.579361, 53.301666>,  <37.493088, 44.345108, 53.251858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508736, 44.579361, 53.301666>,  <37.534817, 44.969780, 53.384682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508736, 44.579361, 53.301666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701299, -0.103135, 0.705367,
		-0.709879, 0.191544, -0.677778,
		-0.065206, -0.976050, -0.207543,
		37.489174, 44.286545, 53.239403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.904968, 44.903400, 53.463211>,  <37.534817, 44.969780, 53.384682>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.904968, 44.903400, 53.463211> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057961, 44.534828, 53.490570>,  <37.149757, 44.313686, 53.506985>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057961, 44.534828, 53.490570>,  <36.904968, 44.903400, 53.463211>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.057961, 44.534828, 53.490570> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561573, -0.173046, 0.809130,
		-0.733718, -0.347890, -0.583635,
		0.382483, -0.921427, 0.068399,
		37.172707, 44.258400, 53.511089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326740, 44.593082, 53.573471>,  <36.904968, 44.903400, 53.463211>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326740, 44.593082, 53.573471> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604519, 44.332191, 53.695030>,  <36.771187, 44.175659, 53.767967>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604519, 44.332191, 53.695030>,  <36.326740, 44.593082, 53.573471>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.604519, 44.332191, 53.695030> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578835, -0.255483, 0.774389,
		-0.427436, -0.713674, -0.554949,
		0.694441, -0.652225, 0.303896,
		36.812851, 44.136524, 53.786198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<41.702858, 44.401188, 55.284458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442940, 44.116783, 55.176956>,  <41.286987, 43.946140, 55.112453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.442940, 44.116783, 55.176956>,  <41.702858, 44.401188, 55.284458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442940, 44.116783, 55.176956> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568174, -0.219466, -0.793103,
		0.504922, -0.668055, 0.546586,
		-0.649794, -0.711011, -0.268758,
		41.248001, 43.903481, 55.096329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023651, 43.808048, 55.040115>,  <41.702858, 44.401188, 55.284458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023651, 43.808048, 55.040115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664383, 43.769981, 54.868427>,  <41.448822, 43.747143, 54.765415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.664383, 43.769981, 54.868427>,  <42.023651, 43.808048, 55.040115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.664383, 43.769981, 54.868427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439569, -0.212098, -0.872808,
		-0.007974, -0.972604, 0.232333,
		-0.898174, -0.095166, -0.429217,
		41.394932, 43.741432, 54.739662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017136, 43.110561, 54.653141>,  <42.023651, 43.808048, 55.040115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017136, 43.110561, 54.653141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.735798, 43.328850, 54.470932>,  <41.566998, 43.459824, 54.361607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.735798, 43.328850, 54.470932>,  <42.017136, 43.110561, 54.653141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.735798, 43.328850, 54.470932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404478, -0.219725, -0.887760,
		-0.584560, -0.808646, -0.066191,
		-0.703340, 0.545722, -0.455522,
		41.524796, 43.492565, 54.334274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.773800, 42.659946, 54.178814>,  <42.017136, 43.110561, 54.653141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.773800, 42.659946, 54.178814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.674686, 43.033813, 54.076832>,  <41.615219, 43.258133, 54.015644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.674686, 43.033813, 54.076832>,  <41.773800, 42.659946, 54.178814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674686, 43.033813, 54.076832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373465, -0.150670, -0.915326,
		-0.893940, -0.322015, -0.311733,
		-0.247780, 0.934668, -0.254951,
		41.600353, 43.314213, 54.000347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.517662, 42.627026, 53.458073>,  <41.773800, 42.659946, 54.178814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.517662, 42.627026, 53.458073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570877, 43.017380, 53.527298>,  <41.602806, 43.251591, 53.568832>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.570877, 43.017380, 53.527298>,  <41.517662, 42.627026, 53.458073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.570877, 43.017380, 53.527298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241747, 0.137392, -0.960563,
		-0.961176, 0.169632, -0.217638,
		0.133040, 0.975883, 0.173066,
		41.610790, 43.310146, 53.579216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.071568, 43.013340, 52.993103>,  <41.517662, 42.627026, 53.458073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.071568, 43.013340, 52.993103> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401222, 43.212547, 53.101017>,  <41.599014, 43.332069, 53.165764>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.401222, 43.212547, 53.101017>,  <41.071568, 43.013340, 52.993103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.401222, 43.212547, 53.101017> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293184, 0.032446, -0.955505,
		-0.484609, 0.866561, -0.119271,
		0.824134, 0.498015, 0.269786,
		41.648464, 43.361950, 53.181953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278633, 43.339336, 52.378986>,  <41.071568, 43.013340, 52.993103>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278633, 43.339336, 52.378986> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589172, 43.389793, 52.626007>,  <41.775497, 43.420067, 52.774220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.589172, 43.389793, 52.626007>,  <41.278633, 43.339336, 52.378986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.589172, 43.389793, 52.626007> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612180, 0.082348, -0.786419,
		-0.150051, 0.988589, -0.013289,
		0.776351, 0.126138, 0.617550,
		41.822079, 43.427635, 52.811272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.665180, 43.857441, 52.126572>,  <41.278633, 43.339336, 52.378986>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.665180, 43.857441, 52.126572> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.944656, 43.703362, 52.367722>,  <42.112343, 43.610912, 52.512413>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.944656, 43.703362, 52.367722>,  <41.665180, 43.857441, 52.126572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.944656, 43.703362, 52.367722> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662631, 0.030718, -0.748316,
		0.269731, 0.922323, 0.276706,
		0.698689, -0.385198, 0.602874,
		42.154263, 43.587803, 52.548584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.229542, 44.237514, 52.088699>,  <41.665180, 43.857441, 52.126572>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.229542, 44.237514, 52.088699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.346519, 43.873581, 52.206467>,  <42.416706, 43.655220, 52.277126>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.346519, 43.873581, 52.206467>,  <42.229542, 44.237514, 52.088699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346519, 43.873581, 52.206467> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555016, -0.089230, -0.827040,
		0.778737, 0.405274, 0.478875,
		0.292448, -0.909830, 0.294420,
		42.434254, 43.600632, 52.294792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.932205, 44.311749, 51.951794>,  <42.229542, 44.237514, 52.088699>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.932205, 44.311749, 51.951794> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.878895, 43.918945, 52.005295>,  <42.846909, 43.683262, 52.037395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.878895, 43.918945, 52.005295>,  <42.932205, 44.311749, 51.951794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878895, 43.918945, 52.005295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652592, -0.188528, -0.733881,
		0.745896, -0.010521, 0.665979,
		-0.133277, -0.982011, 0.133757,
		42.838913, 43.624340, 52.045422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.561718, 43.952835, 52.012451>,  <42.932205, 44.311749, 51.951794>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.561718, 43.952835, 52.012451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302006, 43.672371, 51.894596>,  <43.146179, 43.504093, 51.823883>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.302006, 43.672371, 51.894596>,  <43.561718, 43.952835, 52.012451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.302006, 43.672371, 51.894596> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636874, -0.289484, -0.714556,
		0.415723, -0.651596, 0.634505,
		-0.649281, -0.701157, -0.294639,
		43.107220, 43.462025, 51.806206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.984539, 43.446869, 51.794769>,  <43.561718, 43.952835, 52.012451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.984539, 43.446869, 51.794769> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.629211, 43.386154, 51.621399>,  <43.416016, 43.349724, 51.517376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.629211, 43.386154, 51.621399>,  <43.984539, 43.446869, 51.794769>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629211, 43.386154, 51.621399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459087, -0.317539, -0.829704,
		-0.011687, -0.936018, 0.351759,
		-0.888314, -0.151791, -0.433425,
		43.362717, 43.340618, 51.491371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928307, 42.705006, 51.638504>,  <43.984539, 43.446869, 51.794769>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928307, 42.705006, 51.638504> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.693359, 42.926064, 51.402000>,  <43.552391, 43.058697, 51.260098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.693359, 42.926064, 51.402000>,  <43.928307, 42.705006, 51.638504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.693359, 42.926064, 51.402000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561832, -0.247409, -0.789388,
		-0.582534, -0.795846, -0.165174,
		-0.587366, 0.552646, -0.591256,
		43.517151, 43.091858, 51.224625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749035, 42.216015, 51.091473>,  <43.928307, 42.705006, 51.638504>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749035, 42.216015, 51.091473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703133, 42.598587, 50.984085>,  <43.675591, 42.828129, 50.919651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.703133, 42.598587, 50.984085>,  <43.749035, 42.216015, 51.091473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.703133, 42.598587, 50.984085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658887, -0.128968, -0.741104,
		-0.743436, -0.261938, -0.615378,
		-0.114759, 0.956428, -0.268468,
		43.668705, 42.885517, 50.903545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.075851, 41.907726, 50.864445>,  <43.749035, 42.216015, 51.091473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.075851, 41.907726, 50.864445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924164, 41.540222, 50.820484>,  <42.833149, 41.319721, 50.794109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.924164, 41.540222, 50.820484>,  <43.075851, 41.907726, 50.864445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924164, 41.540222, 50.820484> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261838, -0.007363, 0.965084,
		-0.887486, 0.394756, -0.237773,
		-0.379222, -0.918757, -0.109897,
		42.810398, 41.264595, 50.787514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.412788, 41.911263, 51.192162>,  <43.075851, 41.907726, 50.864445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.412788, 41.911263, 51.192162> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.488895, 41.519112, 51.171539>,  <42.534561, 41.283821, 51.159164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.488895, 41.519112, 51.171539>,  <42.412788, 41.911263, 51.192162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488895, 41.519112, 51.171539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287025, -0.105777, 0.952065,
		-0.938836, -0.166352, -0.301519,
		0.190271, -0.980376, -0.051560,
		42.545979, 41.224998, 51.156071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.882793, 41.645912, 51.473347>,  <42.412788, 41.911263, 51.192162>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.882793, 41.645912, 51.473347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.134987, 41.335457, 51.477234>,  <42.286304, 41.149185, 51.479565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.134987, 41.335457, 51.477234>,  <41.882793, 41.645912, 51.473347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.134987, 41.335457, 51.477234> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256731, -0.196704, 0.946254,
		-0.732513, -0.599096, -0.323278,
		0.630487, -0.776139, 0.009718,
		42.324135, 41.102615, 51.480148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.502628, 41.067753, 51.545444>,  <41.882793, 41.645912, 51.473347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.502628, 41.067753, 51.545444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869747, 40.978966, 51.677132>,  <42.090019, 40.925694, 51.756145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.869747, 40.978966, 51.677132>,  <41.502628, 41.067753, 51.545444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.869747, 40.978966, 51.677132> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395706, -0.443039, 0.804446,
		-0.032701, -0.868590, -0.494451,
		0.917795, -0.221963, 0.329219,
		42.145084, 40.912376, 51.775898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458847, 40.388313, 51.844376>,  <41.502628, 41.067753, 51.545444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458847, 40.388313, 51.844376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.787186, 40.548981, 52.006794>,  <41.984188, 40.645382, 52.104244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.787186, 40.548981, 52.006794>,  <41.458847, 40.388313, 51.844376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.787186, 40.548981, 52.006794> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297178, -0.306751, 0.904206,
		0.487742, -0.862885, -0.132431,
		0.820849, 0.401664, 0.406046,
		42.033440, 40.669479, 52.128609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.735085, 39.881432, 52.439106>,  <41.458847, 40.388313, 51.844376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.735085, 39.881432, 52.439106> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.868484, 40.255882, 52.483730>,  <41.948524, 40.480553, 52.510506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.868484, 40.255882, 52.483730>,  <41.735085, 39.881432, 52.439106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.868484, 40.255882, 52.483730> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151047, -0.063748, 0.986469,
		0.930570, -0.345841, 0.120139,
		0.333503, 0.936125, 0.111560,
		41.968536, 40.536720, 52.517197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.092220, 39.809792, 53.073257>,  <41.735085, 39.881432, 52.439106>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.092220, 39.809792, 53.073257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066010, 40.205330, 53.019756>,  <42.050282, 40.442654, 52.987656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.066010, 40.205330, 53.019756>,  <42.092220, 39.809792, 53.073257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.066010, 40.205330, 53.019756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077882, 0.128563, 0.988639,
		0.994807, 0.075201, 0.068589,
		-0.065529, 0.988846, -0.133752,
		42.046352, 40.501984, 52.979630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.582432, 39.965626, 53.526264>,  <42.092220, 39.809792, 53.073257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.582432, 39.965626, 53.526264> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328800, 40.264854, 53.447948>,  <42.176620, 40.444393, 53.400959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.328800, 40.264854, 53.447948>,  <42.582432, 39.965626, 53.526264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.328800, 40.264854, 53.447948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169871, 0.112262, 0.979051,
		0.754383, 0.654051, 0.055894,
		-0.634075, 0.748074, -0.195793,
		42.138577, 40.489277, 53.389210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.807289, 40.536251, 53.963581>,  <42.582432, 39.965626, 53.526264>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.807289, 40.536251, 53.963581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.421291, 40.584213, 53.870277>,  <42.189693, 40.612991, 53.814297>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.421291, 40.584213, 53.870277>,  <42.807289, 40.536251, 53.963581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.421291, 40.584213, 53.870277> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215746, 0.142797, 0.965952,
		0.149134, 0.982462, -0.111928,
		-0.964994, 0.119908, -0.233258,
		42.131794, 40.620186, 53.800301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.652279, 41.154892, 54.263554>,  <42.807289, 40.536251, 53.963581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.652279, 41.154892, 54.263554> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.300579, 40.980713, 54.186298>,  <42.089558, 40.876205, 54.139946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.300579, 40.980713, 54.186298>,  <42.652279, 41.154892, 54.263554>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.300579, 40.980713, 54.186298> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337240, 0.282664, 0.897981,
		-0.336435, 0.854683, -0.395384,
		-0.879250, -0.435452, -0.193135,
		42.036804, 40.850079, 54.128357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.096508, 41.634518, 54.401512>,  <42.652279, 41.154892, 54.263554>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.096508, 41.634518, 54.401512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915527, 41.278191, 54.418163>,  <41.806938, 41.064396, 54.428154>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.915527, 41.278191, 54.418163>,  <42.096508, 41.634518, 54.401512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.915527, 41.278191, 54.418163> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488368, 0.286560, 0.824245,
		-0.746179, 0.352603, -0.564702,
		-0.452452, -0.890817, 0.041625,
		41.779793, 41.010944, 54.430653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503414, 41.797337, 54.746330>,  <42.096508, 41.634518, 54.401512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503414, 41.797337, 54.746330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501923, 41.398392, 54.775330>,  <41.501030, 41.159023, 54.792728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.501923, 41.398392, 54.775330>,  <41.503414, 41.797337, 54.746330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501923, 41.398392, 54.775330> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578684, 0.061278, 0.813246,
		-0.815543, -0.038924, -0.577386,
		-0.003726, -0.997361, 0.072500,
		41.500805, 41.099182, 54.797081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732330, 41.544292, 54.733017>,  <41.503414, 41.797337, 54.746330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732330, 41.544292, 54.733017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.971355, 41.270195, 54.899563>,  <41.114769, 41.105736, 54.999493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.971355, 41.270195, 54.899563>,  <40.732330, 41.544292, 54.733017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.971355, 41.270195, 54.899563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498776, 0.088912, 0.862158,
		-0.627811, -0.722865, -0.288654,
		0.597559, -0.685246, 0.416368,
		41.150623, 41.064621, 55.024471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.339870, 40.928707, 54.975838>,  <40.732330, 41.544292, 54.733017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.339870, 40.928707, 54.975838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.678062, 40.950531, 55.188320>,  <40.880978, 40.963627, 55.315811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.678062, 40.950531, 55.188320>,  <40.339870, 40.928707, 54.975838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.678062, 40.950531, 55.188320> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531294, -0.014077, 0.847071,
		0.053701, -0.998411, 0.017090,
		0.845484, 0.054569, 0.531205,
		40.931709, 40.966900, 55.347683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815868, 40.360794, 54.760738>,  <40.339870, 40.928707, 54.975838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815868, 40.360794, 54.760738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455521, 40.474976, 54.629925>,  <39.239311, 40.543484, 54.551437>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.455521, 40.474976, 54.629925>,  <39.815868, 40.360794, 54.760738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.455521, 40.474976, 54.629925> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227469, -0.331240, -0.915717,
		-0.369728, -0.899329, 0.233470,
		-0.900866, 0.285459, -0.327038,
		39.185261, 40.560612, 54.531815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633389, 39.842159, 54.320824>,  <39.815868, 40.360794, 54.760738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633389, 39.842159, 54.320824> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393028, 40.149040, 54.231091>,  <39.248814, 40.333168, 54.177250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.393028, 40.149040, 54.231091>,  <39.633389, 39.842159, 54.320824>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.393028, 40.149040, 54.231091> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075506, -0.224916, -0.971448,
		-0.795753, -0.600677, 0.077222,
		-0.600896, 0.767202, -0.224332,
		39.212761, 40.379200, 54.163792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125668, 39.585232, 53.880936>,  <39.633389, 39.842159, 54.320824>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125668, 39.585232, 53.880936> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120567, 39.979553, 53.813969>,  <39.117508, 40.216145, 53.773788>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.120567, 39.979553, 53.813969>,  <39.125668, 39.585232, 53.880936>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.120567, 39.979553, 53.813969> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025621, -0.167055, -0.985615,
		-0.999590, -0.016860, -0.023126,
		-0.012754, 0.985804, -0.167418,
		39.116741, 40.275295, 53.763744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664608, 39.652744, 53.328632>,  <39.125668, 39.585232, 53.880936>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664608, 39.652744, 53.328632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872265, 39.994087, 53.347717>,  <38.996857, 40.198895, 53.359169>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.872265, 39.994087, 53.347717>,  <38.664608, 39.652744, 53.328632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.872265, 39.994087, 53.347717> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084460, 0.004326, -0.996418,
		-0.850507, 0.521308, -0.069829,
		0.519138, 0.853358, 0.047709,
		39.028008, 40.250095, 53.362030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299049, 40.128212, 52.852722>,  <38.664608, 39.652744, 53.328632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299049, 40.128212, 52.852722> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673847, 40.250595, 52.920174>,  <38.898724, 40.324024, 52.960644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.673847, 40.250595, 52.920174>,  <38.299049, 40.128212, 52.852722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.673847, 40.250595, 52.920174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154366, 0.070429, -0.985500,
		-0.313397, 0.949437, 0.018762,
		0.936992, 0.305956, 0.168632,
		38.954945, 40.342381, 52.970764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.375488, 40.779232, 52.563206>,  <38.299049, 40.128212, 52.852722>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.375488, 40.779232, 52.563206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744614, 40.627197, 52.588333>,  <38.966087, 40.535976, 52.603409>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.744614, 40.627197, 52.588333>,  <38.375488, 40.779232, 52.563206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.744614, 40.627197, 52.588333> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083549, 0.038277, -0.995768,
		0.376075, 0.924158, 0.067078,
		0.922815, -0.380087, 0.062817,
		39.021458, 40.513172, 52.607178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.741604, 41.233208, 52.216148>,  <38.375488, 40.779232, 52.563206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.741604, 41.233208, 52.216148> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952595, 40.894043, 52.194920>,  <39.079189, 40.690544, 52.182182>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.952595, 40.894043, 52.194920>,  <38.741604, 41.233208, 52.216148>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952595, 40.894043, 52.194920> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193164, 0.180525, -0.964416,
		0.827321, 0.498453, 0.259008,
		0.527473, -0.847912, -0.053069,
		39.110836, 40.639668, 52.179001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309402, 41.335480, 51.819500>,  <38.741604, 41.233208, 52.216148>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309402, 41.335480, 51.819500> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273178, 40.937630, 51.799397>,  <39.251442, 40.698921, 51.787334>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.273178, 40.937630, 51.799397>,  <39.309402, 41.335480, 51.819500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273178, 40.937630, 51.799397> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150708, 0.036201, -0.987916,
		0.984421, -0.097043, 0.146619,
		-0.090562, -0.994622, -0.050262,
		39.246010, 40.639244, 51.784317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927105, 41.107845, 51.393475>,  <39.309402, 41.335480, 51.819500>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927105, 41.107845, 51.393475> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681587, 40.793381, 51.364632>,  <39.534275, 40.604702, 51.347328>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.681587, 40.793381, 51.364632>,  <39.927105, 41.107845, 51.393475>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681587, 40.793381, 51.364632> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318041, -0.162645, -0.934022,
		0.722569, -0.596230, 0.349864,
		-0.613795, -0.786166, -0.072103,
		39.497448, 40.557529, 51.343002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254021, 40.621933, 50.942062>,  <39.927105, 41.107845, 51.393475>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.254021, 40.621933, 50.942062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.860981, 40.549019, 50.927818>,  <39.625156, 40.505268, 50.919270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.860981, 40.549019, 50.927818>,  <40.254021, 40.621933, 50.942062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860981, 40.549019, 50.927818> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049911, -0.074463, -0.995974,
		0.178902, -0.980422, 0.082265,
		-0.982600, -0.182288, -0.035613,
		39.566200, 40.494331, 50.917133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.184521, 40.239929, 50.308781>,  <40.254021, 40.621933, 50.942062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.184521, 40.239929, 50.308781> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.799438, 40.313896, 50.387772>,  <39.568390, 40.358276, 50.435165>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.799438, 40.313896, 50.387772>,  <40.184521, 40.239929, 50.308781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.799438, 40.313896, 50.387772> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207995, -0.039102, -0.977348,
		-0.173011, -0.981975, 0.076107,
		-0.962707, 0.184922, 0.197481,
		39.510628, 40.369373, 50.447018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780224, 39.650894, 50.102676>,  <40.184521, 40.239929, 50.308781>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.780224, 39.650894, 50.102676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.537865, 39.968643, 50.085388>,  <39.392448, 40.159290, 50.075016>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.537865, 39.968643, 50.085388>,  <39.780224, 39.650894, 50.102676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.537865, 39.968643, 50.085388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138788, -0.159045, -0.977467,
		-0.783346, -0.586242, 0.206613,
		-0.605893, 0.794371, -0.043224,
		39.356098, 40.206955, 50.072422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.321796, 39.382683, 49.653233>,  <39.780224, 39.650894, 50.102676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.321796, 39.382683, 49.653233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313301, 39.782440, 49.642242>,  <39.308205, 40.022297, 49.635647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.313301, 39.782440, 49.642242>,  <39.321796, 39.382683, 49.653233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.313301, 39.782440, 49.642242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050783, -0.026367, -0.998361,
		-0.998484, -0.022596, -0.050192,
		-0.021236, 0.999397, -0.027474,
		39.306931, 40.082260, 49.633999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.869511, 39.570900, 49.124996>,  <39.321796, 39.382683, 49.653233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.869511, 39.570900, 49.124996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073841, 39.913406, 49.155609>,  <39.196438, 40.118912, 49.173977>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.073841, 39.913406, 49.155609>,  <38.869511, 39.570900, 49.124996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.073841, 39.913406, 49.155609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165912, -0.010846, -0.986081,
		-0.843522, 0.516414, -0.147606,
		0.510827, 0.856271, 0.076530,
		39.227089, 40.170288, 49.178570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<35.999695, 43.942379, 53.610855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318253, 43.942162, 53.852768>,  <36.509388, 43.942032, 53.997913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.318253, 43.942162, 53.852768>,  <35.999695, 43.942379, 53.610855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.318253, 43.942162, 53.852768> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587255, -0.239668, 0.773105,
		0.144529, -0.970855, -0.191186,
		0.796394, -0.000539, 0.604778,
		36.557171, 43.942001, 54.034203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.925564, 43.368156, 54.052410>,  <35.999695, 43.942379, 53.610855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.925564, 43.368156, 54.052410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.196442, 43.582237, 54.254383>,  <36.358967, 43.710686, 54.375568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.196442, 43.582237, 54.254383>,  <35.925564, 43.368156, 54.052410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196442, 43.582237, 54.254383> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520814, -0.136103, 0.842751,
		0.519769, -0.833684, 0.186575,
		0.677194, 0.535207, 0.504937,
		36.399601, 43.742798, 54.405865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241768, 42.921768, 54.645985>,  <35.925564, 43.368156, 54.052410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241768, 42.921768, 54.645985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316654, 43.305229, 54.731709>,  <36.361588, 43.535305, 54.783142>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.316654, 43.305229, 54.731709>,  <36.241768, 42.921768, 54.645985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316654, 43.305229, 54.731709> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415933, -0.120279, 0.901406,
		0.889915, -0.257895, 0.376219,
		0.187217, 0.958657, 0.214305,
		36.372818, 43.592827, 54.796001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360779, 42.860775, 55.228531>,  <36.241768, 42.921768, 54.645985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360779, 42.860775, 55.228531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338436, 43.260010, 55.239159>,  <36.325031, 43.499550, 55.245537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338436, 43.260010, 55.239159>,  <36.360779, 42.860775, 55.228531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338436, 43.260010, 55.239159> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225463, -0.038532, 0.973489,
		0.972649, 0.048384, 0.227184,
		-0.055856, 0.998085, 0.026569,
		36.321678, 43.559437, 55.247128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.724274, 43.079937, 55.845226>,  <36.360779, 42.860775, 55.228531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.724274, 43.079937, 55.845226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478722, 43.374252, 55.730843>,  <36.331390, 43.550842, 55.662212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.478722, 43.374252, 55.730843>,  <36.724274, 43.079937, 55.845226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.478722, 43.374252, 55.730843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288914, 0.127694, 0.948801,
		0.734627, 0.665068, 0.134189,
		-0.613882, 0.735784, -0.285955,
		36.294556, 43.594986, 55.645058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.868347, 43.627197, 56.340832>,  <36.724274, 43.079937, 55.845226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.868347, 43.627197, 56.340832> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499695, 43.698433, 56.202915>,  <36.278503, 43.741173, 56.120167>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.499695, 43.698433, 56.202915>,  <36.868347, 43.627197, 56.340832>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499695, 43.698433, 56.202915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341204, 0.051376, 0.938584,
		0.184863, 0.982673, 0.013415,
		-0.921632, 0.178087, -0.344790,
		36.223206, 43.751858, 56.099480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.674534, 44.105717, 56.781933>,  <36.868347, 43.627197, 56.340832>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.674534, 44.105717, 56.781933> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360840, 43.923607, 56.613312>,  <36.172623, 43.814342, 56.512138>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.360840, 43.923607, 56.613312>,  <36.674534, 44.105717, 56.781933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360840, 43.923607, 56.613312> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447550, -0.055490, 0.892536,
		-0.429739, 0.888621, -0.160241,
		-0.784234, -0.455273, -0.421548,
		36.125568, 43.787025, 56.486847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032101, 44.446072, 57.123585>,  <36.674534, 44.105717, 56.781933>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032101, 44.446072, 57.123585> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917862, 44.094612, 56.970531>,  <35.849319, 43.883736, 56.878700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.917862, 44.094612, 56.970531>,  <36.032101, 44.446072, 57.123585>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917862, 44.094612, 56.970531> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334971, -0.282559, 0.898863,
		-0.897903, 0.384883, -0.213625,
		-0.285595, -0.878650, -0.382635,
		35.832184, 43.831017, 56.855740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471703, 44.325562, 57.414589>,  <36.032101, 44.446072, 57.123585>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471703, 44.325562, 57.414589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526138, 43.961563, 57.257927>,  <35.558800, 43.743164, 57.163929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.526138, 43.961563, 57.257927>,  <35.471703, 44.325562, 57.414589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.526138, 43.961563, 57.257927> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530048, -0.400871, 0.747229,
		-0.836976, 0.105911, -0.536892,
		0.136085, -0.909992, -0.391658,
		35.566963, 43.688564, 57.140430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.837070, 44.024246, 57.493248>,  <35.471703, 44.325562, 57.414589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.837070, 44.024246, 57.493248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088791, 43.716553, 57.448967>,  <35.239822, 43.531937, 57.422398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.088791, 43.716553, 57.448967>,  <34.837070, 44.024246, 57.493248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088791, 43.716553, 57.448967> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359275, -0.414271, 0.836243,
		-0.689128, -0.486477, -0.537068,
		0.629304, -0.769233, -0.110707,
		35.277580, 43.485783, 57.415756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.480633, 43.512291, 57.820850>,  <34.837070, 44.024246, 57.493248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.480633, 43.512291, 57.820850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860313, 43.387268, 57.806259>,  <35.088120, 43.312256, 57.797504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.860313, 43.387268, 57.806259>,  <34.480633, 43.512291, 57.820850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860313, 43.387268, 57.806259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064910, -0.307912, 0.949198,
		-0.307912, -0.898609, -0.312557,
		-0.949198, 0.312557, 0.036481,
		35.145073, 43.293503, 57.795315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.501869, 42.824375, 57.942028>,  <34.480633, 43.512291, 57.820850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.501869, 42.824375, 57.942028> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858208, 42.967834, 58.053570>,  <35.072010, 43.053909, 58.120495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.858208, 42.967834, 58.053570>,  <34.501869, 42.824375, 57.942028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.858208, 42.967834, 58.053570> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185645, -0.272826, 0.943982,
		0.414638, -0.892713, -0.176465,
		0.890849, 0.358650, 0.278852,
		35.125462, 43.075428, 58.137226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845024, 42.196934, 58.289001>,  <34.501869, 42.824375, 57.942028>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845024, 42.196934, 58.289001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934250, 42.572556, 58.393631>,  <34.987785, 42.797928, 58.456409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.934250, 42.572556, 58.393631>,  <34.845024, 42.196934, 58.289001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.934250, 42.572556, 58.393631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159029, -0.229687, 0.960184,
		0.961744, -0.255785, 0.098101,
		0.223068, 0.939052, 0.261577,
		35.001171, 42.854271, 58.472103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330673, 42.190018, 58.780804>,  <34.845024, 42.196934, 58.289001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330673, 42.190018, 58.780804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058388, 42.482475, 58.798965>,  <34.895016, 42.657948, 58.809864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.058388, 42.482475, 58.798965>,  <35.330673, 42.190018, 58.780804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.058388, 42.482475, 58.798965> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114859, -0.167746, 0.979116,
		0.723488, 0.661283, 0.198165,
		-0.680715, 0.731140, 0.045408,
		34.854172, 42.701817, 58.812588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.924232, 42.063961, 59.131428>,  <35.330673, 42.190018, 58.780804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.924232, 42.063961, 59.131428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145004, 41.736626, 59.195541>,  <36.277466, 41.540222, 59.234009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.145004, 41.736626, 59.195541>,  <35.924232, 42.063961, 59.131428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.145004, 41.736626, 59.195541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271883, -0.005113, -0.962317,
		0.788325, 0.574708, 0.219672,
		0.551928, -0.818343, 0.160284,
		36.310581, 41.491123, 59.243626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636147, 42.245892, 58.929501>,  <35.924232, 42.063961, 59.131428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636147, 42.245892, 58.929501> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608406, 41.847511, 58.906616>,  <36.591763, 41.608482, 58.892887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.608406, 41.847511, 58.906616>,  <36.636147, 42.245892, 58.929501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.608406, 41.847511, 58.906616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387294, 0.025970, -0.921591,
		0.919344, -0.086075, 0.383924,
		-0.069355, -0.995950, -0.057211,
		36.587601, 41.548725, 58.889454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.206425, 42.056648, 58.625092>,  <36.636147, 42.245892, 58.929501>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.206425, 42.056648, 58.625092> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981670, 41.728714, 58.580997>,  <36.846817, 41.531952, 58.554543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.981670, 41.728714, 58.580997>,  <37.206425, 42.056648, 58.625092>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981670, 41.728714, 58.580997> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468298, -0.205411, -0.859362,
		0.681892, -0.534488, 0.499345,
		-0.561890, -0.819834, -0.110232,
		36.813103, 41.482765, 58.547928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.714630, 41.370728, 58.488045>,  <37.206425, 42.056648, 58.625092>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.714630, 41.370728, 58.488045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350033, 41.346245, 58.325352>,  <37.131275, 41.331554, 58.227737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.350033, 41.346245, 58.325352>,  <37.714630, 41.370728, 58.488045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350033, 41.346245, 58.325352> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384092, -0.480414, -0.788465,
		-0.147140, -0.874904, 0.461404,
		-0.911495, -0.061206, -0.406731,
		37.076584, 41.327885, 58.203331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.923328, 40.780483, 58.160069>,  <37.714630, 41.370728, 58.488045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.923328, 40.780483, 58.160069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574234, 40.921356, 58.024834>,  <37.364777, 41.005878, 57.943691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.574234, 40.921356, 58.024834>,  <37.923328, 40.780483, 58.160069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.574234, 40.921356, 58.024834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191996, -0.389117, -0.900958,
		-0.448860, -0.851207, 0.271977,
		-0.872733, 0.352186, -0.338087,
		37.312412, 41.027012, 57.923409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.522964, 40.254524, 57.865589>,  <37.923328, 40.780483, 58.160069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.522964, 40.254524, 57.865589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420578, 40.601219, 57.694363>,  <37.359146, 40.809238, 57.591625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.420578, 40.601219, 57.694363>,  <37.522964, 40.254524, 57.865589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.420578, 40.601219, 57.694363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220390, -0.378835, -0.898839,
		-0.941227, -0.324418, -0.094051,
		-0.255969, 0.866740, -0.428068,
		37.343788, 40.861240, 57.565941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.283428, 40.057461, 57.191116>,  <37.522964, 40.254524, 57.865589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.283428, 40.057461, 57.191116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301216, 40.451599, 57.125252>,  <37.311890, 40.688084, 57.085732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.301216, 40.451599, 57.125252>,  <37.283428, 40.057461, 57.191116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.301216, 40.451599, 57.125252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383689, -0.169027, -0.907861,
		-0.922391, -0.022809, -0.385583,
		0.044467, 0.985347, -0.164661,
		37.314556, 40.747204, 57.075855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.092991, 40.054527, 56.541943>,  <37.283428, 40.057461, 57.191116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.092991, 40.054527, 56.541943> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267090, 40.403198, 56.632042>,  <37.371548, 40.612400, 56.686100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.267090, 40.403198, 56.632042>,  <37.092991, 40.054527, 56.541943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267090, 40.403198, 56.632042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551019, -0.060052, -0.832329,
		-0.711999, 0.486381, -0.506450,
		0.435243, 0.871680, 0.225248,
		37.397663, 40.664703, 56.699615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.053169, 40.427155, 55.991932>,  <37.092991, 40.054527, 56.541943>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.053169, 40.427155, 55.991932> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355003, 40.598412, 56.190849>,  <37.536102, 40.701164, 56.310200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.355003, 40.598412, 56.190849>,  <37.053169, 40.427155, 55.991932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355003, 40.598412, 56.190849> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582057, -0.086753, -0.808507,
		-0.303014, 0.899538, -0.314665,
		0.754581, 0.428142, 0.497295,
		37.581379, 40.726852, 56.340038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.186306, 41.092159, 55.659817>,  <37.053169, 40.427155, 55.991932>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.186306, 41.092159, 55.659817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512642, 40.998451, 55.871300>,  <37.708443, 40.942226, 55.998188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.512642, 40.998451, 55.871300>,  <37.186306, 41.092159, 55.659817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.512642, 40.998451, 55.871300> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.565976, 0.135859, -0.813150,
		0.118667, 0.962632, 0.243430,
		0.815836, -0.234270, 0.528704,
		37.757393, 40.928169, 56.029911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.617805, 41.638390, 55.564091>,  <37.186306, 41.092159, 55.659817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.617805, 41.638390, 55.564091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855331, 41.328262, 55.650135>,  <37.997845, 41.142185, 55.701759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.855331, 41.328262, 55.650135>,  <37.617805, 41.638390, 55.564091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.855331, 41.328262, 55.650135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475271, 0.122268, -0.871302,
		0.649235, 0.619623, 0.441090,
		0.593811, -0.775317, 0.215108,
		38.033474, 41.095669, 55.714668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422619, 41.797218, 55.452065>,  <37.617805, 41.638390, 55.564091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422619, 41.797218, 55.452065> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382374, 41.399467, 55.465271>,  <38.358227, 41.160816, 55.473194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.382374, 41.399467, 55.465271>,  <38.422619, 41.797218, 55.452065>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.382374, 41.399467, 55.465271> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602680, -0.087317, -0.793191,
		0.791614, -0.059911, 0.608077,
		-0.100617, -0.994377, 0.033015,
		38.352188, 41.101154, 55.475174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.147675, 41.506844, 55.437538>,  <38.422619, 41.797218, 55.452065>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.147675, 41.506844, 55.437538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.917053, 41.203171, 55.316727>,  <38.778679, 41.020966, 55.244240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.917053, 41.203171, 55.316727>,  <39.147675, 41.506844, 55.437538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917053, 41.203171, 55.316727> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665996, -0.222531, -0.711990,
		0.473320, -0.611653, 0.633915,
		-0.576556, -0.759184, -0.302030,
		38.744087, 40.975414, 55.226116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.596310, 41.054089, 55.084003>,  <39.147675, 41.506844, 55.437538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.596310, 41.054089, 55.084003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249077, 40.887825, 54.975441>,  <39.040737, 40.788067, 54.910301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.249077, 40.887825, 54.975441>,  <39.596310, 41.054089, 55.084003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.249077, 40.887825, 54.975441> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400950, -0.264690, -0.877028,
		0.292706, -0.870153, 0.396431,
		-0.868080, -0.415660, -0.271411,
		38.988651, 40.763126, 54.894016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.052135, 40.887756, 55.651985>,  <39.596310, 41.054089, 55.084003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.052135, 40.887756, 55.651985> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434422, 40.912910, 55.766983>,  <40.663792, 40.928001, 55.835983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.434422, 40.912910, 55.766983>,  <40.052135, 40.887756, 55.651985>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.434422, 40.912910, 55.766983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294123, 0.171156, 0.940318,
		0.009923, -0.983235, 0.182072,
		0.955716, 0.062882, 0.287493,
		40.721138, 40.931774, 55.853230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271332, 40.354820, 56.213634>,  <40.052135, 40.887756, 55.651985>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271332, 40.354820, 56.213634> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525154, 40.662003, 56.248474>,  <40.677448, 40.846313, 56.269379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.525154, 40.662003, 56.248474>,  <40.271332, 40.354820, 56.213634>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525154, 40.662003, 56.248474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235965, 0.085187, 0.968021,
		0.735978, -0.634811, 0.235266,
		0.634552, 0.767957, 0.087097,
		40.715519, 40.892391, 56.274605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.842274, 40.166668, 56.702538>,  <40.271332, 40.354820, 56.213634>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.842274, 40.166668, 56.702538> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802914, 40.564674, 56.696190>,  <40.779297, 40.803478, 56.692379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.802914, 40.564674, 56.696190>,  <40.842274, 40.166668, 56.702538>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.802914, 40.564674, 56.696190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283170, -0.012706, 0.958985,
		0.954008, 0.098861, 0.283010,
		-0.098402, 0.995020, -0.015873,
		40.773392, 40.863182, 56.691429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840397, 40.366264, 57.432240>,  <40.842274, 40.166668, 56.702538>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840397, 40.366264, 57.432240> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721214, 40.723984, 57.298698>,  <40.649704, 40.938614, 57.218575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.721214, 40.723984, 57.298698>,  <40.840397, 40.366264, 57.432240>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721214, 40.723984, 57.298698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377522, 0.210830, 0.901681,
		0.876755, 0.394699, 0.274797,
		-0.297957, 0.894295, -0.333854,
		40.631828, 40.992271, 57.198544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007343, 40.924618, 57.896019>,  <40.840397, 40.366264, 57.432240>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007343, 40.924618, 57.896019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727730, 41.125595, 57.692490>,  <40.559963, 41.246181, 57.570370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.727730, 41.125595, 57.692490>,  <41.007343, 40.924618, 57.896019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.727730, 41.125595, 57.692490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329319, 0.405414, 0.852754,
		0.634745, 0.763669, -0.117934,
		-0.699033, 0.502444, -0.508825,
		40.518021, 41.276329, 57.539841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086769, 41.614330, 58.087769>,  <41.007343, 40.924618, 57.896019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086769, 41.614330, 58.087769> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.717148, 41.578125, 57.939217>,  <40.495373, 41.556400, 57.850086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.717148, 41.578125, 57.939217>,  <41.086769, 41.614330, 58.087769>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.717148, 41.578125, 57.939217> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372731, 0.428872, 0.822886,
		0.084791, 0.898819, -0.430041,
		-0.924058, -0.090516, -0.371382,
		40.439930, 41.550972, 57.827801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.807671, 42.220764, 58.364117>,  <41.086769, 41.614330, 58.087769>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.807671, 42.220764, 58.364117> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489944, 42.004730, 58.252850>,  <40.299309, 41.875111, 58.186089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.489944, 42.004730, 58.252850>,  <40.807671, 42.220764, 58.364117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.489944, 42.004730, 58.252850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502924, 0.327727, 0.799789,
		-0.340786, 0.775182, -0.531937,
		-0.794313, -0.540081, -0.278172,
		40.251652, 41.842705, 58.169399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.441059, 42.659142, 57.877708>,  <40.807671, 42.220764, 58.364117>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.441059, 42.659142, 57.877708> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443066, 43.057533, 57.841946>,  <40.444271, 43.296570, 57.820488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.443066, 43.057533, 57.841946>,  <40.441059, 42.659142, 57.877708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.443066, 43.057533, 57.841946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159665, -0.089057, -0.983146,
		-0.987158, -0.009341, -0.159470,
		0.005019, 0.995983, -0.089405,
		40.444572, 43.356327, 57.815125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.046139, 42.685776, 57.378056>,  <40.441059, 42.659142, 57.877708>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.046139, 42.685776, 57.378056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229736, 43.041138, 57.381016>,  <40.339893, 43.254356, 57.382793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.229736, 43.041138, 57.381016>,  <40.046139, 42.685776, 57.378056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.229736, 43.041138, 57.381016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032113, -0.008262, -0.999450,
		-0.887858, 0.458981, -0.032322,
		0.458995, 0.888408, 0.007404,
		40.367435, 43.307659, 57.383236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846462, 42.969074, 56.773655>,  <40.046139, 42.685776, 57.378056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846462, 42.969074, 56.773655> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135063, 43.233589, 56.855759>,  <40.308224, 43.392300, 56.905022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.135063, 43.233589, 56.855759>,  <39.846462, 42.969074, 56.773655>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135063, 43.233589, 56.855759> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101798, 0.191914, -0.976118,
		-0.684886, 0.725169, 0.071149,
		0.721505, 0.661286, 0.205260,
		40.351513, 43.431976, 56.917336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.693375, 43.530136, 56.371910>,  <39.846462, 42.969074, 56.773655>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.693375, 43.530136, 56.371910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069962, 43.612923, 56.478344>,  <40.295914, 43.662594, 56.542206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.069962, 43.612923, 56.478344>,  <39.693375, 43.530136, 56.371910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.069962, 43.612923, 56.478344> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224555, 0.203659, -0.952942,
		-0.251418, 0.956916, 0.145263,
		0.941469, 0.206967, 0.266084,
		40.352402, 43.675014, 56.558170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.958958, 44.224964, 56.089050>,  <39.693375, 43.530136, 56.371910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.958958, 44.224964, 56.089050> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278450, 43.988411, 56.133404>,  <40.470146, 43.846478, 56.160015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.278450, 43.988411, 56.133404>,  <39.958958, 44.224964, 56.089050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278450, 43.988411, 56.133404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379406, 0.351994, -0.855658,
		0.466989, 0.725512, 0.505523,
		0.798732, -0.591381, 0.110886,
		40.518070, 43.810997, 56.166668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.351131, 44.560104, 55.719303>,  <39.958958, 44.224964, 56.089050>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.351131, 44.560104, 55.719303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538834, 44.209068, 55.758560>,  <40.651455, 43.998447, 55.782116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.538834, 44.209068, 55.758560>,  <40.351131, 44.560104, 55.719303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538834, 44.209068, 55.758560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505198, 0.175635, -0.844942,
		0.724278, 0.446073, 0.525775,
		0.469251, -0.877594, 0.098146,
		40.679607, 43.945789, 55.788006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.999958, 44.652943, 55.556198>,  <40.351131, 44.560104, 55.719303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.999958, 44.652943, 55.556198> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.941097, 44.261864, 55.496250>,  <40.905781, 44.027218, 55.460281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.941097, 44.261864, 55.496250>,  <40.999958, 44.652943, 55.556198>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.941097, 44.261864, 55.496250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344744, 0.091325, -0.934244,
		0.927091, -0.189146, 0.323615,
		-0.147154, -0.977693, -0.149874,
		40.896950, 43.968555, 55.451286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<37.504662, 45.369366, 58.967205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378052, 45.006546, 58.856163>,  <37.302086, 44.788853, 58.789536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.378052, 45.006546, 58.856163>,  <37.504662, 45.369366, 58.967205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.378052, 45.006546, 58.856163> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774109, -0.077852, -0.628247,
		0.548241, -0.413755, 0.726800,
		-0.316523, -0.907053, -0.277609,
		37.283096, 44.734428, 58.772881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.047478, 44.960224, 58.859718>,  <37.504662, 45.369366, 58.967205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.047478, 44.960224, 58.859718> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.764206, 44.768303, 58.652538>,  <37.594242, 44.653149, 58.528233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.764206, 44.768303, 58.652538>,  <38.047478, 44.960224, 58.859718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764206, 44.768303, 58.652538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615207, -0.059416, -0.786123,
		0.346410, -0.875362, 0.337256,
		-0.708180, -0.479803, -0.517947,
		37.551750, 44.624363, 58.497154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.329193, 44.393921, 58.467098>,  <38.047478, 44.960224, 58.859718>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.329193, 44.393921, 58.467098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001511, 44.537094, 58.287861>,  <37.804901, 44.622997, 58.180317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.001511, 44.537094, 58.287861>,  <38.329193, 44.393921, 58.467098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001511, 44.537094, 58.287861> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519444, 0.131923, -0.844260,
		-0.243073, -0.924382, -0.293997,
		-0.819203, 0.357931, -0.448097,
		37.755749, 44.644474, 58.153431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304062, 44.106922, 57.772667>,  <38.329193, 44.393921, 58.467098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304062, 44.106922, 57.772667> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039833, 44.405060, 57.736664>,  <37.881294, 44.583942, 57.715061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.039833, 44.405060, 57.736664>,  <38.304062, 44.106922, 57.772667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.039833, 44.405060, 57.736664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494176, 0.341418, -0.799515,
		-0.565182, -0.572622, -0.593863,
		-0.660575, 0.745344, -0.090012,
		37.841660, 44.628662, 57.709660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032162, 44.057583, 57.140873>,  <38.304062, 44.106922, 57.772667>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032162, 44.057583, 57.140873> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.977539, 44.436432, 57.257019>,  <37.944767, 44.663742, 57.326706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.977539, 44.436432, 57.257019>,  <38.032162, 44.057583, 57.140873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977539, 44.436432, 57.257019> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379457, 0.320763, -0.867827,
		-0.915076, -0.008328, -0.403195,
		-0.136557, 0.947123, 0.290363,
		37.936573, 44.720570, 57.344128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891281, 44.365269, 56.558144>,  <38.032162, 44.057583, 57.140873>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891281, 44.365269, 56.558144> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960495, 44.689896, 56.781361>,  <38.002022, 44.884674, 56.915291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.960495, 44.689896, 56.781361>,  <37.891281, 44.365269, 56.558144>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960495, 44.689896, 56.781361> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322084, 0.488814, -0.810755,
		-0.930764, 0.320026, -0.176811,
		0.173035, 0.811569, 0.558045,
		38.012405, 44.933365, 56.948772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.552197, 44.906883, 56.223583>,  <37.891281, 44.365269, 56.558144>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.552197, 44.906883, 56.223583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850075, 45.040565, 56.454662>,  <38.028801, 45.120773, 56.593307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.850075, 45.040565, 56.454662>,  <37.552197, 44.906883, 56.223583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850075, 45.040565, 56.454662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319207, 0.581810, -0.748067,
		-0.586115, 0.741489, 0.326594,
		0.744699, 0.334202, 0.577696,
		38.073486, 45.140827, 56.627972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.685013, 45.643654, 56.161407>,  <37.552197, 44.906883, 56.223583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.685013, 45.643654, 56.161407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044098, 45.535263, 56.300362>,  <38.259548, 45.470230, 56.383736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.044098, 45.535263, 56.300362>,  <37.685013, 45.643654, 56.161407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044098, 45.535263, 56.300362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439839, 0.596830, -0.671071,
		-0.025489, 0.755226, 0.654969,
		0.897715, -0.270976, 0.347390,
		38.313412, 45.453972, 56.404579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.132313, 46.275185, 56.122047>,  <37.685013, 45.643654, 56.161407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.132313, 46.275185, 56.122047> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376278, 45.958702, 56.139961>,  <38.522655, 45.768814, 56.150711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.376278, 45.958702, 56.139961>,  <38.132313, 46.275185, 56.122047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376278, 45.958702, 56.139961> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577809, 0.405314, -0.708419,
		0.542352, 0.457950, 0.704370,
		0.609911, -0.791203, 0.044785,
		38.559250, 45.721340, 56.153397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727959, 46.522442, 56.076256>,  <38.132313, 46.275185, 56.122047>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727959, 46.522442, 56.076256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797577, 46.146179, 55.959728>,  <38.839348, 45.920422, 55.889812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.797577, 46.146179, 55.959728>,  <38.727959, 46.522442, 56.076256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797577, 46.146179, 55.959728> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629477, 0.333780, -0.701676,
		0.757275, -0.061257, 0.650217,
		0.174047, -0.940659, -0.291323,
		38.849792, 45.863983, 55.872330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.428413, 46.552376, 55.908222>,  <38.727959, 46.522442, 56.076256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.428413, 46.552376, 55.908222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293060, 46.230736, 55.712708>,  <39.211849, 46.037750, 55.595398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.293060, 46.230736, 55.712708>,  <39.428413, 46.552376, 55.908222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.293060, 46.230736, 55.712708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488233, 0.294017, -0.821695,
		0.804440, -0.516691, 0.293099,
		-0.338387, -0.804104, -0.488785,
		39.191544, 45.989506, 55.566071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961929, 46.287399, 55.463306>,  <39.428413, 46.552376, 55.908222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961929, 46.287399, 55.463306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639465, 46.119072, 55.296925>,  <39.445988, 46.018078, 55.197098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.639465, 46.119072, 55.296925>,  <39.961929, 46.287399, 55.463306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639465, 46.119072, 55.296925> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407207, 0.115442, -0.906011,
		0.429283, -0.899770, 0.078294,
		-0.806163, -0.420817, -0.415950,
		39.397617, 45.992828, 55.172138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.591637, 46.000660, 55.668476>,  <39.961929, 46.287399, 55.463306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.591637, 46.000660, 55.668476> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809410, 46.303558, 55.812798>,  <40.940075, 46.485298, 55.899391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.809410, 46.303558, 55.812798>,  <40.591637, 46.000660, 55.668476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809410, 46.303558, 55.812798> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325168, -0.205975, 0.922952,
		0.773215, -0.619805, 0.134091,
		0.544431, 0.757242, 0.360804,
		40.972740, 46.530731, 55.921040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.840126, 45.723946, 56.209175>,  <40.591637, 46.000660, 55.668476>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.840126, 45.723946, 56.209175> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890167, 46.113625, 56.284309>,  <40.920193, 46.347431, 56.329388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.890167, 46.113625, 56.284309>,  <40.840126, 45.723946, 56.209175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.890167, 46.113625, 56.284309> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319180, -0.139737, 0.937335,
		0.939400, -0.177217, 0.293464,
		0.125104, 0.974201, 0.187833,
		40.927700, 46.405884, 56.340660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096970, 45.694439, 56.804989>,  <40.840126, 45.723946, 56.209175>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.096970, 45.694439, 56.804989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.990643, 46.079796, 56.791046>,  <40.926846, 46.311012, 56.782681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.990643, 46.079796, 56.791046>,  <41.096970, 45.694439, 56.804989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990643, 46.079796, 56.791046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239277, -0.030904, 0.970459,
		0.933857, 0.266303, 0.238733,
		-0.265814, 0.963394, -0.034860,
		40.910900, 46.368813, 56.780586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.316280, 46.010662, 57.482090>,  <41.096970, 45.694439, 56.804989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.316280, 46.010662, 57.482090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.069016, 46.287003, 57.332108>,  <40.920658, 46.452808, 57.242119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.069016, 46.287003, 57.332108>,  <41.316280, 46.010662, 57.482090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.069016, 46.287003, 57.332108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389452, 0.145172, 0.909534,
		0.682790, 0.708269, 0.179314,
		-0.618163, 0.690855, -0.374959,
		40.883568, 46.494259, 57.219620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.416775, 46.710522, 57.882233>,  <41.316280, 46.010662, 57.482090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.416775, 46.710522, 57.882233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046600, 46.688431, 57.732288>,  <40.824497, 46.675179, 57.642323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.046600, 46.688431, 57.732288>,  <41.416775, 46.710522, 57.882233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.046600, 46.688431, 57.732288> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368130, -0.103220, 0.924027,
		-0.089721, 0.993124, 0.075194,
		-0.925435, -0.055223, -0.374860,
		40.768970, 46.671864, 57.619831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.002052, 47.178680, 58.249535>,  <41.416775, 46.710522, 57.882233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.002052, 47.178680, 58.249535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722382, 46.944397, 58.085533>,  <40.554581, 46.803829, 57.987133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.722382, 46.944397, 58.085533>,  <41.002052, 47.178680, 58.249535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722382, 46.944397, 58.085533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516357, 0.017043, 0.856204,
		-0.494495, 0.810345, -0.314349,
		-0.699178, -0.585705, -0.409999,
		40.512627, 46.768684, 57.962532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405216, 47.434311, 58.516178>,  <41.002052, 47.178680, 58.249535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405216, 47.434311, 58.516178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.289051, 47.072388, 58.391613>,  <40.219353, 46.855232, 58.316875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.289051, 47.072388, 58.391613>,  <40.405216, 47.434311, 58.516178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.289051, 47.072388, 58.391613> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670964, -0.039481, 0.740438,
		-0.682251, 0.423981, -0.595629,
		-0.290416, -0.904810, -0.311411,
		40.201927, 46.800945, 58.298191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.700191, 47.480679, 58.648739>,  <40.405216, 47.434311, 58.516178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.700191, 47.480679, 58.648739> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778934, 47.091049, 58.604156>,  <39.826180, 46.857269, 58.577408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.778934, 47.091049, 58.604156>,  <39.700191, 47.480679, 58.648739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.778934, 47.091049, 58.604156> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647724, -0.214550, 0.731042,
		-0.736005, -0.071712, -0.673167,
		0.196853, -0.974077, -0.111460,
		39.837990, 46.798824, 58.570717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974518, 47.083786, 58.632877>,  <39.700191, 47.480679, 58.648739>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974518, 47.083786, 58.632877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270042, 46.843895, 58.755833>,  <39.447357, 46.699963, 58.829605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.270042, 46.843895, 58.755833>,  <38.974518, 47.083786, 58.632877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270042, 46.843895, 58.755833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458397, -0.112874, 0.881551,
		-0.493993, -0.792205, -0.358305,
		0.738812, -0.599725, 0.307385,
		39.491688, 46.663979, 58.848049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624767, 46.481201, 58.774616>,  <38.974518, 47.083786, 58.632877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624767, 46.481201, 58.774616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.969456, 46.457466, 58.976173>,  <39.176270, 46.443226, 59.097107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.969456, 46.457466, 58.976173>,  <38.624767, 46.481201, 58.774616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969456, 46.457466, 58.976173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495530, -0.311802, 0.810697,
		0.109008, -0.948292, -0.298092,
		0.861723, -0.059341, 0.503897,
		39.227974, 46.439663, 59.127342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.542992, 45.846867, 59.159012>,  <38.624767, 46.481201, 58.774616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.542992, 45.846867, 59.159012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838455, 46.041573, 59.345539>,  <39.015732, 46.158398, 59.457455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.838455, 46.041573, 59.345539>,  <38.542992, 45.846867, 59.159012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838455, 46.041573, 59.345539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346253, -0.319551, 0.882041,
		0.578356, -0.812987, -0.067495,
		0.738656, 0.486763, 0.466314,
		39.060051, 46.187603, 59.485432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.670170, 45.454952, 59.623840>,  <38.542992, 45.846867, 59.159012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.670170, 45.454952, 59.623840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.849312, 45.782295, 59.767910>,  <38.956795, 45.978703, 59.854351>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.849312, 45.782295, 59.767910>,  <38.670170, 45.454952, 59.623840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849312, 45.782295, 59.767910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294948, -0.245057, 0.923554,
		0.844059, -0.519845, 0.131624,
		0.447850, 0.818357, 0.360170,
		38.983665, 46.027802, 59.875961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100498, 45.242725, 60.054321>,  <38.670170, 45.454952, 59.623840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100498, 45.242725, 60.054321> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049484, 45.621582, 60.172070>,  <39.018875, 45.848896, 60.242718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.049484, 45.621582, 60.172070>,  <39.100498, 45.242725, 60.054321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.049484, 45.621582, 60.172070> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036465, -0.301074, 0.952903,
		0.991163, 0.110797, 0.072936,
		-0.127537, 0.947142, 0.294373,
		39.011223, 45.905724, 60.260380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.637173, 45.421219, 60.611237>,  <39.100498, 45.242725, 60.054321>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.637173, 45.421219, 60.611237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327591, 45.671272, 60.651634>,  <39.141842, 45.821304, 60.675873>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.327591, 45.671272, 60.651634>,  <39.637173, 45.421219, 60.611237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327591, 45.671272, 60.651634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046217, -0.214821, 0.975559,
		0.631547, 0.750375, 0.195155,
		-0.773959, 0.625131, 0.100990,
		39.095402, 45.858810, 60.681931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.501022, 44.673672, 60.572800>,  <39.637173, 45.421219, 60.611237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.501022, 44.673672, 60.572800> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.840927, 44.467941, 60.526535>,  <40.044868, 44.344505, 60.498775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.840927, 44.467941, 60.526535>,  <39.501022, 44.673672, 60.572800>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840927, 44.467941, 60.526535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091177, 0.072697, -0.993178,
		0.519223, 0.854509, 0.014880,
		0.849761, -0.514324, -0.115658,
		40.095856, 44.313644, 60.491837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778309, 44.952099, 59.975113>,  <39.501022, 44.673672, 60.572800>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778309, 44.952099, 59.975113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.968414, 44.600906, 59.998001>,  <40.082478, 44.390190, 60.011734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.968414, 44.600906, 59.998001>,  <39.778309, 44.952099, 59.975113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968414, 44.600906, 59.998001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039151, -0.043872, -0.998270,
		0.878973, 0.476679, 0.013524,
		0.475261, -0.877982, 0.057225,
		40.110992, 44.337513, 60.015167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.140938, 44.962772, 59.413548>,  <39.778309, 44.952099, 59.975113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.140938, 44.962772, 59.413548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159988, 44.575142, 59.510391>,  <40.171417, 44.342564, 59.568497>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.159988, 44.575142, 59.510391>,  <40.140938, 44.962772, 59.413548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159988, 44.575142, 59.510391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189852, -0.229185, -0.954689,
		0.980657, 0.091432, 0.173066,
		0.047625, -0.969079, 0.242110,
		40.174274, 44.284416, 59.583023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.837734, 44.641319, 59.149227>,  <40.140938, 44.962772, 59.413548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.837734, 44.641319, 59.149227> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566368, 44.349487, 59.183792>,  <40.403549, 44.174389, 59.204533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.566368, 44.349487, 59.183792>,  <40.837734, 44.641319, 59.149227>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.566368, 44.349487, 59.183792> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241584, -0.332614, -0.911595,
		0.693827, -0.597559, 0.401904,
		-0.678411, -0.729583, 0.086416,
		40.362846, 44.130611, 59.209717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.163605, 44.145672, 58.961216>,  <40.837734, 44.641319, 59.149227>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.163605, 44.145672, 58.961216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788162, 44.020584, 58.902939>,  <40.562897, 43.945530, 58.867973>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.788162, 44.020584, 58.902939>,  <41.163605, 44.145672, 58.961216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.788162, 44.020584, 58.902939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242180, -0.296476, -0.923824,
		0.245702, -0.902390, 0.354008,
		-0.938605, -0.312719, -0.145696,
		40.506580, 43.926769, 58.859230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.257217, 43.451504, 58.671482>,  <41.163605, 44.145672, 58.961216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.257217, 43.451504, 58.671482> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877159, 43.562439, 58.614491>,  <40.649124, 43.628998, 58.580296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.877159, 43.562439, 58.614491>,  <41.257217, 43.451504, 58.671482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877159, 43.562439, 58.614491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071150, -0.252046, -0.965096,
		-0.303570, -0.927122, 0.219749,
		-0.950149, 0.277339, -0.142479,
		40.592113, 43.645641, 58.571747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.967632, 42.910530, 58.344501>,  <41.257217, 43.451504, 58.671482>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.967632, 42.910530, 58.344501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.723038, 43.215111, 58.258450>,  <40.576283, 43.397858, 58.206818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.723038, 43.215111, 58.258450>,  <40.967632, 42.910530, 58.344501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.723038, 43.215111, 58.258450> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237559, -0.082674, -0.967848,
		-0.754753, -0.642931, -0.130336,
		-0.611485, 0.761449, -0.215133,
		40.539593, 43.443546, 58.193909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.255424, 42.612598, 58.613693>,  <40.967632, 42.910530, 58.344501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.255424, 42.612598, 58.613693> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067894, 42.262650, 58.565025>,  <39.955376, 42.052681, 58.535824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.067894, 42.262650, 58.565025>,  <40.255424, 42.612598, 58.613693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.067894, 42.262650, 58.565025> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491213, 0.143755, 0.859095,
		-0.734105, 0.462534, -0.497144,
		-0.468827, -0.874870, -0.121671,
		39.927246, 42.000187, 58.528522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.495258, 42.723961, 58.628983>,  <40.255424, 42.612598, 58.613693>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.495258, 42.723961, 58.628983> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.567947, 42.346054, 58.738079>,  <39.611561, 42.119308, 58.803539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.567947, 42.346054, 58.738079>,  <39.495258, 42.723961, 58.628983>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567947, 42.346054, 58.738079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703474, 0.068898, 0.707374,
		-0.687096, -0.320416, -0.652099,
		0.181726, -0.944768, 0.272743,
		39.622467, 42.062622, 58.819901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858574, 42.441849, 58.611164>,  <39.495258, 42.723961, 58.628983>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858574, 42.441849, 58.611164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077293, 42.213303, 58.855965>,  <39.208527, 42.076176, 59.002846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.077293, 42.213303, 58.855965>,  <38.858574, 42.441849, 58.611164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077293, 42.213303, 58.855965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735829, 0.020801, 0.676848,
		-0.399459, -0.820431, -0.409054,
		0.546799, -0.571367, 0.612006,
		39.241333, 42.041893, 59.039566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448742, 41.925064, 58.728283>,  <38.858574, 42.441849, 58.611164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448742, 41.925064, 58.728283> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726418, 41.851860, 59.006737>,  <38.893024, 41.807938, 59.173809>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.726418, 41.851860, 59.006737>,  <38.448742, 41.925064, 58.728283>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726418, 41.851860, 59.006737> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712275, -0.035235, 0.701016,
		-0.103769, -0.982478, -0.154817,
		0.694188, -0.183016, 0.696139,
		38.934673, 41.796955, 59.215580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.146069, 41.345459, 59.115246>,  <38.448742, 41.925064, 58.728283>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.146069, 41.345459, 59.115246> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417938, 41.554008, 59.321625>,  <38.581062, 41.679138, 59.445454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.417938, 41.554008, 59.321625>,  <38.146069, 41.345459, 59.115246>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417938, 41.554008, 59.321625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638061, 0.073276, 0.766491,
		0.361822, -0.850176, 0.382473,
		0.679678, 0.521375, 0.515951,
		38.621841, 41.710423, 59.476410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.162479, 41.068584, 59.802952>,  <38.146069, 41.345459, 59.115246>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.162479, 41.068584, 59.802952> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338425, 41.423767, 59.856697>,  <38.443993, 41.636875, 59.888947>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.338425, 41.423767, 59.856697>,  <38.162479, 41.068584, 59.802952>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.338425, 41.423767, 59.856697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568913, 0.159746, 0.806734,
		0.694879, -0.431296, 0.575436,
		0.439865, 0.887955, 0.134366,
		38.470383, 41.690155, 59.897007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.394886, 41.032711, 60.409222>,  <38.162479, 41.068584, 59.802952>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.394886, 41.032711, 60.409222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356277, 41.423210, 60.331635>,  <38.333111, 41.657509, 60.285084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.356277, 41.423210, 60.331635>,  <38.394886, 41.032711, 60.409222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.356277, 41.423210, 60.331635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440238, 0.132905, 0.887990,
		0.892678, 0.171103, 0.416953,
		-0.096522, 0.976248, -0.193967,
		38.327320, 41.716084, 60.273445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544819, 41.442997, 61.032875>,  <38.394886, 41.032711, 60.409222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544819, 41.442997, 61.032875> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317078, 41.672272, 60.797146>,  <38.180435, 41.809837, 60.655708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.317078, 41.672272, 60.797146>,  <38.544819, 41.442997, 61.032875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.317078, 41.672272, 60.797146> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579538, 0.228589, 0.782230,
		0.583075, 0.786896, 0.202036,
		-0.569350, 0.573186, -0.589320,
		38.146271, 41.844227, 60.620350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336109, 42.013199, 61.473640>,  <38.544819, 41.442997, 61.032875>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336109, 42.013199, 61.473640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.073845, 42.028130, 61.171989>,  <37.916485, 42.037086, 60.990997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.073845, 42.028130, 61.171989>,  <38.336109, 42.013199, 61.473640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.073845, 42.028130, 61.171989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732920, 0.208592, 0.647548,
		0.181476, 0.977290, -0.109409,
		-0.655664, 0.037327, -0.754130,
		37.877144, 42.039330, 60.945751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<44.606525, 41.150749, 45.918976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.208248, 41.159134, 45.882851>,  <43.969280, 41.164165, 45.861176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.208248, 41.159134, 45.882851>,  <44.606525, 41.150749, 45.918976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.208248, 41.159134, 45.882851> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090434, -0.004984, 0.995890,
		0.020423, 0.999768, 0.006858,
		-0.995693, 0.020959, -0.090311,
		43.909542, 41.165421, 45.855759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.306114, 41.680939, 46.427563>,  <44.606525, 41.150749, 45.918976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.306114, 41.680939, 46.427563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.997833, 41.438049, 46.350307>,  <43.812866, 41.292316, 46.303955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.997833, 41.438049, 46.350307>,  <44.306114, 41.680939, 46.427563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.997833, 41.438049, 46.350307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207910, -0.046876, 0.977024,
		-0.602325, 0.793147, -0.090121,
		-0.770700, -0.607223, -0.193138,
		43.766624, 41.255882, 46.292366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.735638, 41.991451, 46.787483>,  <44.306114, 41.680939, 46.427563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.735638, 41.991451, 46.787483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.622467, 41.611420, 46.734856>,  <43.554565, 41.383400, 46.703278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.622467, 41.611420, 46.734856>,  <43.735638, 41.991451, 46.787483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622467, 41.611420, 46.734856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297848, -0.043365, 0.953628,
		-0.911724, 0.308991, -0.270710,
		-0.282924, -0.950076, -0.131569,
		43.537590, 41.326397, 46.695385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004189, 41.916042, 47.045803>,  <43.735638, 41.991451, 46.787483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004189, 41.916042, 47.045803> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.150093, 41.543716, 47.036659>,  <43.237637, 41.320320, 47.031174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.150093, 41.543716, 47.036659>,  <43.004189, 41.916042, 47.045803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150093, 41.543716, 47.036659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374730, -0.169235, 0.911558,
		-0.852364, -0.323938, -0.410537,
		0.364765, -0.930819, -0.022860,
		43.259521, 41.264469, 47.029800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.554691, 41.708755, 47.405327>,  <43.004189, 41.916042, 47.045803>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.554691, 41.708755, 47.405327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.820755, 41.410164, 47.397980>,  <42.980392, 41.231010, 47.393574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.820755, 41.410164, 47.397980>,  <42.554691, 41.708755, 47.405327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.820755, 41.410164, 47.397980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175417, -0.180120, 0.967877,
		-0.725806, -0.640569, -0.250753,
		0.665157, -0.746477, -0.018365,
		43.020302, 41.186222, 47.392471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.199284, 41.142780, 47.716091>,  <42.554691, 41.708755, 47.405327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.199284, 41.142780, 47.716091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.594669, 41.089951, 47.745754>,  <42.831902, 41.058254, 47.763554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.594669, 41.089951, 47.745754>,  <42.199284, 41.142780, 47.716091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594669, 41.089951, 47.745754> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077021, -0.016684, 0.996890,
		-0.130423, -0.991100, -0.026663,
		0.988462, -0.132071, 0.074160,
		42.891209, 41.050327, 47.768002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260708, 40.558823, 48.126919>,  <42.199284, 41.142780, 47.716091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260708, 40.558823, 48.126919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.621208, 40.721573, 48.186516>,  <42.837509, 40.819225, 48.222275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.621208, 40.721573, 48.186516>,  <42.260708, 40.558823, 48.126919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.621208, 40.721573, 48.186516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073719, -0.194852, 0.978058,
		0.426981, -0.892459, -0.145616,
		0.901250, 0.406878, 0.148989,
		42.891582, 40.843636, 48.231213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576324, 40.086582, 48.657333>,  <42.260708, 40.558823, 48.126919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.576324, 40.086582, 48.657333> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.792458, 40.423126, 48.662361>,  <42.922138, 40.625053, 48.665379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.792458, 40.423126, 48.662361>,  <42.576324, 40.086582, 48.657333>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.792458, 40.423126, 48.662361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048245, 0.016069, 0.998706,
		0.840065, -0.540243, 0.049274,
		0.540336, 0.841355, 0.012565,
		42.954559, 40.675533, 48.666130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.162216, 40.022675, 49.180649>,  <42.576324, 40.086582, 48.657333>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.162216, 40.022675, 49.180649> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113396, 40.414185, 49.114807>,  <43.084103, 40.649090, 49.075302>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.113396, 40.414185, 49.114807>,  <43.162216, 40.022675, 49.180649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.113396, 40.414185, 49.114807> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182397, 0.140902, 0.973077,
		0.975620, 0.148790, 0.161329,
		-0.122053, 0.978779, -0.164605,
		43.076778, 40.707817, 49.065426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592865, 40.239479, 49.651821>,  <43.162216, 40.022675, 49.180649>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592865, 40.239479, 49.651821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.348732, 40.544022, 49.564331>,  <43.202251, 40.726746, 49.511837>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.348732, 40.544022, 49.564331>,  <43.592865, 40.239479, 49.651821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348732, 40.544022, 49.564331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081302, 0.214450, 0.973345,
		0.787966, 0.611843, -0.068985,
		-0.610328, 0.761354, -0.218723,
		43.165634, 40.772427, 49.498714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811275, 40.766373, 49.988544>,  <43.592865, 40.239479, 49.651821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811275, 40.766373, 49.988544> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.427887, 40.869408, 49.939590>,  <43.197853, 40.931229, 49.910217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.427887, 40.869408, 49.939590>,  <43.811275, 40.766373, 49.988544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.427887, 40.869408, 49.939590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044929, 0.287401, 0.956756,
		0.281620, 0.922524, -0.263893,
		-0.958474, 0.257585, -0.122387,
		43.140347, 40.946682, 49.902874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.709633, 41.388763, 50.423569>,  <43.811275, 40.766373, 49.988544>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.709633, 41.388763, 50.423569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343140, 41.234573, 50.379879>,  <43.123245, 41.142059, 50.353664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.343140, 41.234573, 50.379879>,  <43.709633, 41.388763, 50.423569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.343140, 41.234573, 50.379879> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141481, 0.056227, 0.988343,
		-0.374840, 0.921004, -0.106054,
		-0.916230, -0.385475, -0.109229,
		43.068272, 41.118931, 50.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.788162, 42.147442, 50.375599>,  <43.709633, 41.388763, 50.423569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.788162, 42.147442, 50.375599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867897, 42.527626, 50.471001>,  <43.915737, 42.755737, 50.528240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.867897, 42.527626, 50.471001>,  <43.788162, 42.147442, 50.375599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.867897, 42.527626, 50.471001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832980, -0.036148, -0.552121,
		-0.516149, 0.308724, -0.798924,
		0.199333, 0.950465, 0.238503,
		43.927696, 42.812767, 50.542553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057674, 42.436188, 49.794132>,  <43.788162, 42.147442, 50.375599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057674, 42.436188, 49.794132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.143456, 42.744568, 50.034016>,  <44.194923, 42.929596, 50.177948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.143456, 42.744568, 50.034016>,  <44.057674, 42.436188, 49.794132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.143456, 42.744568, 50.034016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702901, 0.304511, -0.642809,
		-0.678190, 0.559388, -0.476597,
		0.214451, 0.770947, 0.599710,
		44.207790, 42.975853, 50.213928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.137562, 43.027180, 49.328796>,  <44.057674, 42.436188, 49.794132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.137562, 43.027180, 49.328796> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.322548, 43.110725, 49.673470>,  <44.433540, 43.160854, 49.880276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.322548, 43.110725, 49.673470>,  <44.137562, 43.027180, 49.328796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.322548, 43.110725, 49.673470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775913, 0.374956, -0.507314,
		-0.429056, 0.903207, 0.011340,
		0.462461, 0.208867, 0.861687,
		44.461285, 43.173386, 49.931976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416149, 43.672909, 49.159031>,  <44.137562, 43.027180, 49.328796>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416149, 43.672909, 49.159031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.629707, 43.558296, 49.477242>,  <44.757843, 43.489529, 49.668167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.629707, 43.558296, 49.477242>,  <44.416149, 43.672909, 49.159031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.629707, 43.558296, 49.477242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.840745, 0.280081, -0.463360,
		-0.090047, 0.916219, 0.390429,
		0.533891, -0.286527, 0.795527,
		44.789875, 43.472340, 49.715900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.863522, 44.179218, 49.332241>,  <44.416149, 43.672909, 49.159031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.863522, 44.179218, 49.332241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.040001, 43.848335, 49.471420>,  <45.145889, 43.649803, 49.554928>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.040001, 43.848335, 49.471420>,  <44.863522, 44.179218, 49.332241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.040001, 43.848335, 49.471420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827678, 0.225236, -0.514021,
		0.346833, 0.514773, 0.784038,
		0.441197, -0.827211, 0.347947,
		45.172359, 43.600170, 49.575806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.473236, 44.417141, 49.469646>,  <44.863522, 44.179218, 49.332241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.473236, 44.417141, 49.469646> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.510742, 44.019684, 49.444733>,  <45.533245, 43.781208, 49.429783>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.510742, 44.019684, 49.444733>,  <45.473236, 44.417141, 49.469646>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.510742, 44.019684, 49.444733> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808170, 0.112497, -0.578106,
		0.581438, 0.003868, 0.813582,
		0.093762, -0.993645, -0.062284,
		45.538872, 43.721592, 49.426048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.196342, 44.262302, 49.679138>,  <45.473236, 44.417141, 49.469646>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.196342, 44.262302, 49.679138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.068657, 43.953690, 49.459015>,  <45.992046, 43.768520, 49.326942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.068657, 43.953690, 49.459015>,  <46.196342, 44.262302, 49.679138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.068657, 43.953690, 49.459015> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736578, 0.163381, -0.656323,
		0.596287, -0.614847, 0.516144,
		-0.319210, -0.771537, -0.550305,
		45.972893, 43.722229, 49.293922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.766411, 43.920906, 49.441978>,  <46.196342, 44.262302, 49.679138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.766411, 43.920906, 49.441978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.493469, 43.771118, 49.190845>,  <46.329704, 43.681248, 49.040165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.493469, 43.771118, 49.190845>,  <46.766411, 43.920906, 49.441978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.493469, 43.771118, 49.190845> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650749, 0.080126, -0.755053,
		0.333049, -0.923771, 0.189011,
		-0.682352, -0.374468, -0.627829,
		46.288765, 43.658779, 49.002499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.231224, 43.569542, 49.007023>,  <46.766411, 43.920906, 49.441978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.231224, 43.569542, 49.007023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.866516, 43.600060, 48.845604>,  <46.647690, 43.618370, 48.748753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.866516, 43.600060, 48.845604>,  <47.231224, 43.569542, 49.007023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.866516, 43.600060, 48.845604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410281, 0.124840, -0.903374,
		-0.018543, -0.989239, -0.145128,
		-0.911771, 0.076295, -0.403552,
		46.592983, 43.622948, 48.724537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.283203, 43.176220, 48.306164>,  <47.231224, 43.569542, 49.007023>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.283203, 43.176220, 48.306164> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.967094, 43.418610, 48.269775>,  <46.777431, 43.564041, 48.247940>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.967094, 43.418610, 48.269775>,  <47.283203, 43.176220, 48.306164>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.967094, 43.418610, 48.269775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286753, 0.234517, -0.928856,
		-0.541526, -0.760131, -0.359096,
		-0.790267, 0.605972, -0.090973,
		46.730015, 43.600403, 48.242485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.020782, 43.004242, 47.640720>,  <47.283203, 43.176220, 48.306164>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.020782, 43.004242, 47.640720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.895935, 43.370689, 47.741371>,  <46.821026, 43.590557, 47.801762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.895935, 43.370689, 47.741371>,  <47.020782, 43.004242, 47.640720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.895935, 43.370689, 47.741371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260209, 0.337160, -0.904773,
		-0.913714, -0.216921, -0.343616,
		-0.312118, 0.916116, 0.251623,
		46.802299, 43.645523, 47.816856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.554531, 43.209469, 47.135223>,  <47.020782, 43.004242, 47.640720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.554531, 43.209469, 47.135223> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700943, 43.546120, 47.294064>,  <46.788792, 43.748112, 47.389366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.700943, 43.546120, 47.294064>,  <46.554531, 43.209469, 47.135223>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.700943, 43.546120, 47.294064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089344, 0.392959, -0.915205,
		-0.926305, 0.370470, 0.068640,
		0.366029, 0.841627, 0.397099,
		46.810753, 43.798607, 47.413193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.263218, 43.816906, 46.698883>,  <46.554531, 43.209469, 47.135223>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.263218, 43.816906, 46.698883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.564476, 43.990677, 46.896484>,  <46.745232, 44.094940, 47.015045>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.564476, 43.990677, 46.896484>,  <46.263218, 43.816906, 46.698883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.564476, 43.990677, 46.896484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271177, 0.479150, -0.834792,
		-0.599363, 0.762683, 0.243061,
		0.753145, 0.434431, 0.494007,
		46.790421, 44.121006, 47.044685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.252010, 44.549007, 46.520031>,  <46.263218, 43.816906, 46.698883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.252010, 44.549007, 46.520031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623886, 44.505081, 46.660671>,  <46.847012, 44.478725, 46.745056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.623886, 44.505081, 46.660671>,  <46.252010, 44.549007, 46.520031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.623886, 44.505081, 46.660671> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350350, 0.558386, -0.751971,
		-0.113750, 0.822281, 0.557598,
		0.929686, -0.109818, 0.351602,
		46.902790, 44.472137, 46.766151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.699783, 45.180595, 46.581585>,  <46.252010, 44.549007, 46.520031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.699783, 45.180595, 46.581585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.969322, 44.894432, 46.507698>,  <47.131046, 44.722736, 46.463367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.969322, 44.894432, 46.507698>,  <46.699783, 45.180595, 46.581585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969322, 44.894432, 46.507698> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320562, 0.508318, -0.799283,
		0.665706, 0.479384, 0.571862,
		0.673851, -0.715405, -0.184718,
		47.171478, 44.679810, 46.452282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511307, 45.219849, 47.398727>,  <46.699783, 45.180595, 46.581585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511307, 45.219849, 47.398727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.373009, 45.512863, 47.164173>,  <46.290028, 45.688671, 47.023441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.373009, 45.512863, 47.164173>,  <46.511307, 45.219849, 47.398727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.373009, 45.512863, 47.164173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595193, 0.311902, 0.740582,
		0.725398, 0.605070, 0.328160,
		-0.345750, 0.732535, -0.586387,
		46.269283, 45.732624, 46.988258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809292, 45.962181, 47.474979>,  <46.511307, 45.219849, 47.398727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809292, 45.962181, 47.474979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.428253, 45.897408, 47.371960>,  <46.199631, 45.858543, 47.310146>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.428253, 45.897408, 47.371960>,  <46.809292, 45.962181, 47.474979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.428253, 45.897408, 47.371960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302551, 0.415509, 0.857796,
		-0.031890, 0.895059, -0.444807,
		-0.952600, -0.161932, -0.257551,
		46.142475, 45.848827, 47.294693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.444553, 46.624584, 47.594906>,  <46.809292, 45.962181, 47.474979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.444553, 46.624584, 47.594906> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.173096, 46.330956, 47.604637>,  <46.010223, 46.154778, 47.610474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<46.173096, 46.330956, 47.604637>,  <46.444553, 46.624584, 47.594906>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<46.173096, 46.330956, 47.604637> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393542, 0.391391, 0.831828,
		-0.620138, 0.554939, -0.554501,
		-0.678640, -0.734068, 0.024325,
		45.969505, 46.110737, 47.611935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743359, 46.953632, 47.805981>,  <46.444553, 46.624584, 47.594906>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743359, 46.953632, 47.805981> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.695396, 46.563560, 47.880432>,  <45.666618, 46.329517, 47.925102>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.695396, 46.563560, 47.880432>,  <45.743359, 46.953632, 47.805981>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.695396, 46.563560, 47.880432> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341071, 0.216538, 0.914758,
		-0.932359, 0.046202, -0.358571,
		-0.119908, -0.975180, 0.186133,
		45.659424, 46.271008, 47.936272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.146328, 46.935818, 48.101028>,  <45.743359, 46.953632, 47.805981>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.146328, 46.935818, 48.101028> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.334503, 46.604080, 48.221619>,  <45.447407, 46.405037, 48.293972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.334503, 46.604080, 48.221619>,  <45.146328, 46.935818, 48.101028>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.334503, 46.604080, 48.221619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414571, 0.093874, 0.905162,
		-0.778987, -0.550802, -0.299659,
		0.470435, -0.829340, 0.301473,
		45.475636, 46.355278, 48.312061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.665859, 46.559196, 48.501804>,  <45.146328, 46.935818, 48.101028>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.665859, 46.559196, 48.501804> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.005676, 46.380058, 48.613312>,  <45.209568, 46.272575, 48.680214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.005676, 46.380058, 48.613312>,  <44.665859, 46.559196, 48.501804>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.005676, 46.380058, 48.613312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377309, -0.146552, 0.914418,
		-0.368669, -0.882016, -0.293481,
		0.849542, -0.447851, 0.278764,
		45.260540, 46.245705, 48.696941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.532452, 45.930641, 48.913654>,  <44.665859, 46.559196, 48.501804>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.532452, 45.930641, 48.913654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.898090, 46.043846, 49.029819>,  <45.117474, 46.111771, 49.099518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.898090, 46.043846, 49.029819>,  <44.532452, 45.930641, 48.913654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.898090, 46.043846, 49.029819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255925, -0.152882, 0.954531,
		0.314544, -0.946853, -0.067318,
		0.914092, 0.283013, 0.290411,
		45.172318, 46.128750, 49.116943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.776676, 45.352921, 49.223267>,  <44.532452, 45.930641, 48.913654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.776676, 45.352921, 49.223267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.968315, 45.680641, 49.349258>,  <45.083298, 45.877274, 49.424854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.968315, 45.680641, 49.349258>,  <44.776676, 45.352921, 49.223267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.968315, 45.680641, 49.349258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196428, -0.249672, 0.948198,
		0.855503, -0.516147, 0.041318,
		0.479093, 0.819302, 0.314981,
		45.112041, 45.926434, 49.443752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.966320, 45.252686, 49.917450>,  <44.776676, 45.352921, 49.223267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.966320, 45.252686, 49.917450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.014061, 45.647224, 49.872063>,  <45.042706, 45.883949, 49.844830>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.014061, 45.647224, 49.872063>,  <44.966320, 45.252686, 49.917450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.014061, 45.647224, 49.872063> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119254, 0.127698, 0.984617,
		0.985664, -0.103983, 0.132866,
		0.119350, 0.986347, -0.113467,
		45.049866, 45.943130, 49.838024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.316132, 45.411804, 50.470371>,  <44.966320, 45.252686, 49.917450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.316132, 45.411804, 50.470371> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.132011, 45.747139, 50.353539>,  <45.021538, 45.948341, 50.283440>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.132011, 45.747139, 50.353539>,  <45.316132, 45.411804, 50.470371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.132011, 45.747139, 50.353539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332200, 0.142455, 0.932389,
		0.823266, 0.526209, 0.212924,
		-0.460299, 0.838338, -0.292085,
		44.993923, 45.998642, 50.265911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.371212, 45.834499, 51.029846>,  <45.316132, 45.411804, 50.470371>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.371212, 45.834499, 51.029846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.108528, 46.026711, 50.797356>,  <44.950916, 46.142036, 50.657864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<45.108528, 46.026711, 50.797356>,  <45.371212, 45.834499, 51.029846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108528, 46.026711, 50.797356> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428666, 0.396242, 0.811935,
		0.620462, 0.782359, -0.054231,
		-0.656713, 0.480528, -0.581224,
		44.911514, 46.170868, 50.622990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355217, 46.582603, 51.127491>,  <45.371212, 45.834499, 51.029846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355217, 46.582603, 51.127491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.997086, 46.479317, 50.982327>,  <44.782204, 46.417343, 50.895229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.997086, 46.479317, 50.982327>,  <45.355217, 46.582603, 51.127491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.997086, 46.479317, 50.982327> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436902, 0.350789, 0.828289,
		-0.086573, 0.900151, -0.426888,
		-0.895333, -0.258216, -0.362909,
		44.728485, 46.401852, 50.873455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922249, 47.126179, 51.029400>,  <45.355217, 46.582603, 51.127491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922249, 47.126179, 51.029400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.676926, 46.816833, 51.093597>,  <44.529732, 46.631226, 51.132118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.676926, 46.816833, 51.093597>,  <44.922249, 47.126179, 51.029400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676926, 46.816833, 51.093597> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502620, 0.538886, 0.676000,
		-0.609286, 0.333926, -0.719211,
		-0.613306, -0.773367, 0.160498,
		44.492935, 46.584824, 51.141747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172119, 47.384018, 50.944519>,  <44.922249, 47.126179, 51.029400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172119, 47.384018, 50.944519> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.190163, 47.048820, 51.162045>,  <44.200989, 46.847702, 51.292561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<44.190163, 47.048820, 51.162045>,  <44.172119, 47.384018, 50.944519>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<44.190163, 47.048820, 51.162045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586197, 0.418590, 0.693653,
		-0.808912, -0.350068, -0.472349,
		0.045105, -0.837994, 0.543812,
		44.203693, 46.797421, 51.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.511444, 47.459675, 51.244656>,  <44.172119, 47.384018, 50.944519>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.511444, 47.459675, 51.244656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.675915, 47.166214, 51.461056>,  <43.774597, 46.990135, 51.590897>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.675915, 47.166214, 51.461056>,  <43.511444, 47.459675, 51.244656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.675915, 47.166214, 51.461056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622769, 0.207295, 0.754445,
		-0.665649, -0.647131, -0.371662,
		0.411181, -0.733655, 0.540998,
		43.799271, 46.946117, 51.623356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.990795, 47.079319, 51.587704>,  <43.511444, 47.459675, 51.244656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.990795, 47.079319, 51.587704> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.310982, 47.015373, 51.818771>,  <43.503094, 46.977005, 51.957413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.310982, 47.015373, 51.818771>,  <42.990795, 47.079319, 51.587704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310982, 47.015373, 51.818771> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591987, -0.059971, 0.803713,
		-0.093850, -0.985314, -0.142648,
		0.800464, -0.159874, 0.577665,
		43.551121, 46.967415, 51.992073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.781445, 46.544029, 51.956741>,  <42.990795, 47.079319, 51.587704>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.781445, 46.544029, 51.956741> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084930, 46.712303, 52.155689>,  <43.267021, 46.813267, 52.275059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.084930, 46.712303, 52.155689>,  <42.781445, 46.544029, 51.956741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084930, 46.712303, 52.155689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540000, -0.020889, 0.841406,
		0.364358, -0.906965, 0.211322,
		0.758711, 0.420687, 0.497373,
		43.312546, 46.838509, 52.304901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.855247, 46.102215, 52.561951>,  <42.781445, 46.544029, 51.956741>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.855247, 46.102215, 52.561951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.022011, 46.454933, 52.650146>,  <43.122070, 46.666565, 52.703064>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.022011, 46.454933, 52.650146>,  <42.855247, 46.102215, 52.561951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.022011, 46.454933, 52.650146> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357617, -0.063884, 0.931681,
		0.835640, -0.467280, 0.288712,
		0.416912, 0.881798, 0.220491,
		43.147083, 46.719471, 52.716293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190132, 45.981007, 53.185215>,  <42.855247, 46.102215, 52.561951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190132, 45.981007, 53.185215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.152653, 46.378868, 53.167862>,  <43.130165, 46.617584, 53.157452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.152653, 46.378868, 53.167862>,  <43.190132, 45.981007, 53.185215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.152653, 46.378868, 53.167862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320296, 0.011145, 0.947252,
		0.942673, 0.102648, 0.317540,
		-0.093695, 0.994655, -0.043384,
		43.124546, 46.677265, 53.154846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433632, 46.238880, 53.838467>,  <43.190132, 45.981007, 53.185215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433632, 46.238880, 53.838467> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211754, 46.526192, 53.670475>,  <43.078625, 46.698578, 53.569679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.211754, 46.526192, 53.670475>,  <43.433632, 46.238880, 53.838467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.211754, 46.526192, 53.670475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423243, 0.190991, 0.885656,
		0.716362, 0.669026, 0.198065,
		-0.554699, 0.718280, -0.419979,
		43.045345, 46.741676, 53.544479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426250, 46.776466, 54.283909>,  <43.433632, 46.238880, 53.838467>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426250, 46.776466, 54.283909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122795, 46.918777, 54.065590>,  <42.940723, 47.004166, 53.934601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<43.122795, 46.918777, 54.065590>,  <43.426250, 46.776466, 54.283909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<43.122795, 46.918777, 54.065590> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559981, 0.072109, 0.825362,
		0.333001, 0.931785, 0.144524,
		-0.758638, 0.355776, -0.545794,
		42.895203, 47.025509, 53.901852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221519, 47.426697, 54.609993>,  <43.426250, 46.776466, 54.283909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221519, 47.426697, 54.609993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.918694, 47.286697, 54.389320>,  <42.736996, 47.202698, 54.256916>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.918694, 47.286697, 54.389320>,  <43.221519, 47.426697, 54.609993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.918694, 47.286697, 54.389320> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576248, -0.040205, 0.816286,
		-0.307877, 0.935888, -0.171246,
		-0.757067, -0.349996, -0.551682,
		42.691574, 47.181698, 54.223816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.663456, 47.829365, 54.857834>,  <43.221519, 47.426697, 54.609993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.663456, 47.829365, 54.857834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.516010, 47.505783, 54.674660>,  <42.427544, 47.311634, 54.564754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.516010, 47.505783, 54.674660>,  <42.663456, 47.829365, 54.857834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.516010, 47.505783, 54.674660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676257, -0.104639, 0.729197,
		-0.637808, 0.578478, -0.508492,
		-0.368616, -0.808958, -0.457940,
		42.405426, 47.263096, 54.537277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.971359, 47.916359, 54.954834>,  <42.663456, 47.829365, 54.857834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.971359, 47.916359, 54.954834> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.003136, 47.533470, 54.843536>,  <42.022202, 47.303738, 54.776760>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<42.003136, 47.533470, 54.843536>,  <41.971359, 47.916359, 54.954834>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003136, 47.533470, 54.843536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618684, -0.266204, 0.739165,
		-0.781613, 0.113423, -0.613365,
		0.079442, -0.957220, -0.278242,
		42.026970, 47.246304, 54.760063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.292812, 47.697079, 54.904736>,  <41.971359, 47.916359, 54.954834>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.292812, 47.697079, 54.904736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.513821, 47.368759, 54.962708>,  <41.646427, 47.171768, 54.997490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.513821, 47.368759, 54.962708>,  <41.292812, 47.697079, 54.904736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.513821, 47.368759, 54.962708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705582, -0.368040, 0.605558,
		-0.443703, -0.436845, -0.782493,
		0.552523, -0.820801, 0.144929,
		41.679577, 47.122520, 55.006187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.760994, 47.253422, 54.905327>,  <41.292812, 47.697079, 54.904736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.760994, 47.253422, 54.905327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068096, 47.051720, 55.063457>,  <41.252357, 46.930698, 55.158337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.068096, 47.051720, 55.063457>,  <40.760994, 47.253422, 54.905327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068096, 47.051720, 55.063457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610364, -0.387811, 0.690694,
		-0.194971, -0.771577, -0.605521,
		0.767752, -0.504253, 0.395330,
		41.298420, 46.900444, 55.182056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600830, 46.521622, 55.101120>,  <40.760994, 47.253422, 54.905327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.600830, 46.521622, 55.101120> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905449, 46.639206, 55.332165>,  <41.088219, 46.709759, 55.470791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.905449, 46.639206, 55.332165>,  <40.600830, 46.521622, 55.101120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905449, 46.639206, 55.332165> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464933, -0.373121, 0.802881,
		0.451535, -0.879981, -0.147476,
		0.761547, 0.293962, 0.577610,
		41.133911, 46.727394, 55.505447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257816, 45.799397, 54.954762>,  <40.600830, 46.521622, 55.101120>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257816, 45.799397, 54.954762> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881111, 45.897743, 54.862999>,  <39.655087, 45.956749, 54.807941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.881111, 45.897743, 54.862999>,  <40.257816, 45.799397, 54.954762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881111, 45.897743, 54.862999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327861, 0.519772, -0.788888,
		-0.074720, -0.818161, -0.570113,
		-0.941766, 0.245864, -0.229406,
		39.598579, 45.971504, 54.794178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.208530, 45.605606, 54.303562>,  <40.257816, 45.799397, 54.954762>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.208530, 45.605606, 54.303562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900349, 45.860008, 54.320953>,  <39.715439, 46.012650, 54.331387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.900349, 45.860008, 54.320953>,  <40.208530, 45.605606, 54.303562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900349, 45.860008, 54.320953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182869, 0.285831, -0.940670,
		-0.610701, -0.716794, -0.336526,
		-0.770457, 0.636008, 0.043478,
		39.669212, 46.050812, 54.333996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.826694, 45.590321, 53.672909>,  <40.208530, 45.605606, 54.303562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.826694, 45.590321, 53.672909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.723999, 45.949959, 53.814732>,  <39.662380, 46.165741, 53.899826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.723999, 45.949959, 53.814732>,  <39.826694, 45.590321, 53.672909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723999, 45.949959, 53.814732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060109, 0.351293, -0.934334,
		-0.964610, -0.261193, -0.036147,
		-0.256740, 0.899095, 0.354561,
		39.646976, 46.219688, 53.921101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.152210, 45.747742, 53.442867>,  <39.826694, 45.590321, 53.672909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.152210, 45.747742, 53.442867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338058, 46.092720, 53.523178>,  <39.449570, 46.299706, 53.571365>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.338058, 46.092720, 53.523178>,  <39.152210, 45.747742, 53.442867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.338058, 46.092720, 53.523178> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220994, 0.332494, -0.916848,
		-0.857489, 0.381619, 0.345080,
		0.464623, 0.862447, 0.200774,
		39.477444, 46.351456, 53.583412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.898983, 46.144249, 52.896603>,  <39.152210, 45.747742, 53.442867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.898983, 46.144249, 52.896603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200191, 46.377808, 53.017937>,  <39.380917, 46.517944, 53.090736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.200191, 46.377808, 53.017937>,  <38.898983, 46.144249, 52.896603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.200191, 46.377808, 53.017937> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024430, 0.435876, -0.899675,
		-0.657538, 0.684888, 0.313960,
		0.753025, 0.583901, 0.303337,
		39.426098, 46.552979, 53.108936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 88.400002>,  <88.400002, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 88.400002>,  <88.400002, 0.000000, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <0.000000, 88.400002, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 88.400002, 0.000000>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<88.400002, 0.000000, 88.400002>,  <88.400002, 0.000000, 0.000000>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 88.400002, 0.000000>,  <0.000000, 88.400002, 88.400002>, 0.442000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
