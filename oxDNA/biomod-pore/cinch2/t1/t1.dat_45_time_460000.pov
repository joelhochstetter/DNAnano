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
	right 1.6 * <0.581683, 0, 0.813415>
	location <-54.4937, 30, 90.4225>
	look_at <30, 30, 30>
	direction <84.4937, 0, -60.4225>
	angle 67.0682
}


# declare cpy_camera_pos = <-54.4937, 30, 90.4225>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 48
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <0.231732, -1, 1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <-0.231732, 1, -1.3951>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<42.739025, 32.868130, 22.819151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708008, 32.679356, 23.170437>,  <42.689396, 32.566090, 23.381208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.708008, 32.679356, 23.170437>,  <42.739025, 32.868130, 22.819151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.708008, 32.679356, 23.170437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.970831, -0.164710, -0.174233,
		0.226878, -0.866108, -0.445402,
		-0.077543, -0.471940, 0.878214,
		42.684746, 32.537773, 23.433901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.263741, 32.392849, 22.754133>,  <42.739025, 32.868130, 22.819151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.263741, 32.392849, 22.754133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268150, 32.409286, 23.153770>,  <42.270798, 32.419151, 23.393553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.268150, 32.409286, 23.153770>,  <42.263741, 32.392849, 22.754133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.268150, 32.409286, 23.153770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998807, -0.047081, 0.012958,
		0.047571, -0.998045, 0.040527,
		0.011025, 0.041095, 0.999094,
		42.271458, 32.421616, 23.453499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.744946, 31.926121, 23.013300>,  <42.263741, 32.392849, 22.754133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.744946, 31.926121, 23.013300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836861, 32.191696, 23.297943>,  <41.892010, 32.351040, 23.468729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.836861, 32.191696, 23.297943>,  <41.744946, 31.926121, 23.013300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.836861, 32.191696, 23.297943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973184, 0.164730, 0.160553,
		-0.010626, -0.729417, 0.683987,
		0.229784, 0.663939, 0.711607,
		41.905796, 32.390877, 23.511425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.601131, 31.677738, 23.771036>,  <41.744946, 31.926121, 23.013300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.601131, 31.677738, 23.771036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532185, 32.066441, 23.706558>,  <41.490818, 32.299660, 23.667871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.532185, 32.066441, 23.706558>,  <41.601131, 31.677738, 23.771036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532185, 32.066441, 23.706558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.984495, -0.175359, -0.004416,
		-0.032559, 0.157936, 0.986912,
		-0.172366, 0.971754, -0.161197,
		41.480476, 32.357967, 23.658199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.969387, 31.626768, 24.099735>,  <41.601131, 31.677738, 23.771036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.969387, 31.626768, 24.099735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610962, 31.506126, 24.230034>,  <40.395908, 31.433741, 24.308212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.610962, 31.506126, 24.230034>,  <40.969387, 31.626768, 24.099735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.610962, 31.506126, 24.230034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389403, -0.181659, 0.902976,
		-0.213167, 0.935967, 0.280223,
		-0.896061, -0.301605, 0.325745,
		40.342144, 31.415646, 24.327757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931858, 31.844820, 24.864931>,  <40.969387, 31.626768, 24.099735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931858, 31.844820, 24.864931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643032, 31.569057, 24.841831>,  <40.469734, 31.403599, 24.827971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.643032, 31.569057, 24.841831>,  <40.931858, 31.844820, 24.864931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.643032, 31.569057, 24.841831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241917, -0.329820, 0.912521,
		-0.648147, 0.644931, 0.404932,
		-0.722068, -0.689407, -0.057752,
		40.426411, 31.362236, 24.824505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.553410, 31.978661, 25.431442>,  <40.931858, 31.844820, 24.864931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.553410, 31.978661, 25.431442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488911, 31.603676, 25.308048>,  <40.450211, 31.378685, 25.234011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.488911, 31.603676, 25.308048>,  <40.553410, 31.978661, 25.431442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488911, 31.603676, 25.308048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115200, -0.328320, 0.937515,
		-0.980167, 0.115635, 0.160937,
		-0.161248, -0.937462, -0.308487,
		40.440536, 31.322437, 25.215502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080029, 31.662477, 25.920889>,  <40.553410, 31.978661, 25.431442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080029, 31.662477, 25.920889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278965, 31.374916, 25.726639>,  <40.398327, 31.202379, 25.610088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.278965, 31.374916, 25.726639>,  <40.080029, 31.662477, 25.920889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278965, 31.374916, 25.726639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071518, -0.523885, 0.848781,
		-0.864605, -0.456861, -0.209133,
		0.497337, -0.718904, -0.485627,
		40.428165, 31.159245, 25.580950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.671146, 31.084326, 26.052778>,  <40.080029, 31.662477, 25.920889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.671146, 31.084326, 26.052778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020668, 30.919079, 25.950176>,  <40.230381, 30.819931, 25.888615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.020668, 30.919079, 25.950176>,  <39.671146, 31.084326, 26.052778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.020668, 30.919079, 25.950176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034016, -0.578127, 0.815237,
		-0.485081, -0.703635, -0.519224,
		0.873808, -0.413118, -0.256504,
		40.282810, 30.795143, 25.873224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.574703, 30.450359, 26.187527>,  <39.671146, 31.084326, 26.052778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.574703, 30.450359, 26.187527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973469, 30.457027, 26.156845>,  <40.212727, 30.461027, 26.138435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.973469, 30.457027, 26.156845>,  <39.574703, 30.450359, 26.187527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.973469, 30.457027, 26.156845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073974, -0.526320, 0.847063,
		-0.026251, -0.850123, -0.525929,
		0.996915, 0.016669, -0.076703,
		40.272545, 30.462029, 26.133835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.854210, 29.798130, 26.306036>,  <39.574703, 30.450359, 26.187527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.854210, 29.798130, 26.306036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158051, 30.039162, 26.403942>,  <40.340355, 30.183781, 26.462687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.158051, 30.039162, 26.403942>,  <39.854210, 29.798130, 26.306036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.158051, 30.039162, 26.403942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056725, -0.436279, 0.898022,
		0.647914, -0.668251, -0.365578,
		0.759598, 0.602578, 0.244765,
		40.385929, 30.219934, 26.477371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257256, 29.361650, 26.577362>,  <39.854210, 29.798130, 26.306036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257256, 29.361650, 26.577362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412231, 29.700916, 26.721867>,  <40.505219, 29.904476, 26.808569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.412231, 29.700916, 26.721867>,  <40.257256, 29.361650, 26.577362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.412231, 29.700916, 26.721867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113628, -0.432813, 0.894294,
		0.914866, -0.305435, -0.264064,
		0.387439, 0.848164, 0.361260,
		40.528461, 29.955366, 26.830244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.014538, 29.227558, 26.878164>,  <40.257256, 29.361650, 26.577362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.014538, 29.227558, 26.878164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867077, 29.555447, 27.053505>,  <40.778599, 29.752180, 27.158709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.867077, 29.555447, 27.053505>,  <41.014538, 29.227558, 26.878164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.867077, 29.555447, 27.053505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229066, -0.376914, 0.897477,
		0.900901, 0.431270, -0.048819,
		-0.368655, 0.819720, 0.438352,
		40.756481, 29.801363, 27.185011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.569122, 29.439444, 27.349579>,  <41.014538, 29.227558, 26.878164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.569122, 29.439444, 27.349579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243515, 29.627468, 27.486057>,  <41.048149, 29.740282, 27.567944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.243515, 29.627468, 27.486057>,  <41.569122, 29.439444, 27.349579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243515, 29.627468, 27.486057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197553, -0.328339, 0.923670,
		0.546209, 0.819290, 0.174412,
		-0.814020, 0.470061, 0.341196,
		40.999310, 29.768486, 27.588415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.749405, 29.939470, 27.918653>,  <41.569122, 29.439444, 27.349579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.749405, 29.939470, 27.918653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355953, 29.891376, 27.972355>,  <41.119884, 29.862520, 28.004576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.355953, 29.891376, 27.972355>,  <41.749405, 29.939470, 27.918653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.355953, 29.891376, 27.972355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146370, -0.098343, 0.984329,
		-0.105148, 0.987862, 0.114331,
		-0.983626, -0.120235, 0.134253,
		41.060867, 29.855307, 28.012630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.610271, 30.206947, 28.562067>,  <41.749405, 29.939470, 27.918653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.610271, 30.206947, 28.562067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279327, 29.989670, 28.504913>,  <41.080761, 29.859303, 28.470621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.279327, 29.989670, 28.504913>,  <41.610271, 30.206947, 28.562067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.279327, 29.989670, 28.504913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151080, -0.029788, 0.988073,
		-0.540972, 0.839078, -0.057421,
		-0.827359, -0.543195, -0.142882,
		41.031120, 29.826712, 28.462049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.129887, 30.450739, 29.010990>,  <41.610271, 30.206947, 28.562067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.129887, 30.450739, 29.010990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012836, 30.076424, 28.932331>,  <40.942608, 29.851835, 28.885136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.012836, 30.076424, 28.932331>,  <41.129887, 30.450739, 29.010990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.012836, 30.076424, 28.932331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116306, -0.169293, 0.978679,
		-0.949128, 0.309256, -0.059298,
		-0.292624, -0.935789, -0.196649,
		40.925049, 29.795687, 28.873337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.542534, 30.277645, 29.379711>,  <41.129887, 30.450739, 29.010990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.542534, 30.277645, 29.379711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637863, 29.901230, 29.283669>,  <40.695061, 29.675381, 29.226042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637863, 29.901230, 29.283669>,  <40.542534, 30.277645, 29.379711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637863, 29.901230, 29.283669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290352, -0.304965, 0.907024,
		-0.926767, -0.146451, -0.345912,
		0.238325, -0.941036, -0.240109,
		40.709362, 29.618919, 29.211636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.903648, 29.823242, 29.777029>,  <40.542534, 30.277645, 29.379711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.903648, 29.823242, 29.777029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203621, 29.586163, 29.659515>,  <40.383606, 29.443914, 29.589006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.203621, 29.586163, 29.659515>,  <39.903648, 29.823242, 29.777029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.203621, 29.586163, 29.659515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031606, -0.411500, 0.910862,
		-0.660760, -0.692369, -0.289864,
		0.749931, -0.592700, -0.293786,
		40.428600, 29.408352, 29.571381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.754364, 29.128204, 29.944849>,  <39.903648, 29.823242, 29.777029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.754364, 29.128204, 29.944849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152805, 29.162998, 29.950752>,  <40.391869, 29.183874, 29.954294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.152805, 29.162998, 29.950752>,  <39.754364, 29.128204, 29.944849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.152805, 29.162998, 29.950752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034254, -0.535439, 0.843879,
		0.081306, -0.840083, -0.536331,
		0.996101, 0.086984, 0.014759,
		40.451637, 29.189093, 29.955179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.968098, 28.502619, 30.267410>,  <39.754364, 29.128204, 29.944849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.968098, 28.502619, 30.267410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286640, 28.743412, 30.290844>,  <40.477764, 28.887888, 30.304905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.286640, 28.743412, 30.290844>,  <39.968098, 28.502619, 30.267410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.286640, 28.743412, 30.290844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253811, -0.420532, 0.871053,
		0.548998, -0.678798, -0.487683,
		0.796355, 0.601985, 0.058585,
		40.525547, 28.924007, 30.308420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643623, 28.046551, 30.364756>,  <39.968098, 28.502619, 30.267410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643623, 28.046551, 30.364756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709274, 28.415531, 30.504555>,  <40.748665, 28.636919, 30.588434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.709274, 28.415531, 30.504555>,  <40.643623, 28.046551, 30.364756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.709274, 28.415531, 30.504555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277170, -0.383154, 0.881118,
		0.946699, -0.047744, -0.318561,
		0.164126, 0.922450, 0.349498,
		40.758511, 28.692266, 30.609404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.340950, 28.018204, 30.635975>,  <40.643623, 28.046551, 30.364756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.340950, 28.018204, 30.635975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188869, 28.341801, 30.815296>,  <41.097622, 28.535959, 30.922888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.188869, 28.341801, 30.815296>,  <41.340950, 28.018204, 30.635975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.188869, 28.341801, 30.815296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308724, -0.345898, 0.886027,
		0.871858, 0.475271, -0.118245,
		-0.380202, 0.808994, 0.448302,
		41.074810, 28.584499, 30.949787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.831451, 28.267250, 31.156162>,  <41.340950, 28.018204, 30.635975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.831451, 28.267250, 31.156162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496105, 28.454029, 31.268665>,  <41.294899, 28.566097, 31.336168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496105, 28.454029, 31.268665>,  <41.831451, 28.267250, 31.156162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496105, 28.454029, 31.268665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313660, -0.008765, 0.949495,
		0.445832, 0.884240, -0.139115,
		-0.838362, 0.466950, 0.281259,
		41.244595, 28.594114, 31.353043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141838, 28.783142, 31.641985>,  <41.831451, 28.267250, 31.156162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141838, 28.783142, 31.641985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748825, 28.734879, 31.698658>,  <41.513016, 28.705921, 31.732662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.748825, 28.734879, 31.698658>,  <42.141838, 28.783142, 31.641985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.748825, 28.734879, 31.698658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143974, -0.010456, 0.989526,
		-0.117912, 0.992639, 0.027645,
		-0.982532, -0.120657, 0.141681,
		41.454067, 28.698681, 31.741163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.030708, 29.238310, 32.141479>,  <42.141838, 28.783142, 31.641985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.030708, 29.238310, 32.141479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727375, 28.983212, 32.195465>,  <41.545376, 28.830153, 32.227856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.727375, 28.983212, 32.195465>,  <42.030708, 29.238310, 32.141479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.727375, 28.983212, 32.195465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128044, 0.057287, 0.990113,
		-0.639173, 0.768113, 0.038217,
		-0.758329, -0.637747, 0.134968,
		41.499878, 28.791887, 32.235954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.567467, 29.482252, 32.712227>,  <42.030708, 29.238310, 32.141479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.567467, 29.482252, 32.712227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489456, 29.094620, 32.651772>,  <41.442650, 28.862040, 32.615498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.489456, 29.094620, 32.651772>,  <41.567467, 29.482252, 32.712227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.489456, 29.094620, 32.651772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146898, -0.123502, 0.981411,
		-0.969735, 0.213603, -0.118270,
		-0.195026, -0.969083, -0.151142,
		41.430950, 28.803894, 32.606430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.106846, 29.306383, 33.211777>,  <41.567467, 29.482252, 32.712227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.106846, 29.306383, 33.211777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124027, 28.941486, 33.048817>,  <41.134335, 28.722549, 32.951042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.124027, 28.941486, 33.048817>,  <41.106846, 29.306383, 33.211777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.124027, 28.941486, 33.048817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295782, -0.401104, 0.866965,
		-0.954289, 0.083263, -0.287053,
		0.042952, -0.912241, -0.407397,
		41.136913, 28.667814, 32.926598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.519440, 28.870422, 33.489574>,  <41.106846, 29.306383, 33.211777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.519440, 28.870422, 33.489574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763290, 28.600430, 33.323322>,  <40.909599, 28.438433, 33.223572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.763290, 28.600430, 33.323322>,  <40.519440, 28.870422, 33.489574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763290, 28.600430, 33.323322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047942, -0.554770, 0.830621,
		-0.791237, -0.486443, -0.370563,
		0.609627, -0.674984, -0.415634,
		40.946178, 28.397934, 33.198631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.267048, 28.156012, 33.314007>,  <40.519440, 28.870422, 33.489574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.267048, 28.156012, 33.314007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630028, 28.219883, 33.469463>,  <40.847816, 28.258205, 33.562737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.630028, 28.219883, 33.469463>,  <40.267048, 28.156012, 33.314007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630028, 28.219883, 33.469463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373330, -0.117985, 0.920165,
		0.192785, -0.980093, -0.047452,
		0.907446, 0.159679, 0.388644,
		40.902260, 28.267786, 33.586056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791416, 28.602806, 33.709755>,  <40.267048, 28.156012, 33.314007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791416, 28.602806, 33.709755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478382, 28.355381, 33.681629>,  <39.290562, 28.206926, 33.664753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.478382, 28.355381, 33.681629>,  <39.791416, 28.602806, 33.709755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478382, 28.355381, 33.681629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544595, 0.734931, -0.404095,
		0.301634, -0.277945, -0.912011,
		-0.782582, -0.618565, -0.070313,
		39.243607, 28.169811, 33.660534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309784, 28.905973, 33.330105>,  <39.791416, 28.602806, 33.709755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.309784, 28.905973, 33.330105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109055, 28.565132, 33.389561>,  <38.988617, 28.360628, 33.425232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.109055, 28.565132, 33.389561>,  <39.309784, 28.905973, 33.330105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.109055, 28.565132, 33.389561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827143, 0.422483, -0.370598,
		0.252990, -0.308921, -0.916823,
		-0.501827, -0.852101, 0.148638,
		38.958508, 28.309502, 33.434151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796604, 28.659594, 32.741409>,  <39.309784, 28.905973, 33.330105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.796604, 28.659594, 32.741409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643326, 28.485798, 33.067448>,  <38.551361, 28.381519, 33.263069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643326, 28.485798, 33.067448>,  <38.796604, 28.659594, 32.741409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643326, 28.485798, 33.067448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.919196, 0.266111, -0.290281,
		-0.090782, -0.860466, -0.501354,
		-0.383193, -0.434491, 0.815096,
		38.528366, 28.355450, 33.311977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211365, 29.115499, 33.114338>,  <38.796604, 28.659594, 32.741409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211365, 29.115499, 33.114338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860195, 29.304577, 33.144814>,  <37.649494, 29.418022, 33.163101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860195, 29.304577, 33.144814>,  <38.211365, 29.115499, 33.114338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860195, 29.304577, 33.144814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062719, 0.044225, -0.997051,
		-0.474667, -0.880117, -0.009179,
		-0.877928, 0.472692, 0.076192,
		37.596817, 29.446384, 33.167671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.879131, 29.089508, 32.385536>,  <38.211365, 29.115499, 33.114338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.879131, 29.089508, 32.385536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589355, 29.331203, 32.518253>,  <37.415489, 29.476221, 32.597885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.589355, 29.331203, 32.518253>,  <37.879131, 29.089508, 32.385536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.589355, 29.331203, 32.518253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341512, 0.103507, -0.934160,
		-0.598801, -0.790050, 0.131371,
		-0.724436, 0.604241, 0.331792,
		37.372025, 29.512476, 32.617790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.267559, 28.807199, 32.011467>,  <37.879131, 29.089508, 32.385536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.267559, 28.807199, 32.011467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227257, 29.192726, 32.110188>,  <37.203075, 29.424042, 32.169418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.227257, 29.192726, 32.110188>,  <37.267559, 28.807199, 32.011467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227257, 29.192726, 32.110188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088472, 0.238398, -0.967129,
		-0.990970, -0.119279, 0.061251,
		-0.100756, 0.963815, 0.246798,
		37.197029, 29.481871, 32.184227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704475, 29.164185, 31.621008>,  <37.267559, 28.807199, 32.011467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704475, 29.164185, 31.621008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995235, 29.421101, 31.718235>,  <37.169693, 29.575251, 31.776571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995235, 29.421101, 31.718235>,  <36.704475, 29.164185, 31.621008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995235, 29.421101, 31.718235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050964, 0.403420, -0.913595,
		-0.684850, 0.651704, 0.325979,
		0.726900, 0.642288, 0.243069,
		37.213306, 29.613787, 31.791155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.564590, 29.893370, 31.415562>,  <36.704475, 29.164185, 31.621008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.564590, 29.893370, 31.415562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962662, 29.856899, 31.430027>,  <37.201504, 29.835018, 31.438705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.962662, 29.856899, 31.430027>,  <36.564590, 29.893370, 31.415562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.962662, 29.856899, 31.430027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066399, 0.354871, -0.932555,
		0.072193, 0.930459, 0.359214,
		0.995178, -0.091175, 0.036163,
		37.261215, 29.829546, 31.440876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.860352, 30.557354, 31.195364>,  <36.564590, 29.893370, 31.415562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.860352, 30.557354, 31.195364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101757, 30.242580, 31.143974>,  <37.246601, 30.053717, 31.113140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.101757, 30.242580, 31.143974>,  <36.860352, 30.557354, 31.195364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.101757, 30.242580, 31.143974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138966, 0.262470, -0.954881,
		0.785147, 0.558433, 0.267762,
		0.603516, -0.786932, -0.128474,
		37.282810, 30.006500, 31.105433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.425529, 30.812935, 30.885218>,  <36.860352, 30.557354, 31.195364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.425529, 30.812935, 30.885218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496014, 30.425552, 30.814739>,  <37.538303, 30.193123, 30.772451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496014, 30.425552, 30.814739>,  <37.425529, 30.812935, 30.885218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496014, 30.425552, 30.814739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152450, 0.203689, -0.967093,
		0.972476, 0.143551, 0.183533,
		0.176211, -0.968454, -0.176198,
		37.548878, 30.135015, 30.761879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.071770, 30.718386, 30.503391>,  <37.425529, 30.812935, 30.885218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.071770, 30.718386, 30.503391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860294, 30.390160, 30.416523>,  <37.733410, 30.193224, 30.364403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.860294, 30.390160, 30.416523>,  <38.071770, 30.718386, 30.503391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.860294, 30.390160, 30.416523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136094, 0.170594, -0.975898,
		0.837834, -0.545503, 0.021482,
		-0.528690, -0.820564, -0.217169,
		37.701687, 30.143991, 30.351372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448933, 30.334366, 30.064674>,  <38.071770, 30.718386, 30.503391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448933, 30.334366, 30.064674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078388, 30.202179, 29.992397>,  <37.856060, 30.122868, 29.949032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.078388, 30.202179, 29.992397>,  <38.448933, 30.334366, 30.064674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.078388, 30.202179, 29.992397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230047, -0.116586, -0.966171,
		0.298222, -0.936589, 0.184024,
		-0.926359, -0.330468, -0.180690,
		37.800480, 30.103039, 29.938190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.611885, 29.990995, 29.494171>,  <38.448933, 30.334366, 30.064674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.611885, 29.990995, 29.494171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212078, 29.997406, 29.483509>,  <37.972195, 30.001251, 29.477112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212078, 29.997406, 29.483509>,  <38.611885, 29.990995, 29.494171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212078, 29.997406, 29.483509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023888, -0.153171, -0.987911,
		-0.019915, -0.988070, 0.152714,
		-0.999516, 0.016026, -0.026654,
		37.912224, 30.002214, 29.475513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381157, 29.461866, 28.947687>,  <38.611885, 29.990995, 29.494171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381157, 29.461866, 28.947687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055897, 29.692928, 28.976257>,  <37.860741, 29.831566, 28.993401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.055897, 29.692928, 28.976257>,  <38.381157, 29.461866, 28.947687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.055897, 29.692928, 28.976257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066240, 0.030077, -0.997350,
		-0.578275, -0.815725, 0.013807,
		-0.813148, 0.577657, 0.071427,
		37.811951, 29.866226, 28.997684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.891434, 29.106386, 28.508438>,  <38.381157, 29.461866, 28.947687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.891434, 29.106386, 28.508438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732952, 29.467869, 28.573360>,  <37.637863, 29.684757, 28.612314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.732952, 29.467869, 28.573360>,  <37.891434, 29.106386, 28.508438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.732952, 29.467869, 28.573360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240763, 0.068329, -0.968176,
		-0.886035, -0.422668, 0.190507,
		-0.396200, 0.903705, 0.162305,
		37.614094, 29.738981, 28.622051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.268608, 29.108940, 28.187243>,  <37.891434, 29.106386, 28.508438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.268608, 29.108940, 28.187243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394417, 29.487965, 28.209888>,  <37.469902, 29.715380, 28.223476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.394417, 29.487965, 28.209888>,  <37.268608, 29.108940, 28.187243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394417, 29.487965, 28.209888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072037, 0.083297, -0.993918,
		-0.946514, 0.308526, 0.094458,
		0.314518, 0.947562, 0.056617,
		37.488773, 29.772234, 28.226873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921368, 29.481180, 27.607676>,  <37.268608, 29.108940, 28.187243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921368, 29.481180, 27.607676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230789, 29.725021, 27.676960>,  <37.416443, 29.871326, 27.718531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.230789, 29.725021, 27.676960>,  <36.921368, 29.481180, 27.607676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230789, 29.725021, 27.676960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176443, 0.055340, -0.982754,
		-0.608675, 0.790773, -0.064752,
		0.773552, 0.609603, 0.173211,
		37.462856, 29.907902, 27.728924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854671, 30.128222, 27.115303>,  <36.921368, 29.481180, 27.607676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854671, 30.128222, 27.115303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235603, 30.127422, 27.237328>,  <37.464161, 30.126942, 27.310543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.235603, 30.127422, 27.237328>,  <36.854671, 30.128222, 27.115303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.235603, 30.127422, 27.237328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297712, 0.224383, -0.927912,
		-0.066595, 0.974499, 0.214282,
		0.952330, -0.002000, 0.305063,
		37.521301, 30.126822, 27.328846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.096050, 30.792540, 26.944466>,  <36.854671, 30.128222, 27.115303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.096050, 30.792540, 26.944466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412327, 30.549080, 26.970856>,  <37.602093, 30.403004, 26.986691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.412327, 30.549080, 26.970856>,  <37.096050, 30.792540, 26.944466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.412327, 30.549080, 26.970856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190141, 0.141708, -0.971476,
		0.581937, 0.780684, 0.227776,
		0.790693, -0.608647, 0.065975,
		37.649536, 30.366486, 26.990648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.572872, 31.133789, 26.617363>,  <37.096050, 30.792540, 26.944466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.572872, 31.133789, 26.617363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694580, 30.753952, 26.647556>,  <37.767605, 30.526051, 26.665672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.694580, 30.753952, 26.647556>,  <37.572872, 31.133789, 26.617363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.694580, 30.753952, 26.647556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289267, 0.016608, -0.957104,
		0.907605, 0.313049, 0.279739,
		0.304266, -0.949592, 0.075482,
		37.785858, 30.469074, 26.670200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205006, 31.145559, 26.218086>,  <37.572872, 31.133789, 26.617363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205006, 31.145559, 26.218086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110794, 30.757099, 26.233040>,  <38.054268, 30.524023, 26.242012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.110794, 30.757099, 26.233040>,  <38.205006, 31.145559, 26.218086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110794, 30.757099, 26.233040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287301, -0.106320, -0.951921,
		0.928432, -0.213460, 0.304053,
		-0.235524, -0.971149, 0.037383,
		38.040138, 30.465754, 26.244255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738525, 30.892504, 25.879412>,  <38.205006, 31.145559, 26.218086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.738525, 30.892504, 25.879412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464428, 30.602177, 25.855335>,  <38.299969, 30.427980, 25.840889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.464428, 30.602177, 25.855335>,  <38.738525, 30.892504, 25.879412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.464428, 30.602177, 25.855335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310239, -0.216125, -0.925765,
		0.658930, -0.653051, 0.373277,
		-0.685247, -0.725820, -0.060191,
		38.258854, 30.384430, 25.837278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.169960, 30.196085, 25.650129>,  <38.738525, 30.892504, 25.879412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.169960, 30.196085, 25.650129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779167, 30.183361, 25.565758>,  <38.544693, 30.175728, 25.515135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779167, 30.183361, 25.565758>,  <39.169960, 30.196085, 25.650129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779167, 30.183361, 25.565758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211937, -0.256989, -0.942889,
		-0.024216, -0.965891, 0.257815,
		-0.976983, -0.031808, -0.210931,
		38.486073, 30.173819, 25.502478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.171204, 29.566864, 25.260323>,  <39.169960, 30.196085, 25.650129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.171204, 29.566864, 25.260323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831387, 29.764336, 25.185966>,  <38.627495, 29.882818, 25.141354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.831387, 29.764336, 25.185966>,  <39.171204, 29.566864, 25.260323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.831387, 29.764336, 25.185966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121967, -0.159014, -0.979713,
		-0.513225, -0.854982, 0.074877,
		-0.849544, 0.493681, -0.185890,
		38.576523, 29.912439, 25.130199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952957, 29.147243, 24.815332>,  <39.171204, 29.566864, 25.260323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952957, 29.147243, 24.815332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771236, 29.501247, 24.774601>,  <38.662205, 29.713650, 24.750162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771236, 29.501247, 24.774601>,  <38.952957, 29.147243, 24.815332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771236, 29.501247, 24.774601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268777, 0.027191, -0.962818,
		-0.849335, -0.464777, -0.250223,
		-0.454300, 0.885010, -0.101827,
		38.634945, 29.766750, 24.744053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.573433, 29.103832, 24.197939>,  <38.952957, 29.147243, 24.815332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.573433, 29.103832, 24.197939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649624, 29.486382, 24.286549>,  <38.695339, 29.715910, 24.339714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.649624, 29.486382, 24.286549>,  <38.573433, 29.103832, 24.197939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.649624, 29.486382, 24.286549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302188, 0.157576, -0.940134,
		-0.934024, 0.246017, -0.258989,
		0.190479, 0.956371, 0.221523,
		38.706768, 29.773293, 24.353006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363842, 29.531435, 23.591528>,  <38.573433, 29.103832, 24.197939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363842, 29.531435, 23.591528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567032, 29.818157, 23.782589>,  <38.688946, 29.990191, 23.897226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.567032, 29.818157, 23.782589>,  <38.363842, 29.531435, 23.591528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.567032, 29.818157, 23.782589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270826, 0.393497, -0.878529,
		-0.817690, 0.575630, 0.005756,
		0.507973, 0.716806, 0.477654,
		38.719425, 30.033199, 23.925884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.057747, 30.180639, 23.428432>,  <38.363842, 29.531435, 23.591528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.057747, 30.180639, 23.428432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448761, 30.224533, 23.500404>,  <38.683369, 30.250870, 23.543587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.448761, 30.224533, 23.500404>,  <38.057747, 30.180639, 23.428432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.448761, 30.224533, 23.500404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140643, 0.296169, -0.944724,
		-0.156960, 0.948811, 0.274083,
		0.977539, 0.109737, 0.179930,
		38.742023, 30.257454, 23.554384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827156, 30.519026, 22.831703>,  <38.057747, 30.180639, 23.428432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827156, 30.519026, 22.831703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553864, 30.763580, 22.672001>,  <37.389889, 30.910313, 22.576180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.553864, 30.763580, 22.672001>,  <37.827156, 30.519026, 22.831703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.553864, 30.763580, 22.672001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681643, -0.337953, 0.648961,
		0.261836, 0.715539, 0.647647,
		-0.683231, 0.611385, -0.399254,
		37.348896, 30.946997, 22.552225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447693, 30.862715, 23.351418>,  <37.827156, 30.519026, 22.831703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447693, 30.862715, 23.351418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214241, 30.825218, 23.028782>,  <37.074169, 30.802719, 22.835201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.214241, 30.825218, 23.028782>,  <37.447693, 30.862715, 23.351418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.214241, 30.825218, 23.028782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763740, -0.274021, 0.584477,
		-0.275813, 0.957144, 0.088332,
		-0.583634, -0.093743, -0.806588,
		37.039150, 30.797094, 22.786806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774403, 31.314854, 23.401709>,  <37.447693, 30.862715, 23.351418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774403, 31.314854, 23.401709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736027, 30.982784, 23.182034>,  <36.713001, 30.783543, 23.050228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.736027, 30.982784, 23.182034>,  <36.774403, 31.314854, 23.401709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736027, 30.982784, 23.182034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704482, -0.333154, 0.626669,
		-0.703208, 0.447014, -0.552881,
		-0.095935, -0.830173, -0.549189,
		36.707245, 30.733732, 23.017277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.143494, 31.289660, 23.179838>,  <36.774403, 31.314854, 23.401709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.143494, 31.289660, 23.179838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302795, 30.923538, 23.203892>,  <36.398376, 30.703865, 23.218323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.302795, 30.923538, 23.203892>,  <36.143494, 31.289660, 23.179838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.302795, 30.923538, 23.203892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881351, -0.363667, 0.301608,
		-0.254195, -0.173113, -0.951534,
		0.398253, -0.915303, 0.060131,
		36.422272, 30.648947, 23.221931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.628757, 30.897459, 22.860035>,  <36.143494, 31.289660, 23.179838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.628757, 30.897459, 22.860035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 30.677376, 23.124432>,  <35.955322, 30.545326, 23.283070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832859, 30.677376, 23.124432>,  <35.628757, 30.897459, 22.860035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832859, 30.677376, 23.124432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.859726, -0.306179, 0.408809,
		-0.022547, -0.776870, -0.629258,
		0.510257, -0.550207, 0.660992,
		35.985935, 30.512314, 23.322729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396221, 30.267294, 22.940071>,  <35.628757, 30.897459, 22.860035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396221, 30.267294, 22.940071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534939, 30.369453, 23.301071>,  <35.618168, 30.430748, 23.517672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.534939, 30.369453, 23.301071>,  <35.396221, 30.267294, 22.940071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.534939, 30.369453, 23.301071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863866, -0.287815, 0.413398,
		0.365333, -0.923003, 0.120817,
		0.346794, 0.255397, 0.902500,
		35.638977, 30.446074, 23.571821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.321896, 29.691498, 23.302759>,  <35.396221, 30.267294, 22.940071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.321896, 29.691498, 23.302759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303528, 30.014420, 23.538097>,  <35.292507, 30.208172, 23.679300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303528, 30.014420, 23.538097>,  <35.321896, 29.691498, 23.302759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303528, 30.014420, 23.538097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790876, -0.389179, 0.472287,
		0.610251, -0.443621, 0.656348,
		-0.045921, 0.807304, 0.588347,
		35.289753, 30.256611, 23.714602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055939, 29.374121, 23.891529>,  <35.321896, 29.691498, 23.302759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055939, 29.374121, 23.891529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014919, 29.762753, 23.976868>,  <34.990307, 29.995932, 24.028070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.014919, 29.762753, 23.976868>,  <35.055939, 29.374121, 23.891529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.014919, 29.762753, 23.976868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735723, -0.218430, 0.641093,
		0.669474, -0.091218, 0.737214,
		-0.102550, 0.971580, 0.213345,
		34.984154, 30.054226, 24.040871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070412, 29.471188, 24.610435>,  <35.055939, 29.374121, 23.891529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070412, 29.471188, 24.610435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854111, 29.768124, 24.452187>,  <34.724331, 29.946285, 24.357237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854111, 29.768124, 24.452187>,  <35.070412, 29.471188, 24.610435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854111, 29.768124, 24.452187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760000, -0.229579, 0.608023,
		0.360532, 0.629466, 0.688323,
		-0.540755, 0.742338, -0.395624,
		34.691883, 29.990826, 24.333500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.712109, 29.761011, 25.166325>,  <35.070412, 29.471188, 24.610435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.712109, 29.761011, 25.166325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503159, 29.865559, 24.841656>,  <34.377789, 29.928288, 24.646854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.503159, 29.865559, 24.841656>,  <34.712109, 29.761011, 25.166325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.503159, 29.865559, 24.841656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852313, -0.189352, 0.487553,
		-0.026261, 0.946484, 0.321681,
		-0.522372, 0.261369, -0.811673,
		34.346447, 29.943970, 24.598154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197773, 30.219984, 25.381256>,  <34.712109, 29.761011, 25.166325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.197773, 30.219984, 25.381256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059372, 30.075184, 25.035023>,  <33.976334, 29.988304, 24.827282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.059372, 30.075184, 25.035023>,  <34.197773, 30.219984, 25.381256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.059372, 30.075184, 25.035023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814582, -0.341875, 0.468591,
		-0.465553, 0.867223, -0.176592,
		-0.346001, -0.362002, -0.865585,
		33.955570, 29.966583, 24.775347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511517, 30.183279, 25.417372>,  <34.197773, 30.219984, 25.381256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511517, 30.183279, 25.417372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525299, 29.958172, 25.087013>,  <33.533569, 29.823107, 24.888798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.525299, 29.958172, 25.087013>,  <33.511517, 30.183279, 25.417372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.525299, 29.958172, 25.087013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791340, -0.520095, 0.321377,
		-0.610405, 0.642489, -0.463264,
		0.034460, -0.562770, -0.825895,
		33.535637, 29.789341, 24.839245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.813877, 30.177458, 25.086866>,  <33.511517, 30.183279, 25.417372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.813877, 30.177458, 25.086866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 29.844044, 24.969425>,  <33.113396, 29.643995, 24.898960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001076, 29.844044, 24.969425>,  <32.813877, 30.177458, 25.086866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001076, 29.844044, 24.969425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753712, -0.549932, 0.359853,
		-0.461412, 0.052884, -0.885609,
		0.467993, -0.833534, -0.293604,
		33.141472, 29.593983, 24.881344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.334999, 29.800795, 24.752193>,  <32.813877, 30.177458, 25.086866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.334999, 29.800795, 24.752193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617428, 29.548138, 24.880249>,  <32.786884, 29.396544, 24.957083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.617428, 29.548138, 24.880249>,  <32.334999, 29.800795, 24.752193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.617428, 29.548138, 24.880249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694164, -0.527994, 0.489243,
		-0.139996, -0.567670, -0.811266,
		0.706071, -0.631644, 0.320139,
		32.829250, 29.358644, 24.976290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.029648, 29.213331, 24.736240>,  <32.334999, 29.800795, 24.752193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.029648, 29.213331, 24.736240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350883, 29.114456, 24.953106>,  <32.543625, 29.055132, 25.083225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.350883, 29.114456, 24.953106>,  <32.029648, 29.213331, 24.736240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.350883, 29.114456, 24.953106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543123, -0.677907, 0.495439,
		0.245071, -0.692345, -0.678674,
		0.803093, -0.247186, 0.542164,
		32.591812, 29.040300, 25.115755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075012, 28.421650, 24.803699>,  <32.029648, 29.213331, 24.736240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075012, 28.421650, 24.803699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312077, 28.576561, 25.086193>,  <32.454315, 28.669508, 25.255690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.312077, 28.576561, 25.086193>,  <32.075012, 28.421650, 24.803699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312077, 28.576561, 25.086193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388105, -0.631006, 0.671718,
		0.705778, -0.672197, -0.223672,
		0.592665, 0.387276, 0.706233,
		32.489876, 28.692743, 25.298063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.347858, 27.924688, 25.160711>,  <32.075012, 28.421650, 24.803699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.347858, 27.924688, 25.160711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396313, 28.199070, 25.447708>,  <32.425385, 28.363699, 25.619907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396313, 28.199070, 25.447708>,  <32.347858, 27.924688, 25.160711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396313, 28.199070, 25.447708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306660, -0.661597, 0.684287,
		0.944080, -0.302918, 0.130212,
		0.121135, 0.685952, 0.717493,
		32.432652, 28.404856, 25.662956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.691212, 27.584478, 25.658489>,  <32.347858, 27.924688, 25.160711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.691212, 27.584478, 25.658489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554264, 27.899261, 25.863811>,  <32.472095, 28.088131, 25.987005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554264, 27.899261, 25.863811>,  <32.691212, 27.584478, 25.658489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554264, 27.899261, 25.863811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345193, -0.613467, 0.710282,
		0.873858, 0.065987, 0.481683,
		-0.342366, 0.786959, 0.513305,
		32.451553, 28.135349, 26.017803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.972027, 27.556175, 26.394920>,  <32.691212, 27.584478, 25.658489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.972027, 27.556175, 26.394920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654675, 27.798782, 26.415611>,  <32.464264, 27.944347, 26.428026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.654675, 27.798782, 26.415611>,  <32.972027, 27.556175, 26.394920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.654675, 27.798782, 26.415611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381729, -0.561922, 0.733843,
		0.474157, 0.562474, 0.677347,
		-0.793384, 0.606520, 0.051727,
		32.416660, 27.980738, 26.431129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.834934, 27.599081, 27.132185>,  <32.972027, 27.556175, 26.394920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.834934, 27.599081, 27.132185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516209, 27.735294, 26.932533>,  <32.324974, 27.817022, 26.812742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.516209, 27.735294, 26.932533>,  <32.834934, 27.599081, 27.132185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.516209, 27.735294, 26.932533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594713, -0.295960, 0.747479,
		0.106818, 0.892438, 0.438343,
		-0.796810, 0.340533, -0.499130,
		32.277164, 27.837454, 26.782795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.352394, 28.048119, 27.561337>,  <32.834934, 27.599081, 27.132185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.352394, 28.048119, 27.561337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121845, 27.882557, 27.279491>,  <31.983515, 27.783220, 27.110384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121845, 27.882557, 27.279491>,  <32.352394, 28.048119, 27.561337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121845, 27.882557, 27.279491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596660, -0.376016, 0.708949,
		-0.558383, 0.829033, -0.030235,
		-0.576373, -0.413905, -0.704611,
		31.948933, 27.758385, 27.068108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740480, 28.234978, 27.730396>,  <32.352394, 28.048119, 27.561337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740480, 28.234978, 27.730396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644878, 27.945999, 27.470875>,  <31.587517, 27.772612, 27.315161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.644878, 27.945999, 27.470875>,  <31.740480, 28.234978, 27.730396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.644878, 27.945999, 27.470875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461254, -0.503504, 0.730567,
		-0.854472, 0.473873, -0.212892,
		-0.239004, -0.722446, -0.648806,
		31.573177, 27.729265, 27.276234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977287, 28.100176, 27.804226>,  <31.740480, 28.234978, 27.730396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977287, 28.100176, 27.804226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173502, 27.781883, 27.662136>,  <31.291231, 27.590908, 27.576883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.173502, 27.781883, 27.662136>,  <30.977287, 28.100176, 27.804226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.173502, 27.781883, 27.662136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382381, -0.562849, 0.732793,
		-0.783044, -0.223632, -0.580371,
		0.490537, -0.795732, -0.355223,
		31.320663, 27.543163, 27.555569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.510550, 27.583443, 27.952129>,  <30.977287, 28.100176, 27.804226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.510550, 27.583443, 27.952129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852604, 27.388916, 27.880306>,  <31.057837, 27.272200, 27.837214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.852604, 27.388916, 27.880306>,  <30.510550, 27.583443, 27.952129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.852604, 27.388916, 27.880306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258149, -0.699832, 0.666029,
		-0.449561, -0.523192, -0.723993,
		0.855134, -0.486318, -0.179555,
		31.109144, 27.243021, 27.826439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312021, 26.915443, 28.054089>,  <30.510550, 27.583443, 27.952129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.312021, 26.915443, 28.054089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711809, 26.910645, 28.066204>,  <30.951681, 26.907764, 28.073473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.711809, 26.910645, 28.066204>,  <30.312021, 26.915443, 28.054089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.711809, 26.910645, 28.066204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031951, -0.542533, 0.839427,
		0.006362, -0.839949, -0.542629,
		0.999469, -0.011997, 0.030289,
		31.011650, 26.907045, 28.075291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.528793, 26.176424, 28.044737>,  <30.312021, 26.915443, 28.054089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.528793, 26.176424, 28.044737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819773, 26.412796, 28.184235>,  <30.994360, 26.554619, 28.267933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.819773, 26.412796, 28.184235>,  <30.528793, 26.176424, 28.044737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.819773, 26.412796, 28.184235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072076, -0.439634, 0.895281,
		0.682367, -0.676406, -0.277219,
		0.727448, 0.590929, 0.348744,
		31.038008, 26.590075, 28.288858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.833513, 25.728209, 28.528772>,  <30.528793, 26.176424, 28.044737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.833513, 25.728209, 28.528772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936449, 26.095467, 28.649292>,  <30.998211, 26.315823, 28.721603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.936449, 26.095467, 28.649292>,  <30.833513, 25.728209, 28.528772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.936449, 26.095467, 28.649292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133747, -0.274959, 0.952108,
		0.957021, -0.285312, 0.052042,
		0.257338, 0.918147, 0.301301,
		31.013651, 26.370911, 28.739683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.273731, 25.598543, 29.116302>,  <30.833513, 25.728209, 28.528772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.273731, 25.598543, 29.116302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194023, 25.987755, 29.162781>,  <31.146198, 26.221283, 29.190668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.194023, 25.987755, 29.162781>,  <31.273731, 25.598543, 29.116302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.194023, 25.987755, 29.162781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252936, -0.165626, 0.953200,
		0.946739, 0.160556, 0.279119,
		-0.199272, 0.973031, 0.116194,
		31.134241, 26.279665, 29.197639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493229, 25.738119, 29.796066>,  <31.273731, 25.598543, 29.116302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493229, 25.738119, 29.796066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220488, 26.022926, 29.729004>,  <31.056843, 26.193811, 29.688766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.220488, 26.022926, 29.729004>,  <31.493229, 25.738119, 29.796066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220488, 26.022926, 29.729004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372919, -0.141185, 0.917059,
		0.629293, 0.687820, 0.361792,
		-0.681852, 0.712018, -0.167655,
		31.015932, 26.236532, 29.678707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573818, 26.218195, 30.291449>,  <31.493229, 25.738119, 29.796066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573818, 26.218195, 30.291449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213945, 26.333221, 30.160069>,  <30.998022, 26.402237, 30.081240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.213945, 26.333221, 30.160069>,  <31.573818, 26.218195, 30.291449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213945, 26.333221, 30.160069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304176, 0.126731, 0.944148,
		0.313131, 0.949339, -0.026546,
		-0.899681, 0.287568, -0.328449,
		30.944040, 26.419491, 30.061533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.364019, 26.799791, 30.707388>,  <31.573818, 26.218195, 30.291449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.364019, 26.799791, 30.707388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024271, 26.640060, 30.569340>,  <30.820423, 26.544222, 30.486511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.024271, 26.640060, 30.569340>,  <31.364019, 26.799791, 30.707388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024271, 26.640060, 30.569340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452197, 0.213351, 0.866025,
		-0.272196, 0.891638, -0.361788,
		-0.849369, -0.399328, -0.345123,
		30.769461, 26.520262, 30.465803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716249, 27.143675, 31.081274>,  <31.364019, 26.799791, 30.707388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.716249, 27.143675, 31.081274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542370, 26.822121, 30.918892>,  <30.438042, 26.629189, 30.821463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542370, 26.822121, 30.918892>,  <30.716249, 27.143675, 31.081274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542370, 26.822121, 30.918892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472763, -0.179968, 0.862616,
		-0.766505, 0.566901, -0.301816,
		-0.434701, -0.803887, -0.405956,
		30.411959, 26.580954, 30.797106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050037, 27.232462, 31.316809>,  <30.716249, 27.143675, 31.081274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050037, 27.232462, 31.316809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065989, 26.861023, 31.169231>,  <30.075560, 26.638161, 31.080685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.065989, 26.861023, 31.169231>,  <30.050037, 27.232462, 31.316809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.065989, 26.861023, 31.169231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635945, -0.308386, 0.707440,
		-0.770703, 0.206416, -0.602834,
		0.039878, -0.928596, -0.368944,
		30.077951, 26.582443, 31.058548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.357729, 26.977381, 31.316277>,  <30.050037, 27.232462, 31.316809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.357729, 26.977381, 31.316277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589905, 26.651772, 31.324791>,  <29.729210, 26.456406, 31.329899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.589905, 26.651772, 31.324791>,  <29.357729, 26.977381, 31.316277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.589905, 26.651772, 31.324791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611933, -0.418797, 0.670930,
		-0.537240, -0.402459, -0.741215,
		0.580441, -0.814024, 0.021284,
		29.764038, 26.407564, 31.331177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.956850, 26.416492, 31.207142>,  <29.357729, 26.977381, 31.316277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.956850, 26.416492, 31.207142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278444, 26.271996, 31.396080>,  <29.471401, 26.185297, 31.509443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.278444, 26.271996, 31.396080>,  <28.956850, 26.416492, 31.207142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.278444, 26.271996, 31.396080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572993, -0.683027, 0.452937,
		0.159005, -0.634806, -0.756134,
		0.803987, -0.361240, 0.472344,
		29.519640, 26.163624, 31.537783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.871037, 25.730621, 31.131725>,  <28.956850, 26.416492, 31.207142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.871037, 25.730621, 31.131725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118862, 25.768131, 31.443455>,  <29.267557, 25.790636, 31.630493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.118862, 25.768131, 31.443455>,  <28.871037, 25.730621, 31.131725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118862, 25.768131, 31.443455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533280, -0.678241, 0.505571,
		0.575978, -0.728832, -0.370207,
		0.619566, 0.093774, 0.779323,
		29.304731, 25.796263, 31.677252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.048687, 25.019800, 31.301989>,  <28.871037, 25.730621, 31.131725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.048687, 25.019800, 31.301989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152603, 25.233257, 31.623917>,  <29.214952, 25.361332, 31.817074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.152603, 25.233257, 31.623917>,  <29.048687, 25.019800, 31.301989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152603, 25.233257, 31.623917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338874, -0.730053, 0.593453,
		0.904253, -0.426906, -0.008823,
		0.259789, 0.533642, 0.804820,
		29.230539, 25.393351, 31.865362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.435980, 24.525909, 31.743923>,  <29.048687, 25.019800, 31.301989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.435980, 24.525909, 31.743923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315794, 24.819820, 31.987175>,  <29.243683, 24.996166, 32.133125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315794, 24.819820, 31.987175>,  <29.435980, 24.525909, 31.743923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315794, 24.819820, 31.987175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320063, -0.678296, 0.661419,
		0.898488, 0.004093, 0.438979,
		-0.300465, 0.734778, 0.608131,
		29.225655, 25.040255, 32.169613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.738678, 24.304724, 32.317238>,  <29.435980, 24.525909, 31.743923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.738678, 24.304724, 32.317238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434752, 24.557190, 32.379597>,  <29.252396, 24.708670, 32.417011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.434752, 24.557190, 32.379597>,  <29.738678, 24.304724, 32.317238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434752, 24.557190, 32.379597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410411, -0.651631, 0.637918,
		0.504221, 0.420720, 0.754159,
		-0.759819, 0.631167, 0.155898,
		29.206806, 24.746540, 32.426365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716305, 24.414274, 33.088623>,  <29.738678, 24.304724, 32.317238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716305, 24.414274, 33.088623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364544, 24.537113, 32.943108>,  <29.153488, 24.610817, 32.855797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.364544, 24.537113, 32.943108>,  <29.716305, 24.414274, 33.088623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.364544, 24.537113, 32.943108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476011, -0.580174, 0.660917,
		-0.008095, 0.754379, 0.656389,
		-0.879402, 0.307099, -0.363790,
		29.100723, 24.629242, 32.833969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.440020, 24.742033, 33.623009>,  <29.716305, 24.414274, 33.088623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.440020, 24.742033, 33.623009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136751, 24.626907, 33.388969>,  <28.954790, 24.557831, 33.248547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.136751, 24.626907, 33.388969>,  <29.440020, 24.742033, 33.623009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.136751, 24.626907, 33.388969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496873, -0.326058, 0.804241,
		-0.422250, 0.900471, 0.104199,
		-0.758170, -0.287816, -0.585098,
		28.909300, 24.540562, 33.213440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865891, 24.938829, 33.957432>,  <29.440020, 24.742033, 33.623009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865891, 24.938829, 33.957432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698591, 24.681252, 33.701183>,  <28.598211, 24.526705, 33.547432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.698591, 24.681252, 33.701183>,  <28.865891, 24.938829, 33.957432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.698591, 24.681252, 33.701183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562945, -0.369733, 0.739182,
		-0.712854, 0.669799, -0.207866,
		-0.418249, -0.643946, -0.640626,
		28.573116, 24.488068, 33.508995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174124, 25.042715, 34.034809>,  <28.865891, 24.938829, 33.957432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174124, 25.042715, 34.034809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230173, 24.676052, 33.885090>,  <28.263803, 24.456055, 33.795258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.230173, 24.676052, 33.885090>,  <28.174124, 25.042715, 34.034809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.230173, 24.676052, 33.885090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689371, -0.361674, 0.627662,
		-0.710727, 0.170079, -0.682598,
		0.140126, -0.916660, -0.374299,
		28.272211, 24.401054, 33.772800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.592037, 24.704885, 34.216225>,  <28.174124, 25.042715, 34.034809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.592037, 24.704885, 34.216225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788565, 24.385460, 34.077141>,  <27.906481, 24.193804, 33.993690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.788565, 24.385460, 34.077141>,  <27.592037, 24.704885, 34.216225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.788565, 24.385460, 34.077141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348910, -0.546237, 0.761503,
		-0.798040, -0.252822, -0.547004,
		0.491318, -0.798565, -0.347707,
		27.935961, 24.145891, 33.972828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.065828, 24.131035, 34.161610>,  <27.592037, 24.704885, 34.216225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.065828, 24.131035, 34.161610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430374, 23.966496, 34.155846>,  <27.649101, 23.867773, 34.152386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430374, 23.966496, 34.155846>,  <27.065828, 24.131035, 34.161610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430374, 23.966496, 34.155846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268681, -0.621078, 0.736256,
		-0.311808, -0.667126, -0.676549,
		0.911365, -0.411346, -0.014413,
		27.703783, 23.843092, 34.151520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.967197, 23.382875, 34.266262>,  <27.065828, 24.131035, 34.161610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.967197, 23.382875, 34.266262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340155, 23.469772, 34.381809>,  <27.563929, 23.521910, 34.451138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.340155, 23.469772, 34.381809>,  <26.967197, 23.382875, 34.266262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.340155, 23.469772, 34.381809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129198, -0.546094, 0.827701,
		0.337561, -0.809066, -0.481108,
		0.932395, 0.217242, 0.288869,
		27.619873, 23.534945, 34.468472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292038, 22.816534, 34.391323>,  <26.967197, 23.382875, 34.266262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292038, 22.816534, 34.391323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500111, 23.082760, 34.605404>,  <27.624954, 23.242495, 34.733852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.500111, 23.082760, 34.605404>,  <27.292038, 22.816534, 34.391323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.500111, 23.082760, 34.605404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159132, -0.540152, 0.826386,
		0.839101, -0.515037, -0.175064,
		0.520180, 0.665563, 0.535200,
		27.656164, 23.282429, 34.765965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.658150, 22.340975, 34.797535>,  <27.292038, 22.816534, 34.391323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.658150, 22.340975, 34.797535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684654, 22.695782, 34.980320>,  <27.700558, 22.908665, 35.089993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.684654, 22.695782, 34.980320>,  <27.658150, 22.340975, 34.797535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684654, 22.695782, 34.980320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165208, -0.441894, 0.881724,
		0.984030, -0.133918, 0.117262,
		0.066261, 0.887015, 0.456961,
		27.704533, 22.961885, 35.117409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192017, 22.351391, 35.332253>,  <27.658150, 22.340975, 34.797535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192017, 22.351391, 35.332253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912458, 22.615856, 35.441364>,  <27.744724, 22.774534, 35.506832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912458, 22.615856, 35.441364>,  <28.192017, 22.351391, 35.332253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912458, 22.615856, 35.441364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098401, -0.466655, 0.878949,
		0.708422, 0.587451, 0.391202,
		-0.698895, 0.661161, 0.272783,
		27.702789, 22.814205, 35.523201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369812, 22.669651, 35.975780>,  <28.192017, 22.351391, 35.332253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369812, 22.669651, 35.975780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974514, 22.689507, 35.917942>,  <27.737335, 22.701420, 35.883240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.974514, 22.689507, 35.917942>,  <28.369812, 22.669651, 35.975780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.974514, 22.689507, 35.917942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150585, -0.479193, 0.864695,
		-0.026367, 0.876305, 0.481035,
		-0.988245, 0.049638, -0.144593,
		27.678040, 22.704397, 35.874565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.737005, 23.156916, 35.701504>,  <28.369812, 22.669651, 35.975780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.737005, 23.156916, 35.701504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915106, 22.901020, 35.952099>,  <29.021967, 22.747482, 36.102455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.915106, 22.901020, 35.952099>,  <28.737005, 23.156916, 35.701504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915106, 22.901020, 35.952099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204071, 0.753756, 0.624665,
		-0.871840, -0.150286, 0.466165,
		0.445253, -0.639739, 0.626486,
		29.048681, 22.709099, 36.140045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.524939, 23.177919, 36.468700>,  <28.737005, 23.156916, 35.701504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.524939, 23.177919, 36.468700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909122, 23.066574, 36.470928>,  <29.139633, 22.999767, 36.472263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.909122, 23.066574, 36.470928>,  <28.524939, 23.177919, 36.468700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909122, 23.066574, 36.470928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210216, 0.738160, 0.641038,
		-0.182552, -0.614520, 0.767490,
		0.960461, -0.278361, 0.005571,
		29.197260, 22.983067, 36.472599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.381897, 23.827900, 36.845638>,  <28.524939, 23.177919, 36.468700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.381897, 23.827900, 36.845638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163004, 24.155983, 36.912331>,  <28.031668, 24.352833, 36.952347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.163004, 24.155983, 36.912331>,  <28.381897, 23.827900, 36.845638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.163004, 24.155983, 36.912331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013699, 0.207958, -0.978042,
		-0.836869, -0.532931, -0.125037,
		-0.547231, 0.820206, 0.166733,
		27.998835, 24.402044, 36.962349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.879940, 23.759333, 36.349594>,  <28.381897, 23.827900, 36.845638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.879940, 23.759333, 36.349594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929028, 24.137657, 36.469849>,  <27.958481, 24.364653, 36.542000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.929028, 24.137657, 36.469849>,  <27.879940, 23.759333, 36.349594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.929028, 24.137657, 36.469849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012281, 0.301452, -0.953402,
		-0.992365, 0.120692, 0.025379,
		0.122718, 0.945812, 0.300633,
		27.965843, 24.421400, 36.560040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.196985, 23.779121, 35.949337>,  <27.879940, 23.759333, 36.349594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.196985, 23.779121, 35.949337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258780, 23.613667, 35.590443>,  <27.295856, 23.514393, 35.375107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258780, 23.613667, 35.590443>,  <27.196985, 23.779121, 35.949337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258780, 23.613667, 35.590443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819236, -0.561250, 0.117688,
		-0.552256, 0.716869, -0.425574,
		0.154486, -0.413640, -0.897238,
		27.305126, 23.489574, 35.321270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.862768, 24.344887, 36.472111>,  <27.196985, 23.779121, 35.949337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.862768, 24.344887, 36.472111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249592, 24.416119, 36.544872>,  <27.481686, 24.458858, 36.588528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.249592, 24.416119, 36.544872>,  <26.862768, 24.344887, 36.472111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.249592, 24.416119, 36.544872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081977, 0.894367, -0.439758,
		-0.241000, 0.410359, 0.879502,
		0.967057, 0.178080, 0.181902,
		27.539709, 24.469543, 36.599442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.952841, 25.160061, 36.541908>,  <26.862768, 24.344887, 36.472111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.952841, 25.160061, 36.541908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301422, 24.990185, 36.443760>,  <27.510571, 24.888260, 36.384872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301422, 24.990185, 36.443760>,  <26.952841, 25.160061, 36.541908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301422, 24.990185, 36.443760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271371, 0.834209, -0.480055,
		0.408565, 0.351759, 0.842223,
		0.871454, -0.424689, -0.245372,
		27.562859, 24.862778, 36.370148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430286, 25.713753, 36.631653>,  <26.952841, 25.160061, 36.541908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430286, 25.713753, 36.631653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627773, 25.427288, 36.434326>,  <27.746265, 25.255409, 36.315929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627773, 25.427288, 36.434326>,  <27.430286, 25.713753, 36.631653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627773, 25.427288, 36.434326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412851, 0.692298, -0.591843,
		0.765374, 0.088538, 0.637467,
		0.493717, -0.716160, -0.493314,
		27.775888, 25.212440, 36.286331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239241, 25.827721, 36.603317>,  <27.430286, 25.713753, 36.631653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239241, 25.827721, 36.603317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126385, 25.617001, 36.282597>,  <28.058672, 25.490570, 36.090164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126385, 25.617001, 36.282597>,  <28.239241, 25.827721, 36.603317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126385, 25.617001, 36.282597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362290, 0.715366, -0.597492,
		0.888338, -0.459059, -0.010978,
		-0.282138, -0.526798, -0.801799,
		28.041744, 25.458961, 36.042057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738522, 26.007011, 36.170815>,  <28.239241, 25.827721, 36.603317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738522, 26.007011, 36.170815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469017, 25.836777, 35.929180>,  <28.307314, 25.734636, 35.784199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.469017, 25.836777, 35.929180>,  <28.738522, 26.007011, 36.170815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.469017, 25.836777, 35.929180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189834, 0.690371, -0.698105,
		0.714152, -0.585030, -0.384351,
		-0.673758, -0.425591, -0.604089,
		28.266890, 25.709101, 35.747955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.008692, 25.872042, 35.615894>,  <28.738522, 26.007011, 36.170815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.008692, 25.872042, 35.615894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626848, 25.875389, 35.496796>,  <28.397741, 25.877398, 35.425339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.626848, 25.875389, 35.496796>,  <29.008692, 25.872042, 35.615894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.626848, 25.875389, 35.496796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241193, 0.608264, -0.756202,
		0.174778, -0.793691, -0.582673,
		-0.954609, 0.008369, -0.297744,
		28.340466, 25.877899, 35.407471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055996, 25.916475, 34.997242>,  <29.008692, 25.872042, 35.615894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055996, 25.916475, 34.997242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676901, 26.043125, 35.012947>,  <28.449444, 26.119116, 35.022369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.676901, 26.043125, 35.012947>,  <29.055996, 25.916475, 34.997242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676901, 26.043125, 35.012947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223922, 0.747766, -0.625064,
		-0.227273, -0.583604, -0.779585,
		-0.947737, 0.316626, 0.039265,
		28.392580, 26.138113, 35.024727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.873119, 25.871515, 34.354404>,  <29.055996, 25.916475, 34.997242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.873119, 25.871515, 34.354404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594034, 26.115295, 34.505013>,  <28.426582, 26.261564, 34.595375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.594034, 26.115295, 34.505013>,  <28.873119, 25.871515, 34.354404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594034, 26.115295, 34.505013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243640, 0.696127, -0.675312,
		-0.673674, -0.379439, -0.634184,
		-0.697713, 0.609453, 0.376516,
		28.384720, 26.298132, 34.617966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.525269, 26.079899, 33.782791>,  <28.873119, 25.871515, 34.354404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.525269, 26.079899, 33.782791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462683, 26.353260, 34.068024>,  <28.425131, 26.517277, 34.239162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.462683, 26.353260, 34.068024>,  <28.525269, 26.079899, 33.782791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.462683, 26.353260, 34.068024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142094, 0.730033, -0.668477,
		-0.977409, -0.003267, -0.211331,
		-0.156462, 0.683404, 0.713077,
		28.415745, 26.558281, 34.281948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.896273, 26.377569, 33.488739>,  <28.525269, 26.079899, 33.782791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.896273, 26.377569, 33.488739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082458, 26.610806, 33.755077>,  <28.194170, 26.750748, 33.914879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.082458, 26.610806, 33.755077>,  <27.896273, 26.377569, 33.488739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.082458, 26.610806, 33.755077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075715, 0.775785, -0.626439,
		-0.881822, 0.241170, 0.405249,
		0.465464, 0.583091, 0.665844,
		28.222097, 26.785732, 33.954830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.596905, 26.988846, 33.410439>,  <27.896273, 26.377569, 33.488739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.596905, 26.988846, 33.410439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948416, 27.098797, 33.566483>,  <28.159323, 27.164768, 33.660110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.948416, 27.098797, 33.566483>,  <27.596905, 26.988846, 33.410439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.948416, 27.098797, 33.566483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006359, 0.810640, -0.585510,
		-0.477185, 0.517016, 0.710626,
		0.878780, 0.274877, 0.390113,
		28.212049, 27.181259, 33.683517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.597046, 27.755453, 33.448856>,  <27.596905, 26.988846, 33.410439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.597046, 27.755453, 33.448856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984634, 27.680946, 33.513847>,  <28.217188, 27.636242, 33.552841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.984634, 27.680946, 33.513847>,  <27.597046, 27.755453, 33.448856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984634, 27.680946, 33.513847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244319, 0.821356, -0.515444,
		-0.037441, 0.539147, 0.841379,
		0.968972, -0.186266, 0.162476,
		28.275326, 27.625067, 33.562592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966829, 28.442154, 33.481716>,  <27.597046, 27.755453, 33.448856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966829, 28.442154, 33.481716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249678, 28.170826, 33.401852>,  <28.419386, 28.008030, 33.353931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.249678, 28.170826, 33.401852>,  <27.966829, 28.442154, 33.481716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.249678, 28.170826, 33.401852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411194, 0.624189, -0.664310,
		0.575240, 0.387648, 0.720298,
		0.707120, -0.678320, -0.199660,
		28.461813, 27.967331, 33.341953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.540985, 28.830034, 33.455349>,  <27.966829, 28.442154, 33.481716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.540985, 28.830034, 33.455349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632212, 28.485939, 33.272934>,  <28.686947, 28.279482, 33.163483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632212, 28.485939, 33.272934>,  <28.540985, 28.830034, 33.455349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632212, 28.485939, 33.272934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321957, 0.508667, -0.798500,
		0.918874, 0.035286, 0.392970,
		0.228067, -0.860240, -0.456040,
		28.700632, 28.227867, 33.136124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.281340, 28.855888, 33.133327>,  <28.540985, 28.830034, 33.455349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.281340, 28.855888, 33.133327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070520, 28.580349, 32.934246>,  <28.944029, 28.415026, 32.814796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.070520, 28.580349, 32.934246>,  <29.281340, 28.855888, 33.133327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070520, 28.580349, 32.934246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266526, 0.422114, -0.866477,
		0.806959, -0.589326, -0.038879,
		-0.527049, -0.688850, -0.497700,
		28.912405, 28.373693, 32.784935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.636404, 28.689369, 32.526054>,  <29.281340, 28.855888, 33.133327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.636404, 28.689369, 32.526054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281218, 28.544281, 32.412952>,  <29.068106, 28.457228, 32.345093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.281218, 28.544281, 32.412952>,  <29.636404, 28.689369, 32.526054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.281218, 28.544281, 32.412952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121946, 0.407107, -0.905203,
		0.443451, -0.838270, -0.317263,
		-0.887965, -0.362724, -0.282756,
		29.014828, 28.435465, 32.328125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.809233, 28.259560, 32.015606>,  <29.636404, 28.689369, 32.526054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.809233, 28.259560, 32.015606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424490, 28.363262, 31.980694>,  <29.193644, 28.425484, 31.959747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.424490, 28.363262, 31.980694>,  <29.809233, 28.259560, 32.015606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.424490, 28.363262, 31.980694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171457, 0.322750, -0.930825,
		-0.213154, -0.910285, -0.354891,
		-0.961857, 0.259258, -0.087279,
		29.135933, 28.441040, 31.954510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552134, 27.920708, 31.542139>,  <29.809233, 28.259560, 32.015606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552134, 27.920708, 31.542139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311426, 28.239853, 31.556477>,  <29.167002, 28.431341, 31.565079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.311426, 28.239853, 31.556477>,  <29.552134, 27.920708, 31.542139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311426, 28.239853, 31.556477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204701, 0.197459, -0.958701,
		-0.771991, -0.569581, -0.282149,
		-0.601770, 0.797865, 0.035843,
		29.130896, 28.479212, 31.567230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.167530, 27.857811, 30.875015>,  <29.552134, 27.920708, 31.542139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.167530, 27.857811, 30.875015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090303, 28.230892, 30.996861>,  <29.043966, 28.454741, 31.069967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090303, 28.230892, 30.996861>,  <29.167530, 27.857811, 30.875015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090303, 28.230892, 30.996861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019912, 0.314114, -0.949176,
		-0.980983, -0.177191, -0.079217,
		-0.193069, 0.932704, 0.304613,
		29.032383, 28.510704, 31.088243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.695551, 28.226330, 30.386017>,  <29.167530, 27.857811, 30.875015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.695551, 28.226330, 30.386017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841263, 28.544502, 30.579754>,  <28.928690, 28.735405, 30.695995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.841263, 28.544502, 30.579754>,  <28.695551, 28.226330, 30.386017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841263, 28.544502, 30.579754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001183, 0.520473, -0.853877,
		-0.931288, 0.310479, 0.190540,
		0.364282, 0.795431, 0.484343,
		28.950548, 28.783131, 30.725058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298878, 28.878014, 30.175932>,  <28.695551, 28.226330, 30.386017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298878, 28.878014, 30.175932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666201, 28.963261, 30.309372>,  <28.886595, 29.014408, 30.389437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.666201, 28.963261, 30.309372>,  <28.298878, 28.878014, 30.175932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.666201, 28.963261, 30.309372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246809, 0.350645, -0.903401,
		-0.309506, 0.911937, 0.269401,
		0.918309, 0.213117, 0.333601,
		28.941694, 29.027195, 30.409452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.412527, 29.633816, 29.975325>,  <28.298878, 28.878014, 30.175932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.412527, 29.633816, 29.975325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781044, 29.485195, 30.021221>,  <29.002155, 29.396023, 30.048759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.781044, 29.485195, 30.021221>,  <28.412527, 29.633816, 29.975325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781044, 29.485195, 30.021221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312144, 0.530632, -0.788033,
		0.231909, 0.761826, 0.604846,
		0.921295, -0.371552, 0.114741,
		29.057432, 29.373730, 30.055643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.882214, 30.085321, 29.741365>,  <28.412527, 29.633816, 29.975325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.882214, 30.085321, 29.741365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129677, 29.771317, 29.728634>,  <29.278154, 29.582912, 29.720995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.129677, 29.771317, 29.728634>,  <28.882214, 30.085321, 29.741365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.129677, 29.771317, 29.728634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347425, 0.309686, -0.885094,
		0.704668, 0.536514, 0.464324,
		0.618659, -0.785015, -0.031827,
		29.315275, 29.535812, 29.719086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424225, 30.461468, 29.629652>,  <28.882214, 30.085321, 29.741365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424225, 30.461468, 29.629652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486706, 30.081654, 29.520851>,  <29.524195, 29.853765, 29.455570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.486706, 30.081654, 29.520851>,  <29.424225, 30.461468, 29.629652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486706, 30.081654, 29.520851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369576, 0.311566, -0.875409,
		0.915977, 0.036218, 0.399593,
		0.156205, -0.949534, -0.272002,
		29.533567, 29.796793, 29.439251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.104887, 30.544788, 29.147997>,  <29.424225, 30.461468, 29.629652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.104887, 30.544788, 29.147997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943869, 30.181896, 29.099194>,  <29.847258, 29.964161, 29.069912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.943869, 30.181896, 29.099194>,  <30.104887, 30.544788, 29.147997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943869, 30.181896, 29.099194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349860, -0.029312, -0.936343,
		0.845903, -0.419610, 0.329204,
		-0.402548, -0.907231, -0.122010,
		29.823105, 29.909727, 29.062590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.692526, 30.087631, 28.969055>,  <30.104887, 30.544788, 29.147997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.692526, 30.087631, 28.969055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335011, 29.965210, 28.837921>,  <30.120501, 29.891758, 28.759241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.335011, 29.965210, 28.837921>,  <30.692526, 30.087631, 28.969055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.335011, 29.965210, 28.837921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313609, 0.096058, -0.944681,
		0.320614, -0.947156, 0.010126,
		-0.893788, -0.306054, -0.327834,
		30.066874, 29.873394, 28.739571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831095, 29.571198, 28.476868>,  <30.692526, 30.087631, 28.969055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831095, 29.571198, 28.476868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468681, 29.715546, 28.388439>,  <30.251232, 29.802155, 28.335382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.468681, 29.715546, 28.388439>,  <30.831095, 29.571198, 28.476868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.468681, 29.715546, 28.388439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253826, 0.045392, -0.966184,
		-0.338634, -0.931510, -0.132725,
		-0.906035, 0.360872, -0.221070,
		30.196871, 29.823807, 28.322119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.580311, 29.102144, 28.017334>,  <30.831095, 29.571198, 28.476868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.580311, 29.102144, 28.017334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373133, 29.442207, 27.979465>,  <30.248827, 29.646246, 27.956743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.373133, 29.442207, 27.979465>,  <30.580311, 29.102144, 28.017334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373133, 29.442207, 27.979465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415193, 0.153086, -0.896761,
		-0.747896, -0.503779, -0.432270,
		-0.517944, 0.850159, -0.094673,
		30.217749, 29.697256, 27.951063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669598, 29.274424, 27.321819>,  <30.580311, 29.102144, 28.017334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669598, 29.274424, 27.321819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514013, 29.615742, 27.460728>,  <30.420662, 29.820532, 27.544073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.514013, 29.615742, 27.460728>,  <30.669598, 29.274424, 27.321819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.514013, 29.615742, 27.460728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293908, 0.472192, -0.831055,
		-0.873113, -0.221184, -0.434456,
		-0.388963, 0.853295, 0.347269,
		30.397324, 29.871731, 27.564909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.460066, 29.656286, 26.649807>,  <30.669598, 29.274424, 27.321819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.460066, 29.656286, 26.649807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447121, 29.922832, 26.947777>,  <30.439354, 30.082760, 27.126558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.447121, 29.922832, 26.947777>,  <30.460066, 29.656286, 26.649807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447121, 29.922832, 26.947777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376481, 0.698545, -0.608521,
		-0.925859, 0.260755, -0.273481,
		-0.032364, 0.666365, 0.744923,
		30.437412, 30.122742, 27.171253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.012375, 30.234129, 26.429285>,  <30.460066, 29.656286, 26.649807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.012375, 30.234129, 26.429285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273445, 30.341736, 26.712593>,  <30.430088, 30.406300, 26.882578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.273445, 30.341736, 26.712593>,  <30.012375, 30.234129, 26.429285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273445, 30.341736, 26.712593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472307, 0.586487, -0.657996,
		-0.592402, 0.763979, 0.255727,
		0.652676, 0.269017, 0.708269,
		30.469248, 30.422441, 26.925074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.162083, 30.935488, 26.223675>,  <30.012375, 30.234129, 26.429285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.162083, 30.935488, 26.223675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465891, 30.810112, 26.451668>,  <30.648176, 30.734886, 26.588465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.465891, 30.810112, 26.451668>,  <30.162083, 30.935488, 26.223675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.465891, 30.810112, 26.451668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553345, 0.771973, -0.312836,
		-0.341958, 0.553004, 0.759770,
		0.759522, -0.313438, 0.569985,
		30.693748, 30.716080, 26.622663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534697, 31.504444, 26.299837>,  <30.162083, 30.935488, 26.223675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534697, 31.504444, 26.299837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798166, 31.226574, 26.415474>,  <30.956247, 31.059853, 26.484856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.798166, 31.226574, 26.415474>,  <30.534697, 31.504444, 26.299837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798166, 31.226574, 26.415474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744892, 0.656270, -0.120191,
		-0.106230, 0.294511, 0.949726,
		0.658674, -0.694675, 0.289094,
		30.995768, 31.018171, 26.502203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.017397, 31.856939, 26.650297>,  <30.534697, 31.504444, 26.299837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.017397, 31.856939, 26.650297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206219, 31.513157, 26.571808>,  <31.319511, 31.306889, 26.524714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.206219, 31.513157, 26.571808>,  <31.017397, 31.856939, 26.650297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206219, 31.513157, 26.571808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.854746, 0.500698, -0.136788,
		0.215812, -0.103149, 0.970972,
		0.472054, -0.859454, -0.196223,
		31.347836, 31.255322, 26.512941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666573, 31.811380, 26.990416>,  <31.017397, 31.856939, 26.650297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666573, 31.811380, 26.990416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695772, 31.564465, 26.677078>,  <31.713291, 31.416315, 26.489077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695772, 31.564465, 26.677078>,  <31.666573, 31.811380, 26.990416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695772, 31.564465, 26.677078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745655, 0.555384, -0.368167,
		0.662322, -0.557227, 0.500827,
		0.072999, -0.617289, -0.783342,
		31.717672, 31.379278, 26.442076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444138, 31.485826, 26.935371>,  <31.666573, 31.811380, 26.990416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444138, 31.485826, 26.935371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267052, 31.484283, 26.576710>,  <32.160801, 31.483356, 26.361513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.267052, 31.484283, 26.576710>,  <32.444138, 31.485826, 26.935371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.267052, 31.484283, 26.576710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787655, 0.476198, -0.390942,
		0.428494, -0.879330, -0.207778,
		-0.442710, -0.003859, -0.896656,
		32.134239, 31.483126, 26.307713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.020271, 31.261305, 26.583897>,  <32.444138, 31.485826, 26.935371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.020271, 31.261305, 26.583897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761486, 31.435257, 26.333355>,  <32.606216, 31.539629, 26.183029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.761486, 31.435257, 26.333355>,  <33.020271, 31.261305, 26.583897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.761486, 31.435257, 26.333355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733632, 0.578964, -0.355789,
		0.207910, -0.689695, -0.693610,
		-0.646961, 0.434882, -0.626354,
		32.567398, 31.565722, 26.145449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416935, 31.245403, 25.990786>,  <33.020271, 31.261305, 26.583897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416935, 31.245403, 25.990786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148800, 31.535709, 25.928932>,  <32.987919, 31.709892, 25.891821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.148800, 31.535709, 25.928932>,  <33.416935, 31.245403, 25.990786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.148800, 31.535709, 25.928932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729062, 0.605324, -0.319456,
		-0.138246, -0.326881, -0.934899,
		-0.670341, 0.725763, -0.154633,
		32.947697, 31.753439, 25.882542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434086, 31.471687, 25.221289>,  <33.416935, 31.245403, 25.990786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434086, 31.471687, 25.221289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265915, 31.757725, 25.444672>,  <33.165012, 31.929348, 25.578701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.265915, 31.757725, 25.444672>,  <33.434086, 31.471687, 25.221289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.265915, 31.757725, 25.444672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668046, 0.660466, -0.342780,
		-0.613964, 0.228961, -0.755397,
		-0.420431, 0.715095, 0.558459,
		33.139786, 31.972254, 25.612209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.258198, 31.949497, 24.723946>,  <33.434086, 31.471687, 25.221289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.258198, 31.949497, 24.723946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270966, 32.161533, 25.062881>,  <33.278625, 32.288754, 25.266243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.270966, 32.161533, 25.062881>,  <33.258198, 31.949497, 24.723946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.270966, 32.161533, 25.062881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688806, 0.602638, -0.402956,
		-0.724242, 0.596518, -0.345890,
		0.031924, 0.530088, 0.847341,
		33.280544, 32.320560, 25.317083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293976, 32.685558, 24.562750>,  <33.258198, 31.949497, 24.723946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293976, 32.685558, 24.562750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414654, 32.665524, 24.943584>,  <33.487061, 32.653503, 25.172085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.414654, 32.665524, 24.943584>,  <33.293976, 32.685558, 24.562750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.414654, 32.665524, 24.943584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677723, 0.713642, -0.177217,
		-0.670573, 0.698718, 0.249248,
		0.301699, -0.050084, 0.952087,
		33.505165, 32.650497, 25.229210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305592, 33.391674, 24.844435>,  <33.293976, 32.685558, 24.562750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305592, 33.391674, 24.844435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542511, 33.186489, 25.092968>,  <33.684662, 33.063377, 25.242088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542511, 33.186489, 25.092968>,  <33.305592, 33.391674, 24.844435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542511, 33.186489, 25.092968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720904, 0.681788, -0.124345,
		-0.359835, 0.521572, 0.773616,
		0.592297, -0.512960, 0.621334,
		33.720200, 33.032600, 25.279367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446861, 33.909962, 25.363588>,  <33.305592, 33.391674, 24.844435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446861, 33.909962, 25.363588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726555, 33.626549, 25.401653>,  <33.894371, 33.456501, 25.424492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726555, 33.626549, 25.401653>,  <33.446861, 33.909962, 25.363588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726555, 33.626549, 25.401653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696240, 0.644717, -0.315579,
		0.162245, 0.286919, 0.944116,
		0.699233, -0.708532, 0.095163,
		33.936325, 33.413990, 25.430202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.889324, 33.637985, 25.895136>,  <33.446861, 33.909962, 25.363588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.889324, 33.637985, 25.895136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641594, 33.878273, 25.692921>,  <32.492954, 34.022446, 25.571590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.641594, 33.878273, 25.692921>,  <32.889324, 33.637985, 25.895136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.641594, 33.878273, 25.692921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554463, 0.121239, 0.823330,
		0.555881, 0.790214, 0.257989,
		-0.619328, 0.600718, -0.505539,
		32.455795, 34.058487, 25.541260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.805588, 34.252949, 26.305319>,  <32.889324, 33.637985, 25.895136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.805588, 34.252949, 26.305319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485161, 34.219250, 26.068272>,  <32.292904, 34.199032, 25.926043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.485161, 34.219250, 26.068272>,  <32.805588, 34.252949, 26.305319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485161, 34.219250, 26.068272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598107, 0.151823, 0.786904,
		0.023681, 0.984811, -0.172007,
		-0.801066, -0.084244, -0.592618,
		32.244843, 34.193977, 25.890486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267712, 34.746414, 26.447697>,  <32.805588, 34.252949, 26.305319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267712, 34.746414, 26.447697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055023, 34.476276, 26.243271>,  <31.927410, 34.314194, 26.120615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055023, 34.476276, 26.243271>,  <32.267712, 34.746414, 26.447697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055023, 34.476276, 26.243271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754225, 0.103093, 0.648472,
		-0.385254, 0.730262, -0.564178,
		-0.531718, -0.675344, -0.511065,
		31.895508, 34.273674, 26.089951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.584675, 34.983208, 26.509371>,  <32.267712, 34.746414, 26.447697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.584675, 34.983208, 26.509371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523109, 34.605244, 26.393818>,  <31.486170, 34.378464, 26.324486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.523109, 34.605244, 26.393818>,  <31.584675, 34.983208, 26.509371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523109, 34.605244, 26.393818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701043, -0.101602, 0.705844,
		-0.696311, 0.311160, -0.646785,
		-0.153915, -0.944911, -0.288883,
		31.476934, 34.321770, 26.307154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.820457, 34.878700, 26.387863>,  <31.584675, 34.983208, 26.509371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.820457, 34.878700, 26.387863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004328, 34.531208, 26.461624>,  <31.114651, 34.322712, 26.505880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.004328, 34.531208, 26.461624>,  <30.820457, 34.878700, 26.387863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.004328, 34.531208, 26.461624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412450, -0.024942, 0.910639,
		-0.786501, -0.494656, -0.369773,
		0.459675, -0.868731, 0.184404,
		31.142231, 34.270588, 26.516945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352861, 34.607136, 26.796106>,  <30.820457, 34.878700, 26.387863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352861, 34.607136, 26.796106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645325, 34.338837, 26.845913>,  <30.820803, 34.177856, 26.875797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.645325, 34.338837, 26.845913>,  <30.352861, 34.607136, 26.796106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.645325, 34.338837, 26.845913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446979, -0.333116, 0.830207,
		-0.515381, -0.662669, -0.543371,
		0.731158, -0.670748, 0.124517,
		30.864672, 34.137611, 26.883268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.982399, 34.057526, 26.960442>,  <30.352861, 34.607136, 26.796106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.982399, 34.057526, 26.960442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355061, 33.976528, 27.081120>,  <30.578657, 33.927929, 27.153526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.355061, 33.976528, 27.081120>,  <29.982399, 34.057526, 26.960442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.355061, 33.976528, 27.081120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361933, -0.590354, 0.721448,
		0.032021, -0.781333, -0.623293,
		0.931654, -0.202489, 0.301694,
		30.634556, 33.915783, 27.171627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.967690, 33.393391, 26.989828>,  <29.982399, 34.057526, 26.960442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.967690, 33.393391, 26.989828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250828, 33.529137, 27.237629>,  <30.420712, 33.610584, 27.386311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.250828, 33.529137, 27.237629>,  <29.967690, 33.393391, 26.989828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.250828, 33.529137, 27.237629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404190, -0.524661, 0.749241,
		0.579296, -0.780744, -0.234210,
		0.707846, 0.339367, 0.619503,
		30.463182, 33.630947, 27.423479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.183859, 32.730019, 27.432863>,  <29.967690, 33.393391, 26.989828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.183859, 32.730019, 27.432863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309132, 33.050114, 27.637424>,  <30.384295, 33.242172, 27.760162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309132, 33.050114, 27.637424>,  <30.183859, 32.730019, 27.432863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309132, 33.050114, 27.637424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359437, -0.398557, 0.843775,
		0.879047, -0.448071, 0.162816,
		0.313180, 0.800240, 0.511404,
		30.403086, 33.290184, 27.790846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598883, 32.449860, 27.949898>,  <30.183859, 32.730019, 27.432863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598883, 32.449860, 27.949898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518755, 32.813545, 28.095886>,  <30.470678, 33.031757, 28.183479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.518755, 32.813545, 28.095886>,  <30.598883, 32.449860, 27.949898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.518755, 32.813545, 28.095886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275464, -0.409764, 0.869605,
		0.940209, 0.073661, 0.332538,
		-0.200318, 0.909213, 0.364973,
		30.458660, 33.086308, 28.205378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.912840, 32.468548, 28.551321>,  <30.598883, 32.449860, 27.949898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.912840, 32.468548, 28.551321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617315, 32.737331, 28.571846>,  <30.440001, 32.898602, 28.584162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.617315, 32.737331, 28.571846>,  <30.912840, 32.468548, 28.551321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.617315, 32.737331, 28.571846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371225, -0.469344, 0.801192,
		0.562449, 0.572882, 0.596203,
		-0.738813, 0.671955, 0.051314,
		30.395672, 32.938919, 28.587240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821453, 32.563236, 29.323027>,  <30.912840, 32.468548, 28.551321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821453, 32.563236, 29.323027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495974, 32.736549, 29.168026>,  <30.300686, 32.840538, 29.075026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.495974, 32.736549, 29.168026>,  <30.821453, 32.563236, 29.323027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.495974, 32.736549, 29.168026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557947, -0.395178, 0.729746,
		0.163054, 0.810001, 0.563305,
		-0.813701, 0.433282, -0.387502,
		30.251863, 32.866535, 29.051775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.531324, 32.725006, 29.884266>,  <30.821453, 32.563236, 29.323027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.531324, 32.725006, 29.884266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238491, 32.722061, 29.611797>,  <30.062790, 32.720295, 29.448317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.238491, 32.722061, 29.611797>,  <30.531324, 32.725006, 29.884266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.238491, 32.722061, 29.611797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608158, -0.443442, 0.658409,
		-0.306911, 0.896273, 0.320158,
		-0.732086, -0.007366, -0.681173,
		30.018866, 32.719852, 29.407446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025417, 33.138783, 30.151581>,  <30.531324, 32.725006, 29.884266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025417, 33.138783, 30.151581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871233, 32.874611, 29.893818>,  <29.778723, 32.716110, 29.739161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.871233, 32.874611, 29.893818>,  <30.025417, 33.138783, 30.151581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871233, 32.874611, 29.893818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.676158, -0.273049, 0.684292,
		-0.627878, 0.699487, -0.341303,
		-0.385461, -0.660426, -0.644405,
		29.755594, 32.676483, 29.700497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.329899, 33.150940, 30.295845>,  <30.025417, 33.138783, 30.151581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.329899, 33.150940, 30.295845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338964, 32.814354, 30.079914>,  <29.344404, 32.612400, 29.950356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.338964, 32.814354, 30.079914>,  <29.329899, 33.150940, 30.295845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338964, 32.814354, 30.079914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710160, -0.393609, 0.583734,
		-0.703676, 0.370137, -0.606497,
		0.022662, -0.841469, -0.539830,
		29.345762, 32.561913, 29.917965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.668022, 33.029358, 30.226587>,  <29.329899, 33.150940, 30.295845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.668022, 33.029358, 30.226587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846462, 32.682278, 30.138870>,  <28.953526, 32.474030, 30.086239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.846462, 32.682278, 30.138870>,  <28.668022, 33.029358, 30.226587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.846462, 32.682278, 30.138870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643438, -0.481251, 0.595303,
		-0.622081, -0.124461, -0.772997,
		0.446098, -0.867702, -0.219294,
		28.980291, 32.421967, 30.073082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129343, 32.563862, 30.118116>,  <28.668022, 33.029358, 30.226587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129343, 32.563862, 30.118116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450268, 32.332874, 30.178547>,  <28.642822, 32.194283, 30.214806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.450268, 32.332874, 30.178547>,  <28.129343, 32.563862, 30.118116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450268, 32.332874, 30.178547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537465, -0.588793, 0.603700,
		-0.259665, -0.565555, -0.782765,
		0.802313, -0.577468, 0.151077,
		28.690962, 32.159634, 30.223869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.867294, 31.916122, 30.030691>,  <28.129343, 32.563862, 30.118116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.867294, 31.916122, 30.030691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188721, 31.888443, 30.267162>,  <28.381577, 31.871836, 30.409044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.188721, 31.888443, 30.267162>,  <27.867294, 31.916122, 30.030691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188721, 31.888443, 30.267162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554749, -0.447035, 0.701722,
		0.215719, -0.891836, -0.397611,
		0.803567, -0.069200, 0.591179,
		28.429790, 31.867683, 30.444515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901184, 31.142065, 30.254606>,  <27.867294, 31.916122, 30.030691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901184, 31.142065, 30.254606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129374, 31.339664, 30.517063>,  <28.266287, 31.458223, 30.674538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.129374, 31.339664, 30.517063>,  <27.901184, 31.142065, 30.254606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.129374, 31.339664, 30.517063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345602, -0.580340, 0.737404,
		0.745062, -0.647436, -0.160344,
		0.570476, 0.493997, 0.656144,
		28.300516, 31.487864, 30.713907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100479, 30.586180, 30.703129>,  <27.901184, 31.142065, 30.254606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100479, 30.586180, 30.703129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160749, 30.918510, 30.917427>,  <28.196911, 31.117908, 31.046005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160749, 30.918510, 30.917427>,  <28.100479, 30.586180, 30.703129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160749, 30.918510, 30.917427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535112, -0.387130, 0.750857,
		0.831235, -0.399818, 0.386255,
		0.150676, 0.830828, 0.535743,
		28.205952, 31.167759, 31.078150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.164585, 30.272337, 31.358049>,  <28.100479, 30.586180, 30.703129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.164585, 30.272337, 31.358049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073423, 30.657291, 31.417202>,  <28.018726, 30.888264, 31.452694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.073423, 30.657291, 31.417202>,  <28.164585, 30.272337, 31.358049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073423, 30.657291, 31.417202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532331, -0.250326, 0.808678,
		0.815281, 0.105578, 0.569359,
		-0.227904, 0.962388, 0.147883,
		28.005053, 30.946009, 31.461567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.457170, 30.342243, 32.031330>,  <28.164585, 30.272337, 31.358049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.457170, 30.342243, 32.031330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170744, 30.612850, 31.962543>,  <27.998888, 30.775215, 31.921272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.170744, 30.612850, 31.962543>,  <28.457170, 30.342243, 32.031330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.170744, 30.612850, 31.962543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495271, -0.318803, 0.808129,
		0.491891, 0.663842, 0.563344,
		-0.716066, 0.676519, -0.171965,
		27.955925, 30.815805, 31.910954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.289454, 30.618658, 32.645527>,  <28.457170, 30.342243, 32.031330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.289454, 30.618658, 32.645527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960770, 30.701965, 32.433331>,  <27.763559, 30.751949, 32.306011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.960770, 30.701965, 32.433331>,  <28.289454, 30.618658, 32.645527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.960770, 30.701965, 32.433331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560511, -0.463678, 0.686171,
		-0.103068, 0.861178, 0.497745,
		-0.821708, 0.208269, -0.530490,
		27.714256, 30.764446, 32.274185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.847651, 30.799271, 33.154598>,  <28.289454, 30.618658, 32.645527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.847651, 30.799271, 33.154598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642551, 30.707272, 32.823734>,  <27.519491, 30.652073, 32.625217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642551, 30.707272, 32.823734>,  <27.847651, 30.799271, 33.154598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642551, 30.707272, 32.823734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702373, -0.441676, 0.558207,
		-0.493721, 0.867193, 0.064926,
		-0.512750, -0.229996, -0.827157,
		27.488726, 30.638273, 32.575588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.274246, 30.597786, 33.393162>,  <27.847651, 30.799271, 33.154598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.274246, 30.597786, 33.393162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208181, 30.449402, 33.027622>,  <27.168543, 30.360373, 32.808300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.208181, 30.449402, 33.027622>,  <27.274246, 30.597786, 33.393162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.208181, 30.449402, 33.027622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434844, -0.804260, 0.405064,
		-0.885230, 0.464281, -0.028477,
		-0.165161, -0.370958, -0.913845,
		27.158632, 30.338114, 32.753468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.559473, 30.465944, 33.240303>,  <27.274246, 30.597786, 33.393162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.559473, 30.465944, 33.240303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731709, 30.224659, 32.971760>,  <26.835051, 30.079887, 32.810635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.731709, 30.224659, 32.971760>,  <26.559473, 30.465944, 33.240303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.731709, 30.224659, 32.971760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685809, -0.702243, 0.191105,
		-0.586734, 0.378136, -0.716070,
		0.430591, -0.603215, -0.671359,
		26.860886, 30.043694, 32.770351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998079, 30.066195, 33.001194>,  <26.559473, 30.465944, 33.240303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998079, 30.066195, 33.001194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312077, 29.855743, 32.870365>,  <26.500475, 29.729473, 32.791866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.312077, 29.855743, 32.870365>,  <25.998079, 30.066195, 33.001194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.312077, 29.855743, 32.870365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447233, -0.846617, 0.288482,
		-0.428682, -0.080179, -0.899890,
		0.784993, -0.526128, -0.327071,
		26.547575, 29.697905, 32.772243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830805, 29.586432, 32.371048>,  <25.998079, 30.066195, 33.001194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830805, 29.586432, 32.371048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138271, 29.416687, 32.562492>,  <26.322752, 29.314840, 32.677361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.138271, 29.416687, 32.562492>,  <25.830805, 29.586432, 32.371048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.138271, 29.416687, 32.562492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550779, -0.819582, 0.157885,
		0.325261, -0.384970, -0.863715,
		0.768666, -0.424362, 0.478612,
		26.368872, 29.289379, 32.706078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.973127, 28.951839, 32.088722>,  <25.830805, 29.586432, 32.371048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.973127, 28.951839, 32.088722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125364, 28.903980, 32.455509>,  <26.216707, 28.875265, 32.675583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.125364, 28.903980, 32.455509>,  <25.973127, 28.951839, 32.088722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.125364, 28.903980, 32.455509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500976, -0.860154, 0.095697,
		0.777285, -0.495801, -0.387311,
		0.380594, -0.119649, 0.916969,
		26.239542, 28.868086, 32.730598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917030, 28.251661, 32.217079>,  <25.973127, 28.951839, 32.088722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917030, 28.251661, 32.217079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039757, 28.379219, 32.575783>,  <26.113394, 28.455753, 32.791004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.039757, 28.379219, 32.575783>,  <25.917030, 28.251661, 32.217079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.039757, 28.379219, 32.575783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367755, -0.829302, 0.420730,
		0.877849, -0.458874, -0.137170,
		0.306818, 0.318893, 0.896756,
		26.131802, 28.474888, 32.844810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336500, 27.755600, 32.573650>,  <25.917030, 28.251661, 32.217079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336500, 27.755600, 32.573650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204407, 27.973766, 32.881798>,  <26.125151, 28.104666, 33.066685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.204407, 27.973766, 32.881798>,  <26.336500, 27.755600, 32.573650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.204407, 27.973766, 32.881798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168322, -0.837102, 0.520507,
		0.928770, 0.042219, 0.368244,
		-0.330233, 0.545415, 0.770369,
		26.105337, 28.137390, 33.112907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754099, 27.599169, 33.188251>,  <26.336500, 27.755600, 32.573650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.754099, 27.599169, 33.188251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401993, 27.755291, 33.296173>,  <26.190729, 27.848965, 33.360928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.401993, 27.755291, 33.296173>,  <26.754099, 27.599169, 33.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.401993, 27.755291, 33.296173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164445, -0.784344, 0.598133,
		0.445075, 0.482147, 0.754614,
		-0.880265, 0.390306, 0.269805,
		26.137913, 27.872383, 33.377113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.723570, 27.554281, 33.862995>,  <26.754099, 27.599169, 33.188251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.723570, 27.554281, 33.862995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336245, 27.608799, 33.779285>,  <26.103849, 27.641510, 33.729061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.336245, 27.608799, 33.779285>,  <26.723570, 27.554281, 33.862995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.336245, 27.608799, 33.779285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245724, -0.669666, 0.700833,
		-0.044622, 0.730049, 0.681937,
		-0.968312, 0.136296, -0.209273,
		26.045752, 27.649687, 33.716503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568892, 27.612352, 34.533054>,  <26.723570, 27.554281, 33.862995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568892, 27.612352, 34.533054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236317, 27.538647, 34.323383>,  <26.036772, 27.494423, 34.197582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.236317, 27.538647, 34.323383>,  <26.568892, 27.612352, 34.533054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.236317, 27.538647, 34.323383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277745, -0.679246, 0.679325,
		-0.481219, 0.710403, 0.513572,
		-0.831436, -0.184262, -0.524177,
		25.986885, 27.483368, 34.166130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.048365, 27.653879, 35.019154>,  <26.568892, 27.612352, 34.533054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.048365, 27.653879, 35.019154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905088, 27.416782, 34.730610>,  <25.819122, 27.274525, 34.557484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.905088, 27.416782, 34.730610>,  <26.048365, 27.653879, 35.019154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905088, 27.416782, 34.730610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481524, -0.544658, 0.686646,
		-0.799897, 0.593301, -0.090327,
		-0.358190, -0.592740, -0.721359,
		25.797632, 27.238960, 34.514202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.326710, 27.687132, 35.152054>,  <26.048365, 27.653879, 35.019154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.326710, 27.687132, 35.152054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400473, 27.351948, 34.946602>,  <25.444731, 27.150837, 34.823330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.400473, 27.351948, 34.946602>,  <25.326710, 27.687132, 35.152054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.400473, 27.351948, 34.946602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552275, -0.520631, 0.651103,
		-0.813010, 0.163595, -0.558795,
		0.184409, -0.837962, -0.513628,
		25.455795, 27.100559, 34.792515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.693699, 27.248352, 35.121895>,  <25.326710, 27.687132, 35.152054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.693699, 27.248352, 35.121895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985598, 26.991085, 35.029110>,  <25.160738, 26.836725, 34.973438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.985598, 26.991085, 35.029110>,  <24.693699, 27.248352, 35.121895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.985598, 26.991085, 35.029110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423018, -0.691255, 0.585851,
		-0.537143, -0.329400, -0.776513,
		0.729748, -0.643165, -0.231961,
		25.204521, 26.798136, 34.959522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.365665, 26.585167, 34.951775>,  <24.693699, 27.248352, 35.121895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.365665, 26.585167, 34.951775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742908, 26.489109, 35.043755>,  <24.969254, 26.431475, 35.098942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.742908, 26.489109, 35.043755>,  <24.365665, 26.585167, 34.951775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.742908, 26.489109, 35.043755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324558, -0.815078, 0.479906,
		0.072180, -0.527235, -0.846648,
		0.943107, -0.240147, 0.229951,
		25.025841, 26.417065, 35.112740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.982571, 26.973576, 34.506523>,  <24.365665, 26.585167, 34.951775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.982571, 26.973576, 34.506523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668835, 26.835251, 34.300522>,  <23.480593, 26.752256, 34.176922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.668835, 26.835251, 34.300522>,  <23.982571, 26.973576, 34.506523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.668835, 26.835251, 34.300522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324289, 0.479152, -0.815628,
		0.528825, -0.806736, -0.263671,
		-0.784335, -0.345819, -0.515003,
		23.433533, 26.731506, 34.146023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.173967, 26.654440, 33.857872>,  <23.982571, 26.973576, 34.506523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.173967, 26.654440, 33.857872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802244, 26.793983, 33.809399>,  <23.579210, 26.877710, 33.780315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.802244, 26.793983, 33.809399>,  <24.173967, 26.654440, 33.857872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.802244, 26.793983, 33.809399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317159, 0.585780, -0.745836,
		-0.189205, -0.731545, -0.655014,
		-0.929307, 0.348860, -0.121184,
		23.523453, 26.898642, 33.773045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.099806, 26.785234, 33.196548>,  <24.173967, 26.654440, 33.857872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.099806, 26.785234, 33.196548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798962, 27.010174, 33.334007>,  <23.618454, 27.145138, 33.416481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.798962, 27.010174, 33.334007>,  <24.099806, 26.785234, 33.196548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.798962, 27.010174, 33.334007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290820, 0.751121, -0.592656,
		-0.591398, -0.345805, -0.728469,
		-0.752112, 0.562349, 0.343644,
		23.573328, 27.178879, 33.437099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.805531, 27.091738, 32.541866>,  <24.099806, 26.785234, 33.196548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.805531, 27.091738, 32.541866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.658543, 27.332962, 32.825073>,  <23.570351, 27.477695, 32.994995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.658543, 27.332962, 32.825073>,  <23.805531, 27.091738, 32.541866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.658543, 27.332962, 32.825073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164573, 0.791428, -0.588691,
		-0.915359, -0.099806, -0.390073,
		-0.367469, 0.603059, 0.708015,
		23.548302, 27.513880, 33.037479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.356552, 27.478687, 32.191826>,  <23.805531, 27.091738, 32.541866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.356552, 27.478687, 32.191826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.418928, 27.682808, 32.530121>,  <23.456354, 27.805281, 32.733097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.418928, 27.682808, 32.530121>,  <23.356552, 27.478687, 32.191826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.418928, 27.682808, 32.530121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125635, 0.839013, -0.529408,
		-0.979744, 0.188811, 0.066725,
		0.155941, 0.510301, 0.845740,
		23.465710, 27.835897, 32.783844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.961882, 28.127638, 32.233707>,  <23.356552, 27.478687, 32.191826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.961882, 28.127638, 32.233707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234278, 28.188950, 32.520134>,  <23.397717, 28.225737, 32.691990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.234278, 28.188950, 32.520134>,  <22.961882, 28.127638, 32.233707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.234278, 28.188950, 32.520134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293476, 0.838760, -0.458643,
		-0.670911, 0.522482, 0.526205,
		0.680992, 0.153280, 0.716069,
		23.438576, 28.234934, 32.734955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.751078, 28.747435, 32.527298>,  <22.961882, 28.127638, 32.233707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.751078, 28.747435, 32.527298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143793, 28.696167, 32.583385>,  <23.379423, 28.665405, 32.617039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.143793, 28.696167, 32.583385>,  <22.751078, 28.747435, 32.527298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.143793, 28.696167, 32.583385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188040, 0.760635, -0.621350,
		-0.027015, 0.636401, 0.770885,
		0.981790, -0.128171, 0.140217,
		23.438330, 28.657715, 32.625450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.023886, 29.426817, 32.537243>,  <22.751078, 28.747435, 32.527298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.023886, 29.426817, 32.537243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.336323, 29.188644, 32.462025>,  <23.523785, 29.045742, 32.416893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.336323, 29.188644, 32.462025>,  <23.023886, 29.426817, 32.537243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.336323, 29.188644, 32.462025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376894, 0.689680, -0.618299,
		0.497842, 0.412075, 0.763117,
		0.781092, -0.595429, -0.188043,
		23.570650, 29.010015, 32.405613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.491238, 29.903774, 32.249809>,  <23.023886, 29.426817, 32.537243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.491238, 29.903774, 32.249809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684927, 29.561855, 32.175137>,  <23.801140, 29.356705, 32.130333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.684927, 29.561855, 32.175137>,  <23.491238, 29.903774, 32.249809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.684927, 29.561855, 32.175137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563947, 0.468049, -0.680363,
		0.668949, 0.224167, 0.708700,
		0.484221, -0.854798, -0.186682,
		23.830193, 29.305416, 32.119133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.304634, 30.081526, 32.242859>,  <23.491238, 29.903774, 32.249809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.304634, 30.081526, 32.242859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212759, 29.769730, 32.009747>,  <24.157635, 29.582651, 31.869879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.212759, 29.769730, 32.009747>,  <24.304634, 30.081526, 32.242859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.212759, 29.769730, 32.009747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569681, 0.377821, -0.729873,
		0.789118, -0.499644, 0.357280,
		-0.229688, -0.779492, -0.582783,
		24.143852, 29.535883, 31.834911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926977, 29.669241, 32.103203>,  <24.304634, 30.081526, 32.242859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926977, 29.669241, 32.103203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668886, 29.594292, 31.806938>,  <24.514032, 29.549322, 31.629181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.668886, 29.594292, 31.806938>,  <24.926977, 29.669241, 32.103203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.668886, 29.594292, 31.806938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659566, 0.352631, -0.663795,
		0.385558, -0.916811, -0.103940,
		-0.645227, -0.187376, -0.740657,
		24.475317, 29.538080, 31.584742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.286665, 29.378416, 31.486818>,  <24.926977, 29.669241, 32.103203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.286665, 29.378416, 31.486818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944258, 29.528839, 31.344936>,  <24.738813, 29.619093, 31.259808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.944258, 29.528839, 31.344936>,  <25.286665, 29.378416, 31.486818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.944258, 29.528839, 31.344936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505930, 0.468539, -0.724227,
		-0.106158, -0.799407, -0.591337,
		-0.856017, 0.376058, -0.354705,
		24.687452, 29.641657, 31.238525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.343203, 29.170210, 30.850040>,  <25.286665, 29.378416, 31.486818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.343203, 29.170210, 30.850040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074802, 29.466732, 30.844093>,  <24.913763, 29.644646, 30.840525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074802, 29.466732, 30.844093>,  <25.343203, 29.170210, 30.850040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074802, 29.466732, 30.844093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487853, 0.426308, -0.761748,
		-0.558352, -0.518387, -0.647702,
		-0.671001, 0.741307, -0.014867,
		24.873503, 29.689125, 30.839634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.191839, 29.150164, 30.149567>,  <25.343203, 29.170210, 30.850040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.191839, 29.150164, 30.149567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074425, 29.500603, 30.302555>,  <25.003975, 29.710867, 30.394348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.074425, 29.500603, 30.302555>,  <25.191839, 29.150164, 30.149567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.074425, 29.500603, 30.302555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482536, 0.481179, -0.731865,
		-0.825224, -0.030273, -0.563994,
		-0.293538, 0.876100, 0.382472,
		24.986362, 29.763433, 30.417297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.989189, 29.539082, 29.555307>,  <25.191839, 29.150164, 30.149567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.989189, 29.539082, 29.555307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060442, 29.798656, 29.851185>,  <25.103193, 29.954401, 30.028711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.060442, 29.798656, 29.851185>,  <24.989189, 29.539082, 29.555307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.060442, 29.798656, 29.851185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443837, 0.617919, -0.648987,
		-0.878224, 0.443911, -0.177951,
		0.178133, 0.648937, 0.739696,
		25.113882, 29.993338, 30.073093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.627619, 30.138134, 29.361195>,  <24.989189, 29.539082, 29.555307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.627619, 30.138134, 29.361195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938892, 30.201305, 29.604336>,  <25.125656, 30.239208, 29.750221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.938892, 30.201305, 29.604336>,  <24.627619, 30.138134, 29.361195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.938892, 30.201305, 29.604336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479544, 0.475561, -0.737481,
		-0.405542, 0.865390, 0.294340,
		0.778185, 0.157931, 0.607853,
		25.172348, 30.248684, 29.786692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.839598, 30.737434, 29.045460>,  <24.627619, 30.138134, 29.361195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.839598, 30.737434, 29.045460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136936, 30.656548, 29.300503>,  <25.315340, 30.608015, 29.453527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.136936, 30.656548, 29.300503>,  <24.839598, 30.737434, 29.045460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.136936, 30.656548, 29.300503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645110, 0.468710, -0.603444,
		-0.176826, 0.859895, 0.478867,
		0.743348, -0.202217, 0.637607,
		25.359941, 30.595882, 29.491785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.153427, 31.312935, 29.066898>,  <24.839598, 30.737434, 29.045460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.153427, 31.312935, 29.066898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421494, 31.041466, 29.187088>,  <25.582333, 30.878584, 29.259201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.421494, 31.041466, 29.187088>,  <25.153427, 31.312935, 29.066898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.421494, 31.041466, 29.187088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721143, 0.499620, -0.479929,
		0.175591, 0.538317, 0.824247,
		0.670164, -0.678671, 0.300475,
		25.622543, 30.837864, 29.277231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655788, 31.686371, 29.255312>,  <25.153427, 31.312935, 29.066898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655788, 31.686371, 29.255312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795376, 31.322495, 29.165257>,  <25.879129, 31.104170, 29.111223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.795376, 31.322495, 29.165257>,  <25.655788, 31.686371, 29.255312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.795376, 31.322495, 29.165257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791553, 0.414730, -0.448823,
		0.501661, -0.021583, 0.864795,
		0.348970, -0.909689, -0.225137,
		25.900066, 31.049587, 29.097715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418770, 31.689821, 29.457308>,  <25.655788, 31.686371, 29.255312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418770, 31.689821, 29.457308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381065, 31.405918, 29.178062>,  <26.358442, 31.235577, 29.010515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.381065, 31.405918, 29.178062>,  <26.418770, 31.689821, 29.457308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381065, 31.405918, 29.178062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846131, 0.312377, -0.431837,
		0.524573, -0.631400, 0.571102,
		-0.094262, -0.709757, -0.698111,
		26.352787, 31.192991, 28.968630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.068354, 31.477673, 29.512156>,  <26.418770, 31.689821, 29.457308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.068354, 31.477673, 29.512156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918484, 31.349037, 29.164318>,  <26.828562, 31.271856, 28.955616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.918484, 31.349037, 29.164318>,  <27.068354, 31.477673, 29.512156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918484, 31.349037, 29.164318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822920, 0.316716, -0.471693,
		0.427107, -0.892340, 0.145977,
		-0.374677, -0.321590, -0.869596,
		26.806080, 31.252560, 28.903439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.565491, 31.037821, 29.148603>,  <27.068354, 31.477673, 29.512156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.565491, 31.037821, 29.148603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317001, 31.190487, 28.874840>,  <27.167908, 31.282087, 28.710583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317001, 31.190487, 28.874840>,  <27.565491, 31.037821, 29.148603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317001, 31.190487, 28.874840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779145, 0.394182, -0.487395,
		0.083760, -0.836033, -0.542247,
		-0.621223, 0.381665, -0.684408,
		27.130634, 31.304987, 28.669518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983664, 30.856462, 28.596079>,  <27.565491, 31.037821, 29.148603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983664, 30.856462, 28.596079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708073, 31.123417, 28.483009>,  <27.542719, 31.283590, 28.415167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.708073, 31.123417, 28.483009>,  <27.983664, 30.856462, 28.596079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708073, 31.123417, 28.483009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683771, 0.469184, -0.558858,
		-0.240348, -0.578326, -0.779597,
		-0.688977, 0.667386, -0.282676,
		27.501379, 31.323633, 28.398207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.180136, 31.134314, 27.915293>,  <27.983664, 30.856462, 28.596079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.180136, 31.134314, 27.915293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921146, 31.416084, 28.031609>,  <27.765753, 31.585148, 28.101398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.921146, 31.416084, 28.031609>,  <28.180136, 31.134314, 27.915293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.921146, 31.416084, 28.031609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510211, 0.684119, -0.521217,
		-0.566093, -0.189112, -0.802356,
		-0.647475, 0.704428, 0.290787,
		27.726904, 31.627413, 28.118845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.015635, 31.382591, 27.326361>,  <28.180136, 31.134314, 27.915293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.015635, 31.382591, 27.326361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945858, 31.677395, 27.587555>,  <27.903992, 31.854277, 27.744272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.945858, 31.677395, 27.587555>,  <28.015635, 31.382591, 27.326361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.945858, 31.677395, 27.587555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359128, 0.665093, -0.654736,
		-0.916841, 0.120294, -0.380699,
		-0.174439, 0.737008, 0.652985,
		27.893526, 31.898497, 27.783451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750019, 31.873672, 26.874214>,  <28.015635, 31.382591, 27.326361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750019, 31.873672, 26.874214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855305, 32.077736, 27.201740>,  <27.918476, 32.200172, 27.398256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855305, 32.077736, 27.201740>,  <27.750019, 31.873672, 26.874214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855305, 32.077736, 27.201740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178195, 0.808429, -0.560972,
		-0.948137, 0.293565, 0.121882,
		0.263214, 0.510159, 0.818813,
		27.934269, 32.230785, 27.447384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318638, 32.389511, 26.820923>,  <27.750019, 31.873672, 26.874214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318638, 32.389511, 26.820923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622641, 32.510479, 27.051029>,  <27.805042, 32.583057, 27.189093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.622641, 32.510479, 27.051029>,  <27.318638, 32.389511, 26.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.622641, 32.510479, 27.051029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279347, 0.647206, -0.709289,
		-0.586817, 0.699764, 0.407402,
		0.760007, 0.302416, 0.575268,
		27.850643, 32.601204, 27.223610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.292423, 33.154285, 26.961241>,  <27.318638, 32.389511, 26.820923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.292423, 33.154285, 26.961241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672848, 33.031364, 26.974205>,  <27.901102, 32.957611, 26.981983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.672848, 33.031364, 26.974205>,  <27.292423, 33.154285, 26.961241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.672848, 33.031364, 26.974205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273185, 0.787157, -0.552951,
		0.144409, 0.534744, 0.832583,
		0.951061, -0.307300, 0.032411,
		27.958166, 32.939175, 26.983929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642120, 33.784489, 26.853437>,  <27.292423, 33.154285, 26.961241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642120, 33.784489, 26.853437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951900, 33.533310, 26.822693>,  <28.137768, 33.382603, 26.804247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.951900, 33.533310, 26.822693>,  <27.642120, 33.784489, 26.853437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.951900, 33.533310, 26.822693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523157, 0.704001, -0.480302,
		0.355715, 0.331759, 0.873729,
		0.774450, -0.627948, -0.076862,
		28.184237, 33.344925, 26.799635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166790, 34.240421, 26.861893>,  <27.642120, 33.784489, 26.853437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166790, 34.240421, 26.861893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333246, 33.900124, 26.733475>,  <28.433119, 33.695946, 26.656424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.333246, 33.900124, 26.733475>,  <28.166790, 34.240421, 26.861893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.333246, 33.900124, 26.733475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486185, 0.506533, -0.712074,
		0.768410, 0.140234, 0.624405,
		0.416138, -0.850740, -0.321045,
		28.458088, 33.644901, 26.637161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832409, 34.446243, 26.572203>,  <28.166790, 34.240421, 26.861893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832409, 34.446243, 26.572203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721811, 34.100887, 26.403389>,  <28.655453, 33.893673, 26.302101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.721811, 34.100887, 26.403389>,  <28.832409, 34.446243, 26.572203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.721811, 34.100887, 26.403389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044277, 0.427243, -0.903052,
		0.959996, -0.268373, -0.079901,
		-0.276492, -0.863388, -0.422034,
		28.638865, 33.841869, 26.276779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.320032, 34.290802, 26.022055>,  <28.832409, 34.446243, 26.572203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.320032, 34.290802, 26.022055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992842, 34.077782, 25.935055>,  <28.796528, 33.949970, 25.882854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992842, 34.077782, 25.935055>,  <29.320032, 34.290802, 26.022055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992842, 34.077782, 25.935055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032312, 0.334965, -0.941676,
		0.574346, -0.777295, -0.256785,
		-0.817975, -0.532551, -0.217501,
		28.747450, 33.918018, 25.869804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.405882, 33.981575, 25.338493>,  <29.320032, 34.290802, 26.022055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.405882, 33.981575, 25.338493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008440, 33.949326, 25.370121>,  <28.769976, 33.929974, 25.389097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.008440, 33.949326, 25.370121>,  <29.405882, 33.981575, 25.338493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.008440, 33.949326, 25.370121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098394, 0.274471, -0.956548,
		0.055419, -0.958209, -0.280648,
		-0.993603, -0.080625, 0.079071,
		28.710360, 33.925137, 25.393843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168755, 33.537186, 24.677277>,  <29.405882, 33.981575, 25.338493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168755, 33.537186, 24.677277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861130, 33.742004, 24.830299>,  <28.676556, 33.864895, 24.922113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.861130, 33.742004, 24.830299>,  <29.168755, 33.537186, 24.677277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861130, 33.742004, 24.830299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368717, 0.133487, -0.919907,
		-0.522106, -0.848519, 0.086143,
		-0.769060, 0.512052, 0.382558,
		28.630411, 33.895618, 24.945066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.532528, 33.300678, 24.258766>,  <29.168755, 33.537186, 24.677277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.532528, 33.300678, 24.258766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468847, 33.659527, 24.423611>,  <28.430639, 33.874836, 24.522518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.468847, 33.659527, 24.423611>,  <28.532528, 33.300678, 24.258766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.468847, 33.659527, 24.423611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479907, 0.294473, -0.826423,
		-0.862754, -0.329343, 0.383652,
		-0.159202, 0.897117, 0.412111,
		28.421087, 33.928661, 24.547245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.958429, 33.520313, 23.811525>,  <28.532528, 33.300678, 24.258766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.958429, 33.520313, 23.811525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037064, 33.863888, 24.000664>,  <28.084244, 34.070030, 24.114147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.037064, 33.863888, 24.000664>,  <27.958429, 33.520313, 23.811525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.037064, 33.863888, 24.000664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202502, 0.507429, -0.837561,
		-0.959347, 0.068902, 0.273690,
		0.196587, 0.858934, 0.472848,
		28.096041, 34.121567, 24.142517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.346878, 33.976997, 23.722031>,  <27.958429, 33.520313, 23.811525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.346878, 33.976997, 23.722031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683918, 34.181633, 23.789326>,  <27.886143, 34.304413, 23.829702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683918, 34.181633, 23.789326>,  <27.346878, 33.976997, 23.722031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683918, 34.181633, 23.789326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227137, 0.620844, -0.750308,
		-0.488299, 0.593995, 0.639323,
		0.842599, 0.511588, 0.168239,
		27.936697, 34.335110, 23.839798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.129414, 34.679672, 23.626373>,  <27.346878, 33.976997, 23.722031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.129414, 34.679672, 23.626373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526604, 34.700611, 23.583923>,  <27.764917, 34.713173, 23.558453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.526604, 34.700611, 23.583923>,  <27.129414, 34.679672, 23.626373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.526604, 34.700611, 23.583923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114346, 0.655300, -0.746664,
		0.030460, 0.753553, 0.656681,
		0.992974, 0.052346, -0.106126,
		27.824495, 34.716316, 23.552086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279541, 35.349789, 23.485834>,  <27.129414, 34.679672, 23.626373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279541, 35.349789, 23.485834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618853, 35.171139, 23.372028>,  <27.822439, 35.063950, 23.303745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.618853, 35.171139, 23.372028>,  <27.279541, 35.349789, 23.485834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.618853, 35.171139, 23.372028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037110, 0.586096, -0.809391,
		0.528245, 0.676033, 0.513748,
		0.848281, -0.446622, -0.284515,
		27.873337, 35.037151, 23.286674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.689980, 35.901207, 23.145788>,  <27.279541, 35.349789, 23.485834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.689980, 35.901207, 23.145788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862213, 35.568062, 23.006683>,  <27.965553, 35.368176, 22.923222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.862213, 35.568062, 23.006683>,  <27.689980, 35.901207, 23.145788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.862213, 35.568062, 23.006683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189305, 0.460076, -0.867464,
		0.882475, 0.307683, 0.355767,
		0.430583, -0.832863, -0.347760,
		27.991388, 35.318203, 22.902355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428535, 35.949074, 22.783142>,  <27.689980, 35.901207, 23.145788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428535, 35.949074, 22.783142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219389, 35.662319, 22.598671>,  <28.093901, 35.490265, 22.487988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219389, 35.662319, 22.598671>,  <28.428535, 35.949074, 22.783142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219389, 35.662319, 22.598671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197881, 0.424164, -0.883701,
		0.829129, -0.553315, -0.079923,
		-0.522866, -0.716887, -0.461177,
		28.062529, 35.447254, 22.460318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.741930, 36.057602, 22.370716>,  <28.428535, 35.949074, 22.783142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.741930, 36.057602, 22.370716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428293, 36.066643, 22.122623>,  <27.240110, 36.072067, 21.973768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.428293, 36.066643, 22.122623>,  <27.741930, 36.057602, 22.370716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.428293, 36.066643, 22.122623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619394, -0.091893, 0.779683,
		-0.039371, 0.995512, 0.086054,
		-0.784092, 0.022604, -0.620233,
		27.193066, 36.073425, 21.936554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.102766, 36.540688, 22.602648>,  <27.741930, 36.057602, 22.370716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.102766, 36.540688, 22.602648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961334, 36.203991, 22.439457>,  <26.876474, 36.001972, 22.341543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.961334, 36.203991, 22.439457>,  <27.102766, 36.540688, 22.602648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.961334, 36.203991, 22.439457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571235, -0.151071, 0.806764,
		-0.740724, 0.518306, -0.427419,
		-0.353580, -0.841746, -0.407976,
		26.855261, 35.951466, 22.317064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.313322, 36.518959, 22.623032>,  <27.102766, 36.540688, 22.602648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.313322, 36.518959, 22.623032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489380, 36.159809, 22.618999>,  <26.595015, 35.944321, 22.616579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.489380, 36.159809, 22.618999>,  <26.313322, 36.518959, 22.623032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489380, 36.159809, 22.618999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467736, -0.238844, 0.850986,
		-0.766483, -0.369840, -0.525092,
		0.440144, -0.897871, -0.010083,
		26.621424, 35.890450, 22.615974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.847868, 36.608620, 22.128853>,  <26.313322, 36.518959, 22.623032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.847868, 36.608620, 22.128853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863100, 36.864162, 21.821499>,  <25.872238, 37.017487, 21.637087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.863100, 36.864162, 21.821499>,  <25.847868, 36.608620, 22.128853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863100, 36.864162, 21.821499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959196, 0.192220, 0.207351,
		0.280165, -0.744926, -0.605468,
		0.038078, 0.638855, -0.768384,
		25.874523, 37.055820, 21.590984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.064434, 36.791267, 21.909548>,  <25.847868, 36.608620, 22.128853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.064434, 36.791267, 21.909548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271931, 36.637970, 22.215237>,  <25.396429, 36.545994, 22.398651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.271931, 36.637970, 22.215237>,  <25.064434, 36.791267, 21.909548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.271931, 36.637970, 22.215237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576543, -0.816862, -0.018290,
		0.631274, -0.431120, -0.644693,
		0.518740, -0.383239, 0.764223,
		25.427553, 36.522999, 22.444504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497070, 36.145432, 21.692465>,  <25.064434, 36.791267, 21.909548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497070, 36.145432, 21.692465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346920, 36.195137, 22.059868>,  <25.256830, 36.224960, 22.280310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.346920, 36.195137, 22.059868>,  <25.497070, 36.145432, 21.692465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.346920, 36.195137, 22.059868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426823, -0.902822, -0.052290,
		0.822749, -0.411667, 0.391935,
		-0.375374, 0.124265, 0.918506,
		25.234308, 36.232418, 22.335419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.740068, 35.615417, 22.098162>,  <25.497070, 36.145432, 21.692465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.740068, 35.615417, 22.098162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393301, 35.733757, 22.258621>,  <25.185240, 35.804760, 22.354897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.393301, 35.733757, 22.258621>,  <25.740068, 35.615417, 22.098162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.393301, 35.733757, 22.258621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409932, -0.881020, -0.236136,
		0.283558, -0.369155, 0.885053,
		-0.866920, 0.295853, 0.401149,
		25.133224, 35.822514, 22.378965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.466581, 35.142757, 22.679438>,  <25.740068, 35.615417, 22.098162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.466581, 35.142757, 22.679438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169315, 35.331268, 22.489445>,  <24.990955, 35.444374, 22.375448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.169315, 35.331268, 22.489445>,  <25.466581, 35.142757, 22.679438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.169315, 35.331268, 22.489445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348519, -0.878612, -0.326459,
		-0.571177, -0.077072, 0.817201,
		-0.743163, 0.471276, -0.474982,
		24.946367, 35.472652, 22.346951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.947828, 34.710918, 22.802588>,  <25.466581, 35.142757, 22.679438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.947828, 34.710918, 22.802588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813456, 34.925411, 22.492851>,  <24.732832, 35.054108, 22.307009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.813456, 34.925411, 22.492851>,  <24.947828, 34.710918, 22.802588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813456, 34.925411, 22.492851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511626, -0.794143, -0.327986,
		-0.790816, 0.285994, 0.541125,
		-0.335929, 0.536231, -0.774344,
		24.712677, 35.086281, 22.260548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.290052, 34.516113, 22.689831>,  <24.947828, 34.710918, 22.802588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.290052, 34.516113, 22.689831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361799, 34.694424, 22.339035>,  <24.404848, 34.801411, 22.128557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.361799, 34.694424, 22.339035>,  <24.290052, 34.516113, 22.689831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.361799, 34.694424, 22.339035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415148, -0.773886, -0.478281,
		-0.891897, 0.449867, 0.046255,
		0.179366, 0.445780, -0.876988,
		24.415609, 34.828159, 22.075939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671942, 34.569820, 22.392076>,  <24.290052, 34.516113, 22.689831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671942, 34.569820, 22.392076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.945940, 34.597004, 22.101929>,  <24.110338, 34.613312, 21.927839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.945940, 34.597004, 22.101929>,  <23.671942, 34.569820, 22.392076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.945940, 34.597004, 22.101929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423447, -0.773061, -0.472302,
		-0.592852, 0.630681, -0.500768,
		0.684996, 0.067956, -0.725371,
		24.151440, 34.617390, 21.884317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.296583, 34.603691, 21.804087>,  <23.671942, 34.569820, 22.392076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.296583, 34.603691, 21.804087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667215, 34.468521, 21.738049>,  <23.889595, 34.387417, 21.698425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.667215, 34.468521, 21.738049>,  <23.296583, 34.603691, 21.804087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.667215, 34.468521, 21.738049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375441, -0.805081, -0.459226,
		0.022272, 0.487492, -0.872843,
		0.926579, -0.337928, -0.165094,
		23.945189, 34.367142, 21.688520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.241262, 34.142693, 21.331007>,  <23.296583, 34.603691, 21.804087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.241262, 34.142693, 21.331007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.614704, 34.032280, 21.422386>,  <23.838770, 33.966034, 21.477215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.614704, 34.032280, 21.422386>,  <23.241262, 34.142693, 21.331007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.614704, 34.032280, 21.422386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192527, -0.924187, -0.329867,
		0.302183, 0.263983, -0.915969,
		0.933605, -0.276029, 0.228449,
		23.894785, 33.949471, 21.490921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.517094, 33.906685, 20.745634>,  <23.241262, 34.142693, 21.331007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.517094, 33.906685, 20.745634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735249, 33.730835, 21.031090>,  <23.866140, 33.625324, 21.202364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.735249, 33.730835, 21.031090>,  <23.517094, 33.906685, 20.745634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.735249, 33.730835, 21.031090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267849, -0.898180, -0.348611,
		0.794236, -0.001021, -0.607608,
		0.545385, -0.439627, 0.713641,
		23.898865, 33.598946, 21.245182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.031078, 33.475616, 20.415745>,  <23.517094, 33.906685, 20.745634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.031078, 33.475616, 20.415745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016306, 33.348179, 20.794613>,  <24.007442, 33.271717, 21.021935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.016306, 33.348179, 20.794613>,  <24.031078, 33.475616, 20.415745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.016306, 33.348179, 20.794613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001490, -0.947835, -0.318758,
		0.999317, -0.010361, 0.035478,
		-0.036930, -0.318593, 0.947172,
		24.005226, 33.252602, 21.078764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.527946, 33.026611, 20.486296>,  <24.031078, 33.475616, 20.415745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.527946, 33.026611, 20.486296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287275, 32.924595, 20.789066>,  <24.142872, 32.863384, 20.970728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.287275, 32.924595, 20.789066>,  <24.527946, 33.026611, 20.486296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.287275, 32.924595, 20.789066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008124, -0.949558, -0.313486,
		0.798696, -0.182469, 0.573402,
		-0.601680, -0.255038, 0.756926,
		24.106771, 32.848083, 21.016144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773560, 32.415493, 20.729406>,  <24.527946, 33.026611, 20.486296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773560, 32.415493, 20.729406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403198, 32.397915, 20.879486>,  <24.180983, 32.387367, 20.969534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.403198, 32.397915, 20.879486>,  <24.773560, 32.415493, 20.729406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.403198, 32.397915, 20.879486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079614, -0.948203, -0.307525,
		0.369280, -0.314609, 0.874445,
		-0.925902, -0.043945, 0.375200,
		24.125427, 32.384731, 20.992046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708742, 31.665518, 20.978031>,  <24.773560, 32.415493, 20.729406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708742, 31.665518, 20.978031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334684, 31.803410, 20.945358>,  <24.110250, 31.886145, 20.925755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.334684, 31.803410, 20.945358>,  <24.708742, 31.665518, 20.978031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.334684, 31.803410, 20.945358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273209, -0.848516, -0.453186,
		-0.225535, -0.401477, 0.887665,
		-0.935142, 0.344727, -0.081683,
		24.054142, 31.906828, 20.920853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.244755, 31.170227, 21.382654>,  <24.708742, 31.665518, 20.978031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.244755, 31.170227, 21.382654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026094, 31.381393, 21.122662>,  <23.894897, 31.508093, 20.966665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.026094, 31.381393, 21.122662>,  <24.244755, 31.170227, 21.382654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.026094, 31.381393, 21.122662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166343, -0.829221, -0.533593,
		-0.820664, -0.183577, 0.541120,
		-0.546663, 0.527912, -0.649975,
		23.862099, 31.539768, 20.927666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.586121, 30.804605, 21.346701>,  <24.244755, 31.170227, 21.382654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.586121, 30.804605, 21.346701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618233, 31.004070, 21.001472>,  <23.637501, 31.123749, 20.794336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.618233, 31.004070, 21.001472>,  <23.586121, 30.804605, 21.346701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.618233, 31.004070, 21.001472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436040, -0.761054, -0.480278,
		-0.896339, 0.414890, 0.156340,
		0.080280, 0.498663, -0.863071,
		23.642317, 31.153669, 20.742552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.117287, 30.484947, 20.960960>,  <23.586121, 30.804605, 21.346701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.117287, 30.484947, 20.960960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335360, 30.648392, 20.668163>,  <23.466204, 30.746458, 20.492485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.335360, 30.648392, 20.668163>,  <23.117287, 30.484947, 20.960960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.335360, 30.648392, 20.668163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238476, -0.761503, -0.602696,
		-0.803684, 0.503141, -0.317713,
		0.545180, 0.408610, -0.731994,
		23.498913, 30.770975, 20.448565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.715691, 30.402332, 20.309032>,  <23.117287, 30.484947, 20.960960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.715691, 30.402332, 20.309032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.078478, 30.490738, 20.165611>,  <23.296150, 30.543781, 20.079559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.078478, 30.490738, 20.165611>,  <22.715691, 30.402332, 20.309032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.078478, 30.490738, 20.165611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217403, -0.483463, -0.847938,
		-0.360752, 0.847005, -0.390438,
		0.906970, 0.221013, -0.358551,
		23.350569, 30.557041, 20.058046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.665846, 30.666956, 19.692835>,  <22.715691, 30.402332, 20.309032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.665846, 30.666956, 19.692835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035706, 30.514805, 19.685524>,  <23.257622, 30.423515, 19.681137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.035706, 30.514805, 19.685524>,  <22.665846, 30.666956, 19.692835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035706, 30.514805, 19.685524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218465, -0.490529, -0.843596,
		0.311919, 0.784025, -0.536667,
		0.924651, -0.380377, -0.018277,
		23.313101, 30.400692, 19.680040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.986965, 30.623495, 18.977474>,  <22.665846, 30.666956, 19.692835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.986965, 30.623495, 18.977474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231903, 30.359901, 19.152184>,  <23.378866, 30.201746, 19.257010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231903, 30.359901, 19.152184>,  <22.986965, 30.623495, 18.977474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231903, 30.359901, 19.152184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047584, -0.582185, -0.811663,
		0.789156, 0.476235, -0.387856,
		0.612346, -0.658985, 0.436774,
		23.415607, 30.162207, 19.283216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.325607, 30.297503, 18.418537>,  <22.986965, 30.623495, 18.977474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.325607, 30.297503, 18.418537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.360249, 30.034115, 18.717579>,  <23.381033, 29.876081, 18.897005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.360249, 30.034115, 18.717579>,  <23.325607, 30.297503, 18.418537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.360249, 30.034115, 18.717579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058397, -0.752491, -0.656009,
		0.994530, 0.013155, -0.103622,
		0.086604, -0.658471, 0.747606,
		23.386230, 29.836573, 18.941860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.931925, 29.885815, 18.152210>,  <23.325607, 30.297503, 18.418537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.931925, 29.885815, 18.152210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.776022, 29.666344, 18.448059>,  <23.682480, 29.534660, 18.625568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.776022, 29.666344, 18.448059>,  <23.931925, 29.885815, 18.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.776022, 29.666344, 18.448059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190627, -0.737675, -0.647685,
		0.900973, -0.393431, 0.182920,
		-0.389755, -0.548677, 0.739625,
		23.659096, 29.501741, 18.669947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.218321, 29.319660, 18.053476>,  <23.931925, 29.885815, 18.152210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.218321, 29.319660, 18.053476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895966, 29.245743, 18.278473>,  <23.702553, 29.201393, 18.413471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.895966, 29.245743, 18.278473>,  <24.218321, 29.319660, 18.053476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.895966, 29.245743, 18.278473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251542, -0.753177, -0.607825,
		0.535975, -0.631330, 0.560494,
		-0.805889, -0.184791, 0.562490,
		23.654200, 29.190306, 18.447220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.219488, 28.651373, 18.245174>,  <24.218321, 29.319660, 18.053476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.219488, 28.651373, 18.245174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868849, 28.819988, 18.152328>,  <23.658464, 28.921158, 18.096621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.868849, 28.819988, 18.152328>,  <24.219488, 28.651373, 18.245174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.868849, 28.819988, 18.152328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103379, -0.636044, -0.764697,
		-0.469984, -0.646338, 0.601134,
		-0.876600, 0.421540, -0.232113,
		23.605869, 28.946451, 18.082695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.637634, 28.142981, 18.226252>,  <24.219488, 28.651373, 18.245174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.637634, 28.142981, 18.226252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582565, 28.455269, 17.982441>,  <23.549524, 28.642641, 17.836155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.582565, 28.455269, 17.982441>,  <23.637634, 28.142981, 18.226252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.582565, 28.455269, 17.982441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312874, -0.618158, -0.721105,
		-0.939764, 0.091430, 0.329369,
		-0.137672, 0.780719, -0.609528,
		23.541264, 28.689484, 17.799583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.855253, 28.069500, 17.915773>,  <23.637634, 28.142981, 18.226252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.855253, 28.069500, 17.915773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.142637, 28.247444, 17.701889>,  <23.315067, 28.354212, 17.573559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.142637, 28.247444, 17.701889>,  <22.855253, 28.069500, 17.915773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.142637, 28.247444, 17.701889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109378, -0.686916, -0.718458,
		-0.686916, 0.574668, -0.444863,
		0.718458, 0.444863, -0.534710,
		23.358175, 28.380903, 17.541475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.394787, 28.502771, 17.526787>,  <22.855253, 28.069500, 17.915773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.394787, 28.502771, 17.526787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.449207, 28.898312, 17.551014>,  <22.481859, 29.135635, 17.565550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.449207, 28.898312, 17.551014>,  <22.394787, 28.502771, 17.526787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.449207, 28.898312, 17.551014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955034, -0.114652, -0.273431,
		-0.263437, 0.095047, -0.959983,
		0.136053, 0.988848, 0.060569,
		22.490023, 29.194965, 17.569185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209602, 28.208649, 18.233271>,  <22.394787, 28.502771, 17.526787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209602, 28.208649, 18.233271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.134901, 28.381496, 18.586178>,  <22.090080, 28.485205, 18.797922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.134901, 28.381496, 18.586178>,  <22.209602, 28.208649, 18.233271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.134901, 28.381496, 18.586178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024870, -0.899859, 0.435472,
		0.982092, 0.059384, 0.178799,
		-0.186754, 0.432120, 0.882267,
		22.078875, 28.511133, 18.850859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.691967, 28.632500, 18.559959>,  <22.209602, 28.208649, 18.233271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.691967, 28.632500, 18.559959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464712, 28.446289, 18.288517>,  <21.328360, 28.334562, 18.125650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.464712, 28.446289, 18.288517>,  <21.691967, 28.632500, 18.559959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.464712, 28.446289, 18.288517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464070, 0.862231, -0.202968,
		0.679603, 0.199608, -0.705901,
		-0.568136, -0.465525, -0.678607,
		21.294271, 28.306631, 18.084934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.758896, 28.966696, 17.886492>,  <21.691967, 28.632500, 18.559959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.758896, 28.966696, 17.886492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399643, 28.791348, 17.872696>,  <21.184092, 28.686138, 17.864418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.399643, 28.791348, 17.872696>,  <21.758896, 28.966696, 17.886492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.399643, 28.791348, 17.872696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432809, 0.895140, -0.106777,
		0.077682, -0.080972, -0.993685,
		-0.898132, -0.438370, -0.034491,
		21.130203, 28.659836, 17.862349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.345869, 29.027618, 17.126564>,  <21.758896, 28.966696, 17.886492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.345869, 29.027618, 17.126564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137569, 29.036579, 17.467930>,  <21.012590, 29.041956, 17.672750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.137569, 29.036579, 17.467930>,  <21.345869, 29.027618, 17.126564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.137569, 29.036579, 17.467930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233123, 0.957931, -0.167397,
		-0.821263, -0.286123, -0.493620,
		-0.520750, 0.022403, 0.853415,
		20.981344, 29.043301, 17.723955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.731855, 29.334093, 16.923687>,  <21.345869, 29.027618, 17.126564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.731855, 29.334093, 16.923687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790493, 29.370781, 17.317661>,  <20.825676, 29.392794, 17.554047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790493, 29.370781, 17.317661>,  <20.731855, 29.334093, 16.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.790493, 29.370781, 17.317661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325836, 0.944602, -0.039465,
		-0.933992, -0.315142, 0.168359,
		0.146595, 0.091718, 0.984935,
		20.834471, 29.398296, 17.613142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.275623, 29.874582, 17.129204>,  <20.731855, 29.334093, 16.923687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.275623, 29.874582, 17.129204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557661, 29.834373, 17.409985>,  <20.726885, 29.810247, 17.578453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557661, 29.834373, 17.409985>,  <20.275623, 29.874582, 17.129204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557661, 29.834373, 17.409985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104570, 0.964339, 0.243135,
		-0.701360, -0.244837, 0.669440,
		0.705096, -0.100522, 0.701951,
		20.769190, 29.804216, 17.620569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.082439, 30.117697, 17.866190>,  <20.275623, 29.874582, 17.129204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.082439, 30.117697, 17.866190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.471298, 30.145161, 17.776558>,  <20.704615, 30.161638, 17.722778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.471298, 30.145161, 17.776558>,  <20.082439, 30.117697, 17.866190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.471298, 30.145161, 17.776558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030617, 0.910726, 0.411875,
		0.232354, -0.407265, 0.883260,
		0.972149, 0.068658, -0.224080,
		20.762943, 30.165758, 17.709333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.318279, 30.461826, 18.488436>,  <20.082439, 30.117697, 17.866190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.318279, 30.461826, 18.488436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557463, 30.541233, 18.177814>,  <20.700974, 30.588877, 17.991442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.557463, 30.541233, 18.177814>,  <20.318279, 30.461826, 18.488436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.557463, 30.541233, 18.177814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167511, 0.916497, 0.363281,
		0.783827, -0.347308, 0.514774,
		0.597959, 0.198519, -0.776553,
		20.736851, 30.600788, 17.944849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.004784, 30.500927, 18.686913>,  <20.318279, 30.461826, 18.488436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.004784, 30.500927, 18.686913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011829, 30.730087, 18.359138>,  <21.016058, 30.867582, 18.162474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011829, 30.730087, 18.359138>,  <21.004784, 30.500927, 18.686913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011829, 30.730087, 18.359138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443467, 0.730063, 0.519948,
		0.896118, -0.372552, -0.241201,
		0.017616, 0.572899, -0.819437,
		21.017115, 30.901957, 18.113308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.730194, 30.731913, 18.621588>,  <21.004784, 30.500927, 18.686913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.730194, 30.731913, 18.621588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502817, 31.000412, 18.431305>,  <21.366390, 31.161512, 18.317135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.502817, 31.000412, 18.431305>,  <21.730194, 30.731913, 18.621588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.502817, 31.000412, 18.431305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383688, 0.727774, 0.568444,
		0.727774, 0.140607, -0.671249,
		-0.568444, 0.671249, -0.475705,
		21.332283, 31.201786, 18.288593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.161077, 31.283609, 18.398996>,  <21.730194, 30.731913, 18.621588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.161077, 31.283609, 18.398996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787102, 31.418732, 18.442410>,  <21.562717, 31.499805, 18.468458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.787102, 31.418732, 18.442410>,  <22.161077, 31.283609, 18.398996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.787102, 31.418732, 18.442410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332561, 0.727681, 0.599903,
		0.123671, 0.596966, -0.792677,
		-0.934938, 0.337804, 0.108535,
		21.506620, 31.520073, 18.474970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.245575, 31.990620, 18.448198>,  <22.161077, 31.283609, 18.398996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.245575, 31.990620, 18.448198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.876301, 31.940098, 18.593403>,  <21.654736, 31.909784, 18.680525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.876301, 31.940098, 18.593403>,  <22.245575, 31.990620, 18.448198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.876301, 31.940098, 18.593403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118843, 0.804381, 0.582106,
		-0.365520, 0.580533, -0.727583,
		-0.923185, -0.126303, 0.363010,
		21.599344, 31.902206, 18.702307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.030148, 32.706936, 18.654797>,  <22.245575, 31.990620, 18.448198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.030148, 32.706936, 18.654797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769272, 32.470581, 18.844746>,  <21.612745, 32.328770, 18.958715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.769272, 32.470581, 18.844746>,  <22.030148, 32.706936, 18.654797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.769272, 32.470581, 18.844746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064867, 0.667639, 0.741654,
		-0.755275, 0.452896, -0.473756,
		-0.652190, -0.590883, 0.474873,
		21.573614, 32.293316, 18.987207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.596264, 33.181427, 18.897078>,  <22.030148, 32.706936, 18.654797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.596264, 33.181427, 18.897078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534582, 32.848259, 19.109665>,  <21.497574, 32.648357, 19.237217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.534582, 32.848259, 19.109665>,  <21.596264, 33.181427, 18.897078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.534582, 32.848259, 19.109665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312126, 0.551424, 0.773634,
		-0.937443, -0.046587, -0.345009,
		-0.154205, -0.832924, 0.531469,
		21.488321, 32.598381, 19.269106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.953480, 33.258537, 19.084349>,  <21.596264, 33.181427, 18.897078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.953480, 33.258537, 19.084349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.121723, 33.016918, 19.355114>,  <21.222670, 32.871944, 19.517574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.121723, 33.016918, 19.355114>,  <20.953480, 33.258537, 19.084349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.121723, 33.016918, 19.355114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318401, 0.600381, 0.733596,
		-0.849536, -0.524086, 0.060194,
		0.420606, -0.604050, 0.676915,
		21.247906, 32.835705, 19.558189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.525000, 33.157867, 19.667246>,  <20.953480, 33.258537, 19.084349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.525000, 33.157867, 19.667246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859602, 33.029667, 19.845028>,  <21.060364, 32.952747, 19.951696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.859602, 33.029667, 19.845028>,  <20.525000, 33.157867, 19.667246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859602, 33.029667, 19.845028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165058, 0.626054, 0.762110,
		-0.522510, -0.710869, 0.470796,
		0.836504, -0.320501, 0.444454,
		21.110554, 32.933517, 19.978365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.276295, 32.866539, 20.282665>,  <20.525000, 33.157867, 19.667246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.276295, 32.866539, 20.282665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664797, 32.956715, 20.313232>,  <20.897898, 33.010818, 20.331573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.664797, 32.956715, 20.313232>,  <20.276295, 32.866539, 20.282665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.664797, 32.956715, 20.313232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204453, 0.625654, 0.752832,
		0.121906, -0.746816, 0.653762,
		0.971256, 0.225438, 0.076418,
		20.956173, 33.024345, 20.336159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.565966, 32.762760, 20.998178>,  <20.276295, 32.866539, 20.282665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.565966, 32.762760, 20.998178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867323, 32.993202, 20.871376>,  <21.048138, 33.131470, 20.795294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.867323, 32.993202, 20.871376>,  <20.565966, 32.762760, 20.998178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.867323, 32.993202, 20.871376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003174, 0.485272, 0.874357,
		0.657562, -0.657729, 0.367430,
		0.753394, 0.576110, -0.317009,
		21.093342, 33.166035, 20.776274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.075733, 32.725143, 21.530361>,  <20.565966, 32.762760, 20.998178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.075733, 32.725143, 21.530361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134628, 33.055382, 21.312477>,  <21.169966, 33.253525, 21.181747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.134628, 33.055382, 21.312477>,  <21.075733, 32.725143, 21.530361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.134628, 33.055382, 21.312477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242128, 0.503869, 0.829150,
		0.959007, -0.253972, -0.125712,
		0.147239, 0.825599, -0.544708,
		21.178801, 33.303062, 21.149065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.642847, 33.022163, 21.814829>,  <21.075733, 32.725143, 21.530361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.642847, 33.022163, 21.814829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482151, 33.336655, 21.627022>,  <21.385733, 33.525349, 21.514338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.482151, 33.336655, 21.627022>,  <21.642847, 33.022163, 21.814829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.482151, 33.336655, 21.627022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404559, 0.612346, 0.679238,
		0.821545, 0.082929, -0.564080,
		-0.401741, 0.786229, -0.469520,
		21.361629, 33.572525, 21.486166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.238153, 33.510609, 21.748699>,  <21.642847, 33.022163, 21.814829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.238153, 33.510609, 21.748699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887644, 33.700352, 21.714909>,  <21.677338, 33.814198, 21.694633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.887644, 33.700352, 21.714909>,  <22.238153, 33.510609, 21.748699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.887644, 33.700352, 21.714909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322006, 0.706978, 0.629678,
		0.358413, 0.524567, -0.772250,
		-0.876272, 0.474354, -0.084476,
		21.624762, 33.842659, 21.689566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406832, 34.217911, 21.509207>,  <22.238153, 33.510609, 21.748699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406832, 34.217911, 21.509207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035231, 34.248173, 21.654110>,  <21.812269, 34.266331, 21.741053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.035231, 34.248173, 21.654110>,  <22.406832, 34.217911, 21.509207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.035231, 34.248173, 21.654110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252701, 0.844828, 0.471602,
		-0.270365, 0.529662, -0.803966,
		-0.929002, 0.075658, 0.362258,
		21.756531, 34.270870, 21.762787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.184067, 34.882092, 21.361055>,  <22.406832, 34.217911, 21.509207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.184067, 34.882092, 21.361055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927273, 34.777500, 21.649357>,  <21.773197, 34.714745, 21.822338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.927273, 34.777500, 21.649357>,  <22.184067, 34.882092, 21.361055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.927273, 34.777500, 21.649357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036538, 0.928548, 0.369410,
		-0.765847, 0.263490, -0.586559,
		-0.641984, -0.261480, 0.720753,
		21.734678, 34.699055, 21.865583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.660698, 35.262844, 21.357265>,  <22.184067, 34.882092, 21.361055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.660698, 35.262844, 21.357265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695816, 35.144520, 21.737747>,  <21.716887, 35.073524, 21.966036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.695816, 35.144520, 21.737747>,  <21.660698, 35.262844, 21.357265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.695816, 35.144520, 21.737747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182249, 0.943545, 0.276602,
		-0.979325, 0.149071, 0.136751,
		0.087797, -0.295806, 0.951205,
		21.722155, 35.055779, 22.023109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.426250, 35.785210, 21.760408>,  <21.660698, 35.262844, 21.357265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.426250, 35.785210, 21.760408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.631453, 35.581116, 22.036522>,  <21.754574, 35.458660, 22.202190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.631453, 35.581116, 22.036522>,  <21.426250, 35.785210, 21.760408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.631453, 35.581116, 22.036522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245744, 0.857803, 0.451425,
		-0.822457, -0.061951, 0.565444,
		0.513006, -0.510232, 0.690282,
		21.785355, 35.428047, 22.243607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.178001, 36.000126, 22.338020>,  <21.426250, 35.785210, 21.760408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.178001, 36.000126, 22.338020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530773, 35.844719, 22.444794>,  <21.742435, 35.751476, 22.508858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.530773, 35.844719, 22.444794>,  <21.178001, 36.000126, 22.338020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.530773, 35.844719, 22.444794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199915, 0.821114, 0.534608,
		-0.426888, -0.418122, 0.801836,
		0.881930, -0.388517, 0.266935,
		21.795353, 35.728165, 22.524874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.166636, 36.108162, 23.065750>,  <21.178001, 36.000126, 22.338020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.166636, 36.108162, 23.065750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539148, 36.028545, 22.943707>,  <21.762657, 35.980774, 22.870480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.539148, 36.028545, 22.943707>,  <21.166636, 36.108162, 23.065750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.539148, 36.028545, 22.943707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329300, 0.818144, 0.471384,
		0.155796, -0.539465, 0.827470,
		0.931284, -0.199046, -0.305109,
		21.818533, 35.968830, 22.852173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.540068, 35.952759, 23.348652>,  <21.166636, 36.108162, 23.065750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.540068, 35.952759, 23.348652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.161604, 35.840584, 23.413322>,  <19.934526, 35.773281, 23.452126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.161604, 35.840584, 23.413322>,  <20.540068, 35.952759, 23.348652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.161604, 35.840584, 23.413322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265075, 0.957902, 0.110265,
		-0.185793, 0.061471, -0.980664,
		-0.946159, -0.280436, 0.161677,
		19.877756, 35.756454, 23.461826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.995207, 36.298588, 22.878910>,  <20.540068, 35.952759, 23.348652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.995207, 36.298588, 22.878910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871037, 36.207024, 23.247959>,  <19.796535, 36.152084, 23.469389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.871037, 36.207024, 23.247959>,  <19.995207, 36.298588, 22.878910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.871037, 36.207024, 23.247959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236283, 0.958692, 0.158365,
		-0.920764, -0.168840, -0.351690,
		-0.310425, -0.228915, 0.922624,
		19.777908, 36.138348, 23.524746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.308687, 36.476822, 22.926559>,  <19.995207, 36.298588, 22.878910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.308687, 36.476822, 22.926559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483807, 36.506226, 23.284985>,  <19.588879, 36.523869, 23.500040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.483807, 36.506226, 23.284985>,  <19.308687, 36.476822, 22.926559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.483807, 36.506226, 23.284985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184782, 0.982732, 0.009661,
		-0.879879, -0.169805, 0.443823,
		0.437799, 0.073510, 0.896062,
		19.615147, 36.528278, 23.553802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.887281, 36.899120, 23.381060>,  <19.308687, 36.476822, 22.926559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.887281, 36.899120, 23.381060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.255957, 36.935337, 23.531948>,  <19.477161, 36.957066, 23.622480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.255957, 36.935337, 23.531948>,  <18.887281, 36.899120, 23.381060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.255957, 36.935337, 23.531948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120206, 0.991179, 0.055800,
		-0.368842, -0.096775, 0.924440,
		0.921686, 0.090542, 0.377221,
		19.532463, 36.962502, 23.645115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.438456, 37.506031, 23.249311>,  <18.887281, 36.899120, 23.381060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.438456, 37.506031, 23.249311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.078903, 37.331703, 23.231087>,  <17.863171, 37.227108, 23.220152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.078903, 37.331703, 23.231087>,  <18.438456, 37.506031, 23.249311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.078903, 37.331703, 23.231087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235370, -0.392510, -0.889121,
		0.369611, -0.809939, 0.455399,
		-0.898882, -0.435816, -0.045559,
		17.809238, 37.200958, 23.217419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<26.901045, 26.954422, 28.305492> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.185751, 26.673458, 28.307011>,  <27.356575, 26.504879, 28.307922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.185751, 26.673458, 28.307011>,  <26.901045, 26.954422, 28.305492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.185751, 26.673458, 28.307011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512225, 0.515332, -0.687066,
		0.480644, 0.490973, 0.726586,
		0.711763, -0.702409, 0.003798,
		27.399281, 26.462736, 28.308149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.512199, 27.293674, 28.402191>,  <26.901045, 26.954422, 28.305492>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.512199, 27.293674, 28.402191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.610382, 26.949200, 28.224155>,  <27.669292, 26.742514, 28.117334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.610382, 26.949200, 28.224155>,  <27.512199, 27.293674, 28.402191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610382, 26.949200, 28.224155> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589708, 0.497061, -0.636533,
		0.769411, -0.106230, 0.629858,
		0.245459, -0.861189, -0.445089,
		27.684019, 26.690844, 28.090630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.263845, 27.358517, 28.333769>,  <27.512199, 27.293674, 28.402191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.263845, 27.358517, 28.333769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.156681, 27.069279, 28.079098>,  <28.092382, 26.895737, 27.926294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.156681, 27.069279, 28.079098>,  <28.263845, 27.358517, 28.333769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156681, 27.069279, 28.079098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724365, 0.284535, -0.627962,
		0.635232, -0.629426, 0.447553,
		-0.267911, -0.723093, -0.636679,
		28.076307, 26.852350, 27.888094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961575, 27.143024, 28.078939>,  <28.263845, 27.358517, 28.333769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961575, 27.143024, 28.078939> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.701344, 27.023315, 27.799744>,  <28.545206, 26.951490, 27.632227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.701344, 27.023315, 27.799744>,  <28.961575, 27.143024, 28.078939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.701344, 27.023315, 27.799744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632078, 0.296103, -0.716100,
		0.420987, -0.907060, -0.003474,
		-0.650575, -0.299273, -0.697989,
		28.506170, 26.933533, 27.590347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.365940, 26.887915, 27.577345>,  <28.961575, 27.143024, 28.078939>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.365940, 26.887915, 27.577345> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025085, 26.925980, 27.371506>,  <28.820574, 26.948818, 27.248003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.025085, 26.925980, 27.371506>,  <29.365940, 26.887915, 27.577345>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025085, 26.925980, 27.371506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523322, 0.155303, -0.837864,
		0.000185, -0.983272, -0.182140,
		-0.852135, 0.095163, -0.514597,
		28.769445, 26.954529, 27.217127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507174, 26.611828, 26.917414>,  <29.365940, 26.887915, 27.577345>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507174, 26.611828, 26.917414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.216240, 26.884026, 26.881828>,  <29.041679, 27.047344, 26.860477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.216240, 26.884026, 26.881828>,  <29.507174, 26.611828, 26.917414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.216240, 26.884026, 26.881828> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464492, 0.392694, -0.793749,
		-0.505208, -0.618642, -0.601703,
		-0.727332, 0.680495, -0.088962,
		28.998039, 27.088175, 26.855139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.444054, 26.703676, 26.242661>,  <29.507174, 26.611828, 26.917414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.444054, 26.703676, 26.242661> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248657, 27.025703, 26.377266>,  <29.131418, 27.218920, 26.458029>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248657, 27.025703, 26.377266>,  <29.444054, 26.703676, 26.242661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248657, 27.025703, 26.377266> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329173, 0.527190, -0.783400,
		-0.808097, -0.271915, -0.522535,
		-0.488493, 0.805067, 0.336514,
		29.102110, 27.267223, 26.478220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.056337, 26.984264, 25.650129>,  <29.444054, 26.703676, 26.242661>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.056337, 26.984264, 25.650129> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.114920, 27.272480, 25.921238>,  <29.150068, 27.445410, 26.083904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.114920, 27.272480, 25.921238>,  <29.056337, 26.984264, 25.650129>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114920, 27.272480, 25.921238> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317169, 0.614785, -0.722110,
		-0.936992, 0.320725, -0.138494,
		0.146455, 0.720538, 0.677773,
		29.158855, 27.488642, 26.124569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.868460, 27.585520, 25.343597>,  <29.056337, 26.984264, 25.650129>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.868460, 27.585520, 25.343597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089283, 27.741409, 25.638447>,  <29.221777, 27.834942, 25.815355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.089283, 27.741409, 25.638447>,  <28.868460, 27.585520, 25.343597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.089283, 27.741409, 25.638447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371134, 0.676790, -0.635779,
		-0.746654, 0.624558, 0.228987,
		0.552057, 0.389722, 0.737122,
		29.254900, 27.858326, 25.859583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650072, 28.235697, 25.433298>,  <28.868460, 27.585520, 25.343597>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650072, 28.235697, 25.433298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.031475, 28.194759, 25.546680>,  <29.260317, 28.170197, 25.614710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.031475, 28.194759, 25.546680>,  <28.650072, 28.235697, 25.433298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.031475, 28.194759, 25.546680> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251948, 0.786795, -0.563450,
		-0.165357, 0.608671, 0.776001,
		0.953509, -0.102342, 0.283456,
		29.317528, 28.164057, 25.631718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.946665, 28.860464, 25.485432>,  <28.650072, 28.235697, 25.433298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.946665, 28.860464, 25.485432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.300236, 28.673416, 25.484657>,  <29.512379, 28.561188, 25.484192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.300236, 28.673416, 25.484657>,  <28.946665, 28.860464, 25.485432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.300236, 28.673416, 25.484657> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402660, 0.763230, -0.505316,
		0.237773, 0.445883, 0.862932,
		0.883928, -0.467619, -0.001936,
		29.565414, 28.533131, 25.484076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430346, 29.448383, 25.574741>,  <28.946665, 28.860464, 25.485432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430346, 29.448383, 25.574741> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.644087, 29.142345, 25.431019>,  <29.772331, 28.958723, 25.344786>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.644087, 29.142345, 25.431019>,  <29.430346, 29.448383, 25.574741>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.644087, 29.142345, 25.431019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491778, 0.627133, -0.604035,
		0.687476, 0.146068, 0.711366,
		0.534351, -0.765094, -0.359305,
		29.804392, 28.912817, 25.323227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109840, 29.574305, 25.719986>,  <29.430346, 29.448383, 25.574741>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109840, 29.574305, 25.719986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132334, 29.330524, 25.403656>,  <30.145830, 29.184256, 25.213858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.132334, 29.330524, 25.403656>,  <30.109840, 29.574305, 25.719986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.132334, 29.330524, 25.403656> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368079, 0.748943, -0.551000,
		0.928092, -0.260103, 0.266441,
		0.056232, -0.609451, -0.790827,
		30.149204, 29.147690, 25.166409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.695953, 29.775658, 25.365595>,  <30.109840, 29.574305, 25.719986>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.695953, 29.775658, 25.365595> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.513077, 29.551060, 25.089710>,  <30.403351, 29.416302, 24.924179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.513077, 29.551060, 25.089710>,  <30.695953, 29.775658, 25.365595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513077, 29.551060, 25.089710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347357, 0.601177, -0.719673,
		0.818729, -0.568605, -0.079815,
		-0.457193, -0.561493, -0.689710,
		30.375919, 29.382612, 24.882797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.205456, 29.601988, 24.920078>,  <30.695953, 29.775658, 25.365595>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.205456, 29.601988, 24.920078> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.858812, 29.568874, 24.723248>,  <30.650827, 29.549007, 24.605148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.858812, 29.568874, 24.723248>,  <31.205456, 29.601988, 24.920078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858812, 29.568874, 24.723248> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.300418, 0.700840, -0.646972,
		0.398425, -0.708498, -0.582484,
		-0.866607, -0.082781, -0.492078,
		30.598831, 29.544041, 24.575624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354191, 29.590048, 24.139616>,  <31.205456, 29.601988, 24.920078>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354191, 29.590048, 24.139616> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974337, 29.710907, 24.172829>,  <30.746424, 29.783422, 24.192757>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.974337, 29.710907, 24.172829>,  <31.354191, 29.590048, 24.139616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.974337, 29.710907, 24.172829> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154201, 0.681288, -0.715590,
		-0.272784, -0.666747, -0.693568,
		-0.949637, 0.302150, 0.083032,
		30.689445, 29.801552, 24.197739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164660, 29.715574, 23.482918>,  <31.354191, 29.590048, 24.139616>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164660, 29.715574, 23.482918> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.860182, 29.896526, 23.668793>,  <30.677494, 30.005098, 23.780317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.860182, 29.896526, 23.668793>,  <31.164660, 29.715574, 23.482918>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.860182, 29.896526, 23.668793> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083392, 0.642306, -0.761898,
		-0.643139, -0.618704, -0.451195,
		-0.761195, 0.452381, 0.464687,
		30.631823, 30.032240, 23.808199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.723906, 29.873405, 22.962072>,  <31.164660, 29.715574, 23.482918>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.723906, 29.873405, 22.962072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.624018, 30.108906, 23.269581>,  <30.564085, 30.250206, 23.454086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.624018, 30.108906, 23.269581>,  <30.723906, 29.873405, 22.962072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.624018, 30.108906, 23.269581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154523, 0.759522, -0.631862,
		-0.955909, -0.276582, -0.098693,
		-0.249721, 0.588752, 0.768772,
		30.549101, 30.285532, 23.500212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.132515, 30.270878, 22.743198>,  <30.723906, 29.873405, 22.962072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.132515, 30.270878, 22.743198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.297424, 30.467415, 23.050083>,  <30.396370, 30.585337, 23.234213>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.297424, 30.467415, 23.050083>,  <30.132515, 30.270878, 22.743198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297424, 30.467415, 23.050083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096220, 0.860881, -0.499625,
		-0.905964, 0.132162, 0.402196,
		0.412275, 0.491342, 0.767211,
		30.421106, 30.614817, 23.280247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.739519, 30.821922, 22.825224>,  <30.132515, 30.270878, 22.743198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.739519, 30.821922, 22.825224> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.071297, 30.935719, 23.017509>,  <30.270363, 31.003996, 23.132881>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.071297, 30.935719, 23.017509>,  <29.739519, 30.821922, 22.825224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.071297, 30.935719, 23.017509> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059845, 0.900893, -0.429895,
		-0.555373, 0.327806, 0.764267,
		0.829445, 0.284490, 0.480714,
		30.320129, 31.021065, 23.161724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.527905, 31.424042, 23.073441>,  <29.739519, 30.821922, 22.825224>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.527905, 31.424042, 23.073441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.925600, 31.441711, 23.112514>,  <30.164217, 31.452312, 23.135960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.925600, 31.441711, 23.112514>,  <29.527905, 31.424042, 23.073441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925600, 31.441711, 23.112514> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004111, 0.926203, -0.377002,
		-0.107130, 0.374427, 0.921047,
		0.994236, 0.044175, 0.097685,
		30.223871, 31.454964, 23.141819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.645210, 32.077328, 23.393810>,  <29.527905, 31.424042, 23.073441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.645210, 32.077328, 23.393810> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.973948, 31.968517, 23.193581>,  <30.171190, 31.903233, 23.073442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.973948, 31.968517, 23.193581>,  <29.645210, 32.077328, 23.393810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973948, 31.968517, 23.193581> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093554, 0.931157, -0.352411,
		0.561976, 0.242797, 0.790716,
		0.821846, -0.272022, -0.500574,
		30.220501, 31.886911, 23.043409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.468416, 32.388443, 22.728260>,  <29.645210, 32.077328, 23.393810>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.468416, 32.388443, 22.728260> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.166348, 32.493690, 22.488098>,  <28.985107, 32.556839, 22.344002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.166348, 32.493690, 22.488098>,  <29.468416, 32.388443, 22.728260>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.166348, 32.493690, 22.488098> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653427, -0.375429, 0.657332,
		-0.052451, 0.888718, 0.455443,
		-0.755170, 0.263122, -0.600405,
		28.939796, 32.572628, 22.307978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013062, 32.769745, 23.118118>,  <29.468416, 32.388443, 22.728260>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013062, 32.769745, 23.118118> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.798241, 32.646519, 22.804005>,  <28.669348, 32.572582, 22.615536>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.798241, 32.646519, 22.804005>,  <29.013062, 32.769745, 23.118118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.798241, 32.646519, 22.804005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704982, -0.347292, 0.618376,
		-0.463225, 0.885710, -0.030670,
		-0.537051, -0.308069, -0.785283,
		28.637125, 32.554096, 22.568420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380898, 32.928318, 23.181993>,  <29.013062, 32.769745, 23.118118>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380898, 32.928318, 23.181993> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.328751, 32.620651, 22.931751>,  <28.297462, 32.436050, 22.781607>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.328751, 32.620651, 22.931751>,  <28.380898, 32.928318, 23.181993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.328751, 32.620651, 22.931751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622328, -0.427721, 0.655563,
		-0.771824, 0.474795, -0.422915,
		-0.130368, -0.769171, -0.625604,
		28.289640, 32.389900, 22.744070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716963, 32.721638, 23.339191>,  <28.380898, 32.928318, 23.181993>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716963, 32.721638, 23.339191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.754309, 32.404602, 23.098164>,  <27.776716, 32.214382, 22.953547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.754309, 32.404602, 23.098164>,  <27.716963, 32.721638, 23.339191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.754309, 32.404602, 23.098164> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605484, -0.525636, 0.597576,
		-0.790362, 0.309055, -0.528973,
		0.093364, -0.792586, -0.602571,
		27.782318, 32.166828, 22.917393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.992447, 32.408844, 23.220230>,  <27.716963, 32.721638, 23.339191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.992447, 32.408844, 23.220230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.268127, 32.126156, 23.156296>,  <27.433535, 31.956543, 23.117935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.268127, 32.126156, 23.156296>,  <26.992447, 32.408844, 23.220230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268127, 32.126156, 23.156296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589331, -0.675088, 0.443785,
		-0.421537, -0.211659, -0.881764,
		0.689199, -0.706723, -0.159837,
		27.474888, 31.914139, 23.108345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.592508, 31.947798, 22.947014>,  <26.992447, 32.408844, 23.220230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.592508, 31.947798, 22.947014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.918964, 31.762951, 23.085789>,  <27.114838, 31.652042, 23.169054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.918964, 31.762951, 23.085789>,  <26.592508, 31.947798, 22.947014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.918964, 31.762951, 23.085789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575074, -0.708377, 0.409258,
		0.056636, -0.533525, -0.843886,
		0.816139, -0.462118, 0.346936,
		27.163807, 31.624315, 23.189869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.457413, 31.334890, 22.908312>,  <26.592508, 31.947798, 22.947014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.457413, 31.334890, 22.908312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.766672, 31.283115, 23.156662>,  <26.952229, 31.252050, 23.305672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.766672, 31.283115, 23.156662>,  <26.457413, 31.334890, 22.908312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.766672, 31.283115, 23.156662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574030, -0.559087, 0.598257,
		0.269687, -0.818943, -0.506558,
		0.773148, -0.129438, 0.620877,
		26.998617, 31.244284, 23.342924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.529821, 30.603260, 23.017977>,  <26.457413, 31.334890, 22.908312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.529821, 30.603260, 23.017977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.719168, 30.771194, 23.327728>,  <26.832775, 30.871956, 23.513578>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.719168, 30.771194, 23.327728>,  <26.529821, 30.603260, 23.017977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.719168, 30.771194, 23.327728> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485964, -0.608750, 0.627106,
		0.734685, -0.673171, -0.084137,
		0.473368, 0.419838, 0.774377,
		26.861177, 30.897146, 23.560041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.658482, 29.992329, 23.355499>,  <26.529821, 30.603260, 23.017977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.658482, 29.992329, 23.355499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.714062, 30.288376, 23.618687>,  <26.747410, 30.466003, 23.776598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.714062, 30.288376, 23.618687>,  <26.658482, 29.992329, 23.355499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.714062, 30.288376, 23.618687> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425162, -0.555479, 0.714619,
		0.894388, -0.379039, 0.237485,
		0.138950, 0.740117, 0.657967,
		26.755747, 30.510410, 23.816076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.948452, 29.763000, 23.930971>,  <26.658482, 29.992329, 23.355499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.948452, 29.763000, 23.930971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.793547, 30.101768, 24.076710>,  <26.700603, 30.305031, 24.164152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.793547, 30.101768, 24.076710>,  <26.948452, 29.763000, 23.930971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.793547, 30.101768, 24.076710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330171, -0.496370, 0.802872,
		0.860821, 0.190628, 0.471857,
		-0.387265, 0.846922, 0.364346,
		26.677366, 30.355844, 24.186014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.233107, 29.927475, 24.546268>,  <26.948452, 29.763000, 23.930971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.233107, 29.927475, 24.546268> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.885349, 30.122761, 24.576733>,  <26.676695, 30.239933, 24.595011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.885349, 30.122761, 24.576733>,  <27.233107, 29.927475, 24.546268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.885349, 30.122761, 24.576733> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159794, -0.423649, 0.891621,
		0.467570, 0.762998, 0.446331,
		-0.869393, 0.488216, 0.076163,
		26.624531, 30.269226, 24.599581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191856, 29.997423, 25.230871>,  <27.233107, 29.927475, 24.546268>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.191856, 29.997423, 25.230871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820482, 30.053310, 25.093185>,  <26.597658, 30.086842, 25.010574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.820482, 30.053310, 25.093185>,  <27.191856, 29.997423, 25.230871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820482, 30.053310, 25.093185> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371179, -0.386859, 0.844137,
		-0.015224, 0.911493, 0.411034,
		-0.928437, 0.139716, -0.344216,
		26.541952, 30.095224, 24.989920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.761883, 30.445026, 25.661469>,  <27.191856, 29.997423, 25.230871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.761883, 30.445026, 25.661469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.502295, 30.217239, 25.459660>,  <26.346542, 30.080568, 25.338573>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.502295, 30.217239, 25.459660>,  <26.761883, 30.445026, 25.661469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502295, 30.217239, 25.459660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469899, -0.221524, 0.854472,
		-0.598356, 0.791603, -0.123829,
		-0.648971, -0.569466, -0.504524,
		26.307604, 30.046400, 25.308302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.149202, 30.411926, 26.040298>,  <26.761883, 30.445026, 25.661469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.149202, 30.411926, 26.040298> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.064119, 30.105835, 25.797256>,  <26.013069, 29.922180, 25.651432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.064119, 30.105835, 25.797256>,  <26.149202, 30.411926, 26.040298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064119, 30.105835, 25.797256> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426688, -0.486669, 0.762293,
		-0.879030, 0.421401, -0.222996,
		-0.212706, -0.765228, -0.607604,
		26.000307, 29.876266, 25.614975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.390205, 30.212643, 26.193233>,  <26.149202, 30.411926, 26.040298>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.390205, 30.212643, 26.193233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.558804, 29.889557, 26.028339>,  <25.659962, 29.695705, 25.929403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.558804, 29.889557, 26.028339>,  <25.390205, 30.212643, 26.193233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.558804, 29.889557, 26.028339> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347964, -0.563846, 0.748998,
		-0.837415, -0.172256, -0.518714,
		0.421494, -0.807716, -0.412234,
		25.685251, 29.647242, 25.904669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.872803, 29.657171, 26.173229>,  <25.390205, 30.212643, 26.193233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.872803, 29.657171, 26.173229> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.236601, 29.490898, 26.171108>,  <25.454880, 29.391134, 26.169836>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.236601, 29.490898, 26.171108>,  <24.872803, 29.657171, 26.173229>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.236601, 29.490898, 26.171108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295986, -0.656451, 0.693876,
		-0.291911, -0.629508, -0.720075,
		0.909495, -0.415682, -0.005300,
		25.509449, 29.366194, 26.169518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.560362, 29.039936, 26.377419>,  <24.872803, 29.657171, 26.173229>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.560362, 29.039936, 26.377419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.957487, 29.053177, 26.423416>,  <25.195763, 29.061121, 26.451015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.957487, 29.053177, 26.423416>,  <24.560362, 29.039936, 26.377419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.957487, 29.053177, 26.423416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060035, -0.693518, 0.717933,
		0.103515, -0.719679, -0.686548,
		0.992814, 0.033100, 0.114996,
		25.255331, 29.063107, 26.457914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.834009, 28.363169, 26.140614>,  <24.560362, 29.039936, 26.377419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.834009, 28.363169, 26.140614> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.070787, 28.534897, 26.413460>,  <25.212854, 28.637934, 26.577168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.070787, 28.534897, 26.413460>,  <24.834009, 28.363169, 26.140614>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.070787, 28.534897, 26.413460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044026, -0.827835, 0.559241,
		0.804775, -0.361071, -0.471132,
		0.591945, 0.429321, 0.682118,
		25.248371, 28.663692, 26.618095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<26.158436, 27.705231, 26.524576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.105934, 28.007042, 26.781780>,  <26.074432, 28.188129, 26.936102>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.105934, 28.007042, 26.781780>,  <26.158436, 27.705231, 26.524576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105934, 28.007042, 26.781780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215100, -0.611491, 0.761453,
		0.967731, 0.238256, -0.082037,
		-0.131256, 0.754528, 0.643008,
		26.066557, 28.233400, 26.974682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.550343, 27.572805, 27.200647>,  <26.158436, 27.705231, 26.524576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.550343, 27.572805, 27.200647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.279453, 27.829937, 27.343834>,  <26.116919, 27.984217, 27.429745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.279453, 27.829937, 27.343834>,  <26.550343, 27.572805, 27.200647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279453, 27.829937, 27.343834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040739, -0.518528, 0.854090,
		0.734648, 0.563827, 0.377348,
		-0.677224, 0.642828, 0.357965,
		26.076286, 28.022785, 27.451223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.778296, 27.897532, 27.917709>,  <26.550343, 27.572805, 27.200647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.778296, 27.897532, 27.917709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381311, 27.898144, 27.868687>,  <26.143122, 27.898512, 27.839273>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.381311, 27.898144, 27.868687>,  <26.778296, 27.897532, 27.917709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381311, 27.898144, 27.868687> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107786, -0.486901, 0.866781,
		-0.058346, 0.873456, 0.483395,
		-0.992460, 0.001530, -0.122555,
		26.083572, 27.898603, 27.831921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.635239, 27.659849, 28.578360>,  <26.778296, 27.897532, 27.917709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.635239, 27.659849, 28.578360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.271469, 27.704201, 28.418034>,  <26.053207, 27.730812, 28.321838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.271469, 27.704201, 28.418034>,  <26.635239, 27.659849, 28.578360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.271469, 27.704201, 28.418034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415000, -0.304213, 0.857455,
		-0.026860, 0.946130, 0.322673,
		-0.909425, 0.110878, -0.400815,
		25.998642, 27.737465, 28.297789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217329, 27.993462, 29.084927>,  <26.635239, 27.659849, 28.578360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217329, 27.993462, 29.084927> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.970566, 27.809406, 28.829521>,  <25.822508, 27.698973, 28.676277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.970566, 27.809406, 28.829521>,  <26.217329, 27.993462, 29.084927>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.970566, 27.809406, 28.829521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473072, -0.431579, 0.768077,
		-0.628991, 0.775894, 0.048565,
		-0.616906, -0.460139, -0.638513,
		25.785494, 27.671364, 28.637968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.490751, 28.100834, 29.298882>,  <26.217329, 27.993462, 29.084927>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.490751, 28.100834, 29.298882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.514618, 27.756847, 29.096142>,  <25.528938, 27.550455, 28.974497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.514618, 27.756847, 29.096142>,  <25.490751, 28.100834, 29.298882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.514618, 27.756847, 29.096142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386474, -0.488058, 0.782584,
		-0.920368, 0.149189, -0.361476,
		0.059668, -0.859967, -0.506851,
		25.532518, 27.498857, 28.944086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.815228, 27.857948, 29.421427>,  <25.490751, 28.100834, 29.298882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.815228, 27.857948, 29.421427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.048044, 27.559280, 29.292610>,  <25.187735, 27.380079, 29.215321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.048044, 27.559280, 29.292610>,  <24.815228, 27.857948, 29.421427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.048044, 27.559280, 29.292610> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543331, -0.651758, 0.529153,
		-0.604994, -0.133017, -0.785041,
		0.582043, -0.746671, -0.322038,
		25.222656, 27.335279, 29.195997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.330961, 27.299231, 29.305950>,  <24.815228, 27.857948, 29.421427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.330961, 27.299231, 29.305950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.691635, 27.129704, 29.340237>,  <24.908039, 27.027988, 29.360809>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.691635, 27.129704, 29.340237>,  <24.330961, 27.299231, 29.305950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.691635, 27.129704, 29.340237> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377344, -0.674467, 0.634590,
		-0.211137, -0.604544, -0.768080,
		0.901683, -0.423816, 0.085716,
		24.962139, 27.002558, 29.365952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.215593, 26.643518, 29.154518>,  <24.330961, 27.299231, 29.305950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.215593, 26.643518, 29.154518> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.538115, 26.675785, 29.388908>,  <24.731628, 26.695145, 29.529543>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.538115, 26.675785, 29.388908>,  <24.215593, 26.643518, 29.154518>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.538115, 26.675785, 29.388908> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475044, -0.501943, 0.722763,
		0.352430, -0.861130, -0.366398,
		0.806304, 0.080668, 0.585975,
		24.780006, 26.699986, 29.564701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.121164, 26.064692, 29.539938>,  <24.215593, 26.643518, 29.154518>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.121164, 26.064692, 29.539938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.479408, 26.123867, 29.707748>,  <24.694355, 26.159372, 29.808434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.479408, 26.123867, 29.707748>,  <24.121164, 26.064692, 29.539938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.479408, 26.123867, 29.707748> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323081, -0.431955, 0.842041,
		0.305787, -0.889679, -0.339066,
		0.895608, 0.147939, 0.419525,
		24.748091, 26.168249, 29.833605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.366179, 25.427700, 29.772537>,  <24.121164, 26.064692, 29.539938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.366179, 25.427700, 29.772537> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.518131, 25.733051, 29.981514>,  <24.609303, 25.916262, 30.106901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.518131, 25.733051, 29.981514>,  <24.366179, 25.427700, 29.772537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.518131, 25.733051, 29.981514> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402205, -0.372295, 0.836438,
		0.833020, -0.527875, 0.165607,
		0.379880, 0.763377, 0.522443,
		24.632095, 25.962065, 30.138247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.773331, 25.152721, 30.234325>,  <24.366179, 25.427700, 29.772537>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.773331, 25.152721, 30.234325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.676102, 25.514874, 30.373585>,  <24.617764, 25.732164, 30.457140>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.676102, 25.514874, 30.373585>,  <24.773331, 25.152721, 30.234325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.676102, 25.514874, 30.373585> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327923, -0.414478, 0.848926,
		0.912898, 0.092186, 0.397643,
		-0.243074, 0.905378, 0.348146,
		24.603180, 25.786488, 30.478029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.124170, 25.263212, 30.864096>,  <24.773331, 25.152721, 30.234325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.124170, 25.263212, 30.864096> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.786215, 25.476391, 30.882557>,  <24.583441, 25.604298, 30.893635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.786215, 25.476391, 30.882557>,  <25.124170, 25.263212, 30.864096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.786215, 25.476391, 30.882557> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246228, -0.464039, 0.850905,
		0.474905, 0.707556, 0.523288,
		-0.844889, 0.532947, 0.046155,
		24.532747, 25.636274, 30.896402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.785820, 25.104696, 31.625837>,  <25.124170, 25.263212, 30.864096>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.785820, 25.104696, 31.625837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.510546, 25.344337, 31.462143>,  <24.345381, 25.488123, 31.363926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.510546, 25.344337, 31.462143>,  <24.785820, 25.104696, 31.625837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.510546, 25.344337, 31.462143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560498, -0.080842, 0.824200,
		0.460699, 0.796579, 0.391432,
		-0.688185, 0.599105, -0.409237,
		24.304090, 25.524069, 31.339373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.774574, 25.758989, 31.993301>,  <24.785820, 25.104696, 31.625837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.774574, 25.758989, 31.993301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.414501, 25.659882, 31.850033>,  <24.198458, 25.600416, 31.764072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.414501, 25.659882, 31.850033>,  <24.774574, 25.758989, 31.993301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.414501, 25.659882, 31.850033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392376, 0.104519, 0.913847,
		-0.188988, 0.963164, -0.191305,
		-0.900180, -0.247770, -0.358170,
		24.144447, 25.585550, 31.742582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.220917, 26.283379, 32.427494>,  <24.774574, 25.758989, 31.993301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.220917, 26.283379, 32.427494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.033932, 25.981564, 32.243252>,  <23.921741, 25.800474, 32.132706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.033932, 25.981564, 32.243252>,  <24.220917, 26.283379, 32.427494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.033932, 25.981564, 32.243252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518073, -0.188355, 0.834340,
		-0.716297, 0.628646, -0.302857,
		-0.467461, -0.754537, -0.460602,
		23.893694, 25.755203, 32.105072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.481764, 26.393021, 32.446941>,  <24.220917, 26.283379, 32.427494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.481764, 26.393021, 32.446941> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.549673, 25.999126, 32.431606>,  <23.590420, 25.762789, 32.422405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.549673, 25.999126, 32.431606>,  <23.481764, 26.393021, 32.446941>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.549673, 25.999126, 32.431606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706531, -0.148746, 0.691873,
		-0.687016, -0.090377, -0.721000,
		0.169775, -0.984737, -0.038337,
		23.600605, 25.703705, 32.420105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864319, 26.044168, 32.609158>,  <23.481764, 26.393021, 32.446941>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864319, 26.044168, 32.609158> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.129642, 25.747604, 32.649815>,  <23.288837, 25.569666, 32.674210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.129642, 25.747604, 32.649815>,  <22.864319, 26.044168, 32.609158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129642, 25.747604, 32.649815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547273, -0.387951, 0.741611,
		-0.510403, -0.547546, -0.663085,
		0.663311, -0.741409, 0.101646,
		23.328636, 25.525181, 32.680309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.589596, 25.766184, 33.098675>,  <22.864319, 26.044168, 32.609158>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.589596, 25.766184, 33.098675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.889442, 25.502445, 33.075554>,  <23.069349, 25.344202, 33.061680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.889442, 25.502445, 33.075554>,  <22.589596, 25.766184, 33.098675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.889442, 25.502445, 33.075554> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357820, -0.477174, 0.802664,
		-0.556816, -0.581005, -0.593623,
		0.749614, -0.659347, -0.057803,
		23.114326, 25.304642, 33.058212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.367105, 25.019304, 33.134464>,  <22.589596, 25.766184, 33.098675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.367105, 25.019304, 33.134464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.751549, 24.995136, 33.242256>,  <22.982214, 24.980637, 33.306931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.751549, 24.995136, 33.242256>,  <22.367105, 25.019304, 33.134464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.751549, 24.995136, 33.242256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244025, -0.642697, 0.726218,
		0.129320, -0.763734, -0.632445,
		0.961108, -0.060418, 0.269484,
		23.039881, 24.977011, 33.323101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.433477, 24.332985, 33.147865>,  <22.367105, 25.019304, 33.134464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.433477, 24.332985, 33.147865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.731638, 24.491734, 33.362106>,  <22.910534, 24.586983, 33.490650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.731638, 24.491734, 33.362106>,  <22.433477, 24.332985, 33.147865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.731638, 24.491734, 33.362106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216461, -0.615826, 0.757564,
		0.630493, -0.680626, -0.373131,
		0.745401, 0.396870, 0.535603,
		22.955259, 24.610794, 33.522789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.830681, 23.822556, 33.342873>,  <22.433477, 24.332985, 33.147865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.830681, 23.822556, 33.342873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.901808, 24.117985, 33.602993>,  <22.944485, 24.295242, 33.759064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.901808, 24.117985, 33.602993>,  <22.830681, 23.822556, 33.342873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.901808, 24.117985, 33.602993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255764, -0.603434, 0.755282,
		0.950245, -0.300627, 0.081599,
		0.177818, 0.738573, 0.650300,
		22.955153, 24.339558, 33.798084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.067167, 23.494593, 33.897644>,  <22.830681, 23.822556, 33.342873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.067167, 23.494593, 33.897644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.922672, 23.837917, 34.043415>,  <22.835976, 24.043913, 34.130878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<22.922672, 23.837917, 34.043415>,  <23.067167, 23.494593, 33.897644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922672, 23.837917, 34.043415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453580, -0.503205, 0.735561,
		0.814723, 0.100414, 0.571089,
		-0.361235, 0.858314, 0.364427,
		22.814302, 24.095411, 34.152744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.402020, 22.817495, 34.057266>,  <23.067167, 23.494593, 33.897644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.402020, 22.817495, 34.057266> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.608664, 22.539417, 34.257195>,  <23.732651, 22.372570, 34.377151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<23.608664, 22.539417, 34.257195>,  <23.402020, 22.817495, 34.057266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<23.608664, 22.539417, 34.257195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843805, 0.512417, -0.159439,
		-0.145274, 0.504117, 0.851329,
		0.516612, -0.695194, 0.499818,
		23.763647, 22.330858, 34.407139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.890850, 23.277449, 34.353897>,  <23.402020, 22.817495, 34.057266>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.890850, 23.277449, 34.353897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105774, 22.940243, 34.363850>,  <24.234728, 22.737919, 34.369823>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.105774, 22.940243, 34.363850>,  <23.890850, 23.277449, 34.353897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.105774, 22.940243, 34.363850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811065, 0.508406, -0.289304,
		0.231236, 0.175630, 0.956914,
		0.537311, -0.843017, 0.024886,
		24.266968, 22.687338, 34.371315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.440947, 23.366703, 34.883198>,  <23.890850, 23.277449, 34.353897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.440947, 23.366703, 34.883198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.564653, 23.104282, 34.607822>,  <24.638878, 22.946831, 34.442596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.564653, 23.104282, 34.607822>,  <24.440947, 23.366703, 34.883198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.564653, 23.104282, 34.607822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742866, 0.618636, -0.255811,
		0.593720, -0.432306, 0.678681,
		0.309268, -0.656049, -0.688442,
		24.657434, 22.907467, 34.401291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.178928, 23.248465, 34.904999>,  <24.440947, 23.366703, 34.883198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.178928, 23.248465, 34.904999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.139418, 23.112156, 34.531021>,  <25.115711, 23.030371, 34.306633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.139418, 23.112156, 34.531021>,  <25.178928, 23.248465, 34.904999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.139418, 23.112156, 34.531021> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790368, 0.543984, -0.281777,
		0.604616, -0.766783, 0.215601,
		-0.098778, -0.340771, -0.934943,
		25.109783, 23.009924, 34.250538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890545, 23.124481, 34.612392>,  <25.178928, 23.248465, 34.904999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890545, 23.124481, 34.612392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.659563, 23.120476, 34.285847>,  <25.520975, 23.118073, 34.089920>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.659563, 23.120476, 34.285847>,  <25.890545, 23.124481, 34.612392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.659563, 23.120476, 34.285847> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770027, 0.325603, -0.548672,
		0.271303, -0.945453, -0.180310,
		-0.577454, -0.010013, -0.816362,
		25.486326, 23.117472, 34.040939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.276731, 22.799940, 34.103790>,  <25.890545, 23.124481, 34.612392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.276731, 22.799940, 34.103790> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.011410, 23.031727, 33.914371>,  <25.852217, 23.170799, 33.800720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.011410, 23.031727, 33.914371>,  <26.276731, 22.799940, 34.103790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011410, 23.031727, 33.914371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677490, 0.196206, -0.708880,
		-0.317858, -0.791027, -0.522726,
		-0.663305, 0.579465, -0.473547,
		25.812418, 23.205566, 33.772308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.418791, 22.565359, 33.472752>,  <26.276731, 22.799940, 34.103790>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.418791, 22.565359, 33.472752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.243214, 22.924419, 33.456997>,  <26.137867, 23.139856, 33.447544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.243214, 22.924419, 33.456997>,  <26.418791, 22.565359, 33.472752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243214, 22.924419, 33.456997> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736163, 0.334156, -0.588561,
		-0.515162, -0.287339, -0.807493,
		-0.438945, 0.897650, -0.039384,
		26.111530, 23.193714, 33.445183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341795, 22.659279, 32.717285>,  <26.418791, 22.565359, 33.472752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341795, 22.659279, 32.717285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237707, 23.027786, 32.832909>,  <26.175255, 23.248890, 32.902283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.237707, 23.027786, 32.832909>,  <26.341795, 22.659279, 32.717285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.237707, 23.027786, 32.832909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371167, 0.371809, -0.850878,
		-0.891359, -0.114127, -0.438696,
		-0.260219, 0.921267, 0.289055,
		26.159641, 23.304167, 32.919624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.932026, 23.076550, 32.151348>,  <26.341795, 22.659279, 32.717285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.932026, 23.076550, 32.151348> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067152, 23.374447, 32.381561>,  <26.148228, 23.553186, 32.519688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067152, 23.374447, 32.381561>,  <25.932026, 23.076550, 32.151348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067152, 23.374447, 32.381561> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203544, 0.539201, -0.817210,
		-0.918939, 0.393213, 0.030563,
		0.337817, 0.744745, 0.575529,
		26.168497, 23.597870, 32.554218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.592306, 23.771599, 32.007618>,  <25.932026, 23.076550, 32.151348>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.592306, 23.771599, 32.007618> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.950029, 23.853874, 32.166565>,  <26.164663, 23.903240, 32.261932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.950029, 23.853874, 32.166565>,  <25.592306, 23.771599, 32.007618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.950029, 23.853874, 32.166565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187555, 0.633971, -0.750269,
		-0.406244, 0.745501, 0.528388,
		0.894309, 0.205691, 0.397369,
		26.218323, 23.915581, 32.285774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680376, 24.490559, 31.938036>,  <25.592306, 23.771599, 32.007618>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680376, 24.490559, 31.938036> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.053097, 24.350494, 31.976257>,  <26.276730, 24.266457, 31.999189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.053097, 24.350494, 31.976257>,  <25.680376, 24.490559, 31.938036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.053097, 24.350494, 31.976257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305120, 0.613100, -0.728704,
		0.196579, 0.708165, 0.678129,
		0.931804, -0.350158, 0.095552,
		26.332638, 24.245447, 32.004925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105192, 25.061102, 31.970844>,  <25.680376, 24.490559, 31.938036>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105192, 25.061102, 31.970844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.333595, 24.764812, 31.829266>,  <26.470636, 24.587038, 31.744318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.333595, 24.764812, 31.829266>,  <26.105192, 25.061102, 31.970844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.333595, 24.764812, 31.829266> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274684, 0.578681, -0.767904,
		0.773628, 0.341255, 0.533896,
		0.571007, -0.740725, -0.353947,
		26.504898, 24.542595, 31.723082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.738596, 25.367073, 31.808979>,  <26.105192, 25.061102, 31.970844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.738596, 25.367073, 31.808979> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.741125, 25.028812, 31.595501>,  <26.742641, 24.825855, 31.467415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.741125, 25.028812, 31.595501>,  <26.738596, 25.367073, 31.808979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.741125, 25.028812, 31.595501> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202332, 0.523748, -0.827496,
		0.979297, -0.102754, 0.174413,
		0.006320, -0.845653, -0.533695,
		26.743021, 24.775116, 31.435392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.307701, 25.498539, 31.333549>,  <26.738596, 25.367073, 31.808979>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.307701, 25.498539, 31.333549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.143879, 25.173439, 31.167801>,  <27.045586, 24.978380, 31.068352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.143879, 25.173439, 31.167801>,  <27.307701, 25.498539, 31.333549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.143879, 25.173439, 31.167801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213526, 0.356197, -0.909687,
		0.886945, -0.461046, 0.027661,
		-0.409555, -0.812748, -0.414372,
		27.021013, 24.929615, 31.043489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.813440, 25.189487, 30.887548>,  <27.307701, 25.498539, 31.333549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.813440, 25.189487, 30.887548> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.458941, 25.050205, 30.765358>,  <27.246241, 24.966635, 30.692043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.458941, 25.050205, 30.765358>,  <27.813440, 25.189487, 30.887548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.458941, 25.050205, 30.765358> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176250, 0.356384, -0.917566,
		0.428373, -0.867030, -0.254472,
		-0.886246, -0.348210, -0.305479,
		27.193066, 24.945744, 30.673714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970392, 24.894279, 30.319555>,  <27.813440, 25.189487, 30.887548>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970392, 24.894279, 30.319555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578632, 24.969025, 30.288929>,  <27.343576, 25.013872, 30.270554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.578632, 24.969025, 30.288929>,  <27.970392, 24.894279, 30.319555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.578632, 24.969025, 30.288929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148527, 0.409690, -0.900052,
		-0.136818, -0.892881, -0.429004,
		-0.979398, 0.186862, -0.076564,
		27.284813, 25.025084, 30.265961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779707, 24.699394, 29.669003>,  <27.970392, 24.894279, 30.319555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779707, 24.699394, 29.669003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478268, 24.941097, 29.772507>,  <27.297403, 25.086119, 29.834610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.478268, 24.941097, 29.772507>,  <27.779707, 24.699394, 29.669003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.478268, 24.941097, 29.772507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079249, 0.474300, -0.876789,
		-0.652539, -0.640242, -0.405320,
		-0.753600, 0.604260, 0.258761,
		27.252188, 25.122375, 29.850136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.388327, 24.684784, 29.079777>,  <27.779707, 24.699394, 29.669003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.388327, 24.684784, 29.079777> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282387, 25.002445, 29.298565>,  <27.218822, 25.193043, 29.429838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282387, 25.002445, 29.298565>,  <27.388327, 24.684784, 29.079777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282387, 25.002445, 29.298565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056170, 0.553555, -0.830916,
		-0.962653, -0.250789, -0.102000,
		-0.264848, 0.794155, 0.546968,
		27.202932, 25.240692, 29.462656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752903, 24.998304, 28.719810>,  <27.388327, 24.684784, 29.079777>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.752903, 24.998304, 28.719810> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.929520, 25.272099, 28.951851>,  <27.035490, 25.436375, 29.091076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.929520, 25.272099, 28.951851>,  <26.752903, 24.998304, 28.719810>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.929520, 25.272099, 28.951851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048084, 0.627560, -0.777082,
		-0.895951, 0.371009, 0.244182,
		0.441544, 0.684486, 0.580102,
		27.061983, 25.477444, 29.125881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534002, 25.559456, 28.381863>,  <26.752903, 24.998304, 28.719810>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534002, 25.559456, 28.381863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842249, 25.674583, 28.609303>,  <27.027197, 25.743660, 28.745768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.842249, 25.674583, 28.609303>,  <26.534002, 25.559456, 28.381863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842249, 25.674583, 28.609303> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288489, 0.638015, -0.713940,
		-0.568262, 0.714211, 0.408634,
		0.770618, 0.287819, 0.568602,
		27.073435, 25.760929, 28.779882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535784, 26.296661, 28.352251>,  <26.534002, 25.559456, 28.381863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.535784, 26.296661, 28.352251> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.905737, 26.196526, 28.466740>,  <27.127708, 26.136444, 28.535433>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.905737, 26.196526, 28.466740>,  <26.535784, 26.296661, 28.352251>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905737, 26.196526, 28.466740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380221, 0.618546, -0.687629,
		-0.004900, 0.744803, 0.667266,
		0.924882, -0.250340, 0.286221,
		27.183201, 26.121424, 28.552607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.605995, 28.703627, 18.977722> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965498, 28.826134, 18.852222>,  <23.181200, 28.899637, 18.776922>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.965498, 28.826134, 18.852222>,  <22.605995, 28.703627, 18.977722>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.965498, 28.826134, 18.852222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065689, 0.613457, 0.786991,
		0.433501, -0.727923, 0.531230,
		0.898756, 0.306266, -0.313751,
		23.235125, 28.918015, 18.758097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.032169, 28.856344, 19.587103>,  <22.605995, 28.703627, 18.977722>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.032169, 28.856344, 19.587103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220314, 29.057568, 19.297085>,  <23.333200, 29.178301, 19.123074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.220314, 29.057568, 19.297085>,  <23.032169, 28.856344, 19.587103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.220314, 29.057568, 19.297085> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266627, 0.702197, 0.660174,
		0.841231, -0.503838, 0.196157,
		0.470362, 0.503058, -0.725047,
		23.361423, 29.208485, 19.079571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.674364, 28.939474, 19.853996>,  <23.032169, 28.856344, 19.587103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.674364, 28.939474, 19.853996> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.598324, 29.221054, 19.580261>,  <23.552700, 29.390001, 19.416019>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.598324, 29.221054, 19.580261>,  <23.674364, 28.939474, 19.853996>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.598324, 29.221054, 19.580261> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378204, 0.695761, 0.610637,
		0.905993, -0.142736, -0.398502,
		-0.190102, 0.703948, -0.684338,
		23.541294, 29.432238, 19.374960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.237198, 29.311623, 19.801769>,  <23.674364, 28.939474, 19.853996>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.237198, 29.311623, 19.801769> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.982788, 29.584187, 19.656906>,  <23.830143, 29.747725, 19.569988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.982788, 29.584187, 19.656906>,  <24.237198, 29.311623, 19.801769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.982788, 29.584187, 19.656906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365793, 0.679464, 0.636022,
		0.679464, 0.272049, -0.681409,
		-0.636022, 0.681409, -0.362158,
		23.791981, 29.788609, 19.548258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.551023, 30.042578, 19.757576>,  <24.237198, 29.311623, 19.801769>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.551023, 30.042578, 19.757576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.170263, 30.153019, 19.704433>,  <23.941807, 30.219284, 19.672548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.170263, 30.153019, 19.704433>,  <24.551023, 30.042578, 19.757576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.170263, 30.153019, 19.704433> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137412, 0.772224, 0.620313,
		0.273865, 0.572221, -0.773021,
		-0.951901, 0.276104, -0.132854,
		23.884693, 30.235849, 19.664577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.507723, 30.731310, 19.464546>,  <24.551023, 30.042578, 19.757576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.507723, 30.731310, 19.464546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.160618, 30.688786, 19.658737>,  <23.952354, 30.663271, 19.775251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.160618, 30.688786, 19.658737>,  <24.507723, 30.731310, 19.464546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.160618, 30.688786, 19.658737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095968, 0.922622, 0.373576,
		-0.487628, 0.370765, -0.790412,
		-0.867761, -0.106312, 0.485478,
		23.900290, 30.656893, 19.804380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.070988, 31.345751, 19.459375>,  <24.507723, 30.731310, 19.464546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.070988, 31.345751, 19.459375> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.927832, 31.165623, 19.786575>,  <23.841938, 31.057547, 19.982895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.927832, 31.165623, 19.786575>,  <24.070988, 31.345751, 19.459375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.927832, 31.165623, 19.786575> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136986, 0.891870, 0.431049,
		-0.923660, 0.042214, -0.380881,
		-0.357892, -0.450318, 0.818002,
		23.820463, 31.030527, 20.031977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.685633, 31.880575, 19.681189>,  <24.070988, 31.345751, 19.459375>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.685633, 31.880575, 19.681189> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696529, 31.649643, 20.007610>,  <23.703068, 31.511084, 20.203465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.696529, 31.649643, 20.007610>,  <23.685633, 31.880575, 19.681189>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.696529, 31.649643, 20.007610> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136703, 0.806537, 0.575161,
		-0.990237, -0.127225, -0.056952,
		0.027241, -0.577332, 0.816055,
		23.704702, 31.476444, 20.252426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.158459, 32.142574, 20.020542>,  <23.685633, 31.880575, 19.681189>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.158459, 32.142574, 20.020542> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.412388, 31.963978, 20.272778>,  <23.564745, 31.856819, 20.424118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.412388, 31.963978, 20.272778>,  <23.158459, 32.142574, 20.020542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.412388, 31.963978, 20.272778> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039969, 0.796062, 0.603893,
		-0.771622, -0.408570, 0.487514,
		0.634825, -0.446491, 0.630589,
		23.602835, 31.830030, 20.461954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.882936, 32.348049, 20.667940>,  <23.158459, 32.142574, 20.020542>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.882936, 32.348049, 20.667940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250454, 32.217804, 20.757195>,  <23.470964, 32.139656, 20.810747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.250454, 32.217804, 20.757195>,  <22.882936, 32.348049, 20.667940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.250454, 32.217804, 20.757195> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071929, 0.693929, 0.716442,
		-0.388125, -0.642214, 0.660999,
		0.918795, -0.325614, 0.223138,
		23.526093, 32.120121, 20.824137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.951195, 32.280190, 21.460606>,  <22.882936, 32.348049, 20.667940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.951195, 32.280190, 21.460606> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.321291, 32.321568, 21.314606>,  <23.543348, 32.346394, 21.227005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.321291, 32.321568, 21.314606>,  <22.951195, 32.280190, 21.460606>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.321291, 32.321568, 21.314606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179696, 0.727836, 0.661789,
		0.334121, -0.677904, 0.654836,
		0.925242, 0.103446, -0.365001,
		23.598864, 32.352600, 21.205105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.362366, 32.477566, 22.044882>,  <22.951195, 32.280190, 21.460606>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.362366, 32.477566, 22.044882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589621, 32.593052, 21.736633>,  <23.725973, 32.662346, 21.551683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.589621, 32.593052, 21.736633>,  <23.362366, 32.477566, 22.044882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.589621, 32.593052, 21.736633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147326, 0.885621, 0.440420,
		0.809637, -0.363753, 0.460621,
		0.568140, 0.288719, -0.770622,
		23.760063, 32.679668, 21.505447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.008259, 32.728699, 22.302734>,  <23.362366, 32.477566, 22.044882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.008259, 32.728699, 22.302734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.993544, 32.898815, 21.941010>,  <23.984715, 33.000885, 21.723974>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.993544, 32.898815, 21.941010>,  <24.008259, 32.728699, 22.302734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.993544, 32.898815, 21.941010> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284451, 0.871946, 0.398495,
		0.957984, -0.242572, -0.153052,
		-0.036789, 0.425288, -0.904310,
		23.982508, 33.026402, 21.669716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524807, 33.248905, 22.345182>,  <24.008259, 32.728699, 22.302734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524807, 33.248905, 22.345182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.360056, 33.326248, 21.988987>,  <24.261206, 33.372654, 21.775270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.360056, 33.326248, 21.988987>,  <24.524807, 33.248905, 22.345182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.360056, 33.326248, 21.988987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342243, 0.938510, 0.045492,
		0.844528, -0.286026, -0.452728,
		-0.411877, 0.193362, -0.890487,
		24.236492, 33.384258, 21.721840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.071806, 33.447620, 21.819670>,  <24.524807, 33.248905, 22.345182>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.071806, 33.447620, 21.819670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.711491, 33.605484, 21.747208>,  <24.495300, 33.700203, 21.703730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.711491, 33.605484, 21.747208>,  <25.071806, 33.447620, 21.819670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.711491, 33.605484, 21.747208> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407317, 0.912522, -0.037358,
		0.150565, -0.107440, -0.982744,
		-0.900790, 0.394664, -0.181156,
		24.441254, 33.723885, 21.692862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.195982, 34.000378, 21.404953>,  <25.071806, 33.447620, 21.819670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.195982, 34.000378, 21.404953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.813807, 34.090492, 21.481247>,  <24.584501, 34.144562, 21.527023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.813807, 34.090492, 21.481247>,  <25.195982, 34.000378, 21.404953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.813807, 34.090492, 21.481247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229840, 0.973227, 0.001795,
		-0.185223, 0.045554, -0.981640,
		-0.955440, 0.225288, 0.190734,
		24.527174, 34.158077, 21.538467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.964399, 34.568275, 20.876207>,  <25.195982, 34.000378, 21.404953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.964399, 34.568275, 20.876207> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.724113, 34.594234, 21.194939>,  <24.579943, 34.609810, 21.386177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.724113, 34.594234, 21.194939>,  <24.964399, 34.568275, 20.876207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.724113, 34.594234, 21.194939> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231493, 0.968120, 0.095675,
		-0.765216, 0.241933, -0.596584,
		-0.600712, 0.064893, 0.796827,
		24.543900, 34.613701, 21.433987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.719503, 35.284248, 20.948214>,  <24.964399, 34.568275, 20.876207>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.719503, 35.284248, 20.948214> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.585554, 35.172039, 21.308029>,  <24.505184, 35.104713, 21.523918>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.585554, 35.172039, 21.308029>,  <24.719503, 35.284248, 20.948214>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.585554, 35.172039, 21.308029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410883, 0.815640, 0.407317,
		-0.847960, 0.506003, -0.157872,
		-0.334871, -0.280522, 0.899538,
		24.485092, 35.087883, 21.577890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.354187, 35.885509, 21.316473>,  <24.719503, 35.284248, 20.948214>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.354187, 35.885509, 21.316473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.461100, 35.642651, 21.615788>,  <24.525248, 35.496933, 21.795376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.461100, 35.642651, 21.615788>,  <24.354187, 35.885509, 21.316473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.461100, 35.642651, 21.615788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271513, 0.792525, 0.546062,
		-0.924577, 0.057218, 0.376675,
		0.267279, -0.607149, 0.748286,
		24.541283, 35.460506, 21.840273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.872845, 36.053429, 21.882261>,  <24.354187, 35.885509, 21.316473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.872845, 36.053429, 21.882261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202627, 35.873310, 22.019379>,  <24.400496, 35.765240, 22.101648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.202627, 35.873310, 22.019379>,  <23.872845, 36.053429, 21.882261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.202627, 35.873310, 22.019379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222285, 0.814703, 0.535583,
		-0.520447, -0.365366, 0.771779,
		0.824454, -0.450297, 0.342794,
		24.449963, 35.738220, 22.122217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.821167, 35.726086, 22.504236>,  <23.872845, 36.053429, 21.882261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.821167, 35.726086, 22.504236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.172035, 35.889683, 22.403603>,  <24.382557, 35.987843, 22.343222>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.172035, 35.889683, 22.403603>,  <23.821167, 35.726086, 22.504236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.172035, 35.889683, 22.403603> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126296, 0.702001, 0.700888,
		0.463272, -0.583024, 0.667429,
		0.877171, 0.408996, -0.251584,
		24.435186, 36.012383, 22.328127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.129656, 35.700607, 22.590786>,  <23.821167, 35.726086, 22.504236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.129656, 35.700607, 22.590786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.742092, 35.768436, 22.662853>,  <22.509554, 35.809135, 22.706095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.742092, 35.768436, 22.662853>,  <23.129656, 35.700607, 22.590786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.742092, 35.768436, 22.662853> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228086, -0.894366, -0.384821,
		0.095882, -0.413950, 0.905236,
		-0.968908, 0.169574, 0.180170,
		22.451420, 35.819309, 22.716904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.880756, 35.092216, 22.829908>,  <23.129656, 35.700607, 22.590786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.880756, 35.092216, 22.829908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.550062, 35.291931, 22.726196>,  <22.351646, 35.411758, 22.663969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.550062, 35.291931, 22.726196>,  <22.880756, 35.092216, 22.829908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.550062, 35.291931, 22.726196> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410437, -0.850470, -0.329002,
		-0.384776, -0.165578, 0.908037,
		-0.826734, 0.499284, -0.259281,
		22.302042, 35.441715, 22.648413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.406416, 34.629539, 23.068140>,  <22.880756, 35.092216, 22.829908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.406416, 34.629539, 23.068140> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.209236, 34.869469, 22.816040>,  <22.090929, 35.013428, 22.664780>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.209236, 34.869469, 22.816040>,  <22.406416, 34.629539, 23.068140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.209236, 34.869469, 22.816040> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433335, -0.797399, -0.419970,
		-0.754470, 0.066088, 0.652999,
		-0.492946, 0.599822, -0.630252,
		22.061352, 35.049416, 22.626965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.741051, 34.386837, 23.144114>,  <22.406416, 34.629539, 23.068140>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.741051, 34.386837, 23.144114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723051, 34.626469, 22.824345>,  <21.712252, 34.770248, 22.632483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.723051, 34.626469, 22.824345>,  <21.741051, 34.386837, 23.144114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.723051, 34.626469, 22.824345> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294999, -0.772515, -0.562313,
		-0.954437, 0.210526, 0.211491,
		-0.044998, 0.599083, -0.799422,
		21.709551, 34.806194, 22.584518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.094975, 34.225544, 22.869524>,  <21.741051, 34.386837, 23.144114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.094975, 34.225544, 22.869524> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319048, 34.373585, 22.573086>,  <21.453491, 34.462410, 22.395224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.319048, 34.373585, 22.573086>,  <21.094975, 34.225544, 22.869524>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.319048, 34.373585, 22.573086> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344388, -0.709612, -0.614693,
		-0.753386, 0.599566, -0.270056,
		0.560184, 0.370097, -0.741095,
		21.487103, 34.484615, 22.350758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.600475, 34.160236, 22.251270>,  <21.094975, 34.225544, 22.869524>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.600475, 34.160236, 22.251270> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.957520, 34.249729, 22.094711>,  <21.171745, 34.303425, 22.000776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.957520, 34.249729, 22.094711>,  <20.600475, 34.160236, 22.251270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.957520, 34.249729, 22.094711> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283840, -0.395607, -0.873458,
		-0.350264, 0.890751, -0.289617,
		0.892608, 0.223736, -0.391398,
		21.225302, 34.316849, 21.977291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.501762, 34.445286, 21.570295>,  <20.600475, 34.160236, 22.251270>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.501762, 34.445286, 21.570295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855139, 34.261208, 21.605526>,  <21.067163, 34.150761, 21.626663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.855139, 34.261208, 21.605526>,  <20.501762, 34.445286, 21.570295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.855139, 34.261208, 21.605526> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066243, -0.308764, -0.948829,
		0.463838, 0.832399, -0.303259,
		0.883440, -0.460192, 0.088075,
		21.120171, 34.123150, 21.631948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.983620, 34.655331, 20.966909>,  <20.501762, 34.445286, 21.570295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.983620, 34.655331, 20.966909> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.083620, 34.301792, 21.125057>,  <21.143620, 34.089668, 21.219946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.083620, 34.301792, 21.125057>,  <20.983620, 34.655331, 20.966909>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.083620, 34.301792, 21.125057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136790, -0.372000, -0.918099,
		0.958534, 0.283608, 0.027901,
		0.250001, -0.883846, 0.395369,
		21.158621, 34.036640, 21.243668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.374718, 34.434475, 20.433826>,  <20.983620, 34.655331, 20.966909>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.374718, 34.434475, 20.433826> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325333, 34.100128, 20.647774>,  <21.295702, 33.899521, 20.776142>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.325333, 34.100128, 20.647774>,  <21.374718, 34.434475, 20.433826>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.325333, 34.100128, 20.647774> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164186, -0.548770, -0.819691,
		0.978672, -0.013384, 0.204990,
		-0.123463, -0.835866, 0.534869,
		21.288294, 33.849369, 20.808235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.876350, 34.009491, 20.276014>,  <21.374718, 34.434475, 20.433826>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.876350, 34.009491, 20.276014> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623051, 33.740448, 20.429169>,  <21.471071, 33.579021, 20.521061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623051, 33.740448, 20.429169>,  <21.876350, 34.009491, 20.276014>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623051, 33.740448, 20.429169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359339, -0.693673, -0.624254,
		0.685473, -0.257722, 0.680960,
		-0.633248, -0.672605, 0.382884,
		21.433077, 33.538666, 20.544033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.309359, 33.324478, 20.340343>,  <21.876350, 34.009491, 20.276014>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.309359, 33.324478, 20.340343> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919998, 33.233040, 20.346466>,  <21.686382, 33.178177, 20.350140>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919998, 33.233040, 20.346466>,  <22.309359, 33.324478, 20.340343>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919998, 33.233040, 20.346466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193778, -0.857097, -0.477321,
		0.122231, -0.461659, 0.878596,
		-0.973401, -0.228596, 0.015305,
		21.627977, 33.164459, 20.351057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.296772, 32.503445, 20.304733>,  <22.309359, 33.324478, 20.340343>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.296772, 32.503445, 20.304733> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.929462, 32.644306, 20.232338>,  <21.709076, 32.728825, 20.188900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.929462, 32.644306, 20.232338>,  <22.296772, 32.503445, 20.304733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.929462, 32.644306, 20.232338> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152178, -0.735904, -0.659762,
		-0.365528, -0.578302, 0.729354,
		-0.918276, 0.352153, -0.180988,
		21.653980, 32.749954, 20.178041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735508, 31.988115, 20.452717>,  <22.296772, 32.503445, 20.304733>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735508, 31.988115, 20.452717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623152, 32.248569, 20.170689>,  <21.555738, 32.404842, 20.001472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.623152, 32.248569, 20.170689>,  <21.735508, 31.988115, 20.452717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623152, 32.248569, 20.170689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098406, -0.750313, -0.653717,
		-0.954682, -0.114238, 0.274831,
		-0.280888, 0.651138, -0.705068,
		21.538885, 32.443913, 19.959167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376631, 31.546543, 20.025482>,  <21.735508, 31.988115, 20.452717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376631, 31.546543, 20.025482> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393795, 31.861824, 19.779915>,  <21.404095, 32.050991, 19.632574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.393795, 31.861824, 19.779915>,  <21.376631, 31.546543, 20.025482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.393795, 31.861824, 19.779915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017959, -0.614996, -0.788326,
		-0.998917, 0.022803, -0.040546,
		0.042912, 0.788201, -0.613921,
		21.406668, 32.098286, 19.595739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.800482, 31.356070, 19.490362>,  <21.376631, 31.546543, 20.025482>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.800482, 31.356070, 19.490362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.035908, 31.655930, 19.369286>,  <21.177162, 31.835846, 19.296640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.035908, 31.655930, 19.369286>,  <20.800482, 31.356070, 19.490362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.035908, 31.655930, 19.369286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028877, -0.354674, -0.934544,
		-0.807936, 0.558778, -0.187100,
		0.588563, 0.749649, -0.302689,
		21.212477, 31.880825, 19.278479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.381662, 31.674006, 19.007565>,  <20.800482, 31.356070, 19.490362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.381662, 31.674006, 19.007565> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.766762, 31.742767, 18.924072>,  <20.997822, 31.784025, 18.873978>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.766762, 31.742767, 18.924072>,  <20.381662, 31.674006, 19.007565>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.766762, 31.742767, 18.924072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156314, -0.276058, -0.948345,
		-0.220647, 0.945643, -0.238903,
		0.962746, 0.171906, -0.208729,
		21.055586, 31.794338, 18.861454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345856, 31.902027, 18.334862>,  <20.381662, 31.674006, 19.007565>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345856, 31.902027, 18.334862> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.740469, 31.842106, 18.361134>,  <20.977236, 31.806152, 18.376896>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.740469, 31.842106, 18.361134>,  <20.345856, 31.902027, 18.334862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.740469, 31.842106, 18.361134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008929, -0.450247, -0.892860,
		0.163326, 0.880248, -0.445520,
		0.986532, -0.149805, 0.065677,
		21.036428, 31.797165, 18.380836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.753223, 32.188549, 17.719362>,  <20.345856, 31.902027, 18.334862>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.753223, 32.188549, 17.719362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925726, 31.878696, 17.904385>,  <21.029228, 31.692783, 18.015398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.925726, 31.878696, 17.904385>,  <20.753223, 32.188549, 17.719362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.925726, 31.878696, 17.904385> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029693, -0.500217, -0.865391,
		0.901741, 0.386940, -0.192720,
		0.431256, -0.774636, 0.462556,
		21.055103, 31.646305, 18.043152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991791, 31.774738, 17.183838>,  <20.753223, 32.188549, 17.719362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991791, 31.774738, 17.183838> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976278, 31.494762, 17.469097>,  <20.966970, 31.326777, 17.640253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.976278, 31.494762, 17.469097>,  <20.991791, 31.774738, 17.183838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.976278, 31.494762, 17.469097> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107489, -0.706623, -0.699378,
		0.993450, -0.103778, -0.047833,
		-0.038780, -0.699938, 0.713150,
		20.964643, 31.284781, 17.683043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.279781, 31.187860, 16.795671>,  <20.991791, 31.774738, 17.183838>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.279781, 31.187860, 16.795671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.108833, 31.038631, 17.125076>,  <21.006264, 30.949095, 17.322720>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.108833, 31.038631, 17.125076>,  <21.279781, 31.187860, 16.795671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.108833, 31.038631, 17.125076> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269941, -0.816679, -0.510066,
		0.862836, -0.440287, 0.248317,
		-0.427371, -0.373072, 0.823512,
		20.980621, 30.926710, 17.372129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.546238, 30.595261, 16.951736>,  <21.279781, 31.187860, 16.795671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.546238, 30.595261, 16.951736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.171558, 30.576672, 17.090549>,  <20.946751, 30.565519, 17.173838>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.171558, 30.576672, 17.090549>,  <21.546238, 30.595261, 16.951736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.171558, 30.576672, 17.090549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118328, -0.890820, -0.438678,
		0.329530, -0.451974, 0.828933,
		-0.936701, -0.046471, 0.347033,
		20.890549, 30.562731, 17.194660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<25.421268, 30.198664, 24.426218> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764904, 30.174175, 24.629478>,  <25.971085, 30.159483, 24.751434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.764904, 30.174175, 24.629478>,  <25.421268, 30.198664, 24.426218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.764904, 30.174175, 24.629478> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328246, 0.827663, -0.455223,
		-0.392711, 0.557876, 0.731131,
		0.859088, -0.061220, 0.508153,
		26.022631, 30.155809, 24.781925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.557108, 30.905672, 24.663473>,  <25.421268, 30.198664, 24.426218>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.557108, 30.905672, 24.663473> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899357, 30.700466, 24.635963>,  <26.104706, 30.577343, 24.619457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.899357, 30.700466, 24.635963>,  <25.557108, 30.905672, 24.663473>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.899357, 30.700466, 24.635963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387625, 0.723133, -0.571687,
		0.343015, 0.462490, 0.817585,
		0.855622, -0.513013, -0.068773,
		26.156044, 30.546562, 24.615332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083908, 31.410683, 24.576033>,  <25.557108, 30.905672, 24.663473>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083908, 31.410683, 24.576033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272026, 31.077332, 24.459892>,  <26.384897, 30.877321, 24.390209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.272026, 31.077332, 24.459892>,  <26.083908, 31.410683, 24.576033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272026, 31.077332, 24.459892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536782, 0.531277, -0.655446,
		0.700490, 0.152399, 0.697200,
		0.470296, -0.833378, -0.290349,
		26.413115, 30.827318, 24.372787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.753033, 31.594162, 24.559614>,  <26.083908, 31.410683, 24.576033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.753033, 31.594162, 24.559614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754929, 31.253662, 24.349720>,  <26.756067, 31.049362, 24.223783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.754929, 31.253662, 24.349720>,  <26.753033, 31.594162, 24.559614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.754929, 31.253662, 24.349720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608370, 0.418917, -0.674088,
		0.793639, -0.316039, 0.519862,
		0.004741, -0.851251, -0.524738,
		26.756351, 30.998287, 24.192299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442184, 31.311270, 24.642714>,  <26.753033, 31.594162, 24.559614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442184, 31.311270, 24.642714> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276606, 31.187500, 24.300274>,  <27.177258, 31.113237, 24.094810>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.276606, 31.187500, 24.300274>,  <27.442184, 31.311270, 24.642714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.276606, 31.187500, 24.300274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693693, 0.501737, -0.516768,
		0.589437, -0.807784, 0.006953,
		-0.413949, -0.309425, -0.856097,
		27.152420, 31.094673, 24.043446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973742, 31.221066, 24.176592>,  <27.442184, 31.311270, 24.642714>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973742, 31.221066, 24.176592> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669821, 31.213928, 23.916630>,  <27.487469, 31.209646, 23.760653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669821, 31.213928, 23.916630>,  <27.973742, 31.221066, 24.176592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.669821, 31.213928, 23.916630> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550499, 0.514176, -0.657703,
		0.345902, -0.857499, -0.380851,
		-0.759804, -0.017843, -0.649907,
		27.441879, 31.208574, 23.721657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220978, 30.995831, 23.588619>,  <27.973742, 31.221066, 24.176592>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220978, 30.995831, 23.588619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895296, 31.187531, 23.457535>,  <27.699888, 31.302549, 23.378883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.895296, 31.187531, 23.457535>,  <28.220978, 30.995831, 23.588619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.895296, 31.187531, 23.457535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538382, 0.411983, -0.735129,
		-0.217298, -0.774978, -0.593456,
		-0.814203, 0.479248, -0.327711,
		27.651035, 31.331305, 23.359221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338390, 30.981304, 22.854921>,  <28.220978, 30.995831, 23.588619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.338390, 30.981304, 22.854921> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078690, 31.276134, 22.929958>,  <27.922869, 31.453033, 22.974981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078690, 31.276134, 22.929958>,  <28.338390, 30.981304, 22.854921>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.078690, 31.276134, 22.929958> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410945, 0.547505, -0.728946,
		-0.639998, -0.396178, -0.658366,
		-0.649251, 0.737077, 0.187595,
		27.883915, 31.497257, 22.986237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.199116, 31.138016, 22.280407>,  <28.338390, 30.981304, 22.854921>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.199116, 31.138016, 22.280407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057461, 31.466488, 22.459404>,  <27.972467, 31.663570, 22.566803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.057461, 31.466488, 22.459404>,  <28.199116, 31.138016, 22.280407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.057461, 31.466488, 22.459404> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612622, 0.565242, -0.552445,
		-0.706599, 0.078503, -0.703246,
		-0.354135, 0.821181, 0.447493,
		27.951220, 31.712843, 22.593651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.907560, 31.559742, 21.866840>,  <28.199116, 31.138016, 22.280407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.907560, 31.559742, 21.866840> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021229, 31.814846, 22.153198>,  <28.089430, 31.967909, 22.325014>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.021229, 31.814846, 22.153198>,  <27.907560, 31.559742, 21.866840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.021229, 31.814846, 22.153198> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537983, 0.511989, -0.669658,
		-0.793613, 0.575436, -0.197613,
		0.284170, 0.637762, 0.715896,
		28.106480, 32.006176, 22.367968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.770864, 32.177017, 21.699068>,  <27.907560, 31.559742, 21.866840>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.770864, 32.177017, 21.699068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073530, 32.268391, 21.944107>,  <28.255129, 32.323215, 22.091131>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.073530, 32.268391, 21.944107>,  <27.770864, 32.177017, 21.699068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.073530, 32.268391, 21.944107> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429582, 0.532633, -0.729220,
		-0.492867, 0.814936, 0.304895,
		0.756665, 0.228431, 0.612599,
		28.300529, 32.336922, 22.127888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.881365, 32.869297, 21.552132>,  <27.770864, 32.177017, 21.699068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.881365, 32.869297, 21.552132> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201569, 32.768875, 21.769814>,  <28.393690, 32.708622, 21.900423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201569, 32.768875, 21.769814>,  <27.881365, 32.869297, 21.552132>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.201569, 32.768875, 21.769814> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571856, 0.591689, -0.568229,
		-0.179343, 0.766079, 0.617219,
		0.800510, -0.251052, 0.544203,
		28.441721, 32.693558, 21.933075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.191664, 33.519604, 21.725227>,  <27.881365, 32.869297, 21.552132>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.191664, 33.519604, 21.725227> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445112, 33.212814, 21.765766>,  <28.597181, 33.028740, 21.790091>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.445112, 33.212814, 21.765766>,  <28.191664, 33.519604, 21.725227>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.445112, 33.212814, 21.765766> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705944, 0.519599, -0.481310,
		0.316493, 0.376514, 0.870672,
		0.633621, -0.766977, 0.101348,
		28.635199, 32.982719, 21.796171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769392, 33.823025, 21.940353>,  <28.191664, 33.519604, 21.725227>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769392, 33.823025, 21.940353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885059, 33.498459, 21.737183>,  <28.954460, 33.303719, 21.615280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885059, 33.498459, 21.737183>,  <28.769392, 33.823025, 21.940353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.885059, 33.498459, 21.737183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630167, 0.560763, -0.537061,
		0.720605, -0.164778, 0.673481,
		0.289167, -0.811414, -0.507926,
		28.971809, 33.255035, 21.584805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.306950, 34.155907, 22.439539>,  <28.769392, 33.823025, 21.940353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.306950, 34.155907, 22.439539> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261484, 34.528557, 22.577610>,  <28.234205, 34.752148, 22.660452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261484, 34.528557, 22.577610>,  <28.306950, 34.155907, 22.439539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261484, 34.528557, 22.577610> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210900, -0.316884, 0.924719,
		0.970877, 0.177907, -0.160462,
		-0.113666, 0.931630, 0.345176,
		28.227385, 34.808044, 22.681162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.904058, 34.418087, 22.880625>,  <28.306950, 34.155907, 22.439539>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.904058, 34.418087, 22.880625> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584713, 34.628315, 22.998196>,  <28.393106, 34.754452, 23.068739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584713, 34.628315, 22.998196>,  <28.904058, 34.418087, 22.880625>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.584713, 34.628315, 22.998196> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228731, -0.186856, 0.955388,
		0.557044, 0.829978, 0.028965,
		-0.798363, 0.525568, 0.293929,
		28.345203, 34.785984, 23.086374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.116270, 34.748539, 23.473991>,  <28.904058, 34.418087, 22.880625>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.116270, 34.748539, 23.473991> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716730, 34.752010, 23.492847>,  <28.477007, 34.754093, 23.504162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.716730, 34.752010, 23.492847>,  <29.116270, 34.748539, 23.473991>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.716730, 34.752010, 23.492847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045863, -0.112790, 0.992560,
		0.013934, 0.993581, 0.112262,
		-0.998851, 0.008681, 0.047141,
		28.417074, 34.754616, 23.506990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.929745, 35.072514, 24.010418>,  <29.116270, 34.748539, 23.473991>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.929745, 35.072514, 24.010418> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591850, 34.861183, 23.976273>,  <28.389112, 34.734386, 23.955786>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591850, 34.861183, 23.976273>,  <28.929745, 35.072514, 24.010418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.591850, 34.861183, 23.976273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013665, -0.180749, 0.983434,
		-0.535005, 0.829578, 0.159905,
		-0.844738, -0.528327, -0.085366,
		28.338428, 34.702686, 23.950663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.584873, 35.252987, 24.533482>,  <28.929745, 35.072514, 24.010418>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.584873, 35.252987, 24.533482> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421528, 34.898991, 24.444008>,  <28.323521, 34.686592, 24.390324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421528, 34.898991, 24.444008>,  <28.584873, 35.252987, 24.533482>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.421528, 34.898991, 24.444008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025101, -0.255842, 0.966393,
		-0.912474, 0.389024, 0.126690,
		-0.408363, -0.884988, -0.223685,
		28.299019, 34.633495, 24.376902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125566, 35.061073, 25.108757>,  <28.584873, 35.252987, 24.533482>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125566, 35.061073, 25.108757> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208702, 34.711166, 24.933678>,  <28.258583, 34.501221, 24.828630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.208702, 34.711166, 24.933678>,  <28.125566, 35.061073, 25.108757>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208702, 34.711166, 24.933678> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040246, -0.454737, 0.889716,
		-0.977335, -0.167303, -0.129718,
		0.207840, -0.874771, -0.437697,
		28.271053, 34.448734, 24.802368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.595028, 34.561768, 25.353914>,  <28.125566, 35.061073, 25.108757>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.595028, 34.561768, 25.353914> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926924, 34.368095, 25.242847>,  <28.126060, 34.251892, 25.176207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.926924, 34.368095, 25.242847>,  <27.595028, 34.561768, 25.353914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.926924, 34.368095, 25.242847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010429, -0.510843, 0.859611,
		-0.558057, -0.710355, -0.428914,
		0.829737, -0.484186, -0.277671,
		28.175846, 34.222839, 25.159546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.462193, 33.920868, 25.618610>,  <27.595028, 34.561768, 25.353914>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.462193, 33.920868, 25.618610> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853891, 33.911667, 25.538063>,  <28.088911, 33.906147, 25.489735>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.853891, 33.911667, 25.538063>,  <27.462193, 33.920868, 25.618610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.853891, 33.911667, 25.538063> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153285, -0.565949, 0.810065,
		-0.132599, -0.824119, -0.550677,
		0.979245, -0.023004, -0.201369,
		28.147665, 33.904766, 25.477652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746090, 33.178963, 25.643265>,  <27.462193, 33.920868, 25.618610>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746090, 33.178963, 25.643265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066788, 33.410866, 25.701344>,  <28.259207, 33.550007, 25.736191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.066788, 33.410866, 25.701344>,  <27.746090, 33.178963, 25.643265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.066788, 33.410866, 25.701344> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245090, -0.540504, 0.804852,
		0.545102, -0.609700, -0.575440,
		0.801745, 0.579761, 0.145198,
		28.307312, 33.584793, 25.744904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.206146, 32.746147, 25.674206>,  <27.746090, 33.178963, 25.643265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.206146, 32.746147, 25.674206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368868, 33.067455, 25.848228>,  <28.466501, 33.260239, 25.952642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.368868, 33.067455, 25.848228>,  <28.206146, 32.746147, 25.674206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.368868, 33.067455, 25.848228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162156, -0.532177, 0.830959,
		0.899008, -0.267490, -0.346746,
		0.406804, 0.803266, 0.435056,
		28.490910, 33.308434, 25.978745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.865568, 32.594131, 25.996044>,  <28.206146, 32.746147, 25.674206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.865568, 32.594131, 25.996044> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713139, 32.916866, 26.176620>,  <28.621681, 33.110508, 26.284966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.713139, 32.916866, 26.176620>,  <28.865568, 32.594131, 25.996044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713139, 32.916866, 26.176620> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090175, -0.453520, 0.886672,
		0.920137, 0.378595, 0.100067,
		-0.381072, 0.806837, 0.451441,
		28.598818, 33.158916, 26.312054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.028437, 32.443699, 26.662680>,  <28.865568, 32.594131, 25.996044>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.028437, 32.443699, 26.662680> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787806, 32.757969, 26.720398>,  <28.643427, 32.946529, 26.755030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.787806, 32.757969, 26.720398>,  <29.028437, 32.443699, 26.662680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.787806, 32.757969, 26.720398> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283909, -0.379136, 0.880711,
		0.746659, 0.488849, 0.451140,
		-0.601578, 0.785673, 0.144296,
		28.607332, 32.993671, 26.763687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.171322, 32.643761, 27.262028>,  <29.028437, 32.443699, 26.662680>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.171322, 32.643761, 27.262028> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801964, 32.765320, 27.168224>,  <28.580349, 32.838253, 27.111942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.801964, 32.765320, 27.168224>,  <29.171322, 32.643761, 27.262028>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.801964, 32.765320, 27.168224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366384, -0.515551, 0.774577,
		0.114488, 0.801159, 0.587398,
		-0.923393, 0.303893, -0.234507,
		28.524946, 32.856487, 27.097872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.953205, 32.943676, 27.793350>,  <29.171322, 32.643761, 27.262028>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.953205, 32.943676, 27.793350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601892, 32.841972, 27.631378>,  <28.391104, 32.780949, 27.534195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601892, 32.841972, 27.631378>,  <28.953205, 32.943676, 27.793350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.601892, 32.841972, 27.631378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186494, -0.597649, 0.779766,
		-0.440271, 0.760373, 0.477487,
		-0.878283, -0.254260, -0.404932,
		28.338408, 32.765694, 27.509899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.175735, 33.274281, 28.504026>,  <28.953205, 32.943676, 27.793350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.175735, 33.274281, 28.504026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521051, 33.153225, 28.665588>,  <29.728241, 33.080593, 28.762526>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521051, 33.153225, 28.665588>,  <29.175735, 33.274281, 28.504026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521051, 33.153225, 28.665588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500222, 0.619500, -0.604977,
		-0.067128, 0.724313, 0.686196,
		0.863291, -0.302639, 0.403904,
		29.780039, 33.062431, 28.786760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.519030, 33.885410, 28.550417>,  <29.175735, 33.274281, 28.504026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.519030, 33.885410, 28.550417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778883, 33.581314, 28.549713>,  <29.934795, 33.398857, 28.549292>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778883, 33.581314, 28.549713>,  <29.519030, 33.885410, 28.550417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.778883, 33.581314, 28.549713> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675752, 0.578493, -0.456842,
		0.348330, 0.295591, 0.889546,
		0.649635, -0.760244, -0.001760,
		29.973774, 33.353241, 28.549185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148014, 34.282024, 28.526670>,  <29.519030, 33.885410, 28.550417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148014, 34.282024, 28.526670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245493, 33.905750, 28.432255>,  <30.303980, 33.679985, 28.375605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245493, 33.905750, 28.432255>,  <30.148014, 34.282024, 28.526670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.245493, 33.905750, 28.432255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584883, 0.336687, -0.737938,
		0.773642, 0.041779, 0.632244,
		0.243699, -0.940689, -0.236040,
		30.318604, 33.623543, 28.361443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.946234, 34.272423, 28.487560>,  <30.148014, 34.282024, 28.526670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.946234, 34.272423, 28.487560> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776005, 33.977261, 28.278034>,  <30.673868, 33.800163, 28.152319>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.776005, 33.977261, 28.278034>,  <30.946234, 34.272423, 28.487560>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.776005, 33.977261, 28.278034> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600093, 0.203137, -0.773708,
		0.677332, -0.643603, 0.356365,
		-0.425570, -0.737909, -0.523813,
		30.648335, 33.755886, 28.120890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.477844, 33.901108, 28.266645>,  <30.946234, 34.272423, 28.487560>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.477844, 33.901108, 28.266645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169796, 33.847984, 28.017078>,  <30.984966, 33.816109, 27.867338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.169796, 33.847984, 28.017078>,  <31.477844, 33.901108, 28.266645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.169796, 33.847984, 28.017078> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594283, 0.206080, -0.777406,
		0.231822, -0.969481, -0.079782,
		-0.770121, -0.132807, -0.623919,
		30.938759, 33.808140, 27.829903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759905, 33.790386, 27.700720>,  <31.477844, 33.901108, 28.266645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759905, 33.790386, 27.700720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394508, 33.815746, 27.539963>,  <31.175270, 33.830963, 27.443508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394508, 33.815746, 27.539963>,  <31.759905, 33.790386, 27.700720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.394508, 33.815746, 27.539963> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406708, 0.115105, -0.906278,
		-0.011200, -0.991328, -0.130933,
		-0.913490, 0.063402, -0.401891,
		31.120461, 33.834766, 27.419395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910162, 33.362999, 27.200033>,  <31.759905, 33.790386, 27.700720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910162, 33.362999, 27.200033> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594624, 33.587708, 27.100323>,  <31.405300, 33.722534, 27.040497>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.594624, 33.587708, 27.100323>,  <31.910162, 33.362999, 27.200033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594624, 33.587708, 27.100323> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344388, 0.068104, -0.936354,
		-0.509041, -0.824484, -0.247191,
		-0.788844, 0.561772, -0.249274,
		31.357971, 33.756241, 27.025541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.558563, 33.084167, 26.652103>,  <31.910162, 33.362999, 27.200033>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.558563, 33.084167, 26.652103> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458633, 33.471432, 26.645851>,  <31.398676, 33.703793, 26.642099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458633, 33.471432, 26.645851>,  <31.558563, 33.084167, 26.652103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.458633, 33.471432, 26.645851> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324016, 0.068376, -0.943577,
		-0.912470, -0.240792, -0.330783,
		-0.249823, 0.968165, -0.015630,
		31.383686, 33.761883, 26.641163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.302160, 33.098045, 25.962336>,  <31.558563, 33.084167, 26.652103>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.302160, 33.098045, 25.962336> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360565, 33.474922, 26.082973>,  <31.395609, 33.701046, 26.155355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.360565, 33.474922, 26.082973>,  <31.302160, 33.098045, 25.962336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.360565, 33.474922, 26.082973> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380534, 0.227914, -0.896242,
		-0.913167, 0.245630, -0.325256,
		0.146014, 0.942189, 0.301594,
		31.404369, 33.757580, 26.173452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.239431, 33.439926, 25.338865>,  <31.302160, 33.098045, 25.962336>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.239431, 33.439926, 25.338865> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428118, 33.697411, 25.579903>,  <31.541330, 33.851902, 25.724525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.428118, 33.697411, 25.579903>,  <31.239431, 33.439926, 25.338865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428118, 33.697411, 25.579903> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507020, 0.361103, -0.782646,
		-0.721397, 0.674714, -0.156037,
		0.471717, 0.643712, 0.602592,
		31.569633, 33.890526, 25.760681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305233, 34.085129, 25.015923>,  <31.239431, 33.439926, 25.338865>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305233, 34.085129, 25.015923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587555, 34.142700, 25.293373>,  <31.756948, 34.177242, 25.459845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587555, 34.142700, 25.293373>,  <31.305233, 34.085129, 25.015923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587555, 34.142700, 25.293373> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641259, 0.286275, -0.711922,
		-0.301037, 0.947275, 0.109757,
		0.705807, 0.143932, 0.693628,
		31.799297, 34.185879, 25.501461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550943, 34.658237, 24.849787>,  <31.305233, 34.085129, 25.015923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550943, 34.658237, 24.849787> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829470, 34.456108, 25.053669>,  <31.996586, 34.334831, 25.175999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829470, 34.456108, 25.053669>,  <31.550943, 34.658237, 24.849787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.829470, 34.456108, 25.053669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678843, 0.233067, -0.696314,
		0.233067, 0.830862, 0.505321,
		0.696314, -0.505321, 0.509704,
		32.038364, 34.304512, 25.206581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.680801, 32.174320, 31.784122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.813683, 31.804680, 31.708561>,  <27.893412, 31.582897, 31.663225>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.813683, 31.804680, 31.708561>,  <27.680801, 32.174320, 31.784122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.813683, 31.804680, 31.708561> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617770, 0.364515, -0.696771,
		0.712742, 0.114772, 0.691973,
		0.332205, -0.924097, -0.188902,
		27.913343, 31.527451, 31.651890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.322218, 32.244003, 31.792793>,  <27.680801, 32.174320, 31.784122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.322218, 32.244003, 31.792793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.291452, 31.901287, 31.588837>,  <28.272993, 31.695656, 31.466463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.291452, 31.901287, 31.588837>,  <28.322218, 32.244003, 31.792793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291452, 31.901287, 31.588837> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594277, 0.371239, -0.713453,
		0.800574, -0.357893, 0.480618,
		-0.076916, -0.856793, -0.509892,
		28.268377, 31.644249, 31.435869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986734, 32.059368, 31.667698>,  <28.322218, 32.244003, 31.792793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986734, 32.059368, 31.667698> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.781034, 31.899708, 31.364059>,  <28.657616, 31.803911, 31.181877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.781034, 31.899708, 31.364059>,  <28.986734, 32.059368, 31.667698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.781034, 31.899708, 31.364059> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527549, 0.550624, -0.646920,
		0.676197, -0.733137, -0.072583,
		-0.514246, -0.399154, -0.759096,
		28.626760, 31.779963, 31.136332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.477160, 31.900084, 31.211868>,  <28.986734, 32.059368, 31.667698>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.477160, 31.900084, 31.211868> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.162928, 31.851772, 30.969124>,  <28.974388, 31.822784, 30.823477>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.162928, 31.851772, 30.969124>,  <29.477160, 31.900084, 31.211868>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162928, 31.851772, 30.969124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568053, 0.248070, -0.784715,
		0.245266, -0.961192, -0.126312,
		-0.785596, -0.120712, -0.606851,
		28.927254, 31.815538, 30.787066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.634789, 31.406742, 30.645903>,  <29.477160, 31.900084, 31.211868>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.634789, 31.406742, 30.645903> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.336727, 31.622852, 30.489517>,  <29.157890, 31.752518, 30.395687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.336727, 31.622852, 30.489517>,  <29.634789, 31.406742, 30.645903>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.336727, 31.622852, 30.489517> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569015, 0.209327, -0.795239,
		-0.347808, -0.815037, -0.463405,
		-0.745152, 0.540275, -0.390962,
		29.113182, 31.784935, 30.372229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.658566, 31.314192, 29.931526>,  <29.634789, 31.406742, 30.645903>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.658566, 31.314192, 29.931526> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.419641, 31.634983, 29.928680>,  <29.276287, 31.827457, 29.926973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.419641, 31.634983, 29.928680>,  <29.658566, 31.314192, 29.931526>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.419641, 31.634983, 29.928680> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467458, 0.340922, -0.815632,
		-0.651694, -0.490511, -0.578528,
		-0.597309, 0.801980, -0.007116,
		29.240448, 31.875576, 29.926546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292625, 31.477839, 29.223532>,  <29.658566, 31.314192, 29.931526>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292625, 31.477839, 29.223532> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.342987, 31.801754, 29.452755>,  <29.373203, 31.996103, 29.590288>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.342987, 31.801754, 29.452755>,  <29.292625, 31.477839, 29.223532>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.342987, 31.801754, 29.452755> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398350, 0.487769, -0.776788,
		-0.908552, 0.326077, -0.261167,
		0.125903, 0.809787, 0.573056,
		29.380758, 32.044689, 29.624672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273623, 31.884853, 28.683226>,  <29.292625, 31.477839, 29.223532>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273623, 31.884853, 28.683226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.408670, 32.101959, 28.990841>,  <29.489698, 32.232224, 29.175411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.408670, 32.101959, 28.990841>,  <29.273623, 31.884853, 28.683226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.408670, 32.101959, 28.990841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512656, 0.579177, -0.633828,
		-0.789429, 0.608244, -0.082710,
		0.337619, 0.542764, 0.769039,
		29.509956, 32.264790, 29.221552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.039268, 32.580189, 28.516954>,  <29.273623, 31.884853, 28.683226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.039268, 32.580189, 28.516954> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.338638, 32.619640, 28.779293>,  <29.518259, 32.643311, 28.936697>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.338638, 32.619640, 28.779293>,  <29.039268, 32.580189, 28.516954>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.338638, 32.619640, 28.779293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502205, 0.561619, -0.657552,
		-0.433190, 0.821497, 0.370797,
		0.748423, 0.098628, 0.655847,
		29.563166, 32.649227, 28.976048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.394361, 32.875973, 28.453421>,  <29.039268, 32.580189, 28.516954>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.394361, 32.875973, 28.453421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.233362, 32.694782, 28.135223>,  <28.136763, 32.586067, 27.944305>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.233362, 32.694782, 28.135223>,  <28.394361, 32.875973, 28.453421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.233362, 32.694782, 28.135223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566082, -0.559759, 0.605162,
		-0.719407, 0.693891, -0.031119,
		-0.402498, -0.452974, -0.795494,
		28.112614, 32.558891, 27.896576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677010, 32.929462, 28.564869>,  <28.394361, 32.875973, 28.453421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677010, 32.929462, 28.564869> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.741594, 32.613827, 28.327797>,  <27.780346, 32.424446, 28.185553>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.741594, 32.613827, 28.327797>,  <27.677010, 32.929462, 28.564869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.741594, 32.613827, 28.327797> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574091, -0.563591, 0.593957,
		-0.802714, 0.244350, -0.544007,
		0.161464, -0.789087, -0.592682,
		27.790033, 32.377102, 28.149992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.027554, 32.599552, 28.342617>,  <27.677010, 32.929462, 28.564869>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.027554, 32.599552, 28.342617> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.214851, 32.265877, 28.226082>,  <27.327230, 32.065670, 28.156160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.214851, 32.265877, 28.226082>,  <27.027554, 32.599552, 28.342617>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.214851, 32.265877, 28.226082> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824595, -0.531007, 0.195126,
		-0.317475, 0.148869, -0.936508,
		0.468245, -0.834188, -0.291338,
		27.355326, 32.015621, 28.138680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562437, 32.203533, 27.923527>,  <27.027554, 32.599552, 28.342617>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562437, 32.203533, 27.923527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.836382, 31.953403, 28.073158>,  <27.000750, 31.803326, 28.162937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.836382, 31.953403, 28.073158>,  <26.562437, 32.203533, 27.923527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.836382, 31.953403, 28.073158> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726113, -0.628644, 0.278507,
		0.061004, -0.462361, -0.884591,
		0.684864, -0.625323, 0.374077,
		27.041842, 31.765806, 28.185381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.417784, 31.504271, 27.635180>,  <26.562437, 32.203533, 27.923527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.417784, 31.504271, 27.635180> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.616680, 31.474503, 27.980946>,  <26.736019, 31.456642, 28.188404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.616680, 31.474503, 27.980946>,  <26.417784, 31.504271, 27.635180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.616680, 31.474503, 27.980946> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649123, -0.692970, 0.313739,
		0.575664, -0.717115, -0.392883,
		0.497243, -0.074421, 0.864414,
		26.765854, 31.452177, 28.240271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.331608, 30.772219, 27.769642>,  <26.417784, 31.504271, 27.635180>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.331608, 30.772219, 27.769642> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.501419, 30.913074, 28.103294>,  <26.603306, 30.997587, 28.303486>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.501419, 30.913074, 28.103294>,  <26.331608, 30.772219, 27.769642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.501419, 30.913074, 28.103294> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741652, -0.393204, 0.543454,
		0.519355, -0.849347, 0.094238,
		0.424526, 0.352137, 0.834132,
		26.628777, 31.018715, 28.353535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376432, 30.218195, 28.162004>,  <26.331608, 30.772219, 27.769642>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376432, 30.218195, 28.162004> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.385740, 30.518810, 28.425716>,  <26.391325, 30.699179, 28.583944>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.385740, 30.518810, 28.425716>,  <26.376432, 30.218195, 28.162004>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.385740, 30.518810, 28.425716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741077, -0.429660, 0.515943,
		0.671017, -0.500584, 0.546948,
		0.023271, 0.751537, 0.659280,
		26.392721, 30.744272, 28.623501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.474623, 29.891624, 28.824123>,  <26.376432, 30.218195, 28.162004>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.474623, 29.891624, 28.824123> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.298315, 30.243229, 28.896858>,  <26.192530, 30.454191, 28.940498>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.298315, 30.243229, 28.896858>,  <26.474623, 29.891624, 28.824123>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.298315, 30.243229, 28.896858> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713049, -0.465928, 0.523902,
		0.545236, 0.101264, 0.832144,
		-0.440771, 0.879009, 0.181835,
		26.166084, 30.506931, 28.951408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.428699, 29.866053, 29.467226>,  <26.474623, 29.891624, 28.824123>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.428699, 29.866053, 29.467226> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.170561, 30.164410, 29.401291>,  <26.015676, 30.343424, 29.361731>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.170561, 30.164410, 29.401291>,  <26.428699, 29.866053, 29.467226>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170561, 30.164410, 29.401291> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617695, -0.382591, 0.687079,
		0.449421, 0.545224, 0.707638,
		-0.645348, 0.745892, -0.164837,
		25.976957, 30.388178, 29.351839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.316650, 30.062443, 30.129625>,  <26.428699, 29.866053, 29.467226>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.316650, 30.062443, 30.129625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.015795, 30.241299, 29.935986>,  <25.835281, 30.348612, 29.819801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.015795, 30.241299, 29.935986>,  <26.316650, 30.062443, 30.129625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.015795, 30.241299, 29.935986> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610126, -0.194848, 0.767972,
		0.249066, 0.872982, 0.419365,
		-0.752139, 0.447142, -0.484099,
		25.790154, 30.375441, 29.790756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.120893, 30.530771, 30.660017>,  <26.316650, 30.062443, 30.129625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.120893, 30.530771, 30.660017> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.837357, 30.455227, 30.388172>,  <25.667234, 30.409901, 30.225065>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.837357, 30.455227, 30.388172>,  <26.120893, 30.530771, 30.660017>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.837357, 30.455227, 30.388172> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625943, -0.275742, 0.729494,
		-0.325170, 0.942495, 0.077242,
		-0.708844, -0.188860, -0.679611,
		25.624702, 30.398569, 30.184288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.422836, 30.881660, 30.949450>,  <26.120893, 30.530771, 30.660017>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.422836, 30.881660, 30.949450> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.313950, 30.621349, 30.665932>,  <25.248617, 30.465162, 30.495821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<25.313950, 30.621349, 30.665932>,  <25.422836, 30.881660, 30.949450>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.313950, 30.621349, 30.665932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807206, -0.246501, 0.536335,
		-0.523753, 0.718141, -0.458210,
		-0.272215, -0.650777, -0.708793,
		25.232285, 30.426117, 30.453293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602102, 30.944860, 30.778715>,  <25.422836, 30.881660, 30.949450>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602102, 30.944860, 30.778715> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.703939, 30.574936, 30.665642>,  <24.765041, 30.352982, 30.597797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.703939, 30.574936, 30.665642>,  <24.602102, 30.944860, 30.778715>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.703939, 30.574936, 30.665642> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713157, -0.376977, 0.591012,
		-0.653139, 0.051130, -0.755510,
		0.254591, -0.924810, -0.282682,
		24.780317, 30.297493, 30.580837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.990269, 30.671745, 30.616821>,  <24.602102, 30.944860, 30.778715>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.990269, 30.671745, 30.616821> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.246067, 30.374573, 30.695915>,  <24.399546, 30.196270, 30.743372>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<24.246067, 30.374573, 30.695915>,  <23.990269, 30.671745, 30.616821>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.246067, 30.374573, 30.695915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747967, -0.541779, 0.383434,
		-0.177738, -0.393102, -0.902153,
		0.639496, -0.742931, 0.197733,
		24.437916, 30.151693, 30.755236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.669411, 25.498020, 31.459414> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383520, 25.770878, 31.397648>,  <30.211987, 25.934593, 31.360588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383520, 25.770878, 31.397648>,  <30.669411, 25.498020, 31.459414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383520, 25.770878, 31.397648> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419111, 0.240974, -0.875373,
		-0.559921, -0.690369, -0.458126,
		-0.714726, 0.682145, -0.154415,
		30.169102, 25.975521, 31.351324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228012, 25.318741, 30.805511>,  <30.669411, 25.498020, 31.459414>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228012, 25.318741, 30.805511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.190197, 25.711079, 30.873638>,  <30.167507, 25.946482, 30.914515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.190197, 25.711079, 30.873638>,  <30.228012, 25.318741, 30.805511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.190197, 25.711079, 30.873638> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336033, 0.192481, -0.921972,
		-0.937094, -0.029930, -0.347793,
		-0.094538, 0.980844, 0.170315,
		30.161835, 26.005331, 30.924732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.885513, 25.531807, 30.210045>,  <30.228012, 25.318741, 30.805511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.885513, 25.531807, 30.210045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081026, 25.824726, 30.399712>,  <30.198334, 26.000477, 30.513512>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.081026, 25.824726, 30.399712>,  <29.885513, 25.531807, 30.210045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081026, 25.824726, 30.399712> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453424, 0.251097, -0.855194,
		-0.745317, 0.633002, -0.209309,
		0.488783, 0.732297, 0.474165,
		30.227661, 26.044415, 30.541962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.705315, 26.115580, 29.877365>,  <29.885513, 25.531807, 30.210045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.705315, 26.115580, 29.877365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.036093, 26.242184, 30.063259>,  <30.234560, 26.318146, 30.174795>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.036093, 26.242184, 30.063259>,  <29.705315, 26.115580, 29.877365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036093, 26.242184, 30.063259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398551, 0.253076, -0.881538,
		-0.396630, 0.914206, 0.083134,
		0.826947, 0.316512, 0.464735,
		30.284178, 26.337137, 30.202681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.827618, 26.700695, 29.502354>,  <29.705315, 26.115580, 29.877365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.827618, 26.700695, 29.502354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.152559, 26.591106, 29.708275>,  <30.347525, 26.525352, 29.831827>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.152559, 26.591106, 29.708275>,  <29.827618, 26.700695, 29.502354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152559, 26.591106, 29.708275> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578808, 0.271061, -0.769095,
		0.071168, 0.922748, 0.378775,
		0.812353, -0.273973, 0.514803,
		30.396265, 26.508915, 29.862715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.234974, 27.283623, 29.464487>,  <29.827618, 26.700695, 29.502354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.234974, 27.283623, 29.464487> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463648, 26.958496, 29.509216>,  <30.600851, 26.763420, 29.536055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.463648, 26.958496, 29.509216>,  <30.234974, 27.283623, 29.464487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463648, 26.958496, 29.509216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587184, 0.310123, -0.747689,
		0.573057, 0.493102, 0.654566,
		0.571683, -0.812819, 0.111823,
		30.635153, 26.714651, 29.542763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.825397, 27.532791, 29.251234>,  <30.234974, 27.283623, 29.464487>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.825397, 27.532791, 29.251234> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.901020, 27.140175, 29.239689>,  <30.946394, 26.904604, 29.232761>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.901020, 27.140175, 29.239689>,  <30.825397, 27.532791, 29.251234>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901020, 27.140175, 29.239689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545798, 0.129472, -0.827854,
		0.816310, 0.140759, 0.560201,
		0.189058, -0.981542, -0.028863,
		30.957737, 26.845713, 29.231030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.405451, 27.573435, 29.036243>,  <30.825397, 27.532791, 29.251234>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.405451, 27.573435, 29.036243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322824, 27.188801, 28.963924>,  <31.273249, 26.958021, 28.920534>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.322824, 27.188801, 28.963924>,  <31.405451, 27.573435, 29.036243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.322824, 27.188801, 28.963924> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424459, 0.078420, -0.902045,
		0.881570, -0.263072, 0.391954,
		-0.206566, -0.961584, -0.180796,
		31.260855, 26.900326, 28.909685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.985653, 27.357412, 28.681032>,  <31.405451, 27.573435, 29.036243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.985653, 27.357412, 28.681032> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697170, 27.096840, 28.586800>,  <31.524080, 26.940496, 28.530260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.697170, 27.096840, 28.586800>,  <31.985653, 27.357412, 28.681032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.697170, 27.096840, 28.586800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135813, 0.200513, -0.970232,
		0.679275, -0.731733, -0.056139,
		-0.721207, -0.651430, -0.235582,
		31.480808, 26.901411, 28.516125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331253, 26.982685, 28.200972>,  <31.985653, 27.357412, 28.681032>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331253, 26.982685, 28.200972> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938227, 26.929359, 28.149132>,  <31.702412, 26.897364, 28.118027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.938227, 26.929359, 28.149132>,  <32.331253, 26.982685, 28.200972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.938227, 26.929359, 28.149132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094272, 0.243586, -0.965287,
		0.160255, -0.960674, -0.226771,
		-0.982564, -0.133313, -0.129601,
		31.643457, 26.889364, 28.110250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123199, 26.466242, 27.620979>,  <32.331253, 26.982685, 28.200972>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123199, 26.466242, 27.620979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817316, 26.721279, 27.658268>,  <31.633785, 26.874302, 27.680641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.817316, 26.721279, 27.658268>,  <32.123199, 26.466242, 27.620979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.817316, 26.721279, 27.658268> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098422, 0.258544, -0.960972,
		-0.636813, -0.725691, -0.260465,
		-0.764711, 0.637595, 0.093221,
		31.587902, 26.912558, 27.686234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682989, 26.364477, 27.037580>,  <32.123199, 26.466242, 27.620979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682989, 26.364477, 27.037580> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.592068, 26.729012, 27.174866>,  <31.537516, 26.947733, 27.257236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.592068, 26.729012, 27.174866>,  <31.682989, 26.364477, 27.037580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592068, 26.729012, 27.174866> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099181, 0.372271, -0.922810,
		-0.968760, -0.175718, -0.175006,
		-0.227304, 0.911338, 0.343214,
		31.523876, 27.002413, 27.277830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380136, 26.741243, 26.427620>,  <31.682989, 26.364477, 27.037580>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380136, 26.741243, 26.427620> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466637, 27.028530, 26.692165>,  <31.518536, 27.200903, 26.850893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.466637, 27.028530, 26.692165>,  <31.380136, 26.741243, 26.427620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.466637, 27.028530, 26.692165> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291382, 0.599045, -0.745816,
		-0.931844, 0.353991, -0.079732,
		0.216249, 0.718217, 0.661363,
		31.531511, 27.243996, 26.890574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.107206, 27.337826, 26.142588>,  <31.380136, 26.741243, 26.427620>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.107206, 27.337826, 26.142588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.384632, 27.448307, 26.408726>,  <31.551088, 27.514595, 26.568409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.384632, 27.448307, 26.408726>,  <31.107206, 27.337826, 26.142588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.384632, 27.448307, 26.408726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342388, 0.686216, -0.641778,
		-0.633830, 0.672919, 0.381366,
		0.693564, 0.276202, 0.665343,
		31.592701, 27.531168, 26.608328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.467716, 27.826885, 26.276403>,  <31.107206, 27.337826, 26.142588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.467716, 27.826885, 26.276403> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156857, 27.985130, 26.080635>,  <29.970341, 28.080078, 25.963175>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.156857, 27.985130, 26.080635>,  <30.467716, 27.826885, 26.276403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.156857, 27.985130, 26.080635> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621272, -0.358336, 0.696862,
		0.100313, 0.845626, 0.524264,
		-0.777148, 0.395615, -0.489419,
		29.923712, 28.103815, 25.933809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.997051, 28.111055, 26.880697>,  <30.467716, 27.826885, 26.276403>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.997051, 28.111055, 26.880697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759617, 28.078491, 26.560440>,  <29.617157, 28.058952, 26.368286>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.759617, 28.078491, 26.560440>,  <29.997051, 28.111055, 26.880697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759617, 28.078491, 26.560440> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724741, -0.378433, 0.575794,
		-0.349865, 0.922042, 0.165630,
		-0.593586, -0.081411, -0.800642,
		29.581541, 28.054068, 26.320248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.334883, 28.380400, 27.077822>,  <29.997051, 28.111055, 26.880697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.334883, 28.380400, 27.077822> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.271624, 28.141968, 26.762943>,  <29.233667, 27.998909, 26.574017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.271624, 28.141968, 26.762943>,  <29.334883, 28.380400, 27.077822>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.271624, 28.141968, 26.762943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697472, -0.496883, 0.516372,
		-0.698943, 0.630711, -0.337167,
		-0.158149, -0.596079, -0.787197,
		29.224178, 27.963144, 26.526785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.571012, 28.355146, 26.983784>,  <29.334883, 28.380400, 27.077822>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.571012, 28.355146, 26.983784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.737682, 28.028709, 26.823597>,  <28.837685, 27.832848, 26.727486>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.737682, 28.028709, 26.823597>,  <28.571012, 28.355146, 26.983784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.737682, 28.028709, 26.823597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654390, -0.575057, 0.491002,
		-0.630995, 0.057474, -0.773655,
		0.416676, -0.816092, -0.400468,
		28.862686, 27.783882, 26.703457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.047422, 27.976578, 26.653982>,  <28.571012, 28.355146, 26.983784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.047422, 27.976578, 26.653982> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.330114, 27.705109, 26.733917>,  <28.499729, 27.542227, 26.781878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.330114, 27.705109, 26.733917>,  <28.047422, 27.976578, 26.653982>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.330114, 27.705109, 26.733917> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697932, -0.622549, 0.354011,
		-0.115848, -0.389665, -0.913641,
		0.706732, -0.678671, 0.199838,
		28.542133, 27.501507, 26.793869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.685987, 27.294888, 26.576162>,  <28.047422, 27.976578, 26.653982>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.685987, 27.294888, 26.576162> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016268, 27.199615, 26.780704>,  <28.214436, 27.142452, 26.903431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.016268, 27.199615, 26.780704>,  <27.685987, 27.294888, 26.576162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.016268, 27.199615, 26.780704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543529, -0.578522, 0.608185,
		0.150974, -0.780117, -0.607145,
		0.825702, -0.238181, 0.511358,
		28.263979, 27.128160, 26.934113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507839, 26.685995, 26.764236>,  <27.685987, 27.294888, 26.576162>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507839, 26.685995, 26.764236> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.805765, 26.764912, 27.019211>,  <27.984520, 26.812262, 27.172195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.805765, 26.764912, 27.019211>,  <27.507839, 26.685995, 26.764236>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.805765, 26.764912, 27.019211> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357109, -0.689114, 0.630551,
		0.563670, -0.697278, -0.442808,
		0.744814, 0.197292, 0.637438,
		28.029209, 26.824099, 27.210442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657537, 26.003904, 27.015163>,  <27.507839, 26.685995, 26.764236>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657537, 26.003904, 27.015163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.811262, 26.249584, 27.290863>,  <27.903498, 26.396992, 27.456282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.811262, 26.249584, 27.290863>,  <27.657537, 26.003904, 27.015163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811262, 26.249584, 27.290863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335839, -0.602421, 0.724087,
		0.859952, -0.509750, -0.025244,
		0.384311, 0.614202, 0.689247,
		27.926556, 26.433846, 27.497637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.987228, 25.561274, 27.620510>,  <27.657537, 26.003904, 27.015163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.987228, 25.561274, 27.620510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.905853, 25.928905, 27.755508>,  <27.857029, 26.149485, 27.836508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.905853, 25.928905, 27.755508>,  <27.987228, 25.561274, 27.620510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.905853, 25.928905, 27.755508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265837, -0.383605, 0.884408,
		0.942307, 0.090204, 0.322366,
		-0.203439, 0.919081, 0.337494,
		27.844822, 26.204630, 27.856756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364876, 25.557377, 28.281382>,  <27.987228, 25.561274, 27.620510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364876, 25.557377, 28.281382> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.072374, 25.830215, 28.283031>,  <27.896873, 25.993917, 28.284021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.072374, 25.830215, 28.283031>,  <28.364876, 25.557377, 28.281382>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.072374, 25.830215, 28.283031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375424, -0.407514, 0.832460,
		0.569497, 0.607190, 0.554070,
		-0.731252, 0.682095, 0.004124,
		27.852999, 26.034843, 28.284269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.348671, 25.781122, 28.974573>,  <28.364876, 25.557377, 28.281382>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.348671, 25.781122, 28.974573> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.990419, 25.904152, 28.846046>,  <27.775469, 25.977970, 28.768930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.990419, 25.904152, 28.846046>,  <28.348671, 25.781122, 28.974573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.990419, 25.904152, 28.846046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395633, -0.220729, 0.891490,
		0.203276, 0.925568, 0.319378,
		-0.895630, 0.307574, -0.321316,
		27.721729, 25.996424, 28.749651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.034567, 26.243572, 29.496664>,  <28.348671, 25.781122, 28.974573>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.034567, 26.243572, 29.496664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.748941, 26.057384, 29.287495>,  <27.577566, 25.945671, 29.161993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.748941, 26.057384, 29.287495>,  <28.034567, 26.243572, 29.496664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.748941, 26.057384, 29.287495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333530, -0.430544, 0.838683,
		-0.615522, 0.773285, 0.152189,
		-0.714066, -0.465469, -0.522923,
		27.534721, 25.917744, 29.130617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.532154, 26.410658, 29.873600>,  <28.034567, 26.243572, 29.496664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.532154, 26.410658, 29.873600> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.412556, 26.104359, 29.645836>,  <27.340796, 25.920580, 29.509176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.412556, 26.104359, 29.645836>,  <27.532154, 26.410658, 29.873600>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.412556, 26.104359, 29.645836> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382924, -0.450279, 0.806609,
		-0.874054, 0.459215, -0.158591,
		-0.298997, -0.765748, -0.569412,
		27.322857, 25.874634, 29.475012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.796225, 26.370354, 29.983904>,  <27.532154, 26.410658, 29.873600>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.796225, 26.370354, 29.983904> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.938663, 26.025799, 29.839012>,  <27.024128, 25.819067, 29.752077>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.938663, 26.025799, 29.839012>,  <26.796225, 26.370354, 29.983904>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.938663, 26.025799, 29.839012> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422293, -0.494142, 0.759930,
		-0.833584, -0.117642, -0.539719,
		0.356098, -0.861385, -0.362229,
		27.045492, 25.767384, 29.730343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165287, 26.488028, 29.481565>,  <26.796225, 26.370354, 29.983904>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165287, 26.488028, 29.481565> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.792183, 26.624855, 29.436047>,  <25.568321, 26.706951, 29.408735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.792183, 26.624855, 29.436047>,  <26.165287, 26.488028, 29.481565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792183, 26.624855, 29.436047> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287059, 0.513806, -0.808455,
		-0.218077, -0.786761, -0.577451,
		-0.932759, 0.342069, -0.113798,
		25.512356, 26.727476, 29.401907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.877874, 26.242229, 28.848442>,  <26.165287, 26.488028, 29.481565>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.877874, 26.242229, 28.848442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.710323, 26.584332, 28.970478>,  <25.609793, 26.789593, 29.043699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.710323, 26.584332, 28.970478>,  <25.877874, 26.242229, 28.848442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.710323, 26.584332, 28.970478> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305515, 0.449140, -0.839604,
		-0.855104, -0.258480, -0.449427,
		-0.418876, 0.855255, 0.305092,
		25.584660, 26.840908, 29.062006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.383358, 26.421505, 28.308292>,  <25.877874, 26.242229, 28.848442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.383358, 26.421505, 28.308292> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.453106, 26.759624, 28.510307>,  <25.494955, 26.962498, 28.631516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.453106, 26.759624, 28.510307>,  <25.383358, 26.421505, 28.308292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.453106, 26.759624, 28.510307> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134121, 0.487725, -0.862633,
		-0.975504, 0.218152, -0.028328,
		0.174369, 0.845301, 0.505036,
		25.505417, 27.013214, 28.661818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.987061, 26.847576, 27.912504>,  <25.383358, 26.421505, 28.308292>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.987061, 26.847576, 27.912504> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.222616, 27.089222, 28.127262>,  <25.363949, 27.234209, 28.256117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.222616, 27.089222, 28.127262>,  <24.987061, 26.847576, 27.912504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.222616, 27.089222, 28.127262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027896, 0.679096, -0.733519,
		-0.807732, 0.416984, 0.416765,
		0.588889, 0.604113, 0.536895,
		25.399282, 27.270456, 28.288330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.005640, 27.429888, 27.588753>,  <24.987061, 26.847576, 27.912504>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.005640, 27.429888, 27.588753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.293264, 27.570690, 27.828434>,  <25.465839, 27.655170, 27.972242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.293264, 27.570690, 27.828434>,  <25.005640, 27.429888, 27.588753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.293264, 27.570690, 27.828434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104702, 0.797512, -0.594148,
		-0.687014, 0.489967, 0.536605,
		0.719061, 0.352004, 0.599203,
		25.508984, 27.676291, 28.008194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.824381, 28.150488, 27.859549>,  <25.005640, 27.429888, 27.588753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.824381, 28.150488, 27.859549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.216837, 28.078251, 27.831978>,  <25.452311, 28.034908, 27.815435>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.216837, 28.078251, 27.831978>,  <24.824381, 28.150488, 27.859549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.216837, 28.078251, 27.831978> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086136, 0.727683, -0.680483,
		0.173046, 0.661713, 0.729515,
		0.981140, -0.180592, -0.068926,
		25.511179, 28.024073, 27.811300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.101805, 28.772022, 27.824732>,  <24.824381, 28.150488, 27.859549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.101805, 28.772022, 27.824732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.391953, 28.532051, 27.689720>,  <25.566040, 28.388069, 27.608713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.391953, 28.532051, 27.689720>,  <25.101805, 28.772022, 27.824732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.391953, 28.532051, 27.689720> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198722, 0.651966, -0.731744,
		0.659053, 0.463709, 0.592135,
		0.725368, -0.599929, -0.337531,
		25.609562, 28.352072, 27.588461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.626518, 29.187113, 27.655970>,  <25.101805, 28.772022, 27.824732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.626518, 29.187113, 27.655970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.695776, 28.865913, 27.427860>,  <25.737331, 28.673193, 27.290995>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.695776, 28.865913, 27.427860>,  <25.626518, 29.187113, 27.655970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.695776, 28.865913, 27.427860> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003791, 0.578472, -0.815693,
		0.984889, 0.143395, 0.097116,
		0.173145, -0.802999, -0.570274,
		25.747719, 28.625013, 27.256779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.225182, 29.137541, 27.308298>,  <25.626518, 29.187113, 27.655970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.225182, 29.137541, 27.308298> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.956886, 28.959915, 27.070671>,  <25.795908, 28.853340, 26.928095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.956886, 28.959915, 27.070671>,  <26.225182, 29.137541, 27.308298>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956886, 28.959915, 27.070671> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210339, 0.654192, -0.726492,
		0.711245, -0.612241, -0.345386,
		-0.670737, -0.444066, -0.594069,
		25.755665, 28.826696, 26.892450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.511768, 29.044472, 26.625771>,  <26.225182, 29.137541, 27.308298>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.511768, 29.044472, 26.625771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.122650, 29.022892, 26.535656>,  <25.889179, 29.009943, 26.481586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.122650, 29.022892, 26.535656>,  <26.511768, 29.044472, 26.625771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.122650, 29.022892, 26.535656> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176584, 0.456772, -0.871881,
		0.149944, -0.887946, -0.434820,
		-0.972797, -0.053951, -0.225288,
		25.830811, 29.006706, 26.468069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.562145, 28.670916, 26.032314>,  <26.511768, 29.044472, 26.625771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.562145, 28.670916, 26.032314> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.223700, 28.883514, 26.048332>,  <26.020632, 29.011074, 26.057943>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.223700, 28.883514, 26.048332>,  <26.562145, 28.670916, 26.032314>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.223700, 28.883514, 26.048332> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175796, 0.349199, -0.920410,
		-0.503180, -0.771731, -0.388897,
		-0.846112, 0.531499, 0.040043,
		25.969866, 29.042965, 26.060345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317419, 28.629572, 25.386248>,  <26.562145, 28.670916, 26.032314>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317419, 28.629572, 25.386248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.118582, 28.944248, 25.532681>,  <25.999279, 29.133055, 25.620541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.118582, 28.944248, 25.532681>,  <26.317419, 28.629572, 25.386248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118582, 28.944248, 25.532681> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084583, 0.463822, -0.881881,
		-0.863565, -0.407413, -0.297103,
		-0.497093, 0.786692, 0.366081,
		25.969454, 29.180256, 25.642504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.799156, 28.825619, 24.911844>,  <26.317419, 28.629572, 25.386248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.799156, 28.825619, 24.911844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.905865, 29.145222, 25.127407>,  <25.969889, 29.336983, 25.256744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.905865, 29.145222, 25.127407>,  <25.799156, 28.825619, 24.911844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905865, 29.145222, 25.127407> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043293, 0.548672, -0.834916,
		-0.962787, 0.246062, 0.111778,
		0.266770, 0.799007, 0.538908,
		25.985895, 29.384924, 25.289080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.448236, 29.313643, 24.668724>,  <25.799156, 28.825619, 24.911844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.448236, 29.313643, 24.668724> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.731421, 29.530109, 24.850243>,  <25.901331, 29.659988, 24.959154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<25.731421, 29.530109, 24.850243>,  <25.448236, 29.313643, 24.668724>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.731421, 29.530109, 24.850243> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124727, 0.536639, -0.834543,
		-0.695151, 0.647424, 0.312422,
		0.707960, 0.541166, 0.453797,
		25.943810, 29.692459, 24.986382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<40.486492, 27.982895, 32.400051> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784996, 28.243332, 32.344666>,  <40.964100, 28.399595, 32.311436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.784996, 28.243332, 32.344666>,  <40.486492, 27.982895, 32.400051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.784996, 28.243332, 32.344666> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378682, 0.244181, -0.892735,
		-0.547444, 0.718646, 0.428780,
		0.746260, 0.651094, -0.138464,
		41.008873, 28.438660, 32.303127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.194660, 28.554476, 32.115250>,  <40.486492, 27.982895, 32.400051>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.194660, 28.554476, 32.115250> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576633, 28.603928, 32.007313>,  <40.805817, 28.633598, 31.942551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576633, 28.603928, 32.007313>,  <40.194660, 28.554476, 32.115250>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576633, 28.603928, 32.007313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296796, 0.408836, -0.862998,
		0.003628, 0.904195, 0.427105,
		0.954934, 0.123632, -0.269845,
		40.863113, 28.641018, 31.926359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.248024, 29.292112, 31.828869>,  <40.194660, 28.554476, 32.115250>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.248024, 29.292112, 31.828869> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545162, 29.069340, 31.680275>,  <40.723446, 28.935677, 31.591120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.545162, 29.069340, 31.680275>,  <40.248024, 29.292112, 31.828869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.545162, 29.069340, 31.680275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122831, 0.432093, -0.893425,
		0.658094, 0.709310, 0.252571,
		0.742849, -0.556934, -0.371483,
		40.768017, 28.902260, 31.568830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.667309, 29.765137, 31.387920>,  <40.248024, 29.292112, 31.828869>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.667309, 29.765137, 31.387920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.747463, 29.399120, 31.247894>,  <40.795555, 29.179510, 31.163879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.747463, 29.399120, 31.247894>,  <40.667309, 29.765137, 31.387920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.747463, 29.399120, 31.247894> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022527, 0.352915, -0.935384,
		0.979458, 0.195324, 0.050106,
		0.200386, -0.915041, -0.350065,
		40.807579, 29.124609, 31.142874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139980, 29.908001, 30.917057>,  <40.667309, 29.765137, 31.387920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139980, 29.908001, 30.917057> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.034721, 29.535278, 30.817066>,  <40.971565, 29.311644, 30.757072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.034721, 29.535278, 30.817066>,  <41.139980, 29.908001, 30.917057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034721, 29.535278, 30.817066> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015132, 0.255091, -0.966799,
		0.964638, -0.258190, -0.053026,
		-0.263145, -0.931808, -0.249977,
		40.955776, 29.255735, 30.742073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.537560, 29.771185, 30.427671>,  <41.139980, 29.908001, 30.917057>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.537560, 29.771185, 30.427671> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.245899, 29.501686, 30.379677>,  <41.070904, 29.339987, 30.350880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.245899, 29.501686, 30.379677>,  <41.537560, 29.771185, 30.427671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.245899, 29.501686, 30.379677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040469, 0.132574, -0.990347,
		0.683153, -0.726970, -0.069401,
		-0.729153, -0.673749, -0.119988,
		41.027153, 29.299561, 30.343681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.743473, 29.222061, 29.846081>,  <41.537560, 29.771185, 30.427671>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.743473, 29.222061, 29.846081> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.345921, 29.238552, 29.887062>,  <41.107388, 29.248447, 29.911650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.345921, 29.238552, 29.887062>,  <41.743473, 29.222061, 29.846081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.345921, 29.238552, 29.887062> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099114, 0.076164, -0.992157,
		-0.048706, -0.996243, -0.071612,
		-0.993883, 0.041227, 0.102451,
		41.047756, 29.250919, 29.917797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515709, 28.605564, 29.405378>,  <41.743473, 29.222061, 29.846081>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515709, 28.605564, 29.405378> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.205959, 28.856144, 29.440929>,  <41.020107, 29.006493, 29.462261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.205959, 28.856144, 29.440929>,  <41.515709, 28.605564, 29.405378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.205959, 28.856144, 29.440929> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010706, 0.153423, -0.988103,
		-0.632632, -0.764213, -0.125514,
		-0.774378, 0.626450, 0.088879,
		40.973644, 29.044079, 29.467592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199932, 28.471054, 28.838665>,  <41.515709, 28.605564, 29.405378>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199932, 28.471054, 28.838665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027992, 28.814407, 28.950668>,  <40.924828, 29.020420, 29.017870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.027992, 28.814407, 28.950668>,  <41.199932, 28.471054, 28.838665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.027992, 28.814407, 28.950668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086505, 0.269541, -0.959096,
		-0.898746, -0.436492, -0.041608,
		-0.429853, 0.858384, 0.280008,
		40.899036, 29.071922, 29.034670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539238, 28.617252, 28.564407>,  <41.199932, 28.471054, 28.838665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.539238, 28.617252, 28.564407> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645084, 28.989384, 28.665970>,  <40.708591, 29.212662, 28.726908>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.645084, 28.989384, 28.665970>,  <40.539238, 28.617252, 28.564407>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645084, 28.989384, 28.665970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175201, 0.305286, -0.936005,
		-0.948306, 0.203196, 0.243777,
		0.264614, 0.930329, 0.253904,
		40.724468, 29.268482, 28.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.077160, 28.991539, 28.198734>,  <40.539238, 28.617252, 28.564407>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.077160, 28.991539, 28.198734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362740, 29.259644, 28.279751>,  <40.534088, 29.420507, 28.328362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.362740, 29.259644, 28.279751>,  <40.077160, 28.991539, 28.198734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.362740, 29.259644, 28.279751> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134624, 0.415268, -0.899683,
		-0.687134, 0.615060, 0.386714,
		0.713949, 0.670263, 0.202543,
		40.576923, 29.460722, 28.340513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.800915, 29.708963, 28.166746>,  <40.077160, 28.991539, 28.198734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.800915, 29.708963, 28.166746> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.195137, 29.746872, 28.110603>,  <40.431671, 29.769617, 28.076918>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.195137, 29.746872, 28.110603>,  <39.800915, 29.708963, 28.166746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.195137, 29.746872, 28.110603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168338, 0.457553, -0.873102,
		-0.018524, 0.884117, 0.466897,
		0.985555, 0.094770, -0.140355,
		40.490803, 29.775303, 28.068497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.878120, 30.403517, 27.824177>,  <39.800915, 29.708963, 28.166746>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.878120, 30.403517, 27.824177> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212288, 30.187408, 27.783817>,  <40.412788, 30.057743, 27.759602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.212288, 30.187408, 27.783817>,  <39.878120, 30.403517, 27.824177>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.212288, 30.187408, 27.783817> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167614, 0.425282, -0.889405,
		0.523432, 0.726113, 0.445846,
		0.835419, -0.540273, -0.100899,
		40.462914, 30.025326, 27.753548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473389, 30.933105, 27.691076>,  <39.878120, 30.403517, 27.824177>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473389, 30.933105, 27.691076> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.505322, 30.562130, 27.544933>,  <40.524483, 30.339544, 27.457247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.505322, 30.562130, 27.544933>,  <40.473389, 30.933105, 27.691076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.505322, 30.562130, 27.544933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053736, 0.369999, -0.927477,
		0.995359, 0.054409, 0.079374,
		0.079831, -0.927438, -0.365358,
		40.529270, 30.283899, 27.435326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029968, 31.106894, 27.308512>,  <40.473389, 30.933105, 27.691076>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029968, 31.106894, 27.308512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.861172, 30.773060, 27.166866>,  <40.759895, 30.572760, 27.081879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.861172, 30.773060, 27.166866>,  <41.029968, 31.106894, 27.308512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861172, 30.773060, 27.166866> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091409, 0.349436, -0.932491,
		0.901981, -0.425871, -0.071170,
		-0.421990, -0.834583, -0.354112,
		40.734573, 30.522684, 27.060633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451698, 30.895035, 26.795883>,  <41.029968, 31.106894, 27.308512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451698, 30.895035, 26.795883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110256, 30.701771, 26.717995>,  <40.905392, 30.585812, 26.671261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.110256, 30.701771, 26.717995>,  <41.451698, 30.895035, 26.795883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110256, 30.701771, 26.717995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076800, 0.252995, -0.964414,
		0.515231, -0.838182, -0.178851,
		-0.853604, -0.483160, -0.194723,
		40.854176, 30.556824, 26.659578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549625, 30.695269, 26.162357>,  <41.451698, 30.895035, 26.795883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549625, 30.695269, 26.162357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153332, 30.641041, 26.165771>,  <40.915558, 30.608505, 26.167820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.153332, 30.641041, 26.165771>,  <41.549625, 30.695269, 26.162357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.153332, 30.641041, 26.165771> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020458, 0.086802, -0.996016,
		0.134291, -0.986958, -0.088771,
		-0.990731, -0.135572, 0.008535,
		40.856113, 30.600370, 26.168331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.404362, 30.188286, 25.631153>,  <41.549625, 30.695269, 26.162357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.404362, 30.188286, 25.631153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068478, 30.395340, 25.696800>,  <40.866947, 30.519571, 25.736189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.068478, 30.395340, 25.696800>,  <41.404362, 30.188286, 25.631153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.068478, 30.395340, 25.696800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097431, 0.153710, -0.983301,
		-0.534217, -0.841682, -0.078639,
		-0.839714, 0.517634, 0.164120,
		40.816563, 30.550631, 25.746037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.052189, 30.105989, 25.097546>,  <41.404362, 30.188286, 25.631153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.052189, 30.105989, 25.097546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.834839, 30.412258, 25.235233>,  <40.704430, 30.596020, 25.317846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.834839, 30.412258, 25.235233>,  <41.052189, 30.105989, 25.097546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.834839, 30.412258, 25.235233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144548, 0.318577, -0.936811,
		-0.826950, -0.558798, -0.062431,
		-0.543378, 0.765672, 0.344221,
		40.671825, 30.641960, 25.338499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.360680, 30.096439, 24.742733>,  <41.052189, 30.105989, 25.097546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.360680, 30.096439, 24.742733> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.382202, 30.459728, 24.908741>,  <40.395115, 30.677702, 25.008347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.382202, 30.459728, 24.908741>,  <40.360680, 30.096439, 24.742733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382202, 30.459728, 24.908741> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336961, 0.407758, -0.848641,
		-0.939980, -0.094182, 0.327975,
		0.053807, 0.908220, 0.415020,
		40.398346, 30.732195, 25.033247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.666557, 30.322807, 24.892012>,  <40.360680, 30.096439, 24.742733>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.666557, 30.322807, 24.892012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917194, 30.629940, 24.838615>,  <40.067577, 30.814220, 24.806578>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.917194, 30.629940, 24.838615>,  <39.666557, 30.322807, 24.892012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.917194, 30.629940, 24.838615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519973, 0.284291, -0.805485,
		-0.580527, 0.574120, 0.577385,
		0.626591, 0.767831, -0.133489,
		40.105171, 30.860289, 24.798569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.395218, 30.939444, 24.544025>,  <39.666557, 30.322807, 24.892012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.395218, 30.939444, 24.544025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166058, 30.672207, 24.354103>,  <39.028561, 30.511864, 24.240150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.166058, 30.672207, 24.354103>,  <39.395218, 30.939444, 24.544025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166058, 30.672207, 24.354103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506378, -0.167003, 0.845985,
		-0.644490, 0.725094, -0.242632,
		-0.572899, -0.668093, -0.474804,
		38.994186, 30.471779, 24.211662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.737564, 31.044697, 24.757380>,  <39.395218, 30.939444, 24.544025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.737564, 31.044697, 24.757380> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.721886, 30.672394, 24.611965>,  <38.712479, 30.449013, 24.524717>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.721886, 30.672394, 24.611965>,  <38.737564, 31.044697, 24.757380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.721886, 30.672394, 24.611965> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559338, -0.281040, 0.779844,
		-0.828013, 0.233903, -0.509592,
		-0.039192, -0.930755, -0.363536,
		38.710129, 30.393167, 24.502905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015583, 30.904573, 24.746044>,  <38.737564, 31.044697, 24.757380>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015583, 30.904573, 24.746044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225079, 30.563877, 24.752136>,  <38.350777, 30.359459, 24.755791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.225079, 30.563877, 24.752136>,  <38.015583, 30.904573, 24.746044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.225079, 30.563877, 24.752136> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587346, -0.348097, 0.730652,
		-0.617027, -0.391615, -0.682580,
		0.523738, -0.851743, 0.015228,
		38.382198, 30.308353, 24.756704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437702, 30.388411, 24.754049>,  <38.015583, 30.904573, 24.746044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437702, 30.388411, 24.754049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781986, 30.240940, 24.894478>,  <37.988556, 30.152458, 24.978735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.781986, 30.240940, 24.894478>,  <37.437702, 30.388411, 24.754049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.781986, 30.240940, 24.894478> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367116, 0.028276, 0.929745,
		-0.352702, -0.929128, -0.111010,
		0.860713, -0.368676, 0.351070,
		38.040199, 30.130337, 24.999800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.210106, 29.859314, 25.165165>,  <37.437702, 30.388411, 24.754049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.210106, 29.859314, 25.165165> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585224, 29.945210, 25.274284>,  <37.810295, 29.996746, 25.339756>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.585224, 29.945210, 25.274284>,  <37.210106, 29.859314, 25.165165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585224, 29.945210, 25.274284> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266351, -0.058984, 0.962070,
		0.222685, -0.974889, 0.001881,
		0.937800, 0.214740, 0.272798,
		37.866566, 30.009630, 25.356123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.256962, 29.486662, 25.719158>,  <37.210106, 29.859314, 25.165165>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.256962, 29.486662, 25.719158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.579079, 29.722084, 25.747738>,  <37.772350, 29.863337, 25.764885>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.579079, 29.722084, 25.747738>,  <37.256962, 29.486662, 25.719158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579079, 29.722084, 25.747738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022352, -0.090286, 0.995665,
		0.592454, -0.803400, -0.059551,
		0.805294, 0.588555, 0.071448,
		37.820667, 29.898651, 25.769173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.582821, 29.275574, 26.369345>,  <37.256962, 29.486662, 25.719158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.582821, 29.275574, 26.369345> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747665, 29.635483, 26.311962>,  <37.846573, 29.851427, 26.277533>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.747665, 29.635483, 26.311962>,  <37.582821, 29.275574, 26.369345>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.747665, 29.635483, 26.311962> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130633, 0.097473, 0.986628,
		0.901721, -0.425338, -0.077370,
		0.412109, 0.899770, -0.143456,
		37.871300, 29.905415, 26.268925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313717, 29.305691, 26.569546>,  <37.582821, 29.275574, 26.369345>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313717, 29.305691, 26.569546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.128399, 29.657612, 26.612080>,  <38.017208, 29.868765, 26.637600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.128399, 29.657612, 26.612080>,  <38.313717, 29.305691, 26.569546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128399, 29.657612, 26.612080> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061831, -0.087604, 0.994235,
		0.884046, 0.467195, -0.013812,
		-0.463292, 0.879803, 0.106333,
		37.989410, 29.921553, 26.643980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706905, 29.642805, 27.141603>,  <38.313717, 29.305691, 26.569546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706905, 29.642805, 27.141603> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.366909, 29.847939, 27.093399>,  <38.162910, 29.971018, 27.064476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.366909, 29.847939, 27.093399>,  <38.706905, 29.642805, 27.141603>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.366909, 29.847939, 27.093399> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106474, 0.056795, 0.992692,
		0.515930, 0.856607, 0.006329,
		-0.849988, 0.512834, -0.120509,
		38.111912, 30.001789, 27.057247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.751972, 30.289852, 27.633692>,  <38.706905, 29.642805, 27.141603>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.751972, 30.289852, 27.633692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370667, 30.204048, 27.548580>,  <38.141884, 30.152567, 27.497513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.370667, 30.204048, 27.548580>,  <38.751972, 30.289852, 27.633692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370667, 30.204048, 27.548580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254059, 0.187916, 0.948758,
		-0.163532, 0.958475, -0.233631,
		-0.953264, -0.214508, -0.212778,
		38.084686, 30.139696, 27.484747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.500706, 30.693558, 28.170195>,  <38.751972, 30.289852, 27.633692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.500706, 30.693558, 28.170195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204685, 30.461933, 28.033371>,  <38.027073, 30.322958, 27.951277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.204685, 30.461933, 28.033371>,  <38.500706, 30.693558, 28.170195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204685, 30.461933, 28.033371> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436106, 0.025998, 0.899520,
		-0.511986, 0.814869, -0.271773,
		-0.740056, -0.579063, -0.342058,
		37.982670, 30.288214, 27.930754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.821686, 31.033419, 28.292639>,  <38.500706, 30.693558, 28.170195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.821686, 31.033419, 28.292639> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.745590, 30.641033, 28.277046>,  <37.699932, 30.405602, 28.267691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.745590, 30.641033, 28.277046>,  <37.821686, 31.033419, 28.292639>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.745590, 30.641033, 28.277046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345216, 0.029674, 0.938054,
		-0.919040, 0.191913, -0.344289,
		-0.190241, -0.980963, -0.038980,
		37.688519, 30.346745, 28.265352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.276562, 31.037119, 28.676735>,  <37.821686, 31.033419, 28.292639>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.276562, 31.037119, 28.676735> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381039, 30.651005, 28.676235>,  <37.443726, 30.419336, 28.675936>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.381039, 30.651005, 28.676235>,  <37.276562, 31.037119, 28.676735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.381039, 30.651005, 28.676235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236059, -0.065130, 0.969554,
		-0.935977, -0.252947, -0.244876,
		0.261195, -0.965286, -0.001250,
		37.459396, 30.361420, 28.675859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841335, 30.711163, 29.189394>,  <37.276562, 31.037119, 28.676735>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841335, 30.711163, 29.189394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142414, 30.456615, 29.121895>,  <37.323063, 30.303886, 29.081396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.142414, 30.456615, 29.121895>,  <36.841335, 30.711163, 29.189394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.142414, 30.456615, 29.121895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023469, -0.282083, 0.959103,
		-0.657945, -0.717957, -0.227259,
		0.752701, -0.636370, -0.168746,
		37.368225, 30.265705, 29.071272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630043, 30.067451, 29.456686>,  <36.841335, 30.711163, 29.189394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630043, 30.067451, 29.456686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029865, 30.056328, 29.452480>,  <37.269760, 30.049654, 29.449957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.029865, 30.056328, 29.452480>,  <36.630043, 30.067451, 29.456686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029865, 30.056328, 29.452480> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003357, -0.245875, 0.969296,
		-0.029540, -0.968903, -0.245673,
		0.999558, -0.027808, -0.010516,
		37.329731, 30.047985, 29.449326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.728577, 29.406740, 29.706196>,  <36.630043, 30.067451, 29.456686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.728577, 29.406740, 29.706196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042870, 29.644249, 29.775539>,  <37.231445, 29.786755, 29.817146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.042870, 29.644249, 29.775539>,  <36.728577, 29.406740, 29.706196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042870, 29.644249, 29.775539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008544, -0.269816, 0.962874,
		0.618502, -0.758047, -0.206931,
		0.785737, 0.593772, 0.173359,
		37.278591, 29.822380, 29.827547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120865, 29.043221, 30.136120>,  <36.728577, 29.406740, 29.706196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120865, 29.043221, 30.136120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280392, 29.399689, 30.222622>,  <37.376106, 29.613569, 30.274523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.280392, 29.399689, 30.222622>,  <37.120865, 29.043221, 30.136120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.280392, 29.399689, 30.222622> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014242, -0.241811, 0.970219,
		0.916922, -0.383856, -0.109130,
		0.398813, 0.891169, 0.216254,
		37.400036, 29.667040, 30.287498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698841, 28.818407, 30.569538>,  <37.120865, 29.043221, 30.136120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698841, 28.818407, 30.569538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649559, 29.212391, 30.617989>,  <37.619991, 29.448782, 30.647058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.649559, 29.212391, 30.617989>,  <37.698841, 28.818407, 30.569538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.649559, 29.212391, 30.617989> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059351, -0.114525, 0.991646,
		0.990605, 0.129362, -0.044348,
		-0.123202, 0.984962, 0.121127,
		37.612598, 29.507879, 30.654327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.262409, 29.102715, 31.053104>,  <37.698841, 28.818407, 30.569538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.262409, 29.102715, 31.053104> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965176, 29.370098, 31.065712>,  <37.786835, 29.530527, 31.073277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.965176, 29.370098, 31.065712>,  <38.262409, 29.102715, 31.053104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.965176, 29.370098, 31.065712> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098459, 0.062618, 0.993169,
		0.661918, 0.741109, -0.112347,
		-0.743082, 0.668458, 0.031521,
		37.742252, 29.570635, 31.075169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.576630, 29.720449, 31.483686>,  <38.262409, 29.102715, 31.053104>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.576630, 29.720449, 31.483686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177055, 29.738544, 31.487240>,  <37.937309, 29.749401, 31.489372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.177055, 29.738544, 31.487240>,  <38.576630, 29.720449, 31.483686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177055, 29.738544, 31.487240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016222, 0.164581, 0.986230,
		0.043153, 0.985326, -0.165140,
		-0.998937, 0.045237, 0.008881,
		37.877373, 29.752115, 31.489904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.299953, 30.275652, 31.834650>,  <38.576630, 29.720449, 31.483686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.299953, 30.275652, 31.834650> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023304, 29.988541, 31.866779>,  <37.857315, 29.816273, 31.886057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.023304, 29.988541, 31.866779>,  <38.299953, 30.275652, 31.834650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.023304, 29.988541, 31.866779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027387, 0.137193, 0.990166,
		-0.721741, 0.682620, -0.114544,
		-0.691621, -0.717780, 0.080323,
		37.815819, 29.773207, 31.890877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<23.555847, 29.931168, 30.701433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.911177, 29.851494, 30.866940>,  <24.124374, 29.803690, 30.966244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.911177, 29.851494, 30.866940>,  <23.555847, 29.931168, 30.701433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.911177, 29.851494, 30.866940> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431822, -0.668868, 0.605100,
		0.156228, -0.716199, -0.680185,
		0.888326, -0.199185, 0.413767,
		24.177675, 29.791739, 30.991070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.475031, 29.190634, 30.751598>,  <23.555847, 29.931168, 30.701433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.475031, 29.190634, 30.751598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.770794, 29.301640, 30.996960>,  <23.948252, 29.368244, 31.144176>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.770794, 29.301640, 30.996960>,  <23.475031, 29.190634, 30.751598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.770794, 29.301640, 30.996960> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375541, -0.586181, 0.717886,
		0.558790, -0.761168, -0.329208,
		0.739407, 0.277517, 0.613402,
		23.992617, 29.384895, 31.180981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.737162, 28.577196, 31.073921>,  <23.475031, 29.190634, 30.751598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.737162, 28.577196, 31.073921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.871380, 28.868938, 31.312401>,  <23.951910, 29.043983, 31.455488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.871380, 28.868938, 31.312401>,  <23.737162, 28.577196, 31.073921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.871380, 28.868938, 31.312401> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112634, -0.597287, 0.794079,
		0.935266, -0.333602, -0.118267,
		0.335546, 0.729355, 0.596197,
		23.972044, 29.087746, 31.491261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.309517, 28.287209, 31.468355>,  <23.737162, 28.577196, 31.073921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.309517, 28.287209, 31.468355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.183924, 28.609837, 31.668697>,  <24.108568, 28.803413, 31.788902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.183924, 28.609837, 31.668697>,  <24.309517, 28.287209, 31.468355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.183924, 28.609837, 31.668697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135573, -0.560218, 0.817175,
		0.939700, 0.188675, 0.285248,
		-0.313981, 0.806571, 0.500857,
		24.089729, 28.851809, 31.818954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.601007, 28.228571, 32.129322>,  <24.309517, 28.287209, 31.468355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.601007, 28.228571, 32.129322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.312859, 28.485516, 32.233959>,  <24.139969, 28.639683, 32.296741>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.312859, 28.485516, 32.233959>,  <24.601007, 28.228571, 32.129322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.312859, 28.485516, 32.233959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262688, -0.601751, 0.754248,
		0.641917, 0.474622, 0.602227,
		-0.720373, 0.642362, 0.261597,
		24.096746, 28.678225, 32.312439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708122, 28.444525, 32.842705>,  <24.601007, 28.228571, 32.129322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708122, 28.444525, 32.842705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.320978, 28.516960, 32.772896>,  <24.088692, 28.560421, 32.731010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.320978, 28.516960, 32.772896>,  <24.708122, 28.444525, 32.842705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.320978, 28.516960, 32.772896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248001, -0.571901, 0.781937,
		0.041789, 0.800085, 0.598429,
		-0.967858, 0.181087, -0.174523,
		24.030621, 28.571285, 32.720539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.392643, 28.553507, 33.511303>,  <24.708122, 28.444525, 32.842705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.392643, 28.553507, 33.511303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.108025, 28.440655, 33.253899>,  <23.937252, 28.372944, 33.099457>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.108025, 28.440655, 33.253899>,  <24.392643, 28.553507, 33.511303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.108025, 28.440655, 33.253899> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362667, -0.636951, 0.680269,
		-0.601807, 0.717423, 0.350902,
		-0.711548, -0.282130, -0.643507,
		23.894560, 28.356016, 33.060848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.671955, 28.557690, 33.874096>,  <24.392643, 28.553507, 33.511303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.671955, 28.557690, 33.874096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.625063, 28.330051, 33.548546>,  <23.596928, 28.193470, 33.353218>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.625063, 28.330051, 33.548546>,  <23.671955, 28.557690, 33.874096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.625063, 28.330051, 33.548546> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335475, -0.748657, 0.571813,
		-0.934727, 0.340068, -0.103152,
		-0.117230, -0.569093, -0.813874,
		23.589893, 28.159323, 33.304382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.151621, 28.204302, 34.081177>,  <23.671955, 28.557690, 33.874096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.151621, 28.204302, 34.081177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.226992, 27.997887, 33.746944>,  <23.272215, 27.874039, 33.546406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.226992, 27.997887, 33.746944>,  <23.151621, 28.204302, 34.081177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.226992, 27.997887, 33.746944> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541633, -0.764335, 0.349893,
		-0.819224, 0.386650, -0.423525,
		0.188429, -0.516036, -0.835584,
		23.283520, 27.843075, 33.496269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.551258, 27.889732, 33.783394>,  <23.151621, 28.204302, 34.081177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.551258, 27.889732, 33.783394> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.876768, 27.672020, 33.701874>,  <23.072073, 27.541393, 33.652962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.876768, 27.672020, 33.701874>,  <22.551258, 27.889732, 33.783394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.876768, 27.672020, 33.701874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378024, -0.762046, 0.525723,
		-0.441443, -0.350780, -0.825883,
		0.813773, -0.544280, -0.203797,
		23.120899, 27.508736, 33.640736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.291452, 27.288818, 33.658409>,  <22.551258, 27.889732, 33.783394>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.291452, 27.288818, 33.658409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.670660, 27.178299, 33.721554>,  <22.898184, 27.111988, 33.759441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.670660, 27.178299, 33.721554>,  <22.291452, 27.288818, 33.658409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.670660, 27.178299, 33.721554> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316709, -0.867434, 0.383737,
		0.030906, -0.413785, -0.909850,
		0.948019, -0.276298, 0.157858,
		22.955067, 27.095409, 33.768909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.236050, 26.510494, 33.680920>,  <22.291452, 27.288818, 33.658409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.236050, 26.510494, 33.680920> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.597631, 26.597900, 33.827953>,  <22.814581, 26.650343, 33.916172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.597631, 26.597900, 33.827953>,  <22.236050, 26.510494, 33.680920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.597631, 26.597900, 33.827953> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048017, -0.802282, 0.595011,
		0.424922, -0.555514, -0.714734,
		0.903955, 0.218514, 0.367581,
		22.868818, 26.663454, 33.938229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.491863, 25.812740, 33.843307>,  <22.236050, 26.510494, 33.680920>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.491863, 25.812740, 33.843307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.715551, 26.080364, 34.039116>,  <22.849764, 26.240938, 34.156601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.715551, 26.080364, 34.039116>,  <22.491863, 25.812740, 33.843307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.715551, 26.080364, 34.039116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096971, -0.639219, 0.762887,
		0.823329, -0.379152, -0.422343,
		0.559220, 0.669061, 0.489521,
		22.883318, 26.281082, 34.185970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.875221, 25.451347, 34.224968>,  <22.491863, 25.812740, 33.843307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.875221, 25.451347, 34.224968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.923599, 25.809364, 34.396679>,  <22.952625, 26.024174, 34.499706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<22.923599, 25.809364, 34.396679>,  <22.875221, 25.451347, 34.224968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<22.923599, 25.809364, 34.396679> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014695, -0.430786, 0.902335,
		0.992551, -0.115440, -0.038948,
		0.120944, 0.895040, 0.429273,
		22.959883, 26.077877, 34.525459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.426882, 25.154020, 34.678806>,  <22.875221, 25.451347, 34.224968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.426882, 25.154020, 34.678806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.303135, 24.901794, 34.394081>,  <23.228888, 24.750460, 34.223244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.303135, 24.901794, 34.394081>,  <23.426882, 25.154020, 34.678806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.303135, 24.901794, 34.394081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516952, 0.516753, -0.682442,
		0.798156, -0.579099, 0.166106,
		-0.309366, -0.630564, -0.711815,
		23.210325, 24.712626, 34.180538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.796675, 25.346142, 34.228096>,  <23.426882, 25.154020, 34.678806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.796675, 25.346142, 34.228096> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.568214, 25.100670, 34.010036>,  <23.431139, 24.953386, 33.879200>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.568214, 25.100670, 34.010036>,  <23.796675, 25.346142, 34.228096>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.568214, 25.100670, 34.010036> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418359, 0.353766, -0.836556,
		0.706233, -0.705864, 0.054687,
		-0.571148, -0.613682, -0.545146,
		23.396870, 24.916565, 33.846493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.279831, 24.924469, 33.758976>,  <23.796675, 25.346142, 34.228096>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.279831, 24.924469, 33.758976> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.901558, 24.973839, 33.638680>,  <23.674593, 25.003460, 33.566502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.901558, 24.973839, 33.638680>,  <24.279831, 24.924469, 33.758976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.901558, 24.973839, 33.638680> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323411, 0.263426, -0.908852,
		-0.032951, -0.956751, -0.289035,
		-0.945685, 0.123425, -0.300744,
		23.617853, 25.010866, 33.548458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.324184, 24.819389, 33.083443>,  <24.279831, 24.924469, 33.758976>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.324184, 24.819389, 33.083443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.948664, 24.957165, 33.082047>,  <23.723351, 25.039829, 33.081211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.948664, 24.957165, 33.082047>,  <24.324184, 24.819389, 33.083443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.948664, 24.957165, 33.082047> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103374, 0.272071, -0.956709,
		-0.328577, -0.898521, -0.291027,
		-0.938803, 0.344437, -0.003487,
		23.667023, 25.060495, 33.081001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043110, 24.443529, 32.542763>,  <24.324184, 24.819389, 33.083443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043110, 24.443529, 32.542763> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.844954, 24.786373, 32.599258>,  <23.726061, 24.992081, 32.633156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.844954, 24.786373, 32.599258>,  <24.043110, 24.443529, 32.542763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.844954, 24.786373, 32.599258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122841, 0.230084, -0.965387,
		-0.859941, -0.460892, -0.219269,
		-0.495390, 0.857111, 0.141242,
		23.696337, 25.043507, 32.641632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.550032, 24.512741, 31.978994>,  <24.043110, 24.443529, 32.542763>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.550032, 24.512741, 31.978994> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.574974, 24.885277, 32.122505>,  <23.589939, 25.108797, 32.208611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.574974, 24.885277, 32.122505>,  <23.550032, 24.512741, 31.978994>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.574974, 24.885277, 32.122505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139327, 0.347833, -0.927146,
		-0.988281, 0.107803, -0.108070,
		0.062358, 0.931338, 0.358777,
		23.593681, 25.164679, 32.230137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.259085, 24.850424, 31.423603>,  <23.550032, 24.512741, 31.978994>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.259085, 24.850424, 31.423603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.439369, 25.137791, 31.635540>,  <23.547539, 25.310211, 31.762703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.439369, 25.137791, 31.635540>,  <23.259085, 24.850424, 31.423603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.439369, 25.137791, 31.635540> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319096, 0.424670, -0.847251,
		-0.833690, 0.550935, -0.037842,
		0.450710, 0.718419, 0.529844,
		23.574581, 25.353317, 31.794493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.103251, 25.395660, 31.006657>,  <23.259085, 24.850424, 31.423603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.103251, 25.395660, 31.006657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.405098, 25.494141, 31.249947>,  <23.586206, 25.553228, 31.395920>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.405098, 25.494141, 31.249947>,  <23.103251, 25.395660, 31.006657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.405098, 25.494141, 31.249947> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528759, 0.320717, -0.785846,
		-0.388543, 0.914618, 0.111838,
		0.754618, 0.246200, 0.608225,
		23.631483, 25.568001, 31.432415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.266335, 26.003906, 30.765255>,  <23.103251, 25.395660, 31.006657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.266335, 26.003906, 30.765255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.594507, 25.876442, 30.955135>,  <23.791410, 25.799963, 31.069063>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.594507, 25.876442, 30.955135>,  <23.266335, 26.003906, 30.765255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.594507, 25.876442, 30.955135> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570211, 0.395334, -0.720118,
		0.041809, 0.861490, 0.506051,
		0.820434, -0.318663, 0.474703,
		23.840637, 25.780844, 31.097546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.603788, 26.526583, 30.915117>,  <23.266335, 26.003906, 30.765255>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.603788, 26.526583, 30.915117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.862741, 26.221966, 30.902790>,  <24.018114, 26.039196, 30.895393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<23.862741, 26.221966, 30.902790>,  <23.603788, 26.526583, 30.915117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<23.862741, 26.221966, 30.902790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609303, 0.541413, -0.579328,
		0.457868, 0.356269, 0.814512,
		0.647384, -0.761541, -0.030820,
		24.056957, 25.993504, 30.893543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.157688, 26.950924, 30.814692>,  <23.603788, 26.526583, 30.915117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.157688, 26.950924, 30.814692> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.307196, 26.589855, 30.729389>,  <24.396900, 26.373213, 30.678207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.307196, 26.589855, 30.729389>,  <24.157688, 26.950924, 30.814692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.307196, 26.589855, 30.729389> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650943, 0.419073, -0.632969,
		0.660734, 0.097768, 0.744226,
		0.373769, -0.902673, -0.213255,
		24.419327, 26.319054, 30.665413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.889116, 27.019772, 30.808342>,  <24.157688, 26.950924, 30.814692>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.889116, 27.019772, 30.808342> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.837677, 26.681061, 30.601875>,  <24.806814, 26.477835, 30.477995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<24.837677, 26.681061, 30.601875>,  <24.889116, 27.019772, 30.808342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<24.837677, 26.681061, 30.601875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645615, 0.323597, -0.691712,
		0.752757, -0.422199, 0.505079,
		-0.128598, -0.846778, -0.516168,
		24.799097, 26.427027, 30.447025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.540394, 26.692026, 30.688404>,  <24.889116, 27.019772, 30.808342>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.540394, 26.692026, 30.688404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.284321, 26.598927, 30.395557>,  <25.130676, 26.543066, 30.219849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.284321, 26.598927, 30.395557>,  <25.540394, 26.692026, 30.688404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284321, 26.598927, 30.395557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674778, 0.285165, -0.680702,
		0.367207, -0.929789, -0.025503,
		-0.640183, -0.232750, -0.732116,
		25.092266, 26.529102, 30.175922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.865744, 26.483629, 30.141663>,  <25.540394, 26.692026, 30.688404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.865744, 26.483629, 30.141663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.519180, 26.572990, 29.963032>,  <25.311243, 26.626608, 29.855854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<25.519180, 26.572990, 29.963032>,  <25.865744, 26.483629, 30.141663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<25.519180, 26.572990, 29.963032> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488302, 0.192077, -0.851274,
		-0.104400, -0.955614, -0.275505,
		-0.866407, 0.223403, -0.446576,
		25.259258, 26.640011, 29.829060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277912, 25.879328, 30.241570>,  <25.865744, 26.483629, 30.141663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277912, 25.879328, 30.241570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.552132, 25.627674, 30.095028>,  <26.716663, 25.476681, 30.007103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.552132, 25.627674, 30.095028>,  <26.277912, 25.879328, 30.241570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.552132, 25.627674, 30.095028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154271, -0.617320, 0.771438,
		-0.711496, -0.472339, -0.520259,
		0.685547, -0.629136, -0.366352,
		26.757795, 25.438934, 29.985123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.029720, 25.248585, 30.134483>,  <26.277912, 25.879328, 30.241570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.029720, 25.248585, 30.134483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.419699, 25.170795, 30.177681>,  <26.653685, 25.124121, 30.203600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.419699, 25.170795, 30.177681>,  <26.029720, 25.248585, 30.134483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.419699, 25.170795, 30.177681> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194682, -0.511081, 0.837194,
		-0.107619, -0.837243, -0.536137,
		0.974944, -0.194475, 0.107994,
		26.712181, 25.112453, 30.210079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.094223, 24.478039, 30.171797>,  <26.029720, 25.248585, 30.134483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.094223, 24.478039, 30.171797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.439127, 24.614738, 30.321312>,  <26.646069, 24.696758, 30.411020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.439127, 24.614738, 30.321312>,  <26.094223, 24.478039, 30.171797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.439127, 24.614738, 30.321312> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122751, -0.575010, 0.808885,
		0.491367, -0.743351, -0.453857,
		0.862259, 0.341748, 0.373788,
		26.697805, 24.717262, 30.433449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.462669, 23.926289, 30.425432>,  <26.094223, 24.478039, 30.171797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.462669, 23.926289, 30.425432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635998, 24.226131, 30.625561>,  <26.739996, 24.406036, 30.745638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635998, 24.226131, 30.625561>,  <26.462669, 23.926289, 30.425432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635998, 24.226131, 30.625561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113814, -0.505188, 0.855472,
		0.894024, -0.427638, -0.133593,
		0.433322, 0.749607, 0.500321,
		26.765995, 24.451014, 30.775658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.985563, 23.611521, 30.806736>,  <26.462669, 23.926289, 30.425432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.985563, 23.611521, 30.806736> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.891352, 23.951515, 30.995224>,  <26.834824, 24.155512, 31.108316>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.891352, 23.951515, 30.995224>,  <26.985563, 23.611521, 30.806736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.891352, 23.951515, 30.995224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209290, -0.517844, 0.829479,
		0.949065, 0.096746, 0.299861,
		-0.235530, 0.849987, 0.471219,
		26.820692, 24.206511, 31.136589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.361826, 23.597034, 31.441587>,  <26.985563, 23.611521, 30.806736>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.361826, 23.597034, 31.441587> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.115746, 23.895229, 31.544174>,  <26.968098, 24.074146, 31.605726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.115746, 23.895229, 31.544174>,  <27.361826, 23.597034, 31.441587>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.115746, 23.895229, 31.544174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053337, -0.363922, 0.929901,
		0.786564, 0.558397, 0.263647,
		-0.615201, 0.745489, 0.256465,
		26.931185, 24.118876, 31.621113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.552858, 23.818130, 32.118305>,  <27.361826, 23.597034, 31.441587>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.552858, 23.818130, 32.118305> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.180613, 23.960171, 32.082832>,  <26.957266, 24.045395, 32.061550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.180613, 23.960171, 32.082832>,  <27.552858, 23.818130, 32.118305>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180613, 23.960171, 32.082832> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252634, -0.447903, 0.857647,
		0.264830, 0.820541, 0.506535,
		-0.930613, 0.355099, -0.088678,
		26.901428, 24.066700, 32.056229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.026152, 24.346014, 32.256714>,  <27.552858, 23.818130, 32.118305>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.026152, 24.346014, 32.256714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.281296, 24.388474, 32.561836>,  <28.434381, 24.413950, 32.744907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.281296, 24.388474, 32.561836>,  <28.026152, 24.346014, 32.256714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281296, 24.388474, 32.561836> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287668, 0.885930, -0.363833,
		-0.714412, 0.451508, 0.534562,
		0.637858, 0.106151, 0.762804,
		28.472652, 24.420319, 32.790676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.936432, 25.022772, 32.480579>,  <28.026152, 24.346014, 32.256714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.936432, 25.022772, 32.480579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.302515, 24.900097, 32.585148>,  <28.522165, 24.826492, 32.647888>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.302515, 24.900097, 32.585148>,  <27.936432, 25.022772, 32.480579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.302515, 24.900097, 32.585148> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377720, 0.878919, -0.291254,
		-0.140441, 0.365300, 0.920235,
		0.915207, -0.306687, 0.261418,
		28.577078, 24.808090, 32.663574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209719, 25.590483, 32.633244>,  <27.936432, 25.022772, 32.480579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209719, 25.590483, 32.633244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.528587, 25.350510, 32.606117>,  <28.719910, 25.206526, 32.589844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.528587, 25.350510, 32.606117>,  <28.209719, 25.590483, 32.633244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.528587, 25.350510, 32.606117> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543708, 0.762182, -0.351370,
		0.262484, 0.243231, 0.933778,
		0.797173, -0.599931, -0.067814,
		28.767738, 25.170530, 32.585773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.769949, 25.999258, 32.894588>,  <28.209719, 25.590483, 32.633244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.769949, 25.999258, 32.894588> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943241, 25.709286, 32.680378>,  <29.047216, 25.535303, 32.551849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.943241, 25.709286, 32.680378>,  <28.769949, 25.999258, 32.894588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.943241, 25.709286, 32.680378> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568115, 0.680924, -0.462156,
		0.699684, -0.104023, 0.706839,
		0.433229, -0.724929, -0.535529,
		29.073210, 25.491808, 32.519718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537582, 26.074263, 32.951744>,  <28.769949, 25.999258, 32.894588>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537582, 26.074263, 32.951744> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443529, 25.866932, 32.622856>,  <29.387096, 25.742533, 32.425522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.443529, 25.866932, 32.622856>,  <29.537582, 26.074263, 32.951744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.443529, 25.866932, 32.622856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681559, 0.515181, -0.519678,
		0.692957, -0.682587, 0.232134,
		-0.235135, -0.518328, -0.822222,
		29.372988, 25.711433, 32.376190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.125162, 25.876564, 32.653809>,  <29.537582, 26.074263, 32.951744>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.125162, 25.876564, 32.653809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870211, 25.870968, 32.345638>,  <29.717239, 25.867611, 32.160736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.870211, 25.870968, 32.345638>,  <30.125162, 25.876564, 32.653809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.870211, 25.870968, 32.345638> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658455, 0.509437, -0.553996,
		0.400233, -0.860394, -0.315491,
		-0.637378, -0.013991, -0.770425,
		29.678997, 25.866770, 32.114510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.546410, 25.741692, 32.138664>,  <30.125162, 25.876564, 32.653809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.546410, 25.741692, 32.138664> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219965, 25.837315, 31.928211>,  <30.024097, 25.894688, 31.801941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.219965, 25.837315, 31.928211>,  <30.546410, 25.741692, 32.138664>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219965, 25.837315, 31.928211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570549, 0.188637, -0.799306,
		-0.091833, -0.952506, -0.290343,
		-0.816113, 0.239058, -0.526128,
		29.975130, 25.909031, 31.770372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.243500, 26.044750, 35.245838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.866966, 26.173660, 35.205784>,  <25.641047, 26.251005, 35.181751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.866966, 26.173660, 35.205784>,  <26.243500, 26.044750, 35.245838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.866966, 26.173660, 35.205784> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269180, 0.538066, -0.798766,
		-0.203542, -0.778862, -0.593250,
		-0.941336, 0.322274, -0.100135,
		25.584566, 26.270342, 35.175743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.136688, 25.920027, 34.547119>,  <26.243500, 26.044750, 35.245838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.136688, 25.920027, 34.547119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.871292, 26.184013, 34.688103>,  <25.712055, 26.342405, 34.772694>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.871292, 26.184013, 34.688103>,  <26.136688, 25.920027, 34.547119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.871292, 26.184013, 34.688103> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092370, 0.539732, -0.836754,
		-0.742461, -0.522621, -0.419068,
		-0.663490, 0.659967, 0.352455,
		25.672245, 26.382004, 34.793839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.681143, 26.112547, 33.997715>,  <26.136688, 25.920027, 34.547119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.681143, 26.112547, 33.997715> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.606337, 26.412647, 34.251377>,  <25.561453, 26.592707, 34.403572>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.606337, 26.412647, 34.251377>,  <25.681143, 26.112547, 33.997715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.606337, 26.412647, 34.251377> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028114, 0.649364, -0.759958,
		-0.981954, -0.124296, -0.142535,
		-0.187017, 0.750251, 0.634152,
		25.550232, 26.637722, 34.441624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.113195, 26.515013, 33.716030>,  <25.681143, 26.112547, 33.997715>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.113195, 26.515013, 33.716030> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.325268, 26.776894, 33.931538>,  <25.452511, 26.934023, 34.060844>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.325268, 26.776894, 33.931538>,  <25.113195, 26.515013, 33.716030>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.325268, 26.776894, 33.931538> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002002, 0.636393, -0.771363,
		-0.847883, 0.407882, 0.338713,
		0.530179, 0.654703, 0.538770,
		25.484322, 26.973305, 34.093170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.999935, 27.152592, 33.436176>,  <25.113195, 26.515013, 33.716030>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.999935, 27.152592, 33.436176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.310623, 27.260204, 33.663975>,  <25.497036, 27.324772, 33.800655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.310623, 27.260204, 33.663975>,  <24.999935, 27.152592, 33.436176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310623, 27.260204, 33.663975> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134451, 0.812524, -0.567210,
		-0.615329, 0.517132, 0.594932,
		0.776719, 0.269032, 0.569499,
		25.543638, 27.340914, 33.834824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.789742, 27.833900, 33.651699>,  <24.999935, 27.152592, 33.436176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.789742, 27.833900, 33.651699> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.185118, 27.803181, 33.703987>,  <25.422344, 27.784748, 33.735359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.185118, 27.803181, 33.703987>,  <24.789742, 27.833900, 33.651699>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185118, 27.803181, 33.703987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130117, 0.872266, -0.471405,
		-0.077821, 0.482964, 0.872175,
		0.988440, -0.076800, 0.130723,
		25.481649, 27.780140, 33.743202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.100981, 28.498005, 33.874275>,  <24.789742, 27.833900, 33.651699>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.100981, 28.498005, 33.874275> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.432268, 28.307789, 33.755672>,  <25.631041, 28.193659, 33.684513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.432268, 28.307789, 33.755672>,  <25.100981, 28.498005, 33.874275>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.432268, 28.307789, 33.755672> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316542, 0.833575, -0.452719,
		0.462443, 0.281095, 0.840911,
		0.828220, -0.475540, -0.296502,
		25.680735, 28.165127, 33.666721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.771997, 28.786623, 34.174084>,  <25.100981, 28.498005, 33.874275>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.771997, 28.786623, 34.174084> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.893595, 28.602432, 33.840485>,  <25.966553, 28.491919, 33.640324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.893595, 28.602432, 33.840485>,  <25.771997, 28.786623, 34.174084>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.893595, 28.602432, 33.840485> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423939, 0.849358, -0.314431,
		0.853150, -0.257979, 0.453411,
		0.303992, -0.460476, -0.833997,
		25.984793, 28.464289, 33.590286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429771, 28.900513, 34.020340>,  <25.771997, 28.786623, 34.174084>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429771, 28.900513, 34.020340> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.324625, 28.778145, 33.654320>,  <26.261538, 28.704723, 33.434708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.324625, 28.778145, 33.654320>,  <26.429771, 28.900513, 34.020340>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324625, 28.778145, 33.654320> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622480, 0.670843, -0.403099,
		0.737170, -0.675560, 0.014088,
		-0.262867, -0.305922, -0.915048,
		26.245766, 28.686369, 33.379807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.059086, 28.614723, 33.661324>,  <26.429771, 28.900513, 34.020340>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.059086, 28.614723, 33.661324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.782042, 28.726601, 33.395374>,  <26.615814, 28.793728, 33.235806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.782042, 28.726601, 33.395374>,  <27.059086, 28.614723, 33.661324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782042, 28.726601, 33.395374> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701188, 0.477275, -0.529665,
		0.169184, -0.833055, -0.526685,
		-0.692613, 0.279695, -0.664875,
		26.574257, 28.810509, 33.195911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457142, 28.863503, 33.219391>,  <27.059086, 28.614723, 33.661324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457142, 28.863503, 33.219391> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111347, 28.980984, 33.056221>,  <26.903870, 29.051472, 32.958321>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.111347, 28.980984, 33.056221>,  <27.457142, 28.863503, 33.219391>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.111347, 28.980984, 33.056221> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494394, 0.643352, -0.584527,
		0.090762, -0.706991, -0.701374,
		-0.864486, 0.293702, -0.407924,
		26.852001, 29.069094, 32.933846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.536255, 28.950489, 32.472359>,  <27.457142, 28.863503, 33.219391>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.536255, 28.950489, 32.472359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.243084, 29.195042, 32.591713>,  <27.067183, 29.341774, 32.663326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.243084, 29.195042, 32.591713>,  <27.536255, 28.950489, 32.472359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243084, 29.195042, 32.591713> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404919, 0.744488, -0.530828,
		-0.546682, -0.268235, -0.793214,
		-0.732925, 0.611382, 0.298384,
		27.023207, 29.378456, 32.681229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.889160, 28.697372, 31.887217>,  <27.536255, 28.950489, 32.472359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.889160, 28.697372, 31.887217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.275782, 28.595284, 31.877102>,  <28.507753, 28.534031, 31.871033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.275782, 28.595284, 31.877102>,  <27.889160, 28.697372, 31.887217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.275782, 28.595284, 31.877102> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137480, -0.598822, 0.788994,
		-0.216510, -0.759128, -0.613880,
		0.966552, -0.255221, -0.025286,
		28.565746, 28.518717, 31.869516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.915091, 27.955317, 31.952188>,  <27.889160, 28.697372, 31.887217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.915091, 27.955317, 31.952188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.261456, 28.108192, 32.081264>,  <28.469275, 28.199919, 32.158710>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.261456, 28.108192, 32.081264>,  <27.915091, 27.955317, 31.952188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.261456, 28.108192, 32.081264> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063275, -0.723636, 0.687276,
		0.496179, -0.574702, -0.650788,
		0.865912, 0.382190, 0.322688,
		28.521229, 28.222849, 32.178070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169006, 27.457180, 32.232651>,  <27.915091, 27.955317, 31.952188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169006, 27.457180, 32.232651> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.387686, 27.746437, 32.401497>,  <28.518894, 27.919992, 32.502804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.387686, 27.746437, 32.401497>,  <28.169006, 27.457180, 32.232651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387686, 27.746437, 32.401497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291808, -0.637061, 0.713444,
		0.784835, -0.266864, -0.559301,
		0.546701, 0.723144, 0.422115,
		28.551697, 27.963381, 32.528130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967844, 27.283543, 32.365074>,  <28.169006, 27.457180, 32.232651>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967844, 27.283543, 32.365074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.844398, 27.568890, 32.616745>,  <28.770330, 27.740097, 32.767750>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.844398, 27.568890, 32.616745>,  <28.967844, 27.283543, 32.365074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.844398, 27.568890, 32.616745> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289004, -0.559874, 0.776542,
		0.906220, 0.421487, -0.033381,
		-0.308614, 0.713365, 0.629180,
		28.751814, 27.782900, 32.805500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.421270, 27.211308, 32.972408>,  <28.967844, 27.283543, 32.365074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.421270, 27.211308, 32.972408> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109293, 27.432793, 33.089088>,  <28.922108, 27.565683, 33.159096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.109293, 27.432793, 33.089088>,  <29.421270, 27.211308, 32.972408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.109293, 27.432793, 33.089088> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034014, -0.502904, 0.863673,
		0.624926, 0.663693, 0.411070,
		-0.779942, 0.553714, 0.291703,
		28.875311, 27.598907, 33.176598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480370, 27.227600, 33.623737>,  <29.421270, 27.211308, 32.972408>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480370, 27.227600, 33.623737> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.107546, 27.372093, 33.612568>,  <28.883852, 27.458790, 33.605865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.107546, 27.372093, 33.612568>,  <29.480370, 27.227600, 33.623737>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107546, 27.372093, 33.612568> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223673, -0.513066, 0.828694,
		0.285025, 0.778636, 0.559005,
		-0.932057, 0.361233, -0.027923,
		28.827929, 27.480463, 33.604191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.321178, 27.395746, 34.277054>,  <29.480370, 27.227600, 33.623737>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.321178, 27.395746, 34.277054> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.974279, 27.328289, 34.089676>,  <28.766140, 27.287815, 33.977249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.974279, 27.328289, 34.089676>,  <29.321178, 27.395746, 34.277054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.974279, 27.328289, 34.089676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308889, -0.555670, 0.771893,
		-0.390475, 0.814120, 0.429811,
		-0.867246, -0.168641, -0.468448,
		28.714106, 27.277697, 33.949142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.748863, 27.648718, 34.749908>,  <29.321178, 27.395746, 34.277054>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.748863, 27.648718, 34.749908> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.603964, 27.365757, 34.507137>,  <28.517023, 27.195980, 34.361477>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.603964, 27.365757, 34.507137>,  <28.748863, 27.648718, 34.749908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.603964, 27.365757, 34.507137> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326436, -0.513625, 0.793492,
		-0.873049, 0.485564, -0.044861,
		-0.362250, -0.707401, -0.606925,
		28.495289, 27.153536, 34.325058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.074610, 27.504511, 35.037697>,  <28.748863, 27.648718, 34.749908>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.074610, 27.504511, 35.037697> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.195192, 27.195675, 34.813911>,  <28.267542, 27.010374, 34.679638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.195192, 27.195675, 34.813911>,  <28.074610, 27.504511, 35.037697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.195192, 27.195675, 34.813911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345169, -0.635336, 0.690802,
		-0.888810, -0.015136, -0.458026,
		0.301456, -0.772088, -0.559468,
		28.285629, 26.964048, 34.646072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.469326, 27.136963, 34.979191>,  <28.074610, 27.504511, 35.037697>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.469326, 27.136963, 34.979191> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.776588, 26.898407, 34.886017>,  <27.960947, 26.755274, 34.830112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.776588, 26.898407, 34.886017>,  <27.469326, 27.136963, 34.979191>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.776588, 26.898407, 34.886017> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337358, -0.686219, 0.644433,
		-0.544172, -0.416445, -0.728320,
		0.768157, -0.596387, -0.232930,
		28.007036, 26.719490, 34.816139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.220940, 26.552174, 35.243576>,  <27.469326, 27.136963, 34.979191>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.220940, 26.552174, 35.243576> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.587429, 26.423492, 35.148048>,  <27.807323, 26.346283, 35.090733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.587429, 26.423492, 35.148048>,  <27.220940, 26.552174, 35.243576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587429, 26.423492, 35.148048> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122193, -0.792034, 0.598123,
		-0.381575, -0.518833, -0.764992,
		0.916226, -0.321705, -0.238823,
		27.862297, 26.326981, 35.076401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120670, 25.846273, 34.993858>,  <27.220940, 26.552174, 35.243576>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120670, 25.846273, 34.993858> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.498899, 25.873981, 35.121040>,  <27.725836, 25.890606, 35.197350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.498899, 25.873981, 35.121040>,  <27.120670, 25.846273, 34.993858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.498899, 25.873981, 35.121040> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113045, -0.846305, 0.520566,
		0.305147, -0.528176, -0.792411,
		0.945572, 0.069271, 0.317955,
		27.782572, 25.894762, 35.216427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.350134, 25.193108, 34.937378>,  <27.120670, 25.846273, 34.993858>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.350134, 25.193108, 34.937378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.621399, 25.341278, 35.191269>,  <27.784159, 25.430182, 35.343605>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.621399, 25.341278, 35.191269>,  <27.350134, 25.193108, 34.937378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621399, 25.341278, 35.191269> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016800, -0.871266, 0.490523,
		0.734720, -0.321991, -0.597084,
		0.678163, 0.370427, 0.634727,
		27.824848, 25.452406, 35.381687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.731153, 24.626221, 35.023659>,  <27.350134, 25.193108, 34.937378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.731153, 24.626221, 35.023659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.828650, 24.877174, 35.319492>,  <27.887148, 25.027746, 35.496990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.828650, 24.877174, 35.319492>,  <27.731153, 24.626221, 35.023659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.828650, 24.877174, 35.319492> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109756, -0.739837, 0.663773,
		0.963610, -0.242961, -0.111468,
		0.243739, 0.627385, 0.739581,
		27.901772, 25.065390, 35.541367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779432, 24.088755, 35.691387>,  <27.731153, 24.626221, 35.023659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779432, 24.088755, 35.691387> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.783817, 23.724030, 35.527203>,  <27.786449, 23.505194, 35.428692>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.783817, 23.724030, 35.527203>,  <27.779432, 24.088755, 35.691387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.783817, 23.724030, 35.527203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389048, 0.382029, -0.838269,
		0.921152, -0.150496, 0.358928,
		0.010965, -0.911814, -0.410457,
		27.787107, 23.450485, 35.404064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.471556, 24.024061, 35.386898>,  <27.779432, 24.088755, 35.691387>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.471556, 24.024061, 35.386898> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.199472, 23.794384, 35.204636>,  <28.036222, 23.656578, 35.095280>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.199472, 23.794384, 35.204636>,  <28.471556, 24.024061, 35.386898>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.199472, 23.794384, 35.204636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268324, 0.383426, -0.883735,
		0.682145, -0.723385, -0.106739,
		-0.680206, -0.574194, -0.455653,
		27.995411, 23.622126, 35.067940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.866707, 23.783253, 34.878166>,  <28.471556, 24.024061, 35.386898>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.866707, 23.783253, 34.878166> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.501829, 23.720001, 34.726959>,  <28.282902, 23.682051, 34.636234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.501829, 23.720001, 34.726959>,  <28.866707, 23.783253, 34.878166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.501829, 23.720001, 34.726959> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335382, 0.241898, -0.910497,
		0.235391, -0.957335, -0.167635,
		-0.912200, -0.158101, -0.378013,
		28.228170, 23.672562, 34.613552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.971197, 23.451563, 34.269741>,  <28.866707, 23.783253, 34.878166>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.971197, 23.451563, 34.269741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.593233, 23.577370, 34.233475>,  <28.366455, 23.652855, 34.211716>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.593233, 23.577370, 34.233475>,  <28.971197, 23.451563, 34.269741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.593233, 23.577370, 34.233475> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172470, 0.242985, -0.954575,
		-0.278202, -0.917625, -0.283844,
		-0.944911, 0.314519, -0.090664,
		28.309759, 23.671726, 34.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.712519, 23.138887, 33.736259>,  <28.971197, 23.451563, 34.269741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.712519, 23.138887, 33.736259> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474522, 23.455936, 33.789536>,  <28.331724, 23.646166, 33.821503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.474522, 23.455936, 33.789536>,  <28.712519, 23.138887, 33.736259>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.474522, 23.455936, 33.789536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042558, 0.196549, -0.979570,
		-0.802605, -0.577166, -0.150677,
		-0.594990, 0.792621, 0.133189,
		28.296024, 23.693722, 33.829491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.288160, 23.237309, 33.164417>,  <28.712519, 23.138887, 33.736259>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.288160, 23.237309, 33.164417> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.288670, 23.598080, 33.337173>,  <28.288975, 23.814543, 33.440826>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.288670, 23.598080, 33.337173>,  <28.288160, 23.237309, 33.164417>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288670, 23.598080, 33.337173> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136390, 0.427695, -0.893574,
		-0.990654, 0.060041, -0.122470,
		0.001271, 0.901927, 0.431887,
		28.289051, 23.868658, 33.466740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.919498, 23.689299, 32.760437>,  <28.288160, 23.237309, 33.164417>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.919498, 23.689299, 32.760437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168474, 23.917919, 32.974316>,  <28.317860, 24.055092, 33.102642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.168474, 23.917919, 32.974316>,  <27.919498, 23.689299, 32.760437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.168474, 23.917919, 32.974316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198447, 0.545592, -0.814216,
		-0.757092, 0.612908, 0.226175,
		0.622439, 0.571553, 0.534693,
		28.355206, 24.089386, 33.134724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.324163, 24.264088, 32.800407>,  <27.919498, 23.689299, 32.760437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.324163, 24.264088, 32.800407> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985098, 24.124462, 32.640598>,  <26.781658, 24.040688, 32.544712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.985098, 24.124462, 32.640598>,  <27.324163, 24.264088, 32.800407>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.985098, 24.124462, 32.640598> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300055, -0.305618, 0.903640,
		-0.437531, 0.885862, 0.154323,
		-0.847664, -0.349064, -0.399525,
		26.730799, 24.019743, 32.520741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.883671, 24.366095, 33.346203>,  <27.324163, 24.264088, 32.800407>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.883671, 24.366095, 33.346203> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.682196, 24.111229, 33.112854>,  <26.561310, 23.958309, 32.972847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.682196, 24.111229, 33.112854>,  <26.883671, 24.366095, 33.346203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.682196, 24.111229, 33.112854> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434066, -0.397190, 0.808596,
		-0.746917, 0.660501, -0.076512,
		-0.503688, -0.637165, -0.583369,
		26.531090, 23.920080, 32.937843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.146795, 24.433880, 33.543606>,  <26.883671, 24.366095, 33.346203>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.146795, 24.433880, 33.543606> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.159328, 24.074841, 33.367725>,  <26.166849, 23.859417, 33.262196>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.159328, 24.074841, 33.367725>,  <26.146795, 24.433880, 33.543606>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.159328, 24.074841, 33.367725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718370, -0.326098, 0.614495,
		-0.694955, 0.296616, -0.655024,
		0.031333, -0.897596, -0.439703,
		26.168728, 23.805561, 33.235813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.494991, 24.293716, 33.237064>,  <26.146795, 24.433880, 33.543606>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.494991, 24.293716, 33.237064> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.678900, 23.941315, 33.281689>,  <25.789246, 23.729874, 33.308464>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.678900, 23.941315, 33.281689>,  <25.494991, 24.293716, 33.237064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.678900, 23.941315, 33.281689> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854522, -0.404728, 0.325557,
		-0.241665, -0.245011, -0.938918,
		0.459772, -0.881002, 0.111558,
		25.816832, 23.677013, 33.315155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.974033, 23.878788, 33.145355>,  <25.494991, 24.293716, 33.237064>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.974033, 23.878788, 33.145355> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.246433, 23.643421, 33.319714>,  <25.409872, 23.502201, 33.424328>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.246433, 23.643421, 33.319714>,  <24.974033, 23.878788, 33.145355>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.246433, 23.643421, 33.319714> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.728251, -0.481799, 0.487360,
		-0.076757, -0.649333, -0.756620,
		0.680998, -0.588418, 0.435896,
		25.450733, 23.466896, 33.450481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.737152, 23.222366, 33.002510>,  <24.974033, 23.878788, 33.145355>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.737152, 23.222366, 33.002510> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.970602, 23.177395, 33.324192>,  <25.110672, 23.150412, 33.517200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.970602, 23.177395, 33.324192>,  <24.737152, 23.222366, 33.002510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.970602, 23.177395, 33.324192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737020, -0.489061, 0.466498,
		0.340857, -0.864974, -0.368289,
		0.583624, -0.112427, 0.804204,
		25.145689, 23.143667, 33.565453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.753727, 22.526421, 33.095798>,  <24.737152, 23.222366, 33.002510>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.753727, 22.526421, 33.095798> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.869606, 22.674995, 33.448639>,  <24.939135, 22.764141, 33.660343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.869606, 22.674995, 33.448639>,  <24.753727, 22.526421, 33.095798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.869606, 22.674995, 33.448639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569143, -0.674125, 0.470778,
		0.769513, -0.638428, 0.016108,
		0.289699, 0.371438, 0.882105,
		24.956516, 22.786427, 33.713272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.081003, 22.054327, 33.500504>,  <24.753727, 22.526421, 33.095798>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.081003, 22.054327, 33.500504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.929905, 22.314480, 33.764114>,  <24.839247, 22.470572, 33.922279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.929905, 22.314480, 33.764114>,  <25.081003, 22.054327, 33.500504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.929905, 22.314480, 33.764114> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506324, -0.741007, 0.441073,
		0.775207, -0.167067, 0.609215,
		-0.377743, 0.650383, 0.659024,
		24.816582, 22.509594, 33.961823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.782499, 21.546892, 33.918941>,  <25.081003, 22.054327, 33.500504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.782499, 21.546892, 33.918941> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.648846, 21.882072, 34.091541>,  <24.568653, 22.083181, 34.195103>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<24.648846, 21.882072, 34.091541>,  <24.782499, 21.546892, 33.918941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<24.648846, 21.882072, 34.091541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657150, -0.535302, 0.530666,
		0.675655, -0.106247, 0.729522,
		-0.334133, 0.837952, 0.431500,
		24.548605, 22.133457, 34.220993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.308462, 31.472689, 22.463943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990120, 31.610710, 22.662960>,  <30.799114, 31.693523, 22.782370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.990120, 31.610710, 22.662960>,  <31.308462, 31.472689, 22.463943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990120, 31.610710, 22.662960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143484, -0.690844, 0.708623,
		0.588237, 0.635352, 0.500304,
		-0.795857, 0.345052, 0.497543,
		30.751362, 31.714226, 22.812223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564959, 31.486544, 23.088028>,  <31.308462, 31.472689, 22.463943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564959, 31.486544, 23.088028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166357, 31.491692, 23.121048>,  <30.927197, 31.494780, 23.140860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.166357, 31.491692, 23.121048>,  <31.564959, 31.486544, 23.088028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.166357, 31.491692, 23.121048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045795, -0.742285, 0.668518,
		0.069880, 0.669961, 0.739101,
		-0.996504, 0.012869, 0.082551,
		30.867405, 31.495552, 23.145813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.291437, 31.568371, 23.770958>,  <31.564959, 31.486544, 23.088028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.291437, 31.568371, 23.770958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991796, 31.372906, 23.592049>,  <30.812012, 31.255627, 23.484703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.991796, 31.372906, 23.592049>,  <31.291437, 31.568371, 23.770958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.991796, 31.372906, 23.592049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015251, -0.662277, 0.749104,
		-0.662277, 0.567978, 0.488662,
		-0.749104, -0.488662, -0.447273,
		30.767065, 31.226307, 23.457867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.899481, 31.256592, 24.261837>,  <31.291437, 31.568371, 23.770958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.899481, 31.256592, 24.261837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736757, 31.057682, 23.955315>,  <30.639124, 30.938337, 23.771400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.736757, 31.057682, 23.955315>,  <30.899481, 31.256592, 24.261837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.736757, 31.057682, 23.955315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288246, -0.726130, 0.624220,
		-0.866846, 0.474823, 0.152058,
		-0.406808, -0.497272, -0.766308,
		30.614716, 30.908501, 23.725422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192909, 31.029564, 24.486483>,  <30.899481, 31.256592, 24.261837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192909, 31.029564, 24.486483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290556, 30.801960, 24.172379>,  <30.349144, 30.665398, 23.983915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290556, 30.801960, 24.172379>,  <30.192909, 31.029564, 24.486483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290556, 30.801960, 24.172379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212321, -0.821474, 0.529245,
		-0.946218, 0.037531, -0.321347,
		0.244115, -0.569010, -0.785262,
		30.363791, 30.631258, 23.936800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.604855, 30.690290, 24.289968>,  <30.192909, 31.029564, 24.486483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.604855, 30.690290, 24.289968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924068, 30.484253, 24.164867>,  <30.115597, 30.360630, 24.089808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.924068, 30.484253, 24.164867>,  <29.604855, 30.690290, 24.289968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.924068, 30.484253, 24.164867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394022, -0.838707, 0.375922,
		-0.455943, -0.176768, -0.872278,
		0.798037, -0.515096, -0.312752,
		30.163479, 30.329723, 24.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.423939, 30.092983, 24.028236>,  <29.604855, 30.690290, 24.289968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.423939, 30.092983, 24.028236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800358, 29.976200, 24.096573>,  <30.026209, 29.906130, 24.137575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.800358, 29.976200, 24.096573>,  <29.423939, 30.092983, 24.028236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.800358, 29.976200, 24.096573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335515, -0.869943, 0.361426,
		0.043102, -0.397439, -0.916616,
		0.941049, -0.291960, 0.170843,
		30.082672, 29.888613, 24.147825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.466776, 29.412313, 23.955929>,  <29.423939, 30.092983, 24.028236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.466776, 29.412313, 23.955929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817633, 29.441547, 24.145782>,  <30.028147, 29.459087, 24.259695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.817633, 29.441547, 24.145782>,  <29.466776, 29.412313, 23.955929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.817633, 29.441547, 24.145782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181987, -0.864047, 0.469364,
		0.444410, -0.498077, -0.744593,
		0.877144, 0.073084, 0.474635,
		30.080776, 29.463472, 24.288174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.736300, 28.736807, 23.968567>,  <29.466776, 29.412313, 23.955929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.736300, 28.736807, 23.968567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938318, 28.933922, 24.251999>,  <30.059530, 29.052191, 24.422058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.938318, 28.933922, 24.251999>,  <29.736300, 28.736807, 23.968567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.938318, 28.933922, 24.251999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019891, -0.814117, 0.580360,
		0.862862, -0.307204, -0.401366,
		0.505048, 0.492787, 0.708581,
		30.089832, 29.081758, 24.464573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.302139, 28.296675, 24.219341>,  <29.736300, 28.736807, 23.968567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.302139, 28.296675, 24.219341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208466, 28.556767, 24.508438>,  <30.152262, 28.712822, 24.681896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.208466, 28.556767, 24.508438>,  <30.302139, 28.296675, 24.219341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.208466, 28.556767, 24.508438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029987, -0.747893, 0.663142,
		0.971729, 0.133626, 0.194645,
		-0.234186, 0.650231, 0.722742,
		30.138210, 28.751837, 24.725262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527443, 27.941927, 24.796139>,  <30.302139, 28.296675, 24.219341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527443, 27.941927, 24.796139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280615, 28.227150, 24.929272>,  <30.132519, 28.398283, 25.009151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280615, 28.227150, 24.929272>,  <30.527443, 27.941927, 24.796139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280615, 28.227150, 24.929272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265075, -0.586596, 0.765271,
		0.740919, 0.384000, 0.550984,
		-0.617069, 0.713056, 0.332832,
		30.095493, 28.441067, 25.029121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.746338, 27.957365, 25.583174>,  <30.527443, 27.941927, 24.796139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.746338, 27.957365, 25.583174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386980, 28.124062, 25.527729>,  <30.171366, 28.224079, 25.494463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386980, 28.124062, 25.527729>,  <30.746338, 27.957365, 25.583174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386980, 28.124062, 25.527729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331981, -0.437767, 0.835553,
		0.287529, 0.796673, 0.531638,
		-0.898396, 0.416739, -0.138610,
		30.117462, 28.249083, 25.486147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.243839, 28.107904, 26.066595>,  <30.746338, 27.957365, 25.583174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.243839, 28.107904, 26.066595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559071, 28.024376, 26.298225>,  <31.748209, 27.974258, 26.437202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.559071, 28.024376, 26.298225>,  <31.243839, 28.107904, 26.066595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.559071, 28.024376, 26.298225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503643, 0.759616, -0.411495,
		-0.353946, 0.615937, 0.703807,
		0.788078, -0.208820, 0.579075,
		31.795494, 27.961729, 26.471949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.361273, 28.715939, 26.526371>,  <31.243839, 28.107904, 26.066595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.361273, 28.715939, 26.526371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686255, 28.486515, 26.484520>,  <31.881245, 28.348862, 26.459410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686255, 28.486515, 26.484520>,  <31.361273, 28.715939, 26.526371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686255, 28.486515, 26.484520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480759, 0.760593, -0.436313,
		0.329828, 0.304185, 0.893692,
		0.812456, -0.573558, -0.104625,
		31.929991, 28.314447, 26.453133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.912186, 29.216795, 26.532061>,  <31.361273, 28.715939, 26.526371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.912186, 29.216795, 26.532061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056229, 28.876236, 26.379513>,  <32.142654, 28.671900, 26.287985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.056229, 28.876236, 26.379513>,  <31.912186, 29.216795, 26.532061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056229, 28.876236, 26.379513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754532, 0.506214, -0.417647,
		0.548639, -0.137358, 0.824698,
		0.360106, -0.851399, -0.381370,
		32.164261, 28.620817, 26.265102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678116, 29.229645, 26.657255>,  <31.912186, 29.216795, 26.532061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678116, 29.229645, 26.657255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605389, 28.985325, 26.349003>,  <32.561752, 28.838734, 26.164051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605389, 28.985325, 26.349003>,  <32.678116, 29.229645, 26.657255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605389, 28.985325, 26.349003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594535, 0.555944, -0.580909,
		0.783245, -0.563783, 0.262062,
		-0.181815, -0.610799, -0.770628,
		32.550846, 28.802086, 26.117815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.232891, 29.048895, 26.309944>,  <32.678116, 29.229645, 26.657255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.232891, 29.048895, 26.309944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001625, 28.945698, 26.000320>,  <32.862865, 28.883780, 25.814547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.001625, 28.945698, 26.000320>,  <33.232891, 29.048895, 26.309944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001625, 28.945698, 26.000320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692139, 0.347283, -0.632723,
		0.432055, -0.901574, -0.022220,
		-0.578163, -0.257992, -0.774059,
		32.828175, 28.868299, 25.768103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.615028, 28.743338, 25.861591>,  <33.232891, 29.048895, 26.309944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.615028, 28.743338, 25.861591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302505, 28.837162, 25.630234>,  <33.114990, 28.893457, 25.491419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.302505, 28.837162, 25.630234>,  <33.615028, 28.743338, 25.861591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302505, 28.837162, 25.630234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623927, 0.318118, -0.713804,
		0.016567, -0.918576, -0.394897,
		-0.781307, 0.234561, -0.578395,
		33.068115, 28.907530, 25.456715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.782845, 28.458916, 25.155279>,  <33.615028, 28.743338, 25.861591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.782845, 28.458916, 25.155279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498878, 28.738655, 25.121975>,  <33.328499, 28.906498, 25.101992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.498878, 28.738655, 25.121975>,  <33.782845, 28.458916, 25.155279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498878, 28.738655, 25.121975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569575, 0.500562, -0.651938,
		-0.414253, -0.510244, -0.753688,
		-0.709915, 0.699348, -0.083263,
		33.285904, 28.948460, 25.096996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.799423, 28.550035, 24.441730>,  <33.782845, 28.458916, 25.155279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.799423, 28.550035, 24.441730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596783, 28.870628, 24.568840>,  <33.475197, 29.062984, 24.645105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596783, 28.870628, 24.568840>,  <33.799423, 28.550035, 24.441730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596783, 28.870628, 24.568840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572532, 0.588302, -0.571058,
		-0.644639, -0.107365, -0.756910,
		-0.506603, 0.801482, 0.317773,
		33.444801, 29.111073, 24.664171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.624573, 28.921951, 23.875799>,  <33.799423, 28.550035, 24.441730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.624573, 28.921951, 23.875799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604259, 29.189674, 24.172298>,  <33.592072, 29.350307, 24.350197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.604259, 29.189674, 24.172298>,  <33.624573, 28.921951, 23.875799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604259, 29.189674, 24.172298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563874, 0.631802, -0.531857,
		-0.824298, 0.390963, -0.409488,
		-0.050780, 0.669308, 0.741247,
		33.589027, 29.390467, 24.394672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434551, 29.562094, 23.622841>,  <33.624573, 28.921951, 23.875799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434551, 29.562094, 23.622841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600121, 29.683575, 23.966103>,  <33.699463, 29.756464, 24.172060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.600121, 29.683575, 23.966103>,  <33.434551, 29.562094, 23.622841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.600121, 29.683575, 23.966103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570943, 0.647623, -0.504586,
		-0.709005, 0.698820, 0.094672,
		0.413927, 0.303702, 0.858155,
		33.724300, 29.774685, 24.223549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.682224, 30.292849, 23.507698>,  <33.434551, 29.562094, 23.622841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.682224, 30.292849, 23.507698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882141, 30.194145, 23.839798>,  <34.002090, 30.134924, 24.039059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882141, 30.194145, 23.839798>,  <33.682224, 30.292849, 23.507698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882141, 30.194145, 23.839798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766002, 0.573346, -0.290714,
		-0.404286, 0.781272, 0.475570,
		0.499793, -0.246756, 0.830252,
		34.032078, 30.120119, 24.088873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.992100, 30.922077, 23.845228>,  <33.682224, 30.292849, 23.507698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.992100, 30.922077, 23.845228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202297, 30.617336, 23.996719>,  <34.328415, 30.434492, 24.087614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.202297, 30.617336, 23.996719>,  <33.992100, 30.922077, 23.845228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202297, 30.617336, 23.996719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839069, 0.537725, -0.082549,
		-0.140762, 0.361159, 0.921819,
		0.525498, -0.761850, 0.378729,
		34.359947, 30.388781, 24.110338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628807, 31.253822, 23.912502>,  <33.992100, 30.922077, 23.845228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628807, 31.253822, 23.912502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750881, 30.882645, 23.998089>,  <34.824123, 30.659937, 24.049440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750881, 30.882645, 23.998089>,  <34.628807, 31.253822, 23.912502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750881, 30.882645, 23.998089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951950, 0.291239, -0.094715,
		0.025575, 0.232589, 0.972239,
		0.305184, -0.927945, 0.213965,
		34.842438, 30.604261, 24.062279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096107, 31.203932, 24.574627>,  <34.628807, 31.253822, 23.912502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096107, 31.203932, 24.574627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164356, 30.931133, 24.290157>,  <35.205303, 30.767454, 24.119474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.164356, 30.931133, 24.290157>,  <35.096107, 31.203932, 24.574627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.164356, 30.931133, 24.290157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909679, 0.386384, -0.152286,
		0.378645, -0.620959, 0.686322,
		0.170620, -0.681995, -0.711176,
		35.215542, 30.726534, 24.076805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.883625, 31.641352, 25.115313>,  <35.096107, 31.203932, 24.574627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.883625, 31.641352, 25.115313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981991, 31.451477, 25.453354>,  <35.041008, 31.337551, 25.656178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.981991, 31.451477, 25.453354>,  <34.883625, 31.641352, 25.115313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.981991, 31.451477, 25.453354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937900, -0.103562, -0.331086,
		0.244683, 0.874040, 0.419743,
		0.245913, -0.474688, 0.845102,
		35.055763, 31.309071, 25.706884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.504768, 31.953312, 25.427641>,  <34.883625, 31.641352, 25.115313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.504768, 31.953312, 25.427641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447399, 31.562672, 25.491741>,  <35.412979, 31.328287, 25.530201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.447399, 31.562672, 25.491741>,  <35.504768, 31.953312, 25.427641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.447399, 31.562672, 25.491741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768074, -0.211955, -0.604266,
		0.624093, 0.036419, 0.780501,
		-0.143424, -0.976601, 0.160252,
		35.404373, 31.269691, 25.539816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884995, 32.432636, 25.495920>,  <35.504768, 31.953312, 25.427641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884995, 32.432636, 25.495920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609138, 32.720158, 25.460773>,  <34.443626, 32.892670, 25.439686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.609138, 32.720158, 25.460773>,  <34.884995, 32.432636, 25.495920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.609138, 32.720158, 25.460773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678472, -0.598949, 0.425365,
		0.253126, 0.352964, 0.900746,
		-0.689640, 0.718802, -0.087867,
		34.402248, 32.935799, 25.434414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.515629, 32.446404, 26.126606>,  <34.884995, 32.432636, 25.495920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.515629, 32.446404, 26.126606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270775, 32.600765, 25.850529>,  <34.123863, 32.693382, 25.684881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.270775, 32.600765, 25.850529>,  <34.515629, 32.446404, 26.126606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.270775, 32.600765, 25.850529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770777, -0.486135, 0.411797,
		-0.176615, 0.784062, 0.595024,
		-0.612136, 0.385901, -0.690195,
		34.087135, 32.716537, 25.643471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.964108, 32.707909, 26.441212>,  <34.515629, 32.446404, 26.126606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.964108, 32.707909, 26.441212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832680, 32.681507, 26.064342>,  <33.753822, 32.665668, 25.838221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.832680, 32.681507, 26.064342>,  <33.964108, 32.707909, 26.441212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.832680, 32.681507, 26.064342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817789, -0.479180, 0.318759,
		-0.472508, 0.875232, 0.103469,
		-0.328568, -0.066000, -0.942171,
		33.734108, 32.661709, 25.781691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.346279, 32.979492, 26.457647>,  <33.964108, 32.707909, 26.441212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.346279, 32.979492, 26.457647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316132, 32.786968, 26.108326>,  <33.298042, 32.671452, 25.898733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.316132, 32.786968, 26.108326>,  <33.346279, 32.979492, 26.457647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.316132, 32.786968, 26.108326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821808, -0.466042, 0.327776,
		-0.564758, 0.742391, -0.360422,
		-0.075366, -0.481312, -0.873303,
		33.293522, 32.642574, 25.846334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540157, 32.855537, 26.317997>,  <33.346279, 32.979492, 26.457647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540157, 32.855537, 26.317997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719818, 32.590992, 26.077713>,  <32.827614, 32.432262, 25.933542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719818, 32.590992, 26.077713>,  <32.540157, 32.855537, 26.317997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719818, 32.590992, 26.077713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.778082, -0.620015, 0.100847,
		-0.439147, 0.422107, -0.793080,
		0.449153, -0.661368, -0.600711,
		32.854565, 32.392582, 25.897499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998926, 32.633358, 25.792377>,  <32.540157, 32.855537, 26.317997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998926, 32.633358, 25.792377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286926, 32.355885, 25.800316>,  <32.459728, 32.189400, 25.805079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.286926, 32.355885, 25.800316>,  <31.998926, 32.633358, 25.792377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.286926, 32.355885, 25.800316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690217, -0.712842, 0.124321,
		-0.072093, -0.103209, -0.992043,
		0.720002, -0.693688, 0.019846,
		32.502926, 32.147778, 25.806269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.659761, 32.038303, 25.426439>,  <31.998926, 32.633358, 25.792377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.659761, 32.038303, 25.426439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966005, 31.867058, 25.618504>,  <32.149754, 31.764309, 25.733742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.966005, 31.867058, 25.618504>,  <31.659761, 32.038303, 25.426439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966005, 31.867058, 25.618504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573554, -0.792292, 0.208109,
		0.291332, -0.434728, -0.852137,
		0.765612, -0.428118, 0.480160,
		32.195690, 31.738623, 25.762552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728340, 31.266262, 25.134333>,  <31.659761, 32.038303, 25.426439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728340, 31.266262, 25.134333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878153, 31.298855, 25.503784>,  <31.968040, 31.318411, 25.725454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.878153, 31.298855, 25.503784>,  <31.728340, 31.266262, 25.134333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.878153, 31.298855, 25.503784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567183, -0.767891, 0.297737,
		0.733505, -0.635377, -0.241384,
		0.374532, 0.081483, 0.923627,
		31.990513, 31.323299, 25.780872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759172, 30.601458, 25.421362>,  <31.728340, 31.266262, 25.134333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759172, 30.601458, 25.421362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753935, 30.836903, 25.744686>,  <31.750792, 30.978170, 25.938681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753935, 30.836903, 25.744686>,  <31.759172, 30.601458, 25.421362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753935, 30.836903, 25.744686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639850, -0.626135, 0.445586,
		0.768388, -0.511361, 0.384824,
		-0.013096, 0.588613, 0.808309,
		31.750006, 31.013487, 25.987179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.814156, 30.075424, 25.973099>,  <31.759172, 30.601458, 25.421362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.814156, 30.075424, 25.973099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683830, 30.424931, 26.117531>,  <31.605635, 30.634634, 26.204189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.683830, 30.424931, 26.117531>,  <31.814156, 30.075424, 25.973099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.683830, 30.424931, 26.117531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656209, -0.483942, 0.578956,
		0.680614, -0.048312, 0.731048,
		-0.325814, 0.873766, 0.361080,
		31.586086, 30.687059, 26.225855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.785658, 30.015474, 26.683594>,  <31.814156, 30.075424, 25.973099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.785658, 30.015474, 26.683594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541855, 30.327023, 26.624451>,  <31.395573, 30.513950, 26.588964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.541855, 30.327023, 26.624451>,  <31.785658, 30.015474, 26.683594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.541855, 30.327023, 26.624451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604066, -0.335485, 0.722879,
		0.513423, 0.529918, 0.674969,
		-0.609509, 0.778869, -0.147859,
		31.359003, 30.560682, 26.580093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.667679, 30.323164, 27.323193>,  <31.785658, 30.015474, 26.683594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.667679, 30.323164, 27.323193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361227, 30.458530, 27.104645>,  <31.177357, 30.539751, 26.973516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.361227, 30.458530, 27.104645>,  <31.667679, 30.323164, 27.323193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361227, 30.458530, 27.104645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618858, -0.159111, 0.769219,
		0.173382, 0.927447, 0.331332,
		-0.766129, 0.338416, -0.546371,
		31.131388, 30.560055, 26.940733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.375097, 30.853466, 27.713730>,  <31.667679, 30.323164, 27.323193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.375097, 30.853466, 27.713730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085499, 30.718464, 27.473091>,  <30.911739, 30.637463, 27.328707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.085499, 30.718464, 27.473091>,  <31.375097, 30.853466, 27.713730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.085499, 30.718464, 27.473091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544985, -0.254779, 0.798798,
		-0.422874, 0.906189, 0.000523,
		-0.723995, -0.337506, -0.601599,
		30.868299, 30.617212, 27.292612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.762978, 31.072449, 28.055332>,  <31.375097, 30.853466, 27.713730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.762978, 31.072449, 28.055332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649929, 30.777523, 27.809895>,  <30.582100, 30.600567, 27.662632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.649929, 30.777523, 27.809895>,  <30.762978, 31.072449, 28.055332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649929, 30.777523, 27.809895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634422, -0.336106, 0.696090,
		-0.719469, 0.586005, -0.372778,
		-0.282620, -0.737314, -0.613592,
		30.565144, 30.556330, 27.625816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.034836, 31.037046, 28.035915>,  <30.762978, 31.072449, 28.055332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.034836, 31.037046, 28.035915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153667, 30.672466, 27.922070>,  <30.224966, 30.453718, 27.853762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.153667, 30.672466, 27.922070>,  <30.034836, 31.037046, 28.035915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153667, 30.672466, 27.922070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611609, -0.410536, 0.676310,
		-0.733266, -0.026846, -0.679412,
		0.297079, -0.911449, -0.284613,
		30.242792, 30.399031, 27.836685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.381489, 30.691824, 27.835539>,  <30.034836, 31.037046, 28.035915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.381489, 30.691824, 27.835539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638960, 30.387199, 27.865746>,  <29.793444, 30.204426, 27.883869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.638960, 30.387199, 27.865746>,  <29.381489, 30.691824, 27.835539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638960, 30.387199, 27.865746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628428, -0.469666, 0.620075,
		-0.436755, -0.446588, -0.780900,
		0.643680, -0.761560, 0.075519,
		29.832064, 30.158731, 27.888401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.006685, 30.064966, 27.892191>,  <29.381489, 30.691824, 27.835539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.006685, 30.064966, 27.892191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371876, 29.995846, 28.040035>,  <29.590990, 29.954374, 28.128742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371876, 29.995846, 28.040035>,  <29.006685, 30.064966, 27.892191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371876, 29.995846, 28.040035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407918, -0.405884, 0.817839,
		0.008697, -0.897440, -0.441051,
		0.912977, -0.172800, 0.369612,
		29.645769, 29.944006, 28.150919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995899, 29.350273, 28.177895>,  <29.006685, 30.064966, 27.892191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995899, 29.350273, 28.177895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316700, 29.502167, 28.362328>,  <29.509180, 29.593304, 28.472986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.316700, 29.502167, 28.362328>,  <28.995899, 29.350273, 28.177895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.316700, 29.502167, 28.362328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315075, -0.386856, 0.866643,
		0.507468, -0.840323, -0.190613,
		0.802000, 0.379736, 0.461081,
		29.557301, 29.616087, 28.500652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.156263, 28.836143, 28.723011>,  <28.995899, 29.350273, 28.177895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.156263, 28.836143, 28.723011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370405, 29.151886, 28.843220>,  <29.498890, 29.341331, 28.915344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.370405, 29.151886, 28.843220>,  <29.156263, 28.836143, 28.723011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370405, 29.151886, 28.843220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123650, -0.278725, 0.952377,
		0.835528, -0.547018, -0.051612,
		0.535353, 0.789356, 0.300521,
		29.531012, 29.388693, 28.933376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.769688, 28.569027, 29.088320>,  <29.156263, 28.836143, 28.723011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.769688, 28.569027, 29.088320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701790, 28.947414, 29.198830>,  <29.661051, 29.174448, 29.265135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.701790, 28.947414, 29.198830>,  <29.769688, 28.569027, 29.088320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.701790, 28.947414, 29.198830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091573, -0.294270, 0.951325,
		0.981224, 0.136185, 0.136577,
		-0.169746, 0.945970, 0.276274,
		29.650866, 29.231205, 29.281712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215485, 28.625160, 29.717398>,  <29.769688, 28.569027, 29.088320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215485, 28.625160, 29.717398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913082, 28.886681, 29.704769>,  <29.731640, 29.043592, 29.697193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913082, 28.886681, 29.704769>,  <30.215485, 28.625160, 29.717398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913082, 28.886681, 29.704769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171488, -0.151290, 0.973500,
		0.631701, 0.741387, 0.226495,
		-0.756007, 0.653802, -0.031569,
		29.686279, 29.082821, 29.695299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.255398, 29.025040, 30.360456>,  <30.215485, 28.625160, 29.717398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.255398, 29.025040, 30.360456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880672, 29.132542, 30.270882>,  <29.655836, 29.197042, 30.217136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.880672, 29.132542, 30.270882>,  <30.255398, 29.025040, 30.360456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880672, 29.132542, 30.270882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273596, -0.163976, 0.947764,
		0.217997, 0.949148, 0.227145,
		-0.936815, 0.268756, -0.223937,
		29.599628, 29.213169, 30.203701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.030640, 29.472588, 30.931103>,  <30.255398, 29.025040, 30.360456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.030640, 29.472588, 30.931103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699013, 29.319710, 30.767849>,  <29.500036, 29.227983, 30.669897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.699013, 29.319710, 30.767849>,  <30.030640, 29.472588, 30.931103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.699013, 29.319710, 30.767849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380683, -0.148809, 0.912654,
		-0.409544, 0.912022, -0.022121,
		-0.829068, -0.382193, -0.408135,
		29.450293, 29.205051, 30.645409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503553, 29.774248, 31.283148>,  <30.030640, 29.472588, 30.931103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503553, 29.774248, 31.283148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349646, 29.446850, 31.112495>,  <29.257301, 29.250410, 31.010103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.349646, 29.446850, 31.112495>,  <29.503553, 29.774248, 31.283148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349646, 29.446850, 31.112495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385764, -0.277310, 0.879934,
		-0.838534, 0.503151, -0.209046,
		-0.384769, -0.818497, -0.426632,
		29.234215, 29.201300, 30.984507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.837721, 29.693262, 31.587685>,  <29.503553, 29.774248, 31.283148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.837721, 29.693262, 31.587685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905878, 29.334694, 31.424026>,  <28.946774, 29.119553, 31.325832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.905878, 29.334694, 31.424026>,  <28.837721, 29.693262, 31.587685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.905878, 29.334694, 31.424026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369981, -0.443040, 0.816596,
		-0.913280, 0.012232, -0.407150,
		0.170395, -0.896419, -0.409145,
		28.956997, 29.065769, 31.301283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.186691, 29.343805, 31.623817>,  <28.837721, 29.693262, 31.587685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.186691, 29.343805, 31.623817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472301, 29.065655, 31.591278>,  <28.643667, 28.898764, 31.571754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.472301, 29.065655, 31.591278>,  <28.186691, 29.343805, 31.623817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472301, 29.065655, 31.591278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409063, -0.508661, 0.757582,
		-0.568187, -0.507654, -0.647650,
		0.714024, -0.695379, -0.081352,
		28.686510, 28.857042, 31.566874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.373224, 29.305944, 31.791878>,  <28.186691, 29.343805, 31.623817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.373224, 29.305944, 31.791878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231493, 29.526871, 32.093712>,  <27.146454, 29.659426, 32.274811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231493, 29.526871, 32.093712>,  <27.373224, 29.305944, 31.791878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231493, 29.526871, 32.093712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429181, 0.812982, -0.393528,
		-0.830816, 0.184415, -0.525106,
		-0.354329, 0.552315, 0.754586,
		27.125195, 29.692566, 32.320087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.132330, 29.887470, 31.484829>,  <27.373224, 29.305944, 31.791878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.132330, 29.887470, 31.484829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162254, 30.026104, 31.858841>,  <27.180210, 30.109283, 32.083248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162254, 30.026104, 31.858841>,  <27.132330, 29.887470, 31.484829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162254, 30.026104, 31.858841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331739, 0.875602, -0.351098,
		-0.940400, 0.336452, -0.049470,
		0.074812, 0.346584, 0.935031,
		27.184698, 30.130079, 32.139351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.745325, 30.466171, 31.522816>,  <27.132330, 29.887470, 31.484829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.745325, 30.466171, 31.522816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954771, 30.534817, 31.856613>,  <27.080439, 30.576004, 32.056892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.954771, 30.534817, 31.856613>,  <26.745325, 30.466171, 31.522816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.954771, 30.534817, 31.856613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407638, 0.809635, -0.422282,
		-0.748105, 0.561283, 0.353979,
		0.523614, 0.171616, 0.834492,
		27.111855, 30.586302, 32.106960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659918, 31.121464, 31.655184>,  <26.745325, 30.466171, 31.522816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659918, 31.121464, 31.655184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993563, 31.017262, 31.849667>,  <27.193748, 30.954741, 31.966356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993563, 31.017262, 31.849667>,  <26.659918, 31.121464, 31.655184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993563, 31.017262, 31.849667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539441, 0.569285, -0.620417,
		-0.115169, 0.779777, 0.615373,
		0.834110, -0.260505, 0.486208,
		27.243795, 30.939110, 31.995529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111015, 31.762608, 31.626440>,  <26.659918, 31.121464, 31.655184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111015, 31.762608, 31.626440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355244, 31.459579, 31.718781>,  <27.501780, 31.277763, 31.774185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.355244, 31.459579, 31.718781>,  <27.111015, 31.762608, 31.626440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.355244, 31.459579, 31.718781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756886, 0.472394, -0.451627,
		0.233087, 0.450478, 0.861824,
		0.610569, -0.757571, 0.230852,
		27.538414, 31.232307, 31.788036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 60.000000>,  <60.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 60.000000, 0.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<60.000000, 0.000000, 60.000000>,  <60.000000, 0.000000, 0.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 60.000000, 0.000000>,  <0.000000, 60.000000, 60.000000>, 0.300000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
