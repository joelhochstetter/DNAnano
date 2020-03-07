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
	<2.574474, 1.454045, 1.351137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366924, 1.782570, 1.256298>,  <2.242394, 1.979685, 1.199395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.366924, 1.782570, 1.256298>,  <2.574474, 1.454045, 1.351137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.366924, 1.782570, 1.256298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264109, 0.109768, 0.958226,
		0.813029, 0.559819, 0.159960,
		-0.518875, 0.821312, -0.237098,
		2.211262, 2.028964, 1.185169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.678707, 1.858786, 1.912105>,  <2.574474, 1.454045, 1.351137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.678707, 1.858786, 1.912105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362068, 2.009380, 1.719593>,  <2.172085, 2.099737, 1.604086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.362068, 2.009380, 1.719593>,  <2.678707, 1.858786, 1.912105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.362068, 2.009380, 1.719593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319124, 0.416960, 0.851061,
		0.521088, 0.827286, -0.209918,
		-0.791598, 0.376487, -0.481280,
		2.124589, 2.122326, 1.575209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.660259, 2.486920, 1.960612>,  <2.678707, 1.858786, 1.912105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.660259, 2.486920, 1.960612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300007, 2.313107, 1.963379>,  <2.083856, 2.208818, 1.965039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.300007, 2.313107, 1.963379>,  <2.660259, 2.486920, 1.960612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.300007, 2.313107, 1.963379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201741, 0.432127, 0.878958,
		-0.384925, 0.790219, -0.476850,
		-0.900629, -0.434533, 0.006917,
		2.029818, 2.182746, 1.965454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.214938, 2.861344, 2.239249>,  <2.660259, 2.486920, 1.960612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.214938, 2.861344, 2.239249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.009251, 2.529865, 2.327648>,  <1.885838, 2.330978, 2.380688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.009251, 2.529865, 2.327648>,  <2.214938, 2.861344, 2.239249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.009251, 2.529865, 2.327648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182402, 0.357449, 0.915948,
		-0.838038, 0.430687, -0.334963,
		-0.514219, -0.828697, 0.220998,
		1.854985, 2.281256, 2.393947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.550168, 3.045739, 2.576550>,  <2.214938, 2.861344, 2.239249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.550168, 3.045739, 2.576550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.602337, 2.665962, 2.690777>,  <1.633638, 2.438096, 2.759313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.602337, 2.665962, 2.690777>,  <1.550168, 3.045739, 2.576550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.602337, 2.665962, 2.690777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263814, 0.244410, 0.933095,
		-0.955716, -0.197032, -0.218600,
		0.130421, -0.949443, 0.285567,
		1.641463, 2.381129, 2.776447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.044573, 2.971858, 3.057604>,  <1.550168, 3.045739, 2.576550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.044573, 2.971858, 3.057604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.312263, 2.684544, 3.133709>,  <1.472878, 2.512155, 3.179372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.312263, 2.684544, 3.133709>,  <1.044573, 2.971858, 3.057604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.312263, 2.684544, 3.133709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053636, 0.208689, 0.976510,
		-0.741120, -0.663711, 0.101135,
		0.669227, -0.718287, 0.190262,
		1.513031, 2.469058, 3.190788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.861660, 2.783088, 3.671418>,  <1.044573, 2.971858, 3.057604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.861660, 2.783088, 3.671418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225964, 2.618217, 3.661385>,  <1.444546, 2.519295, 3.655365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225964, 2.618217, 3.661385>,  <0.861660, 2.783088, 3.671418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225964, 2.618217, 3.661385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093887, 0.147539, 0.984590,
		-0.402124, -0.899079, 0.173070,
		0.910758, -0.412177, -0.025083,
		1.499191, 2.494565, 3.653860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.915138, 2.317465, 4.241933>,  <0.861660, 2.783088, 3.671418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.915138, 2.317465, 4.241933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.294514, 2.402557, 4.147945>,  <1.522139, 2.453613, 4.091553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.294514, 2.402557, 4.147945>,  <0.915138, 2.317465, 4.241933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.294514, 2.402557, 4.147945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169394, 0.286376, 0.943024,
		0.267888, -0.934205, 0.235578,
		0.948442, 0.212719, -0.234966,
		1.579045, 2.466376, 4.077455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.641893, 3.583804, 5.130796> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937521, 3.314606, 5.119114>,  <2.114898, 3.153087, 5.112105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.937521, 3.314606, 5.119114>,  <1.641893, 3.583804, 5.130796>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.937521, 3.314606, 5.119114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172398, -0.147058, -0.973988,
		0.651195, 0.724880, -0.224710,
		0.739070, -0.672996, -0.029205,
		2.159242, 3.112707, 5.110353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.915198, 3.640371, 4.483675>,  <1.641893, 3.583804, 5.130796>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.915198, 3.640371, 4.483675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047889, 3.283638, 4.606697>,  <2.127503, 3.069598, 4.680511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.047889, 3.283638, 4.606697>,  <1.915198, 3.640371, 4.483675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.047889, 3.283638, 4.606697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052699, -0.307989, -0.949929,
		0.941903, 0.331324, -0.055170,
		0.331726, -0.891834, 0.307556,
		2.147407, 3.016088, 4.698964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.491293, 3.383116, 3.998139>,  <1.915198, 3.640371, 4.483675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.491293, 3.383116, 3.998139> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.313574, 3.075600, 4.182121>,  <2.206942, 2.891090, 4.292511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.313574, 3.075600, 4.182121>,  <2.491293, 3.383116, 3.998139>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.313574, 3.075600, 4.182121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155124, -0.439639, -0.884678,
		0.882347, -0.464410, 0.076073,
		-0.444298, -0.768792, 0.459955,
		2.180285, 2.844962, 4.320108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.742090, 2.754963, 3.728745>,  <2.491293, 3.383116, 3.998139>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.742090, 2.754963, 3.728745> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.375806, 2.660957, 3.859123>,  <2.156035, 2.604554, 3.937351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.375806, 2.660957, 3.859123>,  <2.742090, 2.754963, 3.728745>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.375806, 2.660957, 3.859123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159328, -0.532310, -0.831421,
		0.368901, -0.813274, 0.449998,
		-0.915711, -0.235015, 0.325947,
		2.101093, 2.590453, 3.956907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.705842, 2.044726, 3.648121>,  <2.742090, 2.754963, 3.728745>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.705842, 2.044726, 3.648121> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325772, 2.169159, 3.640167>,  <2.097730, 2.243819, 3.635395>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.325772, 2.169159, 3.640167>,  <2.705842, 2.044726, 3.648121>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.325772, 2.169159, 3.640167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162530, -0.548849, -0.819969,
		-0.265991, -0.775882, 0.572063,
		-0.950175, 0.311082, -0.019885,
		2.040720, 2.262484, 3.634202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.290581, 1.505182, 3.575108>,  <2.705842, 2.044726, 3.648121>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.290581, 1.505182, 3.575108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.061880, 1.808571, 3.450005>,  <1.924659, 1.990604, 3.374943>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.061880, 1.808571, 3.450005>,  <2.290581, 1.505182, 3.575108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.061880, 1.808571, 3.450005> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304633, -0.550227, -0.777463,
		-0.761773, -0.349240, 0.545650,
		-0.571752, 0.758474, -0.312758,
		1.890354, 2.036113, 3.356177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.838506, 1.164752, 3.218069>,  <2.290581, 1.505182, 3.575108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.838506, 1.164752, 3.218069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.789250, 1.539322, 3.086647>,  <1.759697, 1.764064, 3.007794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.789250, 1.539322, 3.086647>,  <1.838506, 1.164752, 3.218069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.789250, 1.539322, 3.086647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275181, -0.350310, -0.895298,
		-0.953474, -0.019834, 0.300823,
		-0.123139, 0.936424, -0.328554,
		1.752309, 1.820249, 2.988081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.282361, 1.169962, 2.815858>,  <1.838506, 1.164752, 3.218069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.282361, 1.169962, 2.815858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.464460, 1.491608, 2.662941>,  <1.573720, 1.684595, 2.571191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.464460, 1.491608, 2.662941>,  <1.282361, 1.169962, 2.815858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.464460, 1.491608, 2.662941> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336832, -0.241915, -0.909957,
		-0.824192, 0.543025, 0.160720,
		0.455249, 0.804115, -0.382293,
		1.601035, 1.732842, 2.548253>
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
