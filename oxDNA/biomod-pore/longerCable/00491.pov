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
	<24.348345, 34.348919, 34.702660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263420, 34.704136, 34.865776>,  <24.212465, 34.917267, 34.963646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.263420, 34.704136, 34.865776>,  <24.348345, 34.348919, 34.702660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.263420, 34.704136, 34.865776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793291, -0.400314, 0.458735,
		0.570624, -0.226105, 0.789471,
		-0.212314, 0.888046, 0.407796,
		24.199726, 34.970551, 34.988113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.221663, 34.287781, 35.321003>,  <24.348345, 34.348919, 34.702660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.221663, 34.287781, 35.321003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.018419, 34.604691, 35.185871>,  <23.896473, 34.794838, 35.104794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.018419, 34.604691, 35.185871>,  <24.221663, 34.287781, 35.321003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.018419, 34.604691, 35.185871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861027, -0.457513, 0.222069,
		0.021380, 0.403712, 0.914636,
		-0.508110, 0.792274, -0.337826,
		23.865986, 34.842373, 35.084522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927130, 34.526695, 35.103359>,  <24.221663, 34.287781, 35.321003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927130, 34.526695, 35.103359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323656, 34.530785, 35.050915>,  <25.561571, 34.533237, 35.019447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.323656, 34.530785, 35.050915>,  <24.927130, 34.526695, 35.103359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.323656, 34.530785, 35.050915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021249, -0.971423, -0.236403,
		-0.129778, 0.237136, -0.962769,
		0.991315, 0.010222, -0.131108,
		25.621050, 34.533852, 35.011581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.003769, 34.081093, 34.623554>,  <24.927130, 34.526695, 35.103359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.003769, 34.081093, 34.623554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397354, 34.119701, 34.683552>,  <25.633505, 34.142868, 34.719551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.397354, 34.119701, 34.683552>,  <25.003769, 34.081093, 34.623554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.397354, 34.119701, 34.683552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133973, -0.955109, -0.264231,
		0.117760, 0.280089, -0.952724,
		0.983963, 0.096524, 0.149999,
		25.692543, 34.148659, 34.728550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.311283, 33.960247, 33.942127>,  <25.003769, 34.081093, 34.623554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.311283, 33.960247, 33.942127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552204, 33.878719, 34.250851>,  <25.696756, 33.829803, 34.436085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.552204, 33.878719, 34.250851>,  <25.311283, 33.960247, 33.942127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.552204, 33.878719, 34.250851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056209, -0.953627, -0.295695,
		0.796286, 0.221481, -0.562917,
		0.602304, -0.203817, 0.771809,
		25.732895, 33.817574, 34.482395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.890306, 33.531155, 33.684380>,  <25.311283, 33.960247, 33.942127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.890306, 33.531155, 33.684380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855482, 33.437222, 34.071632>,  <25.834587, 33.380863, 34.303982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.855482, 33.437222, 34.071632>,  <25.890306, 33.531155, 33.684380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.855482, 33.437222, 34.071632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090257, -0.969682, -0.227091,
		0.992106, 0.067610, 0.105616,
		-0.087060, -0.234831, 0.968130,
		25.829365, 33.366772, 34.362072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.406107, 33.113087, 33.948318>,  <25.890306, 33.531155, 33.684380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.406107, 33.113087, 33.948318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099466, 33.039295, 34.194340>,  <25.915482, 32.995018, 34.341953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.099466, 33.039295, 34.194340>,  <26.406107, 33.113087, 33.948318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099466, 33.039295, 34.194340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053154, -0.972785, -0.225532,
		0.639922, -0.140200, 0.755542,
		-0.766599, -0.184483, 0.615054,
		25.869486, 32.983952, 34.378857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587965, 32.579838, 34.343624>,  <26.406107, 33.113087, 33.948318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587965, 32.579838, 34.343624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188217, 32.593914, 34.341827>,  <25.948368, 32.602360, 34.340748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.188217, 32.593914, 34.341827>,  <26.587965, 32.579838, 34.343624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.188217, 32.593914, 34.341827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031581, -0.940189, -0.339186,
		-0.016159, -0.338831, 0.940709,
		-0.999371, 0.035189, -0.004492,
		25.888407, 32.604469, 34.340481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.218040, 32.013824, 34.724365>,  <26.587965, 32.579838, 34.343624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.218040, 32.013824, 34.724365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963890, 32.108685, 34.430412>,  <25.811399, 32.165600, 34.254040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.963890, 32.108685, 34.430412>,  <26.218040, 32.013824, 34.724365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.963890, 32.108685, 34.430412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014794, -0.947760, -0.318641,
		-0.772061, -0.213329, 0.598676,
		-0.635376, 0.237153, -0.734885,
		25.773277, 32.179829, 34.209946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.787237, 31.344467, 34.637672>,  <26.218040, 32.013824, 34.724365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.787237, 31.344467, 34.637672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734797, 31.560204, 34.304943>,  <25.703333, 31.689646, 34.105305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.734797, 31.560204, 34.304943>,  <25.787237, 31.344467, 34.637672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.734797, 31.560204, 34.304943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224074, -0.801227, -0.554821,
		-0.965714, -0.259126, -0.015812,
		-0.131100, 0.539341, -0.831819,
		25.695467, 31.722006, 34.055397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.293879, 31.069429, 34.278553>,  <25.787237, 31.344467, 34.637672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.293879, 31.069429, 34.278553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529778, 31.260855, 34.018345>,  <25.671318, 31.375710, 33.862221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.529778, 31.260855, 34.018345>,  <25.293879, 31.069429, 34.278553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.529778, 31.260855, 34.018345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253208, -0.874465, -0.413758,
		-0.766865, 0.079297, -0.636891,
		0.589749, 0.478563, -0.650518,
		25.706701, 31.404423, 33.823189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150436, 30.870119, 33.526371>,  <25.293879, 31.069429, 34.278553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150436, 30.870119, 33.526371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521772, 31.016567, 33.552109>,  <25.744574, 31.104437, 33.567551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.521772, 31.016567, 33.552109>,  <25.150436, 30.870119, 33.526371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.521772, 31.016567, 33.552109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325604, -0.717348, -0.615950,
		-0.179352, 0.592763, -0.785153,
		0.928340, 0.366121, 0.064348,
		25.800274, 31.126404, 33.571415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.382395, 30.991179, 32.859226>,  <25.150436, 30.870119, 33.526371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.382395, 30.991179, 32.859226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665478, 30.876593, 33.117558>,  <25.835327, 30.807842, 33.272556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665478, 30.876593, 33.117558>,  <25.382395, 30.991179, 32.859226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665478, 30.876593, 33.117558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401023, -0.589708, -0.701017,
		0.581665, 0.755105, -0.302461,
		0.707705, -0.286462, 0.645827,
		25.877789, 30.790653, 33.311306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.012693, 31.031891, 32.409389>,  <25.382395, 30.991179, 32.859226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.012693, 31.031891, 32.409389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049353, 30.781199, 32.718922>,  <26.071348, 30.630783, 32.904640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049353, 30.781199, 32.718922>,  <26.012693, 31.031891, 32.409389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049353, 30.781199, 32.718922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756342, -0.461660, -0.463484,
		0.647725, 0.627756, 0.431712,
		0.091651, -0.626732, 0.773826,
		26.076847, 30.593180, 32.951069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.638062, 31.097263, 32.873112>,  <26.012693, 31.031891, 32.409389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.638062, 31.097263, 32.873112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504791, 30.722645, 32.829529>,  <26.424829, 30.497873, 32.803379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.504791, 30.722645, 32.829529>,  <26.638062, 31.097263, 32.873112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.504791, 30.722645, 32.829529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797138, -0.218075, -0.563040,
		0.503554, -0.274445, 0.819215,
		-0.333174, -0.936549, -0.108958,
		26.404839, 30.441681, 32.796841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.662441, 31.810589, 32.898617>,  <26.638062, 31.097263, 32.873112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.662441, 31.810589, 32.898617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821251, 31.658270, 33.232651>,  <26.916536, 31.566879, 33.433071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821251, 31.658270, 33.232651>,  <26.662441, 31.810589, 32.898617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821251, 31.658270, 33.232651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685119, -0.482480, -0.545734,
		0.610726, 0.788801, 0.069336,
		0.397022, -0.380797, 0.835085,
		26.940357, 31.544031, 33.483177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.037689, 32.258133, 32.879513>,  <26.662441, 31.810589, 32.898617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.037689, 32.258133, 32.879513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830696, 32.017708, 33.123127>,  <25.706499, 31.873451, 33.269295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.830696, 32.017708, 33.123127>,  <26.037689, 32.258133, 32.879513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.830696, 32.017708, 33.123127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146153, 0.763378, 0.629200,
		-0.843119, 0.236588, -0.482884,
		-0.517485, -0.601066, 0.609040,
		25.675451, 31.837389, 33.305840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.306034, 32.484573, 33.019997>,  <26.037689, 32.258133, 32.879513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.306034, 32.484573, 33.019997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419676, 32.253067, 33.325756>,  <25.487862, 32.114162, 33.509212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.419676, 32.253067, 33.325756>,  <25.306034, 32.484573, 33.019997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.419676, 32.253067, 33.325756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229177, 0.733152, 0.640286,
		-0.931000, -0.357093, 0.075653,
		0.284107, -0.578769, 0.764402,
		25.504908, 32.079437, 33.555077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.714792, 32.313732, 33.527008>,  <25.306034, 32.484573, 33.019997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.714792, 32.313732, 33.527008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065929, 32.294769, 33.717648>,  <25.276611, 32.283394, 33.832031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.065929, 32.294769, 33.717648>,  <24.714792, 32.313732, 33.527008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.065929, 32.294769, 33.717648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258463, 0.790870, 0.554727,
		-0.403221, -0.610146, 0.682008,
		0.877844, -0.047404, 0.476595,
		25.329283, 32.280548, 33.860626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.587435, 32.643421, 34.141525>,  <24.714792, 32.313732, 33.527008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.587435, 32.643421, 34.141525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983034, 32.652035, 34.200069>,  <25.220394, 32.657204, 34.235195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.983034, 32.652035, 34.200069>,  <24.587435, 32.643421, 34.141525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.983034, 32.652035, 34.200069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082159, 0.902706, 0.422340,
		-0.123025, -0.429718, 0.894543,
		0.988997, 0.021536, 0.146360,
		25.279734, 32.658497, 34.243977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.654417, 33.040119, 34.788960>,  <24.587435, 32.643421, 34.141525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.654417, 33.040119, 34.788960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001471, 33.017723, 34.591343>,  <25.209703, 33.004288, 34.472775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.001471, 33.017723, 34.591343>,  <24.654417, 33.040119, 34.788960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.001471, 33.017723, 34.591343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168411, 0.967996, 0.186069,
		0.467810, -0.244642, 0.849296,
		0.867636, -0.055986, -0.494038,
		25.261761, 33.000927, 34.443130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.049131, 32.697319, 35.314610>,  <24.654417, 33.040119, 34.788960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.049131, 32.697319, 35.314610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270794, 32.775139, 34.990864>,  <25.403791, 32.821831, 34.796616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.270794, 32.775139, 34.990864>,  <25.049131, 32.697319, 35.314610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.270794, 32.775139, 34.990864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082147, 0.954777, 0.285750,
		0.828351, -0.224836, 0.513112,
		0.554154, 0.194550, -0.809360,
		25.437040, 32.833504, 34.748055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.585522, 33.090725, 35.616711>,  <25.049131, 32.697319, 35.314610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.585522, 33.090725, 35.616711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633610, 33.200794, 35.235172>,  <25.662462, 33.266834, 35.006248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.633610, 33.200794, 35.235172>,  <25.585522, 33.090725, 35.616711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.633610, 33.200794, 35.235172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252854, 0.920642, 0.297460,
		0.960006, -0.276946, 0.041102,
		0.120221, 0.275171, -0.953849,
		25.669676, 33.283344, 34.949017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.268183, 33.466438, 35.568256>,  <25.585522, 33.090725, 35.616711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.268183, 33.466438, 35.568256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040264, 33.574425, 35.257786>,  <25.903513, 33.639217, 35.071503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.040264, 33.574425, 35.257786>,  <26.268183, 33.466438, 35.568256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.040264, 33.574425, 35.257786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119527, 0.961682, 0.246741,
		0.813047, 0.047817, -0.580232,
		-0.569797, 0.269965, -0.776177,
		25.869326, 33.655415, 35.024933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.500376, 33.824764, 34.970016>,  <26.268183, 33.466438, 35.568256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.500376, 33.824764, 34.970016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118826, 33.929047, 35.029556>,  <25.889896, 33.991615, 35.065281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.118826, 33.929047, 35.029556>,  <26.500376, 33.824764, 34.970016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.118826, 33.929047, 35.029556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286289, 0.939189, 0.189636,
		-0.090358, 0.223503, -0.970506,
		-0.953873, 0.260710, 0.148850,
		25.832664, 34.007259, 35.074211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.016325, 33.581406, 34.439713>,  <26.500376, 33.824764, 34.970016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.016325, 33.581406, 34.439713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399467, 33.691799, 34.471577>,  <27.629353, 33.758034, 34.490696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.399467, 33.691799, 34.471577>,  <27.016325, 33.581406, 34.439713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.399467, 33.691799, 34.471577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251621, 0.939914, -0.230757,
		-0.138556, 0.200988, 0.969746,
		0.957857, 0.275981, 0.079658,
		27.686825, 33.774593, 34.495476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.141504, 34.169060, 34.982449>,  <27.016325, 33.581406, 34.439713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.141504, 34.169060, 34.982449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424620, 34.191608, 34.700779>,  <27.594488, 34.205139, 34.531776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.424620, 34.191608, 34.700779>,  <27.141504, 34.169060, 34.982449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.424620, 34.191608, 34.700779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149505, 0.986186, -0.071317,
		0.690424, 0.155755, 0.706438,
		0.707787, 0.056376, -0.704172,
		27.636955, 34.208523, 34.489529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441418, 34.801979, 35.132202>,  <27.141504, 34.169060, 34.982449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441418, 34.801979, 35.132202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570044, 34.741276, 34.758343>,  <27.647219, 34.704853, 34.534027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570044, 34.741276, 34.758343>,  <27.441418, 34.801979, 35.132202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570044, 34.741276, 34.758343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042407, 0.983775, -0.174323,
		0.945937, 0.095692, 0.309914,
		0.321567, -0.151756, -0.934647,
		27.666513, 34.695747, 34.477947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041319, 35.242863, 35.146984>,  <27.441418, 34.801979, 35.132202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041319, 35.242863, 35.146984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912699, 35.163754, 34.776581>,  <27.835527, 35.116287, 34.554340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.912699, 35.163754, 34.776581>,  <28.041319, 35.242863, 35.146984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.912699, 35.163754, 34.776581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323045, 0.942185, -0.089052,
		0.890083, 0.270508, -0.366849,
		-0.321550, -0.197772, -0.926008,
		27.816235, 35.104424, 34.498779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.478434, 35.671471, 34.665314>,  <28.041319, 35.242863, 35.146984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.478434, 35.671471, 34.665314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111012, 35.575584, 34.539585>,  <27.890558, 35.518055, 34.464149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.111012, 35.575584, 34.539585>,  <28.478434, 35.671471, 34.665314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.111012, 35.575584, 34.539585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257933, 0.966012, 0.017052,
		0.299548, 0.096736, -0.949164,
		-0.918554, -0.239713, -0.314319,
		27.835445, 35.503670, 34.445290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.261074, 36.163494, 34.225674>,  <28.478434, 35.671471, 34.665314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.261074, 36.163494, 34.225674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944990, 36.023247, 34.426727>,  <27.755341, 35.939098, 34.547359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944990, 36.023247, 34.426727>,  <28.261074, 36.163494, 34.225674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944990, 36.023247, 34.426727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309700, 0.936202, 0.166166,
		-0.528824, -0.024359, -0.848382,
		-0.790209, -0.350616, 0.502630,
		27.707928, 35.918060, 34.577515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.736288, 36.660336, 34.022896>,  <28.261074, 36.163494, 34.225674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.736288, 36.660336, 34.022896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614933, 36.483547, 34.360561>,  <27.542120, 36.377476, 34.563160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.614933, 36.483547, 34.360561>,  <27.736288, 36.660336, 34.022896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.614933, 36.483547, 34.360561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383750, 0.867575, 0.316307,
		-0.872177, -0.227986, -0.432816,
		-0.303387, -0.441969, 0.844168,
		27.523916, 36.350956, 34.613811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.082043, 36.906860, 34.143692>,  <27.736288, 36.660336, 34.022896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.082043, 36.906860, 34.143692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231342, 36.802265, 34.499737>,  <27.320923, 36.739506, 34.713364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.231342, 36.802265, 34.499737>,  <27.082043, 36.906860, 34.143692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.231342, 36.802265, 34.499737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071788, 0.948438, 0.308727,
		-0.924949, -0.179132, 0.335233,
		0.373251, -0.261490, 0.890116,
		27.343317, 36.723820, 34.766773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.715481, 37.452095, 34.591785>,  <27.082043, 36.906860, 34.143692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.715481, 37.452095, 34.591785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034382, 37.310040, 34.787037>,  <27.225723, 37.224808, 34.904186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034382, 37.310040, 34.787037>,  <26.715481, 37.452095, 34.591785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034382, 37.310040, 34.787037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184422, 0.913262, 0.363237,
		-0.574785, -0.199571, 0.793596,
		0.797252, -0.355139, 0.488124,
		27.273558, 37.203499, 34.933475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.620953, 37.498726, 35.357143>,  <26.715481, 37.452095, 34.591785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.620953, 37.498726, 35.357143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020939, 37.495987, 35.358822>,  <27.260931, 37.494343, 35.359829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.020939, 37.495987, 35.358822>,  <26.620953, 37.498726, 35.357143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.020939, 37.495987, 35.358822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002452, 0.758099, 0.652134,
		-0.007649, -0.652103, 0.758092,
		0.999968, -0.006846, 0.004200,
		27.320929, 37.493935, 35.360081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.932201, 37.557514, 36.006050>,  <26.620953, 37.498726, 35.357143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.932201, 37.557514, 36.006050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225704, 37.700169, 35.774738>,  <27.401806, 37.785763, 35.635952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.225704, 37.700169, 35.774738>,  <26.932201, 37.557514, 36.006050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.225704, 37.700169, 35.774738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032400, 0.831815, 0.554107,
		0.678637, -0.425317, 0.598796,
		0.733758, 0.356637, -0.578281,
		27.445831, 37.807159, 35.601254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.575399, 37.545773, 36.432392>,  <26.932201, 37.557514, 36.006050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.575399, 37.545773, 36.432392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547478, 37.831379, 36.153736>,  <27.530725, 38.002743, 35.986542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.547478, 37.831379, 36.153736>,  <27.575399, 37.545773, 36.432392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.547478, 37.831379, 36.153736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039417, 0.695825, 0.717129,
		0.996782, 0.077519, -0.020428,
		-0.069805, 0.714016, -0.696641,
		27.526537, 38.045586, 35.944744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988564, 37.560917, 36.976593>,  <27.575399, 37.545773, 36.432392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988564, 37.560917, 36.976593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245602, 37.590202, 37.281673>,  <28.399824, 37.607773, 37.464722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.245602, 37.590202, 37.281673>,  <27.988564, 37.560917, 36.976593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245602, 37.590202, 37.281673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113574, -0.993529, -0.000314,
		0.757742, 0.086825, -0.646753,
		0.642595, 0.073216, 0.762700,
		28.438379, 37.612167, 37.510483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.842476, 38.242920, 37.201077>,  <27.988564, 37.560917, 36.976593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.842476, 38.242920, 37.201077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636570, 38.305397, 37.538269>,  <27.513027, 38.342884, 37.740585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.636570, 38.305397, 37.538269>,  <27.842476, 38.242920, 37.201077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.636570, 38.305397, 37.538269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652836, 0.708759, 0.267331,
		-0.555719, 0.687943, -0.466809,
		-0.514764, 0.156189, 0.842985,
		27.482141, 38.352253, 37.791164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.517445, 39.005791, 37.288612>,  <27.842476, 38.242920, 37.201077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.517445, 39.005791, 37.288612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557133, 38.825459, 37.643444>,  <27.580946, 38.717258, 37.856342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.557133, 38.825459, 37.643444>,  <27.517445, 39.005791, 37.288612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.557133, 38.825459, 37.643444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606183, 0.734347, 0.305412,
		-0.789112, 0.507428, 0.346149,
		0.099219, -0.450834, 0.887076,
		27.586899, 38.690208, 37.909569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.400854, 38.752453, 36.528221>,  <27.517445, 39.005791, 37.288612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.400854, 38.752453, 36.528221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546534, 38.943615, 36.208481>,  <27.633942, 39.058311, 36.016636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546534, 38.943615, 36.208481>,  <27.400854, 38.752453, 36.528221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546534, 38.943615, 36.208481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189237, -0.878368, -0.438930,
		-0.911892, 0.008592, -0.410340,
		0.364201, 0.477909, -0.799350,
		27.655794, 39.086987, 35.968678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.974039, 38.611923, 35.902733>,  <27.400854, 38.752453, 36.528221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.974039, 38.611923, 35.902733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362783, 38.680550, 35.838165>,  <27.596029, 38.721725, 35.799423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.362783, 38.680550, 35.838165>,  <26.974039, 38.611923, 35.902733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.362783, 38.680550, 35.838165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103681, -0.926840, -0.360857,
		-0.211518, 0.333967, -0.918546,
		0.971859, 0.171564, -0.161417,
		27.654341, 38.732018, 35.789742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.293633, 38.437424, 35.240467>,  <26.974039, 38.611923, 35.902733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.293633, 38.437424, 35.240467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610590, 38.434608, 35.484455>,  <27.800764, 38.432919, 35.630848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.610590, 38.434608, 35.484455>,  <27.293633, 38.437424, 35.240467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.610590, 38.434608, 35.484455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290927, -0.874528, -0.388024,
		0.536163, 0.484925, -0.690925,
		0.792396, -0.007035, 0.609967,
		27.848309, 38.432499, 35.667446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.018896, 38.448315, 34.847916>,  <27.293633, 38.437424, 35.240467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.018896, 38.448315, 34.847916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003933, 38.266975, 35.204136>,  <27.994955, 38.158173, 35.417866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.003933, 38.266975, 35.204136>,  <28.018896, 38.448315, 34.847916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.003933, 38.266975, 35.204136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309402, -0.852635, -0.421052,
		0.950195, 0.259787, 0.172160,
		-0.037406, -0.453348, 0.890548,
		27.992712, 38.130970, 35.471302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.480051, 37.941048, 34.936684>,  <28.018896, 38.448315, 34.847916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.480051, 37.941048, 34.936684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208153, 37.823788, 35.205608>,  <28.045013, 37.753433, 35.366962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208153, 37.823788, 35.205608>,  <28.480051, 37.941048, 34.936684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208153, 37.823788, 35.205608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154957, -0.953359, -0.259024,
		0.716891, -0.071891, 0.693469,
		-0.679746, -0.293150, 0.672315,
		28.004229, 37.735844, 35.407303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.565435, 37.177010, 35.128944>,  <28.480051, 37.941048, 34.936684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.565435, 37.177010, 35.128944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184198, 37.260414, 35.216705>,  <27.955456, 37.310455, 35.269363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.184198, 37.260414, 35.216705>,  <28.565435, 37.177010, 35.128944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.184198, 37.260414, 35.216705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257167, -0.940119, -0.223698,
		0.159625, -0.269628, 0.949642,
		-0.953092, 0.208508, 0.219406,
		27.898272, 37.322968, 35.282528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.344496, 36.683937, 35.595463>,  <28.565435, 37.177010, 35.128944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.344496, 36.683937, 35.595463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014709, 36.837971, 35.429588>,  <27.816837, 36.930393, 35.330063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.014709, 36.837971, 35.429588>,  <28.344496, 36.683937, 35.595463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.014709, 36.837971, 35.429588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337795, -0.922792, -0.185338,
		-0.454039, -0.012727, 0.890891,
		-0.824466, 0.385089, -0.414685,
		27.767370, 36.953499, 35.305183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785570, 36.402424, 35.927425>,  <28.344496, 36.683937, 35.595463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785570, 36.402424, 35.927425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678242, 36.509777, 35.557350>,  <27.613846, 36.574188, 35.335304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.678242, 36.509777, 35.557350>,  <27.785570, 36.402424, 35.927425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678242, 36.509777, 35.557350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243282, -0.948154, -0.204491,
		-0.932104, 0.170213, 0.319703,
		-0.268321, 0.268385, -0.925188,
		27.597746, 36.590294, 35.279793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362371, 35.868855, 35.772640>,  <27.785570, 36.402424, 35.927425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362371, 35.868855, 35.772640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387384, 36.022354, 35.404114>,  <27.402393, 36.114452, 35.182999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.387384, 36.022354, 35.404114>,  <27.362371, 35.868855, 35.772640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.387384, 36.022354, 35.404114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172054, -0.905158, -0.388698,
		-0.983101, 0.182823, 0.009423,
		0.062534, 0.383750, -0.921317,
		27.406145, 36.137478, 35.127720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.615440, 35.910030, 35.417389>,  <27.362371, 35.868855, 35.772640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.615440, 35.910030, 35.417389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956875, 35.809643, 35.234783>,  <27.161736, 35.749409, 35.125221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.956875, 35.809643, 35.234783>,  <26.615440, 35.910030, 35.417389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.956875, 35.809643, 35.234783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365687, -0.912778, -0.181960,
		-0.371026, 0.322258, -0.870913,
		0.853588, -0.250969, -0.456510,
		27.212952, 35.734352, 35.097832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.894712, 36.070927, 34.720589>,  <26.615440, 35.910030, 35.417389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.894712, 36.070927, 34.720589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064083, 36.127277, 34.362625>,  <27.165705, 36.161087, 34.147846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.064083, 36.127277, 34.362625>,  <26.894712, 36.070927, 34.720589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.064083, 36.127277, 34.362625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436425, -0.897373, 0.065233,
		-0.793879, -0.418183, -0.441451,
		0.423425, 0.140873, -0.894911,
		27.191111, 36.169540, 34.094151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.750532, 35.551083, 34.301147>,  <26.894712, 36.070927, 34.720589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.750532, 35.551083, 34.301147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099987, 35.709393, 34.187927>,  <27.309660, 35.804379, 34.119995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.099987, 35.709393, 34.187927>,  <26.750532, 35.551083, 34.301147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.099987, 35.709393, 34.187927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369020, -0.918085, -0.144722,
		-0.317144, 0.021982, -0.948123,
		0.873638, 0.395773, -0.283053,
		27.362078, 35.828125, 34.103012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.872246, 35.367195, 33.565308>,  <26.750532, 35.551083, 34.301147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.872246, 35.367195, 33.565308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192169, 35.419434, 33.799656>,  <27.384123, 35.450775, 33.940266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.192169, 35.419434, 33.799656>,  <26.872246, 35.367195, 33.565308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.192169, 35.419434, 33.799656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262040, -0.954093, -0.145057,
		0.540036, 0.269541, -0.797314,
		0.799810, 0.130592, 0.585875,
		27.432112, 35.458611, 33.975418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.421904, 34.991608, 33.243187>,  <26.872246, 35.367195, 33.565308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.421904, 34.991608, 33.243187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501005, 35.020538, 33.634220>,  <27.548466, 35.037899, 33.868839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.501005, 35.020538, 33.634220>,  <27.421904, 34.991608, 33.243187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.501005, 35.020538, 33.634220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328006, -0.944669, 0.003543,
		0.923746, 0.319952, -0.210535,
		0.197752, 0.072329, 0.977580,
		27.560331, 35.042236, 33.927494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.139122, 34.730175, 33.260658>,  <27.421904, 34.991608, 33.243187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.139122, 34.730175, 33.260658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999388, 34.724167, 33.635410>,  <27.915548, 34.720562, 33.860260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.999388, 34.724167, 33.635410>,  <28.139122, 34.730175, 33.260658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.999388, 34.724167, 33.635410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289977, -0.952519, 0.092850,
		0.890999, 0.304109, 0.337103,
		-0.349334, -0.015023, 0.936878,
		27.894588, 34.719662, 33.916473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.642616, 34.286774, 33.701736>,  <28.139122, 34.730175, 33.260658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.642616, 34.286774, 33.701736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291889, 34.244442, 33.889347>,  <28.081453, 34.219044, 34.001915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.291889, 34.244442, 33.889347>,  <28.642616, 34.286774, 33.701736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291889, 34.244442, 33.889347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246326, -0.936613, 0.249155,
		0.412932, 0.333999, 0.847308,
		-0.876818, -0.105830, 0.469031,
		28.028843, 34.212692, 34.030056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.676369, 33.950939, 34.377605>,  <28.642616, 34.286774, 33.701736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.676369, 33.950939, 34.377605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315523, 33.889111, 34.216461>,  <28.099016, 33.852013, 34.119774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.315523, 33.889111, 34.216461>,  <28.676369, 33.950939, 34.377605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.315523, 33.889111, 34.216461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068172, -0.972967, 0.220652,
		-0.426078, 0.171589, 0.888265,
		-0.902114, -0.154570, -0.402862,
		28.044889, 33.842739, 34.095604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.396692, 34.235634, 34.354412>,  <28.676369, 33.950939, 34.377605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.396692, 34.235634, 34.354412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775225, 34.193363, 34.476585>,  <30.002344, 34.167999, 34.549889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.775225, 34.193363, 34.476585>,  <29.396692, 34.235634, 34.354412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.775225, 34.193363, 34.476585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322016, -0.388974, 0.863137,
		0.027593, -0.915168, -0.402127,
		0.946332, -0.105675, 0.305432,
		30.059124, 34.161659, 34.568214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.622238, 33.480991, 34.611221>,  <29.396692, 34.235634, 34.354412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.622238, 33.480991, 34.611221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839809, 33.763874, 34.791885>,  <29.970352, 33.933605, 34.900284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.839809, 33.763874, 34.791885>,  <29.622238, 33.480991, 34.611221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.839809, 33.763874, 34.791885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191963, -0.419107, 0.887412,
		0.816879, -0.569391, -0.092207,
		0.543929, 0.707208, 0.451661,
		30.002989, 33.976036, 34.927383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.317020, 33.214085, 34.961174>,  <29.622238, 33.480991, 34.611221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.317020, 33.214085, 34.961174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103842, 33.517967, 35.110203>,  <29.975935, 33.700298, 35.199619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103842, 33.517967, 35.110203>,  <30.317020, 33.214085, 34.961174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103842, 33.517967, 35.110203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192560, -0.537654, 0.820883,
		0.823947, 0.365745, 0.432831,
		-0.532947, 0.759710, 0.372570,
		29.943958, 33.745880, 35.221973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.570301, 32.973988, 34.265038>,  <30.317020, 33.214085, 34.961174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.570301, 32.973988, 34.265038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386709, 33.140545, 33.951107>,  <30.276554, 33.240479, 33.762749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386709, 33.140545, 33.951107>,  <30.570301, 32.973988, 34.265038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386709, 33.140545, 33.951107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569013, 0.540649, 0.619616,
		0.682320, 0.730968, -0.011214,
		-0.458982, 0.416396, -0.784825,
		30.249014, 33.265465, 33.715660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254845, 32.776169, 34.048336>,  <30.570301, 32.973988, 34.265038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254845, 32.776169, 34.048336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462919, 32.435139, 34.028267>,  <31.587765, 32.230518, 34.016224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.462919, 32.435139, 34.028267>,  <31.254845, 32.776169, 34.048336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.462919, 32.435139, 34.028267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250096, 0.208237, -0.945563,
		0.816614, 0.479320, 0.321548,
		0.520186, -0.852578, -0.050173,
		31.618975, 32.179367, 34.013214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.064617, 32.734375, 33.918842>,  <31.254845, 32.776169, 34.048336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.064617, 32.734375, 33.918842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918764, 32.382782, 33.795925>,  <31.831253, 32.171825, 33.722176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.918764, 32.382782, 33.795925>,  <32.064617, 32.734375, 33.918842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918764, 32.382782, 33.795925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366819, 0.167729, -0.915046,
		0.855854, -0.446376, 0.261269,
		-0.364632, -0.878985, -0.307291,
		31.809374, 32.119087, 33.703739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628727, 32.235577, 33.534801>,  <32.064617, 32.734375, 33.918842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628727, 32.235577, 33.534801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249859, 32.219242, 33.407551>,  <32.022537, 32.209442, 33.331200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249859, 32.219242, 33.407551>,  <32.628727, 32.235577, 33.534801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249859, 32.219242, 33.407551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307186, 0.169762, -0.936385,
		0.092243, -0.984639, -0.148250,
		-0.947168, -0.040834, -0.318127,
		31.965708, 32.206993, 33.312111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.707409, 31.944971, 32.898159>,  <32.628727, 32.235577, 33.534801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.707409, 31.944971, 32.898159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372570, 32.163788, 32.899086>,  <32.171665, 32.295078, 32.899643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372570, 32.163788, 32.899086>,  <32.707409, 31.944971, 32.898159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372570, 32.163788, 32.899086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155399, 0.241847, -0.957790,
		-0.524512, -0.801408, -0.287460,
		-0.837101, 0.547043, 0.002314,
		32.121441, 32.327900, 32.899780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344776, 31.652058, 32.331234>,  <32.707409, 31.944971, 32.898159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344776, 31.652058, 32.331234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229046, 32.033417, 32.365463>,  <32.159607, 32.262234, 32.386002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.229046, 32.033417, 32.365463>,  <32.344776, 31.652058, 32.331234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.229046, 32.033417, 32.365463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057692, 0.071870, -0.995744,
		-0.955489, -0.293036, 0.034209,
		-0.289330, 0.953397, 0.085577,
		32.142246, 32.319435, 32.391136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.233185, 31.893393, 31.601089>,  <32.344776, 31.652058, 32.331234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.233185, 31.893393, 31.601089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152607, 32.226192, 31.807854>,  <32.104259, 32.425873, 31.931913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.152607, 32.226192, 31.807854>,  <32.233185, 31.893393, 31.601089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152607, 32.226192, 31.807854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217119, 0.476674, -0.851846,
		-0.955134, -0.283829, 0.084621,
		-0.201442, 0.832000, 0.516912,
		32.092175, 32.475792, 31.962927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650770, 32.187023, 31.389114>,  <32.233185, 31.893393, 31.601089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650770, 32.187023, 31.389114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782831, 32.522541, 31.562283>,  <31.862068, 32.723854, 31.666183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.782831, 32.522541, 31.562283>,  <31.650770, 32.187023, 31.389114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.782831, 32.522541, 31.562283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222020, 0.514776, -0.828078,
		-0.917445, 0.177276, 0.356185,
		0.330153, 0.838796, 0.432920,
		31.881878, 32.774181, 31.692158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.093582, 32.693253, 31.230450>,  <31.650770, 32.187023, 31.389114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.093582, 32.693253, 31.230450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452776, 32.858532, 31.290974>,  <31.668291, 32.957699, 31.327288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.452776, 32.858532, 31.290974>,  <31.093582, 32.693253, 31.230450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.452776, 32.858532, 31.290974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112004, 0.547163, -0.829499,
		-0.425538, 0.727928, 0.537622,
		0.897983, 0.413199, 0.151308,
		31.722170, 32.982491, 31.336367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102358, 33.358829, 30.968670>,  <31.093582, 32.693253, 31.230450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102358, 33.358829, 30.968670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499601, 33.324795, 31.000906>,  <31.737947, 33.304375, 31.020247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.499601, 33.324795, 31.000906>,  <31.102358, 33.358829, 30.968670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.499601, 33.324795, 31.000906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114609, 0.561512, -0.819493,
		0.024476, 0.823082, 0.567394,
		0.993109, -0.085086, 0.080589,
		31.797535, 33.299271, 31.025084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.309284, 34.005501, 30.930176>,  <31.102358, 33.358829, 30.968670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.309284, 34.005501, 30.930176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635824, 33.808353, 30.809738>,  <31.831747, 33.690063, 30.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.635824, 33.808353, 30.809738>,  <31.309284, 34.005501, 30.930176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635824, 33.808353, 30.809738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009478, 0.532682, -0.846262,
		0.577482, 0.687991, 0.439526,
		0.816348, -0.492867, -0.301094,
		31.880728, 33.660492, 30.719410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.807592, 34.398479, 30.702982>,  <31.309284, 34.005501, 30.930176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.807592, 34.398479, 30.702982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888132, 34.058281, 30.508612>,  <31.936455, 33.854164, 30.391991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.888132, 34.058281, 30.508612>,  <31.807592, 34.398479, 30.702982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888132, 34.058281, 30.508612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172373, 0.457577, -0.872302,
		0.964234, 0.259397, -0.054470,
		0.201348, -0.850492, -0.485925,
		31.948536, 33.803135, 30.362835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220177, 34.495815, 30.068975>,  <31.807592, 34.398479, 30.702982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220177, 34.495815, 30.068975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040142, 34.151955, 29.972296>,  <31.932121, 33.945637, 29.914288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.040142, 34.151955, 29.972296>,  <32.220177, 34.495815, 30.068975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.040142, 34.151955, 29.972296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294086, 0.398261, -0.868851,
		0.843171, -0.319975, -0.432063,
		-0.450084, -0.859654, -0.241702,
		31.905117, 33.894058, 29.899786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482098, 34.368687, 29.446053>,  <32.220177, 34.495815, 30.068975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482098, 34.368687, 29.446053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139740, 34.164764, 29.480801>,  <31.934326, 34.042412, 29.501650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.139740, 34.164764, 29.480801>,  <32.482098, 34.368687, 29.446053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.139740, 34.164764, 29.480801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278340, 0.312540, -0.908210,
		0.435861, -0.801509, -0.409399,
		-0.855892, -0.509806, 0.086868,
		31.882973, 34.011822, 29.506861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307034, 34.239067, 28.837124>,  <32.482098, 34.368687, 29.446053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307034, 34.239067, 28.837124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958967, 34.109348, 28.985525>,  <31.750128, 34.031517, 29.074566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.958967, 34.109348, 28.985525>,  <32.307034, 34.239067, 28.837124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958967, 34.109348, 28.985525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416225, 0.080727, -0.905671,
		0.263754, -0.942505, -0.205225,
		-0.870167, -0.324295, 0.371002,
		31.697918, 34.012062, 29.096827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.111538, 33.927788, 28.216497>,  <32.307034, 34.239067, 28.837124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.111538, 33.927788, 28.216497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780920, 33.985538, 28.434113>,  <31.582548, 34.020187, 28.564682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780920, 33.985538, 28.434113>,  <32.111538, 33.927788, 28.216497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780920, 33.985538, 28.434113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511108, 0.212351, -0.832872,
		-0.235773, -0.966469, -0.101727,
		-0.826547, 0.144375, 0.544037,
		31.532955, 34.028851, 28.597324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.605816, 33.597466, 27.861822>,  <32.111538, 33.927788, 28.216497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.605816, 33.597466, 27.861822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405146, 33.839233, 28.109369>,  <31.284744, 33.984295, 28.257898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.405146, 33.839233, 28.109369>,  <31.605816, 33.597466, 27.861822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405146, 33.839233, 28.109369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683298, 0.161851, -0.711974,
		-0.530496, -0.780052, 0.331803,
		-0.501674, 0.604420, 0.618870,
		31.254642, 34.020557, 28.295031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.914589, 33.446682, 27.726257>,  <31.605816, 33.597466, 27.861822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.914589, 33.446682, 27.726257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949974, 33.817387, 27.872292>,  <30.971205, 34.039810, 27.959913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949974, 33.817387, 27.872292>,  <30.914589, 33.446682, 27.726257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949974, 33.817387, 27.872292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636859, 0.334446, -0.694663,
		-0.765888, -0.171056, 0.619803,
		0.088464, 0.926761, 0.365087,
		30.976513, 34.095413, 27.981817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271088, 33.625359, 27.654886>,  <30.914589, 33.446682, 27.726257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271088, 33.625359, 27.654886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482801, 33.960751, 27.706739>,  <30.609831, 34.161987, 27.737852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.482801, 33.960751, 27.706739>,  <30.271088, 33.625359, 27.654886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.482801, 33.960751, 27.706739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628099, 0.489944, -0.604522,
		-0.570394, 0.238542, 0.785969,
		0.529285, 0.838482, 0.129633,
		30.641586, 34.212296, 27.745630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.750525, 34.127167, 27.628838>,  <30.271088, 33.625359, 27.654886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.750525, 34.127167, 27.628838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085491, 34.334705, 27.560104>,  <30.286472, 34.459229, 27.518866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.085491, 34.334705, 27.560104>,  <29.750525, 34.127167, 27.628838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.085491, 34.334705, 27.560104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474001, 0.532888, -0.700966,
		-0.272128, 0.668451, 0.692185,
		0.837419, 0.518849, -0.171832,
		30.336718, 34.490360, 27.508554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456470, 34.596680, 27.265827>,  <29.750525, 34.127167, 27.628838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456470, 34.596680, 27.265827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837273, 34.717190, 27.287416>,  <30.065754, 34.789497, 27.300369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837273, 34.717190, 27.287416>,  <29.456470, 34.596680, 27.265827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837273, 34.717190, 27.287416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203680, 0.755216, -0.623027,
		-0.228465, 0.582134, 0.780336,
		0.952007, 0.301279, 0.053972,
		30.122875, 34.807575, 27.303608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530987, 35.335361, 27.511051>,  <29.456470, 34.596680, 27.265827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530987, 35.335361, 27.511051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823278, 35.241219, 27.254726>,  <29.998653, 35.184734, 27.100931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.823278, 35.241219, 27.254726>,  <29.530987, 35.335361, 27.511051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.823278, 35.241219, 27.254726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309011, 0.722979, -0.617910,
		0.608723, 0.649544, 0.455576,
		0.730732, -0.235358, -0.640810,
		30.042498, 35.170612, 27.062483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.716028, 35.972679, 27.235390>,  <29.530987, 35.335361, 27.511051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.716028, 35.972679, 27.235390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837315, 35.697601, 26.971529>,  <29.910086, 35.532555, 26.813211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.837315, 35.697601, 26.971529>,  <29.716028, 35.972679, 27.235390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.837315, 35.697601, 26.971529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286719, 0.594325, -0.751379,
		0.908765, 0.416964, -0.016967,
		0.303214, -0.687691, -0.659653,
		29.928278, 35.491295, 26.773634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.189699, 36.252224, 26.808741>,  <29.716028, 35.972679, 27.235390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.189699, 36.252224, 26.808741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038731, 35.945648, 26.600845>,  <29.948149, 35.761703, 26.476109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.038731, 35.945648, 26.600845>,  <30.189699, 36.252224, 26.808741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.038731, 35.945648, 26.600845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186487, 0.612653, -0.768035,
		0.907069, -0.192950, -0.374160,
		-0.377423, -0.766437, -0.519736,
		29.925503, 35.715717, 26.444925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.446465, 36.371956, 26.161831>,  <30.189699, 36.252224, 26.808741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.446465, 36.371956, 26.161831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141708, 36.125061, 26.083303>,  <29.958855, 35.976925, 26.036186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141708, 36.125061, 26.083303>,  <30.446465, 36.371956, 26.161831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141708, 36.125061, 26.083303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231439, 0.542522, -0.807531,
		0.604949, -0.569812, -0.556194,
		-0.761888, -0.617240, -0.196321,
		29.913141, 35.939888, 26.024408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.520576, 36.128609, 25.429512>,  <30.446465, 36.371956, 26.161831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.520576, 36.128609, 25.429512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135971, 36.122562, 25.539251>,  <29.905209, 36.118935, 25.605095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135971, 36.122562, 25.539251>,  <30.520576, 36.128609, 25.429512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135971, 36.122562, 25.539251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247699, 0.479811, -0.841681,
		-0.118914, -0.877242, -0.465088,
		-0.961512, -0.015114, 0.274348,
		29.847517, 36.118027, 25.621555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261744, 36.046970, 24.855568>,  <30.520576, 36.128609, 25.429512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261744, 36.046970, 24.855568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960581, 36.182652, 25.081160>,  <29.779882, 36.264061, 25.216515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.960581, 36.182652, 25.081160>,  <30.261744, 36.046970, 24.855568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.960581, 36.182652, 25.081160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293225, 0.594299, -0.748884,
		-0.589194, -0.729214, -0.347990,
		-0.752907, 0.339199, 0.563981,
		29.734709, 36.284412, 25.250355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.735783, 35.975723, 24.377724>,  <30.261744, 36.046970, 24.855568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.735783, 35.975723, 24.377724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612907, 36.222965, 24.667160>,  <29.539183, 36.371311, 24.840822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.612907, 36.222965, 24.667160>,  <29.735783, 35.975723, 24.377724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.612907, 36.222965, 24.667160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336348, 0.640761, -0.690141,
		-0.890228, -0.455381, 0.011064,
		-0.307188, 0.618104, 0.723590,
		29.520750, 36.408398, 24.884237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236231, 36.216610, 24.060570>,  <29.735783, 35.975723, 24.377724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236231, 36.216610, 24.060570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292488, 36.481552, 24.354919>,  <29.326242, 36.640518, 24.531528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.292488, 36.481552, 24.354919>,  <29.236231, 36.216610, 24.060570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292488, 36.481552, 24.354919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347902, 0.728923, -0.589605,
		-0.926922, -0.173087, 0.332952,
		0.140643, 0.662353, 0.735872,
		29.334681, 36.680260, 24.575682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.582335, 36.515709, 24.132767>,  <29.236231, 36.216610, 24.060570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.582335, 36.515709, 24.132767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863110, 36.766373, 24.268167>,  <29.031574, 36.916771, 24.349409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.863110, 36.766373, 24.268167>,  <28.582335, 36.515709, 24.132767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.863110, 36.766373, 24.268167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393460, 0.737340, -0.549107,
		-0.593694, 0.252251, 0.764132,
		0.701938, 0.626657, 0.338504,
		29.073690, 36.954369, 24.369719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235201, 37.113895, 24.279221>,  <28.582335, 36.515709, 24.132767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235201, 37.113895, 24.279221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613981, 37.241505, 24.263680>,  <28.841249, 37.318069, 24.254354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.613981, 37.241505, 24.263680>,  <28.235201, 37.113895, 24.279221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.613981, 37.241505, 24.263680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282737, 0.769506, -0.572643,
		-0.152789, 0.553250, 0.818884,
		0.946950, 0.319022, -0.038852,
		28.898066, 37.337212, 24.252024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.256002, 37.825222, 24.527607>,  <28.235201, 37.113895, 24.279221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.256002, 37.825222, 24.527607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576694, 37.752872, 24.299742>,  <28.769110, 37.709461, 24.163023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.576694, 37.752872, 24.299742>,  <28.256002, 37.825222, 24.527607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.576694, 37.752872, 24.299742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291674, 0.713510, -0.637047,
		0.521687, 0.676895, 0.519284,
		0.801728, -0.180877, -0.569662,
		28.817213, 37.698608, 24.128843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335278, 38.547516, 24.260622>,  <28.256002, 37.825222, 24.527607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335278, 38.547516, 24.260622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574253, 38.312870, 24.041918>,  <28.717638, 38.172081, 23.910696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.574253, 38.312870, 24.041918>,  <28.335278, 38.547516, 24.260622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.574253, 38.312870, 24.041918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131638, 0.600828, -0.788465,
		0.791036, 0.543034, 0.281736,
		0.597438, -0.586618, -0.546761,
		28.753485, 38.136887, 23.877890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.800714, 39.020226, 23.909504>,  <28.335278, 38.547516, 24.260622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.800714, 39.020226, 23.909504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758219, 38.669857, 23.721256>,  <28.732721, 38.459637, 23.608307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.758219, 38.669857, 23.721256>,  <28.800714, 39.020226, 23.909504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758219, 38.669857, 23.721256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161482, 0.482213, -0.861042,
		0.981140, -0.015480, -0.192675,
		-0.106240, -0.875917, -0.470619,
		28.726347, 38.407082, 23.580070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285271, 38.940945, 23.331631>,  <28.800714, 39.020226, 23.909504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285271, 38.940945, 23.331631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960646, 38.714237, 23.274857>,  <28.765871, 38.578213, 23.240793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.960646, 38.714237, 23.274857>,  <29.285271, 38.940945, 23.331631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.960646, 38.714237, 23.274857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147609, 0.433936, -0.888770,
		0.565314, -0.700340, -0.435825,
		-0.811561, -0.566766, -0.141933,
		28.717176, 38.544209, 23.232277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.278559, 38.818111, 22.629126>,  <29.285271, 38.940945, 23.331631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.278559, 38.818111, 22.629126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903036, 38.714115, 22.719500>,  <28.677723, 38.651718, 22.773724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.903036, 38.714115, 22.719500>,  <29.278559, 38.818111, 22.629126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903036, 38.714115, 22.719500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328151, 0.475752, -0.816074,
		0.104682, -0.840277, -0.531955,
		-0.938807, -0.259990, 0.225935,
		28.621393, 38.636120, 22.787279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051847, 38.462864, 22.059961>,  <29.278559, 38.818111, 22.629126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051847, 38.462864, 22.059961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724203, 38.569080, 22.263351>,  <28.527617, 38.632809, 22.385386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.724203, 38.569080, 22.263351>,  <29.051847, 38.462864, 22.059961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724203, 38.569080, 22.263351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483714, 0.156747, -0.861075,
		-0.308350, -0.951273, 0.000051,
		-0.819110, 0.265537, 0.508477,
		28.478470, 38.648743, 22.415895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.519892, 38.194126, 21.654987>,  <29.051847, 38.462864, 22.059961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.519892, 38.194126, 21.654987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324795, 38.448696, 21.894009>,  <28.207737, 38.601437, 22.037422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.324795, 38.448696, 21.894009>,  <28.519892, 38.194126, 21.654987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.324795, 38.448696, 21.894009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626167, 0.221912, -0.747442,
		-0.608295, -0.738728, 0.290273,
		-0.487741, 0.636425, 0.597555,
		28.178473, 38.639622, 22.073275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.845350, 37.971405, 21.575466>,  <28.519892, 38.194126, 21.654987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.845350, 37.971405, 21.575466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818930, 38.349339, 21.703794>,  <27.803078, 38.576099, 21.780790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.818930, 38.349339, 21.703794>,  <27.845350, 37.971405, 21.575466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818930, 38.349339, 21.703794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666731, 0.197417, -0.718677,
		-0.742366, -0.261370, 0.616911,
		-0.066052, 0.944835, 0.320819,
		27.799114, 38.632790, 21.800039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.154274, 38.167625, 21.563622>,  <27.845350, 37.971405, 21.575466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.154274, 38.167625, 21.563622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336634, 38.523487, 21.553320>,  <27.446051, 38.737003, 21.547138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.336634, 38.523487, 21.553320>,  <27.154274, 38.167625, 21.563622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.336634, 38.523487, 21.553320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.650606, 0.313375, -0.691742,
		-0.607343, 0.332122, 0.721685,
		0.455901, 0.889658, -0.025755,
		27.473404, 38.790386, 21.545593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.595364, 38.723690, 21.521811>,  <27.154274, 38.167625, 21.563622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.595364, 38.723690, 21.521811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935099, 38.903000, 21.410328>,  <27.138939, 39.010586, 21.343437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.935099, 38.903000, 21.410328>,  <26.595364, 38.723690, 21.521811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935099, 38.903000, 21.410328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493356, 0.486413, -0.721112,
		-0.187689, 0.749969, 0.634287,
		0.849337, 0.448274, -0.278708,
		27.189899, 39.037483, 21.326715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.453022, 39.400700, 21.498127>,  <26.595364, 38.723690, 21.521811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.453022, 39.400700, 21.498127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769079, 39.374332, 21.254379>,  <26.958714, 39.358513, 21.108130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.769079, 39.374332, 21.254379>,  <26.453022, 39.400700, 21.498127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.769079, 39.374332, 21.254379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486302, 0.537737, -0.688730,
		0.373078, 0.840532, 0.392834,
		0.790141, -0.065914, -0.609370,
		27.006121, 39.354557, 21.071568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532972, 40.070374, 21.098057>,  <26.453022, 39.400700, 21.498127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532972, 40.070374, 21.098057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734558, 39.804813, 20.877056>,  <26.855509, 39.645477, 20.744455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.734558, 39.804813, 20.877056>,  <26.532972, 40.070374, 21.098057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.734558, 39.804813, 20.877056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379938, 0.404064, -0.832093,
		0.775673, 0.629261, -0.048608,
		0.503963, -0.663900, -0.552501,
		26.885748, 39.605644, 20.711306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.991020, 40.520836, 20.601954>,  <26.532972, 40.070374, 21.098057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.991020, 40.520836, 20.601954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930258, 40.157562, 20.445944>,  <26.893801, 39.939598, 20.352339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.930258, 40.157562, 20.445944>,  <26.991020, 40.520836, 20.601954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.930258, 40.157562, 20.445944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406498, 0.417091, -0.812893,
		0.900935, 0.035060, -0.432535,
		-0.151907, -0.908188, -0.390024,
		26.884686, 39.885105, 20.328938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.413725, 40.493507, 19.923227>,  <26.991020, 40.520836, 20.601954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.413725, 40.493507, 19.923227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123569, 40.218929, 19.902822>,  <26.949476, 40.054180, 19.890579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.123569, 40.218929, 19.902822>,  <27.413725, 40.493507, 19.923227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.123569, 40.218929, 19.902822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384504, 0.465552, -0.797131,
		0.570938, -0.558614, -0.601648,
		-0.725387, -0.686448, -0.051012,
		26.905952, 40.012997, 19.887520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.487000, 40.242058, 19.251341>,  <27.413725, 40.493507, 19.923227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.487000, 40.242058, 19.251341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122402, 40.136898, 19.377871>,  <26.903643, 40.073803, 19.453789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.122402, 40.136898, 19.377871>,  <27.487000, 40.242058, 19.251341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.122402, 40.136898, 19.377871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401103, 0.397872, -0.825115,
		0.091067, -0.878966, -0.468108,
		-0.911495, -0.262900, 0.316323,
		26.848953, 40.058029, 19.472767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118633, 39.835739, 18.656792>,  <27.487000, 40.242058, 19.251341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118633, 39.835739, 18.656792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842287, 39.977512, 18.908850>,  <26.676479, 40.062576, 19.060085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.842287, 39.977512, 18.908850>,  <27.118633, 39.835739, 18.656792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.842287, 39.977512, 18.908850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512221, 0.375153, -0.772587,
		-0.510232, -0.856526, -0.077631,
		-0.690864, 0.354434, 0.630146,
		26.635027, 40.083843, 19.097893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.472103, 39.736694, 18.290743>,  <27.118633, 39.835739, 18.656792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.472103, 39.736694, 18.290743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369591, 39.995457, 18.578028>,  <26.308083, 40.150715, 18.750399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.369591, 39.995457, 18.578028>,  <26.472103, 39.736694, 18.290743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.369591, 39.995457, 18.578028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332652, 0.638615, -0.693912,
		-0.907559, -0.416751, 0.051531,
		-0.256280, 0.646908, 0.718213,
		26.292707, 40.189529, 18.793491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728590, 39.932407, 18.244165>,  <26.472103, 39.736694, 18.290743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.728590, 39.932407, 18.244165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891251, 40.250458, 18.424126>,  <25.988848, 40.441288, 18.532101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891251, 40.250458, 18.424126>,  <25.728590, 39.932407, 18.244165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891251, 40.250458, 18.424126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387593, 0.596095, -0.703166,
		-0.827288, 0.111567, 0.550589,
		0.406653, 0.795125, 0.449899,
		26.013247, 40.488995, 18.559095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.239006, 40.373520, 18.207634>,  <25.728590, 39.932407, 18.244165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.239006, 40.373520, 18.207634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567301, 40.590134, 18.280439>,  <25.764278, 40.720104, 18.324123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.567301, 40.590134, 18.280439>,  <25.239006, 40.373520, 18.207634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.567301, 40.590134, 18.280439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313397, 0.693142, -0.649104,
		-0.477676, 0.475701, 0.738603,
		0.820737, 0.541537, 0.182015,
		25.813522, 40.752594, 18.335043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.000980, 40.988907, 18.040859>,  <25.239006, 40.373520, 18.207634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.000980, 40.988907, 18.040859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399416, 41.021179, 18.055267>,  <25.638477, 41.040543, 18.063911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.399416, 41.021179, 18.055267>,  <25.000980, 40.988907, 18.040859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.399416, 41.021179, 18.055267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028152, 0.676233, -0.736149,
		-0.083749, 0.732256, 0.675860,
		0.996089, 0.080679, 0.036020,
		25.698242, 41.045383, 18.066072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.182907, 41.623520, 18.228697>,  <25.000980, 40.988907, 18.040859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.182907, 41.623520, 18.228697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476357, 41.478642, 17.998703>,  <25.652428, 41.391712, 17.860706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.476357, 41.478642, 17.998703>,  <25.182907, 41.623520, 18.228697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.476357, 41.478642, 17.998703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010291, 0.840100, -0.542333,
		0.679476, 0.403787, 0.612592,
		0.733626, -0.362198, -0.574983,
		25.696444, 41.369984, 17.826208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697441, 42.072990, 18.255375>,  <25.182907, 41.623520, 18.228697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697441, 42.072990, 18.255375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707352, 41.884678, 17.902615>,  <25.713297, 41.771690, 17.690958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.707352, 41.884678, 17.902615>,  <25.697441, 42.072990, 18.255375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.707352, 41.884678, 17.902615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138660, 0.872025, -0.469410,
		0.990030, 0.133913, -0.043675,
		0.024775, -0.470786, -0.881899,
		25.714785, 41.743443, 17.638044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.318979, 42.345753, 17.827475>,  <25.697441, 42.072990, 18.255375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.318979, 42.345753, 17.827475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987864, 42.216732, 17.643854>,  <25.789194, 42.139320, 17.533682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.987864, 42.216732, 17.643854>,  <26.318979, 42.345753, 17.827475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.987864, 42.216732, 17.643854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099101, 0.889409, -0.446241,
		0.552218, -0.323901, -0.768208,
		-0.827789, -0.322552, -0.459049,
		25.739527, 42.119965, 17.506140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.807533, 42.512043, 18.388599>,  <26.318979, 42.345753, 17.827475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.807533, 42.512043, 18.388599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015203, 42.684380, 18.683851>,  <27.139805, 42.787781, 18.861002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.015203, 42.684380, 18.683851>,  <26.807533, 42.512043, 18.388599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.015203, 42.684380, 18.683851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560574, 0.823581, -0.086431,
		-0.645147, -0.368903, 0.669101,
		0.519174, 0.430841, 0.738129,
		27.170956, 42.813633, 18.905291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.307735, 43.166603, 18.548786>,  <26.807533, 42.512043, 18.388599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.307735, 43.166603, 18.548786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654419, 43.236511, 18.735664>,  <26.862429, 43.278458, 18.847792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.654419, 43.236511, 18.735664>,  <26.307735, 43.166603, 18.548786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.654419, 43.236511, 18.735664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282429, 0.943958, 0.170815,
		-0.411159, -0.279996, 0.867497,
		0.866708, 0.174774, 0.467196,
		26.914431, 43.288944, 18.875824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.866076, 43.114830, 18.018188>,  <26.307735, 43.166603, 18.548786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.866076, 43.114830, 18.018188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097759, 43.438950, 18.053797>,  <27.236771, 43.633423, 18.075161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.097759, 43.438950, 18.053797>,  <26.866076, 43.114830, 18.018188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.097759, 43.438950, 18.053797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234063, -0.269921, 0.934001,
		0.780852, -0.520147, -0.346003,
		0.579211, 0.810303, 0.089021,
		27.271523, 43.682041, 18.080503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529902, 42.849152, 18.145058>,  <26.866076, 43.114830, 18.018188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529902, 42.849152, 18.145058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407747, 43.209839, 18.267458>,  <27.334455, 43.426250, 18.340899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.407747, 43.209839, 18.267458>,  <27.529902, 42.849152, 18.145058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.407747, 43.209839, 18.267458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162575, -0.267259, 0.949811,
		0.938248, 0.339807, -0.064981,
		-0.305386, 0.901723, 0.306000,
		27.316132, 43.480354, 18.359259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.055111, 43.199471, 18.434412>,  <27.529902, 42.849152, 18.145058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.055111, 43.199471, 18.434412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693687, 43.290524, 18.579611>,  <27.476833, 43.345158, 18.666731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.693687, 43.290524, 18.579611>,  <28.055111, 43.199471, 18.434412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.693687, 43.290524, 18.579611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263716, -0.372257, 0.889875,
		0.337694, 0.899782, 0.276325,
		-0.903558, 0.227635, 0.362996,
		27.422621, 43.358814, 18.688509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.994200, 43.699341, 19.085054>,  <28.055111, 43.199471, 18.434412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.994200, 43.699341, 19.085054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699980, 43.431358, 19.044821>,  <27.523447, 43.270569, 19.020679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.699980, 43.431358, 19.044821>,  <27.994200, 43.699341, 19.085054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699980, 43.431358, 19.044821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281543, -0.437337, 0.854090,
		-0.616197, 0.599908, 0.510306,
		-0.735551, -0.669960, -0.100586,
		27.479315, 43.230370, 19.014645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.859940, 43.619865, 19.705826>,  <27.994200, 43.699341, 19.085054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.859940, 43.619865, 19.705826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738836, 43.292645, 19.510220>,  <27.666174, 43.096313, 19.392857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.738836, 43.292645, 19.510220>,  <27.859940, 43.619865, 19.705826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.738836, 43.292645, 19.510220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270231, -0.565720, 0.779061,
		-0.913954, 0.103720, 0.392339,
		-0.302758, -0.818049, -0.489013,
		27.648008, 43.047230, 19.363516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.618660, 43.180531, 20.187128>,  <27.859940, 43.619865, 19.705826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.618660, 43.180531, 20.187128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642355, 42.935841, 19.871588>,  <27.656572, 42.789028, 19.682264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.642355, 42.935841, 19.871588>,  <27.618660, 43.180531, 20.187128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.642355, 42.935841, 19.871588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113511, -0.780985, 0.614147,
		-0.991769, -0.125923, 0.023174,
		0.059236, -0.611723, -0.788851,
		27.660126, 42.752323, 19.634932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.187794, 42.590729, 20.309933>,  <27.618660, 43.180531, 20.187128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.187794, 42.590729, 20.309933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497477, 42.506500, 20.071182>,  <27.683287, 42.455963, 19.927931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.497477, 42.506500, 20.071182>,  <27.187794, 42.590729, 20.309933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.497477, 42.506500, 20.071182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363910, -0.623480, 0.691984,
		-0.517856, -0.752948, -0.406072,
		0.774206, -0.210574, -0.596878,
		27.729738, 42.443329, 19.892118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.265629, 41.923115, 20.443981>,  <27.187794, 42.590729, 20.309933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.265629, 41.923115, 20.443981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617504, 42.041153, 20.294813>,  <27.828629, 42.111977, 20.205313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617504, 42.041153, 20.294813>,  <27.265629, 41.923115, 20.443981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617504, 42.041153, 20.294813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474392, -0.599266, 0.644851,
		-0.033190, -0.744179, -0.667156,
		0.879687, 0.295091, -0.372922,
		27.881411, 42.129681, 20.182936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.622362, 41.324921, 20.280886>,  <27.265629, 41.923115, 20.443981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.622362, 41.324921, 20.280886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901714, 41.604950, 20.340433>,  <28.069326, 41.772968, 20.376162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.901714, 41.604950, 20.340433>,  <27.622362, 41.324921, 20.280886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.901714, 41.604950, 20.340433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367350, -0.529120, 0.764909,
		0.614261, -0.479512, -0.626699,
		0.698382, 0.700071, 0.148869,
		28.111229, 41.814972, 20.385094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.214893, 41.012299, 20.478832>,  <27.622362, 41.324921, 20.280886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.214893, 41.012299, 20.478832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304363, 41.385708, 20.590908>,  <28.358046, 41.609753, 20.658154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.304363, 41.385708, 20.590908>,  <28.214893, 41.012299, 20.478832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.304363, 41.385708, 20.590908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488659, -0.356141, 0.796478,
		0.843317, -0.041233, -0.535833,
		0.223673, 0.933522, 0.280190,
		28.371466, 41.665764, 20.674965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993877, 41.161594, 20.458910>,  <28.214893, 41.012299, 20.478832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993877, 41.161594, 20.458910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826822, 41.407413, 20.726614>,  <28.726589, 41.554905, 20.887236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.826822, 41.407413, 20.726614>,  <28.993877, 41.161594, 20.458910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826822, 41.407413, 20.726614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627709, -0.337402, 0.701528,
		0.656933, 0.713085, -0.244846,
		-0.417637, 0.614549, 0.669260,
		28.701530, 41.591778, 20.927393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.504343, 41.632027, 20.827869>,  <28.993877, 41.161594, 20.458910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.504343, 41.632027, 20.827869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213634, 41.683838, 21.097692>,  <29.039209, 41.714924, 21.259586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213634, 41.683838, 21.097692>,  <29.504343, 41.632027, 20.827869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213634, 41.683838, 21.097692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602004, -0.352769, 0.716341,
		0.330746, 0.926703, 0.178409,
		-0.726772, 0.129524, 0.674556,
		28.995604, 41.722694, 21.300058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.849655, 41.827927, 21.461746>,  <29.504343, 41.632027, 20.827869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.849655, 41.827927, 21.461746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495035, 41.751789, 21.630409>,  <29.282263, 41.706108, 21.731607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495035, 41.751789, 21.630409>,  <29.849655, 41.827927, 21.461746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495035, 41.751789, 21.630409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459556, -0.257460, 0.850013,
		-0.053234, 0.947356, 0.315725,
		-0.886552, -0.190343, 0.421657,
		29.229069, 41.694687, 21.756907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.820801, 42.131523, 22.024630>,  <29.849655, 41.827927, 21.461746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.820801, 42.131523, 22.024630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550974, 41.840500, 22.074627>,  <29.389078, 41.665886, 22.104626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.550974, 41.840500, 22.074627>,  <29.820801, 42.131523, 22.024630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550974, 41.840500, 22.074627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405319, -0.223510, 0.886431,
		-0.616988, 0.648621, 0.445664,
		-0.674568, -0.727554, 0.124996,
		29.348604, 41.622234, 22.112125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.632383, 42.173000, 22.759020>,  <29.820801, 42.131523, 22.024630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.632383, 42.173000, 22.759020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510262, 41.814770, 22.629572>,  <29.436989, 41.599831, 22.551903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.510262, 41.814770, 22.629572>,  <29.632383, 42.173000, 22.759020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.510262, 41.814770, 22.629572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212225, -0.395292, 0.893703,
		-0.928304, 0.204173, 0.310749,
		-0.305307, -0.895577, -0.323620,
		29.418669, 41.546097, 22.532486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129065, 41.925247, 23.255152>,  <29.632383, 42.173000, 22.759020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129065, 41.925247, 23.255152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270947, 41.608593, 23.056154>,  <29.356075, 41.418602, 22.936756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.270947, 41.608593, 23.056154>,  <29.129065, 41.925247, 23.255152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.270947, 41.608593, 23.056154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094536, -0.498999, 0.861430,
		-0.930187, -0.352584, -0.102159,
		0.354704, -0.791634, -0.497495,
		29.377357, 41.371101, 22.906906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.909138, 41.342964, 23.690962>,  <29.129065, 41.925247, 23.255152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.909138, 41.342964, 23.690962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201645, 41.199375, 23.458965>,  <29.377150, 41.113220, 23.319767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201645, 41.199375, 23.458965>,  <28.909138, 41.342964, 23.690962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201645, 41.199375, 23.458965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305450, -0.587943, 0.749015,
		-0.609879, -0.724886, -0.320293,
		0.731264, -0.358975, -0.579991,
		29.421024, 41.091682, 23.284967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906038, 40.631340, 23.788820>,  <28.909138, 41.342964, 23.690962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906038, 40.631340, 23.788820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269455, 40.722370, 23.648674>,  <29.487505, 40.776989, 23.564587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.269455, 40.722370, 23.648674>,  <28.906038, 40.631340, 23.788820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.269455, 40.722370, 23.648674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411090, -0.636559, 0.652532,
		-0.074526, -0.736886, -0.671897,
		0.908543, 0.227579, -0.350367,
		29.542019, 40.790646, 23.543564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.184803, 40.024403, 23.700047>,  <28.906038, 40.631340, 23.788820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.184803, 40.024403, 23.700047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495481, 40.273396, 23.738548>,  <29.681889, 40.422791, 23.761650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.495481, 40.273396, 23.738548>,  <29.184803, 40.024403, 23.700047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495481, 40.273396, 23.738548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459434, -0.664407, 0.589478,
		0.430891, -0.413621, -0.802029,
		0.776694, 0.622479, 0.096255,
		29.728489, 40.460140, 23.767426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678270, 39.550392, 23.787367>,  <29.184803, 40.024403, 23.700047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678270, 39.550392, 23.787367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852079, 39.891884, 23.902143>,  <29.956366, 40.096779, 23.971008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.852079, 39.891884, 23.902143>,  <29.678270, 39.550392, 23.787367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.852079, 39.891884, 23.902143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591329, -0.510727, 0.624090,
		0.679352, -0.101506, -0.726758,
		0.434524, 0.853730, 0.286940,
		29.982437, 40.148003, 23.988226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439262, 39.410065, 23.855305>,  <29.678270, 39.550392, 23.787367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439262, 39.410065, 23.855305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352592, 39.728348, 24.081543>,  <30.300591, 39.919319, 24.217287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.352592, 39.728348, 24.081543>,  <30.439262, 39.410065, 23.855305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.352592, 39.728348, 24.081543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543983, -0.382672, 0.746756,
		0.810638, 0.469479, -0.349935,
		-0.216676, 0.795708, 0.565597,
		30.287590, 39.967060, 24.251223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050621, 39.534031, 24.198477>,  <30.439262, 39.410065, 23.855305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.050621, 39.534031, 24.198477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801189, 39.754177, 24.420557>,  <30.651529, 39.886265, 24.553806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.801189, 39.754177, 24.420557>,  <31.050621, 39.534031, 24.198477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801189, 39.754177, 24.420557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446329, -0.332431, 0.830831,
		0.641824, 0.765893, -0.038345,
		-0.623580, 0.550361, 0.555202,
		30.614115, 39.919285, 24.587118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.506639, 39.886684, 24.689388>,  <31.050621, 39.534031, 24.198477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.506639, 39.886684, 24.689388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142277, 39.865475, 24.853065>,  <30.923660, 39.852749, 24.951273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.142277, 39.865475, 24.853065>,  <31.506639, 39.886684, 24.689388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142277, 39.865475, 24.853065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409377, -0.240157, 0.880190,
		0.051603, 0.969285, 0.240466,
		-0.910905, -0.053020, 0.409195,
		30.869005, 39.849567, 24.975824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546362, 40.250248, 25.282154>,  <31.506639, 39.886684, 24.689388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546362, 40.250248, 25.282154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238174, 40.007252, 25.359440>,  <31.053263, 39.861454, 25.405811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238174, 40.007252, 25.359440>,  <31.546362, 40.250248, 25.282154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238174, 40.007252, 25.359440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348765, -0.147985, 0.925453,
		-0.533613, 0.780419, 0.325890,
		-0.770468, -0.607493, 0.193216,
		31.007034, 39.825005, 25.417404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245741, 40.469948, 25.904455>,  <31.546362, 40.250248, 25.282154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245741, 40.469948, 25.904455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123571, 40.091702, 25.859695>,  <31.050270, 39.864754, 25.832840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.123571, 40.091702, 25.859695>,  <31.245741, 40.469948, 25.904455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123571, 40.091702, 25.859695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287460, -0.203599, 0.935903,
		-0.907790, 0.253681, 0.334012,
		-0.305425, -0.945618, -0.111902,
		31.031944, 39.808018, 25.826124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.079153, 40.279427, 26.563936>,  <31.245741, 40.469948, 25.904455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.079153, 40.279427, 26.563936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075737, 39.933720, 26.362755>,  <31.073689, 39.726295, 26.242046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.075737, 39.933720, 26.362755>,  <31.079153, 40.279427, 26.563936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.075737, 39.933720, 26.362755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284766, -0.484247, 0.827292,
		-0.958559, -0.136160, 0.250250,
		-0.008538, -0.864271, -0.502953,
		31.073175, 39.674438, 26.211868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.642170, 39.770756, 26.944574>,  <31.079153, 40.279427, 26.563936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.642170, 39.770756, 26.944574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904448, 39.566635, 26.721989>,  <31.061815, 39.444164, 26.588436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904448, 39.566635, 26.721989>,  <30.642170, 39.770756, 26.944574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904448, 39.566635, 26.721989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261852, -0.537576, 0.801527,
		-0.708163, -0.671270, -0.218863,
		0.655696, -0.510302, -0.556465,
		31.101156, 39.413544, 26.555050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512846, 39.164829, 27.138828>,  <30.642170, 39.770756, 26.944574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512846, 39.164829, 27.138828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874140, 39.140232, 26.968943>,  <31.090916, 39.125473, 26.867012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.874140, 39.140232, 26.968943>,  <30.512846, 39.164829, 27.138828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.874140, 39.140232, 26.968943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353420, -0.454796, 0.817469,
		-0.243430, -0.888470, -0.389054,
		0.903237, -0.061497, -0.424714,
		31.145111, 39.121784, 26.841528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.647663, 38.447071, 27.182499>,  <30.512846, 39.164829, 27.138828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.647663, 38.447071, 27.182499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982607, 38.661129, 27.137865>,  <31.183573, 38.789562, 27.111084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.982607, 38.661129, 27.137865>,  <30.647663, 38.447071, 27.182499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982607, 38.661129, 27.137865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355130, -0.377342, 0.855275,
		0.415590, -0.755799, -0.506017,
		0.837357, 0.535146, -0.111587,
		31.233814, 38.821674, 27.104389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.133411, 38.045177, 27.380163>,  <30.647663, 38.447071, 27.182499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.133411, 38.045177, 27.380163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331213, 38.390976, 27.416193>,  <31.449894, 38.598454, 27.437811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.331213, 38.390976, 27.416193>,  <31.133411, 38.045177, 27.380163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.331213, 38.390976, 27.416193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343977, -0.289816, 0.893133,
		0.798214, -0.410675, -0.440682,
		0.494504, 0.864496, 0.090073,
		31.479565, 38.650326, 27.443214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.838821, 37.874588, 27.498161>,  <31.133411, 38.045177, 27.380163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.838821, 37.874588, 27.498161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775404, 38.230289, 27.669785>,  <31.737354, 38.443710, 27.772758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.775404, 38.230289, 27.669785>,  <31.838821, 37.874588, 27.498161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775404, 38.230289, 27.669785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230932, -0.389102, 0.891779,
		0.959966, 0.240469, -0.143668,
		-0.158543, 0.889255, 0.429056,
		31.727840, 38.497066, 27.798502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.357403, 37.950752, 28.113413>,  <31.838821, 37.874588, 27.498161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.357403, 37.950752, 28.113413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107891, 38.257107, 28.175781>,  <31.958183, 38.440922, 28.213203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.107891, 38.257107, 28.175781>,  <32.357403, 37.950752, 28.113413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.107891, 38.257107, 28.175781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128689, -0.096129, 0.987015,
		0.770931, 0.635747, -0.038598,
		-0.623782, 0.765888, 0.155922,
		31.920757, 38.486874, 28.222557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.674114, 38.399315, 28.523514>,  <32.357403, 37.950752, 28.113413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.674114, 38.399315, 28.523514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290760, 38.496628, 28.583267>,  <32.060749, 38.555016, 28.619120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290760, 38.496628, 28.583267>,  <32.674114, 38.399315, 28.523514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290760, 38.496628, 28.583267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108347, -0.174166, 0.978738,
		0.264130, 0.954190, 0.140558,
		-0.958382, 0.243284, 0.149386,
		32.003246, 38.569614, 28.628082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591427, 39.056049, 29.081650>,  <32.674114, 38.399315, 28.523514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591427, 39.056049, 29.081650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277580, 38.808826, 29.062136>,  <32.089272, 38.660492, 29.050426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277580, 38.808826, 29.062136>,  <32.591427, 39.056049, 29.081650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277580, 38.808826, 29.062136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199348, -0.326012, 0.924109,
		-0.587056, 0.715347, 0.379004,
		-0.784618, -0.618057, -0.048785,
		32.042194, 38.623409, 29.047501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.406162, 38.888264, 29.731655>,  <32.591427, 39.056049, 29.081650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.406162, 38.888264, 29.731655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212288, 38.590012, 29.548738>,  <32.095963, 38.411060, 29.438990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.212288, 38.590012, 29.548738>,  <32.406162, 38.888264, 29.731655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212288, 38.590012, 29.548738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012360, -0.528589, 0.848788,
		-0.874602, 0.405742, 0.265414,
		-0.484683, -0.745633, -0.457290,
		32.066883, 38.366322, 29.411551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.921993, 38.766201, 30.169979>,  <32.406162, 38.888264, 29.731655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.921993, 38.766201, 30.169979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940142, 38.442696, 29.935427>,  <31.951031, 38.248592, 29.794695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.940142, 38.442696, 29.935427>,  <31.921993, 38.766201, 30.169979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.940142, 38.442696, 29.935427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084417, -0.587989, 0.804451,
		-0.995397, 0.013003, -0.094950,
		0.045369, -0.808764, -0.586381,
		31.953753, 38.200066, 29.759512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550802, 38.235786, 30.566116>,  <31.921993, 38.766201, 30.169979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550802, 38.235786, 30.566116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779884, 38.031853, 30.309341>,  <31.917334, 37.909492, 30.155277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.779884, 38.031853, 30.309341>,  <31.550802, 38.235786, 30.566116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.779884, 38.031853, 30.309341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129355, -0.717062, 0.684901,
		-0.809492, -0.475283, -0.344715,
		0.572704, -0.509831, -0.641936,
		31.951696, 37.878902, 30.116760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.395950, 37.525673, 30.676802>,  <31.550802, 38.235786, 30.566116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.395950, 37.525673, 30.676802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756849, 37.521214, 30.504372>,  <31.973389, 37.518539, 30.400913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.756849, 37.521214, 30.504372>,  <31.395950, 37.525673, 30.676802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.756849, 37.521214, 30.504372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279205, -0.746724, 0.603695,
		-0.328623, -0.665041, -0.670617,
		0.902248, -0.011148, -0.431074,
		32.027523, 37.517868, 30.375050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.548727, 36.791729, 30.629387>,  <31.395950, 37.525673, 30.676802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.548727, 36.791729, 30.629387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902050, 36.972378, 30.579098>,  <32.114044, 37.080769, 30.548923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902050, 36.972378, 30.579098>,  <31.548727, 36.791729, 30.629387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902050, 36.972378, 30.579098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447418, -0.732070, 0.513703,
		0.139962, -0.510008, -0.848706,
		0.883305, 0.451625, -0.125724,
		32.167042, 37.107864, 30.541380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070343, 36.185982, 30.471354>,  <31.548727, 36.791729, 30.629387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070343, 36.185982, 30.471354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293446, 36.499252, 30.581297>,  <32.427307, 36.687214, 30.647263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.293446, 36.499252, 30.581297>,  <32.070343, 36.185982, 30.471354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293446, 36.499252, 30.581297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660966, -0.619398, 0.423638,
		0.502030, -0.054614, -0.863124,
		0.557754, 0.783175, 0.274858,
		32.460773, 36.734203, 30.663754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801399, 35.954147, 30.162588>,  <32.070343, 36.185982, 30.471354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801399, 35.954147, 30.162588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867554, 36.229885, 30.444712>,  <32.907246, 36.395329, 30.613985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.867554, 36.229885, 30.444712>,  <32.801399, 35.954147, 30.162588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.867554, 36.229885, 30.444712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785733, -0.524316, 0.328203,
		0.596047, 0.499903, -0.628351,
		0.165385, 0.689340, 0.705307,
		32.917168, 36.436687, 30.656303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355011, 36.409733, 30.156839>,  <32.801399, 35.954147, 30.162588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355011, 36.409733, 30.156839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269070, 36.346786, 30.542393>,  <33.217503, 36.309017, 30.773726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.269070, 36.346786, 30.542393>,  <33.355011, 36.409733, 30.156839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269070, 36.346786, 30.542393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797207, -0.598380, 0.080009,
		0.564178, 0.785605, 0.254022,
		-0.214858, -0.157369, 0.963883,
		33.204613, 36.299576, 30.831558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.947735, 36.525112, 30.552010>,  <33.355011, 36.409733, 30.156839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.947735, 36.525112, 30.552010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700638, 36.236050, 30.676052>,  <33.552380, 36.062611, 30.750477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700638, 36.236050, 30.676052>,  <33.947735, 36.525112, 30.552010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700638, 36.236050, 30.676052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783773, -0.597893, 0.167997,
		0.064005, 0.346831, 0.935741,
		-0.617740, -0.722656, 0.310105,
		33.515316, 36.019253, 30.769083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.484966, 37.045750, 30.650436>,  <33.947735, 36.525112, 30.552010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.484966, 37.045750, 30.650436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860806, 37.146133, 30.557337>,  <35.086308, 37.206364, 30.501478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.860806, 37.146133, 30.557337>,  <34.484966, 37.045750, 30.650436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.860806, 37.146133, 30.557337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342155, 0.670583, -0.658217,
		-0.009111, 0.698096, 0.715947,
		0.939599, 0.250961, -0.232747,
		35.142685, 37.221420, 30.487513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531116, 37.816425, 30.608509>,  <34.484966, 37.045750, 30.650436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531116, 37.816425, 30.608509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836540, 37.667847, 30.397223>,  <35.019794, 37.578701, 30.270451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836540, 37.667847, 30.397223>,  <34.531116, 37.816425, 30.608509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836540, 37.667847, 30.397223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295635, 0.526157, -0.797345,
		0.574094, 0.764976, 0.291938,
		0.763555, -0.371444, -0.528217,
		35.065605, 37.556412, 30.238758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908592, 38.392231, 30.444782>,  <34.531116, 37.816425, 30.608509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908592, 38.392231, 30.444782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013283, 38.095734, 30.197538>,  <35.076096, 37.917835, 30.049192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.013283, 38.095734, 30.197538>,  <34.908592, 38.392231, 30.444782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013283, 38.095734, 30.197538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056298, 0.627620, -0.776482,
		0.963500, 0.238021, 0.122532,
		0.261722, -0.741242, -0.618112,
		35.091801, 37.873360, 30.012104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.402786, 38.631424, 29.972147>,  <34.908592, 38.392231, 30.444782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.402786, 38.631424, 29.972147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317097, 38.295147, 29.773211>,  <35.265682, 38.093380, 29.653849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.317097, 38.295147, 29.773211>,  <35.402786, 38.631424, 29.972147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.317097, 38.295147, 29.773211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012121, 0.506835, -0.861958,
		0.976710, -0.190678, -0.098385,
		-0.214221, -0.840691, -0.497341,
		35.252831, 38.042938, 29.624008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.866039, 38.564796, 29.432467>,  <35.402786, 38.631424, 29.972147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.866039, 38.564796, 29.432467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546402, 38.345966, 29.332743>,  <35.354618, 38.214668, 29.272909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.546402, 38.345966, 29.332743>,  <35.866039, 38.564796, 29.432467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.546402, 38.345966, 29.332743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028959, 0.449228, -0.892948,
		0.600504, -0.706332, -0.374819,
		-0.799097, -0.547073, -0.249308,
		35.306671, 38.181843, 29.257950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.971119, 38.488091, 28.803225>,  <35.866039, 38.564796, 29.432467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.971119, 38.488091, 28.803225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587627, 38.374451, 28.798605>,  <35.357533, 38.306267, 28.795834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.587627, 38.374451, 28.798605>,  <35.971119, 38.488091, 28.803225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.587627, 38.374451, 28.798605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058325, 0.236248, -0.969941,
		0.278290, -0.929233, -0.243067,
		-0.958724, -0.284102, -0.011548,
		35.300011, 38.289223, 28.795141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.861835, 38.037663, 28.131670>,  <35.971119, 38.488091, 28.803225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.861835, 38.037663, 28.131670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499023, 38.157513, 28.250010>,  <35.281338, 38.229424, 28.321012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.499023, 38.157513, 28.250010>,  <35.861835, 38.037663, 28.131670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.499023, 38.157513, 28.250010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207613, 0.293032, -0.933289,
		-0.366332, -0.907940, -0.203582,
		-0.907027, 0.299628, 0.295847,
		35.226913, 38.247402, 28.338764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363617, 37.762428, 27.611301>,  <35.861835, 38.037663, 28.131670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363617, 37.762428, 27.611301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200268, 38.070206, 27.807747>,  <35.102257, 38.254871, 27.925613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.200268, 38.070206, 27.807747>,  <35.363617, 37.762428, 27.611301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.200268, 38.070206, 27.807747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167067, 0.465930, -0.868906,
		-0.897396, -0.436888, -0.061726,
		-0.408375, 0.769440, 0.491113,
		35.077755, 38.301037, 27.955080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792732, 37.811211, 27.280642>,  <35.363617, 37.762428, 27.611301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792732, 37.811211, 27.280642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779018, 38.174309, 27.447887>,  <34.770790, 38.392166, 27.548235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.779018, 38.174309, 27.447887>,  <34.792732, 37.811211, 27.280642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779018, 38.174309, 27.447887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320279, 0.386316, -0.864975,
		-0.946703, -0.163573, 0.277486,
		-0.034289, 0.907747, 0.418115,
		34.768730, 38.446632, 27.573322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212681, 38.083851, 27.024155>,  <34.792732, 37.811211, 27.280642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212681, 38.083851, 27.024155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424507, 38.400509, 27.146040>,  <34.551605, 38.590504, 27.219172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.424507, 38.400509, 27.146040>,  <34.212681, 38.083851, 27.024155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.424507, 38.400509, 27.146040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280345, 0.502373, -0.817941,
		-0.800601, 0.347732, 0.487976,
		0.529570, 0.791646, 0.304715,
		34.583378, 38.638004, 27.237455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.749805, 38.720367, 27.076195>,  <34.212681, 38.083851, 27.024155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.749805, 38.720367, 27.076195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131771, 38.825119, 27.020252>,  <34.360950, 38.887970, 26.986687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.131771, 38.825119, 27.020252>,  <33.749805, 38.720367, 27.076195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.131771, 38.825119, 27.020252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269555, 0.567364, -0.778099,
		-0.124416, 0.780717, 0.612374,
		0.954914, 0.261877, -0.139857,
		34.418243, 38.903683, 26.978294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630695, 39.361565, 26.983221>,  <33.749805, 38.720367, 27.076195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630695, 39.361565, 26.983221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005440, 39.324043, 26.848471>,  <34.230286, 39.301529, 26.767620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005440, 39.324043, 26.848471>,  <33.630695, 39.361565, 26.983221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005440, 39.324043, 26.848471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227405, 0.568400, -0.790701,
		0.265651, 0.817387, 0.511183,
		0.936865, -0.093805, -0.336874,
		34.286499, 39.295902, 26.747408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.886768, 40.054340, 26.913122>,  <33.630695, 39.361565, 26.983221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.886768, 40.054340, 26.913122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061169, 39.814922, 26.644302>,  <34.165810, 39.671272, 26.483011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.061169, 39.814922, 26.644302>,  <33.886768, 40.054340, 26.913122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.061169, 39.814922, 26.644302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369086, 0.562150, -0.740111,
		0.820780, 0.570732, 0.024184,
		0.436000, -0.598542, -0.672050,
		34.191967, 39.635361, 26.442688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.152321, 40.524517, 26.438122>,  <33.886768, 40.054340, 26.913122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.152321, 40.524517, 26.438122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160316, 40.176167, 26.241682>,  <34.165112, 39.967155, 26.123819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160316, 40.176167, 26.241682>,  <34.152321, 40.524517, 26.438122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160316, 40.176167, 26.241682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281397, 0.466439, -0.838600,
		0.959383, 0.154954, -0.235739,
		0.019986, -0.870875, -0.491098,
		34.166313, 39.914906, 26.094353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.563534, 40.696762, 25.876978>,  <34.152321, 40.524517, 26.438122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.563534, 40.696762, 25.876978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359222, 40.369545, 25.771214>,  <34.236633, 40.173214, 25.707756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359222, 40.369545, 25.771214>,  <34.563534, 40.696762, 25.876978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359222, 40.369545, 25.771214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157907, 0.391594, -0.906487,
		0.845084, -0.421266, -0.329194,
		-0.510782, -0.818040, -0.264409,
		34.205986, 40.124134, 25.691891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680698, 40.674789, 25.186598>,  <34.563534, 40.696762, 25.876978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680698, 40.674789, 25.186598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359467, 40.440529, 25.230534>,  <34.166725, 40.299973, 25.256895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.359467, 40.440529, 25.230534>,  <34.680698, 40.674789, 25.186598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.359467, 40.440529, 25.230534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265625, 0.186858, -0.945794,
		0.533386, -0.788727, -0.305628,
		-0.803082, -0.585656, 0.109838,
		34.118542, 40.264832, 25.263485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.715691, 40.275150, 24.567524>,  <34.680698, 40.674789, 25.186598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.715691, 40.275150, 24.567524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352322, 40.253868, 24.733389>,  <34.134300, 40.241100, 24.832907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352322, 40.253868, 24.733389>,  <34.715691, 40.275150, 24.567524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352322, 40.253868, 24.733389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415799, 0.218018, -0.882938,
		-0.043428, -0.974494, -0.220174,
		-0.908419, -0.053204, 0.414662,
		34.079796, 40.237907, 24.857788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.297245, 40.049168, 24.133280>,  <34.715691, 40.275150, 24.567524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.297245, 40.049168, 24.133280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013332, 40.206886, 24.366774>,  <33.842987, 40.301517, 24.506870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.013332, 40.206886, 24.366774>,  <34.297245, 40.049168, 24.133280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.013332, 40.206886, 24.366774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501179, 0.299650, -0.811806,
		-0.495011, -0.868756, -0.015070,
		-0.709777, 0.394300, 0.583733,
		33.800400, 40.325176, 24.541893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.692406, 39.993073, 23.870701>,  <34.297245, 40.049168, 24.133280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.692406, 39.993073, 23.870701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549854, 40.267979, 24.123894>,  <33.464325, 40.432922, 24.275810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.549854, 40.267979, 24.123894>,  <33.692406, 39.993073, 23.870701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.549854, 40.267979, 24.123894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739156, 0.207022, -0.640929,
		-0.571528, -0.696283, 0.434218,
		-0.356375, 0.687264, 0.632981,
		33.442944, 40.474159, 24.313787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.948521, 39.837769, 24.115774>,  <33.692406, 39.993073, 23.870701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.948521, 39.837769, 24.115774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007263, 40.228539, 24.177805>,  <33.042507, 40.463001, 24.215023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007263, 40.228539, 24.177805>,  <32.948521, 39.837769, 24.115774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007263, 40.228539, 24.177805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826790, 0.207293, -0.522922,
		-0.543003, -0.051425, 0.838154,
		0.146852, 0.976926, 0.155079,
		33.051319, 40.521618, 24.224329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.218338, 40.130383, 24.240086>,  <32.948521, 39.837769, 24.115774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.218338, 40.130383, 24.240086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445797, 40.444736, 24.142900>,  <32.582272, 40.633347, 24.084589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445797, 40.444736, 24.142900>,  <32.218338, 40.130383, 24.240086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445797, 40.444736, 24.142900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719948, 0.332617, -0.609131,
		-0.397892, 0.521300, 0.754936,
		0.568645, 0.785883, -0.242963,
		32.616390, 40.680500, 24.070011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778814, 40.759350, 24.168816>,  <32.218338, 40.130383, 24.240086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778814, 40.759350, 24.168816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102283, 40.754196, 23.933567>,  <32.296364, 40.751102, 23.792418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.102283, 40.754196, 23.933567>,  <31.778814, 40.759350, 24.168816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102283, 40.754196, 23.933567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545120, 0.359392, -0.757418,
		0.221125, 0.933098, 0.283606,
		0.808671, -0.012885, -0.588120,
		32.344883, 40.750332, 23.757132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.851847, 41.338539, 23.825535>,  <31.778814, 40.759350, 24.168816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.851847, 41.338539, 23.825535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070160, 41.096184, 23.594009>,  <32.201149, 40.950771, 23.455095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.070160, 41.096184, 23.594009>,  <31.851847, 41.338539, 23.825535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.070160, 41.096184, 23.594009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384991, 0.432218, -0.815457,
		0.744246, 0.667901, 0.002638,
		0.545784, -0.605885, -0.578812,
		32.233894, 40.914417, 23.420366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.155422, 41.699947, 23.338726>,  <31.851847, 41.338539, 23.825535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.155422, 41.699947, 23.338726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165806, 41.336624, 23.171724>,  <32.172035, 41.118629, 23.071524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.165806, 41.336624, 23.171724>,  <32.155422, 41.699947, 23.338726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.165806, 41.336624, 23.171724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235515, 0.400333, -0.885588,
		0.971524, 0.121317, -0.203528,
		0.025958, -0.908304, -0.417505,
		32.173592, 41.064133, 23.046473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450169, 41.901814, 22.690315>,  <32.155422, 41.699947, 23.338726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450169, 41.901814, 22.690315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297325, 41.537609, 22.627121>,  <32.205620, 41.319088, 22.589205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.297325, 41.537609, 22.627121>,  <32.450169, 41.901814, 22.690315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.297325, 41.537609, 22.627121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340544, 0.297665, -0.891866,
		0.859080, -0.286993, -0.423811,
		-0.382113, -0.910511, -0.157984,
		32.182690, 41.264454, 22.579725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591087, 41.795616, 21.945990>,  <32.450169, 41.901814, 22.690315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591087, 41.795616, 21.945990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310242, 41.531567, 22.052773>,  <32.141735, 41.373138, 22.116842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.310242, 41.531567, 22.052773>,  <32.591087, 41.795616, 21.945990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.310242, 41.531567, 22.052773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448468, 0.118744, -0.885876,
		0.553090, -0.741711, -0.379417,
		-0.702117, -0.660125, 0.266957,
		32.099606, 41.333530, 22.132860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466503, 41.384773, 21.383150>,  <32.591087, 41.795616, 21.945990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466503, 41.384773, 21.383150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135506, 41.326832, 21.600140>,  <31.936909, 41.292065, 21.730333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.135506, 41.326832, 21.600140>,  <32.466503, 41.384773, 21.383150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135506, 41.326832, 21.600140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538289, -0.070149, -0.839836,
		0.159710, -0.986963, -0.019927,
		-0.827489, -0.144857, 0.542475,
		31.887259, 41.283375, 21.762882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.276894, 40.812012, 21.074953>,  <32.466503, 41.384773, 21.383150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.276894, 40.812012, 21.074953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960157, 40.975903, 21.256111>,  <31.770117, 41.074238, 21.364805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960157, 40.975903, 21.256111>,  <32.276894, 40.812012, 21.074953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960157, 40.975903, 21.256111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577408, -0.260642, -0.773735,
		-0.198974, -0.874181, 0.442965,
		-0.791839, 0.409725, 0.452898,
		31.722607, 41.098820, 21.391979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.732897, 40.407528, 20.901028>,  <32.276894, 40.812012, 21.074953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.732897, 40.407528, 20.901028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535013, 40.730251, 21.030222>,  <31.416283, 40.923885, 21.107738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.535013, 40.730251, 21.030222>,  <31.732897, 40.407528, 20.901028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.535013, 40.730251, 21.030222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667865, -0.115146, -0.735322,
		-0.556073, -0.579483, 0.595803,
		-0.494711, 0.806809, 0.322986,
		31.386600, 40.972294, 21.127117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.135588, 40.182552, 21.065582>,  <31.732897, 40.407528, 20.901028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.135588, 40.182552, 21.065582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111488, 40.569920, 20.968813>,  <31.097029, 40.802341, 20.910751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.111488, 40.569920, 20.968813>,  <31.135588, 40.182552, 21.065582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.111488, 40.569920, 20.968813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563538, -0.233046, -0.792537,
		-0.823890, 0.088585, 0.559783,
		-0.060248, 0.968423, -0.241925,
		31.093414, 40.860447, 20.896235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394239, 40.333179, 20.770960>,  <31.135588, 40.182552, 21.065582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394239, 40.333179, 20.770960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623644, 40.634022, 20.641087>,  <30.761286, 40.814529, 20.563162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.623644, 40.634022, 20.641087>,  <30.394239, 40.333179, 20.770960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.623644, 40.634022, 20.641087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570416, 0.082162, -0.817236,
		-0.587974, 0.653898, 0.476135,
		0.573509, 0.752108, -0.324685,
		30.795696, 40.859653, 20.543682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868055, 40.755936, 20.531435>,  <30.394239, 40.333179, 20.770960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868055, 40.755936, 20.531435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203644, 40.872860, 20.347834>,  <30.404997, 40.943016, 20.237673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203644, 40.872860, 20.347834>,  <29.868055, 40.755936, 20.531435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203644, 40.872860, 20.347834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525663, 0.217196, -0.822499,
		-0.140731, 0.931333, 0.335877,
		0.838971, 0.292310, -0.459001,
		30.455336, 40.960552, 20.210133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.653109, 41.313545, 20.034666>,  <29.868055, 40.755936, 20.531435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.653109, 41.313545, 20.034666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012812, 41.188229, 19.912561>,  <30.228634, 41.113037, 19.839298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012812, 41.188229, 19.912561>,  <29.653109, 41.313545, 20.034666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012812, 41.188229, 19.912561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277936, 0.129644, -0.951811,
		0.337774, 0.940765, 0.029507,
		0.899255, -0.313296, -0.305263,
		30.282589, 41.094238, 19.820982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.031240, 41.915222, 19.842171>,  <29.653109, 41.313545, 20.034666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.031240, 41.915222, 19.842171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188532, 41.595417, 19.660553>,  <30.282907, 41.403534, 19.551582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.188532, 41.595417, 19.660553>,  <30.031240, 41.915222, 19.842171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188532, 41.595417, 19.660553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490037, 0.235601, -0.839259,
		0.777969, 0.552519, -0.299145,
		0.393228, -0.799510, -0.454045,
		30.306499, 41.355564, 19.524340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109987, 42.175770, 19.169373>,  <30.031240, 41.915222, 19.842171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109987, 42.175770, 19.169373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192749, 41.788517, 19.112923>,  <30.242407, 41.556168, 19.079052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.192749, 41.788517, 19.112923>,  <30.109987, 42.175770, 19.169373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192749, 41.788517, 19.112923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395930, 0.049050, -0.916970,
		0.894667, 0.245602, -0.373162,
		0.206905, -0.968129, -0.141125,
		30.254820, 41.498077, 19.070585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.557467, 42.197544, 18.638098>,  <30.109987, 42.175770, 19.169373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.557467, 42.197544, 18.638098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372786, 41.842789, 18.644611>,  <30.261978, 41.629936, 18.648520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372786, 41.842789, 18.644611>,  <30.557467, 42.197544, 18.638098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372786, 41.842789, 18.644611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208565, 0.090695, -0.973794,
		0.862168, -0.452998, -0.226847,
		-0.461701, -0.886886, 0.016285,
		30.234276, 41.576721, 18.649496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.759640, 41.742790, 18.047668>,  <30.557467, 42.197544, 18.638098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.759640, 41.742790, 18.047668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411688, 41.580349, 18.159658>,  <30.202917, 41.482883, 18.226852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.411688, 41.580349, 18.159658>,  <30.759640, 41.742790, 18.047668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411688, 41.580349, 18.159658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299961, -0.015070, -0.953832,
		0.391572, -0.913704, -0.108706,
		-0.869882, -0.406102, 0.279977,
		30.150723, 41.458519, 18.243652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.477110, 41.264332, 17.399273>,  <30.759640, 41.742790, 18.047668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.477110, 41.264332, 17.399273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161396, 41.320934, 17.638273>,  <29.971968, 41.354897, 17.781673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.161396, 41.320934, 17.638273>,  <30.477110, 41.264332, 17.399273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.161396, 41.320934, 17.638273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583088, 0.132261, -0.801570,
		-0.192454, -0.981062, -0.021880,
		-0.789284, 0.141507, 0.597500,
		29.924610, 41.363384, 17.817524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.860357, 41.025696, 16.758898>,  <30.477110, 41.264332, 17.399273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.860357, 41.025696, 16.758898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989262, 40.733459, 16.518106>,  <31.066605, 40.558117, 16.373631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989262, 40.733459, 16.518106>,  <30.860357, 41.025696, 16.758898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989262, 40.733459, 16.518106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378524, -0.483408, 0.789326,
		-0.867680, -0.482231, 0.120765,
		0.322259, -0.730595, -0.601980,
		31.085939, 40.514282, 16.337513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.610516, 40.482269, 17.094646>,  <30.860357, 41.025696, 16.758898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.610516, 40.482269, 17.094646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922718, 40.387016, 16.863440>,  <31.110039, 40.329865, 16.724716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.922718, 40.387016, 16.863440>,  <30.610516, 40.482269, 17.094646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.922718, 40.387016, 16.863440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495782, -0.327428, 0.804357,
		-0.380808, -0.914375, -0.137494,
		0.780504, -0.238139, -0.578018,
		31.156870, 40.315575, 16.690035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834522, 39.793262, 17.342773>,  <30.610516, 40.482269, 17.094646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834522, 39.793262, 17.342773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139746, 39.978897, 17.162832>,  <31.322880, 40.090279, 17.054869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.139746, 39.978897, 17.162832>,  <30.834522, 39.793262, 17.342773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.139746, 39.978897, 17.162832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634193, -0.403354, 0.659626,
		0.124676, -0.788624, -0.602103,
		0.763057, 0.464089, -0.449851,
		31.368662, 40.118122, 17.027878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372313, 39.284645, 17.434816>,  <30.834522, 39.793262, 17.342773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372313, 39.284645, 17.434816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577492, 39.610847, 17.327606>,  <31.700600, 39.806568, 17.263281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.577492, 39.610847, 17.327606>,  <31.372313, 39.284645, 17.434816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.577492, 39.610847, 17.327606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723924, -0.243161, 0.645606,
		0.461322, -0.525192, -0.715092,
		0.512949, 0.815504, -0.268023,
		31.731377, 39.855499, 17.247200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123436, 39.186661, 17.421051>,  <31.372313, 39.284645, 17.434816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123436, 39.186661, 17.421051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078045, 39.579910, 17.478458>,  <32.050812, 39.815861, 17.512903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078045, 39.579910, 17.478458>,  <32.123436, 39.186661, 17.421051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078045, 39.579910, 17.478458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666957, -0.031689, 0.744422,
		0.736404, 0.180193, -0.652104,
		-0.113475, 0.983121, 0.143517,
		32.044003, 39.874847, 17.521513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862698, 39.501328, 17.437181>,  <32.123436, 39.186661, 17.421051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862698, 39.501328, 17.437181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607815, 39.746571, 17.623974>,  <32.454884, 39.893715, 17.736050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.607815, 39.746571, 17.623974>,  <32.862698, 39.501328, 17.437181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607815, 39.746571, 17.623974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578014, -0.020607, 0.815767,
		0.509773, 0.789734, -0.341251,
		-0.637206, 0.613104, 0.466982,
		32.416653, 39.930500, 17.764069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267410, 40.036640, 17.708200>,  <32.862698, 39.501328, 17.437181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267410, 40.036640, 17.708200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928669, 40.032887, 17.920897>,  <32.725422, 40.030636, 18.048513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.928669, 40.032887, 17.920897>,  <33.267410, 40.036640, 17.708200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.928669, 40.032887, 17.920897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531757, 0.000620, 0.846897,
		-0.008277, 0.999956, 0.004465,
		-0.846856, -0.009384, 0.531739,
		32.674614, 40.030071, 18.080418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561226, 40.372677, 18.400707>,  <33.267410, 40.036640, 17.708200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561226, 40.372677, 18.400707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196926, 40.252926, 18.514490>,  <32.978348, 40.181076, 18.582760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.196926, 40.252926, 18.514490>,  <33.561226, 40.372677, 18.400707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196926, 40.252926, 18.514490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272816, 0.080933, 0.958656,
		-0.310023, 0.950696, 0.007966,
		-0.910745, -0.299379, 0.284456,
		32.923702, 40.163113, 18.599827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.267139, 40.843266, 18.904297>,  <33.561226, 40.372677, 18.400707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.267139, 40.843266, 18.904297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102768, 40.484974, 18.972189>,  <33.004147, 40.270000, 19.012924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.102768, 40.484974, 18.972189>,  <33.267139, 40.843266, 18.904297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102768, 40.484974, 18.972189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357311, 0.013041, 0.933894,
		-0.838730, 0.444410, 0.314695,
		-0.410928, -0.895729, 0.169730,
		32.979488, 40.216255, 19.023108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.893158, 40.850193, 19.587978>,  <33.267139, 40.843266, 18.904297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.893158, 40.850193, 19.587978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964142, 40.462318, 19.520779>,  <33.006733, 40.229595, 19.480459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.964142, 40.462318, 19.520779>,  <32.893158, 40.850193, 19.587978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.964142, 40.462318, 19.520779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114820, -0.149143, 0.982127,
		-0.977407, -0.193576, 0.084872,
		0.177458, -0.969683, -0.168000,
		33.017380, 40.171413, 19.470379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.705418, 40.469719, 20.175488>,  <32.893158, 40.850193, 19.587978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.705418, 40.469719, 20.175488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920422, 40.190445, 19.986332>,  <33.049423, 40.022881, 19.872839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.920422, 40.190445, 19.986332>,  <32.705418, 40.469719, 20.175488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.920422, 40.190445, 19.986332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286793, -0.376001, 0.881120,
		-0.792991, -0.609230, -0.001869,
		0.537508, -0.698185, -0.472888,
		33.081673, 39.980988, 19.844465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.586376, 39.868507, 20.664438>,  <32.705418, 40.469719, 20.175488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.586376, 39.868507, 20.664438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909187, 39.798584, 20.438818>,  <33.102875, 39.756630, 20.303446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.909187, 39.798584, 20.438818>,  <32.586376, 39.868507, 20.664438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909187, 39.798584, 20.438818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493957, -0.323603, 0.807024,
		-0.323603, -0.929905, -0.174808,
		-0.807024, 0.174808, 0.564052,
		33.151295, 39.746143, 20.269602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777687, 39.179657, 20.754679>,  <32.586376, 39.868507, 20.664438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777687, 39.179657, 20.754679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121418, 39.350529, 20.642199>,  <33.327656, 39.453053, 20.574711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.121418, 39.350529, 20.642199>,  <32.777687, 39.179657, 20.754679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.121418, 39.350529, 20.642199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465292, -0.424808, 0.776557,
		0.212274, -0.798157, -0.563813,
		0.859327, 0.427181, -0.281201,
		33.379215, 39.478683, 20.557838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.296360, 38.654621, 20.714422>,  <32.777687, 39.179657, 20.754679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.296360, 38.654621, 20.714422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490089, 39.001591, 20.760021>,  <33.606327, 39.209774, 20.787380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.490089, 39.001591, 20.760021>,  <33.296360, 38.654621, 20.714422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490089, 39.001591, 20.760021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447709, -0.357679, 0.819526,
		0.751654, -0.345882, -0.561589,
		0.484327, 0.867428, 0.113996,
		33.635387, 39.261818, 20.794220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903423, 38.448750, 20.906277>,  <33.296360, 38.654621, 20.714422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903423, 38.448750, 20.906277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913563, 38.836269, 21.004902>,  <33.919647, 39.068779, 21.064077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.913563, 38.836269, 21.004902>,  <33.903423, 38.448750, 20.906277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.913563, 38.836269, 21.004902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592013, -0.213289, 0.777193,
		0.805530, 0.126267, -0.578946,
		0.025349, 0.968795, 0.246563,
		33.921169, 39.126907, 21.078871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600750, 38.692410, 20.962683>,  <33.903423, 38.448750, 20.906277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600750, 38.692410, 20.962683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363911, 38.919147, 21.191805>,  <34.221806, 39.055191, 21.329279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.363911, 38.919147, 21.191805>,  <34.600750, 38.692410, 20.962683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.363911, 38.919147, 21.191805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654397, -0.076615, 0.752260,
		0.470297, 0.820257, -0.325574,
		-0.592103, 0.566840, 0.572806,
		34.186279, 39.089199, 21.363647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112167, 39.035450, 21.275452>,  <34.600750, 38.692410, 20.962683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112167, 39.035450, 21.275452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782612, 39.093540, 21.494585>,  <34.584881, 39.128395, 21.626064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782612, 39.093540, 21.494585>,  <35.112167, 39.035450, 21.275452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782612, 39.093540, 21.494585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523208, -0.176671, 0.833691,
		0.217862, 0.973497, 0.069571,
		-0.823887, 0.145229, 0.547831,
		34.535446, 39.137108, 21.658934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.174969, 39.689205, 21.777126>,  <35.112167, 39.035450, 21.275452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.174969, 39.689205, 21.777126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889561, 39.488903, 21.973141>,  <34.718315, 39.368721, 22.090750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.889561, 39.488903, 21.973141>,  <35.174969, 39.689205, 21.777126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.889561, 39.488903, 21.973141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483041, 0.155039, 0.861762,
		-0.507504, 0.851593, 0.131261,
		-0.713520, -0.500752, 0.490037,
		34.675503, 39.338676, 22.120152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199894, 39.951935, 22.485838>,  <35.174969, 39.689205, 21.777126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199894, 39.951935, 22.485838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006165, 39.602509, 22.505081>,  <34.889927, 39.392853, 22.516626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.006165, 39.602509, 22.505081>,  <35.199894, 39.951935, 22.485838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.006165, 39.602509, 22.505081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439164, -0.195190, 0.876947,
		-0.756680, 0.445855, 0.478173,
		-0.484325, -0.873564, 0.048107,
		34.860867, 39.340439, 22.519514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860149, 39.881313, 23.126568>,  <35.199894, 39.951935, 22.485838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860149, 39.881313, 23.126568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909996, 39.508392, 22.990753>,  <34.939903, 39.284641, 22.909264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.909996, 39.508392, 22.990753>,  <34.860149, 39.881313, 23.126568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909996, 39.508392, 22.990753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236912, -0.304347, 0.922630,
		-0.963506, -0.195418, 0.182946,
		0.124619, -0.932301, -0.339537,
		34.947380, 39.228703, 22.888891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510231, 39.492203, 23.624588>,  <34.860149, 39.881313, 23.126568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510231, 39.492203, 23.624588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747284, 39.242588, 23.420877>,  <34.889515, 39.092819, 23.298651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747284, 39.242588, 23.420877>,  <34.510231, 39.492203, 23.624588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747284, 39.242588, 23.420877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314977, -0.402377, 0.859582,
		-0.741333, -0.669827, -0.041905,
		0.592633, -0.624038, -0.509276,
		34.925076, 39.055378, 23.268095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.474854, 38.948250, 23.938536>,  <34.510231, 39.492203, 23.624588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.474854, 38.948250, 23.938536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813408, 38.884972, 23.735126>,  <35.016541, 38.847004, 23.613081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.813408, 38.884972, 23.735126>,  <34.474854, 38.948250, 23.938536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813408, 38.884972, 23.735126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392852, -0.459230, 0.796728,
		-0.359571, -0.874117, -0.326539,
		0.846390, -0.158199, -0.508524,
		35.067326, 38.837513, 23.582569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590546, 38.271893, 24.027271>,  <34.474854, 38.948250, 23.938536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590546, 38.271893, 24.027271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943394, 38.438095, 23.938536>,  <35.155102, 38.537815, 23.885294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943394, 38.438095, 23.938536>,  <34.590546, 38.271893, 24.027271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943394, 38.438095, 23.938536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426763, -0.505741, 0.749733,
		0.199325, -0.756031, -0.623448,
		0.882124, 0.415505, -0.221839,
		35.208031, 38.562748, 23.871984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.077648, 37.827789, 24.185896>,  <34.590546, 38.271893, 24.027271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.077648, 37.827789, 24.185896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341312, 38.128326, 24.173325>,  <35.499512, 38.308647, 24.165781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.341312, 38.128326, 24.173325>,  <35.077648, 37.827789, 24.185896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.341312, 38.128326, 24.173325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551998, -0.455045, 0.698736,
		0.510690, -0.477929, -0.714689,
		0.659162, 0.751344, -0.031429,
		35.539062, 38.353729, 24.163897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784924, 37.607056, 24.056208>,  <35.077648, 37.827789, 24.185896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784924, 37.607056, 24.056208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 37.956963, 24.247044>,  <35.839088, 38.166908, 24.361546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818775, 37.956963, 24.247044>,  <35.784924, 37.607056, 24.056208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818775, 37.956963, 24.247044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523612, -0.446411, 0.725636,
		0.847743, 0.188397, -0.495821,
		0.084632, 0.874771, 0.477088,
		35.844166, 38.219395, 24.390171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.421253, 37.623898, 24.257034>,  <35.784924, 37.607056, 24.056208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.421253, 37.623898, 24.257034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293652, 37.918549, 24.495567>,  <36.217091, 38.095341, 24.638687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.293652, 37.918549, 24.495567>,  <36.421253, 37.623898, 24.257034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293652, 37.918549, 24.495567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488925, -0.411110, 0.769377,
		0.811904, 0.536997, -0.229010,
		-0.319005, 0.736629, 0.596333,
		36.197948, 38.139538, 24.674467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995586, 37.991566, 24.490387>,  <36.421253, 37.623898, 24.257034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995586, 37.991566, 24.490387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714645, 38.079208, 24.761293>,  <36.546082, 38.131794, 24.923838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.714645, 38.079208, 24.761293>,  <36.995586, 37.991566, 24.490387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.714645, 38.079208, 24.761293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588242, -0.357114, 0.725563,
		0.400837, 0.907999, 0.121932,
		-0.702354, 0.219107, 0.677267,
		36.503941, 38.144939, 24.964474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.356026, 38.312798, 25.015432>,  <36.995586, 37.991566, 24.490387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.356026, 38.312798, 25.015432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011955, 38.185780, 25.175064>,  <36.805511, 38.109570, 25.270844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011955, 38.185780, 25.175064>,  <37.356026, 38.312798, 25.015432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011955, 38.185780, 25.175064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488203, -0.286375, 0.824407,
		-0.147501, 0.903965, 0.401360,
		-0.860175, -0.317546, 0.399078,
		36.753902, 38.090515, 25.294788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456161, 38.394501, 25.720766>,  <37.356026, 38.312798, 25.015432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456161, 38.394501, 25.720766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143837, 38.144627, 25.716730>,  <36.956440, 37.994701, 25.714310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.143837, 38.144627, 25.716730>,  <37.456161, 38.394501, 25.720766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.143837, 38.144627, 25.716730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156458, -0.211144, 0.964852,
		-0.604856, 0.751791, 0.262601,
		-0.780814, -0.624683, -0.010089,
		36.909592, 37.957222, 25.713703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.122334, 38.533691, 26.358728>,  <37.456161, 38.394501, 25.720766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.122334, 38.533691, 26.358728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975910, 38.175522, 26.257370>,  <36.888054, 37.960621, 26.196554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.975910, 38.175522, 26.257370>,  <37.122334, 38.533691, 26.358728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975910, 38.175522, 26.257370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082296, -0.302378, 0.949629,
		-0.926945, 0.326768, 0.184379,
		-0.366060, -0.895428, -0.253396,
		36.866093, 37.906895, 26.181351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.791340, 38.219006, 26.961788>,  <37.122334, 38.533691, 26.358728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.791340, 38.219006, 26.961788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834015, 37.899105, 26.725481>,  <36.859619, 37.707165, 26.583696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.834015, 37.899105, 26.725481>,  <36.791340, 38.219006, 26.961788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.834015, 37.899105, 26.725481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313609, -0.536766, 0.783282,
		-0.943540, -0.268838, 0.193544,
		0.106688, -0.799755, -0.590770,
		36.866020, 37.659180, 26.548250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410526, 37.635822, 27.292574>,  <36.791340, 38.219006, 26.961788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410526, 37.635822, 27.292574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657425, 37.426838, 27.057270>,  <36.805565, 37.301449, 26.916088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.657425, 37.426838, 27.057270>,  <36.410526, 37.635822, 27.292574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.657425, 37.426838, 27.057270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253162, -0.576032, 0.777237,
		-0.744931, -0.628667, -0.223284,
		0.617242, -0.522460, -0.588258,
		36.842598, 37.270100, 26.880793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284599, 36.895607, 27.447151>,  <36.410526, 37.635822, 27.292574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284599, 36.895607, 27.447151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649040, 36.924828, 27.284885>,  <36.867702, 36.942360, 27.187527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.649040, 36.924828, 27.284885>,  <36.284599, 36.895607, 27.447151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.649040, 36.924828, 27.284885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372264, -0.568387, 0.733727,
		-0.176970, -0.819511, -0.545053,
		0.911099, 0.073056, -0.405662,
		36.922371, 36.946743, 27.163187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536079, 36.333202, 27.481760>,  <36.284599, 36.895607, 27.447151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536079, 36.333202, 27.481760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889183, 36.514523, 27.432358>,  <37.101044, 36.623314, 27.402716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.889183, 36.514523, 27.432358>,  <36.536079, 36.333202, 27.481760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889183, 36.514523, 27.432358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432104, -0.680130, 0.592208,
		0.184448, -0.576145, -0.796264,
		0.882760, 0.453300, -0.123506,
		37.154011, 36.650513, 27.395306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066017, 35.872547, 27.307955>,  <36.536079, 36.333202, 27.481760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066017, 35.872547, 27.307955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221817, 36.195148, 27.485870>,  <37.315296, 36.388710, 27.592619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.221817, 36.195148, 27.485870>,  <37.066017, 35.872547, 27.307955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221817, 36.195148, 27.485870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522470, -0.591183, 0.614433,
		0.758495, -0.006933, -0.651642,
		0.389499, 0.806508, 0.444787,
		37.338665, 36.437099, 27.619307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.689350, 35.549416, 27.644770>,  <37.066017, 35.872547, 27.307955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.689350, 35.549416, 27.644770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645535, 35.900837, 27.830734>,  <37.619244, 36.111691, 27.942312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.645535, 35.900837, 27.830734>,  <37.689350, 35.549416, 27.644770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.645535, 35.900837, 27.830734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453809, -0.371928, 0.809769,
		0.884340, 0.299685, -0.357954,
		-0.109543, 0.878555, 0.464911,
		37.612671, 36.164402, 27.970207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.281834, 35.700123, 27.860819>,  <37.689350, 35.549416, 27.644770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.281834, 35.700123, 27.860819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058010, 35.904427, 28.121899>,  <37.923717, 36.027008, 28.278547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058010, 35.904427, 28.121899>,  <38.281834, 35.700123, 27.860819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058010, 35.904427, 28.121899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486918, -0.434694, 0.757596,
		0.670674, 0.741732, -0.005460,
		-0.559560, 0.510759, 0.652701,
		37.890141, 36.057655, 28.317709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705185, 35.991714, 28.337099>,  <38.281834, 35.700123, 27.860819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705185, 35.991714, 28.337099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357506, 35.981445, 28.534618>,  <38.148899, 35.975285, 28.653130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.357506, 35.981445, 28.534618>,  <38.705185, 35.991714, 28.337099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.357506, 35.981445, 28.534618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454823, -0.433295, 0.778069,
		0.193988, 0.900886, 0.388294,
		-0.869198, -0.025669, 0.493798,
		38.096748, 35.973743, 28.682758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862816, 36.174999, 29.003517>,  <38.705185, 35.991714, 28.337099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862816, 36.174999, 29.003517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496647, 36.033989, 29.081207>,  <38.276943, 35.949383, 29.127821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.496647, 36.033989, 29.081207>,  <38.862816, 36.174999, 29.003517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.496647, 36.033989, 29.081207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318767, -0.340387, 0.884604,
		-0.245734, 0.871701, 0.423972,
		-0.915425, -0.352525, 0.194225,
		38.222019, 35.928230, 29.139475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.641933, 36.522125, 29.575645>,  <38.862816, 36.174999, 29.003517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.641933, 36.522125, 29.575645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421928, 36.188534, 29.557905>,  <38.289925, 35.988380, 29.547260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.421928, 36.188534, 29.557905>,  <38.641933, 36.522125, 29.575645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421928, 36.188534, 29.557905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389090, -0.302875, 0.869986,
		-0.738981, 0.461248, 0.491078,
		-0.550015, -0.833977, -0.044352,
		38.256924, 35.938339, 29.544600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323002, 36.430405, 30.255556>,  <38.641933, 36.522125, 29.575645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323002, 36.430405, 30.255556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333900, 36.085960, 30.052479>,  <38.340439, 35.879295, 29.930632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333900, 36.085960, 30.052479>,  <38.323002, 36.430405, 30.255556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333900, 36.085960, 30.052479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541681, -0.414132, 0.731489,
		-0.840142, -0.294942, 0.455160,
		0.027251, -0.861106, -0.507694,
		38.342075, 35.827629, 29.900171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965797, 35.861111, 30.626345>,  <38.323002, 36.430405, 30.255556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965797, 35.861111, 30.626345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265190, 35.748817, 30.386023>,  <38.444824, 35.681442, 30.241829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.265190, 35.748817, 30.386023>,  <37.965797, 35.861111, 30.626345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.265190, 35.748817, 30.386023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530838, -0.289388, 0.796534,
		-0.397478, -0.915120, -0.067578,
		0.748480, -0.280732, -0.600805,
		38.489735, 35.664600, 30.205780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114891, 35.158176, 30.686260>,  <37.965797, 35.861111, 30.626345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114891, 35.158176, 30.686260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426922, 35.399242, 30.619003>,  <38.614140, 35.543884, 30.578650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.426922, 35.399242, 30.619003>,  <38.114891, 35.158176, 30.686260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.426922, 35.399242, 30.619003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413267, -0.294517, 0.861667,
		0.469778, -0.741654, -0.478809,
		0.780077, 0.602668, -0.168143,
		38.660946, 35.580044, 30.568560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.726242, 34.781853, 30.807802>,  <38.114891, 35.158176, 30.686260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.726242, 34.781853, 30.807802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859074, 35.156433, 30.853020>,  <38.938774, 35.381184, 30.880150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.859074, 35.156433, 30.853020>,  <38.726242, 34.781853, 30.807802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.859074, 35.156433, 30.853020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533493, -0.285301, 0.796234,
		0.777886, -0.204107, -0.594334,
		0.332081, 0.936453, 0.113042,
		38.958698, 35.437370, 30.886932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548122, 34.965187, 30.712065>,  <38.726242, 34.781853, 30.807802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548122, 34.965187, 30.712065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375309, 35.190830, 30.993526>,  <39.271622, 35.326218, 31.162403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.375309, 35.190830, 30.993526>,  <39.548122, 34.965187, 30.712065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.375309, 35.190830, 30.993526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645112, -0.351926, 0.678218,
		0.630222, 0.746948, -0.211869,
		-0.432031, 0.564107, 0.703656,
		39.245701, 35.360062, 31.204624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678249, 35.335709, 30.069111>,  <39.548122, 34.965187, 30.712065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678249, 35.335709, 30.069111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964146, 35.603195, 29.987162>,  <40.135681, 35.763687, 29.937992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.964146, 35.603195, 29.987162>,  <39.678249, 35.335709, 30.069111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.964146, 35.603195, 29.987162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304533, 0.561266, 0.769572,
		0.629612, -0.487650, 0.604803,
		0.714737, 0.668714, -0.204874,
		40.178566, 35.803810, 29.925699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981945, 35.514000, 30.781515>,  <39.678249, 35.335709, 30.069111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981945, 35.514000, 30.781515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095039, 35.813419, 30.541605>,  <40.162895, 35.993073, 30.397659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.095039, 35.813419, 30.541605>,  <39.981945, 35.514000, 30.781515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.095039, 35.813419, 30.541605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016384, 0.621429, 0.783299,
		0.959059, -0.231291, 0.163434,
		0.282733, 0.748552, -0.599776,
		40.179859, 36.037987, 30.361671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.603649, 35.817951, 31.075565>,  <39.981945, 35.514000, 30.781515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.603649, 35.817951, 31.075565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426491, 36.074966, 30.825449>,  <40.320198, 36.229176, 30.675379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.426491, 36.074966, 30.825449>,  <40.603649, 35.817951, 31.075565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.426491, 36.074966, 30.825449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000773, 0.697694, 0.716396,
		0.896574, 0.316804, -0.309501,
		-0.442894, 0.642541, -0.625289,
		40.293621, 36.267727, 30.637863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.835899, 36.478790, 31.298580>,  <40.603649, 35.817951, 31.075565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.835899, 36.478790, 31.298580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538570, 36.619839, 31.071203>,  <40.360172, 36.704468, 30.934776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.538570, 36.619839, 31.071203>,  <40.835899, 36.478790, 31.298580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538570, 36.619839, 31.071203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071404, 0.803093, 0.591559,
		0.665110, 0.480309, -0.571779,
		-0.743323, 0.352625, -0.568442,
		40.315575, 36.725628, 30.900671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.950996, 37.131317, 31.023426>,  <40.835899, 36.478790, 31.298580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.950996, 37.131317, 31.023426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555805, 37.088726, 31.068258>,  <40.318691, 37.063171, 31.095158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.555805, 37.088726, 31.068258>,  <40.950996, 37.131317, 31.023426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.555805, 37.088726, 31.068258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002638, 0.736507, 0.676425,
		-0.154573, 0.667997, -0.727933,
		-0.987978, -0.106477, 0.112081,
		40.259411, 37.056782, 31.101883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.559422, 37.744705, 30.856348>,  <40.950996, 37.131317, 31.023426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.559422, 37.744705, 30.856348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354874, 37.535667, 31.129227>,  <40.232143, 37.410244, 31.292953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.354874, 37.535667, 31.129227>,  <40.559422, 37.744705, 30.856348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.354874, 37.535667, 31.129227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177913, 0.841028, 0.510899,
		-0.840740, 0.139889, -0.523056,
		-0.511374, -0.522592, 0.682198,
		40.201462, 37.378891, 31.333885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056385, 38.120045, 31.004761>,  <40.559422, 37.744705, 30.856348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056385, 38.120045, 31.004761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065868, 37.880295, 31.324808>,  <40.071556, 37.736446, 31.516836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.065868, 37.880295, 31.324808>,  <40.056385, 38.120045, 31.004761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.065868, 37.880295, 31.324808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111589, 0.793755, 0.597914,
		-0.993472, -0.103458, -0.048068,
		0.023705, -0.599374, 0.800118,
		40.072979, 37.700481, 31.564844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.079342, 38.365204, 30.208323>,  <40.056385, 38.120045, 31.004761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.079342, 38.365204, 30.208323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856018, 38.072475, 30.364645>,  <39.722023, 37.896839, 30.458439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.856018, 38.072475, 30.364645>,  <40.079342, 38.365204, 30.208323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.856018, 38.072475, 30.364645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598453, 0.681497, 0.421208,
		-0.574583, 0.001284, -0.818445,
		-0.558309, -0.731820, 0.390808,
		39.688526, 37.852928, 30.481888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429295, 38.481674, 30.038893>,  <40.079342, 38.365204, 30.208323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429295, 38.481674, 30.038893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449760, 38.290184, 30.389481>,  <39.462040, 38.175289, 30.599834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.449760, 38.290184, 30.389481>,  <39.429295, 38.481674, 30.038893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449760, 38.290184, 30.389481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605457, 0.683079, 0.408442,
		-0.794231, -0.551565, -0.254897,
		0.051168, -0.478727, 0.876472,
		39.465111, 38.146564, 30.652422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.740398, 38.519875, 30.354691>,  <39.429295, 38.481674, 30.038893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.740398, 38.519875, 30.354691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006714, 38.488728, 30.651518>,  <39.166504, 38.470039, 30.829615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.006714, 38.488728, 30.651518>,  <38.740398, 38.519875, 30.354691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.006714, 38.488728, 30.651518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426213, 0.776623, 0.463896,
		-0.612429, -0.625135, 0.483877,
		0.665788, -0.077869, 0.742067,
		39.206451, 38.465366, 30.874138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.430222, 38.893257, 30.863604>,  <38.740398, 38.519875, 30.354691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.430222, 38.893257, 30.863604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773373, 38.789284, 31.040911>,  <38.979263, 38.726898, 31.147295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773373, 38.789284, 31.040911>,  <38.430222, 38.893257, 30.863604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773373, 38.789284, 31.040911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154764, 0.691874, 0.705236,
		-0.490002, -0.673605, 0.553312,
		0.857873, -0.259934, 0.443269,
		39.030735, 38.711304, 31.173891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.311131, 38.780094, 31.577415>,  <38.430222, 38.893257, 30.863604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.311131, 38.780094, 31.577415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698250, 38.880234, 31.587921>,  <38.930523, 38.940315, 31.594225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.698250, 38.880234, 31.587921>,  <38.311131, 38.780094, 31.577415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.698250, 38.880234, 31.587921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211899, 0.753940, 0.621830,
		0.135872, -0.607372, 0.782712,
		0.967801, 0.250345, 0.026262,
		38.988590, 38.955338, 31.595800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428658, 38.851799, 32.270866>,  <38.311131, 38.780094, 31.577415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428658, 38.851799, 32.270866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706688, 39.065624, 32.078568>,  <38.873505, 39.193920, 31.963188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.706688, 39.065624, 32.078568>,  <38.428658, 38.851799, 32.270866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.706688, 39.065624, 32.078568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216106, 0.793117, 0.569442,
		0.685692, -0.291909, 0.666795,
		0.695071, 0.534560, -0.480751,
		38.915211, 39.225994, 31.934343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904087, 39.153103, 32.712059>,  <38.428658, 38.851799, 32.270866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904087, 39.153103, 32.712059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936562, 39.382538, 32.386013>,  <38.956047, 39.520199, 32.190384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936562, 39.382538, 32.386013>,  <38.904087, 39.153103, 32.712059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936562, 39.382538, 32.386013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118335, 0.817577, 0.563529,
		0.989649, 0.050705, 0.134253,
		0.081188, 0.573583, -0.815114,
		38.960918, 39.554611, 32.141479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.276081, 39.727295, 32.939102>,  <38.904087, 39.153103, 32.712059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.276081, 39.727295, 32.939102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060894, 39.805790, 32.611179>,  <38.931782, 39.852886, 32.414425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.060894, 39.805790, 32.611179>,  <39.276081, 39.727295, 32.939102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.060894, 39.805790, 32.611179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489849, 0.718700, 0.493476,
		0.686033, 0.667055, -0.290510,
		-0.537965, 0.196235, -0.819808,
		38.899506, 39.864662, 32.365238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.369812, 40.423943, 32.767807>,  <39.276081, 39.727295, 32.939102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.369812, 40.423943, 32.767807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022194, 40.280388, 32.631592>,  <38.813625, 40.194256, 32.549862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.022194, 40.280388, 32.631592>,  <39.369812, 40.423943, 32.767807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.022194, 40.280388, 32.631592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492184, 0.696981, 0.521509,
		0.050183, 0.620820, -0.782345,
		-0.869043, -0.358887, -0.340535,
		38.761482, 40.172722, 32.529430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.001999, 40.969753, 32.417778>,  <39.369812, 40.423943, 32.767807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.001999, 40.969753, 32.417778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779388, 40.683964, 32.587395>,  <38.645821, 40.512489, 32.689163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.779388, 40.683964, 32.587395>,  <39.001999, 40.969753, 32.417778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.779388, 40.683964, 32.587395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515067, 0.697164, 0.498667,
		-0.651908, 0.059113, -0.755990,
		-0.556527, -0.714471, 0.424040,
		38.612431, 40.469624, 32.714607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.402218, 41.042191, 32.891048>,  <39.001999, 40.969753, 32.417778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.402218, 41.042191, 32.891048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392548, 41.155647, 32.507599>,  <38.386745, 41.223721, 32.277531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.392548, 41.155647, 32.507599>,  <38.402218, 41.042191, 32.891048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.392548, 41.155647, 32.507599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520622, -0.815040, -0.254288,
		-0.853445, -0.505228, -0.127968,
		-0.024175, 0.283644, -0.958625,
		38.385296, 41.240742, 32.220013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.018806, 40.422489, 32.560123>,  <38.402218, 41.042191, 32.891048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.018806, 40.422489, 32.560123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257591, 40.646099, 32.329948>,  <38.400860, 40.780266, 32.191845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.257591, 40.646099, 32.329948>,  <38.018806, 40.422489, 32.560123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.257591, 40.646099, 32.329948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363740, -0.827897, -0.426941,
		-0.715075, 0.045557, -0.697562,
		0.596960, 0.559026, -0.575438,
		38.436680, 40.813808, 32.157318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.210918, 40.030819, 31.950750>,  <38.018806, 40.422489, 32.560123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.210918, 40.030819, 31.950750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491577, 40.315063, 31.971622>,  <38.659973, 40.485611, 31.984146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.491577, 40.315063, 31.971622>,  <38.210918, 40.030819, 31.950750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.491577, 40.315063, 31.971622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676936, -0.641949, -0.360083,
		-0.222383, 0.287973, -0.931460,
		0.701644, 0.710615, 0.052180,
		38.702072, 40.528248, 31.987276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468388, 40.215618, 31.193211>,  <38.210918, 40.030819, 31.950750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468388, 40.215618, 31.193211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712612, 40.195187, 31.509338>,  <38.859146, 40.182926, 31.699015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712612, 40.195187, 31.509338>,  <38.468388, 40.215618, 31.193211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712612, 40.195187, 31.509338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479077, -0.770806, -0.419932,
		0.630634, 0.635018, -0.446153,
		0.610562, -0.051082, 0.790319,
		38.895782, 40.179863, 31.746433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.094051, 40.200573, 31.008047>,  <38.468388, 40.215618, 31.193211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.094051, 40.200573, 31.008047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091541, 40.013023, 31.361343>,  <39.090034, 39.900494, 31.573320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.091541, 40.013023, 31.361343>,  <39.094051, 40.200573, 31.008047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.091541, 40.013023, 31.361343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590310, -0.714676, -0.375197,
		0.807152, 0.519031, 0.281269,
		-0.006277, -0.468877, 0.883241,
		39.089657, 39.872360, 31.626316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.779434, 39.886398, 31.145107>,  <39.094051, 40.200573, 31.008047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.779434, 39.886398, 31.145107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529572, 39.688725, 31.386961>,  <39.379654, 39.570118, 31.532074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.529572, 39.688725, 31.386961>,  <39.779434, 39.886398, 31.145107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.529572, 39.688725, 31.386961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389787, -0.868244, -0.306949,
		0.676660, 0.043941, 0.734983,
		-0.624657, -0.494187, 0.604634,
		39.342175, 39.540470, 31.568352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.144516, 39.414379, 31.440742>,  <39.779434, 39.886398, 31.145107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.144516, 39.414379, 31.440742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774036, 39.266949, 31.472504>,  <39.551750, 39.178490, 31.491560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.774036, 39.266949, 31.472504>,  <40.144516, 39.414379, 31.440742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.774036, 39.266949, 31.472504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298247, -0.845062, -0.443756,
		0.230657, -0.387325, 0.892623,
		-0.926200, -0.368578, 0.079401,
		39.496178, 39.156376, 31.496325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.182938, 38.764961, 31.654512>,  <40.144516, 39.414379, 31.440742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.182938, 38.764961, 31.654512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816685, 38.765324, 31.493710>,  <39.596931, 38.765541, 31.397228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816685, 38.765324, 31.493710>,  <40.182938, 38.764961, 31.654512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816685, 38.765324, 31.493710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117403, -0.955802, -0.269553,
		-0.384484, -0.294009, 0.875060,
		-0.915635, 0.000904, -0.402008,
		39.541992, 38.765594, 31.373108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821560, 38.197800, 31.994112>,  <40.182938, 38.764961, 31.654512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821560, 38.197800, 31.994112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702579, 38.296360, 31.625154>,  <39.631191, 38.355495, 31.403780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702579, 38.296360, 31.625154>,  <39.821560, 38.197800, 31.994112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702579, 38.296360, 31.625154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076633, -0.956843, -0.280319,
		-0.951656, -0.154066, 0.265734,
		-0.297453, 0.246403, -0.922392,
		39.613346, 38.370281, 31.348436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509724, 37.564625, 31.861551>,  <39.821560, 38.197800, 31.994112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509724, 37.564625, 31.861551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523026, 37.753353, 31.509125>,  <39.531006, 37.866589, 31.297668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523026, 37.753353, 31.509125>,  <39.509724, 37.564625, 31.861551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523026, 37.753353, 31.509125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414442, -0.808700, -0.417424,
		-0.909468, -0.351272, -0.222431,
		0.033251, 0.471819, -0.881068,
		39.533001, 37.894897, 31.244804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.420925, 37.072495, 31.417767>,  <39.509724, 37.564625, 31.861551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.420925, 37.072495, 31.417767> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608025, 37.341690, 31.188578>,  <39.720284, 37.503208, 31.051064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.608025, 37.341690, 31.188578>,  <39.420925, 37.072495, 31.417767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608025, 37.341690, 31.188578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411606, -0.739534, -0.532607,
		-0.782172, 0.013286, -0.622921,
		0.467747, 0.672988, -0.572974,
		39.748348, 37.543587, 31.016685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.258091, 36.779976, 30.769018>,  <39.420925, 37.072495, 31.417767>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.258091, 36.779976, 30.769018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591805, 37.000511, 30.769651>,  <39.792030, 37.132832, 30.770031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.591805, 37.000511, 30.769651>,  <39.258091, 36.779976, 30.769018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.591805, 37.000511, 30.769651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450872, -0.680597, -0.577496,
		-0.317320, 0.482506, -0.816392,
		0.834280, 0.551339, 0.001582,
		39.842087, 37.165913, 30.770126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.407455, 37.155014, 30.117714>,  <39.258091, 36.779976, 30.769018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.407455, 37.155014, 30.117714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720165, 37.032238, 30.334829>,  <39.907791, 36.958572, 30.465097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.720165, 37.032238, 30.334829>,  <39.407455, 37.155014, 30.117714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.720165, 37.032238, 30.334829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254071, -0.638135, -0.726796,
		0.569453, 0.706097, -0.420893,
		0.781775, -0.306939, 0.542786,
		39.954697, 36.940155, 30.497665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.757706, 36.870426, 29.628746>,  <39.407455, 37.155014, 30.117714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.757706, 36.870426, 29.628746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938347, 36.723930, 29.954182>,  <40.046730, 36.636032, 30.149443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.938347, 36.723930, 29.954182>,  <39.757706, 36.870426, 29.628746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.938347, 36.723930, 29.954182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321875, -0.783589, -0.531399,
		0.832137, 0.501854, -0.235987,
		0.451602, -0.366239, 0.813588,
		40.073826, 36.614059, 30.198257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501831, 37.030762, 29.571144>,  <39.757706, 36.870426, 29.628746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501831, 37.030762, 29.571144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424595, 36.717731, 29.807888>,  <40.378254, 36.529915, 29.949934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.424595, 36.717731, 29.807888>,  <40.501831, 37.030762, 29.571144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.424595, 36.717731, 29.807888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382922, -0.615481, -0.688879,
		0.903375, 0.093621, 0.418507,
		-0.193089, -0.782572, 0.591860,
		40.366669, 36.482960, 29.985447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.132195, 36.678890, 29.643848>,  <40.501831, 37.030762, 29.571144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.132195, 36.678890, 29.643848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845276, 36.412289, 29.725098>,  <40.673126, 36.252327, 29.773848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845276, 36.412289, 29.725098>,  <41.132195, 36.678890, 29.643848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845276, 36.412289, 29.725098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408968, -0.638755, -0.651718,
		0.564118, -0.384405, 0.730756,
		-0.717298, -0.666502, 0.203124,
		40.630085, 36.212337, 29.786036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.366127, 36.009682, 29.838928>,  <41.132195, 36.678890, 29.643848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.366127, 36.009682, 29.838928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020287, 36.002064, 29.638088>,  <40.812782, 35.997494, 29.517584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.020287, 36.002064, 29.638088>,  <41.366127, 36.009682, 29.838928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.020287, 36.002064, 29.638088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457033, -0.445024, -0.770113,
		-0.208779, -0.895316, 0.393472,
		-0.864599, -0.019046, -0.502101,
		40.760906, 35.996349, 29.487457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864586, 35.878922, 30.362799>,  <41.366127, 36.009682, 29.838928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864586, 35.878922, 30.362799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593624, 36.021515, 30.620182>,  <41.431046, 36.107071, 30.774612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.593624, 36.021515, 30.620182>,  <41.864586, 35.878922, 30.362799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.593624, 36.021515, 30.620182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675146, -0.046000, 0.736248,
		0.292061, 0.933168, -0.209519,
		-0.677405, 0.356486, 0.643459,
		41.390404, 36.128460, 30.813219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.282616, 36.280567, 30.660147>,  <41.864586, 35.878922, 30.362799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.282616, 36.280567, 30.660147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969566, 36.255836, 30.907913>,  <41.781738, 36.240997, 31.056574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.969566, 36.255836, 30.907913>,  <42.282616, 36.280567, 30.660147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.969566, 36.255836, 30.907913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619146, -0.180413, 0.764271,
		0.064496, 0.981646, 0.179477,
		-0.782623, -0.061830, 0.619418,
		41.734779, 36.237289, 31.093739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354649, 36.869987, 31.151262>,  <42.282616, 36.280567, 30.660147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354649, 36.869987, 31.151262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184242, 36.524712, 31.259640>,  <42.081997, 36.317547, 31.324665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.184242, 36.524712, 31.259640>,  <42.354649, 36.869987, 31.151262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.184242, 36.524712, 31.259640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711520, -0.134697, 0.689634,
		-0.558792, 0.486577, 0.671561,
		-0.426018, -0.863191, 0.270942,
		42.056438, 36.265755, 31.340921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.151852, 36.941231, 31.800154>,  <42.354649, 36.869987, 31.151262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.151852, 36.941231, 31.800154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229137, 36.553768, 31.737715>,  <42.275509, 36.321289, 31.700251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229137, 36.553768, 31.737715>,  <42.151852, 36.941231, 31.800154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229137, 36.553768, 31.737715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683993, 0.018917, 0.729243,
		-0.703436, -0.247669, 0.666212,
		0.193214, -0.968660, -0.156097,
		42.287102, 36.263168, 31.690886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411476, 36.565948, 32.486908>,  <42.151852, 36.941231, 31.800154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411476, 36.565948, 32.486908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531250, 36.353039, 32.170170>,  <42.603115, 36.225292, 31.980127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531250, 36.353039, 32.170170>,  <42.411476, 36.565948, 32.486908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531250, 36.353039, 32.170170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917338, -0.067592, 0.392329,
		-0.262348, -0.843871, 0.468034,
		0.299439, -0.532272, -0.791847,
		42.621082, 36.193356, 31.932615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.335587, 35.842834, 32.764008>,  <42.411476, 36.565948, 32.486908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.335587, 35.842834, 32.764008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043476, 35.964176, 32.519165>,  <41.868210, 36.036980, 32.372257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.043476, 35.964176, 32.519165>,  <42.335587, 35.842834, 32.764008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043476, 35.964176, 32.519165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442458, -0.892708, 0.085460,
		-0.520509, 0.333242, 0.786142,
		-0.730275, 0.303352, -0.612108,
		41.824394, 36.055183, 32.335533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.619274, 35.797199, 33.133007>,  <42.335587, 35.842834, 32.764008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.619274, 35.797199, 33.133007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584129, 35.777225, 32.735054>,  <41.563042, 35.765240, 32.496284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.584129, 35.777225, 32.735054>,  <41.619274, 35.797199, 33.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584129, 35.777225, 32.735054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707104, -0.700341, 0.097604,
		-0.701630, 0.712059, 0.026225,
		-0.087866, -0.049938, -0.994880,
		41.557770, 35.762245, 32.436588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993912, 35.852467, 33.088501>,  <41.619274, 35.797199, 33.133007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993912, 35.852467, 33.088501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087547, 35.668587, 32.745834>,  <41.143730, 35.558258, 32.540234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.087547, 35.668587, 32.745834>,  <40.993912, 35.852467, 33.088501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.087547, 35.668587, 32.745834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605578, -0.758279, 0.241430,
		-0.760578, 0.462264, -0.455887,
		0.234085, -0.459701, -0.856667,
		41.157776, 35.530674, 32.488834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377193, 35.637276, 32.617989>,  <40.993912, 35.852467, 33.088501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377193, 35.637276, 32.617989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683640, 35.391273, 32.543331>,  <40.867508, 35.243671, 32.498535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.683640, 35.391273, 32.543331>,  <40.377193, 35.637276, 32.617989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.683640, 35.391273, 32.543331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592626, -0.788363, 0.165164,
		-0.248723, -0.015922, -0.968444,
		0.766115, -0.615005, -0.186648,
		40.913475, 35.206772, 32.487335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.479500, 34.980980, 32.593334>,  <40.377193, 35.637276, 32.617989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.479500, 34.980980, 32.593334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527363, 34.602169, 32.474117>,  <40.556080, 34.374882, 32.402588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527363, 34.602169, 32.474117>,  <40.479500, 34.980980, 32.593334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527363, 34.602169, 32.474117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990259, 0.135371, -0.032571,
		0.071192, -0.291240, 0.953997,
		0.119657, -0.947024, -0.298040,
		40.563259, 34.318062, 32.384705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911785, 34.661476, 33.104919>,  <40.479500, 34.980980, 32.593334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911785, 34.661476, 33.104919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935455, 34.529472, 32.728073>,  <40.949657, 34.450268, 32.501965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.935455, 34.529472, 32.728073>,  <40.911785, 34.661476, 33.104919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935455, 34.529472, 32.728073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936120, 0.346092, -0.062436,
		0.346665, -0.878243, 0.329412,
		0.059173, -0.330014, -0.942119,
		40.953209, 34.430470, 32.445438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.533653, 34.252274, 33.200958>,  <40.911785, 34.661476, 33.104919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.533653, 34.252274, 33.200958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445908, 34.402142, 32.840626>,  <41.393261, 34.492062, 32.624424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445908, 34.402142, 32.840626>,  <41.533653, 34.252274, 33.200958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445908, 34.402142, 32.840626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849975, 0.526684, 0.012083,
		0.478981, -0.763036, -0.433996,
		-0.219359, 0.374674, -0.900834,
		41.380100, 34.514545, 32.570377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.044312, 33.928993, 32.803764>,  <41.533653, 34.252274, 33.200958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.044312, 33.928993, 32.803764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932327, 34.289894, 32.672581>,  <41.865135, 34.506435, 32.593872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.932327, 34.289894, 32.672581>,  <42.044312, 33.928993, 32.803764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932327, 34.289894, 32.672581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903692, 0.362972, 0.227139,
		0.323975, -0.232779, -0.916981,
		-0.279965, 0.902256, -0.327954,
		41.848339, 34.560570, 32.574196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353466, 34.098419, 32.202259>,  <42.044312, 33.928993, 32.803764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353466, 34.098419, 32.202259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317696, 34.439198, 32.408630>,  <42.296234, 34.643665, 32.532455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317696, 34.439198, 32.408630>,  <42.353466, 34.098419, 32.202259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317696, 34.439198, 32.408630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957812, 0.215613, -0.190016,
		-0.273126, 0.477173, -0.835289,
		-0.089428, 0.851949, 0.515932,
		42.290867, 34.694782, 32.563412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.649567, 34.707367, 31.903835>,  <42.353466, 34.098419, 32.202259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.649567, 34.707367, 31.903835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648880, 34.870182, 32.269199>,  <42.648468, 34.967869, 32.488419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648880, 34.870182, 32.269199>,  <42.649567, 34.707367, 31.903835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648880, 34.870182, 32.269199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910425, 0.378488, -0.166950,
		-0.413670, 0.831306, -0.371224,
		-0.001717, 0.407034, 0.913411,
		42.648365, 34.992290, 32.543224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.954987, 35.399048, 31.864119>,  <42.649567, 34.707367, 31.903835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.954987, 35.399048, 31.864119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990170, 35.253036, 32.234852>,  <43.011280, 35.165428, 32.457291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.990170, 35.253036, 32.234852>,  <42.954987, 35.399048, 31.864119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990170, 35.253036, 32.234852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974805, 0.223008, -0.004680,
		-0.204983, 0.903893, 0.375445,
		0.087958, -0.365027, 0.926833,
		43.016556, 35.143528, 32.512901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.257359, 35.903282, 32.314102>,  <42.954987, 35.399048, 31.864119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.257359, 35.903282, 32.314102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350784, 35.563972, 32.504211>,  <43.406841, 35.360386, 32.618275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.350784, 35.563972, 32.504211>,  <43.257359, 35.903282, 32.314102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.350784, 35.563972, 32.504211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943191, 0.316442, 0.101270,
		-0.236300, 0.424618, 0.873992,
		0.233567, -0.848271, 0.475271,
		43.420853, 35.309490, 32.646793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.758396, 36.131306, 32.759289>,  <43.257359, 35.903282, 32.314102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.758396, 36.131306, 32.759289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769165, 35.731915, 32.740017>,  <43.775627, 35.492279, 32.728455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.769165, 35.731915, 32.740017>,  <43.758396, 36.131306, 32.759289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.769165, 35.731915, 32.740017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983453, 0.017813, 0.180284,
		-0.179151, -0.052239, 0.982434,
		0.026918, -0.998476, -0.048184,
		43.777241, 35.432373, 32.725563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.940319, 35.651001, 33.430943>,  <43.758396, 36.131306, 32.759289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.940319, 35.651001, 33.430943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076683, 35.482250, 33.094894>,  <44.158501, 35.381001, 32.893265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.076683, 35.482250, 33.094894>,  <43.940319, 35.651001, 33.430943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.076683, 35.482250, 33.094894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934556, 0.055217, 0.351506,
		-0.101904, -0.904970, 0.413092,
		0.340912, -0.421877, -0.840118,
		44.178955, 35.355686, 32.842857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.454002, 35.116177, 33.733486>,  <43.940319, 35.651001, 33.430943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.454002, 35.116177, 33.733486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526920, 35.193970, 33.347958>,  <44.570671, 35.240646, 33.116642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.526920, 35.193970, 33.347958>,  <44.454002, 35.116177, 33.733486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.526920, 35.193970, 33.347958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973599, -0.172665, 0.149301,
		-0.137382, -0.965590, -0.220822,
		0.182292, 0.194481, -0.963819,
		44.581608, 35.252316, 33.058811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.855659, 34.553825, 33.420361>,  <44.454002, 35.116177, 33.733486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.855659, 34.553825, 33.420361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916500, 34.917564, 33.265465>,  <44.953007, 35.135807, 33.172527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.916500, 34.917564, 33.265465>,  <44.855659, 34.553825, 33.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.916500, 34.917564, 33.265465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977165, -0.079542, 0.197034,
		0.148369, -0.408368, -0.900679,
		0.152104, 0.909345, -0.387242,
		44.962132, 35.190369, 33.149292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.324337, 34.469479, 32.817482>,  <44.855659, 34.553825, 33.420361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.324337, 34.469479, 32.817482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324661, 34.807850, 33.030800>,  <45.324856, 35.010872, 33.158791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.324661, 34.807850, 33.030800>,  <45.324337, 34.469479, 32.817482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.324661, 34.807850, 33.030800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971741, -0.126547, 0.199260,
		0.236047, 0.518060, -0.822129,
		0.000809, 0.845931, 0.533292,
		45.324905, 35.061630, 33.190788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.956932, 34.467682, 32.835297>,  <45.324337, 34.469479, 32.817482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.956932, 34.467682, 32.835297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903229, 34.727631, 33.134533>,  <45.871006, 34.883602, 33.314075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.903229, 34.727631, 33.134533>,  <45.956932, 34.467682, 32.835297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.903229, 34.727631, 33.134533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968721, -0.072913, 0.237200,
		0.208696, 0.756536, -0.619758,
		-0.134262, 0.649875, 0.748088,
		45.862949, 34.922592, 33.358959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.425323, 35.024734, 32.845936>,  <45.956932, 34.467682, 32.835297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.425323, 35.024734, 32.845936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295082, 34.988136, 33.222363>,  <46.216938, 34.966179, 33.448219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.295082, 34.988136, 33.222363>,  <46.425323, 35.024734, 32.845936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.295082, 34.988136, 33.222363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944042, 0.023908, 0.328959,
		-0.052596, 0.995519, 0.078589,
		-0.325606, -0.091494, 0.941068,
		46.197399, 34.960690, 33.504684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.860069, 35.536514, 33.277065>,  <46.425323, 35.024734, 32.845936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.860069, 35.536514, 33.277065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751041, 35.201881, 33.467152>,  <46.685623, 35.001102, 33.581203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.751041, 35.201881, 33.467152>,  <46.860069, 35.536514, 33.277065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.751041, 35.201881, 33.467152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957761, -0.188878, 0.216839,
		-0.091646, 0.514251, 0.852729,
		-0.272571, -0.836583, 0.475219,
		46.669270, 34.950905, 33.609718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865387, 35.592495, 34.078266>,  <46.860069, 35.536514, 33.277065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865387, 35.592495, 34.078266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969498, 35.245300, 33.909100>,  <47.031963, 35.036983, 33.807602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.969498, 35.245300, 33.909100>,  <46.865387, 35.592495, 34.078266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.969498, 35.245300, 33.909100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863693, 0.013503, 0.503837,
		-0.431613, -0.496405, 0.753188,
		0.260277, -0.867986, -0.422913,
		47.047581, 34.984905, 33.782227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.016460, 35.251945, 34.587845>,  <46.865387, 35.592495, 34.078266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.016460, 35.251945, 34.587845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218502, 35.145683, 34.259384>,  <47.339729, 35.081924, 34.062309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.218502, 35.145683, 34.259384>,  <47.016460, 35.251945, 34.587845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.218502, 35.145683, 34.259384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843908, -0.047278, 0.534401,
		-0.180790, -0.962908, 0.200309,
		0.505109, -0.265656, -0.821153,
		47.370033, 35.065987, 34.013039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.776192, 35.274498, 34.526447>,  <47.016460, 35.251945, 34.587845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.776192, 35.274498, 34.526447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851326, 34.929382, 34.714199>,  <47.896408, 34.722313, 34.826851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.851326, 34.929382, 34.714199>,  <47.776192, 35.274498, 34.526447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.851326, 34.929382, 34.714199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032300, 0.483052, 0.874996,
		-0.981669, -0.149197, 0.118604,
		0.187838, -0.862787, 0.469378,
		47.907677, 34.670547, 34.855011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<31.558447, 36.207623, 22.000990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.215712, 36.064911, 22.149874>,  <31.010071, 35.979286, 22.239204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.215712, 36.064911, 22.149874>,  <31.558447, 36.207623, 22.000990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215712, 36.064911, 22.149874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463873, -0.218335, 0.858575,
		-0.225052, 0.908318, 0.352576,
		-0.856839, -0.356775, 0.372208,
		30.958660, 35.957878, 22.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.573378, 36.490643, 22.694960>,  <31.558447, 36.207623, 22.000990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.573378, 36.490643, 22.694960> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311096, 36.188694, 22.688995>,  <31.153727, 36.007526, 22.685417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.311096, 36.188694, 22.688995>,  <31.573378, 36.490643, 22.694960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.311096, 36.188694, 22.688995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372054, -0.340239, 0.863604,
		-0.656983, 0.560721, 0.503949,
		-0.655705, -0.754870, -0.014912,
		31.114386, 35.962234, 22.684521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575872, 36.329601, 23.406033>,  <31.573378, 36.490643, 22.694960>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575872, 36.329601, 23.406033> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.389130, 36.026917, 23.222977>,  <31.277084, 35.845306, 23.113144>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.389130, 36.026917, 23.222977>,  <31.575872, 36.329601, 23.406033>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389130, 36.026917, 23.222977> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132785, -0.571612, 0.809709,
		-0.874306, 0.317252, 0.367341,
		-0.466858, -0.756711, -0.457638,
		31.249073, 35.799904, 23.085686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061375, 36.090744, 23.879456>,  <31.575872, 36.329601, 23.406033>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061375, 36.090744, 23.879456> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168783, 35.802090, 23.624226>,  <31.233229, 35.628899, 23.471087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.168783, 35.802090, 23.624226>,  <31.061375, 36.090744, 23.879456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.168783, 35.802090, 23.624226> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264302, -0.581787, 0.769200,
		-0.926305, -0.375192, 0.034507,
		0.268522, -0.721633, -0.638076,
		31.249340, 35.585598, 23.432802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.661026, 35.479977, 24.022863>,  <31.061375, 36.090744, 23.879456>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.661026, 35.479977, 24.022863> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.982082, 35.346516, 23.825100>,  <31.174717, 35.266438, 23.706442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.982082, 35.346516, 23.825100>,  <30.661026, 35.479977, 24.022863>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.982082, 35.346516, 23.825100> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187367, -0.645905, 0.740068,
		-0.566266, -0.686646, -0.455916,
		0.802643, -0.333652, -0.494409,
		31.222876, 35.246418, 23.676777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.685341, 34.738583, 24.113396>,  <30.661026, 35.479977, 24.022863>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.685341, 34.738583, 24.113396> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.061913, 34.840988, 24.025606>,  <31.287855, 34.902431, 23.972933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.061913, 34.840988, 24.025606>,  <30.685341, 34.738583, 24.113396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061913, 34.840988, 24.025606> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329494, -0.559907, 0.760222,
		0.071743, -0.788010, -0.611468,
		0.941428, 0.256015, -0.219475,
		31.344341, 34.917793, 23.959764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.092752, 34.130177, 24.183559>,  <30.685341, 34.738583, 24.113396>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.092752, 34.130177, 24.183559> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353735, 34.433289, 24.186899>,  <31.510324, 34.615158, 24.188904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.353735, 34.433289, 24.186899>,  <31.092752, 34.130177, 24.183559>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.353735, 34.433289, 24.186899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410332, -0.362519, 0.836784,
		0.637127, -0.542537, -0.547470,
		0.652454, 0.757782, 0.008350,
		31.549471, 34.660622, 24.189404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819351, 33.840664, 24.301756>,  <31.092752, 34.130177, 24.183559>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819351, 33.840664, 24.301756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818083, 34.228146, 24.401039>,  <31.817322, 34.460632, 24.460609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.818083, 34.228146, 24.401039>,  <31.819351, 33.840664, 24.301756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818083, 34.228146, 24.401039> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397028, -0.226588, 0.889397,
		0.917801, 0.101365, -0.383883,
		-0.003171, 0.968702, 0.248207,
		31.817131, 34.518757, 24.475502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.414639, 33.869572, 24.554230>,  <31.819351, 33.840664, 24.301756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.414639, 33.869572, 24.554230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.273323, 34.213642, 24.701353>,  <32.188534, 34.420086, 24.789627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.273323, 34.213642, 24.701353>,  <32.414639, 33.869572, 24.554230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.273323, 34.213642, 24.701353> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527641, -0.141450, 0.837608,
		0.772517, 0.489989, -0.403891,
		-0.353288, 0.860176, 0.367811,
		32.167336, 34.471695, 24.811697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997932, 34.316383, 24.809547>,  <32.414639, 33.869572, 24.554230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997932, 34.316383, 24.809547> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667950, 34.436222, 25.001247>,  <32.469959, 34.508125, 25.116266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.667950, 34.436222, 25.001247>,  <32.997932, 34.316383, 24.809547>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.667950, 34.436222, 25.001247> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522421, 0.080640, 0.848866,
		0.215675, 0.950651, -0.223043,
		-0.824961, 0.299601, 0.479248,
		32.420460, 34.526104, 25.145021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.186768, 34.881989, 25.209538>,  <32.997932, 34.316383, 24.809547>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.186768, 34.881989, 25.209538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860996, 34.725628, 25.381075>,  <32.665535, 34.631809, 25.483997>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.860996, 34.725628, 25.381075>,  <33.186768, 34.881989, 25.209538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860996, 34.725628, 25.381075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437049, 0.072918, 0.896477,
		-0.381706, 0.917539, 0.111457,
		-0.814425, -0.390903, 0.428843,
		32.616669, 34.608356, 25.509727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196636, 35.241291, 25.789669>,  <33.186768, 34.881989, 25.209538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196636, 35.241291, 25.789669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.944496, 34.942871, 25.875525>,  <32.793213, 34.763821, 25.927038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.944496, 34.942871, 25.875525>,  <33.196636, 35.241291, 25.789669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.944496, 34.942871, 25.875525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162809, 0.143290, 0.976197,
		-0.759047, 0.650291, 0.031141,
		-0.630350, -0.746049, 0.214637,
		32.755390, 34.719055, 25.939915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835796, 35.537838, 26.303024>,  <33.196636, 35.241291, 25.789669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835796, 35.537838, 26.303024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814087, 35.140064, 26.339146>,  <32.801060, 34.901402, 26.360819>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.814087, 35.140064, 26.339146>,  <32.835796, 35.537838, 26.303024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.814087, 35.140064, 26.339146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329323, 0.067549, 0.941798,
		-0.942656, 0.080857, 0.323823,
		-0.054276, -0.994434, 0.090304,
		32.797806, 34.841736, 26.366238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.585369, 35.465462, 26.942106>,  <32.835796, 35.537838, 26.303024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.585369, 35.465462, 26.942106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.744095, 35.108559, 26.855928>,  <32.839333, 34.894417, 26.804222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.744095, 35.108559, 26.855928>,  <32.585369, 35.465462, 26.942106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744095, 35.108559, 26.855928> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332185, -0.079209, 0.939882,
		-0.855680, -0.444530, 0.264962,
		0.396818, -0.892255, -0.215444,
		32.863140, 34.840881, 26.791296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.462017, 35.025089, 27.447149>,  <32.585369, 35.465462, 26.942106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.462017, 35.025089, 27.447149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801262, 34.869129, 27.303659>,  <33.004810, 34.775555, 27.217566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.801262, 34.869129, 27.303659>,  <32.462017, 35.025089, 27.447149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.801262, 34.869129, 27.303659> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360946, -0.070442, 0.929923,
		-0.387847, -0.918158, 0.080990,
		0.848111, -0.389901, -0.358726,
		33.055695, 34.752159, 27.196041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632278, 34.543770, 27.923943>,  <32.462017, 35.025089, 27.447149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632278, 34.543770, 27.923943> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989349, 34.565151, 27.744940>,  <33.203594, 34.577980, 27.637539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.989349, 34.565151, 27.744940>,  <32.632278, 34.543770, 27.923943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989349, 34.565151, 27.744940> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450688, -0.106710, 0.886281,
		-0.000374, -0.992852, -0.119352,
		0.892682, 0.053459, -0.447506,
		33.257153, 34.581188, 27.610687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894341, 33.983894, 28.060856>,  <32.632278, 34.543770, 27.923943>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894341, 33.983894, 28.060856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214977, 34.209717, 27.982151>,  <33.407360, 34.345211, 27.934929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.214977, 34.209717, 27.982151>,  <32.894341, 33.983894, 28.060856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214977, 34.209717, 27.982151> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353990, -0.182957, 0.917179,
		0.481804, -0.804859, -0.346506,
		0.801596, 0.564561, -0.196763,
		33.455456, 34.379086, 27.923122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.489552, 33.747044, 28.465414>,  <32.894341, 33.983894, 28.060856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.489552, 33.747044, 28.465414> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686047, 34.080334, 28.363882>,  <33.803944, 34.280308, 28.302963>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.686047, 34.080334, 28.363882>,  <33.489552, 33.747044, 28.465414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686047, 34.080334, 28.363882> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425792, 0.024508, 0.904489,
		0.759860, -0.552397, -0.342740,
		0.491237, 0.833221, -0.253829,
		33.833416, 34.330299, 28.287733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227310, 33.583878, 28.394733>,  <33.489552, 33.747044, 28.465414>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227310, 33.583878, 28.394733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181065, 33.972675, 28.476566>,  <34.153316, 34.205956, 28.525667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181065, 33.972675, 28.476566>,  <34.227310, 33.583878, 28.394733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181065, 33.972675, 28.476566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600665, -0.095622, 0.793762,
		0.791097, 0.214659, -0.572789,
		-0.115617, 0.971997, 0.204584,
		34.146381, 34.264275, 28.537941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890476, 33.809177, 28.641998>,  <34.227310, 33.583878, 28.394733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890476, 33.809177, 28.641998> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635818, 34.094391, 28.759483>,  <34.483025, 34.265518, 28.829975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.635818, 34.094391, 28.759483>,  <34.890476, 33.809177, 28.641998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635818, 34.094391, 28.759483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452561, 0.037073, 0.890963,
		0.624394, 0.700154, -0.346291,
		-0.636649, 0.713029, 0.293714,
		34.444824, 34.308300, 28.847597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.311146, 34.393906, 28.980499>,  <34.890476, 33.809177, 28.641998>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.311146, 34.393906, 28.980499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940079, 34.441864, 29.121954>,  <34.717438, 34.470638, 29.206827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.940079, 34.441864, 29.121954>,  <35.311146, 34.393906, 28.980499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.940079, 34.441864, 29.121954> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368680, 0.143811, 0.918365,
		0.059253, 0.982315, -0.177613,
		-0.927666, 0.119898, 0.353638,
		34.661777, 34.477833, 29.228045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779140, 33.860947, 28.901091>,  <35.311146, 34.393906, 28.980499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779140, 33.860947, 28.901091> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162861, 33.841198, 28.789879>,  <36.393093, 33.829350, 28.723152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.162861, 33.841198, 28.789879>,  <35.779140, 33.860947, 28.901091>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162861, 33.841198, 28.789879> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225589, 0.458219, -0.859736,
		0.169843, 0.887467, 0.428433,
		0.959304, -0.049370, -0.278027,
		36.450653, 33.826385, 28.706470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.090981, 34.587288, 28.728676>,  <35.779140, 33.860947, 28.901091>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.090981, 34.587288, 28.728676> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308094, 34.319248, 28.526150>,  <36.438362, 34.158424, 28.404634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.308094, 34.319248, 28.526150>,  <36.090981, 34.587288, 28.728676>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308094, 34.319248, 28.526150> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023388, 0.590556, -0.806657,
		0.839546, 0.449684, 0.304873,
		0.542786, -0.670095, -0.506316,
		36.470928, 34.118221, 28.374254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.659794, 34.971088, 28.271925>,  <36.090981, 34.587288, 28.728676>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.659794, 34.971088, 28.271925> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625092, 34.600178, 28.126255>,  <36.604271, 34.377632, 28.038853>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.625092, 34.600178, 28.126255>,  <36.659794, 34.971088, 28.271925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.625092, 34.600178, 28.126255> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031253, 0.367907, -0.929337,
		0.995739, -0.069248, -0.060900,
		-0.086760, -0.927281, -0.364175,
		36.599064, 34.321995, 28.017002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.150581, 34.986923, 27.716015>,  <36.659794, 34.971088, 28.271925>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.150581, 34.986923, 27.716015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904869, 34.675671, 27.663609>,  <36.757442, 34.488918, 27.632164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.904869, 34.675671, 27.663609>,  <37.150581, 34.986923, 27.716015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.904869, 34.675671, 27.663609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031271, 0.189909, -0.981304,
		0.788467, -0.598699, -0.140991,
		-0.614281, -0.778135, -0.131015,
		36.720585, 34.442230, 27.624304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310047, 34.822235, 27.002119>,  <37.150581, 34.986923, 27.716015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310047, 34.822235, 27.002119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968174, 34.638786, 27.099424>,  <36.763050, 34.528717, 27.157808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.968174, 34.638786, 27.099424>,  <37.310047, 34.822235, 27.002119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968174, 34.638786, 27.099424> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331659, 0.121869, -0.935495,
		0.399395, -0.880234, -0.256266,
		-0.854685, -0.458625, 0.243263,
		36.711769, 34.501198, 27.172403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.126217, 34.436497, 26.440928>,  <37.310047, 34.822235, 27.002119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.126217, 34.436497, 26.440928> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789032, 34.511490, 26.642628>,  <36.586720, 34.556484, 26.763647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.789032, 34.511490, 26.642628>,  <37.126217, 34.436497, 26.440928>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789032, 34.511490, 26.642628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467391, 0.208902, -0.859014,
		-0.266386, -0.959798, -0.088470,
		-0.842961, 0.187479, 0.504249,
		36.536144, 34.567734, 26.793903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.572334, 34.193001, 26.102610>,  <37.126217, 34.436497, 26.440928>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.572334, 34.193001, 26.102610> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360359, 34.427677, 26.347544>,  <36.233173, 34.568485, 26.494505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.360359, 34.427677, 26.347544>,  <36.572334, 34.193001, 26.102610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360359, 34.427677, 26.347544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498523, 0.368603, -0.784607,
		-0.686032, -0.721057, 0.097143,
		-0.529939, 0.586694, 0.612336,
		36.201378, 34.603683, 26.531244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874413, 34.080349, 25.903278>,  <36.572334, 34.193001, 26.102610>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874413, 34.080349, 25.903278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855095, 34.425240, 26.104967>,  <35.843502, 34.632172, 26.225981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.855095, 34.425240, 26.104967>,  <35.874413, 34.080349, 25.903278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855095, 34.425240, 26.104967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400099, 0.445840, -0.800717,
		-0.915198, -0.240411, 0.323442,
		-0.048298, 0.862223, 0.504220,
		35.840607, 34.683907, 26.256233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264599, 34.313801, 25.676504>,  <35.874413, 34.080349, 25.903278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264599, 34.313801, 25.676504> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415703, 34.646866, 25.838480>,  <35.506367, 34.846703, 25.935665>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.415703, 34.646866, 25.838480>,  <35.264599, 34.313801, 25.676504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415703, 34.646866, 25.838480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478062, 0.549943, -0.684850,
		-0.792941, 0.065121, 0.605809,
		0.377759, 0.832659, 0.404941,
		35.529030, 34.896664, 25.959963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785275, 34.800415, 25.781813>,  <35.264599, 34.313801, 25.676504>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785275, 34.800415, 25.781813> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113262, 35.022686, 25.726860>,  <35.310055, 35.156048, 25.693888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.113262, 35.022686, 25.726860>,  <34.785275, 34.800415, 25.781813>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.113262, 35.022686, 25.726860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401766, 0.387749, -0.829599,
		-0.407720, 0.735440, 0.541195,
		0.819968, 0.555678, -0.137382,
		35.359253, 35.189388, 25.685646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.529343, 35.524261, 25.649593>,  <34.785275, 34.800415, 25.781813>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.529343, 35.524261, 25.649593> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917915, 35.563850, 25.563316>,  <35.151058, 35.587605, 25.511551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.917915, 35.563850, 25.563316>,  <34.529343, 35.524261, 25.649593>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.917915, 35.563850, 25.563316> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237315, 0.404220, -0.883339,
		-0.000239, 0.909291, 0.416160,
		0.971433, 0.098972, -0.215692,
		35.209347, 35.593540, 25.498610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626640, 36.258404, 25.515198>,  <34.529343, 35.524261, 25.649593>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626640, 36.258404, 25.515198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923588, 36.064804, 25.329884>,  <35.101757, 35.948643, 25.218695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.923588, 36.064804, 25.329884>,  <34.626640, 36.258404, 25.515198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.923588, 36.064804, 25.329884> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315139, 0.357966, -0.878947,
		0.591254, 0.798500, 0.113213,
		0.742365, -0.484003, -0.463287,
		35.146297, 35.919601, 25.190897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.848969, 36.725521, 25.067381>,  <34.626640, 36.258404, 25.515198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.848969, 36.725521, 25.067381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005775, 36.389156, 24.918154>,  <35.099861, 36.187336, 24.828617>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.005775, 36.389156, 24.918154>,  <34.848969, 36.725521, 25.067381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005775, 36.389156, 24.918154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225271, 0.305434, -0.925183,
		0.891949, 0.446732, -0.069697,
		0.392021, -0.840916, -0.373067,
		35.123383, 36.136883, 24.806234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.377026, 36.909454, 24.526882>,  <34.848969, 36.725521, 25.067381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.377026, 36.909454, 24.526882> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258774, 36.544662, 24.413113>,  <35.187820, 36.325787, 24.344851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.258774, 36.544662, 24.413113>,  <35.377026, 36.909454, 24.526882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258774, 36.544662, 24.413113> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158891, 0.340524, -0.926713,
		0.941996, -0.228774, -0.245575,
		-0.295632, -0.911979, -0.284422,
		35.170086, 36.271069, 24.327785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.606567, 36.855511, 23.806768>,  <35.377026, 36.909454, 24.526882>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.606567, 36.855511, 23.806768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312645, 36.585972, 23.837727>,  <35.136292, 36.424248, 23.856302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.312645, 36.585972, 23.837727>,  <35.606567, 36.855511, 23.806768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.312645, 36.585972, 23.837727> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247234, 0.159835, -0.955682,
		0.631614, -0.721375, -0.284046,
		-0.734806, -0.673848, 0.077395,
		35.092205, 36.383816, 23.860945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.712078, 36.438118, 23.155647>,  <35.606567, 36.855511, 23.806768>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.712078, 36.438118, 23.155647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343319, 36.368042, 23.293869>,  <35.122063, 36.325996, 23.376802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.343319, 36.368042, 23.293869>,  <35.712078, 36.438118, 23.155647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343319, 36.368042, 23.293869> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345531, -0.031638, -0.937874,
		0.175240, -0.984026, -0.031367,
		-0.921900, -0.175191, 0.345556,
		35.066750, 36.315487, 23.397535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.372326, 35.890583, 22.817036>,  <35.712078, 36.438118, 23.155647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.372326, 35.890583, 22.817036> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051723, 36.106205, 22.920580>,  <34.859364, 36.235580, 22.982706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.051723, 36.106205, 22.920580>,  <35.372326, 35.890583, 22.817036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.051723, 36.106205, 22.920580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397370, -0.156634, -0.904192,
		-0.446866, -0.827576, 0.339748,
		-0.801504, 0.539058, 0.258859,
		34.811272, 36.267921, 22.998238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814861, 35.582790, 22.476152>,  <35.372326, 35.890583, 22.817036>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814861, 35.582790, 22.476152> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657547, 35.928261, 22.602261>,  <34.563160, 36.135544, 22.677925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.657547, 35.928261, 22.602261>,  <34.814861, 35.582790, 22.476152>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.657547, 35.928261, 22.602261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536583, 0.062840, -0.841505,
		-0.746598, -0.500117, 0.438719,
		-0.393282, 0.863675, 0.315271,
		34.539562, 36.187363, 22.696842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125839, 35.492825, 22.493723>,  <34.814861, 35.582790, 22.476152>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125839, 35.492825, 22.493723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181374, 35.887676, 22.461958>,  <34.214695, 36.124588, 22.442898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.181374, 35.887676, 22.461958>,  <34.125839, 35.492825, 22.493723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.181374, 35.887676, 22.461958> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683979, 0.037589, -0.728533,
		-0.716169, 0.155465, 0.680392,
		0.138837, 0.987126, -0.079415,
		34.223026, 36.183815, 22.438133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<33.417980, 35.661404, 22.352640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625820, 35.991871, 22.265495>,  <33.750526, 36.190151, 22.213209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.625820, 35.991871, 22.265495>,  <33.417980, 35.661404, 22.352640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625820, 35.991871, 22.265495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587236, 0.160103, -0.793424,
		-0.620619, 0.540201, 0.568344,
		0.519602, 0.826166, -0.217863,
		33.781700, 36.239719, 22.200136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890278, 36.190723, 22.236343>,  <33.417980, 35.661404, 22.352640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890278, 36.190723, 22.236343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220520, 36.323299, 22.053686>,  <33.418667, 36.402843, 21.944092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.220520, 36.323299, 22.053686>,  <32.890278, 36.190723, 22.236343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.220520, 36.323299, 22.053686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552952, 0.314125, -0.771731,
		-0.112337, 0.889648, 0.442613,
		0.825605, 0.331438, -0.456645,
		33.468201, 36.422729, 21.916693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806873, 36.879089, 21.992802>,  <32.890278, 36.190723, 22.236343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806873, 36.879089, 21.992802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096127, 36.744320, 21.751616>,  <33.269676, 36.663456, 21.606905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.096127, 36.744320, 21.751616>,  <32.806873, 36.879089, 21.992802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.096127, 36.744320, 21.751616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603617, 0.116085, -0.788778,
		0.335755, 0.934347, -0.119430,
		0.723129, -0.336926, -0.602964,
		33.313065, 36.643242, 21.570726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949429, 37.445595, 21.461531>,  <32.806873, 36.879089, 21.992802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949429, 37.445595, 21.461531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055069, 37.095016, 21.300486>,  <33.118454, 36.884670, 21.203857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.055069, 37.095016, 21.300486>,  <32.949429, 37.445595, 21.461531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055069, 37.095016, 21.300486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681527, 0.125792, -0.720900,
		0.682473, 0.464786, -0.564096,
		0.264105, -0.876442, -0.402614,
		33.134300, 36.832085, 21.179701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926590, 37.527950, 20.767952>,  <32.949429, 37.445595, 21.461531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926590, 37.527950, 20.767952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965176, 37.130505, 20.744509>,  <32.988327, 36.892036, 20.730444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.965176, 37.130505, 20.744509>,  <32.926590, 37.527950, 20.767952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965176, 37.130505, 20.744509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582478, -0.008607, -0.812801,
		0.807102, 0.112542, -0.579586,
		0.096463, -0.993610, -0.058606,
		32.994114, 36.832420, 20.726927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189495, 37.404987, 20.176392>,  <32.926590, 37.527950, 20.767952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189495, 37.404987, 20.176392> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034767, 37.047050, 20.265495>,  <32.941929, 36.832287, 20.318958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.034767, 37.047050, 20.265495>,  <33.189495, 37.404987, 20.176392>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034767, 37.047050, 20.265495> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530835, 0.018552, -0.847273,
		0.754045, -0.445992, -0.482191,
		-0.386822, -0.894845, 0.222759,
		32.918720, 36.778599, 20.332323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.145046, 37.038319, 19.594887>,  <33.189495, 37.404987, 20.176392>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.145046, 37.038319, 19.594887> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900028, 36.831581, 19.834106>,  <32.753017, 36.707539, 19.977638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.900028, 36.831581, 19.834106>,  <33.145046, 37.038319, 19.594887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.900028, 36.831581, 19.834106> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607026, -0.177011, -0.774718,
		0.506265, -0.837582, -0.205307,
		-0.612548, -0.516839, 0.598049,
		32.716263, 36.676529, 20.013521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.930042, 36.398487, 19.202488>,  <33.145046, 37.038319, 19.594887>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.930042, 36.398487, 19.202488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625530, 36.449699, 19.456753>,  <32.442825, 36.480427, 19.609312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.625530, 36.449699, 19.456753>,  <32.930042, 36.398487, 19.202488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625530, 36.449699, 19.456753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642860, -0.020836, -0.765701,
		-0.084787, -0.991551, 0.098167,
		-0.761277, 0.128029, 0.635662,
		32.397148, 36.488110, 19.647451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440365, 36.040215, 18.835690>,  <32.930042, 36.398487, 19.202488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440365, 36.040215, 18.835690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244617, 36.256126, 19.109673>,  <32.127171, 36.385674, 19.274061>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.244617, 36.256126, 19.109673>,  <32.440365, 36.040215, 18.835690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244617, 36.256126, 19.109673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712224, 0.205873, -0.671084,
		-0.503250, -0.816245, 0.283695,
		-0.489364, 0.539777, 0.684955,
		32.097809, 36.418060, 19.315159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753572, 35.734867, 18.931879>,  <32.440365, 36.040215, 18.835690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753572, 35.734867, 18.931879> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741234, 36.117104, 19.049114>,  <31.733829, 36.346443, 19.119455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.741234, 36.117104, 19.049114>,  <31.753572, 35.734867, 18.931879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.741234, 36.117104, 19.049114> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649081, 0.203835, -0.732902,
		-0.760094, -0.212847, 0.613966,
		-0.030848, 0.955588, 0.293088,
		31.731979, 36.403778, 19.137041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025373, 35.839771, 19.015144>,  <31.753572, 35.734867, 18.931879>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025373, 35.839771, 19.015144> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185392, 36.205315, 18.987381>,  <31.281404, 36.424641, 18.970724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.185392, 36.205315, 18.987381>,  <31.025373, 35.839771, 19.015144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185392, 36.205315, 18.987381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703625, 0.257724, -0.662185,
		-0.587258, 0.313743, 0.746119,
		0.400049, 0.913862, -0.069407,
		31.305407, 36.479473, 18.966558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.483358, 36.353745, 18.965368>,  <31.025373, 35.839771, 19.015144>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.483358, 36.353745, 18.965368> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782291, 36.573803, 18.816328>,  <30.961651, 36.705837, 18.726904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.782291, 36.573803, 18.816328>,  <30.483358, 36.353745, 18.965368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.782291, 36.573803, 18.816328> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613639, 0.356384, -0.704584,
		-0.254837, 0.755200, 0.603929,
		0.747332, 0.550148, -0.372600,
		31.006491, 36.738846, 18.704548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.225525, 37.066708, 18.940691>,  <30.483358, 36.353745, 18.965368>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.225525, 37.066708, 18.940691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547680, 37.061760, 18.703644>,  <30.740973, 37.058792, 18.561415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.547680, 37.061760, 18.703644>,  <30.225525, 37.066708, 18.940691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.547680, 37.061760, 18.703644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459108, 0.619368, -0.636869,
		0.374927, 0.785003, 0.493153,
		0.805388, -0.012369, -0.592619,
		30.789297, 37.058048, 18.525858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.216862, 37.793037, 18.629025>,  <30.225525, 37.066708, 18.940691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.216862, 37.793037, 18.629025> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447826, 37.585701, 18.376701>,  <30.586405, 37.461300, 18.225307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.447826, 37.585701, 18.376701>,  <30.216862, 37.793037, 18.629025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.447826, 37.585701, 18.376701> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244898, 0.627090, -0.739448,
		0.778857, 0.581451, 0.235151,
		0.577414, -0.518337, -0.630809,
		30.621050, 37.430199, 18.187458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515781, 38.303478, 18.313467>,  <30.216862, 37.793037, 18.629025>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515781, 38.303478, 18.313467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526901, 37.983765, 18.073341>,  <30.533573, 37.791939, 17.929266>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.526901, 37.983765, 18.073341>,  <30.515781, 38.303478, 18.313467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.526901, 37.983765, 18.073341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324979, 0.560698, -0.761582,
		0.945313, 0.216260, -0.244163,
		0.027798, -0.799281, -0.600315,
		30.535240, 37.743980, 17.893248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.859447, 38.542145, 17.790051>,  <30.515781, 38.303478, 18.313467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.859447, 38.542145, 17.790051> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673836, 38.221142, 17.640034>,  <30.562469, 38.028538, 17.550024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.673836, 38.221142, 17.640034>,  <30.859447, 38.542145, 17.790051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673836, 38.221142, 17.640034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153647, 0.489880, -0.858143,
		0.872394, -0.340578, -0.350621,
		-0.464027, -0.802511, -0.375040,
		30.534628, 37.980389, 17.527521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.983231, 38.611591, 17.119612>,  <30.859447, 38.542145, 17.790051>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.983231, 38.611591, 17.119612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685238, 38.345280, 17.102922>,  <30.506443, 38.185493, 17.092909>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.685238, 38.345280, 17.102922>,  <30.983231, 38.611591, 17.119612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.685238, 38.345280, 17.102922> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332599, 0.424926, -0.841912,
		0.578258, -0.613331, -0.537999,
		-0.744980, -0.665780, -0.041724,
		30.461744, 38.145546, 17.090405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966587, 38.419254, 16.433332>,  <30.983231, 38.611591, 17.119612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966587, 38.419254, 16.433332> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596300, 38.314140, 16.542139>,  <30.374128, 38.251072, 16.607422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.596300, 38.314140, 16.542139>,  <30.966587, 38.419254, 16.433332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.596300, 38.314140, 16.542139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358234, 0.378508, -0.853464,
		0.121322, -0.887510, -0.444530,
		-0.925716, -0.262789, 0.272015,
		30.318584, 38.235302, 16.623743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652887, 38.175407, 15.907081>,  <30.966587, 38.419254, 16.433332>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652887, 38.175407, 15.907081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325663, 38.251549, 16.124166>,  <30.129328, 38.297234, 16.254417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.325663, 38.251549, 16.124166>,  <30.652887, 38.175407, 15.907081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325663, 38.251549, 16.124166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463698, 0.339931, -0.818187,
		-0.340233, -0.920984, -0.189817,
		-0.818062, 0.190357, 0.542714,
		30.080244, 38.308655, 16.286982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110823, 37.914124, 15.531013>,  <30.652887, 38.175407, 15.907081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110823, 37.914124, 15.531013> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925159, 38.171837, 15.774146>,  <29.813761, 38.326466, 15.920026>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.925159, 38.171837, 15.774146>,  <30.110823, 37.914124, 15.531013>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925159, 38.171837, 15.774146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613314, 0.261334, -0.745352,
		-0.639062, -0.718754, 0.273846,
		-0.464160, 0.644280, 0.607831,
		29.785912, 38.365120, 15.956495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456694, 37.797161, 15.377435>,  <30.110823, 37.914124, 15.531013>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456694, 37.797161, 15.377435> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463739, 38.162018, 15.541232>,  <29.467966, 38.380932, 15.639510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.463739, 38.162018, 15.541232>,  <29.456694, 37.797161, 15.377435>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463739, 38.162018, 15.541232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552378, 0.350258, -0.756437,
		-0.833407, -0.212872, 0.510017,
		0.017614, 0.912143, 0.409493,
		29.469023, 38.435661, 15.664081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.665192, 38.064167, 15.356388>,  <29.456694, 37.797161, 15.377435>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.665192, 38.064167, 15.356388> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912306, 38.370770, 15.426594>,  <29.060574, 38.554733, 15.468718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.912306, 38.370770, 15.426594>,  <28.665192, 38.064167, 15.356388>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.912306, 38.370770, 15.426594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654510, 0.624949, -0.425506,
		-0.435842, 0.147996, 0.887772,
		0.617786, 0.766509, 0.175514,
		29.097641, 38.600723, 15.479248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400558, 38.731236, 15.761800>,  <28.665192, 38.064167, 15.356388>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400558, 38.731236, 15.761800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696814, 38.858265, 15.524954>,  <28.874567, 38.934483, 15.382846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.696814, 38.858265, 15.524954>,  <28.400558, 38.731236, 15.761800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.696814, 38.858265, 15.524954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601737, 0.705590, -0.374240,
		0.298942, 0.633474, 0.713684,
		0.740640, 0.317574, -0.592115,
		28.919006, 38.953537, 15.347320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.577274, 38.651478, 15.534057>,  <28.400558, 38.731236, 15.761800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.577274, 38.651478, 15.534057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575592, 38.251484, 15.534959>,  <27.574583, 38.011486, 15.535501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.575592, 38.251484, 15.534959>,  <27.577274, 38.651478, 15.534057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.575592, 38.251484, 15.534959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767283, -0.004673, -0.641291,
		0.641294, -0.000965, 0.767294,
		-0.004204, -0.999989, 0.002256,
		27.574331, 37.951488, 15.535636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.442444, 38.564327, 16.209599>,  <27.577274, 38.651478, 15.534057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.442444, 38.564327, 16.209599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.082726, 38.439541, 16.332201>,  <26.866894, 38.364670, 16.405764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.082726, 38.439541, 16.332201>,  <27.442444, 38.564327, 16.209599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.082726, 38.439541, 16.332201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280884, 0.125197, 0.951541,
		-0.335218, 0.941810, -0.024964,
		-0.899296, -0.311962, 0.306508,
		26.812937, 38.345951, 16.424152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376888, 38.935528, 16.768827>,  <27.442444, 38.564327, 16.209599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376888, 38.935528, 16.768827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096895, 38.661766, 16.850426>,  <26.928900, 38.497509, 16.899384>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.096895, 38.661766, 16.850426>,  <27.376888, 38.935528, 16.768827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096895, 38.661766, 16.850426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236760, 0.047096, 0.970426,
		-0.673774, 0.727577, 0.129074,
		-0.699981, -0.684407, 0.203994,
		26.886902, 38.456444, 16.911623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966908, 39.165562, 17.395493>,  <27.376888, 38.935528, 16.768827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966908, 39.165562, 17.395493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.915760, 38.769867, 17.367025>,  <26.885073, 38.532452, 17.349945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.915760, 38.769867, 17.367025>,  <26.966908, 39.165562, 17.395493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915760, 38.769867, 17.367025> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191400, -0.095019, 0.976902,
		-0.973148, 0.111292, 0.201489,
		-0.127866, -0.989235, -0.071166,
		26.877399, 38.473095, 17.345676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.536427, 39.003647, 17.974848>,  <26.966908, 39.165562, 17.395493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.536427, 39.003647, 17.974848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.750423, 38.686466, 17.858219>,  <26.878822, 38.496159, 17.788242>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.750423, 38.686466, 17.858219>,  <26.536427, 39.003647, 17.974848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.750423, 38.686466, 17.858219> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372688, -0.088219, 0.923754,
		-0.758213, -0.602865, 0.248326,
		0.534992, -0.792951, -0.291569,
		26.910921, 38.448582, 17.770748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399347, 38.582405, 18.518402>,  <26.536427, 39.003647, 17.974848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399347, 38.582405, 18.518402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710155, 38.420441, 18.325619>,  <26.896641, 38.323261, 18.209948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.710155, 38.420441, 18.325619>,  <26.399347, 38.582405, 18.518402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710155, 38.420441, 18.325619> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420307, -0.236234, 0.876091,
		-0.468597, -0.883311, -0.013370,
		0.777019, -0.404914, -0.481960,
		26.943262, 38.298965, 18.181030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.543949, 38.009052, 18.919987>,  <26.399347, 38.582405, 18.518402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.543949, 38.009052, 18.919987> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.857628, 38.134800, 18.705994>,  <27.045835, 38.210251, 18.577599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.857628, 38.134800, 18.705994>,  <26.543949, 38.009052, 18.919987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.857628, 38.134800, 18.705994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602861, -0.181825, 0.776852,
		0.146948, -0.931724, -0.332110,
		0.784197, 0.314373, -0.534981,
		27.092888, 38.229111, 18.545500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.026258, 37.791855, 19.318394>,  <26.543949, 38.009052, 18.919987>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.026258, 37.791855, 19.318394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271503, 37.967968, 19.056023>,  <27.418650, 38.073635, 18.898600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.271503, 37.967968, 19.056023>,  <27.026258, 37.791855, 19.318394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.271503, 37.967968, 19.056023> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743595, -0.041269, 0.667355,
		0.266758, -0.896908, -0.352697,
		0.613112, 0.440286, -0.655928,
		27.455437, 38.100056, 18.859243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.624514, 37.376255, 19.221693>,  <27.026258, 37.791855, 19.318394>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.624514, 37.376255, 19.221693> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716490, 37.755653, 19.134533>,  <27.771675, 37.983292, 19.082237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.716490, 37.755653, 19.134533>,  <27.624514, 37.376255, 19.221693>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.716490, 37.755653, 19.134533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597093, 0.039311, 0.801208,
		0.768509, -0.314339, -0.557301,
		0.229943, 0.948496, -0.217901,
		27.785473, 38.040203, 19.069162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.330624, 37.323273, 19.006229>,  <27.624514, 37.376255, 19.221693>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.330624, 37.323273, 19.006229> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271675, 37.706810, 19.103310>,  <28.236305, 37.936932, 19.161558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.271675, 37.706810, 19.103310>,  <28.330624, 37.323273, 19.006229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271675, 37.706810, 19.103310> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770384, -0.042617, 0.636154,
		0.620315, 0.280725, -0.732395,
		-0.147372, 0.958842, 0.242702,
		28.227463, 37.994461, 19.176121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.922922, 37.684872, 18.828983>,  <28.330624, 37.323273, 19.006229>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.922922, 37.684872, 18.828983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730091, 37.831177, 19.147434>,  <28.614393, 37.918961, 19.338505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.730091, 37.831177, 19.147434>,  <28.922922, 37.684872, 18.828983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.730091, 37.831177, 19.147434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791579, -0.207628, 0.574712,
		0.375507, 0.907253, -0.189437,
		-0.482076, 0.365762, 0.796128,
		28.585468, 37.940907, 19.386272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.346029, 38.124165, 19.198395>,  <28.922922, 37.684872, 18.828983>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.346029, 38.124165, 19.198395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083685, 38.001129, 19.474144>,  <28.926279, 37.927307, 19.639593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.083685, 38.001129, 19.474144>,  <29.346029, 38.124165, 19.198395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083685, 38.001129, 19.474144> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754851, -0.275539, 0.595214,
		0.006868, 0.910751, 0.412898,
		-0.655861, -0.307588, 0.689374,
		28.886927, 37.908852, 19.680956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714964, 38.252922, 19.741837>,  <29.346029, 38.124165, 19.198395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714964, 38.252922, 19.741837> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421453, 38.004448, 19.851891>,  <29.245348, 37.855362, 19.917923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421453, 38.004448, 19.851891>,  <29.714964, 38.252922, 19.741837>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421453, 38.004448, 19.851891> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635605, -0.484637, 0.600944,
		-0.239959, 0.615835, 0.750445,
		-0.733775, -0.621188, 0.275135,
		29.201321, 37.818092, 19.934431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.656849, 38.190834, 20.510935>,  <29.714964, 38.252922, 19.741837>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.656849, 38.190834, 20.510935> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500149, 37.851048, 20.369545>,  <29.406128, 37.647175, 20.284710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.500149, 37.851048, 20.369545>,  <29.656849, 38.190834, 20.510935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500149, 37.851048, 20.369545> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531536, -0.522536, 0.666653,
		-0.751001, 0.073276, 0.656223,
		-0.391750, -0.849463, -0.353476,
		29.382624, 37.596210, 20.263502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.500071, 37.837875, 21.153614>,  <29.656849, 38.190834, 20.510935>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.500071, 37.837875, 21.153614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.481236, 37.555367, 20.871063>,  <29.469934, 37.385860, 20.701532>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.481236, 37.555367, 20.871063>,  <29.500071, 37.837875, 21.153614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.481236, 37.555367, 20.871063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587733, -0.591386, 0.552116,
		-0.807683, -0.389162, 0.442946,
		-0.047089, -0.706268, -0.706376,
		29.467110, 37.343487, 20.659151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.252031, 37.105911, 21.456635>,  <29.500071, 37.837875, 21.153614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.252031, 37.105911, 21.456635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429132, 37.002567, 21.113190>,  <29.535393, 36.940559, 20.907122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.429132, 37.002567, 21.113190>,  <29.252031, 37.105911, 21.456635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.429132, 37.002567, 21.113190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522755, -0.703624, 0.481291,
		-0.728490, -0.661937, -0.176470,
		0.442753, -0.258365, -0.858613,
		29.561958, 36.925056, 20.855606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.051628, 36.365112, 21.397383>,  <29.252031, 37.105911, 21.456635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.051628, 36.365112, 21.397383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369053, 36.450714, 21.169537>,  <29.559507, 36.502075, 21.032829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.369053, 36.450714, 21.169537>,  <29.051628, 36.365112, 21.397383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.369053, 36.450714, 21.169537> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513418, -0.737926, 0.438026,
		-0.326595, -0.640052, -0.695463,
		0.793560, 0.214006, -0.569617,
		29.607121, 36.514915, 20.998652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292995, 35.704330, 21.269640>,  <29.051628, 36.365112, 21.397383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292995, 35.704330, 21.269640> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581043, 35.975857, 21.212187>,  <29.753872, 36.138775, 21.177715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.581043, 35.975857, 21.212187>,  <29.292995, 35.704330, 21.269640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581043, 35.975857, 21.212187> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613147, -0.525684, 0.589668,
		0.324771, -0.512701, -0.794771,
		0.720121, 0.678818, -0.143634,
		29.797079, 36.179501, 21.169096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.898252, 35.302460, 21.035883>,  <29.292995, 35.704330, 21.269640>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.898252, 35.302460, 21.035883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013258, 35.664196, 21.162054>,  <30.082262, 35.881241, 21.237757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.013258, 35.664196, 21.162054>,  <29.898252, 35.302460, 21.035883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.013258, 35.664196, 21.162054> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.664469, -0.425527, 0.614335,
		0.689794, 0.032962, -0.723255,
		0.287515, 0.904345, 0.315428,
		30.099512, 35.935501, 21.256681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.660101, 35.312958, 21.154886>,  <29.898252, 35.302460, 21.035883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.660101, 35.312958, 21.154886> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535294, 35.630085, 21.364300>,  <30.460409, 35.820362, 21.489948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.535294, 35.630085, 21.364300>,  <30.660101, 35.312958, 21.154886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.535294, 35.630085, 21.364300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580192, -0.277357, 0.765800,
		0.752344, 0.542694, -0.373445,
		-0.312017, 0.792815, 0.523535,
		30.441689, 35.867931, 21.521360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251940, 35.564510, 21.466101>,  <30.660101, 35.312958, 21.154886>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251940, 35.564510, 21.466101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954090, 35.725651, 21.678982>,  <30.775379, 35.822334, 21.806711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.954090, 35.725651, 21.678982>,  <31.251940, 35.564510, 21.466101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954090, 35.725651, 21.678982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520969, -0.147691, 0.840701,
		0.417280, 0.903270, -0.099899,
		-0.744627, 0.402853, 0.532204,
		30.730701, 35.846508, 21.838644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<35.446762, 35.051323, 24.224913> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366310, 35.395775, 24.411674>,  <35.318039, 35.602448, 24.523731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.366310, 35.395775, 24.411674>,  <35.446762, 35.051323, 24.224913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.366310, 35.395775, 24.411674> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525611, -0.307344, 0.793267,
		0.826607, 0.404962, -0.390802,
		-0.201132, 0.861130, 0.466905,
		35.305969, 35.654114, 24.551746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.070538, 35.235683, 24.625961>,  <35.446762, 35.051323, 24.224913>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.070538, 35.235683, 24.625961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779175, 35.449162, 24.797823>,  <35.604359, 35.577248, 24.900940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.779175, 35.449162, 24.797823>,  <36.070538, 35.235683, 24.625961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.779175, 35.449162, 24.797823> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372583, -0.217726, 0.902096,
		0.574988, 0.817172, -0.040252,
		-0.728403, 0.533691, 0.429654,
		35.560654, 35.609268, 24.926720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.425861, 35.511173, 25.099611>,  <36.070538, 35.235683, 24.625961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.425861, 35.511173, 25.099611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046402, 35.556583, 25.217710>,  <35.818726, 35.583828, 25.288570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.046402, 35.556583, 25.217710>,  <36.425861, 35.511173, 25.099611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.046402, 35.556583, 25.217710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239800, -0.350611, 0.905300,
		0.206289, 0.929615, 0.305385,
		-0.948652, 0.113522, 0.295249,
		35.761806, 35.590641, 25.306286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444725, 35.882389, 25.727013>,  <36.425861, 35.511173, 25.099611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444725, 35.882389, 25.727013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106476, 35.668884, 25.728523>,  <35.903526, 35.540783, 25.729429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.106476, 35.668884, 25.728523>,  <36.444725, 35.882389, 25.727013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.106476, 35.668884, 25.728523> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229705, -0.357508, 0.905220,
		-0.481821, 0.766346, 0.424926,
		-0.845627, -0.533762, 0.003779,
		35.852787, 35.508755, 25.729656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.180660, 35.920799, 26.432629>,  <36.444725, 35.882389, 25.727013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.180660, 35.920799, 26.432629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988655, 35.603294, 26.283218>,  <35.873451, 35.412792, 26.193571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.988655, 35.603294, 26.283218>,  <36.180660, 35.920799, 26.432629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988655, 35.603294, 26.283218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049986, -0.449845, 0.891707,
		-0.875835, 0.409362, 0.255609,
		-0.480016, -0.793765, -0.373527,
		35.844650, 35.365166, 26.171160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560772, 35.770786, 26.829243>,  <36.180660, 35.920799, 26.432629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560772, 35.770786, 26.829243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706455, 35.440491, 26.656960>,  <35.793865, 35.242313, 26.553589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.706455, 35.440491, 26.656960>,  <35.560772, 35.770786, 26.829243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.706455, 35.440491, 26.656960> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091192, -0.428632, 0.898865,
		-0.926842, -0.366652, -0.080811,
		0.364209, -0.825737, -0.430709,
		35.815720, 35.192768, 26.527746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.487358, 35.204121, 27.374680>,  <35.560772, 35.770786, 26.829243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.487358, 35.204121, 27.374680> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.703682, 35.021877, 27.091850>,  <35.833477, 34.912533, 26.922153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.703682, 35.021877, 27.091850>,  <35.487358, 35.204121, 27.374680>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703682, 35.021877, 27.091850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384529, -0.613713, 0.689560,
		-0.748109, -0.644807, -0.156705,
		0.540805, -0.455609, -0.707072,
		35.865925, 34.885193, 26.879728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.436638, 34.514194, 27.466934>,  <35.487358, 35.204121, 27.374680>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.436638, 34.514194, 27.466934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.777748, 34.567970, 27.265066>,  <35.982414, 34.600235, 27.143946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.777748, 34.567970, 27.265066>,  <35.436638, 34.514194, 27.466934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777748, 34.567970, 27.265066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471255, -0.614612, 0.632590,
		-0.225133, -0.777289, -0.587483,
		0.852780, 0.134437, -0.504671,
		36.033581, 34.608303, 27.113665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682804, 33.864201, 27.574806>,  <35.436638, 34.514194, 27.466934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.682804, 33.864201, 27.574806> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993053, 34.073109, 27.433025>,  <36.179203, 34.198452, 27.347956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.993053, 34.073109, 27.433025>,  <35.682804, 33.864201, 27.574806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.993053, 34.073109, 27.433025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620714, -0.529229, 0.578473,
		0.114533, -0.668693, -0.734664,
		0.775627, 0.522270, -0.354453,
		36.225742, 34.229790, 27.326689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132912, 33.338085, 27.333458>,  <35.682804, 33.864201, 27.574806>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132912, 33.338085, 27.333458> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.293980, 33.692348, 27.425953>,  <36.390621, 33.904907, 27.481449>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.293980, 33.692348, 27.425953>,  <36.132912, 33.338085, 27.333458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.293980, 33.692348, 27.425953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337035, -0.378331, 0.862133,
		0.851038, -0.269218, -0.450839,
		0.402668, 0.885656, 0.231238,
		36.414780, 33.958046, 27.495325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730488, 33.189159, 27.501047>,  <36.132912, 33.338085, 27.333458>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730488, 33.189159, 27.501047> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670673, 33.538940, 27.685638>,  <36.634785, 33.748810, 27.796394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.670673, 33.538940, 27.685638>,  <36.730488, 33.189159, 27.501047>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.670673, 33.538940, 27.685638> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569674, -0.305278, 0.763070,
		0.808151, 0.377003, -0.452504,
		-0.149541, 0.874456, 0.461479,
		36.625813, 33.801277, 27.824081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.333221, 33.269699, 27.880581>,  <36.730488, 33.189159, 27.501047>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.333221, 33.269699, 27.880581> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072952, 33.527687, 28.040899>,  <36.916790, 33.682480, 28.137091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.072952, 33.527687, 28.040899>,  <37.333221, 33.269699, 27.880581>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.072952, 33.527687, 28.040899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356611, -0.206447, 0.911158,
		0.670413, 0.735794, -0.095674,
		-0.650673, 0.644970, 0.400797,
		36.877750, 33.721180, 28.161139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707230, 33.778378, 28.250221>,  <37.333221, 33.269699, 27.880581>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707230, 33.778378, 28.250221> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.331310, 33.766586, 28.386406>,  <37.105759, 33.759510, 28.468117>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.331310, 33.766586, 28.386406>,  <37.707230, 33.778378, 28.250221>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.331310, 33.766586, 28.386406> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341567, -0.112315, 0.933122,
		0.010733, 0.993235, 0.115622,
		-0.939796, -0.029477, 0.340462,
		37.049370, 33.757744, 28.488544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.536942, 34.274956, 28.780912>,  <37.707230, 33.778378, 28.250221>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.536942, 34.274956, 28.780912> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.295052, 33.964638, 28.852974>,  <37.149918, 33.778446, 28.896212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.295052, 33.964638, 28.852974>,  <37.536942, 34.274956, 28.780912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.295052, 33.964638, 28.852974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239709, 0.038424, 0.970084,
		-0.759507, 0.629816, 0.162729,
		-0.604722, -0.775794, 0.180156,
		37.113636, 33.731899, 28.907021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528774, 34.804314, 29.371468>,  <37.536942, 34.274956, 28.780912>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528774, 34.804314, 29.371468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729893, 35.143986, 29.436083>,  <37.850563, 35.347790, 29.474852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.729893, 35.143986, 29.436083>,  <37.528774, 34.804314, 29.371468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.729893, 35.143986, 29.436083> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640967, 0.491641, -0.589449,
		-0.579966, 0.192832, 0.791489,
		0.502794, 0.849179, 0.161536,
		37.880730, 35.398739, 29.484543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.022430, 35.526924, 29.305784>,  <37.528774, 34.804314, 29.371468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.022430, 35.526924, 29.305784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397888, 35.654625, 29.253597>,  <37.623161, 35.731247, 29.222286>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.397888, 35.654625, 29.253597>,  <37.022430, 35.526924, 29.305784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.397888, 35.654625, 29.253597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323215, 0.682332, -0.655709,
		-0.120315, 0.657647, 0.743656,
		0.938646, 0.319253, -0.130466,
		37.679482, 35.750401, 29.214457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026611, 36.205040, 29.372732>,  <37.022430, 35.526924, 29.305784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026611, 36.205040, 29.372732> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344749, 36.112003, 29.148830>,  <37.535633, 36.056183, 29.014490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.344749, 36.112003, 29.148830>,  <37.026611, 36.205040, 29.372732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344749, 36.112003, 29.148830> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268534, 0.692687, -0.669384,
		0.543427, 0.682705, 0.488468,
		0.795347, -0.232591, -0.559754,
		37.583355, 36.042225, 28.980904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.259663, 36.835548, 29.160480>,  <37.026611, 36.205040, 29.372732>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.259663, 36.835548, 29.160480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433693, 36.587910, 28.898968>,  <37.538113, 36.439327, 28.742060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.433693, 36.587910, 28.898968>,  <37.259663, 36.835548, 29.160480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.433693, 36.587910, 28.898968> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180649, 0.651322, -0.736984,
		0.882084, 0.438751, 0.171537,
		0.435079, -0.619094, -0.653780,
		37.564217, 36.402180, 28.702833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.490986, 37.328201, 28.558784>,  <37.259663, 36.835548, 29.160480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.490986, 37.328201, 28.558784> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.537819, 36.982349, 28.363356>,  <37.565918, 36.774837, 28.246098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.537819, 36.982349, 28.363356>,  <37.490986, 37.328201, 28.558784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537819, 36.982349, 28.363356> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292543, 0.440101, -0.848958,
		0.949057, 0.242330, -0.201412,
		0.117086, -0.864631, -0.488573,
		37.572945, 36.722961, 28.216784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.961243, 37.482407, 28.042477>,  <37.490986, 37.328201, 28.558784>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.961243, 37.482407, 28.042477> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769630, 37.149750, 27.930122>,  <37.654663, 36.950153, 27.862709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.769630, 37.149750, 27.930122>,  <37.961243, 37.482407, 28.042477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769630, 37.149750, 27.930122> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215635, 0.421672, -0.880735,
		0.850902, -0.361328, -0.381325,
		-0.479028, -0.831646, -0.280886,
		37.625923, 36.900257, 27.845856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.111500, 37.467964, 27.306866>,  <37.961243, 37.482407, 28.042477>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.111500, 37.467964, 27.306866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839680, 37.175743, 27.333715>,  <37.676586, 37.000412, 27.349825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.839680, 37.175743, 27.333715>,  <38.111500, 37.467964, 27.306866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839680, 37.175743, 27.333715> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284525, 0.178110, -0.941978,
		0.676209, -0.659219, -0.328895,
		-0.679549, -0.730553, 0.067124,
		37.635815, 36.956577, 27.353853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.188820, 37.078812, 26.780531>,  <38.111500, 37.467964, 27.306866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.188820, 37.078812, 26.780531> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.804642, 37.034561, 26.882750>,  <37.574135, 37.008011, 26.944080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.804642, 37.034561, 26.882750>,  <38.188820, 37.078812, 26.780531>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.804642, 37.034561, 26.882750> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276800, 0.279099, -0.919503,
		0.030399, -0.953869, -0.298681,
		-0.960447, -0.110627, 0.255547,
		37.516506, 37.001373, 26.959414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.811020, 36.783909, 26.186859>,  <38.188820, 37.078812, 26.780531>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.811020, 36.783909, 26.186859> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511799, 36.935940, 26.404469>,  <37.332268, 37.027157, 26.535034>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.511799, 36.935940, 26.404469>,  <37.811020, 36.783909, 26.186859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.511799, 36.935940, 26.404469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385669, 0.418151, -0.822441,
		-0.540074, -0.825041, -0.166215,
		-0.748050, 0.380075, 0.544026,
		37.287384, 37.049961, 26.567677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164848, 36.728554, 25.729694>,  <37.811020, 36.783909, 26.186859>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164848, 36.728554, 25.729694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041763, 36.994568, 26.001884>,  <36.967915, 37.154175, 26.165199>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.041763, 36.994568, 26.001884>,  <37.164848, 36.728554, 25.729694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.041763, 36.994568, 26.001884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744719, 0.276795, -0.607271,
		-0.592207, -0.693626, 0.410090,
		-0.307708, 0.665031, 0.680477,
		36.949451, 37.194077, 26.206028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.428001, 36.738899, 25.763165>,  <37.164848, 36.728554, 25.729694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.428001, 36.738899, 25.763165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532352, 37.096989, 25.907677>,  <36.594963, 37.311840, 25.994383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.532352, 37.096989, 25.907677>,  <36.428001, 36.738899, 25.763165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532352, 37.096989, 25.907677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397166, 0.440629, -0.805050,
		-0.879888, 0.066532, 0.470501,
		0.260878, 0.895220, 0.361279,
		36.610615, 37.365555, 26.016060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846390, 37.168190, 25.706726>,  <36.428001, 36.738899, 25.763165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846390, 37.168190, 25.706726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.165127, 37.409580, 25.718447>,  <36.356369, 37.554413, 25.725479>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.165127, 37.409580, 25.718447>,  <35.846390, 37.168190, 25.706726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.165127, 37.409580, 25.718447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392826, 0.554328, -0.733763,
		-0.459046, 0.573187, 0.678774,
		0.796846, 0.603471, 0.029299,
		36.404182, 37.590622, 25.727236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530533, 37.817478, 25.867165>,  <35.846390, 37.168190, 25.706726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530533, 37.817478, 25.867165> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895206, 37.880211, 25.715246>,  <36.114010, 37.917850, 25.624096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.895206, 37.880211, 25.715246>,  <35.530533, 37.817478, 25.867165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895206, 37.880211, 25.715246> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402449, 0.527324, -0.748308,
		0.082915, 0.835065, 0.543868,
		0.911680, 0.156833, -0.379794,
		36.168709, 37.927261, 25.601309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.634727, 38.507782, 25.883173>,  <35.530533, 37.817478, 25.867165>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.634727, 38.507782, 25.883173> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887569, 38.383202, 25.599358>,  <36.039272, 38.308453, 25.429068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.887569, 38.383202, 25.599358>,  <35.634727, 38.507782, 25.883173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887569, 38.383202, 25.599358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299658, 0.746184, -0.594487,
		0.714600, 0.588396, 0.378336,
		0.632102, -0.311449, -0.709540,
		36.077198, 38.289768, 25.386496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439690, 39.197701, 26.243080>,  <35.634727, 38.507782, 25.883173>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439690, 39.197701, 26.243080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.066376, 39.232506, 26.382450>,  <34.842388, 39.253387, 26.466072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.066376, 39.232506, 26.382450>,  <35.439690, 39.197701, 26.243080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066376, 39.232506, 26.382450> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308363, -0.303135, 0.901677,
		0.184076, 0.948967, 0.256082,
		-0.933289, 0.087011, 0.348426,
		34.786388, 39.258610, 26.486979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581074, 39.478695, 26.901869>,  <35.439690, 39.197701, 26.243080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581074, 39.478695, 26.901869> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226753, 39.294727, 26.926607>,  <35.014160, 39.184345, 26.941450>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.226753, 39.294727, 26.926607>,  <35.581074, 39.478695, 26.901869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.226753, 39.294727, 26.926607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261056, -0.383672, 0.885802,
		-0.383672, 0.800791, 0.459923,
		-0.885802, -0.459923, 0.061847,
		34.961014, 39.156750, 26.945162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286510, 39.680546, 27.597298>,  <35.581074, 39.478695, 26.901869>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286510, 39.680546, 27.597298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062244, 39.366085, 27.493284>,  <34.927685, 39.177406, 27.430876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.062244, 39.366085, 27.493284>,  <35.286510, 39.680546, 27.597298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062244, 39.366085, 27.493284> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057146, -0.350022, 0.934997,
		-0.826069, 0.509359, 0.241170,
		-0.560664, -0.786154, -0.260034,
		34.894047, 39.130238, 27.415274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826504, 39.595451, 28.142347>,  <35.286510, 39.680546, 27.597298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826504, 39.595451, 28.142347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811222, 39.236481, 27.966543>,  <34.802055, 39.021099, 27.861061>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.811222, 39.236481, 27.966543>,  <34.826504, 39.595451, 28.142347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811222, 39.236481, 27.966543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059477, -0.441092, 0.895489,
		-0.997498, 0.008069, 0.070227,
		-0.038202, -0.897426, -0.439508,
		34.799763, 38.967255, 27.834690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.270344, 39.178101, 28.436153>,  <34.826504, 39.595451, 28.142347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.270344, 39.178101, 28.436153> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.526360, 38.902824, 28.299486>,  <34.679970, 38.737659, 28.217485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.526360, 38.902824, 28.299486>,  <34.270344, 39.178101, 28.436153>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.526360, 38.902824, 28.299486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085242, -0.378339, 0.921734,
		-0.763596, -0.619073, -0.183490,
		0.640042, -0.688192, -0.341670,
		34.718372, 38.696365, 28.196985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.066277, 38.679020, 28.813578>,  <34.270344, 39.178101, 28.436153>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.066277, 38.679020, 28.813578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416954, 38.556656, 28.665077>,  <34.627361, 38.483238, 28.575977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416954, 38.556656, 28.665077>,  <34.066277, 38.679020, 28.813578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416954, 38.556656, 28.665077> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148677, -0.561659, 0.813900,
		-0.457499, -0.768737, -0.446921,
		0.876693, -0.305912, -0.371252,
		34.679962, 38.464882, 28.553701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055504, 37.988846, 28.725006>,  <34.066277, 38.679020, 28.813578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055504, 37.988846, 28.725006> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434578, 38.105984, 28.775827>,  <34.662022, 38.176266, 28.806320>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.434578, 38.105984, 28.775827>,  <34.055504, 37.988846, 28.725006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.434578, 38.105984, 28.775827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057191, -0.547340, 0.834954,
		0.314052, -0.784004, -0.535452,
		0.947682, 0.292842, 0.127055,
		34.718884, 38.193836, 28.813944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.399910, 37.354946, 28.799822>,  <34.055504, 37.988846, 28.725006>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.399910, 37.354946, 28.799822> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655777, 37.630726, 28.935759>,  <34.809296, 37.796192, 29.017321>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.655777, 37.630726, 28.935759>,  <34.399910, 37.354946, 28.799822>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655777, 37.630726, 28.935759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230444, -0.593798, 0.770909,
		0.733297, -0.414809, -0.538710,
		0.639665, 0.689447, 0.339840,
		34.847675, 37.837559, 29.037710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.962273, 37.077953, 28.857338>,  <34.399910, 37.354946, 28.799822>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.962273, 37.077953, 28.857338> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019283, 37.380066, 29.113222>,  <35.053490, 37.561333, 29.266752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.019283, 37.380066, 29.113222>,  <34.962273, 37.077953, 28.857338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.019283, 37.380066, 29.113222> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366603, -0.640625, 0.674686,
		0.919396, 0.138361, -0.368196,
		0.142526, 0.755285, 0.639712,
		35.062042, 37.606651, 29.305136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.601139, 37.025841, 29.083763>,  <34.962273, 37.077953, 28.857338>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.601139, 37.025841, 29.083763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432789, 37.256649, 29.363737>,  <35.331779, 37.395134, 29.531721>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.432789, 37.256649, 29.363737>,  <35.601139, 37.025841, 29.083763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432789, 37.256649, 29.363737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399454, -0.574869, 0.714117,
		0.814433, 0.580145, 0.011454,
		-0.420875, 0.577025, 0.699933,
		35.306526, 37.429756, 29.573717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.135075, 37.057358, 29.702425>,  <35.601139, 37.025841, 29.083763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.135075, 37.057358, 29.702425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807346, 37.221146, 29.862944>,  <35.610710, 37.319420, 29.959255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.807346, 37.221146, 29.862944>,  <36.135075, 37.057358, 29.702425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807346, 37.221146, 29.862944> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244570, -0.383446, 0.890592,
		0.518548, 0.827830, 0.214023,
		-0.819325, 0.409471, 0.401298,
		35.561550, 37.343987, 29.983334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.386147, 37.517582, 30.218992>,  <36.135075, 37.057358, 29.702425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.386147, 37.517582, 30.218992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.006001, 37.431160, 30.308554>,  <35.777912, 37.379307, 30.362291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.006001, 37.431160, 30.308554>,  <36.386147, 37.517582, 30.218992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.006001, 37.431160, 30.308554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292488, -0.374868, 0.879730,
		-0.106139, 0.901550, 0.419455,
		-0.950361, -0.216059, 0.223904,
		35.720894, 37.366341, 30.375725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.291538, 41.695728, 23.748695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086315, 41.369438, 23.855551>,  <32.963181, 41.173664, 23.919664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086315, 41.369438, 23.855551>,  <33.291538, 41.695728, 23.748695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086315, 41.369438, 23.855551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657104, -0.173023, 0.733674,
		-0.552256, 0.551955, 0.624787,
		-0.513058, -0.815726, 0.267139,
		32.932396, 41.124722, 23.935692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393276, 41.716187, 24.462431>,  <33.291538, 41.695728, 23.748695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393276, 41.716187, 24.462431> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272598, 41.349075, 24.359158>,  <33.200191, 41.128807, 24.297194>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.272598, 41.349075, 24.359158>,  <33.393276, 41.716187, 24.462431>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.272598, 41.349075, 24.359158> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638105, -0.395583, 0.660557,
		-0.708380, 0.034536, 0.704986,
		-0.301694, -0.917781, -0.258186,
		33.182091, 41.073742, 24.281702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.325390, 41.447136, 25.096313>,  <33.393276, 41.716187, 24.462431>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.325390, 41.447136, 25.096313> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317459, 41.123417, 24.861486>,  <33.312702, 40.929188, 24.720591>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317459, 41.123417, 24.861486>,  <33.325390, 41.447136, 25.096313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317459, 41.123417, 24.861486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426494, -0.537924, 0.727146,
		-0.904273, -0.235962, 0.355826,
		-0.019828, -0.809296, -0.587066,
		33.311512, 40.880627, 24.685366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932789, 40.869099, 25.391710>,  <33.325390, 41.447136, 25.096313>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932789, 40.869099, 25.391710> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196037, 40.713013, 25.134148>,  <33.353985, 40.619362, 24.979610>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196037, 40.713013, 25.134148>,  <32.932789, 40.869099, 25.391710>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.196037, 40.713013, 25.134148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447171, -0.485469, 0.751238,
		-0.605740, -0.782338, -0.145003,
		0.658116, -0.390214, -0.643907,
		33.393471, 40.595947, 24.940975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.917259, 40.133381, 25.420078>,  <32.932789, 40.869099, 25.391710>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.917259, 40.133381, 25.420078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274635, 40.190491, 25.249722>,  <33.489059, 40.224758, 25.147507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.274635, 40.190491, 25.249722>,  <32.917259, 40.133381, 25.420078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.274635, 40.190491, 25.249722> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435960, -0.504023, 0.745587,
		-0.108206, -0.851807, -0.512559,
		0.893437, 0.142778, -0.425892,
		33.542667, 40.233326, 25.121954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055935, 39.450527, 25.399225>,  <32.917259, 40.133381, 25.420078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055935, 39.450527, 25.399225> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366119, 39.700623, 25.364044>,  <33.552231, 39.850681, 25.342936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366119, 39.700623, 25.364044>,  <33.055935, 39.450527, 25.399225>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.366119, 39.700623, 25.364044> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473283, -0.483397, 0.736431,
		0.417930, -0.612700, -0.670771,
		0.775459, 0.625241, -0.087954,
		33.598759, 39.888195, 25.337658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620941, 38.962845, 25.328148>,  <33.055935, 39.450527, 25.399225>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620941, 38.962845, 25.328148> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809071, 39.301579, 25.427475>,  <33.921947, 39.504818, 25.487072>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809071, 39.301579, 25.427475>,  <33.620941, 38.962845, 25.328148>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.809071, 39.301579, 25.427475> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588229, -0.510587, 0.627126,
		0.657862, -0.148884, -0.738276,
		0.470323, 0.846838, 0.248318,
		33.950169, 39.555630, 25.501970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325169, 38.841278, 25.448742>,  <33.620941, 38.962845, 25.328148>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325169, 38.841278, 25.448742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269226, 39.176239, 25.660099>,  <34.235661, 39.377216, 25.786913>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.269226, 39.176239, 25.660099>,  <34.325169, 38.841278, 25.448742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.269226, 39.176239, 25.660099> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517449, -0.393165, 0.760044,
		0.844208, 0.379711, -0.378327,
		-0.139852, 0.837401, 0.528395,
		34.227272, 39.427460, 25.818617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.975304, 39.020935, 25.675251>,  <34.325169, 38.841278, 25.448742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.975304, 39.020935, 25.675251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707405, 39.191322, 25.918560>,  <34.546665, 39.293556, 26.064545>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.707405, 39.191322, 25.918560>,  <34.975304, 39.020935, 25.675251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.707405, 39.191322, 25.918560> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468462, -0.393200, 0.791162,
		0.576181, 0.814829, 0.063794,
		-0.669746, 0.425967, 0.608270,
		34.506481, 39.319111, 26.101042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683414, 39.095730, 25.383791>,  <34.975304, 39.020935, 25.675251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683414, 39.095730, 25.383791> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855591, 38.812473, 25.159914>,  <35.958897, 38.642517, 25.025589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855591, 38.812473, 25.159914>,  <35.683414, 39.095730, 25.383791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.855591, 38.812473, 25.159914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171163, 0.544786, -0.820921,
		0.886241, 0.449157, 0.113291,
		0.430441, -0.708143, -0.559691,
		35.984722, 38.600029, 24.992006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062366, 39.380337, 24.895130>,  <35.683414, 39.095730, 25.383791>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062366, 39.380337, 24.895130> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997486, 39.013195, 24.750225>,  <35.958557, 38.792912, 24.663282>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.997486, 39.013195, 24.750225>,  <36.062366, 39.380337, 24.895130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.997486, 39.013195, 24.750225> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228527, 0.392084, -0.891092,
		0.959931, -0.061745, -0.273349,
		-0.162196, -0.917855, -0.362263,
		35.948826, 38.737839, 24.641546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.313290, 39.350132, 24.128078>,  <36.062366, 39.380337, 24.895130>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.313290, 39.350132, 24.128078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051353, 39.051682, 24.176214>,  <35.894192, 38.872612, 24.205095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.051353, 39.051682, 24.176214>,  <36.313290, 39.350132, 24.128078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.051353, 39.051682, 24.176214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339685, 0.148332, -0.928769,
		0.675129, -0.649071, -0.350582,
		-0.654839, -0.746127, 0.120337,
		35.854900, 38.827843, 24.212315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383652, 39.065601, 23.487627>,  <36.313290, 39.350132, 24.128078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383652, 39.065601, 23.487627> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026146, 38.934235, 23.609819>,  <35.811642, 38.855415, 23.683136>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026146, 38.934235, 23.609819>,  <36.383652, 39.065601, 23.487627>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.026146, 38.934235, 23.609819> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382886, 0.203915, -0.901009,
		0.233628, -0.922254, -0.308004,
		-0.893765, -0.328431, 0.305478,
		35.758015, 38.835709, 23.701464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.150467, 38.726788, 22.900959>,  <36.383652, 39.065601, 23.487627>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.150467, 38.726788, 22.900959> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816124, 38.767899, 23.116653>,  <35.615517, 38.792564, 23.246071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.816124, 38.767899, 23.116653>,  <36.150467, 38.726788, 22.900959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816124, 38.767899, 23.116653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530749, 0.099507, -0.841667,
		-0.140165, -0.989714, -0.028623,
		-0.835858, 0.102780, 0.539237,
		35.565365, 38.798733, 23.278425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.730442, 38.146900, 22.672726>,  <36.150467, 38.726788, 22.900959>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.730442, 38.146900, 22.672726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530949, 38.457355, 22.827059>,  <35.411251, 38.643631, 22.919659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530949, 38.457355, 22.827059>,  <35.730442, 38.146900, 22.672726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530949, 38.457355, 22.827059> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637245, -0.026604, -0.770202,
		-0.587522, -0.629995, 0.507862,
		-0.498735, 0.776143, 0.385831,
		35.381329, 38.690197, 22.942808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.052288, 38.004101, 22.543423>,  <35.730442, 38.146900, 22.672726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.052288, 38.004101, 22.543423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991882, 38.383625, 22.654383>,  <34.955639, 38.611340, 22.720959>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991882, 38.383625, 22.654383>,  <35.052288, 38.004101, 22.543423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991882, 38.383625, 22.654383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.813034, 0.040407, -0.580813,
		-0.562291, -0.313243, 0.765315,
		-0.151012, 0.948813, 0.277398,
		34.946579, 38.668270, 22.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.317997, 38.155926, 22.385849>,  <35.052288, 38.004101, 22.543423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.317997, 38.155926, 22.385849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470669, 38.518841, 22.456451>,  <34.562271, 38.736591, 22.498812>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.470669, 38.518841, 22.456451>,  <34.317997, 38.155926, 22.385849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.470669, 38.518841, 22.456451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620617, 0.393073, -0.678475,
		-0.684950, 0.149418, 0.713105,
		0.381678, 0.907286, 0.176504,
		34.585171, 38.791027, 22.509403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.687569, 38.542229, 22.364977>,  <34.317997, 38.155926, 22.385849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.687569, 38.542229, 22.364977> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004421, 38.775959, 22.294447>,  <34.194534, 38.916199, 22.252129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004421, 38.775959, 22.294447>,  <33.687569, 38.542229, 22.364977>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004421, 38.775959, 22.294447> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524272, 0.503486, -0.686761,
		-0.312515, 0.636448, 0.705173,
		0.792132, 0.584326, -0.176325,
		34.242062, 38.951256, 22.241550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.402618, 39.248127, 22.278311>,  <33.687569, 38.542229, 22.364977>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.402618, 39.248127, 22.278311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752045, 39.256489, 22.083811>,  <33.961700, 39.261505, 21.967110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752045, 39.256489, 22.083811>,  <33.402618, 39.248127, 22.278311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752045, 39.256489, 22.083811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432327, 0.492209, -0.755529,
		0.223541, 0.870226, 0.439018,
		0.873569, 0.020908, -0.486251,
		34.014114, 39.262760, 21.937935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.590763, 39.959354, 22.026182>,  <33.402618, 39.248127, 22.278311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.590763, 39.959354, 22.026182> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786907, 39.694927, 21.799013>,  <33.904594, 39.536270, 21.662712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786907, 39.694927, 21.799013>,  <33.590763, 39.959354, 22.026182>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.786907, 39.694927, 21.799013> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410629, 0.399531, -0.819609,
		0.768719, 0.635111, -0.075539,
		0.490362, -0.661067, -0.567922,
		33.934017, 39.496609, 21.628637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.807831, 40.354668, 21.436852>,  <33.590763, 39.959354, 22.026182>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.807831, 40.354668, 21.436852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847576, 39.967770, 21.343414>,  <33.871422, 39.735630, 21.287352>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847576, 39.967770, 21.343414>,  <33.807831, 40.354668, 21.436852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.847576, 39.967770, 21.343414> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327046, 0.189968, -0.925718,
		0.939770, 0.168379, -0.297457,
		0.099364, -0.967244, -0.233594,
		33.877384, 39.677597, 21.273336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.283516, 40.359028, 20.919729>,  <33.807831, 40.354668, 21.436852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.283516, 40.359028, 20.919729> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071365, 40.022202, 20.880493>,  <33.944077, 39.820107, 20.856951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.071365, 40.022202, 20.880493>,  <34.283516, 40.359028, 20.919729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.071365, 40.022202, 20.880493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083305, 0.166912, -0.982446,
		0.843659, -0.512895, -0.158675,
		-0.530377, -0.842068, -0.098090,
		33.912251, 39.769581, 20.851067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491470, 40.069004, 20.240406>,  <34.283516, 40.359028, 20.919729>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491470, 40.069004, 20.240406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144768, 39.898605, 20.344143>,  <33.936745, 39.796364, 20.406385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144768, 39.898605, 20.344143>,  <34.491470, 40.069004, 20.240406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.144768, 39.898605, 20.344143> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364330, 0.185723, -0.912563,
		0.340588, -0.885454, -0.316182,
		-0.866755, -0.426002, 0.259342,
		33.884743, 39.770805, 20.421946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<27.989098, 37.490295, 22.975210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.266413, 37.777920, 22.994381>,  <28.432802, 37.950497, 23.005884>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.266413, 37.777920, 22.994381>,  <27.989098, 37.490295, 22.975210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.266413, 37.777920, 22.994381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358537, -0.401847, 0.842597,
		0.625142, -0.566979, -0.536407,
		0.693288, 0.719065, 0.047928,
		28.474400, 37.993641, 23.008759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738838, 37.229565, 22.925529>,  <27.989098, 37.490295, 22.975210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738838, 37.229565, 22.925529> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.727005, 37.580284, 23.117510>,  <28.719904, 37.790714, 23.232698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.727005, 37.580284, 23.117510>,  <28.738838, 37.229565, 22.925529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.727005, 37.580284, 23.117510> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559982, -0.383200, 0.734560,
		0.827977, 0.290496, -0.479653,
		-0.029584, 0.876795, 0.479953,
		28.718130, 37.843323, 23.261496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392725, 37.377983, 23.078463>,  <28.738838, 37.229565, 22.925529>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392725, 37.377983, 23.078463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.184334, 37.606750, 23.331915>,  <29.059299, 37.744011, 23.483986>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.184334, 37.606750, 23.331915>,  <29.392725, 37.377983, 23.078463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184334, 37.606750, 23.331915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561202, -0.329821, 0.759125,
		0.643143, 0.751084, -0.149132,
		-0.520980, 0.571919, 0.633631,
		29.028040, 37.778328, 23.522005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.938808, 37.504913, 23.559607>,  <29.392725, 37.377983, 23.078463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.938808, 37.504913, 23.559607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.585154, 37.586636, 23.727684>,  <29.372961, 37.635670, 23.828529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.585154, 37.586636, 23.727684>,  <29.938808, 37.504913, 23.559607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.585154, 37.586636, 23.727684> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312976, -0.408774, 0.857292,
		0.346912, 0.889474, 0.297470,
		-0.884137, 0.204304, 0.420193,
		29.319912, 37.647926, 23.853743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.084494, 37.834843, 24.290981>,  <29.938808, 37.504913, 23.559607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.084494, 37.834843, 24.290981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.754877, 37.613285, 24.243387>,  <29.557108, 37.480350, 24.214830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.754877, 37.613285, 24.243387>,  <30.084494, 37.834843, 24.290981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754877, 37.613285, 24.243387> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270381, -0.569070, 0.776565,
		-0.497845, 0.607751, 0.618699,
		-0.824042, -0.553893, -0.118984,
		29.507664, 37.447117, 24.207691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939987, 37.707447, 24.915028>,  <30.084494, 37.834843, 24.290981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939987, 37.707447, 24.915028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664358, 37.479908, 24.735430>,  <29.498981, 37.343384, 24.627670>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.664358, 37.479908, 24.735430>,  <29.939987, 37.707447, 24.915028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.664358, 37.479908, 24.735430> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067876, -0.667503, 0.741507,
		-0.721506, 0.480476, 0.498569,
		-0.689073, -0.568843, -0.448995,
		29.457636, 37.309254, 24.600731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595692, 37.546120, 25.471212>,  <29.939987, 37.707447, 24.915028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595692, 37.546120, 25.471212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.524878, 37.282425, 25.178892>,  <29.482389, 37.124207, 25.003500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.524878, 37.282425, 25.178892>,  <29.595692, 37.546120, 25.471212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.524878, 37.282425, 25.178892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160429, -0.751926, 0.639430,
		-0.971042, -0.004041, 0.238876,
		-0.177033, -0.659236, -0.730799,
		29.471767, 37.084656, 24.959652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068027, 37.270008, 25.769135>,  <29.595692, 37.546120, 25.471212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068027, 37.270008, 25.769135> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.212141, 37.008934, 25.502542>,  <29.298609, 36.852287, 25.342587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.212141, 37.008934, 25.502542>,  <29.068027, 37.270008, 25.769135>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.212141, 37.008934, 25.502542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133049, -0.743111, 0.655809,
		-0.923306, -0.147603, -0.354569,
		0.360283, -0.652687, -0.666480,
		29.320227, 36.813129, 25.302599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.707392, 36.624321, 25.940451>,  <29.068027, 37.270008, 25.769135>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.707392, 36.624321, 25.940451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.026043, 36.514572, 25.725004>,  <29.217234, 36.448723, 25.595736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.026043, 36.514572, 25.725004>,  <28.707392, 36.624321, 25.940451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026043, 36.514572, 25.725004> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094692, -0.823409, 0.559491,
		-0.597008, -0.496709, -0.629970,
		0.796628, -0.274367, -0.538617,
		29.265032, 36.432262, 25.563419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.585533, 35.867790, 25.931330>,  <28.707392, 36.624321, 25.940451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.585533, 35.867790, 25.931330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.969923, 35.932247, 25.841391>,  <29.200558, 35.970921, 25.787428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.969923, 35.932247, 25.841391>,  <28.585533, 35.867790, 25.931330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.969923, 35.932247, 25.841391> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259578, -0.806263, 0.531563,
		-0.095627, -0.569185, -0.816630,
		0.960976, 0.161147, -0.224848,
		29.258215, 35.980591, 25.773935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.901327, 35.133842, 25.876673>,  <28.585533, 35.867790, 25.931330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.901327, 35.133842, 25.876673> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.220484, 35.373363, 25.904408>,  <29.411978, 35.517075, 25.921049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.220484, 35.373363, 25.904408>,  <28.901327, 35.133842, 25.876673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.220484, 35.373363, 25.904408> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464238, -0.683777, 0.562967,
		0.384516, -0.416997, -0.823566,
		0.797891, 0.598800, 0.069337,
		29.459850, 35.553005, 25.925209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.537039, 34.822155, 25.645014>,  <28.901327, 35.133842, 25.876673>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.537039, 34.822155, 25.645014> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.669628, 35.105732, 25.894022>,  <29.749182, 35.275879, 26.043427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.669628, 35.105732, 25.894022>,  <29.537039, 34.822155, 25.645014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.669628, 35.105732, 25.894022> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440595, -0.699773, 0.562311,
		0.834267, 0.087886, -0.544312,
		0.331476, 0.708938, 0.622520,
		29.769072, 35.318413, 26.080778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212912, 34.598347, 25.845570>,  <29.537039, 34.822155, 25.645014>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212912, 34.598347, 25.845570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.139870, 34.872364, 26.127666>,  <30.096045, 35.036774, 26.296925>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.139870, 34.872364, 26.127666>,  <30.212912, 34.598347, 25.845570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.139870, 34.872364, 26.127666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562823, -0.515314, 0.646283,
		0.806155, 0.514941, -0.291461,
		-0.182604, 0.685045, 0.705244,
		30.085089, 35.077877, 26.339239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.817272, 34.710289, 26.137470>,  <30.212912, 34.598347, 25.845570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.817272, 34.710289, 26.137470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.563349, 34.837971, 26.418930>,  <30.410994, 34.914577, 26.587807>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.563349, 34.837971, 26.418930>,  <30.817272, 34.710289, 26.137470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.563349, 34.837971, 26.418930> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545016, -0.460541, 0.700614,
		0.547698, 0.828258, 0.118386,
		-0.634811, 0.319202, 0.703651,
		30.372906, 34.933731, 26.630026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340181, 34.934422, 25.814512>,  <30.817272, 34.710289, 26.137470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340181, 34.934422, 25.814512> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665277, 34.820267, 25.611336>,  <31.860336, 34.751774, 25.489429>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.665277, 34.820267, 25.611336>,  <31.340181, 34.934422, 25.814512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.665277, 34.820267, 25.611336> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394526, 0.371937, -0.840245,
		0.428720, 0.883298, 0.189695,
		0.812741, -0.285390, -0.507941,
		31.909100, 34.734650, 25.458954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.458229, 35.454327, 25.296133>,  <31.340181, 34.934422, 25.814512>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.458229, 35.454327, 25.296133> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 35.172634, 25.153486>,  <31.851131, 35.003620, 25.067898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.703793, 35.172634, 25.153486>,  <31.458229, 35.454327, 25.296133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703793, 35.172634, 25.153486> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179455, 0.315428, -0.931827,
		0.768707, 0.636054, 0.067266,
		0.613909, -0.704231, -0.356615,
		31.887966, 34.961365, 25.046501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020016, 35.763218, 24.763968>,  <31.458229, 35.454327, 25.296133>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020016, 35.763218, 24.763968> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.960096, 35.377140, 24.678209>,  <31.924145, 35.145493, 24.626755>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.960096, 35.377140, 24.678209>,  <32.020016, 35.763218, 24.763968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960096, 35.377140, 24.678209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181001, 0.239949, -0.953762,
		0.972007, -0.104070, -0.210645,
		-0.149802, -0.965191, -0.214396,
		31.915155, 35.087582, 24.613890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.380898, 35.635944, 24.167376>,  <32.020016, 35.763218, 24.763968>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.380898, 35.635944, 24.167376> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126942, 35.327084, 24.177942>,  <31.974567, 35.141766, 24.184282>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.126942, 35.327084, 24.177942>,  <32.380898, 35.635944, 24.167376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.126942, 35.327084, 24.177942> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217643, 0.145940, -0.965056,
		0.741315, -0.618452, -0.260709,
		-0.634889, -0.772152, 0.026414,
		31.936476, 35.095440, 24.185867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.590015, 35.096516, 23.602062>,  <32.380898, 35.635944, 24.167376>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.590015, 35.096516, 23.602062> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203793, 35.098682, 23.706110>,  <31.972057, 35.099983, 23.768539>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.203793, 35.098682, 23.706110>,  <32.590015, 35.096516, 23.602062>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.203793, 35.098682, 23.706110> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251560, 0.235736, -0.938694,
		-0.066403, -0.971802, -0.226255,
		-0.965561, 0.005416, 0.260121,
		31.914124, 35.100307, 23.784145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294060, 34.800064, 23.072271>,  <32.590015, 35.096516, 23.602062>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294060, 34.800064, 23.072271> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987383, 34.963799, 23.270111>,  <31.803377, 35.062038, 23.388815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987383, 34.963799, 23.270111>,  <32.294060, 34.800064, 23.072271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987383, 34.963799, 23.270111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396503, 0.304012, -0.866234,
		-0.504946, -0.860244, -0.070780,
		-0.766691, 0.409337, 0.494599,
		31.757376, 35.086601, 23.418491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643890, 34.589428, 22.703907>,  <32.294060, 34.800064, 23.072271>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643890, 34.589428, 22.703907> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.523825, 34.900639, 22.924658>,  <31.451786, 35.087364, 23.057108>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.523825, 34.900639, 22.924658>,  <31.643890, 34.589428, 22.703907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523825, 34.900639, 22.924658> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579875, 0.310547, -0.753197,
		-0.757395, -0.546102, 0.357946,
		-0.300164, 0.778031, 0.551878,
		31.433775, 35.134048, 23.090221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.862217, 34.674267, 22.600687>,  <31.643890, 34.589428, 22.703907>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.862217, 34.674267, 22.600687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.975056, 35.025955, 22.754253>,  <31.042759, 35.236969, 22.846394>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.975056, 35.025955, 22.754253>,  <30.862217, 34.674267, 22.600687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.975056, 35.025955, 22.754253> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.563758, 0.475704, -0.675191,
		-0.776273, -0.025967, 0.629862,
		0.282096, 0.879222, 0.383915,
		31.059685, 35.289722, 22.869429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.218590, 34.964432, 22.759758>,  <30.862217, 34.674267, 22.600687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.218590, 34.964432, 22.759758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.476406, 35.269993, 22.747009>,  <30.631096, 35.453331, 22.739361>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.476406, 35.269993, 22.747009>,  <30.218590, 34.964432, 22.759758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476406, 35.269993, 22.747009> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510222, 0.398703, -0.762043,
		-0.569422, 0.507429, 0.646741,
		0.644541, 0.763906, -0.031871,
		30.669767, 35.499165, 22.737448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812433, 35.562717, 22.662600>,  <30.218590, 34.964432, 22.759758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812433, 35.562717, 22.662600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.165329, 35.702324, 22.536207>,  <30.377066, 35.786087, 22.460373>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.165329, 35.702324, 22.536207>,  <29.812433, 35.562717, 22.662600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165329, 35.702324, 22.536207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461320, 0.506810, -0.728236,
		-0.094026, 0.788245, 0.608136,
		0.882238, 0.349018, -0.315980,
		30.430000, 35.807030, 22.441414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.800613, 36.379429, 22.568386>,  <29.812433, 35.562717, 22.662600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.800613, 36.379429, 22.568386> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.061563, 36.193501, 22.328938>,  <30.218134, 36.081944, 22.185268>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.061563, 36.193501, 22.328938>,  <29.800613, 36.379429, 22.568386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.061563, 36.193501, 22.328938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354263, 0.511230, -0.783034,
		0.670002, 0.722903, 0.168846,
		0.652377, -0.464818, -0.598623,
		30.257277, 36.054054, 22.149351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.184551, 36.887150, 22.244427>,  <29.800613, 36.379429, 22.568386>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.184551, 36.887150, 22.244427> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.233320, 36.565941, 22.011087>,  <30.262583, 36.373215, 21.871084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.233320, 36.565941, 22.011087>,  <30.184551, 36.887150, 22.244427>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.233320, 36.565941, 22.011087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336751, 0.519402, -0.785379,
		0.933667, 0.292200, -0.207090,
		0.121925, -0.803020, -0.583347,
		30.269897, 36.325035, 21.836084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.674690, 37.094654, 21.613579>,  <30.184551, 36.887150, 22.244427>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.674690, 37.094654, 21.613579> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459219, 36.770584, 21.521107>,  <30.329937, 36.576141, 21.465624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.459219, 36.770584, 21.521107>,  <30.674690, 37.094654, 21.613579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459219, 36.770584, 21.521107> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324918, 0.452938, -0.830226,
		0.777339, -0.372108, -0.507227,
		-0.538676, -0.810175, -0.231182,
		30.297617, 36.527531, 21.451752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.803556, 36.955738, 20.887629>,  <30.674690, 37.094654, 21.613579>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.803556, 36.955738, 20.887629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.483431, 36.728706, 20.964933>,  <30.291355, 36.592487, 21.011316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.483431, 36.728706, 20.964933>,  <30.803556, 36.955738, 20.887629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483431, 36.728706, 20.964933> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477252, 0.407914, -0.778355,
		0.362948, -0.715161, -0.597338,
		-0.800312, -0.567583, 0.193261,
		30.243338, 36.558430, 21.022911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.481005, 36.673569, 20.570425>,  <30.803556, 36.955738, 20.887629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.481005, 36.673569, 20.570425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.761137, 36.616299, 20.290699>,  <31.929216, 36.581936, 20.122864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.761137, 36.616299, 20.290699>,  <31.481005, 36.673569, 20.570425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761137, 36.616299, 20.290699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692695, -0.100261, 0.714227,
		-0.172375, -0.984606, 0.028962,
		0.700328, -0.143177, -0.699314,
		31.971235, 36.573345, 20.080904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833412, 36.129128, 20.735680>,  <31.481005, 36.673569, 20.570425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833412, 36.129128, 20.735680> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113552, 36.305462, 20.511120>,  <32.281635, 36.411263, 20.376383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.113552, 36.305462, 20.511120>,  <31.833412, 36.129128, 20.735680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113552, 36.305462, 20.511120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671507, -0.140200, 0.727614,
		0.242053, -0.886568, -0.394217,
		0.700349, 0.440841, -0.561401,
		32.323658, 36.437714, 20.342699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394157, 35.674587, 20.654963>,  <31.833412, 36.129128, 20.735680>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394157, 35.674587, 20.654963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.560547, 36.026093, 20.561365>,  <32.660381, 36.236996, 20.505207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.560547, 36.026093, 20.561365>,  <32.394157, 35.674587, 20.654963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.560547, 36.026093, 20.561365> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723363, -0.163806, 0.670756,
		0.551104, -0.448275, -0.703800,
		0.415969, 0.878759, -0.233992,
		32.685337, 36.289719, 20.491167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.023529, 35.546745, 20.811201>,  <32.394157, 35.674587, 20.654963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.023529, 35.546745, 20.811201> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.014797, 35.945698, 20.783646>,  <33.009560, 36.185070, 20.767113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.014797, 35.945698, 20.783646>,  <33.023529, 35.546745, 20.811201>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014797, 35.945698, 20.783646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710179, 0.063969, 0.701109,
		0.703683, -0.033621, -0.709718,
		-0.021828, 0.997386, -0.068891,
		33.008247, 36.244915, 20.762978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.706573, 35.736473, 20.686558>,  <33.023529, 35.546745, 20.811201>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.706573, 35.736473, 20.686558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.523186, 36.058178, 20.837807>,  <33.413155, 36.251202, 20.928556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.523186, 36.058178, 20.837807>,  <33.706573, 35.736473, 20.686558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.523186, 36.058178, 20.837807> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750266, 0.122211, 0.649743,
		0.476350, 0.581578, -0.659437,
		-0.458467, 0.804258, 0.378123,
		33.385647, 36.299454, 20.951244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277687, 36.307014, 20.801424>,  <33.706573, 35.736473, 20.686558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277687, 36.307014, 20.801424> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967255, 36.400204, 21.035833>,  <33.780994, 36.456120, 21.176479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.967255, 36.400204, 21.035833>,  <34.277687, 36.307014, 20.801424>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967255, 36.400204, 21.035833> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628935, 0.217696, 0.746357,
		0.046308, 0.947803, -0.315476,
		-0.776078, 0.232976, 0.586025,
		33.734432, 36.470097, 21.211641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.569702, 36.848877, 21.192757>,  <34.277687, 36.307014, 20.801424>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.569702, 36.848877, 21.192757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250992, 36.747765, 21.412304>,  <34.059765, 36.687099, 21.544033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.250992, 36.747765, 21.412304>,  <34.569702, 36.848877, 21.192757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.250992, 36.747765, 21.412304> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558455, 0.038939, 0.828620,
		-0.230830, 0.966740, 0.110139,
		-0.796772, -0.252778, 0.548869,
		34.011959, 36.671932, 21.576965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637501, 37.197437, 21.789776>,  <34.569702, 36.848877, 21.192757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637501, 37.197437, 21.789776> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371941, 36.922512, 21.907646>,  <34.212605, 36.757557, 21.978369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.371941, 36.922512, 21.907646>,  <34.637501, 37.197437, 21.789776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.371941, 36.922512, 21.907646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357276, 0.054648, 0.932399,
		-0.656952, 0.724304, 0.209279,
		-0.663904, -0.687311, 0.294677,
		34.172768, 36.716320, 21.996050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.482155, 37.445175, 22.416311>,  <34.637501, 37.197437, 21.789776>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.482155, 37.445175, 22.416311> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.383987, 37.057468, 22.423069>,  <34.325089, 36.824844, 22.427124>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.383987, 37.057468, 22.423069>,  <34.482155, 37.445175, 22.416311>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.383987, 37.057468, 22.423069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325829, -0.066061, 0.943118,
		-0.913021, 0.236959, 0.332029,
		-0.245414, -0.969271, 0.016893,
		34.310364, 36.766685, 22.428137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.221077, 37.348526, 23.118774>,  <34.482155, 37.445175, 22.416311>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.221077, 37.348526, 23.118774> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290325, 36.976093, 22.990332>,  <34.331875, 36.752632, 22.913265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.290325, 36.976093, 22.990332>,  <34.221077, 37.348526, 23.118774>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.290325, 36.976093, 22.990332> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253446, -0.272935, 0.928047,
		-0.951733, -0.242046, 0.188730,
		0.173119, -0.931086, -0.321106,
		34.342262, 36.696766, 22.893999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863438, 36.829716, 23.566711>,  <34.221077, 37.348526, 23.118774>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863438, 36.829716, 23.566711> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.176914, 36.639549, 23.406809>,  <34.365002, 36.525448, 23.310867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.176914, 36.639549, 23.406809>,  <33.863438, 36.829716, 23.566711>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.176914, 36.639549, 23.406809> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232214, -0.372666, 0.898441,
		-0.576110, -0.796930, -0.181657,
		0.783692, -0.475417, -0.399755,
		34.412022, 36.496925, 23.286882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840824, 36.184704, 23.783686>,  <33.863438, 36.829716, 23.566711>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840824, 36.184704, 23.783686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224258, 36.224625, 23.676985>,  <34.454319, 36.248577, 23.612965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.224258, 36.224625, 23.676985>,  <33.840824, 36.184704, 23.783686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224258, 36.224625, 23.676985> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278967, -0.517750, 0.808772,
		-0.057398, -0.849692, -0.524147,
		0.958583, 0.099798, -0.266754,
		34.511833, 36.254562, 23.596958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.134827, 35.510120, 24.026754>,  <33.840824, 36.184704, 23.783686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.134827, 35.510120, 24.026754> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442074, 35.755665, 23.953905>,  <34.626423, 35.902992, 23.910196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.442074, 35.755665, 23.953905>,  <34.134827, 35.510120, 24.026754>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442074, 35.755665, 23.953905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432900, -0.288281, 0.854103,
		0.471801, -0.734890, -0.487175,
		0.768116, 0.613865, -0.182123,
		34.672508, 35.939823, 23.899269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.617428, 35.105350, 24.108456>,  <34.134827, 35.510120, 24.026754>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.617428, 35.105350, 24.108456> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.777729, 35.463776, 24.184845>,  <34.873909, 35.678829, 24.230679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.777729, 35.463776, 24.184845>,  <34.617428, 35.105350, 24.108456>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.777729, 35.463776, 24.184845> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353412, -0.343505, 0.870117,
		0.845278, -0.281211, -0.454340,
		0.400755, 0.896060, 0.190974,
		34.897957, 35.732594, 24.242138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.323601, 39.584435, 19.660883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968281, 39.628536, 19.839216>,  <33.755089, 39.654995, 19.946217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.968281, 39.628536, 19.839216>,  <34.323601, 39.584435, 19.660883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.968281, 39.628536, 19.839216> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454240, -0.067738, -0.888300,
		-0.067738, -0.991593, 0.110252,
		0.888300, -0.110252, -0.445833,
		33.701790, 39.661613, 19.972965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.809589, 39.166775, 19.272861>,  <34.323601, 39.584435, 19.660883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.809589, 39.166775, 19.272861> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565235, 39.396267, 19.491091>,  <33.418621, 39.533962, 19.622028>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.565235, 39.396267, 19.491091>,  <33.809589, 39.166775, 19.272861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565235, 39.396267, 19.491091> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580975, 0.143286, -0.801210,
		-0.537850, -0.806414, 0.245790,
		-0.610889, 0.573729, 0.545573,
		33.381969, 39.568386, 19.654762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120148, 38.870590, 19.250727>,  <33.809589, 39.166775, 19.272861>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120148, 38.870590, 19.250727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098644, 39.262325, 19.328711>,  <33.085743, 39.497368, 19.375500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.098644, 39.262325, 19.328711>,  <33.120148, 38.870590, 19.250727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.098644, 39.262325, 19.328711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541298, 0.135486, -0.829843,
		-0.839111, -0.150141, 0.522830,
		-0.053757, 0.979337, 0.194959,
		33.082516, 39.556126, 19.387197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423004, 39.062569, 19.245243>,  <33.120148, 38.870590, 19.250727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.423004, 39.062569, 19.245243> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595165, 39.415245, 19.167913>,  <32.698460, 39.626850, 19.121515>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.595165, 39.415245, 19.167913>,  <32.423004, 39.062569, 19.245243>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.595165, 39.415245, 19.167913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611592, 0.127337, -0.780858,
		-0.663861, 0.454315, 0.594043,
		0.430399, 0.881693, -0.193322,
		32.724285, 39.679752, 19.109917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.859812, 39.520046, 18.972851>,  <32.423004, 39.062569, 19.245243>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.859812, 39.520046, 18.972851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.178295, 39.731556, 18.855240>,  <32.369385, 39.858459, 18.784674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.178295, 39.731556, 18.855240>,  <31.859812, 39.520046, 18.972851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.178295, 39.731556, 18.855240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503341, 0.309263, -0.806848,
		-0.335708, 0.790415, 0.512391,
		0.796209, 0.528773, -0.294026,
		32.417156, 39.890186, 18.767033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707853, 40.221584, 18.851927>,  <31.859812, 39.520046, 18.972851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707853, 40.221584, 18.851927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004547, 40.135750, 18.597752>,  <32.182564, 40.084248, 18.445246>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.004547, 40.135750, 18.597752>,  <31.707853, 40.221584, 18.851927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004547, 40.135750, 18.597752> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509131, 0.436593, -0.741736,
		0.436593, 0.873693, 0.214585,
		0.741736, -0.214585, -0.635438,
		32.227066, 40.071373, 18.407120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663349, 40.851669, 18.310354>,  <31.707853, 40.221584, 18.851927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663349, 40.851669, 18.310354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897146, 40.576008, 18.139036>,  <32.037426, 40.410610, 18.036245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.897146, 40.576008, 18.139036>,  <31.663349, 40.851669, 18.310354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897146, 40.576008, 18.139036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462434, 0.150803, -0.873735,
		0.666727, 0.708749, -0.230546,
		0.584491, -0.689155, -0.428294,
		32.072495, 40.369263, 18.010548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.924139, 41.147293, 17.639446>,  <31.663349, 40.851669, 18.310354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.924139, 41.147293, 17.639446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961578, 40.750092, 17.610640>,  <31.984041, 40.511772, 17.593355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.961578, 40.750092, 17.610640>,  <31.924139, 41.147293, 17.639446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.961578, 40.750092, 17.610640> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426476, 0.025374, -0.904143,
		0.899643, 0.115338, -0.421117,
		0.093597, -0.993002, -0.072016,
		31.989656, 40.452190, 17.589035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294846, 40.979614, 17.018700>,  <31.924139, 41.147293, 17.639446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294846, 40.979614, 17.018700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.102528, 40.638302, 17.099436>,  <31.987137, 40.433514, 17.147877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.102528, 40.638302, 17.099436>,  <32.294846, 40.979614, 17.018700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102528, 40.638302, 17.099436> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520728, 0.092660, -0.848679,
		0.705463, -0.513145, -0.488880,
		-0.480795, -0.853285, 0.201840,
		31.958288, 40.382317, 17.159988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.349915, 40.622398, 16.310297>,  <32.294846, 40.979614, 17.018700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.349915, 40.622398, 16.310297> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051182, 40.455349, 16.517311>,  <31.871943, 40.355122, 16.641520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.051182, 40.455349, 16.517311>,  <32.349915, 40.622398, 16.310297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.051182, 40.455349, 16.517311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560755, -0.022886, -0.827666,
		0.357495, -0.908333, -0.217092,
		-0.746827, -0.417622, 0.517534,
		31.827133, 40.330063, 16.672571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131168, 40.127914, 15.904688>,  <32.349915, 40.622398, 16.310297>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131168, 40.127914, 15.904688> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823427, 40.167042, 16.157204>,  <31.638783, 40.190517, 16.308712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.823427, 40.167042, 16.157204>,  <32.131168, 40.127914, 15.904688>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.823427, 40.167042, 16.157204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621503, 0.113934, -0.775083,
		-0.147742, -0.988661, -0.026862,
		-0.769355, 0.097817, 0.631288,
		31.592621, 40.196388, 16.346590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622684, 39.670898, 15.561973>,  <32.131168, 40.127914, 15.904688>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622684, 39.670898, 15.561973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455374, 39.935581, 15.810869>,  <31.354988, 40.094391, 15.960207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455374, 39.935581, 15.810869>,  <31.622684, 39.670898, 15.561973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455374, 39.935581, 15.810869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581495, 0.331191, -0.743085,
		-0.697788, -0.672646, 0.246251,
		-0.418278, 0.661710, 0.622242,
		31.329891, 40.134094, 15.997541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870176, 39.577320, 15.738883>,  <31.622684, 39.670898, 15.561973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870176, 39.577320, 15.738883> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.990700, 39.958729, 15.740122>,  <31.063015, 40.187572, 15.740866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.990700, 39.958729, 15.740122>,  <30.870176, 39.577320, 15.738883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.990700, 39.958729, 15.740122> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657569, 0.210141, -0.723495,
		-0.690518, 0.215959, 0.690323,
		0.301310, 0.953521, 0.003098,
		31.081093, 40.244785, 15.741052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.348320, 40.115246, 15.910775>,  <30.870176, 39.577320, 15.738883>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.348320, 40.115246, 15.910775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638803, 40.173313, 15.641987>,  <30.813093, 40.208153, 15.480714>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.638803, 40.173313, 15.641987>,  <30.348320, 40.115246, 15.910775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638803, 40.173313, 15.641987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687058, 0.187223, -0.702068,
		0.023892, 0.971532, 0.235700,
		0.726210, 0.145166, -0.671972,
		30.856667, 40.216862, 15.440395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689268, 39.719788, 15.569748>,  <30.348320, 40.115246, 15.910775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689268, 39.719788, 15.569748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.463585, 39.391186, 15.602746>,  <29.328175, 39.194027, 15.622545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.463585, 39.391186, 15.602746>,  <29.689268, 39.719788, 15.569748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.463585, 39.391186, 15.602746> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520600, -0.276426, 0.807815,
		-0.640818, 0.498721, 0.583635,
		-0.564206, -0.821502, 0.082496,
		29.294323, 39.144733, 15.627495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.507006, 39.598595, 16.256721>,  <29.689268, 39.719788, 15.569748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.507006, 39.598595, 16.256721> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484650, 39.242466, 16.075964>,  <29.471235, 39.028790, 15.967509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.484650, 39.242466, 16.075964>,  <29.507006, 39.598595, 16.256721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484650, 39.242466, 16.075964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345766, -0.441857, 0.827773,
		-0.936655, -0.109985, 0.332538,
		-0.055892, -0.890318, -0.451896,
		29.467882, 38.975372, 15.940395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.192623, 39.173164, 16.769567>,  <29.507006, 39.598595, 16.256721>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.192623, 39.173164, 16.769567> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.378027, 38.922737, 16.518745>,  <29.489269, 38.772480, 16.368252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.378027, 38.922737, 16.518745>,  <29.192623, 39.173164, 16.769567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378027, 38.922737, 16.518745> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373571, -0.503628, 0.778976,
		-0.803494, -0.595312, 0.000444,
		0.463510, -0.626069, -0.627053,
		29.517080, 38.734917, 16.330629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.041153, 38.493443, 17.024746>,  <29.192623, 39.173164, 16.769567>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.041153, 38.493443, 17.024746> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.354351, 38.434429, 16.783033>,  <29.542269, 38.399021, 16.638006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.354351, 38.434429, 16.783033>,  <29.041153, 38.493443, 17.024746>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.354351, 38.434429, 16.783033> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403182, -0.619397, 0.673641,
		-0.473673, -0.771091, -0.425502,
		0.782993, -0.147531, -0.604282,
		29.589249, 38.390171, 16.601749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139629, 37.777550, 16.926855>,  <29.041153, 38.493443, 17.024746>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139629, 37.777550, 16.926855> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503561, 37.934406, 16.872543>,  <29.721920, 38.028519, 16.839956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.503561, 37.934406, 16.872543>,  <29.139629, 37.777550, 16.926855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.503561, 37.934406, 16.872543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333333, -0.495689, 0.801986,
		0.247188, -0.774930, -0.581706,
		0.909828, 0.392143, -0.135781,
		29.776510, 38.052048, 16.831808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430593, 37.373962, 17.353220>,  <29.139629, 37.777550, 16.926855>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430593, 37.373962, 17.353220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735514, 37.598808, 17.224892>,  <29.918465, 37.733715, 17.147894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.735514, 37.598808, 17.224892>,  <29.430593, 37.373962, 17.353220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.735514, 37.598808, 17.224892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624101, -0.507084, 0.594444,
		0.171463, -0.653369, -0.737366,
		0.762298, 0.562116, -0.320822,
		29.964203, 37.767445, 17.128645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.838457, 36.911484, 17.156235>,  <29.430593, 37.373962, 17.353220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.838457, 36.911484, 17.156235> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.039526, 37.243038, 17.254435>,  <30.160168, 37.441971, 17.313354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.039526, 37.243038, 17.254435>,  <29.838457, 36.911484, 17.156235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039526, 37.243038, 17.254435> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495128, -0.508843, 0.704221,
		0.708640, -0.232437, -0.666185,
		0.502671, 0.828886, 0.245500,
		30.190327, 37.491703, 17.328085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595505, 36.673321, 17.114336>,  <29.838457, 36.911484, 17.156235>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595505, 36.673321, 17.114336> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.560730, 36.990776, 17.355192>,  <30.539865, 37.181252, 17.499706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.560730, 36.990776, 17.355192>,  <30.595505, 36.673321, 17.114336>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.560730, 36.990776, 17.355192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644529, -0.416072, 0.641456,
		0.759621, 0.443865, -0.475353,
		-0.086938, 0.793642, 0.602141,
		30.534649, 37.228870, 17.535835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.333225, 36.781010, 17.308706>,  <30.595505, 36.673321, 17.114336>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.333225, 36.781010, 17.308706> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.103441, 36.968773, 17.576929>,  <30.965570, 37.081432, 17.737864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.103441, 36.968773, 17.576929>,  <31.333225, 36.781010, 17.308706>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.103441, 36.968773, 17.576929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636139, -0.259494, 0.726629,
		0.515093, 0.843989, -0.149541,
		-0.574462, 0.469410, 0.670558,
		30.931103, 37.109596, 17.778097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825005, 37.090221, 17.734816>,  <31.333225, 36.781010, 17.308706>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825005, 37.090221, 17.734816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501856, 37.087715, 17.970547>,  <31.307966, 37.086212, 18.111986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.501856, 37.087715, 17.970547>,  <31.825005, 37.090221, 17.734816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.501856, 37.087715, 17.970547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577346, -0.209288, 0.789221,
		0.118394, 0.977834, 0.172696,
		-0.807870, -0.006267, 0.589327,
		31.259495, 37.085835, 18.147345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.021141, 37.310173, 18.307720>,  <31.825005, 37.090221, 17.734816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.021141, 37.310173, 18.307720> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688080, 37.116962, 18.416077>,  <31.488243, 37.001038, 18.481091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.688080, 37.116962, 18.416077>,  <32.021141, 37.310173, 18.307720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.688080, 37.116962, 18.416077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407607, -0.203392, 0.890218,
		-0.374899, 0.851658, 0.366237,
		-0.832651, -0.483023, 0.270890,
		31.438284, 36.972057, 18.497343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.737787, 37.648468, 18.857775>,  <32.021141, 37.310173, 18.307720>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.737787, 37.648468, 18.857775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620987, 37.266163, 18.871925>,  <31.550907, 37.036781, 18.880417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.620987, 37.266163, 18.871925>,  <31.737787, 37.648468, 18.857775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.620987, 37.266163, 18.871925> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440774, -0.101651, 0.891844,
		-0.848795, 0.276014, 0.450958,
		-0.292001, -0.955763, 0.035379,
		31.533386, 36.979435, 18.882540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.400991, 37.591084, 19.551188>,  <31.737787, 37.648468, 18.857775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.400991, 37.591084, 19.551188> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521128, 37.232437, 19.421038>,  <31.593210, 37.017250, 19.342947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.521128, 37.232437, 19.421038>,  <31.400991, 37.591084, 19.551188>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.521128, 37.232437, 19.421038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518483, -0.132859, 0.844704,
		-0.800606, -0.422402, 0.424978,
		0.300342, -0.896619, -0.325376,
		31.611231, 36.963451, 19.323425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.202475, 37.149792, 20.044962>,  <31.400991, 37.591084, 19.551188>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.202475, 37.149792, 20.044962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500446, 36.976006, 19.842449>,  <31.679230, 36.871735, 19.720942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500446, 36.976006, 19.842449>,  <31.202475, 37.149792, 20.044962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500446, 36.976006, 19.842449> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441502, -0.247888, 0.862338,
		-0.500156, -0.865906, 0.007157,
		0.744930, -0.434463, -0.506282,
		31.723925, 36.845665, 19.690565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663824, 36.608807, 20.184488>,  <31.202475, 37.149792, 20.044962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663824, 36.608807, 20.184488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358526, 36.624569, 20.442450>,  <30.175346, 36.634026, 20.597227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.358526, 36.624569, 20.442450>,  <30.663824, 36.608807, 20.184488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358526, 36.624569, 20.442450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587230, 0.373984, -0.717841,
		-0.269472, -0.926598, -0.262301,
		-0.763246, 0.039407, 0.644904,
		30.129553, 36.636391, 20.635921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.062387, 36.527557, 19.758968>,  <30.663824, 36.608807, 20.184488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.062387, 36.527557, 19.758968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.891300, 36.653603, 20.097851>,  <29.788649, 36.729229, 20.301180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.891300, 36.653603, 20.097851>,  <30.062387, 36.527557, 19.758968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.891300, 36.653603, 20.097851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701374, 0.475548, -0.530969,
		-0.570204, -0.821314, 0.017613,
		-0.427717, 0.315114, 0.847208,
		29.762985, 36.748138, 20.352013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393805, 36.573063, 19.599646>,  <30.062387, 36.527557, 19.758968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393805, 36.573063, 19.599646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412289, 36.788918, 19.935898>,  <29.423380, 36.918430, 20.137650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.412289, 36.788918, 19.935898>,  <29.393805, 36.573063, 19.599646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.412289, 36.788918, 19.935898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.762372, 0.562830, -0.319393,
		-0.645487, -0.626113, 0.437411,
		0.046212, 0.539634, 0.840631,
		29.426151, 36.950809, 20.188087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.738922, 36.572887, 19.901449>,  <29.393805, 36.573063, 19.599646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.738922, 36.572887, 19.901449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.945045, 36.885796, 20.041458>,  <29.068720, 37.073540, 20.125463>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.945045, 36.885796, 20.041458>,  <28.738922, 36.572887, 19.901449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.945045, 36.885796, 20.041458> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725988, 0.615497, -0.306765,
		-0.455410, -0.096032, 0.885087,
		0.515309, 0.782266, 0.350022,
		29.099638, 37.120476, 20.146465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176853, 37.028584, 20.166399>,  <28.738922, 36.572887, 19.901449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176853, 37.028584, 20.166399> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.496607, 37.261494, 20.107161>,  <28.688459, 37.401241, 20.071617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.496607, 37.261494, 20.107161>,  <28.176853, 37.028584, 20.166399>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496607, 37.261494, 20.107161> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600011, 0.760915, -0.246972,
		-0.031119, 0.286284, 0.957639,
		0.799386, 0.582279, -0.148095,
		28.736423, 37.436176, 20.062733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004910, 37.601646, 20.491112>,  <28.176853, 37.028584, 20.166399>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004910, 37.601646, 20.491112> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.288027, 37.693367, 20.223843>,  <28.457897, 37.748398, 20.063482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.288027, 37.693367, 20.223843>,  <28.004910, 37.601646, 20.491112>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.288027, 37.693367, 20.223843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625874, 0.642164, -0.442615,
		0.327584, 0.731470, 0.598031,
		0.707793, 0.229299, -0.668171,
		28.500364, 37.762157, 20.023392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.933390, 38.356255, 20.496496>,  <28.004910, 37.601646, 20.491112>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.933390, 38.356255, 20.496496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114143, 38.203865, 20.173841>,  <28.222595, 38.112431, 19.980249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.114143, 38.203865, 20.173841>,  <27.933390, 38.356255, 20.496496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.114143, 38.203865, 20.173841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642559, 0.488224, -0.590556,
		0.618805, 0.785173, -0.024178,
		0.451884, -0.380975, -0.806635,
		28.249708, 38.089573, 19.931850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.193619, 39.107933, 20.488771>,  <27.933390, 38.356255, 20.496496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.193619, 39.107933, 20.488771> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842615, 39.199512, 20.657322>,  <27.632013, 39.254459, 20.758453>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.842615, 39.199512, 20.657322>,  <28.193619, 39.107933, 20.488771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.842615, 39.199512, 20.657322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449182, 0.084636, 0.889423,
		0.167970, 0.969752, -0.177109,
		-0.877509, 0.228951, 0.421378,
		27.579363, 39.268196, 20.783735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.298075, 39.650963, 20.968115>,  <28.193619, 39.107933, 20.488771>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.298075, 39.650963, 20.968115> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.959469, 39.470688, 21.081461>,  <27.756306, 39.362522, 21.149469>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.959469, 39.470688, 21.081461>,  <28.298075, 39.650963, 20.968115>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.959469, 39.470688, 21.081461> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364464, -0.102635, 0.925544,
		-0.388050, 0.886761, 0.251142,
		-0.846512, -0.450690, 0.283365,
		27.705515, 39.335480, 21.166470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.250580, 39.808380, 21.608950>,  <28.298075, 39.650963, 20.968115>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.250580, 39.808380, 21.608950> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.984249, 39.510372, 21.592878>,  <27.824450, 39.331566, 21.583235>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.984249, 39.510372, 21.592878>,  <28.250580, 39.808380, 21.608950>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984249, 39.510372, 21.592878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391846, -0.395004, 0.830920,
		-0.634925, 0.537506, 0.554939,
		-0.665828, -0.745022, -0.040178,
		27.784500, 39.286865, 21.580824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.724686, 39.944057, 22.185543>,  <28.250580, 39.808380, 21.608950>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.724686, 39.944057, 22.185543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.768284, 39.560150, 22.082027>,  <27.794443, 39.329807, 22.019918>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.768284, 39.560150, 22.082027>,  <27.724686, 39.944057, 22.185543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.768284, 39.560150, 22.082027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209494, -0.232312, 0.949812,
		-0.971716, -0.157739, 0.175745,
		0.108995, -0.959765, -0.258787,
		27.800982, 39.272221, 22.004391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.717560, 39.683105, 22.766155>,  <27.724686, 39.944057, 22.185543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.717560, 39.683105, 22.766155> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.807261, 39.353741, 22.557652>,  <27.861080, 39.156124, 22.432549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.807261, 39.353741, 22.557652>,  <27.717560, 39.683105, 22.766155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.807261, 39.353741, 22.557652> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179378, -0.490867, 0.852568,
		-0.957881, -0.284690, 0.037625,
		0.224249, -0.823408, -0.521259,
		27.874535, 39.106720, 22.401274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.318029, 39.028805, 23.006971>,  <27.717560, 39.683105, 22.766155>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.318029, 39.028805, 23.006971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.664576, 38.936890, 22.829611>,  <27.872503, 38.881741, 22.723194>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.664576, 38.936890, 22.829611>,  <27.318029, 39.028805, 23.006971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.664576, 38.936890, 22.829611> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226220, -0.610966, 0.758647,
		-0.445232, -0.757573, -0.477337,
		0.866368, -0.229791, -0.443400,
		27.924486, 38.867950, 22.696590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323177, 38.325493, 23.035835>,  <27.318029, 39.028805, 23.006971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323177, 38.325493, 23.035835> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.700483, 38.456818, 23.015987>,  <27.926867, 38.535610, 23.004078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.700483, 38.456818, 23.015987>,  <27.323177, 38.325493, 23.035835>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.700483, 38.456818, 23.015987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258278, -0.631574, 0.731032,
		0.208665, -0.702374, -0.680537,
		0.943267, 0.328308, -0.049620,
		27.983463, 38.555309, 23.001101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.794479, 41.592804, 18.477413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135645, 41.505997, 18.287489>,  <29.340343, 41.453915, 18.173534>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.135645, 41.505997, 18.287489>,  <28.794479, 41.592804, 18.477413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.135645, 41.505997, 18.287489> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397527, -0.319565, 0.860146,
		-0.338405, -0.922377, -0.186287,
		0.852909, -0.217024, -0.474812,
		29.391518, 41.440891, 18.145046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.038614, 40.985088, 18.744810>,  <28.794479, 41.592804, 18.477413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.038614, 40.985088, 18.744810> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374416, 41.101528, 18.561293>,  <29.575897, 41.171391, 18.451181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.374416, 41.101528, 18.561293>,  <29.038614, 40.985088, 18.744810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374416, 41.101528, 18.561293> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540604, -0.362691, 0.759080,
		0.054564, -0.885279, -0.461849,
		0.839506, 0.291096, -0.458796,
		29.626268, 41.188858, 18.423655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.557865, 40.492416, 18.777439>,  <29.038614, 40.985088, 18.744810>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.557865, 40.492416, 18.777439> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777815, 40.824516, 18.740944>,  <29.909784, 41.023777, 18.719048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777815, 40.824516, 18.740944>,  <29.557865, 40.492416, 18.777439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777815, 40.824516, 18.740944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524424, -0.258163, 0.811377,
		0.650090, -0.494004, -0.577360,
		0.549876, 0.830248, -0.091238,
		29.942778, 41.073589, 18.713572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.254271, 40.244743, 18.971931>,  <29.557865, 40.492416, 18.777439>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.254271, 40.244743, 18.971931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277002, 40.643700, 18.989721>,  <30.290642, 40.883076, 19.000395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.277002, 40.643700, 18.989721>,  <30.254271, 40.244743, 18.971931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277002, 40.643700, 18.989721> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595568, -0.069620, 0.800283,
		0.801293, -0.018990, -0.597971,
		0.056828, 0.997393, 0.044476,
		30.294050, 40.942917, 19.003063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.951511, 40.349045, 19.022066>,  <30.254271, 40.244743, 18.971931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.951511, 40.349045, 19.022066> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747202, 40.655495, 19.178095>,  <30.624617, 40.839367, 19.271713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.747202, 40.655495, 19.178095>,  <30.951511, 40.349045, 19.022066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747202, 40.655495, 19.178095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532271, -0.074499, 0.843290,
		0.675128, 0.638355, -0.369736,
		-0.510773, 0.766129, 0.390074,
		30.593969, 40.885334, 19.295116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.431566, 40.784702, 19.326982>,  <30.951511, 40.349045, 19.022066>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.431566, 40.784702, 19.326982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086010, 40.890785, 19.498266>,  <30.878677, 40.954433, 19.601036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.086010, 40.890785, 19.498266>,  <31.431566, 40.784702, 19.326982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086010, 40.890785, 19.498266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450097, 0.024897, 0.892632,
		0.226068, 0.963871, -0.140876,
		-0.863890, 0.265204, 0.428207,
		30.826843, 40.970345, 19.626728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.571741, 41.387665, 19.678473>,  <31.431566, 40.784702, 19.326982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.571741, 41.387665, 19.678473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230206, 41.251507, 19.835999>,  <31.025284, 41.169811, 19.930513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.230206, 41.251507, 19.835999>,  <31.571741, 41.387665, 19.678473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.230206, 41.251507, 19.835999> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380334, 0.108568, 0.918455,
		-0.355390, 0.933995, 0.036763,
		-0.853841, -0.340392, 0.393814,
		30.974052, 41.149391, 19.954144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445272, 41.885239, 20.148046>,  <31.571741, 41.387665, 19.678473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445272, 41.885239, 20.148046> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251383, 41.557922, 20.271620>,  <31.135050, 41.361530, 20.345764>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251383, 41.557922, 20.271620>,  <31.445272, 41.885239, 20.148046>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251383, 41.557922, 20.271620> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289129, 0.183442, 0.939550,
		-0.825498, 0.544743, 0.147674,
		-0.484723, -0.818294, 0.308932,
		31.105967, 41.312435, 20.364300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.124380, 42.122829, 20.697563>,  <31.445272, 41.885239, 20.148046>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.124380, 42.122829, 20.697563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136950, 41.726990, 20.753717>,  <31.144491, 41.489487, 20.787409>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.136950, 41.726990, 20.753717>,  <31.124380, 42.122829, 20.697563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136950, 41.726990, 20.753717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153555, 0.143565, 0.977655,
		-0.987641, -0.009163, 0.156469,
		0.031421, -0.989599, 0.140384,
		31.146376, 41.430111, 20.795832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916700, 42.108898, 21.363750>,  <31.124380, 42.122829, 20.697563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916700, 42.108898, 21.363750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051975, 41.737690, 21.301258>,  <31.133141, 41.514965, 21.263762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.051975, 41.737690, 21.301258>,  <30.916700, 42.108898, 21.363750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.051975, 41.737690, 21.301258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309066, -0.047280, 0.949864,
		-0.888880, -0.369517, 0.270830,
		0.338186, -0.928020, -0.156232,
		31.153431, 41.459286, 21.254389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.787659, 41.759895, 21.974031>,  <30.916700, 42.108898, 21.363750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.787659, 41.759895, 21.974031> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072319, 41.550320, 21.786823>,  <31.243114, 41.424576, 21.674498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.072319, 41.550320, 21.786823>,  <30.787659, 41.759895, 21.974031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.072319, 41.550320, 21.786823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422176, -0.213550, 0.881002,
		-0.561534, -0.824553, 0.069220,
		0.711651, -0.523935, -0.468022,
		31.285814, 41.393139, 21.646418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.780748, 41.280998, 22.398884>,  <30.787659, 41.759895, 21.974031>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.780748, 41.280998, 22.398884> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134159, 41.244465, 22.215130>,  <31.346207, 41.222546, 22.104877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.134159, 41.244465, 22.215130>,  <30.780748, 41.280998, 22.398884>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134159, 41.244465, 22.215130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436834, -0.193167, 0.878557,
		-0.168966, -0.976907, -0.130778,
		0.883531, -0.091318, -0.459385,
		31.399218, 41.217068, 22.077314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.331949, 40.583523, 22.496843>,  <30.780748, 41.280998, 22.398884>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.331949, 40.583523, 22.496843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033819, 40.712170, 22.730442>,  <29.854940, 40.789356, 22.870602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.033819, 40.712170, 22.730442>,  <30.331949, 40.583523, 22.496843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033819, 40.712170, 22.730442> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570483, 0.145656, -0.808290,
		-0.345020, -0.935601, 0.074914,
		-0.745325, 0.321614, 0.583999,
		29.810221, 40.808655, 22.905642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.708410, 40.280422, 22.242903>,  <30.331949, 40.583523, 22.496843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.708410, 40.280422, 22.242903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581337, 40.603729, 22.441206>,  <29.505093, 40.797714, 22.560188>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.581337, 40.603729, 22.441206>,  <29.708410, 40.280422, 22.242903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.581337, 40.603729, 22.441206> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588192, 0.242102, -0.771633,
		-0.743711, -0.536738, 0.398505,
		-0.317685, 0.808269, 0.495759,
		29.486031, 40.846210, 22.589933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.986191, 40.308342, 22.017496>,  <29.708410, 40.280422, 22.242903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.986191, 40.308342, 22.017496> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103827, 40.667480, 22.148571>,  <29.174408, 40.882965, 22.227217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.103827, 40.667480, 22.148571>,  <28.986191, 40.308342, 22.017496>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103827, 40.667480, 22.148571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499380, 0.436673, -0.748289,
		-0.814943, 0.056421, 0.576788,
		0.294087, 0.897849, 0.327688,
		29.192053, 40.936836, 22.246878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375505, 40.783840, 22.160036>,  <28.986191, 40.308342, 22.017496>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375505, 40.783840, 22.160036> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668207, 41.056435, 22.164253>,  <28.843828, 41.219990, 22.166782>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.668207, 41.056435, 22.164253>,  <28.375505, 40.783840, 22.160036>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.668207, 41.056435, 22.164253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532889, 0.581701, -0.614535,
		-0.424930, 0.444071, 0.788819,
		0.731754, 0.681487, 0.010541,
		28.887733, 41.260880, 22.167416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.051889, 41.397781, 22.251888>,  <28.375505, 40.783840, 22.160036>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.051889, 41.397781, 22.251888> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410612, 41.505116, 22.111187>,  <28.625847, 41.569515, 22.026766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.410612, 41.505116, 22.111187>,  <28.051889, 41.397781, 22.251888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410612, 41.505116, 22.111187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435651, 0.674145, -0.596436,
		0.077087, 0.688131, 0.721480,
		0.896809, 0.268336, -0.351753,
		28.679655, 41.585617, 22.005661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.983572, 42.052284, 22.075230>,  <28.051889, 41.397781, 22.251888>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.983572, 42.052284, 22.075230> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305496, 41.949318, 21.861307>,  <28.498650, 41.887539, 21.732954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.305496, 41.949318, 21.861307>,  <27.983572, 42.052284, 22.075230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.305496, 41.949318, 21.861307> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270941, 0.642364, -0.716910,
		0.528085, 0.721877, 0.447236,
		0.804809, -0.257415, -0.534808,
		28.546940, 41.872093, 21.700865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246128, 42.674942, 21.592834>,  <27.983572, 42.052284, 22.075230>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246128, 42.674942, 21.592834> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393980, 42.361057, 21.393797>,  <28.482691, 42.172726, 21.274374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.393980, 42.361057, 21.393797>,  <28.246128, 42.674942, 21.592834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393980, 42.361057, 21.393797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391385, 0.354210, -0.849325,
		0.842730, 0.508685, -0.176199,
		0.369628, -0.784713, -0.497595,
		28.504868, 42.125645, 21.244518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587858, 42.886650, 20.985970>,  <28.246128, 42.674942, 21.592834>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587858, 42.886650, 20.985970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544640, 42.501568, 20.886759>,  <28.518707, 42.270519, 20.827232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.544640, 42.501568, 20.886759>,  <28.587858, 42.886650, 20.985970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.544640, 42.501568, 20.886759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312498, 0.269730, -0.910819,
		0.943753, -0.020905, -0.329988,
		-0.108049, -0.962709, -0.248026,
		28.512224, 42.212753, 20.812351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934811, 42.793266, 20.367537>,  <28.587858, 42.886650, 20.985970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934811, 42.793266, 20.367537> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677282, 42.488079, 20.390768>,  <28.522766, 42.304966, 20.404707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.677282, 42.488079, 20.390768>,  <28.934811, 42.793266, 20.367537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.677282, 42.488079, 20.390768> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402524, 0.273154, -0.873705,
		0.650747, -0.585886, -0.482976,
		-0.643819, -0.762971, 0.058079,
		28.484137, 42.259190, 20.408192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.022106, 42.460396, 19.754108>,  <28.934811, 42.793266, 20.367537>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.022106, 42.460396, 19.754108> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665697, 42.374207, 19.913935>,  <28.451853, 42.322495, 20.009830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.665697, 42.374207, 19.913935>,  <29.022106, 42.460396, 19.754108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.665697, 42.374207, 19.913935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451580, 0.330694, -0.828684,
		0.046427, -0.918810, -0.391960,
		-0.891021, -0.215474, 0.399564,
		28.398390, 42.309563, 20.033804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.711006, 42.100136, 19.188890>,  <29.022106, 42.460396, 19.754108>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.711006, 42.100136, 19.188890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392967, 42.219723, 19.399960>,  <28.202145, 42.291473, 19.526602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.392967, 42.219723, 19.399960>,  <28.711006, 42.100136, 19.188890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.392967, 42.219723, 19.399960> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377037, 0.437829, -0.816180,
		-0.475041, -0.847894, -0.235394,
		-0.795097, 0.298967, 0.527674,
		28.154438, 42.309414, 19.558262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157862, 42.071110, 18.688053>,  <28.711006, 42.100136, 19.188890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157862, 42.071110, 18.688053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007128, 42.284653, 18.990837>,  <27.916687, 42.412781, 19.172506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.007128, 42.284653, 18.990837>,  <28.157862, 42.071110, 18.688053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.007128, 42.284653, 18.990837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635602, 0.445420, -0.630564,
		-0.673799, -0.718743, 0.171473,
		-0.376836, 0.533862, 0.756958,
		27.894077, 42.444813, 19.217924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.426771, 41.987137, 18.672382>,  <28.157862, 42.071110, 18.688053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.426771, 41.987137, 18.672382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506636, 42.322857, 18.874657>,  <27.554554, 42.524288, 18.996021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.506636, 42.322857, 18.874657>,  <27.426771, 41.987137, 18.672382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506636, 42.322857, 18.874657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752773, 0.461755, -0.469165,
		-0.627271, -0.286993, 0.723993,
		0.199660, 0.839296, 0.505686,
		27.566534, 42.574646, 19.026363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.784258, 41.620255, 18.746471>,  <27.426771, 41.987137, 18.672382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.784258, 41.620255, 18.746471> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489265, 41.375301, 18.632557>,  <26.312269, 41.228329, 18.564209>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.489265, 41.375301, 18.632557>,  <26.784258, 41.620255, 18.746471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.489265, 41.375301, 18.632557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167057, -0.573984, 0.801645,
		-0.654378, 0.543624, 0.525607,
		-0.737483, -0.612385, -0.284787,
		26.268021, 41.191586, 18.547121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.376530, 41.482975, 19.313173>,  <26.784258, 41.620255, 18.746471>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.376530, 41.482975, 19.313173> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277025, 41.170742, 19.083805>,  <26.217323, 40.983402, 18.946184>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.277025, 41.170742, 19.083805>,  <26.376530, 41.482975, 19.313173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277025, 41.170742, 19.083805> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012388, -0.594545, 0.803967,
		-0.968485, 0.192893, 0.157569,
		-0.248762, -0.780582, -0.573419,
		26.202396, 40.936569, 18.911779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.053186, 41.021095, 19.770350>,  <26.376530, 41.482975, 19.313173>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.053186, 41.021095, 19.770350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117125, 40.780136, 19.457539>,  <26.155487, 40.635559, 19.269852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.117125, 40.780136, 19.457539>,  <26.053186, 41.021095, 19.770350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.117125, 40.780136, 19.457539> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332678, -0.712995, 0.617222,
		-0.929395, -0.358823, 0.086436,
		0.159845, -0.602399, -0.782026,
		26.165077, 40.599415, 19.222931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.633312, 40.385113, 19.908119>,  <26.053186, 41.021095, 19.770350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.633312, 40.385113, 19.908119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933363, 40.305119, 19.655987>,  <26.113394, 40.257122, 19.504707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.933363, 40.305119, 19.655987>,  <25.633312, 40.385113, 19.908119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.933363, 40.305119, 19.655987> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381089, -0.648264, 0.659185,
		-0.540446, -0.734684, -0.410070,
		0.750127, -0.199981, -0.630331,
		26.158401, 40.245125, 19.466887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.725973, 39.696964, 19.999489>,  <25.633312, 40.385113, 19.908119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.725973, 39.696964, 19.999489> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074842, 39.810421, 19.840059>,  <26.284164, 39.878494, 19.744402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.074842, 39.810421, 19.840059>,  <25.725973, 39.696964, 19.999489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.074842, 39.810421, 19.840059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486359, -0.590441, 0.644076,
		-0.052645, -0.755595, -0.652920,
		0.872172, 0.283646, -0.398575,
		26.336494, 39.895515, 19.720488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.033278, 39.074341, 19.743708>,  <25.725973, 39.696964, 19.999489>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.033278, 39.074341, 19.743708> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299978, 39.367054, 19.800179>,  <26.459999, 39.542683, 19.834061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.299978, 39.367054, 19.800179>,  <26.033278, 39.074341, 19.743708>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.299978, 39.367054, 19.800179> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535128, -0.601922, 0.592729,
		0.518728, -0.319656, -0.792932,
		0.666753, 0.731785, 0.141177,
		26.500004, 39.586590, 19.842531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.667740, 38.741444, 19.847237>,  <26.033278, 39.074341, 19.743708>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.667740, 38.741444, 19.847237> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747011, 39.103565, 19.997513>,  <26.794575, 39.320839, 20.087679>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.747011, 39.103565, 19.997513>,  <26.667740, 38.741444, 19.847237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.747011, 39.103565, 19.997513> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689954, -0.401093, 0.602568,
		0.696196, 0.139793, -0.704109,
		0.198179, 0.905308, 0.375690,
		26.806465, 39.375156, 20.110220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406342, 38.794212, 19.903408>,  <26.667740, 38.741444, 19.847237>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406342, 38.794212, 19.903408> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248337, 39.048721, 20.168472>,  <27.153534, 39.201427, 20.327511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.248337, 39.048721, 20.168472>,  <27.406342, 38.794212, 19.903408>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.248337, 39.048721, 20.168472> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600580, -0.366978, 0.710374,
		0.695176, 0.678586, -0.237174,
		-0.395012, 0.636277, 0.662659,
		27.129833, 39.239605, 20.367270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796148, 39.213017, 19.525854>,  <27.406342, 38.794212, 19.903408>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796148, 39.213017, 19.525854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952477, 38.857903, 19.428610>,  <28.046274, 38.644836, 19.370264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.952477, 38.857903, 19.428610>,  <27.796148, 39.213017, 19.525854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.952477, 38.857903, 19.428610> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453600, 0.044065, -0.890115,
		0.800941, 0.458150, -0.385476,
		0.390820, -0.887782, -0.243110,
		28.069723, 38.591568, 19.355677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123293, 39.237732, 18.801737>,  <27.796148, 39.213017, 19.525854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123293, 39.237732, 18.801737> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013481, 38.860237, 18.875492>,  <27.947594, 38.633739, 18.919746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.013481, 38.860237, 18.875492>,  <28.123293, 39.237732, 18.801737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.013481, 38.860237, 18.875492> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457861, -0.040331, -0.888108,
		0.845575, -0.328236, -0.421027,
		-0.274529, -0.943734, 0.184389,
		27.931122, 38.577118, 18.930809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.100943, 38.917419, 18.131041>,  <28.123293, 39.237732, 18.801737>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.100943, 38.917419, 18.131041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915293, 38.650429, 18.363955>,  <27.803904, 38.490234, 18.503704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.915293, 38.650429, 18.363955>,  <28.100943, 38.917419, 18.131041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.915293, 38.650429, 18.363955> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500316, -0.344921, -0.794175,
		0.730939, -0.659924, -0.173865,
		-0.464125, -0.667481, 0.582286,
		27.776054, 38.450184, 18.538641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158581, 38.342896, 17.880133>,  <28.100943, 38.917419, 18.131041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158581, 38.342896, 17.880133> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821182, 38.357414, 18.094494>,  <27.618742, 38.366127, 18.223110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.821182, 38.357414, 18.094494>,  <28.158581, 38.342896, 17.880133>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.821182, 38.357414, 18.094494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524447, -0.271210, -0.807094,
		0.116046, -0.961836, 0.247802,
		-0.843498, 0.036299, 0.535905,
		27.568132, 38.368305, 18.255266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.029074, 37.706989, 17.656580>,  <28.158581, 38.342896, 17.880133>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.029074, 37.706989, 17.656580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699238, 37.890488, 17.789003>,  <27.501335, 38.000587, 17.868458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.699238, 37.890488, 17.789003>,  <28.029074, 37.706989, 17.656580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.699238, 37.890488, 17.789003> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499117, -0.314437, -0.807472,
		-0.266322, -0.831075, 0.488249,
		-0.824593, 0.458741, 0.331062,
		27.451860, 38.028111, 17.888321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473808, 37.314873, 17.306320>,  <28.029074, 37.706989, 17.656580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473808, 37.314873, 17.306320> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293486, 37.639061, 17.455936>,  <27.185291, 37.833576, 17.545706>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.293486, 37.639061, 17.455936>,  <27.473808, 37.314873, 17.306320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.293486, 37.639061, 17.455936> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669814, -0.030165, -0.741916,
		-0.590019, -0.585000, 0.556464,
		-0.450807, 0.810472, 0.374043,
		27.158243, 37.882202, 17.568150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692459, 37.154354, 17.361450>,  <27.473808, 37.314873, 17.306320>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692459, 37.154354, 17.361450> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710230, 37.553898, 17.368452>,  <26.720892, 37.793625, 17.372652>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.710230, 37.553898, 17.368452>,  <26.692459, 37.154354, 17.361450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710230, 37.553898, 17.368452> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630743, 0.041630, -0.774875,
		-0.774720, 0.023385, 0.631873,
		0.044425, 0.998860, 0.017502,
		26.723557, 37.853554, 17.373703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.177067, 37.365540, 16.939629>,  <26.692459, 37.154354, 17.361450>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.177067, 37.365540, 16.939629> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381372, 37.709263, 16.950331>,  <26.503956, 37.915497, 16.956753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.381372, 37.709263, 16.950331>,  <26.177067, 37.365540, 16.939629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.381372, 37.709263, 16.950331> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356920, 0.240257, -0.902709,
		-0.782130, 0.451522, 0.429418,
		0.510764, 0.859304, 0.026755,
		26.534601, 37.967052, 16.958357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.710527, 38.008492, 16.946325>,  <26.177067, 37.365540, 16.939629>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.710527, 38.008492, 16.946325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.059633, 38.058338, 16.757538>,  <26.269096, 38.088245, 16.644266>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.059633, 38.058338, 16.757538>,  <25.710527, 38.008492, 16.946325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.059633, 38.058338, 16.757538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485766, 0.317035, -0.814568,
		0.048118, 0.940191, 0.337233,
		0.872764, 0.124621, -0.471968,
		26.321463, 38.095726, 16.615948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.758617, 34.134251, 30.099483> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052845, 34.355656, 29.943251>,  <34.229382, 34.488499, 29.849512>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.052845, 34.355656, 29.943251>,  <33.758617, 34.134251, 30.099483>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.052845, 34.355656, 29.943251> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370122, -0.154532, -0.916040,
		-0.567399, 0.818377, 0.091199,
		0.735573, 0.553515, -0.390580,
		34.273518, 34.521709, 29.826077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467155, 34.699909, 29.654604>,  <33.758617, 34.134251, 30.099483>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467155, 34.699909, 29.654604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835400, 34.612720, 29.525009>,  <34.056347, 34.560410, 29.447252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.835400, 34.612720, 29.525009>,  <33.467155, 34.699909, 29.654604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.835400, 34.612720, 29.525009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298420, 0.142379, -0.943755,
		0.251839, 0.965514, 0.066029,
		0.920610, -0.217970, -0.323985,
		34.111584, 34.547329, 29.427814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583141, 35.251621, 29.227139>,  <33.467155, 34.699909, 29.654604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583141, 35.251621, 29.227139> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851303, 34.986031, 29.094656>,  <34.012199, 34.826675, 29.015167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.851303, 34.986031, 29.094656>,  <33.583141, 35.251621, 29.227139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.851303, 34.986031, 29.094656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314213, 0.150327, -0.937375,
		0.672184, 0.732487, -0.107851,
		0.670402, -0.663977, -0.331205,
		34.052425, 34.786839, 28.995295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780251, 35.543682, 28.628895>,  <33.583141, 35.251621, 29.227139>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780251, 35.543682, 28.628895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907368, 35.164738, 28.613279>,  <33.983639, 34.937370, 28.603910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.907368, 35.164738, 28.613279>,  <33.780251, 35.543682, 28.628895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907368, 35.164738, 28.613279> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107079, 0.005052, -0.994238,
		0.942096, 0.320138, -0.099836,
		0.317789, -0.947357, -0.039039,
		34.002705, 34.880531, 28.601568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.188622, 35.612450, 28.070145>,  <33.780251, 35.543682, 28.628895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.188622, 35.612450, 28.070145> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083855, 35.230659, 28.127245>,  <34.020992, 35.001587, 28.161505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083855, 35.230659, 28.127245>,  <34.188622, 35.612450, 28.070145>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083855, 35.230659, 28.127245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299105, -0.060348, -0.952310,
		0.917570, -0.292125, -0.269682,
		-0.261919, -0.954475, 0.142749,
		34.005280, 34.944317, 28.170071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.353653, 35.311523, 27.455275>,  <34.188622, 35.612450, 28.070145>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.353653, 35.311523, 27.455275> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115074, 35.027428, 27.604837>,  <33.971928, 34.856968, 27.694574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.115074, 35.027428, 27.604837>,  <34.353653, 35.311523, 27.455275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.115074, 35.027428, 27.604837> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264076, -0.266265, -0.927020,
		0.757967, -0.651659, -0.028744,
		-0.596448, -0.710242, 0.373908,
		33.936138, 34.814354, 27.717010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.372562, 34.599796, 26.991909>,  <34.353653, 35.311523, 27.455275>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.372562, 34.599796, 26.991909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021240, 34.601692, 27.183140>,  <33.810448, 34.602829, 27.297878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.021240, 34.601692, 27.183140>,  <34.372562, 34.599796, 26.991909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.021240, 34.601692, 27.183140> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463327, -0.255086, -0.848681,
		0.117931, -0.966907, 0.226238,
		-0.878305, 0.004737, 0.478077,
		33.757748, 34.603115, 27.326563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.986458, 33.985653, 26.758247>,  <34.372562, 34.599796, 26.991909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.986458, 33.985653, 26.758247> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704197, 34.224400, 26.910980>,  <33.534840, 34.367649, 27.002621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.704197, 34.224400, 26.910980>,  <33.986458, 33.985653, 26.758247>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.704197, 34.224400, 26.910980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573618, -0.164878, -0.802357,
		-0.415949, -0.785213, 0.458723,
		-0.705655, 0.596871, 0.381832,
		33.492500, 34.403461, 27.025530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.372940, 33.702576, 26.496870>,  <33.986458, 33.985653, 26.758247>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.372940, 33.702576, 26.496870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198940, 34.042828, 26.614988>,  <33.094540, 34.246979, 26.685860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.198940, 34.042828, 26.614988>,  <33.372940, 33.702576, 26.496870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198940, 34.042828, 26.614988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599518, -0.028919, -0.799839,
		-0.671831, -0.524962, 0.522550,
		-0.434997, 0.850634, 0.295296,
		33.068439, 34.298019, 26.703577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.589111, 33.559265, 26.469116>,  <33.372940, 33.702576, 26.496870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.589111, 33.559265, 26.469116> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662994, 33.952099, 26.454174>,  <32.707325, 34.187798, 26.445210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.662994, 33.952099, 26.454174>,  <32.589111, 33.559265, 26.469116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662994, 33.952099, 26.454174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553621, 0.072566, -0.829601,
		-0.812028, 0.173911, 0.557105,
		0.184703, 0.982084, -0.037355,
		32.718407, 34.246723, 26.442968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950771, 33.725712, 26.272730>,  <32.589111, 33.559265, 26.469116>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950771, 33.725712, 26.272730> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169113, 34.043850, 26.167307>,  <32.300117, 34.234734, 26.104053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.169113, 34.043850, 26.167307>,  <31.950771, 33.725712, 26.272730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169113, 34.043850, 26.167307> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543810, 0.096995, -0.833584,
		-0.637427, 0.598340, 0.485465,
		0.545854, 0.795350, -0.263556,
		32.332870, 34.282455, 26.088240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.505749, 34.314632, 26.140144>,  <31.950771, 33.725712, 26.272730>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.505749, 34.314632, 26.140144> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837097, 34.383232, 25.926830>,  <32.035908, 34.424393, 25.798841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.837097, 34.383232, 25.926830>,  <31.505749, 34.314632, 26.140144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.837097, 34.383232, 25.926830> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558245, 0.173634, -0.811304,
		-0.046540, 0.969763, 0.239570,
		0.828370, 0.171497, -0.533284,
		32.085609, 34.434681, 25.766846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.311235, 34.838970, 26.694477>,  <31.505749, 34.314632, 26.140144>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.311235, 34.838970, 26.694477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938280, 34.852905, 26.838385>,  <30.714506, 34.861267, 26.924730>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.938280, 34.852905, 26.838385>,  <31.311235, 34.838970, 26.694477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.938280, 34.852905, 26.838385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326419, -0.346330, 0.879492,
		0.155237, 0.937466, 0.311544,
		-0.932390, 0.034835, 0.359770,
		30.658564, 34.863358, 26.946316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.493040, 35.128174, 27.362034>,  <31.311235, 34.838970, 26.694477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.493040, 35.128174, 27.362034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.145435, 34.934769, 27.404045>,  <30.936872, 34.818726, 27.429253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.145435, 34.934769, 27.404045>,  <31.493040, 35.128174, 27.362034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.145435, 34.934769, 27.404045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316596, -0.380243, 0.869012,
		-0.380243, 0.788434, 0.483515,
		-0.869012, -0.483515, 0.105030,
		30.884731, 34.789715, 27.435555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.314640, 35.282562, 27.973970>,  <31.493040, 35.128174, 27.362034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.314640, 35.282562, 27.973970> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118210, 34.942535, 27.897829>,  <31.000351, 34.738522, 27.852144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.118210, 34.942535, 27.897829>,  <31.314640, 35.282562, 27.973970>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.118210, 34.942535, 27.897829> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263436, -0.353205, 0.897690,
		-0.830329, 0.390687, 0.397388,
		-0.491076, -0.850065, -0.190356,
		30.970888, 34.687515, 27.840723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101425, 35.289524, 28.565201>,  <31.314640, 35.282562, 27.973970>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101425, 35.289524, 28.565201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020826, 34.928761, 28.412384>,  <30.972467, 34.712303, 28.320694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.020826, 34.928761, 28.412384>,  <31.101425, 35.289524, 28.565201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020826, 34.928761, 28.412384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168261, -0.416117, 0.893608,
		-0.964928, 0.115778, 0.235604,
		-0.201499, -0.901911, -0.382042,
		30.960377, 34.658188, 28.297771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.663359, 34.938923, 29.010147>,  <31.101425, 35.289524, 28.565201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.663359, 34.938923, 29.010147> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841913, 34.649593, 28.799419>,  <30.949047, 34.475994, 28.672983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.841913, 34.649593, 28.799419>,  <30.663359, 34.938923, 29.010147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.841913, 34.649593, 28.799419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229426, -0.476542, 0.848688,
		-0.864928, -0.499711, -0.046773,
		0.446388, -0.723323, -0.526821,
		30.975830, 34.432598, 28.641373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.480865, 34.315289, 29.303608>,  <30.663359, 34.938923, 29.010147>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.480865, 34.315289, 29.303608> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813902, 34.216068, 29.105513>,  <31.013723, 34.156536, 28.986656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.813902, 34.216068, 29.105513>,  <30.480865, 34.315289, 29.303608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813902, 34.216068, 29.105513> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239857, -0.644464, 0.726040,
		-0.499257, -0.723282, -0.477080,
		0.832593, -0.248050, -0.495237,
		31.063681, 34.141655, 28.956942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554550, 33.627903, 29.520569>,  <30.480865, 34.315289, 29.303608>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554550, 33.627903, 29.520569> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911110, 33.749172, 29.385817>,  <31.125046, 33.821934, 29.304964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.911110, 33.749172, 29.385817>,  <30.554550, 33.627903, 29.520569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911110, 33.749172, 29.385817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450567, -0.512555, 0.730943,
		0.048934, -0.803351, -0.593492,
		0.891401, 0.303175, -0.336882,
		31.178530, 33.840126, 29.284752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.929691, 33.111721, 29.677488>,  <30.554550, 33.627903, 29.520569>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.929691, 33.111721, 29.677488> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202005, 33.398518, 29.617537>,  <31.365393, 33.570595, 29.581566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.202005, 33.398518, 29.617537>,  <30.929691, 33.111721, 29.677488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.202005, 33.398518, 29.617537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603961, -0.433680, 0.668694,
		0.414446, -0.545757, -0.728275,
		0.680783, 0.716987, -0.149879,
		31.406240, 33.613613, 29.572573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.476419, 32.724258, 29.532038>,  <30.929691, 33.111721, 29.677488>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.476419, 32.724258, 29.532038> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596798, 33.083637, 29.659922>,  <31.669025, 33.299267, 29.736652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.596798, 33.083637, 29.659922>,  <31.476419, 32.724258, 29.532038>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.596798, 33.083637, 29.659922> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564566, -0.438045, 0.699558,
		0.768567, -0.030032, -0.639064,
		0.300948, 0.898451, 0.319712,
		31.687082, 33.353172, 29.755835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.210293, 32.719448, 29.752819>,  <31.476419, 32.724258, 29.532038>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.210293, 32.719448, 29.752819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130959, 33.046879, 29.968445>,  <32.083359, 33.243340, 30.097820>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.130959, 33.046879, 29.968445>,  <32.210293, 32.719448, 29.752819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.130959, 33.046879, 29.968445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403400, -0.433071, 0.806050,
		0.893270, 0.377326, -0.244322,
		-0.198335, 0.818580, 0.539063,
		32.071457, 33.292454, 30.130163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754311, 32.770664, 30.298393>,  <32.210293, 32.719448, 29.752819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754311, 32.770664, 30.298393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473656, 33.025780, 30.425470>,  <32.305264, 33.178848, 30.501717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.473656, 33.025780, 30.425470>,  <32.754311, 32.770664, 30.298393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.473656, 33.025780, 30.425470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203884, -0.247512, 0.947190,
		0.682738, 0.729359, 0.043630,
		-0.701641, 0.637787, 0.317690,
		32.263165, 33.217117, 30.520777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.043720, 33.114384, 30.980558>,  <32.754311, 32.770664, 30.298393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.043720, 33.114384, 30.980558> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648735, 33.174099, 31.001049>,  <32.411743, 33.209930, 31.013344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.648735, 33.174099, 31.001049>,  <33.043720, 33.114384, 30.980558>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.648735, 33.174099, 31.001049> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018607, -0.212195, 0.977050,
		0.156736, 0.965756, 0.206758,
		-0.987465, 0.149292, 0.051228,
		32.352497, 33.218887, 31.016418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.862904, 33.638763, 31.531912>,  <33.043720, 33.114384, 30.980558>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.862904, 33.638763, 31.531912> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518158, 33.442104, 31.482151>,  <32.311310, 33.324108, 31.452295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.518158, 33.442104, 31.482151>,  <32.862904, 33.638763, 31.531912>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.518158, 33.442104, 31.482151> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072113, -0.123998, 0.989659,
		-0.501992, 0.861919, 0.071414,
		-0.861861, -0.491651, -0.124402,
		32.259602, 33.294609, 31.444830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.306473, 33.937279, 32.038414>,  <32.862904, 33.638763, 31.531912>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.306473, 33.937279, 32.038414> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197342, 33.566643, 31.934875>,  <32.131863, 33.344261, 31.872751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.197342, 33.566643, 31.934875>,  <32.306473, 33.937279, 32.038414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.197342, 33.566643, 31.934875> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031330, -0.260356, 0.965004,
		-0.961552, 0.271393, 0.042004,
		-0.272831, -0.926585, -0.258849,
		32.115494, 33.288666, 31.857222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.671810, 34.601276, 31.928518>,  <32.306473, 33.937279, 32.038414>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.671810, 34.601276, 31.928518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008247, 34.732239, 31.756302>,  <33.210110, 34.810814, 31.652971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.008247, 34.732239, 31.756302>,  <32.671810, 34.601276, 31.928518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.008247, 34.732239, 31.756302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439070, 0.878136, -0.189983,
		0.315874, 0.348833, 0.882349,
		0.841095, 0.327402, -0.430543,
		33.260574, 34.830460, 31.627138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573650, 35.251293, 32.001301>,  <32.671810, 34.601276, 31.928518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573650, 35.251293, 32.001301> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847794, 35.223461, 31.711353>,  <33.012280, 35.206760, 31.537384>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.847794, 35.223461, 31.711353>,  <32.573650, 35.251293, 32.001301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847794, 35.223461, 31.711353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250998, 0.911852, -0.324846,
		0.683578, 0.404578, 0.607484,
		0.685362, -0.069580, -0.724871,
		33.053402, 35.202587, 31.493893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711502, 35.977875, 31.978138>,  <32.573650, 35.251293, 32.001301>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711502, 35.977875, 31.978138> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789047, 35.810020, 31.623438>,  <32.835575, 35.709309, 31.410618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.789047, 35.810020, 31.623438>,  <32.711502, 35.977875, 31.978138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.789047, 35.810020, 31.623438> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410483, 0.786272, -0.461822,
		0.891023, 0.453525, -0.019826,
		0.193859, -0.419632, -0.886751,
		32.847206, 35.684132, 31.357412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.088333, 36.496399, 31.747780>,  <32.711502, 35.977875, 31.978138>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.088333, 36.496399, 31.747780> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858864, 36.290352, 31.493048>,  <32.721180, 36.166725, 31.340208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.858864, 36.290352, 31.493048>,  <33.088333, 36.496399, 31.747780>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.858864, 36.290352, 31.493048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437055, 0.850068, -0.293884,
		0.692733, 0.109736, -0.712796,
		-0.573675, -0.515114, -0.636831,
		32.686760, 36.135818, 31.301998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129208, 37.203938, 31.617556>,  <33.088333, 36.496399, 31.747780>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129208, 37.203938, 31.617556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050980, 36.980881, 31.294870>,  <33.004044, 36.847046, 31.101259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.050980, 36.980881, 31.294870>,  <33.129208, 37.203938, 31.617556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050980, 36.980881, 31.294870> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391318, 0.798645, -0.457205,
		0.899235, 0.226267, -0.374407,
		-0.195568, -0.557647, -0.806712,
		32.992310, 36.813587, 31.052856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196022, 37.640503, 31.073143>,  <33.129208, 37.203938, 31.617556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196022, 37.640503, 31.073143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987286, 37.346725, 30.899582>,  <32.862045, 37.170460, 30.795444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.987286, 37.346725, 30.899582>,  <33.196022, 37.640503, 31.073143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.987286, 37.346725, 30.899582> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279746, 0.627863, -0.726313,
		0.805869, -0.257637, -0.533103,
		-0.521841, -0.734446, -0.433902,
		32.830734, 37.126392, 30.769411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293568, 37.633015, 30.340895>,  <33.196022, 37.640503, 31.073143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293568, 37.633015, 30.340895> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941887, 37.443947, 30.364874>,  <32.730881, 37.330505, 30.379261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.941887, 37.443947, 30.364874>,  <33.293568, 37.633015, 30.340895>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941887, 37.443947, 30.364874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363594, 0.584290, -0.725538,
		0.307912, -0.659688, -0.685566,
		-0.879198, -0.472670, 0.059949,
		32.678127, 37.302147, 30.382858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141018, 37.432255, 29.718267>,  <33.293568, 37.633015, 30.340895>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141018, 37.432255, 29.718267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785980, 37.428814, 29.902483>,  <32.572956, 37.426750, 30.013012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.785980, 37.428814, 29.902483>,  <33.141018, 37.432255, 29.718267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785980, 37.428814, 29.902483> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423347, 0.409246, -0.808267,
		-0.181518, -0.912384, -0.366888,
		-0.887597, -0.008606, 0.460540,
		32.519703, 37.426231, 30.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.611874, 37.129910, 29.238539>,  <33.141018, 37.432255, 29.718267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.611874, 37.129910, 29.238539> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411812, 37.359035, 29.498301>,  <32.291775, 37.496510, 29.654158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411812, 37.359035, 29.498301>,  <32.611874, 37.129910, 29.238539>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411812, 37.359035, 29.498301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372412, 0.534761, -0.758512,
		-0.781765, -0.621218, -0.054138,
		-0.500153, 0.572816, 0.649407,
		32.261765, 37.530880, 29.693123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.940079, 37.137428, 28.975750>,  <32.611874, 37.129910, 29.238539>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.940079, 37.137428, 28.975750> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933554, 37.459366, 29.213053>,  <31.929640, 37.652531, 29.355434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.933554, 37.459366, 29.213053>,  <31.940079, 37.137428, 28.975750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933554, 37.459366, 29.213053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325983, 0.556638, -0.764126,
		-0.945235, -0.205856, 0.253287,
		-0.016310, 0.804846, 0.593259,
		31.928661, 37.700821, 29.391031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.366064, 37.555969, 28.732183>,  <31.940079, 37.137428, 28.975750>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.366064, 37.555969, 28.732183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562119, 37.815327, 28.965199>,  <31.679752, 37.970943, 29.105007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.562119, 37.815327, 28.965199>,  <31.366064, 37.555969, 28.732183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.562119, 37.815327, 28.965199> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257661, 0.746228, -0.613803,
		-0.832693, 0.150751, 0.532820,
		0.490137, 0.648396, 0.582536,
		31.709160, 38.009846, 29.139959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907797, 38.027695, 28.979191>,  <31.366064, 37.555969, 28.732183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907797, 38.027695, 28.979191> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267267, 38.203033, 28.985336>,  <31.482950, 38.308235, 28.989023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.267267, 38.203033, 28.985336>,  <30.907797, 38.027695, 28.979191>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.267267, 38.203033, 28.985336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305550, 0.650788, -0.695064,
		-0.314676, 0.619942, 0.718784,
		0.898676, 0.438344, 0.015364,
		31.536869, 38.334538, 28.989944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.763138, 38.792274, 28.935873>,  <30.907797, 38.027695, 28.979191>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.763138, 38.792274, 28.935873> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.134550, 38.700596, 28.819046>,  <31.357397, 38.645588, 28.748951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.134550, 38.700596, 28.819046>,  <30.763138, 38.792274, 28.935873>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.134550, 38.700596, 28.819046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149291, 0.489777, -0.858971,
		0.339919, 0.841183, 0.420556,
		0.928530, -0.229195, -0.292065,
		31.413109, 38.631836, 28.731426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.062321, 39.358795, 28.563669>,  <30.763138, 38.792274, 28.935873>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.062321, 39.358795, 28.563669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323854, 39.081528, 28.442329>,  <31.480776, 38.915169, 28.369526>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.323854, 39.081528, 28.442329>,  <31.062321, 39.358795, 28.563669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.323854, 39.081528, 28.442329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025332, 0.380642, -0.924376,
		0.756212, 0.612075, 0.231319,
		0.653836, -0.693164, -0.303351,
		31.520006, 38.873577, 28.351324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501316, 39.736702, 28.115389>,  <31.062321, 39.358795, 28.563669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501316, 39.736702, 28.115389> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586304, 39.354519, 28.033451>,  <31.637297, 39.125210, 27.984289>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.586304, 39.354519, 28.033451>,  <31.501316, 39.736702, 28.115389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.586304, 39.354519, 28.033451> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187916, 0.165765, -0.968096,
		0.958929, 0.244183, -0.144326,
		0.212469, -0.955456, -0.204843,
		31.650043, 39.067883, 27.971998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.951973, 39.810444, 27.587667>,  <31.501316, 39.736702, 28.115389>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.951973, 39.810444, 27.587667> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811668, 39.438705, 27.541578>,  <31.727486, 39.215660, 27.513926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.811668, 39.438705, 27.541578>,  <31.951973, 39.810444, 27.587667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.811668, 39.438705, 27.541578> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071062, 0.149098, -0.986266,
		0.933765, -0.337757, -0.118340,
		-0.350762, -0.929349, -0.115221,
		31.706440, 39.159901, 27.507011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365696, 39.527626, 27.057051>,  <31.951973, 39.810444, 27.587667>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365696, 39.527626, 27.057051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019077, 39.328941, 27.076498>,  <31.811106, 39.209728, 27.088167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.019077, 39.328941, 27.076498>,  <32.365696, 39.527626, 27.057051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.019077, 39.328941, 27.076498> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119351, 0.111647, -0.986555,
		0.484608, -0.860703, -0.156031,
		-0.866551, -0.496715, 0.048620,
		31.759111, 39.179928, 27.091084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.422256, 39.202160, 26.383070>,  <32.365696, 39.527626, 27.057051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.422256, 39.202160, 26.383070> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048573, 39.163876, 26.520523>,  <31.824362, 39.140903, 26.602995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048573, 39.163876, 26.520523>,  <32.422256, 39.202160, 26.383070>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048573, 39.163876, 26.520523> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356580, 0.224417, -0.906911,
		0.009687, -0.969782, -0.243783,
		-0.934214, -0.095713, 0.343631,
		31.768309, 39.135162, 26.623613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017330, 38.786003, 25.849201>,  <32.422256, 39.202160, 26.383070>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017330, 38.786003, 25.849201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754145, 39.005081, 26.055933>,  <31.596233, 39.136528, 26.179972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.754145, 39.005081, 26.055933>,  <32.017330, 38.786003, 25.849201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754145, 39.005081, 26.055933> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412852, 0.311625, -0.855829,
		-0.629790, -0.776479, 0.021079,
		-0.657965, 0.547695, 0.516829,
		31.556755, 39.169388, 26.210981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301020, 38.559929, 25.584694>,  <32.017330, 38.786003, 25.849201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301020, 38.559929, 25.584694> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209513, 38.891884, 25.788242>,  <31.154610, 39.091057, 25.910372>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.209513, 38.891884, 25.788242>,  <31.301020, 38.559929, 25.584694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.209513, 38.891884, 25.788242> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464116, 0.366519, -0.806387,
		-0.855724, -0.420648, 0.301318,
		-0.228766, 0.829891, 0.508869,
		31.140882, 39.140850, 25.940903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.563828, 38.541351, 25.605595>,  <31.301020, 38.559929, 25.584694>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.563828, 38.541351, 25.605595> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667812, 38.918934, 25.686943>,  <30.730204, 39.145485, 25.735752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.667812, 38.918934, 25.686943>,  <30.563828, 38.541351, 25.605595>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.667812, 38.918934, 25.686943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479985, 0.309074, -0.821028,
		-0.837874, 0.115823, 0.533434,
		0.259964, 0.943959, 0.203372,
		30.745802, 39.202122, 25.747955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.959068, 39.021809, 25.524443>,  <30.563828, 38.541351, 25.605595>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.959068, 39.021809, 25.524443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273071, 39.268856, 25.505217>,  <30.461473, 39.417084, 25.493681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.273071, 39.268856, 25.505217>,  <29.959068, 39.021809, 25.524443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.273071, 39.268856, 25.505217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397347, 0.442473, -0.803948,
		-0.475264, 0.650206, 0.592754,
		0.785010, 0.617616, -0.048066,
		30.508574, 39.454140, 25.490797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.755480, 39.736794, 25.608080>,  <29.959068, 39.021809, 25.524443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.755480, 39.736794, 25.608080> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102272, 39.796169, 25.417791>,  <30.310347, 39.831795, 25.303617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.102272, 39.796169, 25.417791>,  <29.755480, 39.736794, 25.608080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102272, 39.796169, 25.417791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472635, 0.547577, -0.690490,
		0.157999, 0.823484, 0.544896,
		0.866979, 0.148440, -0.475723,
		30.362366, 39.840702, 25.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684231, 40.420700, 25.314598>,  <29.755480, 39.736794, 25.608080>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684231, 40.420700, 25.314598> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981155, 40.266785, 25.095179>,  <30.159311, 40.174435, 24.963528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.981155, 40.266785, 25.095179>,  <29.684231, 40.420700, 25.314598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.981155, 40.266785, 25.095179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361573, 0.459208, -0.811414,
		0.564123, 0.800664, 0.201746,
		0.742314, -0.384792, -0.548549,
		30.203850, 40.151348, 24.930614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.111626, 41.013546, 25.011450>,  <29.684231, 40.420700, 25.314598>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.111626, 41.013546, 25.011450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.142908, 40.677689, 24.796457>,  <30.161678, 40.476173, 24.667461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.142908, 40.677689, 24.796457>,  <30.111626, 41.013546, 25.011450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.142908, 40.677689, 24.796457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362085, 0.478394, -0.800020,
		0.928858, 0.257183, -0.266607,
		0.078208, -0.839640, -0.537483,
		30.166370, 40.425797, 24.635212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.586859, 41.191566, 24.516903>,  <30.111626, 41.013546, 25.011450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.586859, 41.191566, 24.516903> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384033, 40.884548, 24.360054>,  <30.262337, 40.700336, 24.265945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.384033, 40.884548, 24.360054>,  <30.586859, 41.191566, 24.516903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.384033, 40.884548, 24.360054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213390, 0.552577, -0.805682,
		0.835075, -0.324858, -0.443979,
		-0.507065, -0.767545, -0.392122,
		30.231915, 40.654285, 24.242418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.760283, 41.300568, 23.912251>,  <30.586859, 41.191566, 24.516903>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.760283, 41.300568, 23.912251> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.453913, 41.047829, 23.864700>,  <30.270090, 40.896187, 23.836170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.453913, 41.047829, 23.864700>,  <30.760283, 41.300568, 23.912251>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.453913, 41.047829, 23.864700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216696, 0.427779, -0.877524,
		0.605311, -0.646357, -0.464565,
		-0.765925, -0.631844, -0.118876,
		30.224134, 40.858276, 23.829037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.758152, 40.941750, 23.194256>,  <30.760283, 41.300568, 23.912251>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.758152, 40.941750, 23.194256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380148, 40.937550, 23.325005>,  <30.153345, 40.935028, 23.403454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.380148, 40.937550, 23.325005>,  <30.758152, 40.941750, 23.194256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.380148, 40.937550, 23.325005> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292425, 0.474665, -0.830169,
		-0.146438, -0.880104, -0.451633,
		-0.945010, -0.010501, 0.326873,
		30.096645, 40.934399, 23.423067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.101107, 40.613079, 22.598680>,  <30.758152, 40.941750, 23.194256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.101107, 40.613079, 22.598680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426428, 40.791729, 22.449516>,  <31.621620, 40.898918, 22.360018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.426428, 40.791729, 22.449516>,  <31.101107, 40.613079, 22.598680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.426428, 40.791729, 22.449516> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524696, -0.285994, 0.801812,
		0.251458, -0.847782, -0.466942,
		0.813304, 0.446624, -0.372912,
		31.670420, 40.925716, 22.337643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.612326, 40.093300, 22.529177>,  <31.101107, 40.613079, 22.598680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.612326, 40.093300, 22.529177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794111, 40.449352, 22.542580>,  <31.903183, 40.662983, 22.550621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.794111, 40.449352, 22.542580>,  <31.612326, 40.093300, 22.529177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.794111, 40.449352, 22.542580> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611272, -0.339007, 0.715136,
		0.647927, -0.304522, -0.698181,
		0.454464, 0.890135, 0.033506,
		31.930450, 40.716393, 22.552631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300423, 39.929352, 22.472946>,  <31.612326, 40.093300, 22.529177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300423, 39.929352, 22.472946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268253, 40.287804, 22.647524>,  <32.248951, 40.502876, 22.752270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.268253, 40.287804, 22.647524>,  <32.300423, 39.929352, 22.472946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268253, 40.287804, 22.647524> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646158, -0.286526, 0.707378,
		0.758955, 0.338899, -0.555999,
		-0.080422, 0.896131, 0.436442,
		32.244125, 40.556644, 22.778456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014446, 40.167984, 22.712786>,  <32.300423, 39.929352, 22.472946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014446, 40.167984, 22.712786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780479, 40.388725, 22.950550>,  <32.640099, 40.521172, 23.093208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.780479, 40.388725, 22.950550>,  <33.014446, 40.167984, 22.712786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.780479, 40.388725, 22.950550> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730801, 0.040665, 0.681378,
		0.351851, 0.832948, -0.427082,
		-0.584920, 0.551856, 0.594411,
		32.605003, 40.554283, 23.128874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.413803, 40.697575, 23.028255>,  <33.014446, 40.167984, 22.712786>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.413803, 40.697575, 23.028255> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101715, 40.677238, 23.277628>,  <32.914463, 40.665035, 23.427252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.101715, 40.677238, 23.277628>,  <33.413803, 40.697575, 23.028255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.101715, 40.677238, 23.277628> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624084, 0.003809, 0.781348,
		-0.042098, 0.998700, 0.028757,
		-0.780222, -0.050840, 0.623433,
		32.867649, 40.661987, 23.464657>
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
