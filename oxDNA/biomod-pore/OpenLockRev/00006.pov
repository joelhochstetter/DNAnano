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
	location <35, 92.5046, 58.4545>
	look_at <35, 26.874, 46.4577>
	direction <0, -65.6306, -11.9968>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 92.5046, 58.4545>;
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
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<40.234497, 34.147747, 48.469650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138622, 34.438400, 48.727192>,  <40.081097, 34.612793, 48.881718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138622, 34.438400, 48.727192>,  <40.234497, 34.147747, 48.469650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138622, 34.438400, 48.727192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970385, 0.158793, 0.182038,
		0.030035, 0.668420, -0.743177,
		-0.239689, 0.726636, 0.643855,
		40.066715, 34.656391, 48.920349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.465912, 34.822529, 48.218010>,  <40.234497, 34.147747, 48.469650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.465912, 34.822529, 48.218010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449875, 34.775494, 48.614910>,  <40.440254, 34.747272, 48.853050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.449875, 34.775494, 48.614910>,  <40.465912, 34.822529, 48.218010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.449875, 34.775494, 48.614910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998923, 0.018481, 0.042549,
		-0.023341, 0.992891, 0.116719,
		-0.040089, -0.117586, 0.992253,
		40.437847, 34.740219, 48.912586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.922653, 35.267498, 48.439945>,  <40.465912, 34.822529, 48.218010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.922653, 35.267498, 48.439945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879555, 35.042179, 48.767624>,  <40.853695, 34.906986, 48.964230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.879555, 35.042179, 48.767624>,  <40.922653, 35.267498, 48.439945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.879555, 35.042179, 48.767624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946974, 0.192737, 0.257085,
		-0.302706, 0.803459, 0.512662,
		-0.107749, -0.563299, 0.819197,
		40.847229, 34.873188, 49.013382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.180168, 35.651310, 48.960518>,  <40.922653, 35.267498, 48.439945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.180168, 35.651310, 48.960518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149273, 35.302597, 49.154026>,  <41.130733, 35.093369, 49.270130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.149273, 35.302597, 49.154026>,  <41.180168, 35.651310, 48.960518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.149273, 35.302597, 49.154026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894251, 0.153975, 0.420247,
		-0.440851, 0.465075, 0.767695,
		-0.077241, -0.871778, 0.483774,
		41.126102, 35.041065, 49.299160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.384792, 35.770771, 49.710003>,  <41.180168, 35.651310, 48.960518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.384792, 35.770771, 49.710003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 35.378384, 49.638821>,  <41.434494, 35.142952, 49.596111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.415855, 35.378384, 49.638821>,  <41.384792, 35.770771, 49.710003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415855, 35.378384, 49.638821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906885, -0.004642, 0.421353,
		-0.414161, -0.194104, 0.889266,
		0.077658, -0.980970, -0.177952,
		41.439152, 35.084091, 49.585434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.535061, 35.370903, 50.396488>,  <41.384792, 35.770771, 49.710003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.535061, 35.370903, 50.396488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692673, 35.142544, 50.108372>,  <41.787239, 35.005527, 49.935501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.692673, 35.142544, 50.108372>,  <41.535061, 35.370903, 50.396488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692673, 35.142544, 50.108372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868761, -0.024454, 0.494628,
		-0.299998, -0.820655, 0.486341,
		0.394025, -0.570901, -0.720289,
		41.810879, 34.971272, 49.892284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816090, 34.779358, 50.769810>,  <41.535061, 35.370903, 50.396488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816090, 34.779358, 50.769810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994202, 34.760910, 50.412128>,  <42.101070, 34.749840, 50.197521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.994202, 34.760910, 50.412128>,  <41.816090, 34.779358, 50.769810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.994202, 34.760910, 50.412128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859958, -0.256139, 0.441436,
		-0.249395, -0.965540, -0.074400,
		0.445281, -0.046111, -0.894203,
		42.127785, 34.747074, 50.143867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.265285, 34.201134, 50.728931>,  <41.816090, 34.779358, 50.769810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.265285, 34.201134, 50.728931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417747, 34.429157, 50.437794>,  <42.509224, 34.565971, 50.263111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417747, 34.429157, 50.437794>,  <42.265285, 34.201134, 50.728931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417747, 34.429157, 50.437794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918765, -0.145930, 0.366844,
		0.102907, -0.808543, -0.579368,
		0.381157, 0.570055, -0.727844,
		42.532093, 34.600174, 50.219440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826191, 33.799633, 50.341637>,  <42.265285, 34.201134, 50.728931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826191, 33.799633, 50.341637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883125, 34.194485, 50.312492>,  <42.917286, 34.431396, 50.295006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.883125, 34.194485, 50.312492>,  <42.826191, 33.799633, 50.341637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.883125, 34.194485, 50.312492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969369, -0.124130, 0.211935,
		0.200163, -0.100799, -0.974564,
		0.142335, 0.987133, -0.072865,
		42.925827, 34.490623, 50.290634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506382, 33.740917, 50.080521>,  <42.826191, 33.799633, 50.341637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506382, 33.740917, 50.080521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449162, 34.125343, 50.175079>,  <43.414829, 34.355999, 50.231815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449162, 34.125343, 50.175079>,  <43.506382, 33.740917, 50.080521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449162, 34.125343, 50.175079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985608, 0.116592, 0.122403,
		0.090075, 0.250509, -0.963915,
		-0.143048, 0.961068, 0.236401,
		43.406246, 34.413662, 50.245998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.202576, 34.007420, 50.007442>,  <43.506382, 33.740917, 50.080521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.202576, 34.007420, 50.007442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028614, 34.339203, 50.147648>,  <43.924236, 34.538273, 50.231773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.028614, 34.339203, 50.147648>,  <44.202576, 34.007420, 50.007442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.028614, 34.339203, 50.147648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881130, 0.311744, 0.355564,
		0.185653, 0.463486, -0.866437,
		-0.434906, 0.829455, 0.350515,
		43.898144, 34.588039, 50.252804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.426895, 34.695469, 49.661392>,  <44.202576, 34.007420, 50.007442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.426895, 34.695469, 49.661392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311813, 34.756775, 50.039543>,  <44.242764, 34.793556, 50.266434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311813, 34.756775, 50.039543>,  <44.426895, 34.695469, 49.661392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311813, 34.756775, 50.039543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.921399, 0.313564, 0.229568,
		-0.261252, 0.937117, -0.231429,
		-0.287700, 0.153263, 0.945378,
		44.225502, 34.802753, 50.323158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.644947, 35.364483, 49.845810>,  <44.426895, 34.695469, 49.661392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.644947, 35.364483, 49.845810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602551, 35.157749, 50.185612>,  <44.577114, 35.033710, 50.389492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.602551, 35.157749, 50.185612>,  <44.644947, 35.364483, 49.845810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.602551, 35.157749, 50.185612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877525, 0.353186, 0.324361,
		-0.467672, 0.779836, 0.416099,
		-0.105988, -0.516831, 0.849501,
		44.570755, 35.002701, 50.440460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.064785, 35.765350, 50.189171>,  <44.644947, 35.364483, 49.845810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.064785, 35.765350, 50.189171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998463, 35.459652, 50.438469>,  <44.958668, 35.276234, 50.588047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.998463, 35.459652, 50.438469>,  <45.064785, 35.765350, 50.189171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.998463, 35.459652, 50.438469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872659, 0.180653, 0.453686,
		-0.459320, 0.619106, 0.636972,
		-0.165809, -0.764246, 0.623246,
		44.948719, 35.230377, 50.625443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.119877, 35.965954, 50.887718>,  <45.064785, 35.765350, 50.189171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.119877, 35.965954, 50.887718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170593, 35.570721, 50.922615>,  <45.201023, 35.333580, 50.943554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.170593, 35.570721, 50.922615>,  <45.119877, 35.965954, 50.887718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.170593, 35.570721, 50.922615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852421, 0.153509, 0.499814,
		-0.507252, 0.010995, 0.861728,
		0.126788, -0.988086, 0.087240,
		45.208630, 35.274296, 50.948788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.282074, 35.916801, 51.530830>,  <45.119877, 35.965954, 50.887718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.282074, 35.916801, 51.530830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380394, 35.553436, 51.395550>,  <45.439384, 35.335419, 51.314381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.380394, 35.553436, 51.395550>,  <45.282074, 35.916801, 51.530830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.380394, 35.553436, 51.395550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781085, -0.020995, 0.624072,
		-0.574013, -0.417557, 0.704383,
		0.245797, -0.908408, -0.338199,
		45.454132, 35.280914, 51.294090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394173, 35.516663, 52.053360>,  <45.282074, 35.916801, 51.530830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394173, 35.516663, 52.053360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611008, 35.365421, 51.753178>,  <45.741108, 35.274677, 51.573071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.611008, 35.365421, 51.753178>,  <45.394173, 35.516663, 52.053360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.611008, 35.365421, 51.753178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800417, -0.039607, 0.598133,
		-0.255880, -0.924915, 0.281170,
		0.542086, -0.378104, -0.750453,
		45.773632, 35.251991, 51.528042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.803841, 34.976913, 52.389797>,  <45.394173, 35.516663, 52.053360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.803841, 34.976913, 52.389797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988522, 35.025352, 52.038303>,  <46.099331, 35.054417, 51.827408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.988522, 35.025352, 52.038303>,  <45.803841, 34.976913, 52.389797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.988522, 35.025352, 52.038303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885331, -0.124305, 0.448036,
		-0.054974, -0.984826, -0.164604,
		0.461699, 0.121099, -0.878731,
		46.127033, 35.061684, 51.774685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.420490, 34.475605, 52.412457>,  <45.803841, 34.976913, 52.389797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.420490, 34.475605, 52.412457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515533, 34.754204, 52.141624>,  <46.572559, 34.921364, 51.979126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.515533, 34.754204, 52.141624>,  <46.420490, 34.475605, 52.412457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.515533, 34.754204, 52.141624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965636, -0.093794, 0.242385,
		0.105313, -0.711407, -0.694845,
		0.237607, 0.696493, -0.677082,
		46.586815, 34.963150, 51.938499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.134048, 34.376995, 52.273983>,  <46.420490, 34.475605, 52.412457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.134048, 34.376995, 52.273983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057713, 34.747097, 52.142845>,  <47.011913, 34.969158, 52.064163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.057713, 34.747097, 52.142845>,  <47.134048, 34.376995, 52.273983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.057713, 34.747097, 52.142845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925114, 0.281204, 0.255126,
		0.328248, -0.254606, -0.909631,
		-0.190835, 0.925257, -0.327844,
		47.000462, 35.024673, 52.044491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.841888, 34.486160, 52.014538>,  <47.134048, 34.376995, 52.273983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.841888, 34.486160, 52.014538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637753, 34.828659, 52.046539>,  <47.515270, 35.034157, 52.065739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637753, 34.828659, 52.046539>,  <47.841888, 34.486160, 52.014538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637753, 34.828659, 52.046539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856122, 0.497047, 0.141419,
		0.081323, 0.140665, -0.986712,
		-0.510335, 0.856246, 0.080005,
		47.484653, 35.085533, 52.070541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<24.127844, 35.278522, 51.544418> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.216133, 34.992538, 51.809780>,  <24.269106, 34.820946, 51.968998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.216133, 34.992538, 51.809780>,  <24.127844, 35.278522, 51.544418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.216133, 34.992538, 51.809780> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962397, 0.049227, -0.267149,
		0.158343, 0.697428, 0.698943,
		0.220724, -0.714962, 0.663408,
		24.282351, 34.778049, 52.008804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.841970, 35.389534, 51.685627>,  <24.127844, 35.278522, 51.544418>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.841970, 35.389534, 51.685627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.774807, 35.031826, 51.851562>,  <24.734509, 34.817204, 51.951126>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.774807, 35.031826, 51.851562>,  <24.841970, 35.389534, 51.685627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.774807, 35.031826, 51.851562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973242, -0.217338, -0.074587,
		0.156862, 0.391218, 0.906831,
		-0.167909, -0.894266, 0.414842,
		24.724434, 34.763546, 51.976017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.288868, 35.373238, 52.217049>,  <24.841970, 35.389534, 51.685627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.288868, 35.373238, 52.217049> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.185276, 34.996304, 52.132259>,  <25.123121, 34.770142, 52.081387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.185276, 34.996304, 52.132259>,  <25.288868, 35.373238, 52.217049>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.185276, 34.996304, 52.132259> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965883, -0.252900, -0.055791,
		-0.001034, -0.219190, 0.975682,
		-0.258978, -0.942336, -0.211974,
		25.107582, 34.713604, 52.068668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.801596, 35.029613, 52.644344>,  <25.288868, 35.373238, 52.217049>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.801596, 35.029613, 52.644344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.694733, 34.754223, 52.374641>,  <25.630615, 34.588989, 52.212822>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.694733, 34.754223, 52.374641>,  <25.801596, 35.029613, 52.644344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.694733, 34.754223, 52.374641> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914081, -0.402576, 0.048884,
		-0.305095, -0.603264, 0.736879,
		-0.267160, -0.688481, -0.674255,
		25.614584, 34.547680, 52.172363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.907967, 34.374493, 52.798180>,  <25.801596, 35.029613, 52.644344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.907967, 34.374493, 52.798180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.905821, 34.346951, 52.399136>,  <25.904533, 34.330425, 52.159710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.905821, 34.346951, 52.399136>,  <25.907967, 34.374493, 52.798180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.905821, 34.346951, 52.399136> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895201, -0.444909, 0.025896,
		-0.445630, -0.892924, 0.064029,
		-0.005364, -0.068859, -0.997612,
		25.904211, 34.326294, 52.099854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.305538, 33.679413, 52.631401>,  <25.907967, 34.374493, 52.798180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.305538, 33.679413, 52.631401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.295696, 33.870678, 52.280231>,  <26.289791, 33.985439, 52.069530>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.295696, 33.870678, 52.280231>,  <26.305538, 33.679413, 52.631401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.295696, 33.870678, 52.280231> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925137, -0.321900, -0.201253,
		-0.378836, -0.817153, -0.434448,
		-0.024605, 0.478166, -0.877925,
		26.288315, 34.014126, 52.016853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.409016, 33.159088, 52.153400>,  <26.305538, 33.679413, 52.631401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.409016, 33.159088, 52.153400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.517141, 33.514706, 52.005600>,  <26.582016, 33.728077, 51.916920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.517141, 33.514706, 52.005600>,  <26.409016, 33.159088, 52.153400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.517141, 33.514706, 52.005600> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941512, -0.324308, -0.091537,
		-0.201211, -0.323142, -0.924713,
		0.270313, 0.889046, -0.369497,
		26.598234, 33.781418, 51.894753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.824543, 33.077351, 51.499149>,  <26.409016, 33.159088, 52.153400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.824543, 33.077351, 51.499149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.902157, 33.456650, 51.599686>,  <26.948725, 33.684231, 51.660007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.902157, 33.456650, 51.599686>,  <26.824543, 33.077351, 51.499149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.902157, 33.456650, 51.599686> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975934, -0.160598, -0.147513,
		-0.099514, 0.273918, -0.956591,
		0.194033, 0.948250, 0.251344,
		26.960367, 33.741123, 51.675087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.094656, 33.448029, 50.919506>,  <26.824543, 33.077351, 51.499149>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.094656, 33.448029, 50.919506> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.215345, 33.658390, 51.237595>,  <27.287760, 33.784607, 51.428448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.215345, 33.658390, 51.237595>,  <27.094656, 33.448029, 50.919506>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215345, 33.658390, 51.237595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914068, 0.077521, -0.398082,
		-0.271001, 0.847002, -0.457325,
		0.301724, 0.525907, 0.795226,
		27.305862, 33.816162, 51.476162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356131, 33.946083, 50.673073>,  <27.094656, 33.448029, 50.919506>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356131, 33.946083, 50.673073> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534605, 33.947659, 51.031044>,  <27.641689, 33.948605, 51.245827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.534605, 33.947659, 51.031044>,  <27.356131, 33.946083, 50.673073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.534605, 33.947659, 51.031044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887156, 0.129666, -0.442879,
		-0.117785, 0.991550, 0.054364,
		0.446186, 0.003935, 0.894932,
		27.668461, 33.948837, 51.299522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.785582, 34.630978, 50.688808>,  <27.356131, 33.946083, 50.673073>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.785582, 34.630978, 50.688808> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937784, 34.388947, 50.968552>,  <28.029106, 34.243729, 51.136398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.937784, 34.388947, 50.968552>,  <27.785582, 34.630978, 50.688808>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.937784, 34.388947, 50.968552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910017, 0.379571, -0.166720,
		-0.164576, 0.699863, 0.695059,
		0.380505, -0.605077, 0.699355,
		28.051935, 34.207424, 51.178360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.249310, 35.058414, 51.066261>,  <27.785582, 34.630978, 50.688808>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.249310, 35.058414, 51.066261> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.365828, 34.686340, 51.155609>,  <28.435738, 34.463097, 51.209217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.365828, 34.686340, 51.155609>,  <28.249310, 35.058414, 51.066261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.365828, 34.686340, 51.155609> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955282, 0.270435, -0.119591,
		0.050835, 0.248217, 0.967370,
		0.291295, -0.930190, 0.223369,
		28.453217, 34.407284, 51.222618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.735079, 35.108063, 51.563171>,  <28.249310, 35.058414, 51.066261>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.735079, 35.108063, 51.563171> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.788918, 34.757561, 51.378105>,  <28.821220, 34.547260, 51.267067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.788918, 34.757561, 51.378105>,  <28.735079, 35.108063, 51.563171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.788918, 34.757561, 51.378105> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980243, 0.186041, -0.067180,
		0.144942, -0.444481, 0.883985,
		0.134597, -0.876257, -0.462664,
		28.829296, 34.494682, 51.239307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333447, 34.911469, 51.790974>,  <28.735079, 35.108063, 51.563171>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333447, 34.911469, 51.790974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314610, 34.637451, 51.500183>,  <29.303307, 34.473042, 51.325710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.314610, 34.637451, 51.500183>,  <29.333447, 34.911469, 51.790974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.314610, 34.637451, 51.500183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996114, 0.022012, -0.085270,
		0.074416, -0.728167, 0.681348,
		-0.047093, -0.685046, -0.726976,
		29.300482, 34.431938, 51.282089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.813105, 34.365883, 52.010422>,  <29.333447, 34.911469, 51.790974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.813105, 34.365883, 52.010422> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.744780, 34.331394, 51.617813>,  <29.703785, 34.310703, 51.382248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.744780, 34.331394, 51.617813>,  <29.813105, 34.365883, 52.010422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.744780, 34.331394, 51.617813> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960980, 0.205401, -0.185280,
		0.217581, -0.974873, 0.047768,
		-0.170813, -0.086217, -0.981524,
		29.693535, 34.305531, 51.323357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316893, 33.989658, 51.755684>,  <29.813105, 34.365883, 52.010422>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316893, 33.989658, 51.755684> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213129, 34.142139, 51.400742>,  <30.150871, 34.233627, 51.187778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213129, 34.142139, 51.400742>,  <30.316893, 33.989658, 51.755684>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213129, 34.142139, 51.400742> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964045, 0.157059, -0.214360,
		0.057652, -0.911054, -0.408237,
		-0.259411, 0.381200, -0.887351,
		30.135305, 34.256500, 51.134537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.794350, 33.700577, 51.290253>,  <30.316893, 33.989658, 51.755684>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.794350, 33.700577, 51.290253> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649910, 34.015564, 51.090450>,  <30.563246, 34.204556, 50.970570>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.649910, 34.015564, 51.090450>,  <30.794350, 33.700577, 51.290253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649910, 34.015564, 51.090450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.928276, 0.252448, -0.273082,
		-0.088945, -0.562285, -0.822146,
		-0.361099, 0.787468, -0.499501,
		30.541580, 34.251804, 50.940601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025579, 33.603214, 50.662884>,  <30.794350, 33.700577, 51.290253>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025579, 33.603214, 50.662884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953146, 33.995255, 50.695419>,  <30.909685, 34.230476, 50.714939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.953146, 33.995255, 50.695419>,  <31.025579, 33.603214, 50.662884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.953146, 33.995255, 50.695419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945869, 0.196213, -0.258520,
		-0.269334, 0.030119, -0.962576,
		-0.181084, 0.980099, 0.081335,
		30.898821, 34.289284, 50.719818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.148352, 33.833477, 50.057602>,  <31.025579, 33.603214, 50.662884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.148352, 33.833477, 50.057602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185976, 34.152767, 50.295586>,  <31.208549, 34.344341, 50.438377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.185976, 34.152767, 50.295586>,  <31.148352, 33.833477, 50.057602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.185976, 34.152767, 50.295586> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942851, 0.120464, -0.310678,
		-0.319664, 0.590184, -0.741281,
		0.094059, 0.798230, 0.594964,
		31.214193, 34.392235, 50.474075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.461399, 34.344688, 49.602955>,  <31.148352, 33.833477, 50.057602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.461399, 34.344688, 49.602955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513294, 34.466122, 49.980526>,  <31.544432, 34.538982, 50.207069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.513294, 34.466122, 49.980526>,  <31.461399, 34.344688, 49.602955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.513294, 34.466122, 49.980526> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950693, 0.232363, -0.205402,
		-0.281692, 0.924037, -0.258469,
		0.129740, 0.303585, 0.943930,
		31.552216, 34.557198, 50.263706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.858051, 34.978790, 49.540497>,  <31.461399, 34.344688, 49.602955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.858051, 34.978790, 49.540497> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931383, 34.834824, 49.906414>,  <31.975382, 34.748444, 50.125965>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.931383, 34.834824, 49.906414>,  <31.858051, 34.978790, 49.540497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931383, 34.834824, 49.906414> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981886, 0.112344, -0.152576,
		-0.047857, 0.926194, 0.373997,
		0.183331, -0.359920, 0.914793,
		31.986383, 34.726849, 50.180851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<23.809742, 35.007149, 34.962193> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.174107, 34.908680, 35.094643>,  <24.392725, 34.849598, 35.174110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.174107, 34.908680, 35.094643>,  <23.809742, 35.007149, 34.962193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.174107, 34.908680, 35.094643> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249827, 0.309616, 0.917455,
		-0.328374, -0.918442, 0.220531,
		0.910910, -0.246174, 0.331121,
		24.447380, 34.834827, 35.193977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.756792, 34.651295, 35.619236>,  <23.809742, 35.007149, 34.962193>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.756792, 34.651295, 35.619236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.126991, 34.802204, 35.605846>,  <24.349112, 34.892750, 35.597813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.126991, 34.802204, 35.605846>,  <23.756792, 34.651295, 35.619236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.126991, 34.802204, 35.605846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069963, 0.257153, 0.963835,
		0.372237, -0.889684, 0.264389,
		0.925497, 0.377272, -0.033476,
		24.404640, 34.915386, 35.595802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.178505, 34.409546, 36.197937>,  <23.756792, 34.651295, 35.619236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.178505, 34.409546, 36.197937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.388689, 34.724190, 36.068241>,  <24.514799, 34.912975, 35.990425>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.388689, 34.724190, 36.068241>,  <24.178505, 34.409546, 36.197937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.388689, 34.724190, 36.068241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262106, 0.212899, 0.941262,
		0.809439, -0.579582, -0.094306,
		0.525461, 0.786612, -0.324241,
		24.546328, 34.960175, 35.970970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.875872, 34.399376, 36.529545>,  <24.178505, 34.409546, 36.197937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.875872, 34.399376, 36.529545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.768167, 34.772923, 36.435406>,  <24.703545, 34.997051, 36.378922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<24.768167, 34.772923, 36.435406>,  <24.875872, 34.399376, 36.529545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<24.768167, 34.772923, 36.435406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364022, 0.324935, 0.872872,
		0.891621, 0.149357, -0.427441,
		-0.269260, 0.933868, -0.235350,
		24.687389, 35.053082, 36.364799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.504911, 34.787102, 36.684605>,  <24.875872, 34.399376, 36.529545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.504911, 34.787102, 36.684605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.188354, 35.030766, 36.664104>,  <24.998421, 35.176964, 36.651806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.188354, 35.030766, 36.664104>,  <25.504911, 34.787102, 36.684605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.188354, 35.030766, 36.664104> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361047, 0.533409, 0.764931,
		0.493299, 0.586858, -0.642070,
		-0.791392, 0.609157, -0.051247,
		24.950937, 35.213512, 36.648731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.168499, 34.976997, 37.398468>,  <25.504911, 34.787102, 36.684605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.168499, 34.976997, 37.398468> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334669, 34.873943, 37.747421>,  <25.434372, 34.812111, 37.956791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.334669, 34.873943, 37.747421>,  <25.168499, 34.976997, 37.398468>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.334669, 34.873943, 37.747421> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545575, 0.837972, -0.012331,
		-0.727853, 0.481071, 0.488672,
		0.415425, -0.257632, 0.872381,
		25.459297, 34.796654, 38.009136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.080492, 35.458290, 37.894951>,  <25.168499, 34.976997, 37.398468>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.080492, 35.458290, 37.894951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.436331, 35.280312, 37.936214>,  <25.649834, 35.173523, 37.960972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.436331, 35.280312, 37.936214>,  <25.080492, 35.458290, 37.894951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.436331, 35.280312, 37.936214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456727, 0.864414, -0.210210,
		0.004363, 0.234116, 0.972199,
		0.889596, -0.444947, 0.103155,
		25.703209, 35.146828, 37.967159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518290, 35.774982, 38.405373>,  <25.080492, 35.458290, 37.894951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518290, 35.774982, 38.405373> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.704018, 35.609333, 38.092216>,  <25.815454, 35.509945, 37.904324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.704018, 35.609333, 38.092216>,  <25.518290, 35.774982, 38.405373>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.704018, 35.609333, 38.092216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437938, 0.875677, -0.203469,
		0.769816, -0.248382, 0.587954,
		0.464320, -0.414121, -0.782886,
		25.843313, 35.485096, 37.857349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.249544, 35.691406, 38.515022>,  <25.518290, 35.774982, 38.405373>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.249544, 35.691406, 38.515022> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.139378, 35.748867, 38.134811>,  <26.073277, 35.783344, 37.906685>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.139378, 35.748867, 38.134811>,  <26.249544, 35.691406, 38.515022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.139378, 35.748867, 38.134811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407613, 0.912939, 0.019866,
		0.870630, -0.381977, -0.309996,
		-0.275419, 0.143654, -0.950530,
		26.056751, 35.791962, 37.849651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.923094, 35.893661, 38.683865>,  <26.249544, 35.691406, 38.515022>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.923094, 35.893661, 38.683865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678450, 35.939220, 38.997032>,  <26.531664, 35.966557, 39.184933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.678450, 35.939220, 38.997032>,  <26.923094, 35.893661, 38.683865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.678450, 35.939220, 38.997032> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227125, -0.973206, -0.035846,
		0.757857, -0.199744, 0.621091,
		-0.611610, 0.113899, 0.782918,
		26.494967, 35.973389, 39.231907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.052576, 35.381855, 39.153057>,  <26.923094, 35.893661, 38.683865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.052576, 35.381855, 39.153057> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668701, 35.491577, 39.177589>,  <26.438377, 35.557411, 39.192310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.668701, 35.491577, 39.177589>,  <27.052576, 35.381855, 39.153057>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.668701, 35.491577, 39.177589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280982, -0.930636, -0.234448,
		-0.007232, -0.242229, 0.970192,
		-0.959686, 0.274302, 0.061331,
		26.380795, 35.573868, 39.195988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.609190, 34.872242, 39.576111>,  <27.052576, 35.381855, 39.153057>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.609190, 34.872242, 39.576111> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.411898, 35.068100, 39.288509>,  <26.293522, 35.185616, 39.115948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.411898, 35.068100, 39.288509>,  <26.609190, 34.872242, 39.576111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.411898, 35.068100, 39.288509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398055, -0.861971, -0.313941,
		-0.773482, 0.131359, 0.620056,
		-0.493231, 0.489644, -0.719007,
		26.263927, 35.214993, 39.072807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.955416, 34.218491, 39.485611>,  <26.609190, 34.872242, 39.576111>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.955416, 34.218491, 39.485611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.323631, 34.062233, 39.485195>,  <27.544561, 33.968479, 39.484947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.323631, 34.062233, 39.485195>,  <26.955416, 34.218491, 39.485611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.323631, 34.062233, 39.485195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021780, -0.053976, 0.998305,
		-0.390040, -0.918957, -0.058195,
		0.920541, -0.390646, -0.001038,
		27.599794, 33.945038, 39.484882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021732, 33.411163, 39.658054>,  <26.955416, 34.218491, 39.485611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021732, 33.411163, 39.658054> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299896, 33.661579, 39.799179>,  <27.466795, 33.811829, 39.883854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.299896, 33.661579, 39.799179>,  <27.021732, 33.411163, 39.658054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.299896, 33.661579, 39.799179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346628, -0.137850, 0.927818,
		0.629487, -0.767510, 0.121141,
		0.695410, 0.626040, 0.352816,
		27.508520, 33.849392, 39.905025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438450, 33.006824, 40.069885>,  <27.021732, 33.411163, 39.658054>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438450, 33.006824, 40.069885> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388321, 33.387257, 40.182838>,  <27.358244, 33.615517, 40.250610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.388321, 33.387257, 40.182838>,  <27.438450, 33.006824, 40.069885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.388321, 33.387257, 40.182838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388375, -0.308938, 0.868172,
		0.912940, -0.000868, 0.408093,
		-0.125321, 0.951082, 0.282379,
		27.350725, 33.672581, 40.267551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.874910, 33.173737, 40.713287>,  <27.438450, 33.006824, 40.069885>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.874910, 33.173737, 40.713287> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537687, 33.379456, 40.650352>,  <27.335354, 33.502888, 40.612591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.537687, 33.379456, 40.650352>,  <27.874910, 33.173737, 40.713287>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.537687, 33.379456, 40.650352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430234, -0.469357, 0.771105,
		0.322732, 0.717775, 0.616963,
		-0.843056, 0.514299, -0.157334,
		27.284771, 33.533745, 40.603153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.216768, 33.737312, 40.589645>,  <27.874910, 33.173737, 40.713287>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.216768, 33.737312, 40.589645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583633, 33.841965, 40.469406>,  <28.803753, 33.904755, 40.397263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.583633, 33.841965, 40.469406>,  <28.216768, 33.737312, 40.589645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.583633, 33.841965, 40.469406> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194956, 0.952454, 0.234145,
		0.347569, -0.156145, 0.924562,
		0.917163, 0.261630, -0.300602,
		28.858782, 33.920452, 40.379227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.562729, 34.236900, 41.146141>,  <28.216768, 33.737312, 40.589645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.562729, 34.236900, 41.146141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.724918, 34.309921, 40.787865>,  <28.822231, 34.353733, 40.572899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.724918, 34.309921, 40.787865>,  <28.562729, 34.236900, 41.146141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.724918, 34.309921, 40.787865> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122993, 0.981842, 0.144429,
		0.905796, 0.051602, 0.420561,
		0.405472, 0.182549, -0.895694,
		28.846560, 34.364685, 40.519157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.188484, 34.643696, 41.245255>,  <28.562729, 34.236900, 41.146141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.188484, 34.643696, 41.245255> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985506, 34.708214, 40.906673>,  <28.863718, 34.746925, 40.703526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.985506, 34.708214, 40.906673>,  <29.188484, 34.643696, 41.245255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985506, 34.708214, 40.906673> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040471, 0.976778, 0.210396,
		0.860732, 0.141021, -0.489135,
		-0.507447, 0.161299, -0.846452,
		28.833273, 34.756603, 40.652737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.743717, 34.246269, 41.795692>,  <29.188484, 34.643696, 41.245255>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.743717, 34.246269, 41.795692> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073774, 34.472233, 41.793919>,  <30.271809, 34.607811, 41.792854>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.073774, 34.472233, 41.793919>,  <29.743717, 34.246269, 41.795692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073774, 34.472233, 41.793919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236352, -0.338078, 0.910956,
		0.513108, -0.752716, -0.412479,
		0.825141, 0.564909, -0.004435,
		30.321318, 34.641705, 41.792587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.213156, 33.820488, 42.209488>,  <29.743717, 34.246269, 41.795692>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.213156, 33.820488, 42.209488> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307062, 34.209309, 42.209202>,  <30.363405, 34.442600, 42.209030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.307062, 34.209309, 42.209202>,  <30.213156, 33.820488, 42.209488>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.307062, 34.209309, 42.209202> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156922, -0.037174, 0.986911,
		0.959303, -0.231803, -0.161264,
		0.234764, 0.972052, -0.000714,
		30.377491, 34.500923, 42.208988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.814281, 33.931446, 42.434750>,  <30.213156, 33.820488, 42.209488>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.814281, 33.931446, 42.434750> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595657, 34.254433, 42.523533>,  <30.464483, 34.448227, 42.576801>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.595657, 34.254433, 42.523533>,  <30.814281, 33.931446, 42.434750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.595657, 34.254433, 42.523533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408798, 0.025945, 0.912256,
		0.730862, 0.589337, -0.344273,
		-0.546558, 0.807471, 0.221957,
		30.431690, 34.496674, 42.590118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.216724, 34.332733, 42.898857>,  <30.814281, 33.931446, 42.434750>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.216724, 34.332733, 42.898857> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867956, 34.528454, 42.906269>,  <30.658695, 34.645885, 42.910717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.867956, 34.528454, 42.906269>,  <31.216724, 34.332733, 42.898857>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.867956, 34.528454, 42.906269> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212471, 0.343986, 0.914620,
		0.441149, 0.801412, -0.403890,
		-0.871919, 0.489298, 0.018528,
		30.606380, 34.675243, 42.911827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185818, 35.110149, 42.886272>,  <31.216724, 34.332733, 42.898857>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185818, 35.110149, 42.886272> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843069, 35.017891, 43.070698>,  <30.637421, 34.962536, 43.181351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.843069, 35.017891, 43.070698>,  <31.185818, 35.110149, 42.886272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.843069, 35.017891, 43.070698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256902, 0.584346, 0.769767,
		-0.446961, 0.778038, -0.441456,
		-0.856870, -0.230645, 0.461060,
		30.586008, 34.948696, 43.209015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.901873, 35.780762, 43.123482>,  <31.185818, 35.110149, 42.886272>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.901873, 35.780762, 43.123482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745329, 35.469734, 43.320347>,  <30.651403, 35.283115, 43.438465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.745329, 35.469734, 43.320347>,  <30.901873, 35.780762, 43.123482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.745329, 35.469734, 43.320347> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254101, 0.422715, 0.869911,
		-0.884461, 0.465506, 0.032148,
		-0.391360, -0.777571, 0.492160,
		30.627920, 35.236462, 43.467995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245609, 35.976631, 43.729263>,  <30.901873, 35.780762, 43.123482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245609, 35.976631, 43.729263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489573, 35.664879, 43.786644>,  <30.635950, 35.477829, 43.821072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.489573, 35.664879, 43.786644>,  <30.245609, 35.976631, 43.729263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489573, 35.664879, 43.786644> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332092, 0.415726, 0.846691,
		-0.719531, -0.468765, 0.512381,
		0.609910, -0.779378, 0.143455,
		30.672546, 35.431065, 43.829681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.335644, 35.906971, 44.470402>,  <30.245609, 35.976631, 43.729263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.335644, 35.906971, 44.470402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670425, 35.744427, 44.323769>,  <30.871294, 35.646900, 44.235790>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670425, 35.744427, 44.323769>,  <30.335644, 35.906971, 44.470402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670425, 35.744427, 44.323769> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525557, 0.409964, 0.745466,
		-0.152645, -0.816578, 0.556687,
		0.836952, -0.406363, -0.366579,
		30.921511, 35.622517, 44.213795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742292, 36.455204, 44.297520>,  <30.335644, 35.906971, 44.470402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742292, 36.455204, 44.297520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961864, 36.579758, 44.607800>,  <31.093609, 36.654491, 44.793968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.961864, 36.579758, 44.607800>,  <30.742292, 36.455204, 44.297520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.961864, 36.579758, 44.607800> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500738, -0.865571, -0.006890,
		0.669280, 0.392206, -0.631062,
		0.548932, 0.311385, 0.775702,
		31.126543, 36.673172, 44.840511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.484301, 36.599564, 44.114075>,  <30.742292, 36.455204, 44.297520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.484301, 36.599564, 44.114075> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417318, 36.486042, 44.491734>,  <31.377129, 36.417927, 44.718330>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.417318, 36.486042, 44.491734>,  <31.484301, 36.599564, 44.114075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417318, 36.486042, 44.491734> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640396, -0.759432, -0.114700,
		0.749567, 0.585420, 0.308921,
		-0.167457, -0.283807, 0.944146,
		31.367081, 36.400898, 44.774979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112469, 36.738934, 44.677303>,  <31.484301, 36.599564, 44.114075>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112469, 36.738934, 44.677303> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872272, 36.434563, 44.775616>,  <31.728155, 36.251942, 44.834602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.872272, 36.434563, 44.775616>,  <32.112469, 36.738934, 44.677303>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872272, 36.434563, 44.775616> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790653, -0.610936, 0.040298,
		0.119491, 0.218524, 0.968488,
		-0.600491, -0.760923, 0.245778,
		31.692125, 36.206287, 44.849350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350044, 36.342319, 45.260056>,  <32.112469, 36.738934, 44.677303>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350044, 36.342319, 45.260056> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192425, 36.096924, 44.986309>,  <32.097855, 35.949684, 44.822063>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.192425, 36.096924, 44.986309>,  <32.350044, 36.342319, 45.260056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.192425, 36.096924, 44.986309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842109, -0.539305, -0.001420,
		-0.368209, -0.576869, 0.729139,
		-0.394048, -0.613492, -0.684364,
		32.074211, 35.912876, 44.780998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835754, 35.866093, 45.702084>,  <32.350044, 36.342319, 45.260056>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835754, 35.866093, 45.702084> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778065, 36.096745, 46.023754>,  <32.743450, 36.235134, 46.216759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.778065, 36.096745, 46.023754>,  <32.835754, 35.866093, 45.702084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778065, 36.096745, 46.023754> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825172, -0.518622, 0.223881,
		0.546160, -0.631296, 0.550613,
		-0.144225, 0.576625, 0.804178,
		32.734798, 36.269733, 46.265007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928421, 35.529686, 46.392799>,  <32.835754, 35.866093, 45.702084>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928421, 35.529686, 46.392799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649082, 35.812176, 46.346226>,  <32.481480, 35.981670, 46.318283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.649082, 35.812176, 46.346226>,  <32.928421, 35.529686, 46.392799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.649082, 35.812176, 46.346226> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711263, -0.666508, 0.223321,
		0.080114, 0.238768, 0.967766,
		-0.698346, 0.706227, -0.116430,
		32.439579, 36.024044, 46.311298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.335850, 35.464211, 46.979176>,  <32.928421, 35.529686, 46.392799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.335850, 35.464211, 46.979176> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212944, 35.642864, 46.643055>,  <32.139202, 35.750057, 46.441383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.212944, 35.642864, 46.643055>,  <32.335850, 35.464211, 46.979176>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212944, 35.642864, 46.643055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.836572, -0.547656, 0.014806,
		-0.453583, 0.707523, 0.541917,
		-0.307260, 0.446637, -0.840301,
		32.120766, 35.776855, 46.390965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.019791, 35.544193, 47.199596>,  <32.335850, 35.464211, 46.979176>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.019791, 35.544193, 47.199596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213627, 35.845291, 47.377834>,  <33.329929, 36.025948, 47.484776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.213627, 35.845291, 47.377834>,  <33.019791, 35.544193, 47.199596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.213627, 35.845291, 47.377834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349305, -0.300501, 0.887516,
		0.801971, -0.585730, 0.117316,
		0.484591, 0.752741, 0.445592,
		33.359005, 36.071114, 47.511513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260258, 35.194771, 47.790016>,  <33.019791, 35.544193, 47.199596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260258, 35.194771, 47.790016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203999, 35.589752, 47.818756>,  <33.170242, 35.826740, 47.835999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.203999, 35.589752, 47.818756>,  <33.260258, 35.194771, 47.790016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.203999, 35.589752, 47.818756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471541, -0.130619, 0.872117,
		0.870556, 0.088785, 0.483994,
		-0.140650, 0.987449, 0.071846,
		33.161804, 35.885986, 47.840309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.425354, 35.532288, 48.434948>,  <33.260258, 35.194771, 47.790016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.425354, 35.532288, 48.434948> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155800, 35.782547, 48.277752>,  <32.994068, 35.932705, 48.183434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.155800, 35.782547, 48.277752>,  <33.425354, 35.532288, 48.434948>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155800, 35.782547, 48.277752> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391547, 0.148658, 0.908071,
		0.626557, 0.765808, 0.144794,
		-0.673882, 0.625652, -0.392992,
		32.953636, 35.970242, 48.159855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287704, 36.117771, 48.991295>,  <33.425354, 35.532288, 48.434948>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287704, 36.117771, 48.991295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001709, 36.118656, 48.711639>,  <32.830112, 36.119186, 48.543846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.001709, 36.118656, 48.711639>,  <33.287704, 36.117771, 48.991295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.001709, 36.118656, 48.711639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653351, 0.353828, 0.669282,
		0.248856, 0.935308, -0.251535,
		-0.714985, 0.002214, -0.699136,
		32.787212, 36.119320, 48.501900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.737183, 36.148060, 49.511600>,  <33.287704, 36.117771, 48.991295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.737183, 36.148060, 49.511600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591793, 36.229256, 49.147911>,  <32.504559, 36.277973, 48.929699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.591793, 36.229256, 49.147911>,  <32.737183, 36.148060, 49.511600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.591793, 36.229256, 49.147911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.903331, 0.161826, 0.397249,
		0.227774, 0.965715, 0.124551,
		-0.363473, 0.202993, -0.909220,
		32.482750, 36.290154, 48.875145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508442, 35.355152, 49.779972>,  <32.737183, 36.148060, 49.511600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508442, 35.355152, 49.779972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485275, 35.082069, 50.071331>,  <32.471375, 34.918221, 50.246147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.485275, 35.082069, 50.071331>,  <32.508442, 35.355152, 49.779972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.485275, 35.082069, 50.071331> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997479, -0.069544, 0.014127,
		0.041011, 0.727378, 0.685011,
		-0.057914, -0.682705, 0.728396,
		32.467899, 34.877258, 50.289848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.855373, 35.535435, 50.389336>,  <32.508442, 35.355152, 49.779972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.855373, 35.535435, 50.389336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839481, 35.135754, 50.387646>,  <32.829945, 34.895947, 50.386631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.839481, 35.135754, 50.387646>,  <32.855373, 35.535435, 50.389336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.839481, 35.135754, 50.387646> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992312, -0.038958, -0.117471,
		0.117213, -0.008858, 0.993067,
		-0.039729, -0.999202, -0.004224,
		32.827564, 34.835995, 50.386379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.384850, 35.435875, 50.777676>,  <32.855373, 35.535435, 50.389336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.384850, 35.435875, 50.777676> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311718, 35.076660, 50.617622>,  <33.267841, 34.861134, 50.521591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.311718, 35.076660, 50.617622>,  <33.384850, 35.435875, 50.777676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.311718, 35.076660, 50.617622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958649, -0.072551, -0.275190,
		0.218100, -0.433902, 0.874164,
		-0.182826, -0.898034, -0.400136,
		33.256870, 34.807251, 50.497581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982201, 35.135990, 50.968395>,  <33.384850, 35.435875, 50.777676>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982201, 35.135990, 50.968395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818478, 34.943108, 50.658573>,  <33.720242, 34.827377, 50.472679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.818478, 34.943108, 50.658573>,  <33.982201, 35.135990, 50.968395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818478, 34.943108, 50.658573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889070, -0.020067, -0.457330,
		0.204985, -0.875827, 0.436930,
		-0.409310, -0.482207, -0.774559,
		33.695686, 34.798447, 50.426205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.162537, 34.404835, 50.917576>,  <33.982201, 35.135990, 50.968395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.162537, 34.404835, 50.917576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089901, 34.514774, 50.539902>,  <34.046322, 34.580738, 50.313297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.089901, 34.514774, 50.539902>,  <34.162537, 34.404835, 50.917576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.089901, 34.514774, 50.539902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.941118, -0.229865, -0.247909,
		-0.285173, -0.933605, -0.216929,
		-0.181585, 0.274853, -0.944184,
		34.035427, 34.597229, 50.256645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.800941, 34.098469, 50.535091>,  <34.162537, 34.404835, 50.917576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.800941, 34.098469, 50.535091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605186, 34.280495, 50.237522>,  <34.487732, 34.389709, 50.058983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.605186, 34.280495, 50.237522>,  <34.800941, 34.098469, 50.535091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.605186, 34.280495, 50.237522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804948, -0.092459, -0.586097,
		-0.335492, -0.885647, -0.321052,
		-0.489391, 0.455061, -0.743919,
		34.458370, 34.417011, 50.014347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.896549, 33.718342, 49.869671>,  <34.800941, 34.098469, 50.535091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.896549, 33.718342, 49.869671> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789673, 34.086868, 49.756683>,  <34.725548, 34.307983, 49.688892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.789673, 34.086868, 49.756683>,  <34.896549, 33.718342, 49.869671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789673, 34.086868, 49.756683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754686, 0.017789, -0.655845,
		-0.599216, -0.388406, -0.700058,
		-0.267187, 0.921317, -0.282465,
		34.709518, 34.363262, 49.671944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038673, 33.737560, 49.112167>,  <34.896549, 33.718342, 49.869671>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038673, 33.737560, 49.112167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033398, 34.114891, 49.244808>,  <35.030231, 34.341290, 49.324390>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.033398, 34.114891, 49.244808>,  <35.038673, 33.737560, 49.112167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.033398, 34.114891, 49.244808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740334, 0.232125, -0.630892,
		-0.672110, 0.237172, -0.701439,
		-0.013191, 0.943328, 0.331600,
		35.029442, 34.397888, 49.344288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984600, 34.164974, 48.559101>,  <35.038673, 33.737560, 49.112167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984600, 34.164974, 48.559101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150043, 34.408375, 48.829998>,  <35.249310, 34.554417, 48.992535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.150043, 34.408375, 48.829998>,  <34.984600, 34.164974, 48.559101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.150043, 34.408375, 48.829998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692488, 0.272668, -0.667916,
		-0.591091, 0.745235, -0.308604,
		0.413608, 0.608504, 0.677238,
		35.274124, 34.590927, 49.033169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042500, 34.842129, 48.229404>,  <34.984600, 34.164974, 48.559101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042500, 34.842129, 48.229404> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319275, 34.800278, 48.515141>,  <35.485340, 34.775166, 48.686581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.319275, 34.800278, 48.515141>,  <35.042500, 34.842129, 48.229404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.319275, 34.800278, 48.515141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.701527, 0.331173, -0.631019,
		-0.170548, 0.937751, 0.302549,
		0.691935, -0.104628, 0.714338,
		35.526855, 34.768890, 48.729443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450710, 35.430149, 48.134327>,  <35.042500, 34.842129, 48.229404>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450710, 35.430149, 48.134327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673790, 35.197304, 48.371010>,  <35.807640, 35.057598, 48.513020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.673790, 35.197304, 48.371010>,  <35.450710, 35.430149, 48.134327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673790, 35.197304, 48.371010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.829766, 0.372642, -0.415482,
		0.021362, 0.722693, 0.690839,
		0.557702, -0.582110, 0.591706,
		35.841099, 35.022671, 48.548523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.958416, 35.871239, 48.391201>,  <35.450710, 35.430149, 48.134327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.958416, 35.871239, 48.391201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127342, 35.515720, 48.462402>,  <36.228699, 35.302410, 48.505123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.127342, 35.515720, 48.462402>,  <35.958416, 35.871239, 48.391201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127342, 35.515720, 48.462402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772472, 0.250140, -0.583710,
		0.474275, 0.384014, 0.792210,
		0.422316, -0.888799, 0.178005,
		36.254036, 35.249081, 48.515804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.647049, 35.985340, 48.666344>,  <35.958416, 35.871239, 48.391201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.647049, 35.985340, 48.666344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641380, 35.636341, 48.470982>,  <36.637981, 35.426941, 48.353764>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.641380, 35.636341, 48.470982>,  <36.647049, 35.985340, 48.666344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.641380, 35.636341, 48.470982> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799991, 0.283136, -0.529008,
		0.599845, -0.398214, 0.693982,
		-0.014167, -0.872502, -0.488405,
		36.637131, 35.374592, 48.324459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.313583, 35.781788, 48.719875>,  <36.647049, 35.985340, 48.666344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.313583, 35.781788, 48.719875> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149620, 35.590374, 48.409271>,  <37.051243, 35.475525, 48.222908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149620, 35.590374, 48.409271>,  <37.313583, 35.781788, 48.719875>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149620, 35.590374, 48.409271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825760, 0.166903, -0.538762,
		0.387421, -0.862058, 0.326742,
		-0.409910, -0.478538, -0.776515,
		37.026646, 35.446812, 48.176315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.713684, 35.157455, 48.494564>,  <37.313583, 35.781788, 48.719875>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.713684, 35.157455, 48.494564> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502953, 35.323540, 48.197903>,  <37.376514, 35.423191, 48.019905>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.502953, 35.323540, 48.197903>,  <37.713684, 35.157455, 48.494564>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502953, 35.323540, 48.197903> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817438, 0.008391, -0.575956,
		-0.232919, -0.909687, -0.343829,
		-0.526825, 0.415210, -0.741658,
		37.344906, 35.448101, 47.975407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.199379, 35.426022, 47.862679>,  <37.713684, 35.157455, 48.494564>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.199379, 35.426022, 47.862679> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363144, 35.779037, 47.955200>,  <38.461403, 35.990849, 48.010712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.363144, 35.779037, 47.955200>,  <38.199379, 35.426022, 47.862679>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.363144, 35.779037, 47.955200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710550, 0.149411, 0.687601,
		0.572279, -0.445862, 0.688262,
		0.409409, 0.882544, 0.231302,
		38.485966, 36.043800, 48.024590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.705250, 35.345764, 47.306324>,  <38.199379, 35.426022, 47.862679>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.705250, 35.345764, 47.306324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.541527, 35.328365, 46.941780>,  <38.443295, 35.317924, 46.723053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.541527, 35.328365, 46.941780>,  <38.705250, 35.345764, 47.306324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.541527, 35.328365, 46.941780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279965, 0.956665, 0.080076,
		0.868384, 0.287925, -0.403744,
		-0.409304, -0.043497, -0.911361,
		38.418736, 35.315315, 46.668373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.380657, 35.019264, 47.607147>,  <38.705250, 35.345764, 47.306324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.380657, 35.019264, 47.607147> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731724, 35.193764, 47.527767>,  <39.942364, 35.298462, 47.480137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.731724, 35.193764, 47.527767>,  <39.380657, 35.019264, 47.607147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731724, 35.193764, 47.527767> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474331, 0.849937, -0.229384,
		0.068605, 0.295456, 0.952890,
		0.877669, 0.436249, -0.198454,
		39.995026, 35.324638, 47.468231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.429268, 34.384411, 48.090282>,  <39.380657, 35.019264, 47.607147>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.429268, 34.384411, 48.090282> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306416, 34.526039, 48.443623>,  <39.232704, 34.611015, 48.655628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.306416, 34.526039, 48.443623>,  <39.429268, 34.384411, 48.090282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.306416, 34.526039, 48.443623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435418, -0.877641, 0.200392,
		0.846216, -0.323079, 0.423719,
		-0.307131, 0.354070, 0.883349,
		39.214275, 34.632259, 48.708626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.242226, 33.937077, 48.647915>,  <39.429268, 34.384411, 48.090282>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.242226, 33.937077, 48.647915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355885, 34.278988, 48.821636>,  <39.424080, 34.484135, 48.925869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.355885, 34.278988, 48.821636>,  <39.242226, 33.937077, 48.647915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.355885, 34.278988, 48.821636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622424, -0.180091, 0.761679,
		0.729278, -0.486753, 0.480859,
		0.284151, 0.854774, 0.434303,
		39.441132, 34.535419, 48.951927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.239254, 33.749065, 49.322395>,  <39.242226, 33.937077, 48.647915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.239254, 33.749065, 49.322395> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231430, 34.148899, 49.330868>,  <39.226734, 34.388798, 49.335949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.231430, 34.148899, 49.330868>,  <39.239254, 33.749065, 49.322395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231430, 34.148899, 49.330868> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519628, -0.028260, 0.853925,
		0.854169, 0.005698, 0.519964,
		-0.019560, 0.999584, 0.021178,
		39.225563, 34.448776, 49.337223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.314625, 34.014378, 49.972313>,  <39.239254, 33.749065, 49.322395>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.314625, 34.014378, 49.972313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140511, 34.330387, 49.799618>,  <39.036041, 34.519993, 49.695999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.140511, 34.330387, 49.799618>,  <39.314625, 34.014378, 49.972313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140511, 34.330387, 49.799618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569668, 0.129648, 0.811585,
		0.697142, 0.599217, 0.393615,
		-0.435283, 0.790019, -0.431738,
		39.009926, 34.567394, 49.670097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.466316, 34.595554, 50.351765>,  <39.314625, 34.014378, 49.972313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.466316, 34.595554, 50.351765> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118034, 34.677673, 50.173000>,  <38.909065, 34.726944, 50.065742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.118034, 34.677673, 50.173000>,  <39.466316, 34.595554, 50.351765>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.118034, 34.677673, 50.173000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400873, 0.230189, 0.886744,
		0.284922, 0.951244, -0.118127,
		-0.870701, 0.205299, -0.446914,
		38.856823, 34.739262, 50.038925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.257053, 35.200882, 50.643238>,  <39.466316, 34.595554, 50.351765>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.257053, 35.200882, 50.643238> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928177, 35.086319, 50.446472>,  <38.730850, 35.017582, 50.328415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.928177, 35.086319, 50.446472>,  <39.257053, 35.200882, 50.643238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928177, 35.086319, 50.446472> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568985, 0.389078, 0.724482,
		-0.016103, 0.875552, -0.482855,
		-0.822190, -0.286403, -0.491911,
		38.681519, 35.000397, 50.298901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890171, 35.714733, 50.690605>,  <39.257053, 35.200882, 50.643238>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890171, 35.714733, 50.690605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618156, 35.435505, 50.600941>,  <38.454948, 35.267967, 50.547142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.618156, 35.435505, 50.600941>,  <38.890171, 35.714733, 50.690605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.618156, 35.435505, 50.600941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599723, 0.353739, 0.717775,
		-0.421763, 0.622548, -0.659204,
		-0.680036, -0.698071, -0.224162,
		38.414146, 35.226082, 50.533691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.198524, 36.014908, 50.504101>,  <38.890171, 35.714733, 50.690605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.198524, 36.014908, 50.504101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131672, 35.639420, 50.624680>,  <38.091560, 35.414127, 50.697025>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.131672, 35.639420, 50.624680>,  <38.198524, 36.014908, 50.504101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.131672, 35.639420, 50.624680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557217, 0.342168, 0.756592,
		-0.813373, -0.041520, -0.580258,
		-0.167132, -0.938721, 0.301446,
		38.081532, 35.357803, 50.715115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479912, 36.060616, 50.796581>,  <38.198524, 36.014908, 50.504101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479912, 36.060616, 50.796581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636452, 35.714409, 50.921627>,  <37.730373, 35.506683, 50.996655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.636452, 35.714409, 50.921627>,  <37.479912, 36.060616, 50.796581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.636452, 35.714409, 50.921627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522649, 0.070555, 0.849624,
		-0.757421, -0.495884, -0.424750,
		0.391347, -0.865518, 0.312613,
		37.753857, 35.454754, 51.015411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937641, 35.758499, 50.903492>,  <37.479912, 36.060616, 50.796581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937641, 35.758499, 50.903492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212917, 35.548481, 51.103779>,  <37.378082, 35.422470, 51.223949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.212917, 35.548481, 51.103779>,  <36.937641, 35.758499, 50.903492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.212917, 35.548481, 51.103779> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576038, 0.024174, 0.817065,
		-0.441104, -0.850729, -0.285812,
		0.688191, -0.525049, 0.500716,
		37.419376, 35.390965, 51.253994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584759, 35.191067, 51.201534>,  <36.937641, 35.758499, 50.903492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584759, 35.191067, 51.201534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925140, 35.251755, 51.402672>,  <37.129368, 35.288166, 51.523354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.925140, 35.251755, 51.402672>,  <36.584759, 35.191067, 51.201534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925140, 35.251755, 51.402672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518739, 0.092619, 0.849901,
		0.082352, -0.984079, 0.157505,
		0.850957, 0.151694, 0.502853,
		37.180428, 35.297272, 51.553528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.493881, 34.765491, 51.793499>,  <36.584759, 35.191067, 51.201534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.493881, 34.765491, 51.793499> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792900, 35.008686, 51.900475>,  <36.972313, 35.154602, 51.964661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.792900, 35.008686, 51.900475>,  <36.493881, 34.765491, 51.793499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792900, 35.008686, 51.900475> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479991, 0.216185, 0.850219,
		0.459107, -0.763947, 0.453437,
		0.747549, 0.607988, 0.267435,
		37.017166, 35.191082, 51.980705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.755165, 34.630486, 52.620884>,  <36.493881, 34.765491, 51.793499>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.755165, 34.630486, 52.620884> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853733, 35.004913, 52.520439>,  <36.912876, 35.229568, 52.460175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.853733, 35.004913, 52.520439>,  <36.755165, 34.630486, 52.620884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.853733, 35.004913, 52.520439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340711, 0.326234, 0.881753,
		0.907299, -0.131729, 0.399319,
		0.246424, 0.936066, -0.251110,
		36.927662, 35.285732, 52.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.929184, 34.912086, 53.346043>,  <36.755165, 34.630486, 52.620884>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.929184, 34.912086, 53.346043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855782, 35.212059, 53.091820>,  <36.811741, 35.392040, 52.939285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.855782, 35.212059, 53.091820>,  <36.929184, 34.912086, 53.346043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.855782, 35.212059, 53.091820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620966, 0.412771, 0.666349,
		0.762053, 0.516939, 0.389934,
		-0.183508, 0.749929, -0.635555,
		36.800728, 35.437038, 52.901154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901867, 35.571831, 53.736217>,  <36.929184, 34.912086, 53.346043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901867, 35.571831, 53.736217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701084, 35.605835, 53.391937>,  <36.580612, 35.626236, 53.185368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.701084, 35.605835, 53.391937>,  <36.901867, 35.571831, 53.736217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701084, 35.605835, 53.391937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789305, 0.361835, 0.496058,
		0.353601, 0.928358, -0.114531,
		-0.501961, 0.085007, -0.860703,
		36.550495, 35.631336, 53.133728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.594925, 36.091980, 53.929970>,  <36.901867, 35.571831, 53.736217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.594925, 36.091980, 53.929970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387089, 35.962715, 53.613594>,  <36.262386, 35.885159, 53.423767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.387089, 35.962715, 53.613594>,  <36.594925, 36.091980, 53.929970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.387089, 35.962715, 53.613594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803842, 0.498647, 0.324331,
		0.289591, 0.804313, -0.518862,
		-0.519592, -0.323160, -0.790944,
		36.231213, 35.865768, 53.376312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596397, 36.633724, 53.469849>,  <36.594925, 36.091980, 53.929970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596397, 36.633724, 53.469849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285442, 36.393948, 53.393593>,  <36.098869, 36.250080, 53.347839>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.285442, 36.393948, 53.393593>,  <36.596397, 36.633724, 53.469849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.285442, 36.393948, 53.393593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627759, 0.720094, 0.295607,
		-0.039921, 0.349475, -0.936095,
		-0.777384, -0.599442, -0.190639,
		36.052227, 36.214115, 53.336403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064869, 37.025784, 53.251778>,  <36.596397, 36.633724, 53.469849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064869, 37.025784, 53.251778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871716, 36.695568, 53.368607>,  <35.755825, 36.497440, 53.438705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.871716, 36.695568, 53.368607>,  <36.064869, 37.025784, 53.251778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871716, 36.695568, 53.368607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761214, 0.560600, 0.326007,
		-0.432870, -0.064909, -0.899117,
		-0.482884, -0.825539, 0.292077,
		35.726849, 36.447906, 53.456230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467674, 36.980484, 52.840767>,  <36.064869, 37.025784, 53.251778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467674, 36.980484, 52.840767> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429314, 36.783508, 53.186787>,  <35.406300, 36.665321, 53.394398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.429314, 36.783508, 53.186787>,  <35.467674, 36.980484, 52.840767>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429314, 36.783508, 53.186787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733297, 0.622629, 0.273148,
		-0.673112, -0.608142, -0.420813,
		-0.095897, -0.492439, 0.865048,
		35.400543, 36.635777, 53.446301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803665, 37.094200, 53.096581>,  <35.467674, 36.980484, 52.840767>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803665, 37.094200, 53.096581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930161, 36.937057, 53.441986>,  <35.006058, 36.842770, 53.649231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.930161, 36.937057, 53.441986>,  <34.803665, 37.094200, 53.096581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930161, 36.937057, 53.441986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528744, 0.682754, 0.504259,
		-0.787670, -0.616043, 0.008190,
		0.316237, -0.392859, 0.863514,
		35.025032, 36.819199, 53.701042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.196796, 37.118874, 53.567108>,  <34.803665, 37.094200, 53.096581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.196796, 37.118874, 53.567108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531391, 37.094028, 53.784889>,  <34.732147, 37.079121, 53.915558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.531391, 37.094028, 53.784889>,  <34.196796, 37.118874, 53.567108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.531391, 37.094028, 53.784889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331274, 0.734128, 0.592718,
		-0.436514, -0.676165, 0.593512,
		0.836489, -0.062115, 0.544453,
		34.782337, 37.075394, 53.948223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.951454, 37.231888, 54.236446>,  <34.196796, 37.118874, 53.567108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.951454, 37.231888, 54.236446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344757, 37.285435, 54.285896>,  <34.580738, 37.317562, 54.315567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.344757, 37.285435, 54.285896>,  <33.951454, 37.231888, 54.236446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.344757, 37.285435, 54.285896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182086, 0.747523, 0.638790,
		-0.006895, -0.650606, 0.759384,
		0.983258, 0.133869, 0.123620,
		34.639736, 37.325596, 54.322983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.022484, 37.233486, 54.972836>,  <33.951454, 37.231888, 54.236446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.022484, 37.233486, 54.972836> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318104, 37.428310, 54.786686>,  <34.495476, 37.545204, 54.674995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.318104, 37.428310, 54.786686>,  <34.022484, 37.233486, 54.972836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318104, 37.428310, 54.786686> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244078, 0.837491, 0.488912,
		0.627878, -0.247743, 0.737829,
		0.739050, 0.487065, -0.465374,
		34.539818, 37.574429, 54.647076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.254551, 37.517330, 55.479267>,  <34.022484, 37.233486, 54.972836>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.254551, 37.517330, 55.479267> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428146, 37.708958, 55.174072>,  <34.532303, 37.823933, 54.990955>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428146, 37.708958, 55.174072>,  <34.254551, 37.517330, 55.479267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428146, 37.708958, 55.174072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269649, 0.877148, 0.397367,
		0.859619, 0.033287, 0.509850,
		0.433987, 0.479065, -0.762989,
		34.558342, 37.852676, 54.945175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.697880, 37.915165, 55.770878>,  <34.254551, 37.517330, 55.479267>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.697880, 37.915165, 55.770878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587410, 38.076332, 55.421848>,  <34.521130, 38.173031, 55.212429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.587410, 38.076332, 55.421848>,  <34.697880, 37.915165, 55.770878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587410, 38.076332, 55.421848> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467640, 0.736834, 0.488249,
		0.839666, 0.542893, -0.015075,
		-0.276175, 0.402916, -0.872574,
		34.504559, 38.197208, 55.160076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.924038, 38.580738, 55.628838>,  <34.697880, 37.915165, 55.770878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.924038, 38.580738, 55.628838> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589939, 38.544117, 55.411961>,  <34.389481, 38.522144, 55.281834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.589939, 38.544117, 55.411961>,  <34.924038, 38.580738, 55.628838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.589939, 38.544117, 55.411961> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342014, 0.858593, 0.381896,
		0.430561, 0.504417, -0.748452,
		-0.835250, -0.091552, -0.542195,
		34.339363, 38.516651, 55.249302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.644463, 39.256874, 55.525757>,  <34.924038, 38.580738, 55.628838>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.644463, 39.256874, 55.525757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331173, 39.035095, 55.413227>,  <34.143200, 38.902027, 55.345707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.331173, 39.035095, 55.413227>,  <34.644463, 39.256874, 55.525757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331173, 39.035095, 55.413227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614500, 0.759176, 0.214572,
		0.094609, 0.340934, -0.935314,
		-0.783224, -0.554450, -0.281329,
		34.096207, 38.868759, 55.328827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201439, 39.697823, 55.086666>,  <34.644463, 39.256874, 55.525757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201439, 39.697823, 55.086666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965336, 39.409916, 55.232838>,  <33.823673, 39.237171, 55.320541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965336, 39.409916, 55.232838>,  <34.201439, 39.697823, 55.086666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965336, 39.409916, 55.232838> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666143, 0.690009, 0.283091,
		-0.455909, -0.076334, -0.886747,
		-0.590254, -0.719764, 0.365431,
		33.788261, 39.193985, 55.342468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583641, 39.915161, 54.876087>,  <34.201439, 39.697823, 55.086666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583641, 39.915161, 54.876087> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498932, 39.650623, 55.163914>,  <33.448105, 39.491901, 55.336609>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.498932, 39.650623, 55.163914>,  <33.583641, 39.915161, 54.876087>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.498932, 39.650623, 55.163914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629072, 0.655709, 0.417510,
		-0.747944, -0.364242, -0.554894,
		-0.211774, -0.661342, 0.719568,
		33.435398, 39.452221, 55.379784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.898647, 40.103714, 55.031334>,  <33.583641, 39.915161, 54.876087>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.898647, 40.103714, 55.031334> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998093, 39.880901, 55.348297>,  <33.057762, 39.747215, 55.538475>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.998093, 39.880901, 55.348297>,  <32.898647, 40.103714, 55.031334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.998093, 39.880901, 55.348297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568834, 0.578187, 0.584916,
		-0.783976, -0.596166, -0.173113,
		0.248615, -0.557033, 0.792404,
		33.072678, 39.713791, 55.586018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.320312, 39.836868, 55.412216>,  <32.898647, 40.103714, 55.031334>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.320312, 39.836868, 55.412216> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607002, 39.881565, 55.687553>,  <32.779018, 39.908382, 55.852757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.607002, 39.881565, 55.687553>,  <32.320312, 39.836868, 55.412216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607002, 39.881565, 55.687553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659416, 0.429741, 0.616842,
		-0.226881, -0.896011, 0.381692,
		0.716726, 0.111744, 0.688344,
		32.822021, 39.915089, 55.894058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139442, 39.519772, 55.952766>,  <32.320312, 39.836868, 55.412216>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139442, 39.519772, 55.952766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368824, 39.801994, 56.119301>,  <32.506454, 39.971329, 56.219223>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.368824, 39.801994, 56.119301>,  <32.139442, 39.519772, 55.952766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.368824, 39.801994, 56.119301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758998, 0.266295, 0.594145,
		0.308338, -0.656712, 0.688228,
		0.573454, 0.705561, 0.416334,
		32.540859, 40.013660, 56.244202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860025, 39.538372, 56.495571>,  <32.139442, 39.519772, 55.952766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.860025, 39.538372, 56.495571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084198, 39.869591, 56.489231>,  <32.218700, 40.068321, 56.485428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084198, 39.869591, 56.489231>,  <31.860025, 39.538372, 56.495571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084198, 39.869591, 56.489231> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652842, 0.453464, 0.606769,
		0.509622, -0.329705, 0.794720,
		0.560431, 0.828049, -0.015850,
		32.252327, 40.118004, 56.484478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.829847, 39.839943, 57.181858>,  <31.860025, 39.538372, 56.495571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.829847, 39.839943, 57.181858> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.926731, 40.146843, 56.944313>,  <31.984861, 40.330982, 56.801788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.926731, 40.146843, 56.944313>,  <31.829847, 39.839943, 57.181858>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.926731, 40.146843, 56.944313> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589978, 0.602388, 0.537638,
		0.770234, 0.220142, 0.598563,
		0.242211, 0.767246, -0.593859,
		31.999393, 40.377018, 56.766155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035683, 40.368114, 57.602528>,  <31.829847, 39.839943, 57.181858>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035683, 40.368114, 57.602528> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948782, 40.556324, 57.260437>,  <31.896641, 40.669250, 57.055183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.948782, 40.556324, 57.260437>,  <32.035683, 40.368114, 57.602528>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.948782, 40.556324, 57.260437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453128, 0.727410, 0.515314,
		0.864566, 0.499481, 0.055173,
		-0.217256, 0.470524, -0.855224,
		31.883606, 40.697479, 57.003868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.069939, 41.007195, 57.721802>,  <32.035683, 40.368114, 57.602528>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.069939, 41.007195, 57.721802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843407, 41.036282, 57.393414>,  <31.707489, 41.053734, 57.196381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.843407, 41.036282, 57.393414>,  <32.069939, 41.007195, 57.721802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.843407, 41.036282, 57.393414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464008, 0.795108, 0.390512,
		0.681154, 0.602093, -0.416550,
		-0.566326, 0.072716, -0.820967,
		31.673510, 41.058098, 57.147125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084698, 41.691185, 57.614235>,  <32.069939, 41.007195, 57.721802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084698, 41.691185, 57.614235> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769648, 41.567577, 57.401009>,  <31.580618, 41.493412, 57.273071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.769648, 41.567577, 57.401009>,  <32.084698, 41.691185, 57.614235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.769648, 41.567577, 57.401009> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536247, 0.769877, 0.346019,
		0.303468, 0.558387, -0.772083,
		-0.787621, -0.309021, -0.533066,
		31.533361, 41.474873, 57.241089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.706417, 42.356060, 57.401356>,  <32.084698, 41.691185, 57.614235>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.706417, 42.356060, 57.401356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429495, 42.070683, 57.358078>,  <31.263342, 41.899456, 57.332111>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.429495, 42.070683, 57.358078>,  <31.706417, 42.356060, 57.401356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429495, 42.070683, 57.358078> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712292, 0.651636, 0.260788,
		-0.115554, 0.257612, -0.959314,
		-0.692306, -0.713447, -0.108196,
		31.221804, 41.856647, 57.325619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.144653, 42.624378, 57.047970>,  <31.706417, 42.356060, 57.401356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.144653, 42.624378, 57.047970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968050, 42.317558, 57.234177>,  <30.862087, 42.133465, 57.345901>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.968050, 42.317558, 57.234177>,  <31.144653, 42.624378, 57.047970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.968050, 42.317558, 57.234177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777437, 0.586055, 0.228322,
		-0.447951, -0.261102, -0.855082,
		-0.441510, -0.767050, 0.465515,
		30.835598, 42.087444, 57.373833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439743, 42.655273, 56.859402>,  <31.144653, 42.624378, 57.047970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439743, 42.655273, 56.859402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462215, 42.462418, 57.209118>,  <30.475698, 42.346703, 57.418949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.462215, 42.462418, 57.209118>,  <30.439743, 42.655273, 56.859402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462215, 42.462418, 57.209118> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665700, 0.634531, 0.392700,
		-0.744101, -0.604077, -0.285315,
		0.056180, -0.482143, 0.874290,
		30.479069, 42.317776, 57.471405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.731586, 42.717667, 57.194450>,  <30.439743, 42.655273, 56.859402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.731586, 42.717667, 57.194450> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966372, 42.646454, 57.510368>,  <30.107243, 42.603725, 57.699921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.966372, 42.646454, 57.510368>,  <29.731586, 42.717667, 57.194450>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966372, 42.646454, 57.510368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466085, 0.723353, 0.509436,
		-0.661997, -0.667133, 0.341605,
		0.586963, -0.178028, 0.789798,
		30.142460, 42.593044, 57.747307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.292542, 42.654156, 57.721577>,  <29.731586, 42.717667, 57.194450>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.292542, 42.654156, 57.721577> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641729, 42.685154, 57.914207>,  <29.851242, 42.703754, 58.029785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.641729, 42.685154, 57.914207>,  <29.292542, 42.654156, 57.721577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641729, 42.685154, 57.914207> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474204, 0.366097, 0.800690,
		-0.114251, -0.927344, 0.356342,
		0.872971, 0.077499, 0.481577,
		29.903620, 42.708405, 58.058681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.203543, 42.383274, 58.344860>,  <29.292542, 42.654156, 57.721577>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.203543, 42.383274, 58.344860> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518169, 42.616730, 58.425533>,  <29.706945, 42.756805, 58.473938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.518169, 42.616730, 58.425533>,  <29.203543, 42.383274, 58.344860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518169, 42.616730, 58.425533> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377586, 0.196152, 0.904960,
		0.488613, -0.787963, 0.374662,
		0.786566, 0.583643, 0.201681,
		29.754139, 42.791824, 58.486038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306688, 42.237434, 59.032661>,  <29.203543, 42.383274, 58.344860>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306688, 42.237434, 59.032661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450342, 42.602749, 58.955788>,  <29.536535, 42.821938, 58.909664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.450342, 42.602749, 58.955788>,  <29.306688, 42.237434, 59.032661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450342, 42.602749, 58.955788> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436437, 0.346365, 0.830394,
		0.824951, -0.214348, 0.522983,
		0.359136, 0.913283, -0.192185,
		29.558083, 42.876736, 58.898132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465992, 42.430573, 59.607864>,  <29.306688, 42.237434, 59.032661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465992, 42.430573, 59.607864> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468754, 42.785614, 59.423645>,  <29.470411, 42.998638, 59.313114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.468754, 42.785614, 59.423645>,  <29.465992, 42.430573, 59.607864>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.468754, 42.785614, 59.423645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468724, 0.409705, 0.782585,
		0.883318, 0.210467, 0.418872,
		0.006906, 0.887607, -0.460551,
		29.470825, 43.051895, 59.285480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792097, 43.088848, 59.949066>,  <29.465992, 42.430573, 59.607864>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792097, 43.088848, 59.949066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.514595, 43.254463, 59.713345>,  <29.348093, 43.353832, 59.571911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.514595, 43.254463, 59.713345>,  <29.792097, 43.088848, 59.949066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514595, 43.254463, 59.713345> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285452, 0.593153, 0.752786,
		0.661226, 0.690468, -0.293316,
		-0.693756, 0.414034, -0.589303,
		29.306469, 43.378674, 59.536552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902580, 43.853710, 59.904316>,  <29.792097, 43.088848, 59.949066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902580, 43.853710, 59.904316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521784, 43.734344, 59.877014>,  <29.293306, 43.662724, 59.860634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.521784, 43.734344, 59.877014>,  <29.902580, 43.853710, 59.904316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.521784, 43.734344, 59.877014> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206234, 0.460443, 0.863400,
		-0.226224, 0.836027, -0.499881,
		-0.951993, -0.298414, -0.068255,
		29.236185, 43.644821, 59.856537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.666355, 44.252392, 60.392761>,  <29.902580, 43.853710, 59.904316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.666355, 44.252392, 60.392761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391342, 43.979382, 60.293606>,  <29.226334, 43.815575, 60.234112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391342, 43.979382, 60.293606>,  <29.666355, 44.252392, 60.392761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391342, 43.979382, 60.293606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527133, 0.234324, 0.816837,
		-0.499429, 0.692275, -0.520889,
		-0.687533, -0.682530, -0.247893,
		29.185081, 43.774624, 60.219238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.087353, 44.707863, 60.546215>,  <29.666355, 44.252392, 60.392761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.087353, 44.707863, 60.546215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.339869, 44.786942, 60.246246>,  <29.491379, 44.834389, 60.066265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.339869, 44.786942, 60.246246>,  <29.087353, 44.707863, 60.546215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339869, 44.786942, 60.246246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558515, 0.786782, -0.262745,
		0.538081, 0.584713, 0.607108,
		0.631292, 0.197701, -0.749923,
		29.529257, 44.846252, 60.021271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.250683, 45.503212, 60.507675>,  <29.087353, 44.707863, 60.546215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.250683, 45.503212, 60.507675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311762, 45.326843, 60.153893>,  <29.348410, 45.221020, 59.941624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.311762, 45.326843, 60.153893>,  <29.250683, 45.503212, 60.507675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.311762, 45.326843, 60.153893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587478, 0.679166, -0.440005,
		0.794704, 0.586788, -0.155327,
		0.152697, -0.440924, -0.884460,
		29.357571, 45.194565, 59.888554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588726, 45.258720, 60.456387>,  <29.250683, 45.503212, 60.507675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588726, 45.258720, 60.456387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251722, 45.137711, 60.278103>,  <28.049520, 45.065105, 60.171135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.251722, 45.137711, 60.278103>,  <28.588726, 45.258720, 60.456387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.251722, 45.137711, 60.278103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263250, 0.490640, -0.830645,
		0.469963, -0.817163, -0.333735,
		-0.842517, -0.302517, -0.445701,
		27.998970, 45.046951, 60.144390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.816088, 44.978512, 59.868183>,  <28.588726, 45.258720, 60.456387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.816088, 44.978512, 59.868183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.450094, 45.120708, 59.791843>,  <28.230497, 45.206028, 59.746040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.450094, 45.120708, 59.791843>,  <28.816088, 44.978512, 59.868183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.450094, 45.120708, 59.791843> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293102, 0.260538, -0.919897,
		-0.277295, -0.897632, -0.342585,
		-0.914985, 0.355496, -0.190852,
		28.175598, 45.227356, 59.734589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.345947, 44.628304, 59.290562>,  <28.816088, 44.978512, 59.868183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.345947, 44.628304, 59.290562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297754, 45.023407, 59.330185>,  <28.268839, 45.260471, 59.353958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.297754, 45.023407, 59.330185>,  <28.345947, 44.628304, 59.290562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.297754, 45.023407, 59.330185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305674, 0.131847, -0.942963,
		-0.944483, -0.083330, -0.317818,
		-0.120481, 0.987761, 0.099056,
		28.261610, 45.319736, 59.359901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.945330, 44.794468, 58.776592>,  <28.345947, 44.628304, 59.290562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.945330, 44.794468, 58.776592> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161940, 45.120186, 58.860180>,  <28.291906, 45.315617, 58.910332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.161940, 45.120186, 58.860180>,  <27.945330, 44.794468, 58.776592>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.161940, 45.120186, 58.860180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361383, -0.001045, -0.932417,
		-0.759048, 0.580444, -0.294840,
		0.541524, 0.814299, 0.208969,
		28.324396, 45.364475, 58.922871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.909632, 45.351021, 58.195400>,  <27.945330, 44.794468, 58.776592>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.909632, 45.351021, 58.195400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242380, 45.412643, 58.408661>,  <28.442030, 45.449615, 58.536617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.242380, 45.412643, 58.408661>,  <27.909632, 45.351021, 58.195400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.242380, 45.412643, 58.408661> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547006, -0.065465, -0.834565,
		-0.093668, 0.985891, -0.138729,
		0.831872, 0.154058, 0.533156,
		28.491941, 45.458862, 58.568607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.350647, 45.936699, 57.902134>,  <27.909632, 45.351021, 58.195400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.350647, 45.936699, 57.902134> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562185, 45.674671, 58.117989>,  <28.689108, 45.517452, 58.247501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.562185, 45.674671, 58.117989>,  <28.350647, 45.936699, 57.902134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562185, 45.674671, 58.117989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567123, -0.200281, -0.798911,
		0.631422, 0.728539, 0.265588,
		0.528846, -0.655071, 0.539633,
		28.720839, 45.478149, 58.279877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.968151, 46.081207, 57.761337>,  <28.350647, 45.936699, 57.902134>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.968151, 46.081207, 57.761337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947357, 45.696133, 57.867565>,  <28.934881, 45.465088, 57.931301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.947357, 45.696133, 57.867565>,  <28.968151, 46.081207, 57.761337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.947357, 45.696133, 57.867565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644138, -0.235540, -0.727741,
		0.763141, 0.133234, 0.632349,
		-0.051984, -0.962689, 0.265571,
		28.931763, 45.407326, 57.947235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.678549, 45.879711, 57.569321>,  <28.968151, 46.081207, 57.761337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.678549, 45.879711, 57.569321> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459621, 45.547554, 57.611061>,  <29.328264, 45.348259, 57.636105>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.459621, 45.547554, 57.611061>,  <29.678549, 45.879711, 57.569321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.459621, 45.547554, 57.611061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637538, -0.494447, -0.590819,
		0.542207, -0.256841, 0.800028,
		-0.547318, -0.830395, 0.104346,
		29.295425, 45.298435, 57.642365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.222712, 45.410408, 57.637333>,  <29.678549, 45.879711, 57.569321>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.222712, 45.410408, 57.637333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880413, 45.228634, 57.538391>,  <29.675034, 45.119568, 57.479027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.880413, 45.228634, 57.538391>,  <30.222712, 45.410408, 57.637333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.880413, 45.228634, 57.538391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484353, -0.535521, -0.691823,
		0.181926, -0.711832, 0.678379,
		-0.855748, -0.454435, -0.247352,
		29.623688, 45.092304, 57.464184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439621, 44.752258, 57.656281>,  <30.222712, 45.410408, 57.637333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439621, 44.752258, 57.656281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108841, 44.735840, 57.431969>,  <29.910374, 44.725990, 57.297382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.108841, 44.735840, 57.431969>,  <30.439621, 44.752258, 57.656281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108841, 44.735840, 57.431969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428307, -0.692143, -0.580941,
		-0.364295, -0.720593, 0.589945,
		-0.826948, -0.041044, -0.560778,
		29.860756, 44.723526, 57.263737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.330765, 44.062920, 57.604156>,  <30.439621, 44.752258, 57.656281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.330765, 44.062920, 57.604156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147078, 44.243595, 57.298191>,  <30.036865, 44.352001, 57.114613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.147078, 44.243595, 57.298191>,  <30.330765, 44.062920, 57.604156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.147078, 44.243595, 57.298191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435037, -0.636398, -0.636977,
		-0.774506, -0.625278, 0.095745,
		-0.459220, 0.451691, -0.764913,
		30.009312, 44.379101, 57.068718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310053, 43.586571, 57.214104>,  <30.330765, 44.062920, 57.604156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310053, 43.586571, 57.214104> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227600, 43.886799, 56.962978>,  <30.178127, 44.066936, 56.812302>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.227600, 43.886799, 56.962978>,  <30.310053, 43.586571, 57.214104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.227600, 43.886799, 56.962978> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437297, -0.503300, -0.745292,
		-0.875375, -0.428170, -0.224476,
		-0.206133, 0.750573, -0.627814,
		30.165760, 44.111969, 56.774635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.941332, 43.313496, 56.615849>,  <30.310053, 43.586571, 57.214104>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.941332, 43.313496, 56.615849> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091404, 43.656574, 56.475224>,  <30.181448, 43.862423, 56.390850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.091404, 43.656574, 56.475224>,  <29.941332, 43.313496, 56.615849>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.091404, 43.656574, 56.475224> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310643, -0.473675, -0.824095,
		-0.873350, 0.199974, -0.444152,
		0.375181, 0.857696, -0.351564,
		30.203959, 43.913883, 56.369755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690836, 43.370220, 55.877029>,  <29.941332, 43.313496, 56.615849>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690836, 43.370220, 55.877029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018370, 43.594589, 55.925823>,  <30.214890, 43.729210, 55.955097>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.018370, 43.594589, 55.925823>,  <29.690836, 43.370220, 55.877029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.018370, 43.594589, 55.925823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316579, -0.264014, -0.911084,
		-0.478838, 0.784645, -0.393759,
		0.818835, 0.560918, 0.121982,
		30.264021, 43.762863, 55.962418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859087, 43.497185, 55.307220>,  <29.690836, 43.370220, 55.877029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859087, 43.497185, 55.307220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199688, 43.633621, 55.466518>,  <30.404049, 43.715485, 55.562096>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.199688, 43.633621, 55.466518>,  <29.859087, 43.497185, 55.307220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.199688, 43.633621, 55.466518> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506197, -0.336617, -0.794011,
		-0.136777, 0.877692, -0.459291,
		0.851503, 0.341094, 0.398244,
		30.455139, 43.735950, 55.585991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176826, 43.723194, 54.800041>,  <29.859087, 43.497185, 55.307220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.176826, 43.723194, 54.800041> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459126, 43.662239, 55.076794>,  <30.628504, 43.625668, 55.242847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.459126, 43.662239, 55.076794>,  <30.176826, 43.723194, 54.800041>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.459126, 43.662239, 55.076794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649067, -0.252360, -0.717653,
		0.283963, 0.955559, -0.079195,
		0.705745, -0.152384, 0.691883,
		30.670849, 43.616524, 55.284359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.788742, 44.045647, 54.555862>,  <30.176826, 43.723194, 54.800041>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.788742, 44.045647, 54.555862> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928177, 43.799335, 54.838509>,  <31.011837, 43.651546, 55.008095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.928177, 43.799335, 54.838509>,  <30.788742, 44.045647, 54.555862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.928177, 43.799335, 54.838509> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675459, -0.357624, -0.644872,
		0.649801, 0.702082, 0.291272,
		0.348588, -0.615781, 0.706612,
		31.032753, 43.614601, 55.050491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.601603, 44.143501, 54.640713>,  <30.788742, 44.045647, 54.555862>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.601603, 44.143501, 54.640713> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525457, 43.789230, 54.810108>,  <31.479771, 43.576668, 54.911743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.525457, 43.789230, 54.810108>,  <31.601603, 44.143501, 54.640713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.525457, 43.789230, 54.810108> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.816838, -0.382178, -0.432107,
		0.544553, 0.263662, 0.796206,
		-0.190362, -0.885676, 0.423485,
		31.468349, 43.523529, 54.937153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266712, 43.834316, 54.832344>,  <31.601603, 44.143501, 54.640713>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266712, 43.834316, 54.832344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043667, 43.502319, 54.837597>,  <31.909838, 43.303120, 54.840748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.043667, 43.502319, 54.837597>,  <32.266712, 43.834316, 54.832344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.043667, 43.502319, 54.837597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732659, -0.499539, -0.462247,
		0.390223, -0.248135, 0.886654,
		-0.557618, -0.829994, 0.013133,
		31.876381, 43.253323, 54.841537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775455, 43.304710, 55.171413>,  <32.266712, 43.834316, 54.832344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775455, 43.304710, 55.171413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487865, 43.134575, 54.951538>,  <32.315311, 43.032494, 54.819611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.487865, 43.134575, 54.951538>,  <32.775455, 43.304710, 55.171413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.487865, 43.134575, 54.951538> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643229, -0.706808, -0.294414,
		-0.263300, -0.565254, 0.781768,
		-0.718979, -0.425336, -0.549690,
		32.272171, 43.006973, 54.786633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828785, 42.574383, 55.296833>,  <32.775455, 43.304710, 55.171413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828785, 42.574383, 55.296833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634296, 42.581078, 54.947365>,  <32.517601, 42.585094, 54.737682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.634296, 42.581078, 54.947365>,  <32.828785, 42.574383, 55.296833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634296, 42.581078, 54.947365> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394875, -0.887702, -0.236768,
		-0.779525, -0.460114, 0.425013,
		-0.486225, 0.016740, -0.873673,
		32.488430, 42.586098, 54.685265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.560383, 41.975479, 55.248753>,  <32.828785, 42.574383, 55.296833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.560383, 41.975479, 55.248753> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537621, 42.094456, 54.867535>,  <32.523964, 42.165844, 54.638805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.537621, 42.094456, 54.867535>,  <32.560383, 41.975479, 55.248753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537621, 42.094456, 54.867535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110295, -0.946872, -0.302106,
		-0.992268, -0.122307, 0.021075,
		-0.056905, 0.297446, -0.953041,
		32.520550, 42.183689, 54.581623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332619, 41.362492, 54.946892>,  <32.560383, 41.975479, 55.248753>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332619, 41.362492, 54.946892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426891, 41.599632, 54.638870>,  <32.483456, 41.741917, 54.454060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.426891, 41.599632, 54.638870>,  <32.332619, 41.362492, 54.946892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.426891, 41.599632, 54.638870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222123, -0.804260, -0.551206,
		-0.946105, -0.041135, -0.321238,
		0.235684, 0.592852, -0.770051,
		32.497597, 41.777489, 54.407856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.135105, 41.025570, 54.351185>,  <32.332619, 41.362492, 54.946892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.135105, 41.025570, 54.351185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407066, 41.282642, 54.209938>,  <32.570244, 41.436886, 54.125191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.407066, 41.282642, 54.209938>,  <32.135105, 41.025570, 54.351185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407066, 41.282642, 54.209938> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320248, -0.693431, -0.645441,
		-0.659672, 0.325755, -0.677286,
		0.679907, 0.642679, -0.353115,
		32.611038, 41.475445, 54.104004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084774, 40.916664, 53.639107>,  <32.135105, 41.025570, 54.351185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084774, 40.916664, 53.639107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.428268, 41.111237, 53.703541>,  <32.634365, 41.227982, 53.742203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.428268, 41.111237, 53.703541>,  <32.084774, 40.916664, 53.639107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428268, 41.111237, 53.703541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437711, -0.532919, -0.724159,
		-0.266410, 0.692373, -0.670556,
		0.858740, 0.486433, 0.161084,
		32.685890, 41.257168, 53.751865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.345108, 40.966335, 53.006874>,  <32.084774, 40.916664, 53.639107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.345108, 40.966335, 53.006874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663982, 41.003765, 53.245449>,  <32.855309, 41.026222, 53.388596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.663982, 41.003765, 53.245449>,  <32.345108, 40.966335, 53.006874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.663982, 41.003765, 53.245449> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542519, -0.544483, -0.639696,
		0.264892, 0.833536, -0.484820,
		0.797185, 0.093573, 0.596439,
		32.903137, 41.031837, 53.424381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894165, 41.273785, 52.575638>,  <32.345108, 40.966335, 53.006874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894165, 41.273785, 52.575638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050735, 41.083710, 52.890846>,  <33.144676, 40.969666, 53.079971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.050735, 41.083710, 52.890846>,  <32.894165, 41.273785, 52.575638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050735, 41.083710, 52.890846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639487, -0.475314, -0.604262,
		0.661696, 0.740457, 0.117824,
		0.391427, -0.475185, 0.788026,
		33.168163, 40.941154, 53.127254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525288, 41.322731, 52.428478>,  <32.894165, 41.273785, 52.575638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525288, 41.322731, 52.428478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495132, 41.047745, 52.717392>,  <33.477039, 40.882751, 52.890739>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.495132, 41.047745, 52.717392>,  <33.525288, 41.322731, 52.428478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.495132, 41.047745, 52.717392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579677, -0.619596, -0.529221,
		0.811351, 0.378795, 0.445223,
		-0.075392, -0.687470, 0.722289,
		33.472515, 40.841503, 52.934078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.178246, 41.192032, 52.605999>,  <33.525288, 41.322731, 52.428478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.178246, 41.192032, 52.605999> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953518, 40.875504, 52.702469>,  <33.818684, 40.685585, 52.760353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.953518, 40.875504, 52.702469>,  <34.178246, 41.192032, 52.605999>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.953518, 40.875504, 52.702469> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548256, -0.574481, -0.607772,
		0.619497, -0.209229, 0.756602,
		-0.561817, -0.791325, 0.241178,
		33.784973, 40.638107, 52.774822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.653156, 40.740250, 52.759953>,  <34.178246, 41.192032, 52.605999>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.653156, 40.740250, 52.759953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326675, 40.517113, 52.699787>,  <34.130787, 40.383232, 52.663689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.326675, 40.517113, 52.699787>,  <34.653156, 40.740250, 52.759953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326675, 40.517113, 52.699787> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551463, -0.674530, -0.490813,
		0.172337, -0.483552, 0.858183,
		-0.816204, -0.557842, -0.150415,
		34.081814, 40.349762, 52.654663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731358, 40.056503, 53.108688>,  <34.653156, 40.740250, 52.759953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731358, 40.056503, 53.108688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457085, 40.006008, 52.821941>,  <34.292519, 39.975712, 52.649895>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.457085, 40.006008, 52.821941>,  <34.731358, 40.056503, 53.108688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.457085, 40.006008, 52.821941> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631529, -0.592889, -0.499653,
		-0.361946, -0.795328, 0.486261,
		-0.685687, -0.126241, -0.716866,
		34.251377, 39.968136, 52.606880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.907791, 39.374104, 52.768883>,  <34.731358, 40.056503, 53.108688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.907791, 39.374104, 52.768883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664104, 39.564095, 52.514874>,  <34.517895, 39.678089, 52.362469>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664104, 39.564095, 52.514874>,  <34.907791, 39.374104, 52.768883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664104, 39.564095, 52.514874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467124, -0.432163, -0.771381,
		-0.640823, -0.766571, 0.041406,
		-0.609213, 0.474978, -0.635025,
		34.481342, 39.706589, 52.324368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679600, 38.787254, 52.352139>,  <34.907791, 39.374104, 52.768883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679600, 38.787254, 52.352139> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628960, 39.129845, 52.151970>,  <34.598576, 39.335400, 52.031868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.628960, 39.129845, 52.151970>,  <34.679600, 38.787254, 52.352139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628960, 39.129845, 52.151970> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518677, -0.372865, -0.769380,
		-0.845545, -0.356961, -0.397029,
		-0.126600, 0.856476, -0.500421,
		34.590981, 39.386787, 52.001842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.315716, 38.629402, 51.744072>,  <34.679600, 38.787254, 52.352139>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.315716, 38.629402, 51.744072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493095, 38.984707, 51.696163>,  <34.599522, 39.197891, 51.667416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.493095, 38.984707, 51.696163>,  <34.315716, 38.629402, 51.744072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.493095, 38.984707, 51.696163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216584, -0.235867, -0.947342,
		-0.869738, 0.394157, -0.296978,
		0.443449, 0.888261, -0.119774,
		34.626129, 39.251186, 51.660233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263199, 38.855862, 50.986698>,  <34.315716, 38.629402, 51.744072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263199, 38.855862, 50.986698> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569099, 39.057201, 51.147594>,  <34.752640, 39.178005, 51.244133>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.569099, 39.057201, 51.147594>,  <34.263199, 38.855862, 50.986698>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569099, 39.057201, 51.147594> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553488, -0.193605, -0.810042,
		-0.329861, 0.842113, -0.426658,
		0.764750, 0.503351, 0.402236,
		34.798523, 39.208206, 51.268265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625233, 39.100243, 50.456478>,  <34.263199, 38.855862, 50.986698>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625233, 39.100243, 50.456478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903393, 39.187878, 50.730240>,  <35.070290, 39.240459, 50.894497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.903393, 39.187878, 50.730240>,  <34.625233, 39.100243, 50.456478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.903393, 39.187878, 50.730240> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718086, -0.248497, -0.650078,
		0.027649, 0.943530, -0.330131,
		0.695405, 0.219088, 0.684407,
		35.112015, 39.253605, 50.935562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.014957, 39.469666, 50.123230>,  <34.625233, 39.100243, 50.456478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.014957, 39.469666, 50.123230> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228340, 39.360161, 50.443352>,  <35.356369, 39.294456, 50.635426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.228340, 39.360161, 50.443352>,  <35.014957, 39.469666, 50.123230>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228340, 39.360161, 50.443352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712710, -0.364041, -0.599598,
		0.455491, 0.890240, 0.000915,
		0.533453, -0.273764, 0.800301,
		35.388374, 39.278030, 50.683441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.757999, 39.567783, 49.956680>,  <35.014957, 39.469666, 50.123230>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.757999, 39.567783, 49.956680> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768669, 39.347782, 50.290577>,  <35.775070, 39.215782, 50.490913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.768669, 39.347782, 50.290577>,  <35.757999, 39.567783, 49.956680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.768669, 39.347782, 50.290577> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746417, -0.544490, -0.382613,
		0.664944, 0.633270, 0.396004,
		0.026677, -0.550000, 0.834738,
		35.776672, 39.182781, 50.541000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.496189, 39.575874, 50.165195>,  <35.757999, 39.567783, 49.956680>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.496189, 39.575874, 50.165195> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320873, 39.238163, 50.288544>,  <36.215683, 39.035538, 50.362553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.320873, 39.238163, 50.288544>,  <36.496189, 39.575874, 50.165195>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320873, 39.238163, 50.288544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659608, -0.535178, -0.527733,
		0.610589, -0.027894, 0.791456,
		-0.438290, -0.844279, 0.308375,
		36.189384, 38.984879, 50.381058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.077614, 39.124748, 50.269688>,  <36.496189, 39.575874, 50.165195>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.077614, 39.124748, 50.269688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749264, 38.896782, 50.254929>,  <36.552254, 38.760002, 50.246075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.749264, 38.896782, 50.254929>,  <37.077614, 39.124748, 50.269688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749264, 38.896782, 50.254929> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517346, -0.714688, -0.470717,
		0.241896, -0.405490, 0.881512,
		-0.820877, -0.569912, -0.036899,
		36.503002, 38.725807, 50.243858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195103, 38.453987, 50.683174>,  <37.077614, 39.124748, 50.269688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195103, 38.453987, 50.683174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937687, 38.354977, 50.393463>,  <36.783237, 38.295570, 50.219635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.937687, 38.354977, 50.393463>,  <37.195103, 38.453987, 50.683174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937687, 38.354977, 50.393463> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509637, -0.844578, -0.164188,
		-0.571071, -0.474782, 0.669672,
		-0.643544, -0.247527, -0.724280,
		36.744625, 38.280720, 50.176178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.133213, 37.688030, 50.694649>,  <37.195103, 38.453987, 50.683174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.133213, 37.688030, 50.694649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979576, 37.780704, 50.337147>,  <36.887394, 37.836308, 50.122646>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.979576, 37.780704, 50.337147>,  <37.133213, 37.688030, 50.694649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.979576, 37.780704, 50.337147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253484, -0.904349, -0.343365,
		-0.887816, -0.358437, 0.288628,
		-0.384095, 0.231682, -0.893753,
		36.864346, 37.850208, 50.069019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067406, 37.053104, 50.286591>,  <37.133213, 37.688030, 50.694649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067406, 37.053104, 50.286591> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033855, 37.283009, 49.960983>,  <37.013725, 37.420952, 49.765621>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.033855, 37.283009, 49.960983>,  <37.067406, 37.053104, 50.286591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.033855, 37.283009, 49.960983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280003, -0.770386, -0.572804,
		-0.956328, -0.275969, -0.096319,
		-0.083873, 0.574758, -0.814014,
		37.008694, 37.455437, 49.716778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827892, 36.580730, 49.882637>,  <37.067406, 37.053104, 50.286591>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827892, 36.580730, 49.882637> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961658, 36.858250, 49.627506>,  <37.041916, 37.024761, 49.474430>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.961658, 36.858250, 49.627506>,  <36.827892, 36.580730, 49.882637>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.961658, 36.858250, 49.627506> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254907, -0.718150, -0.647521,
		-0.907298, 0.053954, -0.417012,
		0.334414, 0.693794, -0.637823,
		37.061981, 37.066387, 49.436161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.473778, 36.597759, 49.308399>,  <36.827892, 36.580730, 49.882637>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.473778, 36.597759, 49.308399> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815311, 36.752953, 49.169590>,  <37.020233, 36.846069, 49.086304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.815311, 36.752953, 49.169590>,  <36.473778, 36.597759, 49.308399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815311, 36.752953, 49.169590> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018707, -0.689103, -0.724422,
		-0.520201, 0.612047, -0.595642,
		0.853839, 0.387988, -0.347022,
		37.071465, 36.869350, 49.065483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360550, 36.836555, 48.744778>,  <36.473778, 36.597759, 49.308399>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360550, 36.836555, 48.744778> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747604, 36.735653, 48.747715>,  <36.979836, 36.675110, 48.749477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747604, 36.735653, 48.747715>,  <36.360550, 36.836555, 48.744778>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747604, 36.735653, 48.747715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189393, -0.745097, -0.639500,
		0.166791, 0.617410, -0.768756,
		0.967632, -0.252259, 0.007343,
		37.037895, 36.659977, 48.749916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696365, 36.939312, 48.851471>,  <36.360550, 36.836555, 48.744778>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696365, 36.939312, 48.851471> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506577, 36.742130, 48.559753>,  <35.392704, 36.623821, 48.384724>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.506577, 36.742130, 48.559753>,  <35.696365, 36.939312, 48.851471>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.506577, 36.742130, 48.559753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831765, 0.522284, 0.188113,
		0.288169, 0.695859, -0.657829,
		-0.474474, -0.492951, -0.729297,
		35.364235, 36.594246, 48.340965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.336357, 37.452438, 48.431725>,  <35.696365, 36.939312, 48.851471>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.336357, 37.452438, 48.431725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158539, 37.104946, 48.344379>,  <35.051849, 36.896450, 48.291973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.158539, 37.104946, 48.344379>,  <35.336357, 37.452438, 48.431725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158539, 37.104946, 48.344379> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893371, 0.447763, 0.037363,
		0.065318, 0.211691, -0.975151,
		-0.444546, -0.868732, -0.218366,
		35.025173, 36.844326, 48.278870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808838, 37.651840, 48.014587>,  <35.336357, 37.452438, 48.431725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808838, 37.651840, 48.014587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692863, 37.291008, 48.142452>,  <34.623280, 37.074509, 48.219170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.692863, 37.291008, 48.142452>,  <34.808838, 37.651840, 48.014587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692863, 37.291008, 48.142452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.904791, 0.367223, 0.215638,
		-0.311909, -0.226702, -0.922669,
		-0.289940, -0.902083, 0.319658,
		34.605881, 37.020382, 48.238350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.113380, 37.572014, 47.724159>,  <34.808838, 37.651840, 48.014587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.113380, 37.572014, 47.724159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130016, 37.295147, 48.012371>,  <34.139999, 37.129025, 48.185299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.130016, 37.295147, 48.012371>,  <34.113380, 37.572014, 47.724159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.130016, 37.295147, 48.012371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959346, 0.173817, 0.222355,
		-0.279149, -0.700490, -0.656802,
		0.041594, -0.692171, 0.720534,
		34.142494, 37.087494, 48.228531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.483505, 37.317871, 47.674812>,  <34.113380, 37.572014, 47.724159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.483505, 37.317871, 47.674812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620060, 37.198811, 48.031433>,  <33.701992, 37.127373, 48.245403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.620060, 37.198811, 48.031433>,  <33.483505, 37.317871, 47.674812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.620060, 37.198811, 48.031433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.921167, 0.082593, 0.380302,
		-0.186834, -0.951095, -0.245991,
		0.341386, -0.297652, 0.891548,
		33.722477, 37.109516, 48.298897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976475, 36.801716, 47.975578>,  <33.483505, 37.317871, 47.674812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976475, 36.801716, 47.975578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194088, 36.962788, 48.270027>,  <33.324654, 37.059433, 48.446697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.194088, 36.962788, 48.270027>,  <32.976475, 36.801716, 47.975578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194088, 36.962788, 48.270027> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826837, 0.108042, 0.551968,
		0.142737, -0.908939, 0.391734,
		0.544029, 0.402686, 0.736122,
		33.357296, 37.083591, 48.490864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.522038, 36.766411, 48.541924>,  <32.976475, 36.801716, 47.975578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.522038, 36.766411, 48.541924> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770313, 37.055435, 48.663677>,  <32.919277, 37.228851, 48.736729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.770313, 37.055435, 48.663677>,  <32.522038, 36.766411, 48.541924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770313, 37.055435, 48.663677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764352, 0.471140, 0.440220,
		0.174677, -0.505897, 0.844722,
		0.620689, 0.722561, 0.304386,
		32.956520, 37.272205, 48.754993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.350086, 36.892006, 49.236465>,  <32.522038, 36.766411, 48.541924>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.350086, 36.892006, 49.236465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.557213, 37.225487, 49.159729>,  <32.681488, 37.425575, 49.113686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.557213, 37.225487, 49.159729>,  <32.350086, 36.892006, 49.236465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557213, 37.225487, 49.159729> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540764, 0.492747, 0.681743,
		0.662902, -0.249277, 0.705990,
		0.517818, 0.833703, -0.191843,
		32.712559, 37.475597, 49.102177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.837421, 37.056896, 49.711422>,  <32.350086, 36.892006, 49.236465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.837421, 37.056896, 49.711422> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712715, 37.391327, 49.530853>,  <32.637890, 37.591984, 49.422512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.712715, 37.391327, 49.530853>,  <32.837421, 37.056896, 49.711422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712715, 37.391327, 49.530853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494565, 0.262874, 0.828434,
		0.811299, 0.481536, 0.331537,
		-0.311768, 0.836075, -0.451420,
		32.619186, 37.642151, 49.395428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.609924, 37.562740, 50.207024>,  <32.837421, 37.056896, 49.711422>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.609924, 37.562740, 50.207024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450539, 37.760536, 49.898037>,  <32.354908, 37.879211, 49.712643>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.450539, 37.760536, 49.898037>,  <32.609924, 37.562740, 50.207024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450539, 37.760536, 49.898037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621200, 0.474134, 0.623945,
		0.674786, 0.728479, 0.118249,
		-0.398465, 0.494485, -0.772470,
		32.330997, 37.908882, 49.666294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.696285, 38.254223, 50.452663>,  <32.609924, 37.562740, 50.207024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.696285, 38.254223, 50.452663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.428608, 38.252625, 50.155430>,  <32.268002, 38.251663, 49.977089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.428608, 38.252625, 50.155430>,  <32.696285, 38.254223, 50.452663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.428608, 38.252625, 50.155430> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542969, 0.685333, 0.485287,
		0.507317, 0.728219, -0.460789,
		-0.669189, -0.004000, -0.743082,
		32.227852, 38.251423, 49.932507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681953, 38.925171, 50.134296>,  <32.696285, 38.254223, 50.452663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681953, 38.925171, 50.134296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328648, 38.747478, 50.074291>,  <32.116665, 38.640862, 50.038288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.328648, 38.747478, 50.074291>,  <32.681953, 38.925171, 50.134296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.328648, 38.747478, 50.074291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453417, 0.727769, 0.514554,
		-0.119409, 0.522504, -0.844234,
		-0.883264, -0.444232, -0.150010,
		32.063667, 38.614208, 50.029289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.264133, 39.390244, 49.977131>,  <32.681953, 38.925171, 50.134296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.264133, 39.390244, 49.977131> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980125, 39.122448, 50.064457>,  <31.809721, 38.961769, 50.116852>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.980125, 39.122448, 50.064457>,  <32.264133, 39.390244, 49.977131>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980125, 39.122448, 50.064457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595879, 0.736411, 0.320355,
		-0.375241, 0.097370, -0.921799,
		-0.710015, -0.669491, 0.218311,
		31.767120, 38.921600, 50.129951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686203, 39.735046, 49.743191>,  <32.264133, 39.390244, 49.977131>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686203, 39.735046, 49.743191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585239, 39.451778, 50.006947>,  <31.524662, 39.281818, 50.165199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.585239, 39.451778, 50.006947>,  <31.686203, 39.735046, 49.743191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.585239, 39.451778, 50.006947> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707542, 0.599924, 0.373465,
		-0.660057, -0.372278, -0.652482,
		-0.252407, -0.708167, 0.659387,
		31.509518, 39.239330, 50.204762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.013445, 39.844196, 49.921581>,  <31.686203, 39.735046, 49.743191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.013445, 39.844196, 49.921581> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.126369, 39.604568, 50.221294>,  <31.194124, 39.460793, 50.401123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.126369, 39.604568, 50.221294>,  <31.013445, 39.844196, 49.921581>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126369, 39.604568, 50.221294> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645250, 0.459399, 0.610413,
		-0.709897, -0.655799, -0.256855,
		0.282309, -0.599066, 0.749281,
		31.211061, 39.424850, 50.446079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.407198, 39.592667, 50.209000>,  <31.013445, 39.844196, 49.921581>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.407198, 39.592667, 50.209000> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681051, 39.549377, 50.497322>,  <30.845364, 39.523403, 50.670315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.681051, 39.549377, 50.497322>,  <30.407198, 39.592667, 50.209000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681051, 39.549377, 50.497322> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613919, 0.447463, 0.650293,
		-0.392911, -0.887730, 0.239908,
		0.684634, -0.108223, 0.720807,
		30.886442, 39.516911, 50.713566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.024086, 39.372871, 50.856567>,  <30.407198, 39.592667, 50.209000>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.024086, 39.372871, 50.856567> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379107, 39.511398, 50.978100>,  <30.592119, 39.594513, 51.051022>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.379107, 39.511398, 50.978100>,  <30.024086, 39.372871, 50.856567>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379107, 39.511398, 50.978100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431426, 0.393412, 0.811849,
		0.161624, -0.851641, 0.498583,
		0.887552, 0.346316, 0.303835,
		30.645372, 39.615292, 51.069252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182844, 39.116753, 51.600990>,  <30.024086, 39.372871, 50.856567>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182844, 39.116753, 51.600990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411139, 39.440716, 51.546860>,  <30.548115, 39.635094, 51.514381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.411139, 39.440716, 51.546860>,  <30.182844, 39.116753, 51.600990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.411139, 39.440716, 51.546860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388589, 0.411585, 0.824376,
		0.723367, -0.417913, 0.549627,
		0.570736, 0.809905, -0.135331,
		30.582359, 39.683689, 51.506260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.421679, 39.234444, 52.158119>,  <30.182844, 39.116753, 51.600990>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.421679, 39.234444, 52.158119> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513048, 39.591202, 52.001999>,  <30.567869, 39.805256, 51.908325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.513048, 39.591202, 52.001999>,  <30.421679, 39.234444, 52.158119>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.513048, 39.591202, 52.001999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124709, 0.424407, 0.896843,
		0.965542, -0.156185, 0.208173,
		0.228423, 0.891899, -0.390305,
		30.581575, 39.858772, 51.884907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821739, 39.622211, 52.589912>,  <30.421679, 39.234444, 52.158119>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821739, 39.622211, 52.589912> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656097, 39.916779, 52.375919>,  <30.556713, 40.093517, 52.247524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.656097, 39.916779, 52.375919>,  <30.821739, 39.622211, 52.589912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.656097, 39.916779, 52.375919> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170103, 0.514781, 0.840277,
		0.894194, 0.438964, -0.087906,
		-0.414104, 0.736418, -0.534983,
		30.531866, 40.137703, 52.215424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058786, 40.270271, 52.899319>,  <30.821739, 39.622211, 52.589912>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058786, 40.270271, 52.899319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724230, 40.331501, 52.688789>,  <30.523495, 40.368237, 52.562473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.724230, 40.331501, 52.688789>,  <31.058786, 40.270271, 52.899319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.724230, 40.331501, 52.688789> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394581, 0.498357, 0.771975,
		0.380465, 0.853352, -0.356423,
		-0.836393, 0.153071, -0.526324,
		30.473312, 40.377422, 52.530891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.908155, 40.972290, 52.941723>,  <31.058786, 40.270271, 52.899319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.908155, 40.972290, 52.941723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561665, 40.790398, 52.858906>,  <30.353769, 40.681263, 52.809216>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.561665, 40.790398, 52.858906>,  <30.908155, 40.972290, 52.941723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.561665, 40.790398, 52.858906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427003, 0.458568, 0.779348,
		-0.259453, 0.763501, -0.591397,
		-0.866229, -0.454733, -0.207040,
		30.301796, 40.653976, 52.796795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.527727, 41.491756, 52.954956>,  <30.908155, 40.972290, 52.941723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.527727, 41.491756, 52.954956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287462, 41.174381, 52.994255>,  <30.143303, 40.983955, 53.017834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.287462, 41.174381, 52.994255>,  <30.527727, 41.491756, 52.954956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.287462, 41.174381, 52.994255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344451, 0.367720, 0.863791,
		-0.721496, 0.485007, -0.494178,
		-0.600664, -0.793442, 0.098248,
		30.107264, 40.936348, 53.023731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.985456, 41.770424, 53.217945>,  <30.527727, 41.491756, 52.954956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.985456, 41.770424, 53.217945> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908686, 41.380615, 53.264378>,  <29.862623, 41.146729, 53.292236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.908686, 41.380615, 53.264378>,  <29.985456, 41.770424, 53.217945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.908686, 41.380615, 53.264378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414434, 0.187694, 0.890514,
		-0.889611, 0.122805, -0.439898,
		-0.191926, -0.974520, 0.116080,
		29.851109, 41.088261, 53.299202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.242674, 41.694210, 53.468361>,  <29.985456, 41.770424, 53.217945>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.242674, 41.694210, 53.468361> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447847, 41.369324, 53.579502>,  <29.570951, 41.174393, 53.646187>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.447847, 41.369324, 53.579502>,  <29.242674, 41.694210, 53.468361>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447847, 41.369324, 53.579502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251574, 0.167234, 0.953280,
		-0.820738, -0.558869, -0.118553,
		0.512933, -0.812218, 0.277852,
		29.601727, 41.125660, 53.662857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.852953, 41.147522, 53.873283>,  <29.242674, 41.694210, 53.468361>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.852953, 41.147522, 53.873283> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.239948, 41.157421, 53.973965>,  <29.472145, 41.163361, 54.034374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.239948, 41.157421, 53.973965>,  <28.852953, 41.147522, 53.873283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.239948, 41.157421, 53.973965> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252707, 0.135517, 0.958005,
		-0.010403, -0.990466, 0.137365,
		0.967487, 0.024747, 0.251707,
		29.530195, 41.164845, 54.049477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.023653, 40.689674, 54.518742>,  <28.852953, 41.147522, 53.873283>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.023653, 40.689674, 54.518742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287895, 40.988060, 54.484959>,  <29.446442, 41.167091, 54.464687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.287895, 40.988060, 54.484959>,  <29.023653, 40.689674, 54.518742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287895, 40.988060, 54.484959> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231960, 0.309813, 0.922068,
		0.713997, -0.589535, 0.377699,
		0.660607, 0.745966, -0.084457,
		29.486078, 41.211849, 54.459621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276337, 40.781693, 55.185081>,  <29.023653, 40.689674, 54.518742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276337, 40.781693, 55.185081> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319704, 41.129864, 54.992996>,  <29.345724, 41.338764, 54.877743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.319704, 41.129864, 54.992996>,  <29.276337, 40.781693, 55.185081>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.319704, 41.129864, 54.992996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330063, 0.487179, 0.808526,
		0.937712, 0.070842, 0.340115,
		0.108419, 0.870424, -0.480216,
		29.352230, 41.390991, 54.848930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590275, 41.137985, 55.651470>,  <29.276337, 40.781693, 55.185081>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590275, 41.137985, 55.651470> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415121, 41.389473, 55.394417>,  <29.310028, 41.540363, 55.240185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.415121, 41.389473, 55.394417>,  <29.590275, 41.137985, 55.651470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415121, 41.389473, 55.394417> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406755, 0.498910, 0.765270,
		0.801752, 0.596494, 0.037267,
		-0.437886, 0.628716, -0.642629,
		29.283754, 41.578087, 55.201630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.723911, 41.782211, 56.015156>,  <29.590275, 41.137985, 55.651470>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.723911, 41.782211, 56.015156> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423027, 41.819130, 55.754185>,  <29.242496, 41.841282, 55.597603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.423027, 41.819130, 55.754185>,  <29.723911, 41.782211, 56.015156>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423027, 41.819130, 55.754185> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570045, 0.405468, 0.714594,
		0.330495, 0.909438, -0.252381,
		-0.752211, 0.092301, -0.652426,
		29.197363, 41.846821, 55.558456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.471825, 42.457001, 56.143318>,  <29.723911, 41.782211, 56.015156>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.471825, 42.457001, 56.143318> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202789, 42.282616, 55.904133>,  <29.041368, 42.177982, 55.760620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.202789, 42.282616, 55.904133>,  <29.471825, 42.457001, 56.143318>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.202789, 42.282616, 55.904133> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738465, 0.343103, 0.580474,
		-0.047904, 0.831994, -0.552713,
		-0.672588, -0.435966, -0.597963,
		29.001013, 42.151825, 55.724743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978292, 43.074589, 55.922962>,  <29.471825, 42.457001, 56.143318>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978292, 43.074589, 55.922962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802248, 42.719742, 55.867355>,  <28.696621, 42.506832, 55.833992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.802248, 42.719742, 55.867355>,  <28.978292, 43.074589, 55.922962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.802248, 42.719742, 55.867355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829097, 0.342017, 0.442292,
		-0.344817, 0.309918, -0.886032,
		-0.440112, -0.887116, -0.139019,
		28.670214, 42.453606, 55.825649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337507, 43.120258, 55.533554>,  <28.978292, 43.074589, 55.922962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337507, 43.120258, 55.533554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.332563, 42.795155, 55.766541>,  <28.329597, 42.600090, 55.906334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.332563, 42.795155, 55.766541>,  <28.337507, 43.120258, 55.533554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.332563, 42.795155, 55.766541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862952, 0.302938, 0.404405,
		-0.505135, -0.497641, -0.705118,
		-0.012358, -0.812762, 0.582465,
		28.328856, 42.551327, 55.941280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.625940, 43.090084, 55.746483>,  <28.337507, 43.120258, 55.533554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.625940, 43.090084, 55.746483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.773069, 42.802101, 55.981895>,  <27.861347, 42.629311, 56.123142>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.773069, 42.802101, 55.981895>,  <27.625940, 43.090084, 55.746483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.773069, 42.802101, 55.981895> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767785, 0.121919, 0.629001,
		-0.524609, -0.683222, -0.507930,
		0.367821, -0.719960, 0.588528,
		27.883415, 42.586113, 56.158455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.039471, 42.669739, 55.834236>,  <27.625940, 43.090084, 55.746483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.039471, 42.669739, 55.834236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321690, 42.630444, 56.114964>,  <27.491020, 42.606869, 56.283401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.321690, 42.630444, 56.114964>,  <27.039471, 42.669739, 55.834236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.321690, 42.630444, 56.114964> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700373, 0.054389, 0.711702,
		-0.108085, -0.993676, -0.030426,
		0.705546, -0.098234, 0.701822,
		27.533354, 42.600975, 56.325512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.746567, 42.107025, 56.216290>,  <27.039471, 42.669739, 55.834236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.746567, 42.107025, 56.216290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016005, 42.295185, 56.444324>,  <27.177668, 42.408081, 56.581146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.016005, 42.295185, 56.444324>,  <26.746567, 42.107025, 56.216290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.016005, 42.295185, 56.444324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657320, 0.028596, 0.753069,
		0.337939, -0.881992, 0.328463,
		0.673593, 0.470397, 0.570087,
		27.218082, 42.436302, 56.615349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.766539, 41.787983, 56.869759>,  <26.746567, 42.107025, 56.216290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.766539, 41.787983, 56.869759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935095, 42.139881, 56.957832>,  <27.036228, 42.351021, 57.010677>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.935095, 42.139881, 56.957832>,  <26.766539, 41.787983, 56.869759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.935095, 42.139881, 56.957832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697675, 0.159370, 0.698463,
		0.579380, -0.447938, 0.680934,
		0.421389, 0.879746, 0.220180,
		27.061512, 42.403805, 57.023888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630821, 41.686707, 57.669365>,  <26.766539, 41.787983, 56.869759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.630821, 41.686707, 57.669365> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.399645, 41.405144, 57.834530>,  <26.260939, 41.236206, 57.933628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.399645, 41.405144, 57.834530>,  <26.630821, 41.686707, 57.669365>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.399645, 41.405144, 57.834530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154447, -0.591175, -0.791618,
		0.801329, -0.393736, 0.450382,
		-0.577943, -0.703906, 0.412914,
		26.226261, 41.193974, 57.958405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.040859, 40.996082, 57.652645>,  <26.630821, 41.686707, 57.669365>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.040859, 40.996082, 57.652645> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.644348, 40.944065, 57.661186>,  <26.406441, 40.912857, 57.666309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.644348, 40.944065, 57.661186>,  <27.040859, 40.996082, 57.652645>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.644348, 40.944065, 57.661186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065157, -0.624463, -0.778332,
		0.114545, -0.770153, 0.627490,
		-0.991279, -0.130039, 0.021348,
		26.346964, 40.905052, 57.667591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.889168, 40.258904, 57.676376>,  <27.040859, 40.996082, 57.652645>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.889168, 40.258904, 57.676376> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.551245, 40.419983, 57.535446>,  <26.348492, 40.516628, 57.450886>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.551245, 40.419983, 57.535446>,  <26.889168, 40.258904, 57.676376>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.551245, 40.419983, 57.535446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036755, -0.613244, -0.789038,
		-0.533804, -0.679537, 0.503273,
		-0.844809, 0.402694, -0.352328,
		26.297802, 40.540791, 57.429749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.705908, 39.740837, 57.160522>,  <26.889168, 40.258904, 57.676376>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.705908, 39.740837, 57.160522> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.469746, 40.039108, 57.036983>,  <26.328049, 40.218071, 56.962860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.469746, 40.039108, 57.036983>,  <26.705908, 39.740837, 57.160522>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.469746, 40.039108, 57.036983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021212, -0.396862, -0.917633,
		-0.806829, -0.535223, 0.250127,
		-0.590404, 0.745679, -0.308847,
		26.292624, 40.262814, 56.944328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.321857, 39.404720, 56.698483>,  <26.705908, 39.740837, 57.160522>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.321857, 39.404720, 56.698483> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.272385, 39.794186, 56.621876>,  <26.242701, 40.027866, 56.575912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.272385, 39.794186, 56.621876>,  <26.321857, 39.404720, 56.698483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.272385, 39.794186, 56.621876> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068727, -0.200940, -0.977190,
		-0.989939, -0.107699, 0.091770,
		-0.123683, 0.973665, -0.191517,
		26.235279, 40.086285, 56.564423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.695906, 39.455177, 56.305614>,  <26.321857, 39.404720, 56.698483>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.695906, 39.455177, 56.305614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.980106, 39.730782, 56.248409>,  <26.150627, 39.896145, 56.214088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.980106, 39.730782, 56.248409>,  <25.695906, 39.455177, 56.305614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.980106, 39.730782, 56.248409> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048303, -0.250500, -0.966911,
		-0.702038, 0.680082, -0.211261,
		0.710500, 0.689012, -0.143010,
		26.193256, 39.937485, 56.205505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.709940, 39.436756, 55.602562>,  <25.695906, 39.455177, 56.305614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.709940, 39.436756, 55.602562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.011305, 39.687309, 55.682583>,  <26.192123, 39.837639, 55.730595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.011305, 39.687309, 55.682583>,  <25.709940, 39.436756, 55.602562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.011305, 39.687309, 55.682583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356444, -0.133382, -0.924747,
		-0.552558, 0.768022, -0.323761,
		0.753410, 0.626379, 0.200056,
		26.237328, 39.875221, 55.742599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.817951, 39.881565, 55.031338>,  <25.709940, 39.436756, 55.602562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.817951, 39.881565, 55.031338> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.175274, 39.898209, 55.210342>,  <26.389668, 39.908195, 55.317745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.175274, 39.898209, 55.210342>,  <25.817951, 39.881565, 55.031338>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175274, 39.898209, 55.210342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449375, -0.064969, -0.890978,
		-0.008001, 0.997019, -0.076737,
		0.893307, 0.041613, 0.447516,
		26.443266, 39.910694, 55.344597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.252659, 40.262966, 54.627174>,  <25.817951, 39.881565, 55.031338>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.252659, 40.262966, 54.627174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.518702, 40.074081, 54.858570>,  <26.678328, 39.960751, 54.997406>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.518702, 40.074081, 54.858570>,  <26.252659, 40.262966, 54.627174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.518702, 40.074081, 54.858570> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476089, -0.328679, -0.815665,
		0.575301, 0.817918, 0.006206,
		0.665108, -0.472208, 0.578491,
		26.718233, 39.932419, 55.032116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774006, 40.524769, 54.307053>,  <26.252659, 40.262966, 54.627174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774006, 40.524769, 54.307053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.882849, 40.193707, 54.503399>,  <26.948154, 39.995071, 54.621208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.882849, 40.193707, 54.503399>,  <26.774006, 40.524769, 54.307053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.882849, 40.193707, 54.503399> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482171, -0.324182, -0.813890,
		0.832748, 0.458146, 0.310858,
		0.272106, -0.827652, 0.490867,
		26.964481, 39.945412, 54.650658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.482840, 40.386387, 54.235439>,  <26.774006, 40.524769, 54.307053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.482840, 40.386387, 54.235439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337299, 40.024227, 54.322956>,  <27.249975, 39.806931, 54.375465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.337299, 40.024227, 54.322956>,  <27.482840, 40.386387, 54.235439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337299, 40.024227, 54.322956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481227, -0.383838, -0.788092,
		0.797517, -0.181457, 0.575360,
		-0.363850, -0.905396, 0.218795,
		27.228144, 39.752609, 54.388596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.012058, 39.984997, 54.200336>,  <27.482840, 40.386387, 54.235439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.012058, 39.984997, 54.200336> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713604, 39.718708, 54.196392>,  <27.534531, 39.558937, 54.194027>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.713604, 39.718708, 54.196392>,  <28.012058, 39.984997, 54.200336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.713604, 39.718708, 54.196392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528502, -0.583205, -0.616894,
		0.404927, -0.465499, 0.786985,
		-0.746137, -0.665719, -0.009862,
		27.489763, 39.518993, 54.193432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.380623, 39.431858, 54.223824>,  <28.012058, 39.984997, 54.200336>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.380623, 39.431858, 54.223824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.023098, 39.308670, 54.093437>,  <27.808582, 39.234756, 54.015205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.023098, 39.308670, 54.093437>,  <28.380623, 39.431858, 54.223824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.023098, 39.308670, 54.093437> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447150, -0.556993, -0.699868,
		0.033978, -0.771306, 0.635556,
		-0.893813, -0.307969, -0.325964,
		27.754953, 39.216278, 53.995647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400032, 38.703049, 54.229427>,  <28.380623, 39.431858, 54.223824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400032, 38.703049, 54.229427> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.131433, 38.830944, 53.962040>,  <27.970274, 38.907681, 53.801605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.131433, 38.830944, 53.962040>,  <28.400032, 38.703049, 54.229427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.131433, 38.830944, 53.962040> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455471, -0.533476, -0.712706,
		-0.584498, -0.783049, 0.212592,
		-0.671497, 0.319745, -0.668472,
		27.929983, 38.926868, 53.761497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171286, 38.165367, 53.909458>,  <28.400032, 38.703049, 54.229427>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171286, 38.165367, 53.909458> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049696, 38.451656, 53.657955>,  <27.976742, 38.623428, 53.507053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.049696, 38.451656, 53.657955>,  <28.171286, 38.165367, 53.909458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049696, 38.451656, 53.657955> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387973, -0.509781, -0.767854,
		-0.870102, -0.477349, -0.122722,
		-0.303974, 0.715724, -0.628760,
		27.958504, 38.666374, 53.469326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.036776, 37.780430, 53.301117>,  <28.171286, 38.165367, 53.909458>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.036776, 37.780430, 53.301117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034813, 38.155273, 53.161522>,  <28.033636, 38.380180, 53.077763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.034813, 38.155273, 53.161522>,  <28.036776, 37.780430, 53.301117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.034813, 38.155273, 53.161522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374933, -0.321813, -0.869403,
		-0.927039, -0.135114, -0.349776,
		-0.004906, 0.937113, -0.348992,
		28.033340, 38.436409, 53.056824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616999, 37.782753, 52.615215>,  <28.036776, 37.780430, 53.301117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.616999, 37.782753, 52.615215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.870842, 38.091873, 52.617821>,  <28.023148, 38.277348, 52.619385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.870842, 38.091873, 52.617821>,  <27.616999, 37.782753, 52.615215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.870842, 38.091873, 52.617821> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342515, -0.273689, -0.898764,
		-0.692786, 0.572597, -0.438383,
		0.634610, 0.772805, 0.006516,
		28.061226, 38.323715, 52.619774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626678, 37.952389, 51.969898>,  <27.616999, 37.782753, 52.615215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626678, 37.952389, 51.969898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958500, 38.134781, 52.098850>,  <28.157593, 38.244217, 52.176220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.958500, 38.134781, 52.098850>,  <27.626678, 37.952389, 51.969898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.958500, 38.134781, 52.098850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448534, -0.200157, -0.871065,
		-0.332657, 0.867193, -0.370561,
		0.829552, 0.455975, 0.322381,
		28.207365, 38.271572, 52.195564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.905691, 38.402927, 51.470688>,  <27.626678, 37.952389, 51.969898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.905691, 38.402927, 51.470688> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219790, 38.316685, 51.702862>,  <28.408249, 38.264938, 51.842167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.219790, 38.316685, 51.702862>,  <27.905691, 38.402927, 51.470688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219790, 38.316685, 51.702862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521615, -0.274764, -0.807727,
		0.333632, 0.937027, -0.103294,
		0.785244, -0.215604, 0.580437,
		28.455362, 38.252003, 51.876991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.489717, 38.736713, 51.171341>,  <27.905691, 38.402927, 51.470688>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.489717, 38.736713, 51.171341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654554, 38.454231, 51.401630>,  <28.753456, 38.284744, 51.539803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.654554, 38.454231, 51.401630>,  <28.489717, 38.736713, 51.171341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.654554, 38.454231, 51.401630> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493276, -0.358343, -0.792634,
		0.766067, 0.610629, 0.200682,
		0.412093, -0.706203, 0.575724,
		28.778183, 38.242371, 51.574348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234089, 38.905136, 51.163292>,  <28.489717, 38.736713, 51.171341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234089, 38.905136, 51.163292> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198387, 38.519222, 51.262272>,  <29.176966, 38.287674, 51.321659>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.198387, 38.519222, 51.262272>,  <29.234089, 38.905136, 51.163292>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.198387, 38.519222, 51.262272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719171, -0.234306, -0.654136,
		0.689076, 0.119572, 0.714756,
		-0.089256, -0.964781, 0.247448,
		29.171610, 38.229790, 51.336506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.859240, 38.651787, 51.110546>,  <29.234089, 38.905136, 51.163292>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.859240, 38.651787, 51.110546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687101, 38.292305, 51.144341>,  <29.583818, 38.076618, 51.164616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.687101, 38.292305, 51.144341>,  <29.859240, 38.651787, 51.110546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.687101, 38.292305, 51.144341> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655765, -0.375579, -0.654915,
		0.620304, -0.226437, 0.750965,
		-0.430344, -0.898703, 0.084483,
		29.557999, 38.022694, 51.169685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.343281, 38.157143, 51.198215>,  <29.859240, 38.651787, 51.110546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.343281, 38.157143, 51.198215> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039890, 37.937836, 51.057301>,  <29.857855, 37.806252, 50.972752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.039890, 37.937836, 51.057301>,  <30.343281, 38.157143, 51.198215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039890, 37.937836, 51.057301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644762, -0.552647, -0.528075,
		0.094835, -0.627678, 0.772676,
		-0.758478, -0.548272, -0.352292,
		29.812347, 37.773354, 50.951614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591730, 37.494480, 51.252922>,  <30.343281, 38.157143, 51.198215>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591730, 37.494480, 51.252922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297468, 37.464188, 50.983677>,  <30.120911, 37.446011, 50.822132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.297468, 37.464188, 50.983677>,  <30.591730, 37.494480, 51.252922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.297468, 37.464188, 50.983677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527215, -0.687926, -0.498800,
		-0.425274, -0.721818, 0.546004,
		-0.735654, -0.075735, -0.673110,
		30.076773, 37.441467, 50.781742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448942, 36.726509, 51.109756>,  <30.591730, 37.494480, 51.252922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448942, 36.726509, 51.109756> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316990, 36.933678, 50.794052>,  <30.237820, 37.057980, 50.604630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.316990, 36.933678, 50.794052>,  <30.448942, 36.726509, 51.109756>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.316990, 36.933678, 50.794052> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400059, -0.680578, -0.613812,
		-0.855063, -0.518235, 0.017308,
		-0.329879, 0.517924, -0.789262,
		30.218027, 37.089054, 50.557274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148577, 36.229565, 50.684505>,  <30.448942, 36.726509, 51.109756>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148577, 36.229565, 50.684505> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200377, 36.524063, 50.418823>,  <30.231457, 36.700760, 50.259415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.200377, 36.524063, 50.418823>,  <30.148577, 36.229565, 50.684505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.200377, 36.524063, 50.418823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121918, -0.676590, -0.726196,
		-0.984056, 0.013063, -0.177380,
		0.129500, 0.736244, -0.664210,
		30.239227, 36.744938, 50.219559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.798838, 36.017101, 50.060890>,  <30.148577, 36.229565, 50.684505>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.798838, 36.017101, 50.060890> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081884, 36.283733, 49.967125>,  <30.251713, 36.443714, 49.910866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.081884, 36.283733, 49.967125>,  <29.798838, 36.017101, 50.060890>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081884, 36.283733, 49.967125> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313034, -0.593152, -0.741741,
		-0.633472, 0.451490, -0.628387,
		0.707618, 0.666579, -0.234413,
		30.294170, 36.483707, 49.896801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.869053, 35.832512, 49.387573>,  <29.798838, 36.017101, 50.060890>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.869053, 35.832512, 49.387573> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168949, 36.079948, 49.481575>,  <30.348886, 36.228413, 49.537975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.168949, 36.079948, 49.481575>,  <29.869053, 35.832512, 49.387573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168949, 36.079948, 49.481575> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609824, -0.508017, -0.608304,
		-0.256907, 0.599383, -0.758116,
		0.749743, 0.618594, 0.235005,
		30.393871, 36.265526, 49.552078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153448, 35.997204, 48.787331>,  <29.869053, 35.832512, 49.387573>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153448, 35.997204, 48.787331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438902, 36.055016, 49.061508>,  <30.610174, 36.089703, 49.226017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.438902, 36.055016, 49.061508>,  <30.153448, 35.997204, 48.787331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438902, 36.055016, 49.061508> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665145, -0.446811, -0.598283,
		0.219795, 0.882876, -0.414994,
		0.713633, 0.144532, 0.685447,
		30.652992, 36.098373, 49.267143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.682987, 36.141212, 48.327766>,  <30.153448, 35.997204, 48.787331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.682987, 36.141212, 48.327766> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799383, 36.021374, 48.691208>,  <30.869221, 35.949471, 48.909275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.799383, 36.021374, 48.691208>,  <30.682987, 36.141212, 48.327766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.799383, 36.021374, 48.691208> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650146, -0.634805, -0.417531,
		0.701878, 0.712226, 0.010057,
		0.290992, -0.299594, 0.908607,
		30.886681, 35.931496, 48.963791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471346, 36.011353, 48.210732>,  <30.682987, 36.141212, 48.327766>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471346, 36.011353, 48.210732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.346226, 35.832539, 48.545948>,  <31.271152, 35.725250, 48.747078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.346226, 35.832539, 48.545948>,  <31.471346, 36.011353, 48.210732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.346226, 35.832539, 48.545948> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339595, -0.876632, -0.340869,
		0.887035, 0.177969, 0.426024,
		-0.312802, -0.447038, 0.838040,
		31.252384, 35.698425, 48.797359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.978273, 35.649876, 48.373615>,  <31.471346, 36.011353, 48.210732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.978273, 35.649876, 48.373615> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722864, 35.464413, 48.619320>,  <31.569618, 35.353134, 48.766743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.722864, 35.464413, 48.619320>,  <31.978273, 35.649876, 48.373615>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.722864, 35.464413, 48.619320> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506849, -0.853959, -0.117719,
		0.579132, 0.236169, 0.780275,
		-0.638522, -0.463657, 0.614258,
		31.531307, 35.325317, 48.803596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395237, 35.244648, 48.724842>,  <31.978273, 35.649876, 48.373615>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395237, 35.244648, 48.724842> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036488, 35.073116, 48.768147>,  <31.821238, 34.970196, 48.794128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.036488, 35.073116, 48.768147>,  <32.395237, 35.244648, 48.724842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.036488, 35.073116, 48.768147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409279, -0.897482, -0.164368,
		0.167649, -0.103108, 0.980440,
		-0.896875, -0.428830, 0.108262,
		31.767426, 34.944466, 48.800625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433773, 34.664532, 49.188286>,  <32.395237, 35.244648, 48.724842>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433773, 34.664532, 49.188286> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105907, 34.584476, 48.973587>,  <31.909187, 34.536446, 48.844769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.105907, 34.584476, 48.973587>,  <32.433773, 34.664532, 49.188286>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.105907, 34.584476, 48.973587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321820, -0.936025, -0.142439,
		-0.473901, -0.289488, 0.831634,
		-0.819665, -0.200135, -0.536746,
		31.860008, 34.524437, 48.812565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.299095, 33.976486, 49.388351>,  <32.433773, 34.664532, 49.188286>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.299095, 33.976486, 49.388351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098099, 34.057976, 49.052258>,  <31.977501, 34.106869, 48.850601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.098099, 34.057976, 49.052258>,  <32.299095, 33.976486, 49.388351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098099, 34.057976, 49.052258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362944, -0.832356, -0.418873,
		-0.784711, -0.515439, 0.344312,
		-0.502494, 0.203728, -0.840235,
		31.947351, 34.119095, 48.800186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965919, 33.337414, 49.163551>,  <32.299095, 33.976486, 49.388351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965919, 33.337414, 49.163551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993359, 33.561653, 48.833454>,  <32.009823, 33.696198, 48.635395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993359, 33.561653, 48.833454>,  <31.965919, 33.337414, 49.163551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993359, 33.561653, 48.833454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476838, -0.745009, -0.466462,
		-0.876310, -0.361506, -0.318424,
		0.068600, 0.560602, -0.825239,
		32.013939, 33.729836, 48.585884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.686539, 33.051426, 48.634583>,  <31.965919, 33.337414, 49.163551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.686539, 33.051426, 48.634583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923557, 33.299553, 48.429020>,  <32.065769, 33.448429, 48.305683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.923557, 33.299553, 48.429020>,  <31.686539, 33.051426, 48.634583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.923557, 33.299553, 48.429020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352108, -0.773246, -0.527362,
		-0.724506, 0.131536, -0.676602,
		0.592546, 0.620314, -0.513906,
		32.101322, 33.485645, 48.274849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.753056, 32.650211, 48.108288>,  <31.686539, 33.051426, 48.634583>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.753056, 32.650211, 48.108288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026752, 32.935005, 48.045177>,  <32.190971, 33.105881, 48.007313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.026752, 32.935005, 48.045177>,  <31.753056, 32.650211, 48.108288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.026752, 32.935005, 48.045177> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360156, -0.518047, -0.775832,
		-0.634116, 0.474031, -0.610894,
		0.684240, 0.711984, -0.157777,
		32.232025, 33.148602, 47.997845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.615234, 32.843140, 47.494865>,  <31.753056, 32.650211, 48.108288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.615234, 32.843140, 47.494865> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993269, 32.957191, 47.558758>,  <32.220089, 33.025623, 47.597095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.993269, 32.957191, 47.558758>,  <31.615234, 32.843140, 47.494865>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.993269, 32.957191, 47.558758> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315334, -0.667051, -0.674987,
		-0.085910, 0.688290, -0.720331,
		0.945084, 0.285133, 0.159735,
		32.276794, 33.042732, 47.606678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.932047, 32.767624, 46.821918>,  <31.615234, 32.843140, 47.494865>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.932047, 32.767624, 46.821918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236450, 32.776848, 47.081253>,  <32.419090, 32.782383, 47.236855>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.236450, 32.776848, 47.081253>,  <31.932047, 32.767624, 46.821918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.236450, 32.776848, 47.081253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503737, -0.650743, -0.568140,
		0.408799, 0.758948, -0.506834,
		0.761007, 0.023056, 0.648333,
		32.464752, 32.783764, 47.275753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.492481, 32.959873, 46.405605>,  <31.932047, 32.767624, 46.821918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.492481, 32.959873, 46.405605> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620094, 32.750618, 46.721718>,  <32.696663, 32.625065, 46.911385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.620094, 32.750618, 46.721718>,  <32.492481, 32.959873, 46.405605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620094, 32.750618, 46.721718> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524833, -0.596806, -0.606937,
		0.789158, 0.608397, 0.084162,
		0.319031, -0.523140, 0.790281,
		32.715805, 32.593678, 46.958801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340481, 32.897003, 46.523342>,  <32.492481, 32.959873, 46.405605>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340481, 32.897003, 46.523342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197498, 32.572216, 46.707924>,  <33.111710, 32.377346, 46.818672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.197498, 32.572216, 46.707924>,  <33.340481, 32.897003, 46.523342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.197498, 32.572216, 46.707924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645322, -0.571910, -0.506437,
		0.675121, 0.116762, 0.728408,
		-0.357452, -0.811964, 0.461458,
		33.090263, 32.328629, 46.846363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.967270, 32.632294, 46.486031>,  <33.340481, 32.897003, 46.523342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.967270, 32.632294, 46.486031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663605, 32.379520, 46.548416>,  <33.481403, 32.227856, 46.585850>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.663605, 32.379520, 46.548416>,  <33.967270, 32.632294, 46.486031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.663605, 32.379520, 46.548416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462197, -0.692089, -0.554425,
		0.458303, -0.348813, 0.817489,
		-0.759165, -0.631936, 0.155966,
		33.435856, 32.189941, 46.595207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.018612, 32.538986, 47.249374>,  <33.967270, 32.632294, 46.486031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.018612, 32.538986, 47.249374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043274, 32.139774, 47.244648>,  <34.058071, 31.900248, 47.241814>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.043274, 32.139774, 47.244648>,  <34.018612, 32.538986, 47.249374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.043274, 32.139774, 47.244648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997814, 0.061918, -0.023117,
		0.023803, -0.010365, 0.999663,
		0.061657, -0.998028, -0.011816,
		34.061771, 31.840366, 47.241104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.381241, 32.187447, 47.986942>,  <34.018612, 32.538986, 47.249374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.381241, 32.187447, 47.986942> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412224, 32.018936, 47.625496>,  <34.430813, 31.917830, 47.408627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.412224, 32.018936, 47.625496>,  <34.381241, 32.187447, 47.986942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.412224, 32.018936, 47.625496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993991, 0.102945, 0.037211,
		0.077346, -0.901070, 0.426722,
		0.077459, -0.421279, -0.903617,
		34.435463, 31.892553, 47.354412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.824974, 31.626738, 48.070011>,  <34.381241, 32.187447, 47.986942>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.824974, 31.626738, 48.070011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811184, 31.718987, 47.681038>,  <34.802910, 31.774336, 47.447655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.811184, 31.718987, 47.681038>,  <34.824974, 31.626738, 48.070011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811184, 31.718987, 47.681038> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998586, -0.031451, -0.042866,
		-0.040470, -0.972535, -0.229209,
		-0.034480, 0.230620, -0.972433,
		34.800838, 31.788172, 47.389309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.360920, 31.224823, 47.590736>,  <34.824974, 31.626738, 48.070011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.360920, 31.224823, 47.590736> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260010, 31.585564, 47.450439>,  <35.199463, 31.802008, 47.366261>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.260010, 31.585564, 47.450439>,  <35.360920, 31.224823, 47.590736>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260010, 31.585564, 47.450439> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967652, 0.236077, -0.088974,
		0.002562, -0.361846, -0.932234,
		-0.252273, 0.901851, -0.350746,
		35.184326, 31.856119, 47.345215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793015, 31.323849, 46.959980>,  <35.360920, 31.224823, 47.590736>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793015, 31.323849, 46.959980> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655548, 31.638216, 47.165592>,  <35.573067, 31.826836, 47.288960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.655548, 31.638216, 47.165592>,  <35.793015, 31.323849, 46.959980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.655548, 31.638216, 47.165592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915410, 0.402507, -0.003390,
		-0.209566, 0.469386, -0.857764,
		-0.343665, 0.785917, 0.514032,
		35.552448, 31.873991, 47.319801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995926, 31.841314, 46.594341>,  <35.793015, 31.323849, 46.959980>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995926, 31.841314, 46.594341> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960155, 31.947048, 46.978451>,  <35.938694, 32.010487, 47.208916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.960155, 31.947048, 46.978451>,  <35.995926, 31.841314, 46.594341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.960155, 31.947048, 46.978451> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868872, 0.492026, -0.054524,
		-0.486893, 0.829481, -0.273672,
		-0.089427, 0.264333, 0.960276,
		35.933327, 32.026348, 47.266533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.196545, 32.667473, 46.609383>,  <35.995926, 31.841314, 46.594341>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.196545, 32.667473, 46.609383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237728, 32.529198, 46.982456>,  <36.262436, 32.446232, 47.206299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.237728, 32.529198, 46.982456>,  <36.196545, 32.667473, 46.609383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.237728, 32.529198, 46.982456> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936842, 0.348796, 0.025862,
		-0.334258, 0.871116, 0.359762,
		0.102955, -0.345685, 0.932685,
		36.268616, 32.425491, 47.262260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.476006, 33.249195, 47.078091>,  <36.196545, 32.667473, 46.609383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.476006, 33.249195, 47.078091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539452, 32.891197, 47.244862>,  <36.577518, 32.676399, 47.344925>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.539452, 32.891197, 47.244862>,  <36.476006, 33.249195, 47.078091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539452, 32.891197, 47.244862> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942577, 0.262971, 0.205901,
		-0.293920, 0.360325, 0.885312,
		0.158620, -0.894993, 0.416926,
		36.587036, 32.622700, 47.369938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.625168, 33.374409, 47.775848>,  <36.476006, 33.249195, 47.078091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.625168, 33.374409, 47.775848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797771, 33.018242, 47.717945>,  <36.901333, 32.804543, 47.683201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.797771, 33.018242, 47.717945>,  <36.625168, 33.374409, 47.775848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797771, 33.018242, 47.717945> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873990, 0.372889, 0.311600,
		-0.223474, -0.260978, 0.939122,
		0.431509, -0.890418, -0.144761,
		36.927223, 32.751118, 47.674519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.043865, 33.267017, 48.409584>,  <36.625168, 33.374409, 47.775848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.043865, 33.267017, 48.409584> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177841, 33.013638, 48.130573>,  <37.258228, 32.861610, 47.963165>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.177841, 33.013638, 48.130573>,  <37.043865, 33.267017, 48.409584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.177841, 33.013638, 48.130573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942198, 0.218406, 0.254088,
		-0.008608, -0.742318, 0.669993,
		0.334945, -0.633453, -0.697531,
		37.278324, 32.823601, 47.921314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620995, 33.168156, 48.713154>,  <37.043865, 33.267017, 48.409584>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620995, 33.168156, 48.713154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707165, 33.055035, 48.339283>,  <37.758865, 32.987164, 48.114960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.707165, 33.055035, 48.339283>,  <37.620995, 33.168156, 48.713154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.707165, 33.055035, 48.339283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910459, 0.404229, 0.087537,
		0.353068, -0.869841, 0.344558,
		0.215423, -0.282799, -0.934675,
		37.771793, 32.970196, 48.058880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297310, 32.976883, 48.760628>,  <37.620995, 33.168156, 48.713154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.297310, 32.976883, 48.760628> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233662, 33.034836, 48.369999>,  <38.195473, 33.069607, 48.135624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.233662, 33.034836, 48.369999>,  <38.297310, 32.976883, 48.760628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233662, 33.034836, 48.369999> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907346, 0.411321, -0.086819,
		0.389104, -0.899902, -0.196911,
		-0.159122, 0.144884, -0.976570,
		38.185925, 33.078300, 48.077026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.813728, 32.595760, 48.301891>,  <38.297310, 32.976883, 48.760628>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.813728, 32.595760, 48.301891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679256, 32.921478, 48.112614>,  <38.598576, 33.116909, 47.999046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.679256, 32.921478, 48.112614>,  <38.813728, 32.595760, 48.301891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679256, 32.921478, 48.112614> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.929668, 0.367301, -0.028405,
		0.150674, -0.449462, -0.880500,
		-0.336176, 0.814293, -0.473194,
		38.578403, 33.165768, 47.970657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.277554, 32.758671, 47.777824>,  <38.813728, 32.595760, 48.301891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.277554, 32.758671, 47.777824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087143, 33.109520, 47.803276>,  <38.972897, 33.320030, 47.818546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.087143, 33.109520, 47.803276>,  <39.277554, 32.758671, 47.777824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.087143, 33.109520, 47.803276> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863869, 0.479932, -0.152957,
		-0.164698, -0.017848, -0.986183,
		-0.476031, 0.877124, 0.063626,
		38.944332, 33.372658, 47.822365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.422413, 33.126995, 47.064201>,  <39.277554, 32.758671, 47.777824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.422413, 33.126995, 47.064201> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326572, 33.392593, 47.347523>,  <39.269066, 33.551952, 47.517517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.326572, 33.392593, 47.347523>,  <39.422413, 33.126995, 47.064201>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.326572, 33.392593, 47.347523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848346, 0.497964, -0.179836,
		-0.472121, 0.557798, -0.682615,
		-0.239606, 0.663998, 0.708305,
		39.254692, 33.591793, 47.560013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259842, 33.691509, 46.716347>,  <39.422413, 33.126995, 47.064201>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259842, 33.691509, 46.716347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354401, 33.777969, 47.095272>,  <39.411137, 33.829845, 47.322628>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.354401, 33.777969, 47.095272>,  <39.259842, 33.691509, 46.716347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.354401, 33.777969, 47.095272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725564, 0.609194, -0.320062,
		-0.646276, 0.762996, -0.012816,
		0.236399, 0.216147, 0.947310,
		39.425320, 33.842812, 47.379463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210678, 34.399593, 46.458038>,  <39.259842, 33.691509, 46.716347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.210678, 34.399593, 46.458038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061172, 34.616253, 46.156864>,  <38.971470, 34.746250, 45.976158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.061172, 34.616253, 46.156864>,  <39.210678, 34.399593, 46.458038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.061172, 34.616253, 46.156864> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770576, -0.633158, -0.072964,
		-0.516250, 0.552925, 0.654034,
		-0.373763, 0.541650, -0.752938,
		38.949043, 34.778748, 45.930984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.550098, 34.625057, 46.551544>,  <39.210678, 34.399593, 46.458038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.550098, 34.625057, 46.551544> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529789, 34.585430, 46.154030>,  <38.517605, 34.561653, 45.915520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.529789, 34.585430, 46.154030>,  <38.550098, 34.625057, 46.551544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529789, 34.585430, 46.154030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.780751, -0.616568, 0.101354,
		-0.622776, 0.781044, -0.046043,
		-0.050773, -0.099070, -0.993784,
		38.514557, 34.555710, 45.855896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.986649, 34.544277, 46.060200>,  <38.550098, 34.625057, 46.551544>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.986649, 34.544277, 46.060200> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169224, 34.879669, 45.941120>,  <38.278767, 35.080902, 45.869675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.169224, 34.879669, 45.941120>,  <37.986649, 34.544277, 46.060200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169224, 34.879669, 45.941120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613669, -0.538929, -0.577032,
		-0.644266, 0.080690, -0.760533,
		0.456434, 0.838478, -0.297697,
		38.306152, 35.131214, 45.851810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.207897, 33.763763, 45.867146>,  <37.986649, 34.544277, 46.060200>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.207897, 33.763763, 45.867146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578579, 33.833641, 45.734058>,  <38.800987, 33.875568, 45.654205>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.578579, 33.833641, 45.734058>,  <38.207897, 33.763763, 45.867146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.578579, 33.833641, 45.734058> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326971, -0.811227, 0.484769,
		-0.185225, -0.558027, -0.808887,
		0.926705, 0.174691, -0.332718,
		38.856590, 33.886047, 45.634243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.481144, 33.235847, 45.401608>,  <38.207897, 33.763763, 45.867146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.481144, 33.235847, 45.401608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819729, 33.395966, 45.542046>,  <39.022881, 33.492035, 45.626308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.819729, 33.395966, 45.542046>,  <38.481144, 33.235847, 45.401608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819729, 33.395966, 45.542046> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371216, -0.916381, 0.149817,
		0.381706, 0.003517, -0.924277,
		0.846463, 0.400293, 0.351094,
		39.073669, 33.516052, 45.647373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.046856, 32.936970, 45.064594>,  <38.481144, 33.235847, 45.401608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.046856, 32.936970, 45.064594> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182018, 33.074219, 45.415157>,  <39.263115, 33.156567, 45.625496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.182018, 33.074219, 45.415157>,  <39.046856, 32.936970, 45.064594>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182018, 33.074219, 45.415157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599149, -0.796545, 0.080848,
		0.725838, 0.497779, -0.474737,
		0.337906, 0.343121, 0.876406,
		39.283390, 33.177155, 45.678078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.985542, 32.667049, 44.430775>,  <39.046856, 32.936970, 45.064594>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.985542, 32.667049, 44.430775> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189514, 32.959286, 44.249134>,  <39.311897, 33.134628, 44.140148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.189514, 32.959286, 44.249134>,  <38.985542, 32.667049, 44.430775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.189514, 32.959286, 44.249134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413221, -0.671041, -0.615592,
		-0.754466, 0.126266, -0.644080,
		0.509932, 0.730590, -0.454101,
		39.342495, 33.178463, 44.112904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068138, 32.374897, 43.791344>,  <38.985542, 32.667049, 44.430775>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068138, 32.374897, 43.791344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337158, 32.669388, 43.821415>,  <39.498569, 32.846081, 43.839458>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.337158, 32.669388, 43.821415>,  <39.068138, 32.374897, 43.791344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337158, 32.669388, 43.821415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459409, -0.335698, -0.822344,
		-0.580191, 0.587606, -0.564001,
		0.672549, 0.736224, 0.075183,
		39.538921, 32.890255, 43.843971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187588, 32.787205, 43.101173>,  <39.068138, 32.374897, 43.791344>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187588, 32.787205, 43.101173> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504723, 32.831287, 43.340927>,  <39.695004, 32.857738, 43.484779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.504723, 32.831287, 43.340927>,  <39.187588, 32.787205, 43.101173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504723, 32.831287, 43.340927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602091, -0.293862, -0.742383,
		0.094319, 0.949473, -0.299341,
		0.792837, 0.110209, 0.599386,
		39.742573, 32.864349, 43.520744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.778965, 33.292904, 42.761944>,  <39.187588, 32.787205, 43.101173>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.778965, 33.292904, 42.761944> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888298, 32.991875, 43.001583>,  <39.953899, 32.811256, 43.145367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.888298, 32.991875, 43.001583>,  <39.778965, 33.292904, 42.761944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888298, 32.991875, 43.001583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564968, -0.378474, -0.733191,
		0.778523, 0.538880, 0.321729,
		0.273336, -0.752573, 0.599101,
		39.970299, 32.766102, 43.181313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613071, 33.282070, 42.931751>,  <39.778965, 33.292904, 42.761944>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613071, 33.282070, 42.931751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421524, 32.930958, 42.937191>,  <40.306595, 32.720291, 42.940453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.421524, 32.930958, 42.937191>,  <40.613071, 33.282070, 42.931751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.421524, 32.930958, 42.937191> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574825, -0.325224, -0.750870,
		0.663522, -0.351752, 0.660310,
		-0.478868, -0.877781, 0.013597,
		40.277863, 32.667622, 42.941269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.150406, 32.798683, 42.972569>,  <40.613071, 33.282070, 42.931751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.150406, 32.798683, 42.972569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825600, 32.647644, 42.794563>,  <40.630714, 32.557018, 42.687759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.825600, 32.647644, 42.794563>,  <41.150406, 32.798683, 42.972569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825600, 32.647644, 42.794563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575545, -0.391622, -0.717900,
		0.096802, -0.839077, 0.535332,
		-0.812020, -0.377602, -0.445017,
		40.581993, 32.534363, 42.661057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.275661, 32.104439, 42.920650>,  <41.150406, 32.798683, 42.972569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.275661, 32.104439, 42.920650> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056583, 32.272217, 42.631073>,  <40.925137, 32.372883, 42.457329>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.056583, 32.272217, 42.631073>,  <41.275661, 32.104439, 42.920650>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.056583, 32.272217, 42.631073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736753, -0.168272, -0.654889,
		-0.396511, -0.892047, -0.216868,
		-0.547698, 0.419449, -0.723940,
		40.892273, 32.398052, 42.413891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.431343, 31.697252, 42.289452>,  <41.275661, 32.104439, 42.920650>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.431343, 31.697252, 42.289452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313622, 32.072956, 42.218822>,  <41.242989, 32.298378, 42.176445>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.313622, 32.072956, 42.218822>,  <41.431343, 31.697252, 42.289452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.313622, 32.072956, 42.218822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682612, 0.077278, -0.726684,
		-0.668900, -0.334393, -0.663893,
		-0.294302, 0.939260, -0.176569,
		41.225330, 32.354733, 42.165852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326275, 31.833941, 41.516800>,  <41.431343, 31.697252, 42.289452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326275, 31.833941, 41.516800> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.407124, 32.185268, 41.690098>,  <41.455635, 32.396065, 41.794075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.407124, 32.185268, 41.690098>,  <41.326275, 31.833941, 41.516800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.407124, 32.185268, 41.690098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678971, 0.193134, -0.708306,
		-0.705794, 0.437326, -0.557316,
		0.202124, 0.878320, 0.433244,
		41.467762, 32.448765, 41.820072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.288921, 32.486752, 40.991863>,  <41.326275, 31.833941, 41.516800>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.288921, 32.486752, 40.991863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.537712, 32.540459, 41.300438>,  <41.686985, 32.572685, 41.485584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.537712, 32.540459, 41.300438>,  <41.288921, 32.486752, 40.991863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.537712, 32.540459, 41.300438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725548, 0.271693, -0.632268,
		-0.294489, 0.952971, 0.071568,
		0.621977, 0.134270, 0.771437,
		41.724304, 32.580738, 41.531868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527523, 33.178894, 41.063606>,  <41.288921, 32.486752, 40.991863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527523, 33.178894, 41.063606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796616, 32.914341, 41.196281>,  <41.958069, 32.755611, 41.275887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.796616, 32.914341, 41.196281>,  <41.527523, 33.178894, 41.063606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.796616, 32.914341, 41.196281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655495, 0.324832, -0.681770,
		0.343165, 0.676065, 0.652054,
		0.672728, -0.661378, 0.331686,
		41.998436, 32.715927, 41.295788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.061954, 33.563919, 41.382092>,  <41.527523, 33.178894, 41.063606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.061954, 33.563919, 41.382092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178204, 33.213985, 41.227066>,  <42.247952, 33.004025, 41.134052>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.178204, 33.213985, 41.227066>,  <42.061954, 33.563919, 41.382092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.178204, 33.213985, 41.227066> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529787, 0.484413, -0.696182,
		0.796785, -0.003002, 0.604256,
		0.290619, -0.874834, -0.387563,
		42.265388, 32.951534, 41.110798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.833153, 33.462330, 41.229324>,  <42.061954, 33.563919, 41.382092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.833153, 33.462330, 41.229324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573845, 33.281544, 40.984222>,  <42.418259, 33.173073, 40.837162>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.573845, 33.281544, 40.984222>,  <42.833153, 33.462330, 41.229324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.573845, 33.281544, 40.984222> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390277, 0.493762, -0.777099,
		0.653780, -0.742915, -0.143698,
		-0.648271, -0.451970, -0.612754,
		42.379364, 33.145954, 40.800396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.183014, 33.080799, 40.777664>,  <42.833153, 33.462330, 41.229324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.183014, 33.080799, 40.777664> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833794, 33.216072, 40.637146>,  <42.624260, 33.297237, 40.552834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.833794, 33.216072, 40.637146>,  <43.183014, 33.080799, 40.777664>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.833794, 33.216072, 40.637146> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467715, 0.377010, -0.799441,
		-0.137916, -0.862261, -0.487324,
		-0.873053, 0.338184, -0.351297,
		42.571877, 33.317528, 40.531757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.119316, 32.831451, 40.156078>,  <43.183014, 33.080799, 40.777664>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.119316, 32.831451, 40.156078> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.903610, 33.166618, 40.189766>,  <42.774185, 33.367718, 40.209976>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.903610, 33.166618, 40.189766>,  <43.119316, 32.831451, 40.156078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.903610, 33.166618, 40.189766> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469841, 0.382348, -0.795650,
		-0.698885, -0.389501, -0.599874,
		-0.539267, 0.837913, 0.084214,
		42.741829, 33.417992, 40.215031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.814957, 33.370411, 39.702309>,  <43.119316, 32.831451, 40.156078>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.814957, 33.370411, 39.702309> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.561985, 33.596245, 39.490166>,  <42.410202, 33.731743, 39.362881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.561985, 33.596245, 39.490166>,  <42.814957, 33.370411, 39.702309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.561985, 33.596245, 39.490166> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289142, -0.807244, -0.514542,
		-0.718632, -0.172061, 0.673768,
		-0.632428, 0.564581, -0.530361,
		42.372257, 33.765617, 39.331059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.070999, 33.006020, 39.728523>,  <42.814957, 33.370411, 39.702309>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.070999, 33.006020, 39.728523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.143505, 33.261715, 39.429588>,  <42.187008, 33.415134, 39.250229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.143505, 33.261715, 39.429588>,  <42.070999, 33.006020, 39.728523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143505, 33.261715, 39.429588> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434959, -0.629447, -0.643900,
		-0.882017, 0.441777, 0.163948,
		0.181264, 0.639242, -0.747338,
		42.197884, 33.453487, 39.205387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400837, 33.276363, 39.408894>,  <42.070999, 33.006020, 39.728523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400837, 33.276363, 39.408894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.706608, 33.289761, 39.151356>,  <41.890072, 33.297798, 38.996834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.706608, 33.289761, 39.151356>,  <41.400837, 33.276363, 39.408894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.706608, 33.289761, 39.151356> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539745, -0.512931, -0.667516,
		-0.352602, 0.857776, -0.374021,
		0.764426, 0.033492, -0.643841,
		41.935936, 33.299809, 38.958202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211452, 33.551586, 38.702232>,  <41.400837, 33.276363, 39.408894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211452, 33.551586, 38.702232> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539623, 33.333374, 38.633762>,  <41.736526, 33.202446, 38.592682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.539623, 33.333374, 38.633762>,  <41.211452, 33.551586, 38.702232>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.539623, 33.333374, 38.633762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403168, -0.339697, -0.849742,
		0.405414, 0.766160, -0.498637,
		0.820424, -0.545531, -0.171174,
		41.785751, 33.169716, 38.582409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.418358, 33.618034, 38.028381>,  <41.211452, 33.551586, 38.702232>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.418358, 33.618034, 38.028381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.574478, 33.271370, 38.152676>,  <41.668152, 33.063370, 38.227253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.574478, 33.271370, 38.152676>,  <41.418358, 33.618034, 38.028381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.574478, 33.271370, 38.152676> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161656, -0.396771, -0.903571,
		0.906383, 0.302435, -0.294962,
		0.390304, -0.866664, 0.310736,
		41.691570, 33.011372, 38.245895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919800, 33.275368, 37.578686>,  <41.418358, 33.618034, 38.028381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919800, 33.275368, 37.578686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775089, 32.961117, 37.779446>,  <41.688263, 32.772564, 37.899902>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.775089, 32.961117, 37.779446>,  <41.919800, 33.275368, 37.578686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.775089, 32.961117, 37.779446> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199356, -0.460718, -0.864868,
		0.910700, -0.412945, 0.010056,
		-0.361776, -0.785630, 0.501899,
		41.666557, 32.725430, 37.930016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.575607, 33.595673, 37.819908>,  <41.919800, 33.275368, 37.578686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.575607, 33.595673, 37.819908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.946556, 33.739719, 37.779324>,  <43.169125, 33.826149, 37.754974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.946556, 33.739719, 37.779324>,  <42.575607, 33.595673, 37.819908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.946556, 33.739719, 37.779324> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374089, 0.888007, -0.267397,
		-0.006199, 0.285932, 0.958230,
		0.927372, 0.360121, -0.101459,
		43.224770, 33.847755, 37.748886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.598251, 34.264671, 38.023560>,  <42.575607, 33.595673, 37.819908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.598251, 34.264671, 38.023560> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928707, 34.265385, 37.798176>,  <43.126980, 34.265812, 37.662945>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.928707, 34.265385, 37.798176>,  <42.598251, 34.264671, 38.023560>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.928707, 34.265385, 37.798176> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330039, 0.812028, -0.481337,
		0.456689, 0.583616, 0.671437,
		0.826141, 0.001779, -0.563460,
		43.176548, 34.265919, 37.629139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.092430, 34.785549, 38.041420>,  <42.598251, 34.264671, 38.023560>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.092430, 34.785549, 38.041420> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.083233, 34.642757, 37.667889>,  <43.077717, 34.557083, 37.443771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.083233, 34.642757, 37.667889>,  <43.092430, 34.785549, 38.041420>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.083233, 34.642757, 37.667889> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473341, 0.826633, -0.304347,
		0.880580, 0.435022, -0.187977,
		-0.022990, -0.356979, -0.933830,
		43.076336, 34.535664, 37.387741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.229546, 35.251286, 37.448578>,  <43.092430, 34.785549, 38.041420>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.229546, 35.251286, 37.448578> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.018734, 34.967999, 37.260677>,  <42.892246, 34.798027, 37.147938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.018734, 34.967999, 37.260677>,  <43.229546, 35.251286, 37.448578>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.018734, 34.967999, 37.260677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570405, 0.704528, -0.422229,
		0.629983, 0.045421, -0.775279,
		-0.527028, -0.708221, -0.469749,
		42.860626, 34.755531, 37.119751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.006916, 34.955204, 37.579411>,  <43.229546, 35.251286, 37.448578>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.006916, 34.955204, 37.579411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.219429, 34.628777, 37.488392>,  <44.346935, 34.432922, 37.433781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.219429, 34.628777, 37.488392>,  <44.006916, 34.955204, 37.579411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.219429, 34.628777, 37.488392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712839, 0.575742, -0.400476,
		0.457821, 0.050564, 0.887605,
		0.531282, -0.816066, -0.227543,
		44.378815, 34.383957, 37.420128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.817848, 34.966427, 37.816170>,  <44.006916, 34.955204, 37.579411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.817848, 34.966427, 37.816170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.790970, 34.756298, 37.476871>,  <44.774841, 34.630219, 37.273293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.790970, 34.756298, 37.476871>,  <44.817848, 34.966427, 37.816170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.790970, 34.756298, 37.476871> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575282, 0.674217, -0.463123,
		0.815190, -0.519101, 0.256903,
		-0.067199, -0.525325, -0.848244,
		44.770809, 34.598701, 37.222397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447395, 34.930233, 37.337788>,  <44.817848, 34.966427, 37.816170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447395, 34.930233, 37.337788> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.661987, 34.604244, 37.425434>,  <45.790741, 34.408649, 37.478024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.661987, 34.604244, 37.425434>,  <45.447395, 34.930233, 37.337788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.661987, 34.604244, 37.425434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746501, 0.337182, -0.573625,
		0.393606, 0.471308, 0.789267,
		0.536481, -0.814971, 0.219115,
		45.822933, 34.359753, 37.491169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.224899, 34.992599, 37.650089>,  <45.447395, 34.930233, 37.337788>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.224899, 34.992599, 37.650089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177456, 34.651730, 37.446232>,  <46.148991, 34.447208, 37.323917>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.177456, 34.651730, 37.446232>,  <46.224899, 34.992599, 37.650089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.177456, 34.651730, 37.446232> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796761, 0.224609, -0.561002,
		0.592540, -0.472603, 0.652336,
		-0.118611, -0.852172, -0.509641,
		46.141872, 34.396076, 37.293339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.507881, 35.100956, 36.930424>,  <46.224899, 34.992599, 37.650089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.507881, 35.100956, 36.930424> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.270485, 35.009842, 36.621651>,  <46.128048, 34.955173, 36.436386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.270485, 35.009842, 36.621651>,  <46.507881, 35.100956, 36.930424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.270485, 35.009842, 36.621651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800711, -0.264155, -0.537666,
		-0.081440, -0.937197, 0.339161,
		-0.593490, -0.227783, -0.771936,
		46.092438, 34.941505, 36.390068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.570591, 34.423157, 36.736553>,  <46.507881, 35.100956, 36.930424>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.570591, 34.423157, 36.736553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.468925, 34.651554, 36.424305>,  <46.407925, 34.788593, 36.236958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.468925, 34.651554, 36.424305>,  <46.570591, 34.423157, 36.736553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.468925, 34.651554, 36.424305> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863523, -0.229526, -0.449049,
		-0.435575, -0.788218, -0.434725,
		-0.254168, 0.570990, -0.780621,
		46.392673, 34.822849, 36.190117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.831516, 34.067665, 36.206112>,  <46.570591, 34.423157, 36.736553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.831516, 34.067665, 36.206112> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.764698, 34.400280, 35.994213>,  <46.724606, 34.599850, 35.867073>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.764698, 34.400280, 35.994213>,  <46.831516, 34.067665, 36.206112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.764698, 34.400280, 35.994213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856153, -0.144129, -0.496215,
		-0.488976, -0.536438, -0.687850,
		-0.167049, 0.831542, -0.529748,
		46.714584, 34.649742, 35.835289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.379742, 33.970306, 35.607803>,  <46.831516, 34.067665, 36.206112>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.379742, 33.970306, 35.607803> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.243729, 34.344364, 35.568024>,  <47.162121, 34.568798, 35.544155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.243729, 34.344364, 35.568024>,  <47.379742, 33.970306, 35.607803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243729, 34.344364, 35.568024> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822637, 0.244536, -0.513293,
		-0.455681, -0.256350, -0.852431,
		-0.340033, 0.935140, -0.099452,
		47.141720, 34.624905, 35.538189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.449295, 34.270695, 34.920551>,  <47.379742, 33.970306, 35.607803>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.449295, 34.270695, 34.920551> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.475273, 34.542442, 35.212917>,  <47.490860, 34.705490, 35.388336>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.475273, 34.542442, 35.212917>,  <47.449295, 34.270695, 34.920551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.475273, 34.542442, 35.212917> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904572, 0.269191, -0.330585,
		-0.421346, 0.682634, -0.597059,
		0.064946, 0.679373, 0.730913,
		47.494759, 34.746254, 35.432190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.456528, 35.038761, 34.757847>,  <47.449295, 34.270695, 34.920551>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.456528, 35.038761, 34.757847> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671860, 34.944145, 35.081390>,  <47.801060, 34.887375, 35.275517>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<47.671860, 34.944145, 35.081390>,  <47.456528, 35.038761, 34.757847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.671860, 34.944145, 35.081390> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818265, 0.376313, -0.434546,
		-0.201595, 0.895788, 0.396134,
		0.538332, -0.236540, 0.808856,
		47.833359, 34.873184, 35.324047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<31.739489, 35.867420, 56.406525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.985680, 36.140934, 56.249748>,  <32.133396, 36.305042, 56.155682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.985680, 36.140934, 56.249748>,  <31.739489, 35.867420, 56.406525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.985680, 36.140934, 56.249748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500575, -0.723259, -0.475732,
		-0.608777, 0.096606, -0.787437,
		0.615480, 0.683786, -0.391945,
		32.170322, 36.346069, 56.132164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872337, 35.669373, 55.682770>,  <31.739489, 35.867420, 56.406525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872337, 35.669373, 55.682770> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.195919, 35.884144, 55.778515>,  <32.390068, 36.013008, 55.835964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.195919, 35.884144, 55.778515>,  <31.872337, 35.669373, 55.682770>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.195919, 35.884144, 55.778515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554954, -0.563156, -0.612275,
		-0.193947, 0.628142, -0.753540,
		0.808956, 0.536929, 0.239367,
		32.438606, 36.045223, 55.850327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.133793, 35.989418, 55.120880>,  <31.872337, 35.669373, 55.682770>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.133793, 35.989418, 55.120880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.453571, 35.984131, 55.361115>,  <32.645439, 35.980957, 55.505257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.453571, 35.984131, 55.361115>,  <32.133793, 35.989418, 55.120880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453571, 35.984131, 55.361115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533446, -0.444128, -0.719851,
		0.276256, 0.895866, -0.348005,
		0.799448, -0.013222, 0.600589,
		32.693405, 35.980164, 55.541290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711441, 36.272930, 54.736385>,  <32.133793, 35.989418, 55.120880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711441, 36.272930, 54.736385> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 36.089409, 55.038200>,  <33.011742, 35.979298, 55.219292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.899128, 36.089409, 55.038200>,  <32.711441, 36.272930, 54.736385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.899128, 36.089409, 55.038200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656142, -0.390725, -0.645609,
		0.591027, 0.798018, 0.117706,
		0.469217, -0.458804, 0.754542,
		33.039894, 35.951767, 55.264565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340729, 36.233162, 54.490749>,  <32.711441, 36.272930, 54.736385>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340729, 36.233162, 54.490749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.357353, 35.970810, 54.792236>,  <33.367329, 35.813400, 54.973129>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.357353, 35.970810, 54.792236>,  <33.340729, 36.233162, 54.490749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.357353, 35.970810, 54.792236> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667929, -0.542792, -0.509164,
		0.743064, 0.524594, 0.415521,
		0.041563, -0.655880, 0.753720,
		33.369823, 35.774044, 55.018353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.049835, 36.147133, 54.687275>,  <33.340729, 36.233162, 54.490749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.049835, 36.147133, 54.687275> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.873196, 35.819553, 54.833874>,  <33.767212, 35.623005, 54.921833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.873196, 35.819553, 54.833874>,  <34.049835, 36.147133, 54.687275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873196, 35.819553, 54.833874> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747061, -0.561837, -0.355301,
		0.496883, 0.116894, 0.859909,
		-0.441596, -0.818947, 0.366494,
		33.740715, 35.573868, 54.943821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.589844, 35.648994, 55.047325>,  <34.049835, 36.147133, 54.687275>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.589844, 35.648994, 55.047325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282265, 35.416775, 54.940235>,  <34.097717, 35.277443, 54.875980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.282265, 35.416775, 54.940235>,  <34.589844, 35.648994, 55.047325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282265, 35.416775, 54.940235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626497, -0.600861, -0.496455,
		0.127348, -0.549480, 0.825745,
		-0.768950, -0.580549, -0.267729,
		34.051579, 35.242611, 54.859917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903004, 34.918953, 54.909454>,  <34.589844, 35.648994, 55.047325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903004, 34.918953, 54.909454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.536461, 34.849590, 54.765110>,  <34.316536, 34.807972, 54.678505>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.536461, 34.849590, 54.765110>,  <34.903004, 34.918953, 54.909454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.536461, 34.849590, 54.765110> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391945, -0.572398, -0.720236,
		-0.081663, -0.801431, 0.592486,
		-0.916357, -0.173405, -0.360861,
		34.261555, 34.797569, 54.656853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746277, 34.128590, 54.787868>,  <34.903004, 34.918953, 54.909454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746277, 34.128590, 54.787868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533195, 34.352509, 54.533985>,  <34.405346, 34.486858, 54.381657>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.533195, 34.352509, 54.533985>,  <34.746277, 34.128590, 54.787868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533195, 34.352509, 54.533985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294491, -0.580496, -0.759144,
		-0.793413, -0.591313, 0.144375,
		-0.532701, 0.559798, -0.634710,
		34.373386, 34.520447, 54.343571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436340, 33.557697, 54.325493>,  <34.746277, 34.128590, 54.787868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436340, 33.557697, 54.325493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416622, 33.910751, 54.138508>,  <34.404793, 34.122585, 54.026318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.416622, 33.910751, 54.138508>,  <34.436340, 33.557697, 54.325493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.416622, 33.910751, 54.138508> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177224, -0.452875, -0.873782,
		-0.982935, -0.125918, -0.134100,
		-0.049294, 0.882637, -0.467463,
		34.401833, 34.175541, 53.998268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.961010, 33.470875, 53.733376>,  <34.436340, 33.557697, 54.325493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.961010, 33.470875, 53.733376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.171947, 33.801582, 53.655029>,  <34.298512, 34.000008, 53.608021>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.171947, 33.801582, 53.655029>,  <33.961010, 33.470875, 53.733376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171947, 33.801582, 53.655029> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174421, -0.330957, -0.927386,
		-0.831555, 0.454890, -0.318734,
		0.527346, 0.826766, -0.195866,
		34.330151, 34.049614, 53.596268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.685444, 33.743984, 53.120373>,  <33.961010, 33.470875, 53.733376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.685444, 33.743984, 53.120373> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056374, 33.893074, 53.133953>,  <34.278931, 33.982529, 53.142101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.056374, 33.893074, 53.133953>,  <33.685444, 33.743984, 53.120373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056374, 33.893074, 53.133953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226718, -0.487256, -0.843315,
		-0.297781, 0.789721, -0.536346,
		0.927321, 0.372723, 0.033948,
		34.334572, 34.004890, 53.144138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.847500, 33.871727, 52.442829>,  <33.685444, 33.743984, 53.120373>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.847500, 33.871727, 52.442829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201401, 33.858978, 52.628815>,  <34.413742, 33.851330, 52.740406>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.201401, 33.858978, 52.628815>,  <33.847500, 33.871727, 52.442829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201401, 33.858978, 52.628815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414814, -0.400932, -0.816813,
		0.212451, 0.915553, -0.341507,
		0.884756, -0.031871, 0.464963,
		34.466827, 33.849419, 52.768303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352642, 34.153961, 51.923351>,  <33.847500, 33.871727, 52.442829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352642, 34.153961, 51.923351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572174, 33.970238, 52.202728>,  <34.703892, 33.860004, 52.370354>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.572174, 33.970238, 52.202728>,  <34.352642, 34.153961, 51.923351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.572174, 33.970238, 52.202728> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591664, -0.376795, -0.712713,
		0.590524, 0.804401, 0.064960,
		0.548830, -0.459309, 0.698442,
		34.736824, 33.832447, 52.412262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.070499, 34.165657, 51.652901>,  <34.352642, 34.153961, 51.923351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.070499, 34.165657, 51.652901> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040192, 33.881077, 51.932358>,  <35.022007, 33.710327, 52.100033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.040192, 33.881077, 51.932358>,  <35.070499, 34.165657, 51.652901>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.040192, 33.881077, 51.932358> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543069, -0.617065, -0.569480,
		0.836263, 0.336259, 0.433122,
		-0.075771, -0.711450, 0.698640,
		35.017460, 33.667641, 52.141949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764198, 33.813107, 51.722706>,  <35.070499, 34.165657, 51.652901>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764198, 33.813107, 51.722706> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.462910, 33.580097, 51.844906>,  <35.282139, 33.440292, 51.918228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.462910, 33.580097, 51.844906>,  <35.764198, 33.813107, 51.722706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462910, 33.580097, 51.844906> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420830, -0.783722, -0.456818,
		0.505536, -0.215518, 0.835455,
		-0.753217, -0.582522, 0.305503,
		35.236946, 33.405342, 51.936558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.013580, 33.121567, 51.717556>,  <35.764198, 33.813107, 51.722706>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.013580, 33.121567, 51.717556> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622299, 33.044544, 51.748631>,  <35.387531, 32.998333, 51.767273>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.622299, 33.044544, 51.748631>,  <36.013580, 33.121567, 51.717556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.622299, 33.044544, 51.748631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080080, -0.695069, -0.714469,
		0.191570, -0.692677, 0.695341,
		-0.978207, -0.192554, 0.077684,
		35.328838, 32.986778, 51.771935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.977474, 32.445400, 51.885029>,  <36.013580, 33.121567, 51.717556>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.977474, 32.445400, 51.885029> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624580, 32.553558, 51.730865>,  <35.412842, 32.618454, 51.638367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.624580, 32.553558, 51.730865>,  <35.977474, 32.445400, 51.885029>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624580, 32.553558, 51.730865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101064, -0.690764, -0.715983,
		-0.459827, -0.670619, 0.582091,
		-0.882239, 0.270399, -0.385407,
		35.359909, 32.634678, 51.615242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.607868, 31.815172, 51.747787>,  <35.977474, 32.445400, 51.885029>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.607868, 31.815172, 51.747787> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445755, 32.094406, 51.511677>,  <35.348488, 32.261948, 51.370010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.445755, 32.094406, 51.511677>,  <35.607868, 31.815172, 51.747787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.445755, 32.094406, 51.511677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033883, -0.656708, -0.753383,
		-0.913565, -0.285329, 0.289803,
		-0.405278, 0.698084, -0.590278,
		35.324173, 32.303833, 51.334595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.018932, 31.516853, 51.561459>,  <35.607868, 31.815172, 51.747787>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.018932, 31.516853, 51.561459> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.106911, 31.793253, 51.286026>,  <35.159698, 31.959093, 51.120766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.106911, 31.793253, 51.286026>,  <35.018932, 31.516853, 51.561459>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.106911, 31.793253, 51.286026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046473, -0.697641, -0.714938,
		-0.974405, 0.189245, -0.121327,
		0.219942, 0.691001, -0.688580,
		35.172894, 32.000553, 51.079453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.466934, 31.514091, 51.102032>,  <35.018932, 31.516853, 51.561459>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.466934, 31.514091, 51.102032> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772873, 31.688658, 50.912483>,  <34.956436, 31.793398, 50.798756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.772873, 31.688658, 50.912483>,  <34.466934, 31.514091, 51.102032>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772873, 31.688658, 50.912483> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021610, -0.717785, -0.695929,
		-0.643853, 0.542518, -0.539563,
		0.764844, 0.436416, -0.473872,
		35.002327, 31.819582, 50.770321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.223434, 31.473200, 50.418247>,  <34.466934, 31.514091, 51.102032>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.223434, 31.473200, 50.418247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617870, 31.537506, 50.435131>,  <34.854530, 31.576090, 50.445259>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.617870, 31.537506, 50.435131>,  <34.223434, 31.473200, 50.418247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.617870, 31.537506, 50.435131> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149349, -0.745540, -0.649511,
		-0.072952, 0.646780, -0.759180,
		0.986090, 0.160766, 0.042207,
		34.913696, 31.585735, 50.447792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609379, 31.954655, 50.018749>,  <34.223434, 31.473200, 50.418247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609379, 31.954655, 50.018749> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.296257, 31.882559, 49.780514>,  <34.108383, 31.839300, 49.637573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.296257, 31.882559, 49.780514>,  <34.609379, 31.954655, 50.018749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296257, 31.882559, 49.780514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609738, 0.413247, 0.676348,
		0.124218, 0.892603, -0.433394,
		-0.782809, -0.180242, -0.595586,
		34.061413, 31.828485, 49.601837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247501, 32.523609, 50.104500>,  <34.609379, 31.954655, 50.018749>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247501, 32.523609, 50.104500> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985638, 32.245804, 49.985119>,  <33.828522, 32.079121, 49.913490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.985638, 32.245804, 49.985119>,  <34.247501, 32.523609, 50.104500>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.985638, 32.245804, 49.985119> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624176, 0.273931, 0.731687,
		-0.426413, 0.665289, -0.612831,
		-0.654657, -0.694516, -0.298450,
		33.789242, 32.037449, 49.895584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578140, 32.832077, 50.047398>,  <34.247501, 32.523609, 50.104500>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578140, 32.832077, 50.047398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485252, 32.445126, 50.087917>,  <33.429520, 32.212955, 50.112228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.485252, 32.445126, 50.087917>,  <33.578140, 32.832077, 50.047398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.485252, 32.445126, 50.087917> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679073, 0.235807, 0.695165,
		-0.696373, 0.092638, -0.711677,
		-0.232217, -0.967374, 0.101301,
		33.415588, 32.154915, 50.118309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.861469, 32.816280, 50.039211>,  <33.578140, 32.832077, 50.047398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.861469, 32.816280, 50.039211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.958706, 32.466747, 50.207653>,  <33.017048, 32.257027, 50.308716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.958706, 32.466747, 50.207653>,  <32.861469, 32.816280, 50.039211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.958706, 32.466747, 50.207653> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706496, 0.137967, 0.694139,
		-0.664658, -0.466246, -0.583819,
		0.243092, -0.873830, 0.421102,
		33.031635, 32.204597, 50.333984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212975, 32.520847, 50.231636>,  <32.861469, 32.816280, 50.039211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212975, 32.520847, 50.231636> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.469658, 32.308632, 50.453171>,  <32.623669, 32.181301, 50.586090>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.469658, 32.308632, 50.453171>,  <32.212975, 32.520847, 50.231636>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469658, 32.308632, 50.453171> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590552, 0.118939, 0.798187,
		-0.489342, -0.839275, -0.236986,
		0.641711, -0.530539, 0.553837,
		32.662170, 32.149471, 50.619324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762121, 32.164886, 50.671638>,  <32.212975, 32.520847, 50.231636>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762121, 32.164886, 50.671638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.134903, 32.153522, 50.816223>,  <32.358574, 32.146706, 50.902973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.134903, 32.153522, 50.816223>,  <31.762121, 32.164886, 50.671638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134903, 32.153522, 50.816223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345642, 0.231468, 0.909370,
		-0.109500, -0.972427, 0.205899,
		0.931956, -0.028409, 0.361458,
		32.414490, 32.145000, 50.924660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.631643, 31.815693, 51.177975>,  <31.762121, 32.164886, 50.671638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.631643, 31.815693, 51.177975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.975199, 32.009445, 51.244534>,  <32.181332, 32.125698, 51.284470>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.975199, 32.009445, 51.244534>,  <31.631643, 31.815693, 51.177975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.975199, 32.009445, 51.244534> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249102, 0.111200, 0.962072,
		0.447507, -0.867761, 0.216169,
		0.858886, 0.484382, 0.166398,
		32.232864, 32.154758, 51.294453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.075836, 31.342867, 51.596638>,  <31.631643, 31.815693, 51.177975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.075836, 31.342867, 51.596638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135979, 31.737001, 51.628914>,  <32.172062, 31.973482, 51.648281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.135979, 31.737001, 51.628914>,  <32.075836, 31.342867, 51.596638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135979, 31.737001, 51.628914> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445437, -0.005349, 0.895297,
		0.882599, -0.170553, 0.438100,
		0.150352, 0.985334, 0.080691,
		32.181084, 32.032600, 51.653122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113258, 31.470129, 52.351936>,  <32.075836, 31.342867, 51.596638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113258, 31.470129, 52.351936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035427, 31.832479, 52.201454>,  <31.988728, 32.049889, 52.111164>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035427, 31.832479, 52.201454>,  <32.113258, 31.470129, 52.351936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035427, 31.832479, 52.201454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549552, 0.217009, 0.806784,
		0.812484, 0.363729, 0.455599,
		-0.194581, 0.905874, -0.376205,
		31.977053, 32.104240, 52.088593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.241467, 31.951496, 52.844929>,  <32.113258, 31.470129, 52.351936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.241467, 31.951496, 52.844929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035614, 32.206818, 52.615940>,  <31.912104, 32.360012, 52.478546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.035614, 32.206818, 52.615940>,  <32.241467, 31.951496, 52.844929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035614, 32.206818, 52.615940> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549067, 0.267471, 0.791824,
		0.658544, 0.721821, 0.212824,
		-0.514630, 0.638306, -0.572470,
		31.881226, 32.398308, 52.444199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169083, 32.633953, 53.169666>,  <32.241467, 31.951496, 52.844929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169083, 32.633953, 53.169666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.859520, 32.648708, 52.916779>,  <31.673780, 32.657562, 52.765045>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.859520, 32.648708, 52.916779>,  <32.169083, 32.633953, 53.169666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.859520, 32.648708, 52.916779> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542772, 0.475708, 0.692171,
		0.326283, 0.878830, -0.348135,
		-0.773911, 0.036885, -0.632220,
		31.627346, 32.659775, 52.727112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000603, 33.316238, 53.168697>,  <32.169083, 32.633953, 53.169666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000603, 33.316238, 53.168697> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.681576, 33.139637, 53.004276>,  <31.490160, 33.033676, 52.905624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.681576, 33.139637, 53.004276>,  <32.000603, 33.316238, 53.168697>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.681576, 33.139637, 53.004276> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603165, 0.573621, 0.554212,
		-0.008898, 0.689953, -0.723799,
		-0.797567, -0.441501, -0.411052,
		31.442307, 33.007187, 52.880962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.713491, 33.902901, 53.085289>,  <32.000603, 33.316238, 53.168697>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.713491, 33.902901, 53.085289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.469387, 33.586102, 53.078094>,  <31.322924, 33.396023, 53.073776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.469387, 33.586102, 53.078094>,  <31.713491, 33.902901, 53.085289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.469387, 33.586102, 53.078094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686832, 0.517639, 0.510208,
		-0.394770, 0.323716, -0.859863,
		-0.610262, -0.791996, -0.017990,
		31.286308, 33.348503, 53.072697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118866, 34.204060, 52.820473>,  <31.713491, 33.902901, 53.085289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118866, 34.204060, 52.820473> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.065216, 33.885078, 53.055786>,  <31.033026, 33.693691, 53.196976>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.065216, 33.885078, 53.055786>,  <31.118866, 34.204060, 52.820473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065216, 33.885078, 53.055786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575130, 0.546083, 0.609113,
		-0.806991, -0.256644, -0.531882,
		-0.134127, -0.797451, 0.588288,
		31.024979, 33.645844, 53.232273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.396826, 34.102425, 52.866062>,  <31.118866, 34.204060, 52.820473>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.396826, 34.102425, 52.866062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.549349, 33.916256, 53.185558>,  <30.640862, 33.804554, 53.377254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.549349, 33.916256, 53.185558>,  <30.396826, 34.102425, 52.866062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.549349, 33.916256, 53.185558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653041, 0.475940, 0.589082,
		-0.654326, -0.746230, -0.122463,
		0.381306, -0.465426, 0.798740,
		30.663740, 33.776627, 53.425179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.900623, 34.205505, 53.356262>,  <30.396826, 34.102425, 52.866062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.900623, 34.205505, 53.356262> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.143829, 34.009735, 53.606316>,  <30.289753, 33.892273, 53.756348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.143829, 34.009735, 53.606316>,  <29.900623, 34.205505, 53.356262>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143829, 34.009735, 53.606316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336930, 0.553902, 0.761361,
		-0.718887, -0.673542, 0.171879,
		0.608013, -0.489421, 0.625130,
		30.326233, 33.862907, 53.793854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.475582, 34.089985, 53.965557>,  <29.900623, 34.205505, 53.356262>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.475582, 34.089985, 53.965557> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.862967, 34.137558, 54.053139>,  <30.095396, 34.166100, 54.105690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.862967, 34.137558, 54.053139>,  <29.475582, 34.089985, 53.965557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862967, 34.137558, 54.053139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239869, 0.682862, 0.690045,
		-0.067451, -0.720802, 0.689852,
		0.968459, 0.118930, 0.218958,
		30.153503, 34.173237, 54.118828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.495993, 34.155102, 54.669987>,  <29.475582, 34.089985, 53.965557>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.495993, 34.155102, 54.669987> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.855583, 34.292847, 54.561726>,  <30.071339, 34.375492, 54.496769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<29.855583, 34.292847, 54.561726>,  <29.495993, 34.155102, 54.669987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.855583, 34.292847, 54.561726> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107357, 0.772337, 0.626075,
		0.424631, -0.533772, 0.731284,
		0.898979, 0.344360, -0.270654,
		30.125277, 34.396156, 54.480530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<29.971075, 34.112350, 55.194935> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087988, 34.407463, 54.951542>,  <30.158134, 34.584530, 54.805504>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.087988, 34.407463, 54.951542>,  <29.971075, 34.112350, 55.194935>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.087988, 34.407463, 54.951542> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136944, 0.662000, 0.736887,
		0.946477, -0.132049, 0.294524,
		0.292280, 0.737779, -0.608485,
		30.175673, 34.628796, 54.768997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029257, 34.631889, 55.656315>,  <29.971075, 34.112350, 55.194935>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029257, 34.631889, 55.656315> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076658, 34.849205, 55.323860>,  <30.105099, 34.979595, 55.124386>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.076658, 34.849205, 55.323860>,  <30.029257, 34.631889, 55.656315>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.076658, 34.849205, 55.323860> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187773, 0.834198, 0.518512,
		0.975037, 0.094620, 0.200871,
		0.118504, 0.543287, -0.831141,
		30.112209, 35.012192, 55.074516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.418196, 35.321732, 55.817825>,  <30.029257, 34.631889, 55.656315>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.418196, 35.321732, 55.817825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236330, 35.395153, 55.469208>,  <30.127211, 35.439205, 55.260036>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.236330, 35.395153, 55.469208>,  <30.418196, 35.321732, 55.817825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236330, 35.395153, 55.469208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300233, 0.889679, 0.343993,
		0.838536, 0.418067, -0.349395,
		-0.454662, 0.183550, -0.871546,
		30.099932, 35.450218, 55.207745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623159, 36.015316, 55.683006>,  <30.418196, 35.321732, 55.817825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623159, 36.015316, 55.683006> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312178, 35.952473, 55.439407>,  <30.125589, 35.914768, 55.293247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.312178, 35.952473, 55.439407>,  <30.623159, 36.015316, 55.683006>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.312178, 35.952473, 55.439407> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369461, 0.897699, 0.240073,
		0.508983, 0.411648, -0.755964,
		-0.777454, -0.157106, -0.609002,
		30.078941, 35.905342, 55.256706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.465837, 36.615162, 55.228310>,  <30.623159, 36.015316, 55.683006>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.465837, 36.615162, 55.228310> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109484, 36.437531, 55.266514>,  <29.895672, 36.330952, 55.289436>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109484, 36.437531, 55.266514>,  <30.465837, 36.615162, 55.228310>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109484, 36.437531, 55.266514> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395113, 0.861338, 0.319347,
		-0.224082, 0.246764, -0.942812,
		-0.890883, -0.444077, 0.095511,
		29.842218, 36.304306, 55.295166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.995008, 37.201653, 55.148621>,  <30.465837, 36.615162, 55.228310>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.995008, 37.201653, 55.148621> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784472, 36.908188, 55.320530>,  <29.658150, 36.732109, 55.423676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.784472, 36.908188, 55.320530>,  <29.995008, 37.201653, 55.148621>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.784472, 36.908188, 55.320530> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457748, 0.670451, 0.583920,
		-0.716542, 0.110613, -0.688718,
		-0.526340, -0.733663, 0.429773,
		29.626570, 36.688087, 55.449463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.269165, 37.345505, 55.061489>,  <29.995008, 37.201653, 55.148621>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.269165, 37.345505, 55.061489> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291666, 37.083534, 55.362926>,  <29.305166, 36.926350, 55.543789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.291666, 37.083534, 55.362926>,  <29.269165, 37.345505, 55.061489>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.291666, 37.083534, 55.362926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454555, 0.655225, 0.603373,
		-0.888941, -0.376491, -0.260844,
		0.056253, -0.654931, 0.753592,
		29.308542, 36.887054, 55.589005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601177, 37.275116, 55.399368>,  <29.269165, 37.345505, 55.061489>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601177, 37.275116, 55.399368> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832621, 37.126095, 55.689587>,  <28.971487, 37.036682, 55.863720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832621, 37.126095, 55.689587>,  <28.601177, 37.275116, 55.399368>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.832621, 37.126095, 55.689587> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593845, 0.417345, 0.687874,
		-0.559072, -0.828872, 0.020242,
		0.578608, -0.372551, 0.725548,
		29.006203, 37.014328, 55.907249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.151237, 36.932869, 55.914993>,  <28.601177, 37.275116, 55.399368>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.151237, 36.932869, 55.914993> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496578, 37.041908, 56.084846>,  <28.703783, 37.107330, 56.186760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.496578, 37.041908, 56.084846>,  <28.151237, 36.932869, 55.914993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496578, 37.041908, 56.084846> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501914, 0.377164, 0.778351,
		0.052021, -0.885120, 0.462446,
		0.863351, 0.272599, 0.424634,
		28.755583, 37.123688, 56.212238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.130487, 36.726337, 56.621567>,  <28.151237, 36.932869, 55.914993>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.130487, 36.726337, 56.621567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417500, 37.003956, 56.645046>,  <28.589706, 37.170528, 56.659134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.417500, 37.003956, 56.645046>,  <28.130487, 36.726337, 56.621567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417500, 37.003956, 56.645046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515902, 0.472943, 0.714262,
		0.467954, -0.542805, 0.697411,
		0.717540, 0.694038, 0.058719,
		28.632759, 37.212170, 56.662659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.207958, 36.824081, 57.282246>,  <28.130487, 36.726337, 56.621567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.207958, 36.824081, 57.282246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338764, 37.158894, 57.106770>,  <28.417248, 37.359779, 57.001484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.338764, 37.158894, 57.106770>,  <28.207958, 36.824081, 57.282246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.338764, 37.158894, 57.106770> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295748, 0.531538, 0.793725,
		0.897549, -0.129820, 0.421371,
		0.327017, 0.837026, -0.438687,
		28.436869, 37.410000, 56.975163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644569, 37.165592, 57.653606>,  <28.207958, 36.824081, 57.282246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.644569, 37.165592, 57.653606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479685, 37.446358, 57.421265>,  <28.380754, 37.614819, 57.281860>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.479685, 37.446358, 57.421265>,  <28.644569, 37.165592, 57.653606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.479685, 37.446358, 57.421265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299020, 0.498002, 0.813991,
		0.860621, 0.509226, 0.004603,
		-0.412213, 0.701914, -0.580859,
		28.356022, 37.656933, 57.247005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.587162, 37.599670, 58.184811>,  <28.644569, 37.165592, 57.653606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.587162, 37.599670, 58.184811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395569, 37.782745, 57.885185>,  <28.280613, 37.892590, 57.705410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.395569, 37.782745, 57.885185>,  <28.587162, 37.599670, 58.184811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.395569, 37.782745, 57.885185> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393941, 0.650495, 0.649359,
		0.784465, 0.606120, -0.131275,
		-0.478983, 0.457685, -0.749066,
		28.251875, 37.920052, 57.660465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.902529, 38.257992, 58.231815>,  <28.587162, 37.599670, 58.184811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.902529, 38.257992, 58.231815> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570866, 38.272961, 58.008709>,  <28.371868, 38.281940, 57.874847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.570866, 38.272961, 58.008709>,  <28.902529, 38.257992, 58.231815>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.570866, 38.272961, 58.008709> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243120, 0.874315, 0.420079,
		0.503381, 0.483914, -0.715845,
		-0.829156, 0.037423, -0.557763,
		28.322119, 38.284187, 57.841381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893795, 38.926674, 57.924885>,  <28.902529, 38.257992, 58.231815>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893795, 38.926674, 57.924885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510216, 38.813297, 57.928493>,  <28.280069, 38.745270, 57.930660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.510216, 38.813297, 57.928493>,  <28.893795, 38.926674, 57.924885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.510216, 38.813297, 57.928493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245940, 0.847063, 0.471167,
		-0.141195, 0.449604, -0.881998,
		-0.958946, -0.283445, 0.009026,
		28.222532, 38.728264, 57.931202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.506813, 39.579189, 57.949642>,  <28.893795, 38.926674, 57.924885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.506813, 39.579189, 57.949642> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220406, 39.317356, 58.046669>,  <28.048561, 39.160255, 58.104885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220406, 39.317356, 58.046669>,  <28.506813, 39.579189, 57.949642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.220406, 39.317356, 58.046669> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395036, 0.666426, 0.632316,
		-0.575555, 0.356928, -0.735758,
		-0.716019, -0.654584, 0.242565,
		28.005600, 39.120979, 58.119438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.725311, 39.803814, 57.875370>,  <28.506813, 39.579189, 57.949642>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.725311, 39.803814, 57.875370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712357, 39.528412, 58.165173>,  <27.704584, 39.363171, 58.339054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.712357, 39.528412, 58.165173>,  <27.725311, 39.803814, 57.875370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.712357, 39.528412, 58.165173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611706, 0.586924, 0.530411,
		-0.790422, -0.426009, -0.440170,
		-0.032386, -0.688503, 0.724510,
		27.702641, 39.321861, 58.382526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951000, 39.665745, 58.114395>,  <27.725311, 39.803814, 57.875370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951000, 39.665745, 58.114395> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145763, 39.507652, 58.425961>,  <27.262621, 39.412796, 58.612900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.145763, 39.507652, 58.425961>,  <26.951000, 39.665745, 58.114395>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.145763, 39.507652, 58.425961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752859, 0.262236, 0.603685,
		-0.442857, -0.880353, -0.169871,
		0.486910, -0.395235, 0.778915,
		27.291836, 39.389080, 58.659634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.429739, 39.375446, 58.600376>,  <26.951000, 39.665745, 58.114395>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.429739, 39.375446, 58.600376> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752178, 39.442173, 58.827492>,  <26.945642, 39.482208, 58.963760>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.752178, 39.442173, 58.827492>,  <26.429739, 39.375446, 58.600376>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752178, 39.442173, 58.827492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570043, 0.476548, 0.669293,
		-0.158928, -0.863177, 0.479236,
		0.806097, 0.166815, 0.567785,
		26.994007, 39.492218, 58.997826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.200756, 39.386089, 59.307785>,  <26.429739, 39.375446, 58.600376>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.200756, 39.386089, 59.307785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568521, 39.524410, 59.382721>,  <26.789181, 39.607403, 59.427681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568521, 39.524410, 59.382721>,  <26.200756, 39.386089, 59.307785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568521, 39.524410, 59.382721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350515, 0.504462, 0.789086,
		0.178364, -0.791163, 0.585020,
		0.919416, 0.345803, 0.187337,
		26.844347, 39.628151, 59.438923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.263176, 39.385647, 60.031120>,  <26.200756, 39.386089, 59.307785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.263176, 39.385647, 60.031120> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549360, 39.646004, 59.929565>,  <26.721071, 39.802216, 59.868633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.549360, 39.646004, 59.929565>,  <26.263176, 39.385647, 60.031120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.549360, 39.646004, 59.929565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289362, 0.606828, 0.740290,
		0.635911, -0.456185, 0.622505,
		0.715463, 0.650888, -0.253886,
		26.763998, 39.841270, 59.853401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.582701, 39.579502, 60.691570>,  <26.263176, 39.385647, 60.031120>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.582701, 39.579502, 60.691570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630030, 39.871418, 60.422230>,  <26.658426, 40.046570, 60.260624>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.630030, 39.871418, 60.422230>,  <26.582701, 39.579502, 60.691570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.630030, 39.871418, 60.422230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161840, 0.683221, 0.712051,
		0.979698, 0.024724, 0.198949,
		0.118321, 0.729793, -0.673352,
		26.665525, 40.090355, 60.220222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137543, 40.068104, 60.896297>,  <26.582701, 39.579502, 60.691570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137543, 40.068104, 60.896297> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841038, 40.219681, 60.674690>,  <26.663136, 40.310627, 60.541725>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.841038, 40.219681, 60.674690>,  <27.137543, 40.068104, 60.896297>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.841038, 40.219681, 60.674690> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257004, 0.602258, 0.755800,
		0.620065, 0.702630, -0.349042,
		-0.741261, 0.378940, -0.554018,
		26.618660, 40.333363, 60.508484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.520557, 40.732243, 60.846188>,  <27.137543, 40.068104, 60.896297>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.520557, 40.732243, 60.846188> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314976, 41.059761, 60.743870>,  <27.191628, 41.256271, 60.682480>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.314976, 41.059761, 60.743870>,  <27.520557, 40.732243, 60.846188>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.314976, 41.059761, 60.743870> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120170, -0.226524, -0.966564,
		-0.849360, -0.527506, 0.018028,
		-0.513953, 0.818795, -0.255790,
		27.160789, 41.305401, 60.667133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.269453, 40.672523, 60.846062>,  <27.520557, 40.732243, 60.846188>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.269453, 40.672523, 60.846062> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558945, 40.946968, 60.875633>,  <28.732639, 41.111633, 60.893375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.558945, 40.946968, 60.875633>,  <28.269453, 40.672523, 60.846062>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.558945, 40.946968, 60.875633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318451, -0.237017, -0.917830,
		-0.612211, 0.687804, -0.390029,
		0.723731, 0.686111, 0.073927,
		28.776064, 41.152802, 60.897812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.335102, 40.902519, 60.188366>,  <28.269453, 40.672523, 60.846062>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.335102, 40.902519, 60.188366> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674387, 41.034840, 60.353825>,  <28.877958, 41.114231, 60.453098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.674387, 41.034840, 60.353825>,  <28.335102, 40.902519, 60.188366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674387, 41.034840, 60.353825> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483394, -0.164283, -0.859850,
		-0.216488, 0.929289, -0.299256,
		0.848212, 0.330806, 0.413648,
		28.928850, 41.134083, 60.477921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.626892, 41.309376, 59.647301>,  <28.335102, 40.902519, 60.188366>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.626892, 41.309376, 59.647301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926199, 41.184898, 59.881653>,  <29.105783, 41.110214, 60.022263>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926199, 41.184898, 59.881653>,  <28.626892, 41.309376, 59.647301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926199, 41.184898, 59.881653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523387, -0.265738, -0.809598,
		0.407631, 0.912438, -0.035969,
		0.748267, -0.311191, 0.585881,
		29.150679, 41.091541, 60.057419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.254662, 41.570950, 59.356606>,  <28.626892, 41.309376, 59.647301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.254662, 41.570950, 59.356606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377996, 41.276009, 59.597019>,  <29.451998, 41.099045, 59.741268>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.377996, 41.276009, 59.597019>,  <29.254662, 41.570950, 59.356606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377996, 41.276009, 59.597019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578896, -0.355922, -0.733621,
		0.754857, 0.574140, 0.317104,
		0.308336, -0.737349, 0.601037,
		29.470497, 41.054806, 59.777328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896727, 41.572926, 59.248493>,  <29.254662, 41.570950, 59.356606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896727, 41.572926, 59.248493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826694, 41.219685, 59.422611>,  <29.784676, 41.007740, 59.527081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.826694, 41.219685, 59.422611>,  <29.896727, 41.572926, 59.248493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.826694, 41.219685, 59.422611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612123, -0.443922, -0.654400,
		0.771137, 0.151883, 0.618288,
		-0.175079, -0.883100, 0.435295,
		29.774170, 40.954754, 59.553200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574345, 41.220963, 59.273170>,  <29.896727, 41.572926, 59.248493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574345, 41.220963, 59.273170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285101, 40.945946, 59.299725>,  <30.111555, 40.780937, 59.315659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.285101, 40.945946, 59.299725>,  <30.574345, 41.220963, 59.273170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.285101, 40.945946, 59.299725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438799, -0.531461, -0.724572,
		0.533452, -0.494814, 0.685994,
		-0.723107, -0.687538, 0.066385,
		30.068169, 40.739685, 59.319641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.889198, 40.588100, 59.237965>,  <30.574345, 41.220963, 59.273170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.889198, 40.588100, 59.237965> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511429, 40.490177, 59.150211>,  <30.284767, 40.431423, 59.097557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.511429, 40.490177, 59.150211>,  <30.889198, 40.588100, 59.237965>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.511429, 40.490177, 59.150211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326086, -0.613256, -0.719434,
		0.041582, -0.750990, 0.659003,
		-0.944425, -0.244807, -0.219387,
		30.228102, 40.416737, 59.084396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.900209, 39.879227, 59.182396>,  <30.889198, 40.588100, 59.237965>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.900209, 39.879227, 59.182396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569815, 39.986221, 58.983925>,  <30.371578, 40.050419, 58.864841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.569815, 39.986221, 58.983925>,  <30.900209, 39.879227, 59.182396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.569815, 39.986221, 58.983925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237672, -0.632907, -0.736845,
		-0.511129, -0.726554, 0.459202,
		-0.825990, 0.267484, -0.496179,
		30.322018, 40.066467, 58.835072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.564262, 39.241150, 59.114403>,  <30.900209, 39.879227, 59.182396>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.564262, 39.241150, 59.114403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393253, 39.492924, 58.854855>,  <30.290648, 39.643990, 58.699127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.393253, 39.492924, 58.854855>,  <30.564262, 39.241150, 59.114403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.393253, 39.492924, 58.854855> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089962, -0.684589, -0.723357,
		-0.899517, -0.367626, 0.236052,
		-0.427524, 0.629436, -0.648871,
		30.264996, 39.681755, 58.660194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.978588, 38.857609, 58.812294>,  <30.564262, 39.241150, 59.114403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.978588, 38.857609, 58.812294> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093765, 39.161800, 58.579483>,  <30.162872, 39.344315, 58.439796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.093765, 39.161800, 58.579483>,  <29.978588, 38.857609, 58.812294>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.093765, 39.161800, 58.579483> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229910, -0.644890, -0.728875,
		-0.929640, 0.076059, -0.360534,
		0.287942, 0.760481, -0.582029,
		30.180147, 39.389946, 58.404873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.591648, 38.913036, 58.216553>,  <29.978588, 38.857609, 58.812294>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.591648, 38.913036, 58.216553> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925266, 39.115520, 58.128811>,  <30.125437, 39.237011, 58.076164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.925266, 39.115520, 58.128811>,  <29.591648, 38.913036, 58.216553>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.925266, 39.115520, 58.128811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112946, -0.545852, -0.830234,
		-0.540009, 0.667678, -0.512441,
		0.834046, 0.506212, -0.219354,
		30.175480, 39.267384, 58.063004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.548347, 38.792538, 57.549149>,  <29.591648, 38.913036, 58.216553>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.548347, 38.792538, 57.549149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919270, 38.921791, 57.624714>,  <30.141823, 38.999344, 57.670052>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919270, 38.921791, 57.624714>,  <29.548347, 38.792538, 57.549149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919270, 38.921791, 57.624714> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345618, -0.545405, -0.763598,
		-0.143711, 0.773380, -0.617438,
		0.927305, 0.323135, 0.188914,
		30.197462, 39.018730, 57.681389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837355, 38.882751, 56.917492>,  <29.548347, 38.792538, 57.549149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837355, 38.882751, 56.917492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141085, 38.853130, 57.176086>,  <30.323322, 38.835358, 57.331242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.141085, 38.853130, 57.176086>,  <29.837355, 38.882751, 56.917492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141085, 38.853130, 57.176086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506924, -0.555596, -0.659046,
		0.407985, 0.828149, -0.384341,
		0.759326, -0.074049, 0.646484,
		30.368883, 38.830917, 57.370033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.487858, 39.069473, 56.551559>,  <29.837355, 38.882751, 56.917492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.487858, 39.069473, 56.551559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573956, 38.827217, 56.857990>,  <30.625614, 38.681866, 57.041847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.573956, 38.827217, 56.857990>,  <30.487858, 39.069473, 56.551559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.573956, 38.827217, 56.857990> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525730, -0.589221, -0.613537,
		0.822969, 0.534809, 0.191575,
		0.215245, -0.605639, 0.766075,
		30.638529, 38.645527, 57.087814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121912, 38.798996, 56.323730>,  <30.487858, 39.069473, 56.551559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121912, 38.798996, 56.323730> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050718, 38.575321, 56.647617>,  <31.008003, 38.441116, 56.841949>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.050718, 38.575321, 56.647617>,  <31.121912, 38.798996, 56.323730>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.050718, 38.575321, 56.647617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510691, -0.755853, -0.409733,
		0.841141, 0.340588, 0.420098,
		-0.177982, -0.559183, 0.809714,
		30.997324, 38.407566, 56.890533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792072, 38.546913, 56.552391>,  <31.121912, 38.798996, 56.323730>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792072, 38.546913, 56.552391> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517670, 38.302273, 56.710045>,  <31.353029, 38.155487, 56.804638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517670, 38.302273, 56.710045>,  <31.792072, 38.546913, 56.552391>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517670, 38.302273, 56.710045> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539459, -0.791029, -0.288544,
		0.488244, 0.014675, 0.872584,
		-0.686005, -0.611603, 0.394131,
		31.311869, 38.118793, 56.828285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.145081, 38.115833, 57.015434>,  <31.792072, 38.546913, 56.552391>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.145081, 38.115833, 57.015434> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813864, 37.908062, 56.931019>,  <31.615133, 37.783398, 56.880367>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813864, 37.908062, 56.931019>,  <32.145081, 38.115833, 57.015434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813864, 37.908062, 56.931019> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555930, -0.809493, -0.188847,
		-0.072745, -0.273698, 0.959061,
		-0.828040, -0.519433, -0.211043,
		31.565453, 37.752232, 56.867706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.300667, 37.483208, 57.303246>,  <32.145081, 38.115833, 57.015434>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.300667, 37.483208, 57.303246> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006233, 37.410130, 57.042538>,  <31.829573, 37.366283, 56.886112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.006233, 37.410130, 57.042538>,  <32.300667, 37.483208, 57.303246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006233, 37.410130, 57.042538> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451968, -0.849446, -0.272335,
		-0.503885, -0.495039, 0.707839,
		-0.736087, -0.182696, -0.651765,
		31.785406, 37.355320, 56.847008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035496, 36.776413, 57.372551>,  <32.300667, 37.483208, 57.303246>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035496, 36.776413, 57.372551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960529, 36.871155, 56.991234>,  <31.915550, 36.928001, 56.762444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.960529, 36.871155, 56.991234>,  <32.035496, 36.776413, 57.372551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960529, 36.871155, 56.991234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463500, -0.834333, -0.298420,
		-0.866051, -0.497781, 0.046583,
		-0.187413, 0.236856, -0.953297,
		31.904305, 36.942211, 56.705246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.975994, 36.139858, 57.034626>,  <32.035496, 36.776413, 57.372551>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.975994, 36.139858, 57.034626> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025253, 36.394253, 56.729900>,  <32.054810, 36.546890, 56.547066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025253, 36.394253, 56.729900>,  <31.975994, 36.139858, 57.034626>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025253, 36.394253, 56.729900> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488999, -0.706879, -0.511080,
		-0.863548, -0.309587, -0.398046,
		0.123147, 0.635986, -0.761811,
		32.062199, 36.585049, 56.501358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<46.802872, 36.144302, 52.370289> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.032436, 35.845333, 52.236427>,  <47.170174, 35.665951, 52.156109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<47.032436, 35.845333, 52.236427>,  <46.802872, 36.144302, 52.370289>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.032436, 35.845333, 52.236427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777326, -0.368613, -0.509793,
		0.257670, 0.552712, -0.792538,
		0.573908, -0.747418, -0.334657,
		47.204609, 35.621109, 52.136032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.759228, 36.204086, 51.653183>,  <46.802872, 36.144302, 52.370289>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.759228, 36.204086, 51.653183> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.838894, 35.824528, 51.751099>,  <46.886696, 35.596790, 51.809849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.838894, 35.824528, 51.751099>,  <46.759228, 36.204086, 51.653183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.838894, 35.824528, 51.751099> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.775352, -0.305352, -0.552802,
		0.599301, -0.079700, -0.796546,
		0.199168, -0.948899, 0.244793,
		46.898643, 35.539860, 51.824535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.865303, 35.836624, 51.002441>,  <46.759228, 36.204086, 51.653183>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.865303, 35.836624, 51.002441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.757359, 35.568768, 51.279209>,  <46.692593, 35.408054, 51.445271>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.757359, 35.568768, 51.279209>,  <46.865303, 35.836624, 51.002441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.757359, 35.568768, 51.279209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742089, -0.313257, -0.592599,
		0.613579, -0.673386, -0.412399,
		-0.269861, -0.669643, 0.691920,
		46.676399, 35.367874, 51.486786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.656399, 35.305550, 50.614803>,  <46.865303, 35.836624, 51.002441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.656399, 35.305550, 50.614803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.497749, 35.207237, 50.968590>,  <46.402557, 35.148251, 51.180862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.497749, 35.207237, 50.968590>,  <46.656399, 35.305550, 50.614803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.497749, 35.207237, 50.968590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830332, -0.314805, -0.459833,
		0.391454, -0.916781, -0.079224,
		-0.396626, -0.245786, 0.884465,
		46.378761, 35.133503, 51.233929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.335472, 34.759174, 50.475632>,  <46.656399, 35.305550, 50.614803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.335472, 34.759174, 50.475632> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.165852, 34.911007, 50.804531>,  <46.064079, 35.002106, 51.001873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<46.165852, 34.911007, 50.804531>,  <46.335472, 34.759174, 50.475632>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.165852, 34.911007, 50.804531> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902221, -0.255836, -0.347195,
		0.078575, -0.889083, 0.450951,
		-0.424055, 0.379577, 0.822252,
		46.038635, 35.024879, 51.051205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.933453, 34.202717, 50.724449>,  <46.335472, 34.759174, 50.475632>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.933453, 34.202717, 50.724449> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.790783, 34.535965, 50.893539>,  <45.705181, 34.735912, 50.994995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.790783, 34.535965, 50.893539>,  <45.933453, 34.202717, 50.724449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.790783, 34.535965, 50.893539> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.892231, -0.169631, -0.418508,
		-0.276959, -0.526442, 0.803836,
		-0.356675, 0.833117, 0.422727,
		45.683781, 34.785900, 51.020359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.312351, 33.968342, 51.026695>,  <45.933453, 34.202717, 50.724449>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.312351, 33.968342, 51.026695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.305244, 34.367676, 51.004719>,  <45.300980, 34.607277, 50.991531>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<45.305244, 34.367676, 51.004719>,  <45.312351, 33.968342, 51.026695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.305244, 34.367676, 51.004719> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983625, -0.027308, -0.178149,
		-0.179352, 0.050877, 0.982469,
		-0.017766, 0.998331, -0.054942,
		45.299915, 34.667175, 50.988235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.722836, 34.265942, 51.533150>,  <45.312351, 33.968342, 51.026695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.722836, 34.265942, 51.533150> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.796551, 34.533516, 51.245102>,  <44.840778, 34.694061, 51.072273>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.796551, 34.533516, 51.245102>,  <44.722836, 34.265942, 51.533150>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.796551, 34.533516, 51.245102> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.969850, 0.004896, -0.243653,
		-0.159462, 0.743307, 0.649666,
		0.184289, 0.668932, -0.720116,
		44.851837, 34.734196, 51.029068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.163441, 34.574429, 51.527649>,  <44.722836, 34.265942, 51.533150>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.163441, 34.574429, 51.527649> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.334156, 34.711639, 51.192940>,  <44.436584, 34.793968, 50.992115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.334156, 34.711639, 51.192940>,  <44.163441, 34.574429, 51.527649>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334156, 34.711639, 51.192940> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900511, 0.075994, -0.428141,
		-0.083276, 0.936245, 0.341336,
		0.426784, 0.343031, -0.836771,
		44.462193, 34.814548, 50.941910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.859219, 35.171104, 51.515812>,  <44.163441, 34.574429, 51.527649>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.859219, 35.171104, 51.515812> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973000, 35.040928, 51.155106>,  <44.041267, 34.962822, 50.938683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.973000, 35.040928, 51.155106>,  <43.859219, 35.171104, 51.515812>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973000, 35.040928, 51.155106> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920094, 0.171533, -0.352140,
		0.269281, 0.929875, -0.250640,
		0.284454, -0.325437, -0.901763,
		44.058334, 34.943298, 50.884575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518566, 35.544655, 51.037762>,  <43.859219, 35.171104, 51.515812>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518566, 35.544655, 51.037762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.605507, 35.262730, 50.767651>,  <43.657669, 35.093575, 50.605583>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.605507, 35.262730, 50.767651>,  <43.518566, 35.544655, 51.037762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605507, 35.262730, 50.767651> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.928026, 0.065211, -0.366763,
		0.302533, 0.706392, -0.639909,
		0.217349, -0.704810, -0.675279,
		43.670712, 35.051285, 50.565067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.862087, 35.490025, 50.687321>,  <43.518566, 35.544655, 51.037762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.862087, 35.490025, 50.687321> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.084015, 35.228359, 50.481701>,  <43.217171, 35.071362, 50.358330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.084015, 35.228359, 50.481701>,  <42.862087, 35.490025, 50.687321>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.084015, 35.228359, 50.481701> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729772, -0.085947, -0.678267,
		0.399516, 0.751455, -0.525074,
		0.554815, -0.654163, -0.514054,
		43.250458, 35.032112, 50.327484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.850067, 35.673321, 49.948269>,  <42.862087, 35.490025, 50.687321>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.850067, 35.673321, 49.948269> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.916470, 35.282040, 49.998165>,  <42.956310, 35.047272, 50.028103>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.916470, 35.282040, 49.998165>,  <42.850067, 35.673321, 49.948269>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.916470, 35.282040, 49.998165> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.688507, -0.205531, -0.695496,
		0.705975, 0.029567, -0.707619,
		0.166001, -0.978204, 0.124743,
		42.966270, 34.988579, 50.035587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.956268, 35.373428, 49.273472>,  <42.850067, 35.673321, 49.948269>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.956268, 35.373428, 49.273472> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.826241, 35.117180, 49.551735>,  <42.748226, 34.963432, 49.718693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.826241, 35.117180, 49.551735>,  <42.956268, 35.373428, 49.273472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826241, 35.117180, 49.551735> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825826, -0.166146, -0.538895,
		0.460808, -0.749667, -0.475033,
		-0.325067, -0.640621, 0.695655,
		42.728722, 34.924995, 49.760433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.705563, 34.767689, 48.939854>,  <42.956268, 35.373428, 49.273472>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.705563, 34.767689, 48.939854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542747, 34.773766, 49.305168>,  <42.445057, 34.777412, 49.524357>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.542747, 34.773766, 49.305168>,  <42.705563, 34.767689, 48.939854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.542747, 34.773766, 49.305168> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.886741, -0.246422, -0.391109,
		0.219111, -0.969044, 0.113776,
		-0.407038, 0.015194, 0.913285,
		42.420635, 34.778324, 49.579155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.228718, 34.282944, 48.874115>,  <42.705563, 34.767689, 48.939854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.228718, 34.282944, 48.874115> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.110989, 34.473446, 49.205547>,  <42.040352, 34.587749, 49.404408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.110989, 34.473446, 49.205547>,  <42.228718, 34.282944, 48.874115>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110989, 34.473446, 49.205547> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.941178, -0.295035, -0.164738,
		0.166004, -0.828332, 0.535079,
		-0.294324, 0.476257, 0.828584,
		42.022690, 34.616322, 49.454124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757305, 33.890774, 49.261333>,  <42.228718, 34.282944, 48.874115>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757305, 33.890774, 49.261333> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667355, 34.263092, 49.376606>,  <41.613384, 34.486485, 49.445770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.667355, 34.263092, 49.376606>,  <41.757305, 33.890774, 49.261333>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.667355, 34.263092, 49.376606> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.973006, -0.198769, -0.117264,
		-0.051868, -0.306768, 0.950370,
		-0.224877, 0.930797, 0.288177,
		41.599892, 34.542332, 49.463058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.218964, 33.846867, 49.722275>,  <41.757305, 33.890774, 49.261333>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.218964, 33.846867, 49.722275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190285, 34.213341, 49.564560>,  <41.173077, 34.433228, 49.469933>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.190285, 34.213341, 49.564560>,  <41.218964, 33.846867, 49.722275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.190285, 34.213341, 49.564560> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987339, -0.121268, -0.102253,
		-0.141497, 0.381961, 0.913282,
		-0.071695, 0.916188, -0.394285,
		41.168777, 34.488197, 49.446274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615490, 34.148182, 50.074829>,  <41.218964, 33.846867, 49.722275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615490, 34.148182, 50.074829> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674793, 34.370636, 49.747723>,  <40.710373, 34.504108, 49.551460>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.674793, 34.370636, 49.747723>,  <40.615490, 34.148182, 50.074829>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.674793, 34.370636, 49.747723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.987366, 0.036456, -0.154209,
		-0.055948, 0.830293, 0.554513,
		0.148254, 0.556134, -0.817762,
		40.719269, 34.537476, 49.502396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290100, 34.772049, 50.198025>,  <40.615490, 34.148182, 50.074829>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290100, 34.772049, 50.198025> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329765, 34.753635, 49.800423>,  <40.353565, 34.742588, 49.561863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.329765, 34.753635, 49.800423>,  <40.290100, 34.772049, 50.198025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329765, 34.753635, 49.800423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990966, 0.086069, -0.102848,
		0.090287, 0.995225, -0.037078,
		0.099166, -0.046029, -0.994006,
		40.359516, 34.739826, 49.502220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.944866, 35.323082, 50.013897>,  <40.290100, 34.772049, 50.198025>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.944866, 35.323082, 50.013897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970127, 35.112209, 49.674938>,  <39.985283, 34.985683, 49.471561>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.970127, 35.112209, 49.674938>,  <39.944866, 35.323082, 50.013897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.970127, 35.112209, 49.674938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.980522, 0.125454, -0.151121,
		0.185978, 0.840438, -0.508995,
		0.063152, -0.527186, -0.847400,
		39.989075, 34.954052, 49.420719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.597893, 35.718571, 49.609310>,  <39.944866, 35.323082, 50.013897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.597893, 35.718571, 49.609310> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352467, 35.912193, 49.359756>,  <39.205212, 36.028366, 49.210026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.352467, 35.912193, 49.359756>,  <39.597893, 35.718571, 49.609310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.352467, 35.912193, 49.359756> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593840, -0.237906, -0.768606,
		-0.520473, -0.842076, -0.141480,
		-0.613565, 0.484055, -0.623882,
		39.168396, 36.057411, 49.172592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.268776, 35.152153, 49.077980>,  <39.597893, 35.718571, 49.609310>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.268776, 35.152153, 49.077980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322712, 35.534256, 48.972683>,  <39.355072, 35.763519, 48.909504>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.322712, 35.534256, 48.972683>,  <39.268776, 35.152153, 49.077980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.322712, 35.534256, 48.972683> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503483, -0.294868, -0.812132,
		-0.853419, -0.023028, -0.520717,
		0.134841, 0.955261, -0.263240,
		39.363163, 35.820835, 48.893711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.000141, 35.245869, 48.276272>,  <39.268776, 35.152153, 49.077980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.000141, 35.245869, 48.276272> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311092, 35.452843, 48.419350>,  <39.497662, 35.577026, 48.505196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.311092, 35.452843, 48.419350>,  <39.000141, 35.245869, 48.276272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311092, 35.452843, 48.419350> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613248, -0.496819, -0.614083,
		-0.140034, 0.696733, -0.703529,
		0.777378, 0.517430, 0.357699,
		39.544308, 35.608070, 48.526661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.695675, 34.514286, 48.356163>,  <39.000141, 35.245869, 48.276272>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.695675, 34.514286, 48.356163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879448, 34.265812, 48.102219>,  <38.989712, 34.116726, 47.949852>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.879448, 34.265812, 48.102219>,  <38.695675, 34.514286, 48.356163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.879448, 34.265812, 48.102219> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860603, -0.488152, -0.145152,
		-0.219742, 0.613050, -0.758870,
		0.459429, -0.621190, -0.634860,
		39.017277, 34.079456, 47.911762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304493, 34.458637, 47.794064>,  <38.695675, 34.514286, 48.356163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304493, 34.458637, 47.794064> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493244, 34.106396, 47.811325>,  <38.606495, 33.895050, 47.821682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.493244, 34.106396, 47.811325>,  <38.304493, 34.458637, 47.794064>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.493244, 34.106396, 47.811325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.825142, -0.458339, -0.330253,
		0.310604, 0.120227, -0.942905,
		0.471875, -0.880608, 0.043158,
		38.634808, 33.842213, 47.824272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.115883, 34.073395, 47.136875>,  <38.304493, 34.458637, 47.794064>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.115883, 34.073395, 47.136875> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255699, 33.795841, 47.388699>,  <38.339588, 33.629307, 47.539791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.255699, 33.795841, 47.388699>,  <38.115883, 34.073395, 47.136875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.255699, 33.795841, 47.388699> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820326, -0.551283, -0.152158,
		0.452645, -0.463258, -0.761908,
		0.349538, -0.693887, 0.629559,
		38.360561, 33.587677, 47.577568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902508, 33.400105, 46.837166>,  <38.115883, 34.073395, 47.136875>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902508, 33.400105, 46.837166> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972855, 33.312042, 47.220959>,  <38.015064, 33.259205, 47.451233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.972855, 33.312042, 47.220959>,  <37.902508, 33.400105, 46.837166>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972855, 33.312042, 47.220959> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767160, -0.641422, -0.006559,
		0.616876, -0.734922, -0.281698,
		0.175867, -0.220154, 0.959481,
		38.025616, 33.245995, 47.508804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.021626, 32.736931, 46.753651>,  <37.902508, 33.400105, 46.837166>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.021626, 32.736931, 46.753651> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922146, 32.834614, 47.128567>,  <37.862457, 32.893223, 47.353516>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.922146, 32.834614, 47.128567>,  <38.021626, 32.736931, 46.753651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922146, 32.834614, 47.128567> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.720443, -0.693435, -0.010496,
		0.647386, -0.677874, 0.348394,
		-0.248703, 0.244203, 0.937290,
		37.847534, 32.907875, 47.409752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722805, 32.027645, 46.935234>,  <38.021626, 32.736931, 46.753651>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722805, 32.027645, 46.935234> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579681, 32.259514, 47.228069>,  <37.493809, 32.398636, 47.403770>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.579681, 32.259514, 47.228069>,  <37.722805, 32.027645, 46.935234>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.579681, 32.259514, 47.228069> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848572, -0.529064, 0.004179,
		0.389745, -0.619737, 0.681193,
		-0.357805, 0.579670, 0.732091,
		37.472340, 32.433414, 47.447697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367126, 31.591028, 47.452095>,  <37.722805, 32.027645, 46.935234>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367126, 31.591028, 47.452095> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223579, 31.959082, 47.514790>,  <37.137451, 32.179913, 47.552406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.223579, 31.959082, 47.514790>,  <37.367126, 31.591028, 47.452095>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.223579, 31.959082, 47.514790> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931710, -0.363201, -0.001040,
		0.055971, -0.146409, 0.987639,
		-0.358864, 0.920135, 0.156740,
		37.115921, 32.235123, 47.561813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.762287, 31.486406, 47.936581>,  <37.367126, 31.591028, 47.452095>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.762287, 31.486406, 47.936581> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717487, 31.848320, 47.772228>,  <36.690609, 32.065468, 47.673618>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.717487, 31.848320, 47.772228>,  <36.762287, 31.486406, 47.936581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.717487, 31.848320, 47.772228> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992970, -0.117831, 0.011201,
		-0.038280, 0.409248, 0.911620,
		-0.112001, 0.904783, -0.410882,
		36.683887, 32.119755, 47.648964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.410965, 31.904118, 48.410042>,  <36.762287, 31.486406, 47.936581>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.410965, 31.904118, 48.410042> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353043, 32.086552, 48.058811>,  <36.318291, 32.196011, 47.848072>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.353043, 32.086552, 48.058811>,  <36.410965, 31.904118, 48.410042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.353043, 32.086552, 48.058811> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989167, -0.088329, 0.117242,
		-0.024087, 0.885541, 0.463936,
		-0.144801, 0.456086, -0.878076,
		36.309601, 32.223377, 47.795387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.907131, 32.415489, 48.490139>,  <36.410965, 31.904118, 48.410042>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.907131, 32.415489, 48.490139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915680, 32.323521, 48.100948>,  <35.920811, 32.268341, 47.867435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.915680, 32.323521, 48.100948>,  <35.907131, 32.415489, 48.490139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915680, 32.323521, 48.100948> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990231, -0.138993, 0.011093,
		-0.137787, 0.963233, -0.230643,
		0.021373, -0.229919, -0.972975,
		35.922092, 32.254543, 47.809055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264896, 32.740910, 48.340279>,  <35.907131, 32.415489, 48.490139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264896, 32.740910, 48.340279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320923, 32.475380, 48.046417>,  <35.354538, 32.316063, 47.870102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.320923, 32.475380, 48.046417>,  <35.264896, 32.740910, 48.340279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320923, 32.475380, 48.046417> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948450, -0.302991, 0.092951,
		-0.284296, 0.683763, -0.672045,
		0.140067, -0.663826, -0.734654,
		35.362942, 32.276234, 47.826019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<30.443354, 32.283497, 52.466782> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.751064, 32.506950, 52.590805>,  <30.935692, 32.641022, 52.665218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.751064, 32.506950, 52.590805>,  <30.443354, 32.283497, 52.466782>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.751064, 32.506950, 52.590805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456567, -0.141181, -0.878416,
		-0.446942, 0.817308, -0.363662,
		0.769279, 0.558637, 0.310056,
		30.981848, 32.674541, 52.683823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678493, 32.705482, 51.842930>,  <30.443354, 32.283497, 52.466782>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678493, 32.705482, 51.842930> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966848, 32.682552, 52.119202>,  <31.139862, 32.668793, 52.284966>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.966848, 32.682552, 52.119202>,  <30.678493, 32.705482, 51.842930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.966848, 32.682552, 52.119202> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676889, -0.155720, -0.719426,
		0.148796, 0.986136, -0.073451,
		0.720889, -0.057329, 0.690675,
		31.183115, 32.665352, 52.326405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.162931, 33.149242, 51.702511>,  <30.678493, 32.705482, 51.842930>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.162931, 33.149242, 51.702511> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391474, 32.905331, 51.922230>,  <31.528599, 32.758984, 52.054062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.391474, 32.905331, 51.922230>,  <31.162931, 33.149242, 51.702511>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.391474, 32.905331, 51.922230> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686484, -0.011712, -0.727050,
		0.449772, 0.792487, 0.411910,
		0.571354, -0.609776, 0.549298,
		31.562880, 32.722397, 52.087021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799053, 33.387932, 51.725418>,  <31.162931, 33.149242, 51.702511>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799053, 33.387932, 51.725418> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880327, 33.009003, 51.824444>,  <31.929090, 32.781643, 51.883858>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.880327, 33.009003, 51.824444>,  <31.799053, 33.387932, 51.725418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.880327, 33.009003, 51.824444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777466, 0.002397, -0.628921,
		0.595200, 0.320259, 0.737001,
		0.203184, -0.947327, 0.247563,
		31.941282, 32.724804, 51.898712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550282, 33.313961, 51.624035>,  <31.799053, 33.387932, 51.725418>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550282, 33.313961, 51.624035> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425945, 32.933891, 51.633419>,  <32.351345, 32.705849, 51.639050>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.425945, 32.933891, 51.633419>,  <32.550282, 33.313961, 51.624035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425945, 32.933891, 51.633419> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725448, -0.253129, -0.640040,
		0.614088, -0.181927, 0.767983,
		-0.310840, -0.950173, 0.023465,
		32.332695, 32.648838, 51.640457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.223408, 32.906845, 51.724262>,  <32.550282, 33.313961, 51.624035>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.223408, 32.906845, 51.724262> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946762, 32.670135, 51.558628>,  <32.780773, 32.528111, 51.459248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.946762, 32.670135, 51.558628>,  <33.223408, 32.906845, 51.724262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.946762, 32.670135, 51.558628> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706533, -0.435316, -0.557953,
		0.149923, -0.678456, 0.719180,
		-0.691617, -0.591774, -0.414088,
		32.739277, 32.492603, 51.434402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536785, 32.256706, 51.517960>,  <33.223408, 32.906845, 51.724262>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536785, 32.256706, 51.517960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195568, 32.228615, 51.311119>,  <32.990837, 32.211758, 51.187016>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195568, 32.228615, 51.311119>,  <33.536785, 32.256706, 51.517960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195568, 32.228615, 51.311119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451122, -0.597351, -0.663069,
		-0.262321, -0.798898, 0.541247,
		-0.853040, -0.070232, -0.517099,
		32.939655, 32.207546, 51.155991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578342, 31.581163, 51.343887>,  <33.536785, 32.256706, 51.517960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578342, 31.581163, 51.343887> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306290, 31.761654, 51.112778>,  <33.143059, 31.869947, 50.974113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.306290, 31.761654, 51.112778>,  <33.578342, 31.581163, 51.343887>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.306290, 31.761654, 51.112778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369324, -0.469906, -0.801741,
		-0.633264, -0.758672, 0.152949,
		-0.680130, 0.451225, -0.577770,
		33.102249, 31.897020, 50.939445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314854, 31.081272, 50.928509>,  <33.578342, 31.581163, 51.343887>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314854, 31.081272, 50.928509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255848, 31.429398, 50.740551>,  <33.220444, 31.638273, 50.627777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.255848, 31.429398, 50.740551>,  <33.314854, 31.081272, 50.928509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255848, 31.429398, 50.740551> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397288, -0.382937, -0.833979,
		-0.905761, -0.309703, -0.289276,
		-0.147512, 0.870312, -0.469891,
		33.211594, 31.690491, 50.599583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.086842, 30.926931, 50.313099>,  <33.314854, 31.081272, 50.928509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.086842, 30.926931, 50.313099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199860, 31.304176, 50.243008>,  <33.267670, 31.530523, 50.200951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.199860, 31.304176, 50.243008>,  <33.086842, 30.926931, 50.313099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.199860, 31.304176, 50.243008> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520897, -0.304239, -0.797562,
		-0.805504, 0.134067, -0.577226,
		0.282542, 0.943114, -0.175230,
		33.284622, 31.587111, 50.190437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.995071, 31.026857, 49.598019>,  <33.086842, 30.926931, 50.313099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.995071, 31.026857, 49.598019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252949, 31.313902, 49.703392>,  <33.407677, 31.486130, 49.766617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.252949, 31.313902, 49.703392>,  <32.995071, 31.026857, 49.598019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252949, 31.313902, 49.703392> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459195, -0.088038, -0.883962,
		-0.611151, 0.690855, -0.386282,
		0.644697, 0.717613, 0.263433,
		33.446358, 31.529186, 49.782421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970684, 31.400820, 49.009434>,  <32.995071, 31.026857, 49.598019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970684, 31.400820, 49.009434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320667, 31.494719, 49.178829>,  <33.530659, 31.551058, 49.280468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.320667, 31.494719, 49.178829>,  <32.970684, 31.400820, 49.009434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320667, 31.494719, 49.178829> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450381, -0.073438, -0.889811,
		-0.177781, 0.969278, -0.169981,
		0.874958, 0.234748, 0.423489,
		33.583153, 31.565144, 49.305874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472641, 31.893116, 48.695446>,  <32.970684, 31.400820, 49.009434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472641, 31.893116, 48.695446> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687622, 31.603365, 48.868149>,  <33.816612, 31.429514, 48.971771>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.687622, 31.603365, 48.868149>,  <33.472641, 31.893116, 48.695446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.687622, 31.603365, 48.868149> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387589, -0.242521, -0.889358,
		0.748944, 0.645336, 0.150418,
		0.537455, -0.724380, 0.431759,
		33.848858, 31.386051, 48.997677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.179764, 31.913479, 47.983692>,  <33.472641, 31.893116, 48.695446>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.179764, 31.913479, 47.983692> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085674, 32.158566, 47.681896>,  <33.029221, 32.305618, 47.500820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.085674, 32.158566, 47.681896>,  <33.179764, 31.913479, 47.983692>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085674, 32.158566, 47.681896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322491, 0.683090, 0.655277,
		0.916880, 0.397453, 0.036915,
		-0.235225, 0.612715, -0.754486,
		33.015106, 32.342381, 47.455551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529938, 32.669048, 48.029865>,  <33.179764, 31.913479, 47.983692>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529938, 32.669048, 48.029865> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195240, 32.691452, 47.811977>,  <32.994423, 32.704895, 47.681244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.195240, 32.691452, 47.811977>,  <33.529938, 32.669048, 48.029865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.195240, 32.691452, 47.811977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265513, 0.828504, 0.493035,
		0.478918, 0.557176, -0.678375,
		-0.836744, 0.056006, -0.544723,
		32.944218, 32.708252, 47.648560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468689, 33.362663, 48.015434>,  <33.529938, 32.669048, 48.029865>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468689, 33.362663, 48.015434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102097, 33.243610, 47.908493>,  <32.882141, 33.172176, 47.844330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.102097, 33.243610, 47.908493>,  <33.468689, 33.362663, 48.015434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.102097, 33.243610, 47.908493> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399989, 0.695962, 0.596360,
		0.008570, 0.653490, -0.756886,
		-0.916480, -0.297636, -0.267353,
		32.827152, 33.154320, 47.828285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245403, 33.946842, 47.758778>,  <33.468689, 33.362663, 48.015434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245403, 33.946842, 47.758778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.914043, 33.731827, 47.821770>,  <32.715225, 33.602818, 47.859566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.914043, 33.731827, 47.821770>,  <33.245403, 33.946842, 47.758778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.914043, 33.731827, 47.821770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439515, 0.798087, 0.412170,
		-0.347242, 0.272227, -0.897394,
		-0.828402, -0.537541, 0.157482,
		32.665524, 33.570564, 47.869015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.574360, 34.306549, 47.447220>,  <33.245403, 33.946842, 47.758778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.574360, 34.306549, 47.447220> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465340, 34.045582, 47.730083>,  <32.399929, 33.889000, 47.899799>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.465340, 34.045582, 47.730083>,  <32.574360, 34.306549, 47.447220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.465340, 34.045582, 47.730083> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560434, 0.705071, 0.434498,
		-0.782069, -0.277892, -0.557803,
		-0.272547, -0.652419, 0.707154,
		32.383575, 33.849857, 47.942230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.983223, 34.566662, 47.572094>,  <32.574360, 34.306549, 47.447220>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.983223, 34.566662, 47.572094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053276, 34.321377, 47.880196>,  <32.095310, 34.174206, 48.065056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.053276, 34.321377, 47.880196>,  <31.983223, 34.566662, 47.572094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053276, 34.321377, 47.880196> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555555, 0.584345, 0.591523,
		-0.812827, -0.531516, -0.238335,
		0.175134, -0.613214, 0.770258,
		32.105816, 34.137413, 48.111275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.319330, 34.272007, 47.668003>,  <31.983223, 34.566662, 47.572094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.319330, 34.272007, 47.668003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482557, 34.222980, 48.029877>,  <31.580494, 34.193565, 48.247002>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.482557, 34.222980, 48.029877>,  <31.319330, 34.272007, 47.668003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.482557, 34.222980, 48.029877> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537294, 0.768919, 0.346524,
		-0.738103, -0.627488, 0.247916,
		0.408067, -0.122567, 0.904687,
		31.604977, 34.186211, 48.301281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.810150, 34.130375, 48.160290>,  <31.319330, 34.272007, 47.668003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.810150, 34.130375, 48.160290> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.114023, 34.266655, 48.381851>,  <31.296347, 34.348423, 48.514786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.114023, 34.266655, 48.381851>,  <30.810150, 34.130375, 48.160290>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.114023, 34.266655, 48.381851> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589906, 0.719500, 0.366512,
		-0.273661, -0.605182, 0.747572,
		0.759685, 0.340697, 0.553900,
		31.341928, 34.368866, 48.548019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562395, 34.451580, 48.671284>,  <30.810150, 34.130375, 48.160290>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562395, 34.451580, 48.671284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931078, 34.594902, 48.730713>,  <31.152287, 34.680897, 48.766369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.931078, 34.594902, 48.730713>,  <30.562395, 34.451580, 48.671284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.931078, 34.594902, 48.730713> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387801, 0.843043, 0.372679,
		0.008282, -0.401116, 0.915990,
		0.921706, 0.358309, 0.148571,
		31.207590, 34.702396, 48.775284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514490, 34.672882, 49.363419>,  <30.562395, 34.451580, 48.671284>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514490, 34.672882, 49.363419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.800127, 34.873775, 49.168346>,  <30.971508, 34.994312, 49.051304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.800127, 34.873775, 49.168346>,  <30.514490, 34.672882, 49.363419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800127, 34.873775, 49.168346> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170241, 0.800309, 0.574912,
		0.679037, -0.327515, 0.656994,
		0.714091, 0.502234, -0.487683,
		31.014355, 35.024445, 49.022041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827881, 35.041950, 49.875908>,  <30.514490, 34.672882, 49.363419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827881, 35.041950, 49.875908> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947643, 35.251446, 49.556896>,  <31.019501, 35.377144, 49.365490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.947643, 35.251446, 49.556896>,  <30.827881, 35.041950, 49.875908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.947643, 35.251446, 49.556896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020661, 0.839238, 0.543372,
		0.953903, -0.146211, 0.262092,
		0.299405, 0.523739, -0.797531,
		31.037464, 35.408566, 49.317638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247368, 35.632210, 50.216137>,  <30.827881, 35.041950, 49.875908>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247368, 35.632210, 50.216137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181581, 35.710205, 49.829369>,  <31.142109, 35.757004, 49.597309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.181581, 35.710205, 49.829369>,  <31.247368, 35.632210, 50.216137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.181581, 35.710205, 49.829369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288045, 0.928043, 0.236148,
		0.943388, 0.317354, -0.096465,
		-0.164466, 0.194993, -0.966917,
		31.132242, 35.768703, 49.539295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.499895, 36.280502, 50.164753>,  <31.247368, 35.632210, 50.216137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.499895, 36.280502, 50.164753> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256773, 36.255260, 49.848125>,  <31.110899, 36.240116, 49.658150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.256773, 36.255260, 49.848125>,  <31.499895, 36.280502, 50.164753>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.256773, 36.255260, 49.848125> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302450, 0.940097, 0.157294,
		0.734230, 0.335016, -0.590483,
		-0.607807, -0.063102, -0.791573,
		31.074430, 36.236328, 49.610653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.471462, 36.917988, 49.695759>,  <31.499895, 36.280502, 50.164753>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.471462, 36.917988, 49.695759> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127058, 36.716228, 49.669704>,  <30.920416, 36.595173, 49.654072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.127058, 36.716228, 49.669704>,  <31.471462, 36.917988, 49.695759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.127058, 36.716228, 49.669704> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504116, 0.829458, 0.240555,
		-0.067306, 0.239958, -0.968447,
		-0.861009, -0.504401, -0.065139,
		30.868755, 36.564907, 49.650162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978411, 37.377411, 49.346970>,  <31.471462, 36.917988, 49.695759>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978411, 37.377411, 49.346970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769728, 37.104233, 49.551479>,  <30.644518, 36.940327, 49.674187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.769728, 37.104233, 49.551479>,  <30.978411, 37.377411, 49.346970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.769728, 37.104233, 49.551479> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644949, 0.708026, 0.287646,
		-0.558445, -0.179681, -0.809848,
		-0.521709, -0.682945, 0.511278,
		30.613214, 36.899349, 49.704865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.212713, 38.061977, 49.029091>,  <30.978411, 37.377411, 49.346970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.212713, 38.061977, 49.029091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500198, 38.115456, 49.302025>,  <31.672689, 38.147541, 49.465786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.500198, 38.115456, 49.302025>,  <31.212713, 38.061977, 49.029091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.500198, 38.115456, 49.302025> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673816, -0.376033, -0.636059,
		0.171542, 0.916910, -0.360346,
		0.718711, 0.133696, 0.682334,
		31.715813, 38.155563, 49.506725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.778139, 38.452774, 48.631348>,  <31.212713, 38.061977, 49.029091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.778139, 38.452774, 48.631348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966127, 38.288624, 48.943943>,  <32.078922, 38.190132, 49.131500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.966127, 38.288624, 48.943943>,  <31.778139, 38.452774, 48.631348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.966127, 38.288624, 48.943943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782603, -0.215749, -0.583939,
		0.408239, 0.886027, 0.219766,
		0.469972, -0.410376, 0.781484,
		32.107121, 38.165512, 49.178387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.498726, 38.648937, 48.640163>,  <31.778139, 38.452774, 48.631348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.498726, 38.648937, 48.640163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490475, 38.319370, 48.866699>,  <32.485523, 38.121632, 49.002621>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.490475, 38.319370, 48.866699>,  <32.498726, 38.648937, 48.640163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.490475, 38.319370, 48.866699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919988, -0.237406, -0.311865,
		0.391402, 0.514590, 0.762890,
		-0.020633, -0.823915, 0.566338,
		32.484283, 38.072197, 49.036602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.314762, 38.528252, 48.689564>,  <32.498726, 38.648937, 48.640163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.314762, 38.528252, 48.689564> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146275, 38.196125, 48.835526>,  <33.045181, 37.996849, 48.923103>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.146275, 38.196125, 48.835526>,  <33.314762, 38.528252, 48.689564>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146275, 38.196125, 48.835526> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.838378, -0.509942, -0.192568,
		0.345970, 0.224811, 0.910915,
		-0.421222, -0.830313, 0.364901,
		33.019909, 37.947033, 48.944996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.728420, 38.172932, 49.233566>,  <33.314762, 38.528252, 48.689564>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.728420, 38.172932, 49.233566> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490234, 37.901947, 49.060841>,  <33.347321, 37.739357, 48.957203>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.490234, 37.901947, 49.060841>,  <33.728420, 38.172932, 49.233566>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490234, 37.901947, 49.060841> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802760, -0.522857, -0.286701,
		-0.031550, -0.517366, 0.855182,
		-0.595467, -0.677460, -0.431817,
		33.311596, 37.698708, 48.931293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.818607, 37.502502, 49.589321>,  <33.728420, 38.172932, 49.233566>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.818607, 37.502502, 49.589321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703468, 37.440407, 49.211319>,  <33.634384, 37.403149, 48.984516>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.703468, 37.440407, 49.211319>,  <33.818607, 37.502502, 49.589321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703468, 37.440407, 49.211319> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725660, -0.679293, -0.109445,
		-0.624947, -0.717259, 0.308187,
		-0.287850, -0.155242, -0.945009,
		33.617115, 37.393833, 48.927814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937420, 36.806644, 49.494907>,  <33.818607, 37.502502, 49.589321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937420, 36.806644, 49.494907> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864918, 36.880920, 49.108608>,  <33.821415, 36.925488, 48.876831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.864918, 36.880920, 49.108608>,  <33.937420, 36.806644, 49.494907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864918, 36.880920, 49.108608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768144, -0.586465, -0.256933,
		-0.614085, -0.788403, -0.036334,
		-0.181258, 0.185688, -0.965746,
		33.810539, 36.936626, 48.818886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.213482, 36.220112, 49.189415>,  <33.937420, 36.806644, 49.494907>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.213482, 36.220112, 49.189415> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163120, 36.486431, 48.895241>,  <34.132904, 36.646221, 48.718735>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.163120, 36.486431, 48.895241>,  <34.213482, 36.220112, 49.189415>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163120, 36.486431, 48.895241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730761, -0.439122, -0.522647,
		-0.670922, -0.603231, -0.431250,
		-0.125905, 0.665796, -0.735434,
		34.125347, 36.686169, 48.674610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.137226, 35.863773, 48.536358>,  <34.213482, 36.220112, 49.189415>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.137226, 35.863773, 48.536358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296501, 36.225147, 48.472790>,  <34.392067, 36.441971, 48.434650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.296501, 36.225147, 48.472790>,  <34.137226, 35.863773, 48.536358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.296501, 36.225147, 48.472790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770646, -0.423433, -0.476245,
		-0.497548, 0.067162, -0.864833,
		0.398184, 0.903435, -0.158920,
		34.415955, 36.496178, 48.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.379333, 35.746338, 47.949471>,  <34.137226, 35.863773, 48.536358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.379333, 35.746338, 47.949471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577595, 36.079601, 48.047596>,  <34.696552, 36.279560, 48.106472>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.577595, 36.079601, 48.047596>,  <34.379333, 35.746338, 47.949471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577595, 36.079601, 48.047596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827150, -0.366679, -0.425875,
		-0.264869, 0.413999, -0.870890,
		0.495649, 0.833157, 0.245317,
		34.726288, 36.329548, 48.121193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902782, 35.886127, 47.382847>,  <34.379333, 35.746338, 47.949471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902782, 35.886127, 47.382847> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012756, 36.065590, 47.722992>,  <35.078739, 36.173267, 47.927078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.012756, 36.065590, 47.722992>,  <34.902782, 35.886127, 47.382847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.012756, 36.065590, 47.722992> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906878, -0.414779, -0.074362,
		0.319351, 0.791622, -0.520913,
		0.274931, 0.448657, 0.850365,
		35.095234, 36.200188, 47.978100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.532005, 36.263012, 47.200523>,  <34.902782, 35.886127, 47.382847>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.532005, 36.263012, 47.200523> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509426, 36.115910, 47.571808>,  <35.495876, 36.027649, 47.794579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.509426, 36.115910, 47.571808>,  <35.532005, 36.263012, 47.200523>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.509426, 36.115910, 47.571808> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730127, -0.649314, -0.212853,
		0.680976, 0.665693, 0.305163,
		-0.056452, -0.367755, 0.928208,
		35.492489, 36.005585, 47.850269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.256649, 40.159954, 54.104416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025511, 40.447674, 53.950172>,  <29.886827, 40.620308, 53.857624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.025511, 40.447674, 53.950172>,  <30.256649, 40.159954, 54.104416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.025511, 40.447674, 53.950172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092839, -0.411480, -0.906678,
		-0.810848, -0.559720, 0.170993,
		-0.577845, 0.719304, -0.385612,
		29.852158, 40.663464, 53.834488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618010, 39.835373, 53.651146>,  <30.256649, 40.159954, 54.104416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618010, 39.835373, 53.651146> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692799, 40.209385, 53.530643>,  <29.737673, 40.433792, 53.458340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.692799, 40.209385, 53.530643>,  <29.618010, 39.835373, 53.651146>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.692799, 40.209385, 53.530643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031832, -0.312274, -0.949459,
		-0.981849, 0.167933, -0.088151,
		0.186972, 0.935031, -0.301260,
		29.748890, 40.489895, 53.440266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.240677, 39.925411, 53.017010>,  <29.618010, 39.835373, 53.651146>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.240677, 39.925411, 53.017010> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525860, 40.205189, 53.036896>,  <29.696970, 40.373055, 53.048828>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.525860, 40.205189, 53.036896>,  <29.240677, 39.925411, 53.017010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.525860, 40.205189, 53.036896> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274677, -0.213341, -0.937570,
		-0.645172, 0.682102, -0.344224,
		0.712955, 0.699445, 0.049716,
		29.739746, 40.415024, 53.051811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.232109, 40.233154, 52.329594>,  <29.240677, 39.925411, 53.017010>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.232109, 40.233154, 52.329594> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576414, 40.383854, 52.466499>,  <29.782997, 40.474274, 52.548645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.576414, 40.383854, 52.466499>,  <29.232109, 40.233154, 52.329594>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576414, 40.383854, 52.466499> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431286, -0.182705, -0.883522,
		-0.270333, 0.908118, -0.319752,
		0.860763, 0.376750, 0.342267,
		29.834642, 40.496880, 52.569180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465120, 40.682667, 51.783722>,  <29.232109, 40.233154, 52.329594>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465120, 40.682667, 51.783722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777628, 40.588535, 52.014977>,  <29.965134, 40.532055, 52.153728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.777628, 40.588535, 52.014977>,  <29.465120, 40.682667, 51.783722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.777628, 40.588535, 52.014977> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568228, -0.115185, -0.814770,
		0.258331, 0.965066, 0.043730,
		0.781270, -0.235329, 0.578133,
		30.012009, 40.517937, 52.188416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.088722, 41.081310, 51.470993>,  <29.465120, 40.682667, 51.783722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.088722, 41.081310, 51.470993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.193542, 40.776230, 51.707508>,  <30.256435, 40.593182, 51.849415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.193542, 40.776230, 51.707508>,  <30.088722, 41.081310, 51.470993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.193542, 40.776230, 51.707508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696283, -0.274815, -0.663074,
		0.668221, 0.585461, 0.459039,
		0.262052, -0.762701, 0.591284,
		30.272158, 40.547421, 51.884892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773117, 40.995773, 51.225105>,  <30.088722, 41.081310, 51.470993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773117, 40.995773, 51.225105> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706032, 40.666389, 51.441914>,  <30.665781, 40.468758, 51.571999>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.706032, 40.666389, 51.441914>,  <30.773117, 40.995773, 51.225105>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.706032, 40.666389, 51.441914> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594408, -0.523093, -0.610780,
		0.786480, 0.219745, 0.577201,
		-0.167714, -0.823460, 0.542021,
		30.655718, 40.419353, 51.604519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415344, 40.678581, 51.301315>,  <30.773117, 40.995773, 51.225105>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415344, 40.678581, 51.301315> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130678, 40.398556, 51.324799>,  <30.959879, 40.230541, 51.338886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.130678, 40.398556, 51.324799>,  <31.415344, 40.678581, 51.301315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130678, 40.398556, 51.324799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543577, -0.601663, -0.585256,
		0.445037, -0.384595, 0.808720,
		-0.711664, -0.700063, 0.058705,
		30.917179, 40.188538, 51.342411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747934, 40.090488, 51.633244>,  <31.415344, 40.678581, 51.301315>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747934, 40.090488, 51.633244> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429821, 39.957375, 51.430550>,  <31.238953, 39.877506, 51.308933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.429821, 39.957375, 51.430550>,  <31.747934, 40.090488, 51.633244>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.429821, 39.957375, 51.430550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567298, -0.703264, -0.428478,
		-0.213774, -0.628229, 0.748083,
		-0.795283, -0.332788, -0.506732,
		31.191236, 39.857536, 51.278530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.739195, 39.410915, 51.689011>,  <31.747934, 40.090488, 51.633244>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.739195, 39.410915, 51.689011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498684, 39.455402, 51.372505>,  <31.354378, 39.482094, 51.182602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.498684, 39.455402, 51.372505>,  <31.739195, 39.410915, 51.689011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.498684, 39.455402, 51.372505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313444, -0.878063, -0.361606,
		-0.734994, -0.465442, 0.493100,
		-0.601279, 0.111220, -0.791261,
		31.318300, 39.488770, 51.135128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.593149, 38.743126, 51.424980>,  <31.739195, 39.410915, 51.689011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.593149, 38.743126, 51.424980> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477850, 38.953762, 51.105076>,  <31.408670, 39.080143, 50.913136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.477850, 38.953762, 51.105076>,  <31.593149, 38.743126, 51.424980>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.477850, 38.953762, 51.105076> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365737, -0.711341, -0.600192,
		-0.884957, -0.465507, 0.012449,
		-0.288250, 0.526591, -0.799759,
		31.391375, 39.111740, 50.865147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.032555, 38.403809, 51.053070>,  <31.593149, 38.743126, 51.424980>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.032555, 38.403809, 51.053070> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207413, 38.654694, 50.795231>,  <31.312328, 38.805225, 50.640526>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.207413, 38.654694, 50.795231>,  <31.032555, 38.403809, 51.053070>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.207413, 38.654694, 50.795231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259248, -0.774157, -0.577470,
		-0.861217, 0.085328, -0.501023,
		0.437145, 0.627216, -0.644596,
		31.338556, 38.842857, 50.601852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845770, 38.072094, 50.444839>,  <31.032555, 38.403809, 51.053070>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845770, 38.072094, 50.444839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148886, 38.319130, 50.360615>,  <31.330755, 38.467350, 50.310081>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.148886, 38.319130, 50.360615>,  <30.845770, 38.072094, 50.444839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.148886, 38.319130, 50.360615> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377940, -0.678501, -0.629919,
		-0.531897, 0.397768, -0.747574,
		0.757791, 0.617590, -0.210560,
		31.376223, 38.504406, 50.297447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.904306, 38.027382, 49.736145>,  <30.845770, 38.072094, 50.444839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.904306, 38.027382, 49.736145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251362, 38.201885, 49.831547>,  <31.459595, 38.306587, 49.888786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.251362, 38.201885, 49.831547>,  <30.904306, 38.027382, 49.736145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.251362, 38.201885, 49.831547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472535, -0.574333, -0.668470,
		-0.154642, 0.692692, -0.704460,
		0.867638, 0.436256, 0.238505,
		31.511654, 38.332764, 49.903099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.297400, 37.659645, 49.281368>,  <30.904306, 38.027382, 49.736145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.297400, 37.659645, 49.281368> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284370, 37.390652, 49.577126>,  <30.276554, 37.229256, 49.754581>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.284370, 37.390652, 49.577126>,  <30.297400, 37.659645, 49.281368>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.284370, 37.390652, 49.577126> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596705, 0.606559, 0.525385,
		-0.801799, -0.424087, -0.421032,
		-0.032572, -0.672485, 0.739394,
		30.274599, 37.188908, 49.798943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.663076, 37.648151, 49.591881>,  <30.297400, 37.659645, 49.281368>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.663076, 37.648151, 49.591881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829174, 37.451107, 49.897797>,  <29.928833, 37.332882, 50.081348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829174, 37.451107, 49.897797>,  <29.663076, 37.648151, 49.591881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829174, 37.451107, 49.897797> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679022, 0.391634, 0.620928,
		-0.605394, -0.777148, -0.171869,
		0.415243, -0.492609, 0.764794,
		29.953747, 37.303326, 50.127235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.083342, 37.479267, 49.994656>,  <29.663076, 37.648151, 49.591881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.083342, 37.479267, 49.994656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400841, 37.444450, 50.235451>,  <29.591341, 37.423561, 50.379929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.400841, 37.444450, 50.235451>,  <29.083342, 37.479267, 49.994656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.400841, 37.444450, 50.235451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562664, 0.270838, 0.781061,
		-0.231025, -0.958682, 0.166003,
		0.793748, -0.087040, 0.601986,
		29.638966, 37.418339, 50.416046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.898912, 37.003258, 50.537132>,  <29.083342, 37.479267, 49.994656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.898912, 37.003258, 50.537132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184990, 37.254620, 50.659508>,  <29.356636, 37.405437, 50.732933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.184990, 37.254620, 50.659508>,  <28.898912, 37.003258, 50.537132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.184990, 37.254620, 50.659508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465112, 0.101193, 0.879449,
		0.521696, -0.771272, 0.364654,
		0.715195, 0.628410, 0.305936,
		29.399549, 37.443142, 50.751289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.928621, 36.869598, 51.264168>,  <28.898912, 37.003258, 50.537132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.928621, 36.869598, 51.264168> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107056, 37.224712, 51.218822>,  <29.214117, 37.437778, 51.191616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107056, 37.224712, 51.218822>,  <28.928621, 36.869598, 51.264168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107056, 37.224712, 51.218822> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373136, 0.299612, 0.878067,
		0.813495, -0.349396, 0.464917,
		0.446088, 0.887780, -0.113360,
		29.240883, 37.491047, 51.184814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.174131, 36.999538, 51.883636>,  <28.928621, 36.869598, 51.264168>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.174131, 36.999538, 51.883636> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159256, 37.358269, 51.707310>,  <29.150331, 37.573505, 51.601513>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159256, 37.358269, 51.707310>,  <29.174131, 36.999538, 51.883636>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159256, 37.358269, 51.707310> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461918, 0.375743, 0.803398,
		0.886143, 0.233499, 0.400286,
		-0.037188, 0.896825, -0.440819,
		29.148100, 37.627316, 51.575066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.300711, 37.451523, 52.435726>,  <29.174131, 36.999538, 51.883636>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.300711, 37.451523, 52.435726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147310, 37.695793, 52.158600>,  <29.055269, 37.842358, 51.992325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.147310, 37.695793, 52.158600>,  <29.300711, 37.451523, 52.435726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.147310, 37.695793, 52.158600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394061, 0.570260, 0.720777,
		0.835250, 0.549432, 0.021949,
		-0.383501, 0.610678, -0.692820,
		29.032259, 37.878998, 51.950752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494362, 38.163857, 52.603294>,  <29.300711, 37.451523, 52.435726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494362, 38.163857, 52.603294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175228, 38.185192, 52.363091>,  <28.983747, 38.197994, 52.218967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.175228, 38.185192, 52.363091>,  <29.494362, 38.163857, 52.603294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.175228, 38.185192, 52.363091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447250, 0.615559, 0.648887,
		0.404263, 0.786284, -0.467258,
		-0.797834, 0.053339, -0.600513,
		28.935879, 38.201195, 52.182938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298353, 38.859901, 52.641644>,  <29.494362, 38.163857, 52.603294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298353, 38.859901, 52.641644> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975981, 38.658737, 52.516705>,  <28.782558, 38.538040, 52.441742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.975981, 38.658737, 52.516705>,  <29.298353, 38.859901, 52.641644>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.975981, 38.658737, 52.516705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568922, 0.512015, 0.643559,
		-0.163724, 0.696365, -0.698764,
		-0.805929, -0.502908, -0.312348,
		28.734201, 38.507866, 52.423000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.910814, 39.346489, 52.648041>,  <29.298353, 38.859901, 52.641644>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.910814, 39.346489, 52.648041> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657585, 39.037231, 52.632694>,  <28.505648, 38.851677, 52.623486>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.657585, 39.037231, 52.632694>,  <28.910814, 39.346489, 52.648041>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.657585, 39.037231, 52.632694> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662879, 0.515861, 0.542659,
		-0.399759, 0.368976, -0.839077,
		-0.633075, -0.773139, -0.038366,
		28.467663, 38.805290, 52.621185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.267595, 39.661880, 52.626183>,  <28.910814, 39.346489, 52.648041>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.267595, 39.661880, 52.626183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181360, 39.296215, 52.763493>,  <28.129620, 39.076817, 52.845879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.181360, 39.296215, 52.763493>,  <28.267595, 39.661880, 52.626183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181360, 39.296215, 52.763493> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542987, 0.404406, 0.735949,
		-0.811595, -0.027731, -0.583561,
		-0.215587, -0.914159, 0.343272,
		28.116684, 39.021969, 52.866474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.548515, 39.682362, 52.777306>,  <28.267595, 39.661880, 52.626183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.548515, 39.682362, 52.777306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688753, 39.366703, 52.979031>,  <27.772896, 39.177307, 53.100067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.688753, 39.366703, 52.979031>,  <27.548515, 39.682362, 52.777306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.688753, 39.366703, 52.979031> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648325, 0.184089, 0.738773,
		-0.675838, -0.585970, -0.447082,
		0.350596, -0.789145, 0.504313,
		27.793932, 39.129959, 53.130325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.982847, 39.274361, 52.988426>,  <27.548515, 39.682362, 52.777306>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.982847, 39.274361, 52.988426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288439, 39.156506, 53.218044>,  <27.471794, 39.085793, 53.355816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.288439, 39.156506, 53.218044>,  <26.982847, 39.274361, 52.988426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.288439, 39.156506, 53.218044> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604696, -0.016536, 0.796285,
		-0.225124, -0.955466, -0.190799,
		0.763978, -0.294638, 0.574044,
		27.517632, 39.068115, 53.390259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.702528, 38.795593, 53.471428>,  <26.982847, 39.274361, 52.988426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.702528, 38.795593, 53.471428> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041922, 38.921280, 53.641766>,  <27.245558, 38.996693, 53.743969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.041922, 38.921280, 53.641766>,  <26.702528, 38.795593, 53.471428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.041922, 38.921280, 53.641766> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451671, 0.010591, 0.892122,
		0.275807, -0.949293, 0.150908,
		0.848483, 0.314215, 0.425847,
		27.296467, 39.015545, 53.769520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<33.742199, 39.752003, 56.698326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405411, 39.770531, 56.483311>,  <33.203339, 39.781647, 56.354301>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.405411, 39.770531, 56.483311>,  <33.742199, 39.752003, 56.698326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.405411, 39.770531, 56.483311> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395224, -0.625260, -0.672939,
		-0.367271, -0.779040, 0.508142,
		-0.841968, 0.046321, -0.537536,
		33.152821, 39.784428, 56.322048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.532417, 39.077271, 56.621117>,  <33.742199, 39.752003, 56.698326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.532417, 39.077271, 56.621117> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393417, 39.284554, 56.308525>,  <33.310017, 39.408924, 56.120972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393417, 39.284554, 56.308525>,  <33.532417, 39.077271, 56.621117>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393417, 39.284554, 56.308525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395741, -0.674505, -0.623244,
		-0.850078, -0.525841, 0.029317,
		-0.347502, 0.518203, -0.781478,
		33.289165, 39.440014, 56.074081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.110062, 38.618217, 56.352589>,  <33.532417, 39.077271, 56.621117>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.110062, 38.618217, 56.352589> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206814, 38.871651, 56.058632>,  <33.264866, 39.023712, 55.882259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.206814, 38.871651, 56.058632>,  <33.110062, 38.618217, 56.352589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206814, 38.871651, 56.058632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386176, -0.757670, -0.526121,
		-0.890148, -0.156541, -0.427938,
		0.241876, 0.633586, -0.734891,
		33.279377, 39.061726, 55.838165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.988186, 38.256916, 55.715034>,  <33.110062, 38.618217, 56.352589>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.988186, 38.256916, 55.715034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234432, 38.552124, 55.604511>,  <33.382179, 38.729248, 55.538197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.234432, 38.552124, 55.604511>,  <32.988186, 38.256916, 55.715034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234432, 38.552124, 55.604511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544745, -0.651897, -0.527526,
		-0.569446, 0.174239, -0.803351,
		0.615617, 0.738019, -0.276304,
		33.419117, 38.773529, 55.521622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004707, 38.299206, 55.003349>,  <32.988186, 38.256916, 55.715034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004707, 38.299206, 55.003349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349598, 38.464279, 55.120831>,  <33.556530, 38.563324, 55.191319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.349598, 38.464279, 55.120831>,  <33.004707, 38.299206, 55.003349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349598, 38.464279, 55.120831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501497, -0.614000, -0.609512,
		-0.071202, 0.672827, -0.736366,
		0.862224, 0.412684, 0.293702,
		33.608265, 38.588085, 55.208942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.449902, 38.400318, 54.348419>,  <33.004707, 38.299206, 55.003349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.449902, 38.400318, 54.348419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715073, 38.424675, 54.646900>,  <33.874176, 38.439289, 54.825989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715073, 38.424675, 54.646900>,  <33.449902, 38.400318, 54.348419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715073, 38.424675, 54.646900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588680, -0.658211, -0.469269,
		0.462587, 0.750367, -0.472190,
		0.662925, 0.060891, 0.746206,
		33.913952, 38.442944, 54.870762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.150162, 38.590023, 54.031406>,  <33.449902, 38.400318, 54.348419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.150162, 38.590023, 54.031406> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251022, 38.442322, 54.389191>,  <34.311539, 38.353699, 54.603863>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.251022, 38.442322, 54.389191>,  <34.150162, 38.590023, 54.031406>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251022, 38.442322, 54.389191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739488, -0.522667, -0.424236,
		0.624160, 0.768419, 0.141268,
		0.252155, -0.369257, 0.894465,
		34.326668, 38.331543, 54.657532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.847427, 38.547436, 53.907925>,  <34.150162, 38.590023, 54.031406>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.847427, 38.547436, 53.907925> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779701, 38.317940, 54.228462>,  <34.739063, 38.180241, 54.420784>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.779701, 38.317940, 54.228462>,  <34.847427, 38.547436, 53.907925>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.779701, 38.317940, 54.228462> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545079, -0.731925, -0.408870,
		0.821109, 0.367566, 0.436664,
		-0.169319, -0.573743, 0.801343,
		34.728905, 38.145817, 54.468864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565460, 38.289745, 54.200085>,  <34.847427, 38.547436, 53.907925>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565460, 38.289745, 54.200085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266983, 38.053055, 54.322102>,  <35.087894, 37.911041, 54.395313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.266983, 38.053055, 54.322102>,  <35.565460, 38.289745, 54.200085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.266983, 38.053055, 54.322102> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460685, -0.789752, -0.405044,
		0.480584, -0.161713, 0.861909,
		-0.746196, -0.591727, 0.305044,
		35.043125, 37.875538, 54.413616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.870415, 37.711830, 54.504082>,  <35.565460, 38.289745, 54.200085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.870415, 37.711830, 54.504082> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497513, 37.590431, 54.425301>,  <35.273773, 37.517593, 54.378033>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.497513, 37.590431, 54.425301>,  <35.870415, 37.711830, 54.504082>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.497513, 37.590431, 54.425301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359783, -0.835080, -0.416171,
		-0.038170, -0.458839, 0.887699,
		-0.932255, -0.303494, -0.196957,
		35.217834, 37.499382, 54.366215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.901649, 37.056515, 54.623985>,  <35.870415, 37.711830, 54.504082>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.901649, 37.056515, 54.623985> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566570, 37.062908, 54.405624>,  <35.365524, 37.066746, 54.274609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566570, 37.062908, 54.405624>,  <35.901649, 37.056515, 54.623985>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566570, 37.062908, 54.405624> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248546, -0.878899, -0.407137,
		-0.486302, -0.476739, 0.732277,
		-0.837696, 0.015987, -0.545902,
		35.315262, 37.067703, 54.241852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657318, 36.457043, 54.734657>,  <35.901649, 37.056515, 54.623985>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657318, 36.457043, 54.734657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463322, 36.575790, 54.405621>,  <35.346924, 36.647038, 54.208199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.463322, 36.575790, 54.405621>,  <35.657318, 36.457043, 54.734657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.463322, 36.575790, 54.405621> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251826, -0.853369, -0.456449,
		-0.837475, -0.428525, 0.339121,
		-0.484995, 0.296865, -0.822588,
		35.317822, 36.664848, 54.158844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240959, 35.886768, 54.511520>,  <35.657318, 36.457043, 54.734657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240959, 35.886768, 54.511520> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289204, 36.127544, 54.195766>,  <35.318150, 36.272011, 54.006313>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.289204, 36.127544, 54.195766>,  <35.240959, 35.886768, 54.511520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289204, 36.127544, 54.195766> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364075, -0.766598, -0.528940,
		-0.923528, -0.223600, -0.311608,
		0.120607, 0.601939, -0.789381,
		35.325386, 36.308125, 53.958954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.911339, 35.574532, 53.880390>,  <35.240959, 35.886768, 54.511520>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.911339, 35.574532, 53.880390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176201, 35.843826, 53.748749>,  <35.335117, 36.005402, 53.669765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.176201, 35.843826, 53.748749>,  <34.911339, 35.574532, 53.880390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176201, 35.843826, 53.748749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323334, -0.652864, -0.684999,
		-0.676026, 0.347162, -0.649974,
		0.662151, 0.673236, -0.329104,
		35.374847, 36.045795, 53.650017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284649, 35.406197, 53.470051>,  <34.911339, 35.574532, 53.880390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284649, 35.406197, 53.470051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317036, 35.043900, 53.636456>,  <34.336468, 34.826519, 53.736298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.317036, 35.043900, 53.636456>,  <34.284649, 35.406197, 53.470051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.317036, 35.043900, 53.636456> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562880, 0.302907, 0.769034,
		-0.822564, -0.296429, -0.485302,
		0.080962, -0.905747, 0.416014,
		34.341324, 34.772175, 53.761261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.650051, 35.154377, 53.571728>,  <34.284649, 35.406197, 53.470051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.650051, 35.154377, 53.571728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848679, 34.915359, 53.823555>,  <33.967857, 34.771950, 53.974651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.848679, 34.915359, 53.823555>,  <33.650051, 35.154377, 53.571728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.848679, 34.915359, 53.823555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604992, 0.281836, 0.744683,
		-0.622415, -0.750675, -0.221556,
		0.496573, -0.597541, 0.629571,
		33.997650, 34.736095, 54.012428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102123, 34.757996, 54.005402>,  <33.650051, 35.154377, 53.571728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102123, 34.757996, 54.005402> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451492, 34.777775, 54.199181>,  <33.661114, 34.789642, 54.315449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.451492, 34.777775, 54.199181>,  <33.102123, 34.757996, 54.005402>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451492, 34.777775, 54.199181> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474147, 0.313084, 0.822899,
		-0.110984, -0.948438, 0.296898,
		0.873423, 0.049445, 0.484446,
		33.713520, 34.792610, 54.344513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.003460, 34.485130, 54.652634>,  <33.102123, 34.757996, 54.005402>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.003460, 34.485130, 54.652634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310051, 34.735729, 54.709209>,  <33.494007, 34.886089, 54.743156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.310051, 34.735729, 54.709209>,  <33.003460, 34.485130, 54.652634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310051, 34.735729, 54.709209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459760, 0.381433, 0.801954,
		0.448479, -0.679707, 0.580401,
		0.766478, 0.626505, 0.141438,
		33.539993, 34.923679, 54.751640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.063923, 34.584473, 55.385818>,  <33.003460, 34.485130, 54.652634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.063923, 34.584473, 55.385818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269119, 34.896381, 55.242260>,  <33.392235, 35.083527, 55.156124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269119, 34.896381, 55.242260>,  <33.063923, 34.584473, 55.385818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269119, 34.896381, 55.242260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506404, 0.612507, 0.606952,
		0.693109, -0.129611, 0.709085,
		0.512987, 0.779767, -0.358898,
		33.423016, 35.130310, 55.134590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386971, 34.898453, 56.060818>,  <33.063923, 34.584473, 55.385818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386971, 34.898453, 56.060818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393940, 35.156738, 55.755466>,  <33.398121, 35.311710, 55.572254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.393940, 35.156738, 55.755466>,  <33.386971, 34.898453, 56.060818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393940, 35.156738, 55.755466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503048, 0.665488, 0.551424,
		0.864083, 0.374408, 0.336422,
		0.017428, 0.645712, -0.763382,
		33.399170, 35.350452, 55.526451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654427, 35.451454, 56.324955>,  <33.386971, 34.898453, 56.060818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654427, 35.451454, 56.324955> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477757, 35.604053, 56.000145>,  <33.371754, 35.695614, 55.805260>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.477757, 35.604053, 56.000145>,  <33.654427, 35.451454, 56.324955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.477757, 35.604053, 56.000145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509995, 0.637879, 0.577075,
		0.738127, 0.669006, -0.087170,
		-0.441671, 0.381499, -0.812026,
		33.345257, 35.718502, 55.756538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594021, 36.159832, 56.419727>,  <33.654427, 35.451454, 56.324955>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594021, 36.159832, 56.419727> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329033, 36.110554, 56.124172>,  <33.170040, 36.080986, 55.946838>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.329033, 36.110554, 56.124172>,  <33.594021, 36.159832, 56.419727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329033, 36.110554, 56.124172> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587760, 0.697009, 0.410750,
		0.464410, 0.706399, -0.534157,
		-0.662466, -0.123200, -0.738892,
		33.130295, 36.073593, 55.902504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452980, 36.763794, 56.157001>,  <33.594021, 36.159832, 56.419727>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452980, 36.763794, 56.157001> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125484, 36.563297, 56.044987>,  <32.928986, 36.443001, 55.977779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.125484, 36.563297, 56.044987>,  <33.452980, 36.763794, 56.157001>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125484, 36.563297, 56.044987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573975, 0.726999, 0.376863,
		0.014686, 0.469286, -0.882924,
		-0.818741, -0.501242, -0.280036,
		32.879864, 36.412926, 55.960976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.022583, 37.256989, 55.770329>,  <33.452980, 36.763794, 56.157001>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.022583, 37.256989, 55.770329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754894, 36.977219, 55.870686>,  <32.594280, 36.809357, 55.930901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.754894, 36.977219, 55.870686>,  <33.022583, 37.256989, 55.770329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.754894, 36.977219, 55.870686> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686560, 0.711169, 0.151240,
		-0.284208, -0.071039, -0.956127,
		-0.669225, -0.699422, 0.250892,
		32.554127, 36.767391, 55.945953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.321854, 37.322098, 55.420242>,  <33.022583, 37.256989, 55.770329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.321854, 37.322098, 55.420242> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231350, 37.119858, 55.753273>,  <32.177048, 36.998516, 55.953091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.231350, 37.119858, 55.753273>,  <32.321854, 37.322098, 55.420242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.231350, 37.119858, 55.753273> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749799, 0.636009, 0.182467,
		-0.621780, -0.582980, -0.522996,
		-0.226255, -0.505596, 0.832575,
		32.163475, 36.968178, 56.003044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.636530, 37.472198, 55.559681>,  <32.321854, 37.322098, 55.420242>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.636530, 37.472198, 55.559681> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713072, 37.293190, 55.909107>,  <31.758997, 37.185787, 56.118763>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.713072, 37.293190, 55.909107>,  <31.636530, 37.472198, 55.559681>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713072, 37.293190, 55.909107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693872, 0.567807, 0.442874,
		-0.694209, -0.690887, -0.201867,
		0.191355, -0.447517, 0.873563,
		31.770477, 37.158936, 56.171177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.953400, 37.172501, 55.852367>,  <31.636530, 37.472198, 55.559681>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.953400, 37.172501, 55.852367> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217073, 37.243675, 56.144619>,  <31.375278, 37.286381, 56.319969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.217073, 37.243675, 56.144619>,  <30.953400, 37.172501, 55.852367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.217073, 37.243675, 56.144619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692142, 0.523377, 0.497007,
		-0.293959, -0.833317, 0.468157,
		0.659187, 0.177932, 0.730625,
		31.414829, 37.297054, 56.363808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566177, 37.083954, 56.513210>,  <30.953400, 37.172501, 55.852367>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566177, 37.083954, 56.513210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880745, 37.311424, 56.609665>,  <31.069487, 37.447906, 56.667538>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.880745, 37.311424, 56.609665>,  <30.566177, 37.083954, 56.513210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.880745, 37.311424, 56.609665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593099, 0.586140, 0.551973,
		0.172554, -0.577101, 0.798235,
		0.786421, 0.568678, 0.241137,
		31.116671, 37.482029, 56.682007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.902422, 36.706005, 56.763493>,  <30.566177, 37.083954, 56.513210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.902422, 36.706005, 56.763493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606560, 36.767986, 56.501534>,  <29.429043, 36.805176, 56.344357>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.606560, 36.767986, 56.501534>,  <29.902422, 36.706005, 56.763493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.606560, 36.767986, 56.501534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337057, -0.756987, -0.559789,
		-0.582495, -0.634791, 0.507682,
		-0.739657, 0.154956, -0.654902,
		29.384663, 36.814472, 56.305061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539164, 36.030579, 56.573246>,  <29.902422, 36.706005, 56.763493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539164, 36.030579, 56.573246> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454744, 36.293537, 56.283890>,  <29.404093, 36.451313, 56.110275>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.454744, 36.293537, 56.283890>,  <29.539164, 36.030579, 56.573246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.454744, 36.293537, 56.283890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296713, -0.662052, -0.688220,
		-0.931354, -0.359887, -0.055332,
		-0.211049, 0.657394, -0.723388,
		29.391430, 36.490757, 56.066872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075750, 35.705406, 56.092518>,  <29.539164, 36.030579, 56.573246>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075750, 35.705406, 56.092518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267410, 36.006001, 55.911110>,  <29.382406, 36.186356, 55.802265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.267410, 36.006001, 55.911110>,  <29.075750, 35.705406, 56.092518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267410, 36.006001, 55.911110> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325984, -0.632099, -0.702983,
		-0.814953, 0.188994, -0.547843,
		0.479151, 0.751487, -0.453522,
		29.411156, 36.231445, 55.775055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.775898, 35.690166, 55.445698>,  <29.075750, 35.705406, 56.092518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.775898, 35.690166, 55.445698> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.137489, 35.859291, 55.420235>,  <29.354445, 35.960766, 55.404957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.137489, 35.859291, 55.420235>,  <28.775898, 35.690166, 55.445698>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.137489, 35.859291, 55.420235> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280609, -0.698994, -0.657774,
		-0.322611, 0.576751, -0.750520,
		0.903980, 0.422808, -0.063662,
		29.408684, 35.986134, 55.401134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934679, 35.747082, 54.665085>,  <28.775898, 35.690166, 55.445698>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934679, 35.747082, 54.665085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282240, 35.762890, 54.862446>,  <29.490776, 35.772373, 54.980862>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.282240, 35.762890, 54.862446>,  <28.934679, 35.747082, 54.665085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.282240, 35.762890, 54.862446> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378766, -0.694804, -0.611379,
		0.318657, 0.718113, -0.618685,
		0.868904, 0.039517, 0.493401,
		29.542912, 35.774746, 55.010468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439726, 35.833500, 54.138393>,  <28.934679, 35.747082, 54.665085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439726, 35.833500, 54.138393> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649757, 35.696274, 54.449932>,  <29.775776, 35.613937, 54.636856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.649757, 35.696274, 54.449932>,  <29.439726, 35.833500, 54.138393>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649757, 35.696274, 54.449932> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555072, -0.555667, -0.618975,
		0.645125, 0.757326, -0.101345,
		0.525079, -0.343063, 0.778845,
		29.807281, 35.593353, 54.683586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166977, 35.752945, 54.029633>,  <29.439726, 35.833500, 54.138393>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166977, 35.752945, 54.029633> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152817, 35.510429, 54.347416>,  <30.144321, 35.364922, 54.538086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.152817, 35.510429, 54.347416>,  <30.166977, 35.752945, 54.029633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.152817, 35.510429, 54.347416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575767, -0.662138, -0.479652,
		0.816847, 0.440442, 0.372520,
		-0.035401, -0.606287, 0.794457,
		30.142197, 35.328545, 54.585754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.812853, 35.508171, 53.996445>,  <30.166977, 35.752945, 54.029633>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.812853, 35.508171, 53.996445> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614693, 35.245556, 54.223965>,  <30.495796, 35.087986, 54.360477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.614693, 35.245556, 54.223965>,  <30.812853, 35.508171, 53.996445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.614693, 35.245556, 54.223965> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590818, -0.734681, -0.333434,
		0.636797, 0.170871, 0.751860,
		-0.495403, -0.656542, 0.568796,
		30.466072, 35.048592, 54.394604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.303936, 34.937840, 54.267586>,  <30.812853, 35.508171, 53.996445>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.303936, 34.937840, 54.267586> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.945938, 34.768459, 54.323696>,  <30.731140, 34.666832, 54.357361>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.945938, 34.768459, 54.323696>,  <31.303936, 34.937840, 54.267586>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.945938, 34.768459, 54.323696> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366591, -0.877371, -0.309565,
		0.254157, -0.225636, 0.940475,
		-0.894995, -0.423448, 0.140274,
		30.677441, 34.641426, 54.365780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.403385, 34.195385, 54.315636>,  <31.303936, 34.937840, 54.267586>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.403385, 34.195385, 54.315636> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007076, 34.209599, 54.263321>,  <30.769291, 34.218128, 54.231934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.007076, 34.209599, 54.263321>,  <31.403385, 34.195385, 54.315636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.007076, 34.209599, 54.263321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020691, -0.914043, -0.405089,
		-0.133934, -0.404058, 0.904875,
		-0.990774, 0.035533, -0.130782,
		30.709845, 34.220257, 54.224087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339317, 33.559605, 54.540298>,  <31.403385, 34.195385, 54.315636>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339317, 33.559605, 54.540298> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030167, 33.649452, 54.302910>,  <30.844675, 33.703362, 54.160477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.030167, 33.649452, 54.302910>,  <31.339317, 33.559605, 54.540298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.030167, 33.649452, 54.302910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308289, -0.684539, -0.660579,
		-0.554631, -0.693507, 0.459817,
		-0.772879, 0.224621, -0.593467,
		30.798304, 33.716839, 54.124870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.006926, 32.988209, 54.393196>,  <31.339317, 33.559605, 54.540298>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.006926, 32.988209, 54.393196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908264, 33.232708, 54.092388>,  <30.849068, 33.379406, 53.911903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.908264, 33.232708, 54.092388>,  <31.006926, 32.988209, 54.393196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.908264, 33.232708, 54.092388> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331605, -0.675923, -0.658154,
		-0.910604, -0.411710, -0.035975,
		-0.246653, 0.611248, -0.752023,
		30.834269, 33.416080, 53.866779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905035, 32.483028, 53.946575>,  <31.006926, 32.988209, 54.393196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905035, 32.483028, 53.946575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902308, 32.828266, 53.744579>,  <30.900671, 33.035408, 53.623383>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.902308, 32.828266, 53.744579>,  <30.905035, 32.483028, 53.946575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902308, 32.828266, 53.744579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437506, -0.451527, -0.777632,
		-0.899190, -0.226237, -0.374533,
		-0.006818, 0.863099, -0.504989,
		30.900263, 33.087196, 53.593082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.503822, 32.406975, 53.384907>,  <30.905035, 32.483028, 53.946575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.503822, 32.406975, 53.384907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.778202, 32.690441, 53.318855>,  <30.942829, 32.860519, 53.279224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.778202, 32.690441, 53.318855>,  <30.503822, 32.406975, 53.384907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.778202, 32.690441, 53.318855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502833, -0.625680, -0.596392,
		-0.525961, 0.326062, -0.785524,
		0.685948, 0.708666, -0.165129,
		30.983986, 32.903042, 53.269318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<26.493805, 38.665840, 54.218330> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.827110, 38.886192, 54.199593>,  <27.027094, 39.018406, 54.188351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.827110, 38.886192, 54.199593>,  <26.493805, 38.665840, 54.218330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.827110, 38.886192, 54.199593> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202826, 0.383413, 0.901031,
		0.514325, -0.741297, 0.431219,
		0.833266, 0.550885, -0.046845,
		27.077089, 39.051456, 54.185539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.904169, 38.535816, 54.823074>,  <26.493805, 38.665840, 54.218330>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.904169, 38.535816, 54.823074> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.000668, 38.900597, 54.690323>,  <27.058567, 39.119465, 54.610672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.000668, 38.900597, 54.690323>,  <26.904169, 38.535816, 54.823074>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.000668, 38.900597, 54.690323> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140946, 0.371275, 0.917763,
		0.960174, -0.174629, 0.218104,
		0.241245, 0.911954, -0.331875,
		27.073042, 39.174183, 54.590759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357838, 38.867275, 55.278088>,  <26.904169, 38.535816, 54.823074>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357838, 38.867275, 55.278088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.255352, 39.194366, 55.071915>,  <27.193861, 39.390621, 54.948212>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.255352, 39.194366, 55.071915>,  <27.357838, 38.867275, 55.278088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.255352, 39.194366, 55.071915> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088458, 0.511161, 0.854921,
		0.962564, 0.264638, -0.058632,
		-0.256215, 0.817729, -0.515435,
		27.178488, 39.439686, 54.917286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.746387, 39.414886, 55.619705>,  <27.357838, 38.867275, 55.278088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.746387, 39.414886, 55.619705> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.420193, 39.555733, 55.435966>,  <27.224476, 39.640240, 55.325726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.420193, 39.555733, 55.435966>,  <27.746387, 39.414886, 55.619705>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.420193, 39.555733, 55.435966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245959, 0.507584, 0.825750,
		0.523913, 0.786368, -0.327322,
		-0.815487, 0.352113, -0.459344,
		27.175547, 39.661366, 55.298164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.584431, 40.003429, 55.917301>,  <27.746387, 39.414886, 55.619705>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.584431, 40.003429, 55.917301> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.234034, 39.959290, 55.729488>,  <27.023796, 39.932804, 55.616802>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.234034, 39.959290, 55.729488>,  <27.584431, 40.003429, 55.917301>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.234034, 39.959290, 55.729488> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471160, 0.404033, 0.784070,
		0.103182, 0.908063, -0.405924,
		-0.875992, -0.110353, -0.469532,
		26.971235, 39.926182, 55.588631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.261766, 40.684692, 55.842403>,  <27.584431, 40.003429, 55.917301>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.261766, 40.684692, 55.842403> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.948458, 40.436630, 55.824982>,  <26.760473, 40.287792, 55.814529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.948458, 40.436630, 55.824982>,  <27.261766, 40.684692, 55.842403>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948458, 40.436630, 55.824982> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472885, 0.548857, 0.689301,
		-0.403567, 0.560506, -0.723165,
		-0.783271, -0.620153, -0.043554,
		26.713476, 40.250584, 55.811916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.714010, 41.142643, 55.999809>,  <27.261766, 40.684692, 55.842403>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.714010, 41.142643, 55.999809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.566805, 40.773159, 56.042389>,  <26.478481, 40.551468, 56.067936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.566805, 40.773159, 56.042389>,  <26.714010, 41.142643, 55.999809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.566805, 40.773159, 56.042389> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555032, 0.310080, 0.771874,
		-0.745994, 0.224977, -0.626800,
		-0.368012, -0.923708, 0.106449,
		26.456402, 40.496048, 56.074322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.182667, 41.364429, 56.181957>,  <26.714010, 41.142643, 55.999809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.182667, 41.364429, 56.181957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.170937, 40.981014, 56.295341>,  <26.163898, 40.750965, 56.363373>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.170937, 40.981014, 56.295341>,  <26.182667, 41.364429, 56.181957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.170937, 40.981014, 56.295341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425442, 0.268583, 0.864212,
		-0.904510, -0.095251, -0.415678,
		-0.029327, -0.958536, 0.283460,
		26.162138, 40.693455, 56.380379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.568224, 41.324478, 56.557659>,  <26.182667, 41.364429, 56.181957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.568224, 41.324478, 56.557659> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.779242, 41.004951, 56.673313>,  <25.905851, 40.813236, 56.742706>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.779242, 41.004951, 56.673313>,  <25.568224, 41.324478, 56.557659>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.779242, 41.004951, 56.673313> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288603, 0.151584, 0.945373,
		-0.799004, -0.582168, -0.150572,
		0.527542, -0.798813, 0.289132,
		25.937504, 40.765308, 56.760052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.185928, 40.973362, 56.992260>,  <25.568224, 41.324478, 56.557659>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.185928, 40.973362, 56.992260> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.535078, 40.825687, 57.119877>,  <25.744568, 40.737083, 57.196445>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.535078, 40.825687, 57.119877>,  <25.185928, 40.973362, 56.992260>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.535078, 40.825687, 57.119877> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133714, 0.447838, 0.884060,
		-0.469267, -0.814333, 0.341540,
		0.872874, -0.369191, 0.319044,
		25.796940, 40.714931, 57.215591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.061832, 40.668541, 57.569981>,  <25.185928, 40.973362, 56.992260>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.061832, 40.668541, 57.569981> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.449024, 40.766563, 57.591751>,  <25.681339, 40.825378, 57.604813>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.449024, 40.766563, 57.591751>,  <25.061832, 40.668541, 57.569981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.449024, 40.766563, 57.591751> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124563, 0.280648, 0.951694,
		0.217944, -0.928000, 0.302187,
		0.967980, 0.245057, 0.054428,
		25.739418, 40.840080, 57.608078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.227228, 40.382118, 58.202812>,  <25.061832, 40.668541, 57.569981>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.227228, 40.382118, 58.202812> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.505512, 40.660175, 58.130405>,  <25.672483, 40.827007, 58.086960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.505512, 40.660175, 58.130405>,  <25.227228, 40.382118, 58.202812>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.505512, 40.660175, 58.130405> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062876, 0.309970, 0.948665,
		0.715566, -0.648614, 0.259356,
		0.695710, 0.695140, -0.181022,
		25.714226, 40.868717, 58.076099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.805479, 40.321186, 58.639683>,  <25.227228, 40.382118, 58.202812>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.805479, 40.321186, 58.639683> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.790905, 40.710175, 58.547619>,  <25.782162, 40.943569, 58.492382>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<25.790905, 40.710175, 58.547619>,  <25.805479, 40.321186, 58.639683>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790905, 40.710175, 58.547619> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238430, 0.215200, 0.947016,
		0.970476, 0.089379, 0.224026,
		-0.036433, 0.972471, -0.230157,
		25.779976, 41.001915, 58.478573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.206926, 40.719120, 59.218899>,  <25.805479, 40.321186, 58.639683>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.206926, 40.719120, 59.218899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.357346, 40.743092, 59.588764>,  <26.447598, 40.757473, 59.810684>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.357346, 40.743092, 59.588764>,  <26.206926, 40.719120, 59.218899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357346, 40.743092, 59.588764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654221, -0.723856, -0.219151,
		0.656189, 0.687344, -0.311409,
		0.376047, 0.059926, 0.924661,
		26.470160, 40.761070, 59.866161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.965357, 40.985340, 59.290134>,  <26.206926, 40.719120, 59.218899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.965357, 40.985340, 59.290134> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.876492, 40.722843, 59.578579>,  <26.823174, 40.565346, 59.751644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<26.876492, 40.722843, 59.578579>,  <26.965357, 40.985340, 59.290134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876492, 40.722843, 59.578579> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638371, -0.656927, -0.401159,
		0.736971, 0.371212, 0.564868,
		-0.222162, -0.656238, 0.721107,
		26.809843, 40.525970, 59.794910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.603924, 40.744328, 59.513790>,  <26.965357, 40.985340, 59.290134>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.603924, 40.744328, 59.513790> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.349154, 40.451984, 59.611916>,  <27.196291, 40.276581, 59.670792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.349154, 40.451984, 59.611916>,  <27.603924, 40.744328, 59.513790>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.349154, 40.451984, 59.611916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637256, -0.678202, -0.365987,
		0.433855, -0.076779, 0.897705,
		-0.636926, -0.730854, 0.245314,
		27.158075, 40.232727, 59.685509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.961964, 40.154560, 59.822350>,  <27.603924, 40.744328, 59.513790>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.961964, 40.154560, 59.822350> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.621975, 39.983906, 59.698715>,  <27.417982, 39.881512, 59.624535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.621975, 39.983906, 59.698715>,  <27.961964, 40.154560, 59.822350>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.621975, 39.983906, 59.698715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524943, -0.636235, -0.565367,
		0.044555, -0.642797, 0.764740,
		-0.849971, -0.426634, -0.309084,
		27.366983, 39.855915, 59.605991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.141239, 39.552490, 59.628189>,  <27.961964, 40.154560, 59.822350>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.141239, 39.552490, 59.628189> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.778748, 39.532211, 59.460297>,  <27.561253, 39.520042, 59.359562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.778748, 39.532211, 59.460297>,  <28.141239, 39.552490, 59.628189>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778748, 39.532211, 59.460297> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351817, -0.640983, -0.682177,
		-0.234457, -0.765879, 0.598715,
		-0.906231, -0.050697, -0.419732,
		27.506878, 39.517002, 59.334377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.007580, 38.852177, 59.542847>,  <28.141239, 39.552490, 59.628189>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.007580, 38.852177, 59.542847> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.784199, 39.030910, 59.263283>,  <27.650171, 39.138149, 59.095543>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.784199, 39.030910, 59.263283>,  <28.007580, 38.852177, 59.542847>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.784199, 39.030910, 59.263283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346018, -0.640257, -0.685815,
		-0.753926, -0.624829, 0.202940,
		-0.558451, 0.446833, -0.698908,
		27.616663, 39.164959, 59.053612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.655478, 38.373291, 59.218281>,  <28.007580, 38.852177, 59.542847>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.655478, 38.373291, 59.218281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.651327, 38.663548, 58.943085>,  <27.648836, 38.837700, 58.777966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.651327, 38.663548, 58.943085>,  <27.655478, 38.373291, 59.218281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.651327, 38.663548, 58.943085> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134581, -0.680757, -0.720040,
		-0.990848, -0.100063, -0.090593,
		-0.010378, 0.725643, -0.687994,
		27.648214, 38.881241, 58.736687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.200718, 38.229008, 58.563469>,  <27.655478, 38.373291, 59.218281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.200718, 38.229008, 58.563469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454428, 38.502674, 58.419456>,  <27.606653, 38.666874, 58.333050>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.454428, 38.502674, 58.419456>,  <27.200718, 38.229008, 58.563469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.454428, 38.502674, 58.419456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141766, -0.560719, -0.815780,
		-0.760001, 0.466387, -0.452639,
		0.634272, 0.684162, -0.360029,
		27.644709, 38.707924, 58.311447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021322, 38.257874, 57.922031>,  <27.200718, 38.229008, 58.563469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021322, 38.257874, 57.922031> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.390078, 38.412811, 57.918415>,  <27.611332, 38.505775, 57.916245>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.390078, 38.412811, 57.918415>,  <27.021322, 38.257874, 57.922031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.390078, 38.412811, 57.918415> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239071, -0.587052, -0.773444,
		-0.304900, 0.710868, -0.633801,
		0.921890, 0.387346, -0.009044,
		27.666645, 38.529015, 57.915703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.067347, 38.499630, 57.232452>,  <27.021322, 38.257874, 57.922031>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.067347, 38.499630, 57.232452> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.421116, 38.418568, 57.400608>,  <27.633377, 38.369930, 57.501503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.421116, 38.418568, 57.400608>,  <27.067347, 38.499630, 57.232452>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.421116, 38.418568, 57.400608> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230628, -0.593319, -0.771222,
		0.405717, 0.779040, -0.478007,
		0.884423, -0.202657, 0.420388,
		27.686443, 38.357769, 57.526726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464777, 38.498360, 56.702164>,  <27.067347, 38.499630, 57.232452>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464777, 38.498360, 56.702164> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.697895, 38.336079, 56.983803>,  <27.837765, 38.238708, 57.152786>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<27.697895, 38.336079, 56.983803>,  <27.464777, 38.498360, 56.702164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<27.697895, 38.336079, 56.983803> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538989, -0.455451, -0.708558,
		0.608147, 0.792446, -0.046766,
		0.582793, -0.405701, 0.704101,
		27.872732, 38.214367, 57.195034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.070997, 38.593079, 56.440701>,  <27.464777, 38.498360, 56.702164>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.070997, 38.593079, 56.440701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.160761, 38.307537, 56.706047>,  <28.214619, 38.136211, 56.865257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.160761, 38.307537, 56.706047>,  <28.070997, 38.593079, 56.440701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160761, 38.307537, 56.706047> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670693, -0.380715, -0.636575,
		0.706973, 0.587770, 0.393339,
		0.224409, -0.713851, 0.663368,
		28.228085, 38.093380, 56.905056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895815, 38.538902, 56.595989>,  <28.070997, 38.593079, 56.440701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895815, 38.538902, 56.595989> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739119, 38.178680, 56.671387>,  <28.645100, 37.962547, 56.716625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.739119, 38.178680, 56.671387>,  <28.895815, 38.538902, 56.595989>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.739119, 38.178680, 56.671387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789817, -0.434235, -0.433162,
		0.471940, -0.020810, 0.881385,
		-0.391742, -0.900559, 0.188497,
		28.621595, 37.908512, 56.727936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.564062, 38.106407, 56.743317>,  <28.895815, 38.538902, 56.595989>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.564062, 38.106407, 56.743317> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.254217, 37.857533, 56.697964>,  <29.068310, 37.708206, 56.670753>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.254217, 37.857533, 56.697964>,  <29.564062, 38.106407, 56.743317>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.254217, 37.857533, 56.697964> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600803, -0.667961, -0.439163,
		0.197510, -0.408300, 0.891225,
		-0.774613, -0.622189, -0.113379,
		29.021833, 37.670876, 56.663952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.951956, 37.411423, 56.648209>,  <29.564062, 38.106407, 56.743317>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.951956, 37.411423, 56.648209> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577452, 37.324444, 56.537842>,  <29.352749, 37.272255, 56.471622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.577452, 37.324444, 56.537842>,  <29.951956, 37.411423, 56.648209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.577452, 37.324444, 56.537842> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332042, -0.804266, -0.492854,
		-0.114742, -0.553056, 0.825205,
		-0.936260, -0.217451, -0.275921,
		29.296574, 37.259209, 56.455067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.314396, 37.255692, 57.290680>,  <29.951956, 37.411423, 56.648209>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.314396, 37.255692, 57.290680> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.620855, 37.487843, 57.180275>,  <30.804731, 37.627132, 57.114033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.620855, 37.487843, 57.180275>,  <30.314396, 37.255692, 57.290680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.620855, 37.487843, 57.180275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376481, 0.753390, 0.539134,
		0.520842, -0.309145, 0.795709,
		0.766150, 0.580373, -0.276011,
		30.850700, 37.661953, 57.097473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.745941, 37.555660, 57.901497>,  <30.314396, 37.255692, 57.290680>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.745941, 37.555660, 57.901497> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.786478, 37.799465, 57.586987>,  <30.810801, 37.945747, 57.398281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.786478, 37.799465, 57.586987>,  <30.745941, 37.555660, 57.901497>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.786478, 37.799465, 57.586987> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203743, 0.786308, 0.583274,
		0.973765, 0.101089, 0.203868,
		0.101340, 0.609509, -0.786275,
		30.816881, 37.982319, 57.351105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177969, 37.979073, 58.126011>,  <30.745941, 37.555660, 57.901497>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177969, 37.979073, 58.126011> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000481, 38.167038, 57.820778>,  <30.893988, 38.279816, 57.637638>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.000481, 38.167038, 57.820778>,  <31.177969, 37.979073, 58.126011>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.000481, 38.167038, 57.820778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096642, 0.821442, 0.562044,
		0.890939, 0.323137, -0.319079,
		-0.443722, 0.469910, -0.763083,
		30.867365, 38.308010, 57.591854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.324938, 38.608959, 58.261246>,  <31.177969, 37.979073, 58.126011>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.324938, 38.608959, 58.261246> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042793, 38.679131, 57.986526>,  <30.873507, 38.721233, 57.821697>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.042793, 38.679131, 57.986526>,  <31.324938, 38.608959, 58.261246>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.042793, 38.679131, 57.986526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049449, 0.954353, 0.294561,
		0.707121, 0.241733, -0.664489,
		-0.705362, 0.175432, -0.686796,
		30.831184, 38.731762, 57.780487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.424393, 39.334282, 58.043751>,  <31.324938, 38.608959, 58.261246>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.424393, 39.334282, 58.043751> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052290, 39.253822, 57.921009>,  <30.829029, 39.205547, 57.847363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.052290, 39.253822, 57.921009>,  <31.424393, 39.334282, 58.043751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052290, 39.253822, 57.921009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313412, 0.870488, 0.379504,
		0.190775, 0.449208, -0.872821,
		-0.930257, -0.201152, -0.306855,
		30.773212, 39.193478, 57.828953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186125, 39.950745, 57.718571>,  <31.424393, 39.334282, 58.043751>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186125, 39.950745, 57.718571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848536, 39.756336, 57.809341>,  <30.645983, 39.639690, 57.863804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.848536, 39.756336, 57.809341>,  <31.186125, 39.950745, 57.718571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.848536, 39.756336, 57.809341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346342, 0.816825, 0.461350,
		-0.409585, 0.310772, -0.857707,
		-0.843971, -0.486022, 0.226926,
		30.595345, 39.610531, 57.877419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576099, 40.364281, 57.640923>,  <31.186125, 39.950745, 57.718571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576099, 40.364281, 57.640923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.478096, 40.069237, 57.892609>,  <30.419294, 39.892212, 58.043621>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.478096, 40.069237, 57.892609>,  <30.576099, 40.364281, 57.640923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478096, 40.069237, 57.892609> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431490, 0.664135, 0.610525,
		-0.868209, -0.121914, -0.480989,
		-0.245010, -0.737605, 0.629212,
		30.404593, 39.847954, 58.081371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262577, 41.004524, 57.314842>,  <30.576099, 40.364281, 57.640923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262577, 41.004524, 57.314842> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.565718, 41.265484, 57.312496>,  <30.747602, 41.422062, 57.311089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.565718, 41.265484, 57.312496>,  <30.262577, 41.004524, 57.314842>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.565718, 41.265484, 57.312496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568762, -0.665039, -0.483976,
		-0.319645, 0.363447, -0.875062,
		0.757850, 0.652402, -0.005862,
		30.793074, 41.461205, 57.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525543, 40.994987, 56.609070>,  <30.262577, 41.004524, 57.314842>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.525543, 40.994987, 56.609070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827620, 41.126133, 56.836121>,  <31.008865, 41.204819, 56.972351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.827620, 41.126133, 56.836121>,  <30.525543, 40.994987, 56.609070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827620, 41.126133, 56.836121> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655341, -0.397089, -0.642532,
		0.014736, 0.857221, -0.514739,
		0.755189, 0.327861, 0.567624,
		31.054176, 41.224491, 57.006409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016167, 41.147419, 56.046036>,  <30.525543, 40.994987, 56.609070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016167, 41.147419, 56.046036> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227552, 41.138409, 56.385498>,  <31.354383, 41.133003, 56.589176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.227552, 41.138409, 56.385498>,  <31.016167, 41.147419, 56.046036>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.227552, 41.138409, 56.385498> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773358, -0.399596, -0.492179,
		0.350208, 0.916414, -0.193750,
		0.528462, -0.022527, 0.848658,
		31.386091, 41.131649, 56.640095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694042, 41.239983, 55.851154>,  <31.016167, 41.147419, 56.046036>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694042, 41.239983, 55.851154> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.759991, 41.096367, 56.218613>,  <31.799561, 41.010197, 56.439087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.759991, 41.096367, 56.218613>,  <31.694042, 41.239983, 55.851154>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.759991, 41.096367, 56.218613> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737832, -0.573195, -0.356444,
		0.654539, 0.736574, 0.170404,
		0.164872, -0.359036, 0.918646,
		31.809452, 40.988655, 56.494205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.434959, 41.328300, 55.979126>,  <31.694042, 41.239983, 55.851154>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.434959, 41.328300, 55.979126> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299992, 41.046867, 56.229282>,  <32.219009, 40.878006, 56.379375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.299992, 41.046867, 56.229282>,  <32.434959, 41.328300, 55.979126>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.299992, 41.046867, 56.229282> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832282, -0.533384, -0.151025,
		0.439833, 0.469545, 0.765555,
		-0.337422, -0.703584, 0.625393,
		32.198765, 40.835793, 56.416901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005295, 41.227882, 56.416435>,  <32.434959, 41.328300, 55.979126>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005295, 41.227882, 56.416435> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778923, 40.898209, 56.408001>,  <32.643101, 40.700405, 56.402943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.778923, 40.898209, 56.408001>,  <33.005295, 41.227882, 56.416435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.778923, 40.898209, 56.408001> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809804, -0.550897, -0.201814,
		0.154717, -0.131285, 0.979197,
		-0.565932, -0.824182, -0.021082,
		32.609142, 40.650955, 56.401676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.033184, 40.728653, 56.972019>,  <33.005295, 41.227882, 56.416435>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.033184, 40.728653, 56.972019> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956997, 40.606758, 56.598740>,  <32.911285, 40.533619, 56.374771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.956997, 40.606758, 56.598740>,  <33.033184, 40.728653, 56.972019>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956997, 40.606758, 56.598740> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969018, -0.210627, -0.128999,
		-0.157245, -0.928854, 0.335417,
		-0.190469, -0.304741, -0.933196,
		32.899857, 40.515335, 56.318779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<27.654617, 43.541988, 57.046673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455475, 43.196503, 57.077995>,  <27.335989, 42.989212, 57.096786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.455475, 43.196503, 57.077995>,  <27.654617, 43.541988, 57.046673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.455475, 43.196503, 57.077995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611118, -0.413449, -0.674978,
		0.615363, -0.288191, 0.733672,
		-0.497858, -0.863716, 0.078303,
		27.306118, 42.937389, 57.101486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.078360, 43.044582, 57.438427>,  <27.654617, 43.541988, 57.046673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.078360, 43.044582, 57.438427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819441, 42.881020, 57.181118>,  <27.664089, 42.782883, 57.026733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.819441, 42.881020, 57.181118>,  <28.078360, 43.044582, 57.438427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.819441, 42.881020, 57.181118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758368, -0.260569, -0.597479,
		0.076697, -0.874585, 0.478767,
		-0.647299, -0.408906, -0.643273,
		27.625252, 42.758347, 56.988136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.425200, 42.429596, 57.326859>,  <28.078360, 43.044582, 57.438427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.425200, 42.429596, 57.326859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145653, 42.464729, 57.042923>,  <27.977924, 42.485809, 56.872562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.145653, 42.464729, 57.042923>,  <28.425200, 42.429596, 57.326859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.145653, 42.464729, 57.042923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656996, -0.313470, -0.685633,
		-0.282731, -0.945528, 0.161371,
		-0.698871, 0.087830, -0.709835,
		27.935991, 42.491081, 56.829971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324566, 41.780914, 57.055351>,  <28.425200, 42.429596, 57.326859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324566, 41.780914, 57.055351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189344, 42.022449, 56.766605>,  <28.108212, 42.167370, 56.593357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189344, 42.022449, 56.766605>,  <28.324566, 41.780914, 57.055351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189344, 42.022449, 56.766605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531573, -0.510444, -0.675927,
		-0.776626, -0.612226, -0.148428,
		-0.338056, 0.603842, -0.721867,
		28.087927, 42.203602, 56.550045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.192228, 41.351242, 56.476433>,  <28.324566, 41.780914, 57.055351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.192228, 41.351242, 56.476433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243219, 41.726463, 56.347561>,  <28.273815, 41.951595, 56.270237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.243219, 41.726463, 56.347561>,  <28.192228, 41.351242, 56.476433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.243219, 41.726463, 56.347561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502659, -0.341129, -0.794333,
		-0.855034, -0.060686, -0.515010,
		0.127480, 0.938055, -0.322182,
		28.281464, 42.007881, 56.250908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.998756, 41.295174, 55.814030>,  <28.192228, 41.351242, 56.476433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.998756, 41.295174, 55.814030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198400, 41.641773, 55.817463>,  <28.318188, 41.849731, 55.819523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.198400, 41.641773, 55.817463>,  <27.998756, 41.295174, 55.814030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.198400, 41.641773, 55.817463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447088, -0.249021, -0.859128,
		-0.742293, 0.432637, -0.511689,
		0.499112, 0.866495, 0.008580,
		28.348135, 41.901722, 55.820038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962793, 41.658798, 55.099220>,  <27.998756, 41.295174, 55.814030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962793, 41.658798, 55.099220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271963, 41.802650, 55.308315>,  <28.457464, 41.888962, 55.433773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.271963, 41.802650, 55.308315>,  <27.962793, 41.658798, 55.099220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.271963, 41.802650, 55.308315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580286, -0.067443, -0.811615,
		-0.256625, 0.930655, -0.260816,
		0.772924, 0.359629, 0.522739,
		28.503839, 41.910538, 55.465137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307512, 42.167137, 54.670647>,  <27.962793, 41.658798, 55.099220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307512, 42.167137, 54.670647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581022, 42.046028, 54.936211>,  <28.745129, 41.973362, 55.095551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.581022, 42.046028, 54.936211>,  <28.307512, 42.167137, 54.670647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.581022, 42.046028, 54.936211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687315, -0.038315, -0.725348,
		0.245053, 0.952293, 0.181901,
		0.683774, -0.302772, 0.663914,
		28.786154, 41.955196, 55.135384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.832552, 42.421700, 54.301426>,  <28.307512, 42.167137, 54.670647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.832552, 42.421700, 54.301426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961235, 42.164864, 54.579769>,  <29.038445, 42.010761, 54.746777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.961235, 42.164864, 54.579769>,  <28.832552, 42.421700, 54.301426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.961235, 42.164864, 54.579769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769217, -0.251297, -0.587499,
		0.552096, 0.724272, 0.413063,
		0.321708, -0.642091, 0.695862,
		29.057747, 41.972237, 54.788528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573082, 42.476299, 54.200459>,  <28.832552, 42.421700, 54.301426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573082, 42.476299, 54.200459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500818, 42.133644, 54.393757>,  <29.457460, 41.928051, 54.509735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.500818, 42.133644, 54.393757>,  <29.573082, 42.476299, 54.200459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.500818, 42.133644, 54.393757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746203, -0.439459, -0.500056,
		0.640736, 0.270257, 0.718623,
		-0.180662, -0.856643, 0.483244,
		29.446619, 41.876652, 54.538731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.215868, 42.208694, 54.481564>,  <29.573082, 42.476299, 54.200459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.215868, 42.208694, 54.481564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979734, 41.890072, 54.429401>,  <29.838055, 41.698898, 54.398102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.979734, 41.890072, 54.429401>,  <30.215868, 42.208694, 54.481564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.979734, 41.890072, 54.429401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765813, -0.501688, -0.402292,
		0.255023, -0.337355, 0.906176,
		-0.590333, -0.796555, -0.130409,
		29.802635, 41.651104, 54.390278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.619715, 41.595860, 54.726078>,  <30.215868, 42.208694, 54.481564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.619715, 41.595860, 54.726078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367676, 41.490360, 54.433937>,  <30.216452, 41.427059, 54.258652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367676, 41.490360, 54.433937>,  <30.619715, 41.595860, 54.726078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367676, 41.490360, 54.433937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765829, -0.366573, -0.528328,
		-0.128378, -0.892221, 0.432967,
		-0.630099, -0.263753, -0.730349,
		30.178646, 41.411236, 54.214832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.121046, 42.198086, 54.895340>,  <30.619715, 41.595860, 54.726078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.121046, 42.198086, 54.895340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357460, 42.520580, 54.885067>,  <31.499308, 42.714077, 54.878902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.357460, 42.520580, 54.885067>,  <31.121046, 42.198086, 54.895340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.357460, 42.520580, 54.885067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553302, 0.428370, 0.714392,
		0.586970, -0.408022, 0.699274,
		0.591035, 0.806237, -0.025681,
		31.534771, 42.762451, 54.877361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.230171, 42.378979, 55.585434>,  <31.121046, 42.198086, 54.895340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.230171, 42.378979, 55.585434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300213, 42.714859, 55.379818>,  <31.342237, 42.916386, 55.256447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300213, 42.714859, 55.379818>,  <31.230171, 42.378979, 55.585434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300213, 42.714859, 55.379818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351255, 0.541033, 0.764136,
		0.919760, 0.046758, 0.389685,
		0.175103, 0.839701, -0.514044,
		31.352743, 42.966770, 55.225605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541321, 42.896305, 56.047371>,  <31.230171, 42.378979, 55.585434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541321, 42.896305, 56.047371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388338, 43.102875, 55.740898>,  <31.296549, 43.226814, 55.557014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.388338, 43.102875, 55.740898>,  <31.541321, 42.896305, 56.047371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.388338, 43.102875, 55.740898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502278, 0.579801, 0.641520,
		0.775528, 0.630190, 0.037638,
		-0.382456, 0.516422, -0.766182,
		31.273602, 43.257801, 55.511044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.543543, 43.472504, 56.243759>,  <31.541321, 42.896305, 56.047371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.543543, 43.472504, 56.243759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293756, 43.536575, 55.937981>,  <31.143885, 43.575020, 55.754513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.293756, 43.536575, 55.937981>,  <31.543543, 43.472504, 56.243759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.293756, 43.536575, 55.937981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538872, 0.620130, 0.570136,
		0.565385, 0.767972, -0.300932,
		-0.624465, 0.160183, -0.764450,
		31.106417, 43.584629, 55.708645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.526289, 44.126514, 56.219700>,  <31.543543, 43.472504, 56.243759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.526289, 44.126514, 56.219700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198957, 44.010887, 56.020996>,  <31.002558, 43.941509, 55.901772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.198957, 44.010887, 56.020996>,  <31.526289, 44.126514, 56.219700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198957, 44.010887, 56.020996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549262, 0.647851, 0.527825,
		0.169249, 0.704788, -0.688933,
		-0.818331, -0.289071, -0.496761,
		30.953459, 43.924168, 55.871967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.203026, 44.704147, 56.099091>,  <31.526289, 44.126514, 56.219700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.203026, 44.704147, 56.099091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915667, 44.432125, 56.040531>,  <30.743252, 44.268913, 56.005394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.915667, 44.432125, 56.040531>,  <31.203026, 44.704147, 56.099091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.915667, 44.432125, 56.040531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606937, 0.509928, 0.609590,
		-0.339901, 0.526782, -0.779081,
		-0.718397, -0.680054, -0.146399,
		30.700148, 44.228107, 55.996613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.542412, 45.051437, 55.986195>,  <31.203026, 44.704147, 56.099091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.542412, 45.051437, 55.986195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458216, 44.681671, 56.113407>,  <30.407698, 44.459812, 56.189735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.458216, 44.681671, 56.113407>,  <30.542412, 45.051437, 55.986195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.458216, 44.681671, 56.113407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649988, 0.375335, 0.660788,
		-0.730212, -0.067624, -0.679866,
		-0.210492, -0.924419, 0.318028,
		30.395067, 44.404346, 56.208817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840773, 45.109112, 55.986359>,  <30.542412, 45.051437, 55.986195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840773, 45.109112, 55.986359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952484, 44.826523, 56.246483>,  <30.019512, 44.656971, 56.402557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.952484, 44.826523, 56.246483>,  <29.840773, 45.109112, 55.986359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.952484, 44.826523, 56.246483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655989, 0.354193, 0.666503,
		-0.701200, -0.612735, -0.364519,
		0.279280, -0.706472, 0.650307,
		30.036268, 44.614582, 56.441574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236305, 44.878796, 56.137321>,  <29.840773, 45.109112, 55.986359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.236305, 44.878796, 56.137321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478085, 44.725647, 56.416763>,  <29.623152, 44.633759, 56.584431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.478085, 44.725647, 56.416763>,  <29.236305, 44.878796, 56.137321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.478085, 44.725647, 56.416763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638942, 0.290776, 0.712182,
		-0.475810, -0.876848, -0.068870,
		0.604449, -0.382867, 0.698609,
		29.659420, 44.610786, 56.626347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.741919, 44.645489, 56.538784>,  <29.236305, 44.878796, 56.137321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.741919, 44.645489, 56.538784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074852, 44.661533, 56.759914>,  <29.274612, 44.671162, 56.892593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.074852, 44.661533, 56.759914>,  <28.741919, 44.645489, 56.538784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.074852, 44.661533, 56.759914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541485, 0.271867, 0.795539,
		-0.118382, -0.961498, 0.248006,
		0.832334, 0.040114, 0.552821,
		29.324553, 44.673569, 56.925762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.618643, 44.239651, 57.103615>,  <28.741919, 44.645489, 56.538784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.618643, 44.239651, 57.103615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906815, 44.499180, 57.201603>,  <29.079718, 44.654896, 57.260395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.906815, 44.499180, 57.201603>,  <28.618643, 44.239651, 57.103615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.906815, 44.499180, 57.201603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496350, 0.235666, 0.835523,
		0.484373, -0.723528, 0.491823,
		0.720430, 0.648821, 0.244973,
		29.122944, 44.693825, 57.275093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885849, 44.084816, 57.806751>,  <28.618643, 44.239651, 57.103615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885849, 44.084816, 57.806751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986372, 44.467010, 57.744926>,  <29.046686, 44.696327, 57.707832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.986372, 44.467010, 57.744926>,  <28.885849, 44.084816, 57.806751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986372, 44.467010, 57.744926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485500, 0.262585, 0.833870,
		0.837337, -0.134518, 0.529878,
		0.251309, 0.955486, -0.154563,
		29.061764, 44.753658, 57.698559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.067516, 44.216854, 58.461929>,  <28.885849, 44.084816, 57.806751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.067516, 44.216854, 58.461929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025229, 44.572334, 58.283478>,  <28.999855, 44.785622, 58.176407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.025229, 44.572334, 58.283478>,  <29.067516, 44.216854, 58.461929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.025229, 44.572334, 58.283478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244598, 0.411619, 0.877919,
		0.963844, 0.201935, 0.173859,
		-0.105719, 0.888703, -0.446129,
		28.993513, 44.838943, 58.149639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.279531, 44.582859, 58.917816>,  <29.067516, 44.216854, 58.461929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.279531, 44.582859, 58.917816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090418, 44.856297, 58.695400>,  <28.976950, 45.020359, 58.561951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.090418, 44.856297, 58.695400>,  <29.279531, 44.582859, 58.917816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.090418, 44.856297, 58.695400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365514, 0.422036, 0.829630,
		0.801795, 0.595476, 0.050330,
		-0.472783, 0.683589, -0.556041,
		28.948584, 45.061375, 58.528587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.845156, 44.178440, 58.744194>,  <29.279531, 44.582859, 58.917816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.845156, 44.178440, 58.744194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731504, 43.847164, 58.937431>,  <29.663313, 43.648399, 59.053371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.731504, 43.847164, 58.937431>,  <29.845156, 44.178440, 58.744194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.731504, 43.847164, 58.937431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746332, -0.507340, -0.430806,
		0.601879, 0.238142, 0.762253,
		-0.284129, -0.828187, 0.483091,
		29.646265, 43.598709, 59.082359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.363552, 43.814293, 59.021351>,  <29.845156, 44.178440, 58.744194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.363552, 43.814293, 59.021351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078079, 43.548313, 58.933258>,  <29.906796, 43.388725, 58.880402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.078079, 43.548313, 58.933258>,  <30.363552, 43.814293, 59.021351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.078079, 43.548313, 58.933258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613885, -0.442334, -0.653824,
		0.337345, -0.601818, 0.723888,
		-0.713684, -0.664948, -0.220228,
		29.863974, 43.348827, 58.867191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.821224, 43.459988, 58.655769>,  <30.363552, 43.814293, 59.021351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.821224, 43.459988, 58.655769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483837, 43.248985, 58.615170>,  <30.281404, 43.122383, 58.590809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.483837, 43.248985, 58.615170>,  <30.821224, 43.459988, 58.655769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.483837, 43.248985, 58.615170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480240, -0.655814, -0.582476,
		0.240698, -0.540041, 0.806487,
		-0.843465, -0.527508, -0.101496,
		30.230797, 43.090733, 58.584721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.957027, 42.717381, 58.793777>,  <30.821224, 43.459988, 58.655769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.957027, 42.717381, 58.793777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648542, 42.731441, 58.539536>,  <30.463451, 42.739880, 58.386990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.648542, 42.731441, 58.539536>,  <30.957027, 42.717381, 58.793777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.648542, 42.731441, 58.539536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410696, -0.735399, -0.538996,
		-0.486373, -0.676722, 0.552711,
		-0.771214, 0.035156, -0.635605,
		30.417179, 42.741989, 58.348854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024214, 42.167755, 58.568787>,  <30.957027, 42.717381, 58.793777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024214, 42.167755, 58.568787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716803, 42.250591, 58.326637>,  <30.532356, 42.300293, 58.181347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.716803, 42.250591, 58.326637>,  <31.024214, 42.167755, 58.568787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716803, 42.250591, 58.326637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197662, -0.823040, -0.532480,
		-0.608520, -0.528885, 0.591595,
		-0.768527, 0.207089, -0.605377,
		30.486244, 42.312717, 58.145023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522095, 41.569611, 58.532810>,  <31.024214, 42.167755, 58.568787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522095, 41.569611, 58.532810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478390, 41.785301, 58.198792>,  <30.452166, 41.914715, 57.998383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478390, 41.785301, 58.198792>,  <30.522095, 41.569611, 58.532810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478390, 41.785301, 58.198792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376445, -0.755053, -0.536828,
		-0.919973, -0.373004, -0.120489,
		-0.109264, 0.539225, -0.835044,
		30.445610, 41.947067, 57.948277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.263214, 41.150654, 58.006374>,  <30.522095, 41.569611, 58.532810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.263214, 41.150654, 58.006374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440105, 41.453930, 57.814716>,  <30.546240, 41.635895, 57.699722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.440105, 41.453930, 57.814716>,  <30.263214, 41.150654, 58.006374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.440105, 41.453930, 57.814716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465502, -0.650657, -0.599961,
		-0.766643, 0.042279, -0.640680,
		0.442229, 0.758194, -0.479141,
		30.572775, 41.681389, 57.670975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.796518, 40.514790, 57.773720>,  <30.263214, 41.150654, 58.006374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.796518, 40.514790, 57.773720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942793, 40.269485, 58.053772>,  <30.030558, 40.122303, 58.221806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.942793, 40.269485, 58.053772>,  <29.796518, 40.514790, 57.773720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.942793, 40.269485, 58.053772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468472, 0.528722, 0.707804,
		-0.804243, -0.586828, -0.093948,
		0.365687, -0.613259, 0.700133,
		30.052500, 40.085506, 58.263813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223808, 40.424206, 58.216106>,  <29.796518, 40.514790, 57.773720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223808, 40.424206, 58.216106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568447, 40.327885, 58.394840>,  <29.775230, 40.270092, 58.502083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.568447, 40.327885, 58.394840>,  <29.223808, 40.424206, 58.216106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.568447, 40.327885, 58.394840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296775, 0.475184, 0.828327,
		-0.411794, -0.846294, 0.337953,
		0.861598, -0.240804, 0.446836,
		29.826927, 40.255642, 58.528893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.990849, 40.213791, 58.840820>,  <29.223808, 40.424206, 58.216106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.990849, 40.213791, 58.840820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379980, 40.270302, 58.914185>,  <29.613461, 40.304207, 58.958202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.379980, 40.270302, 58.914185>,  <28.990849, 40.213791, 58.840820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.379980, 40.270302, 58.914185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208729, 0.192486, 0.958844,
		0.100156, -0.971077, 0.216745,
		0.972831, 0.141275, 0.183413,
		29.671829, 40.312683, 58.969208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.064152, 39.847221, 59.408997>,  <28.990849, 40.213791, 58.840820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.064152, 39.847221, 59.408997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366205, 40.109406, 59.413769>,  <29.547438, 40.266716, 59.416634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.366205, 40.109406, 59.413769>,  <29.064152, 39.847221, 59.408997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.366205, 40.109406, 59.413769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183570, 0.193942, 0.963685,
		0.629343, -0.729904, 0.266775,
		0.755136, 0.655460, 0.011932,
		29.592747, 40.306042, 59.417347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.580332, 39.760811, 59.990307>,  <29.064152, 39.847221, 59.408997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.580332, 39.760811, 59.990307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649620, 40.136658, 59.872253>,  <29.691193, 40.362167, 59.801422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.649620, 40.136658, 59.872253>,  <29.580332, 39.760811, 59.990307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.649620, 40.136658, 59.872253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303161, 0.335986, 0.891744,
		0.937063, -0.064996, 0.343057,
		0.173222, 0.939622, -0.295136,
		29.701586, 40.418545, 59.783714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909060, 40.126907, 60.555325>,  <29.580332, 39.760811, 59.990307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909060, 40.126907, 60.555325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759832, 40.414780, 60.321098>,  <29.670296, 40.587502, 60.180565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.759832, 40.414780, 60.321098>,  <29.909060, 40.126907, 60.555325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.759832, 40.414780, 60.321098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253751, 0.527918, 0.810501,
		0.892430, 0.450959, -0.014330,
		-0.373068, 0.719679, -0.585562,
		29.647913, 40.630684, 60.145432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.098139, 40.776527, 60.796791>,  <29.909060, 40.126907, 60.555325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.098139, 40.776527, 60.796791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780537, 40.876789, 60.575256>,  <29.589975, 40.936947, 60.442337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.780537, 40.876789, 60.575256>,  <30.098139, 40.776527, 60.796791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780537, 40.876789, 60.575256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339142, 0.573454, 0.745744,
		0.504521, 0.779951, -0.370317,
		-0.794003, 0.250654, -0.553834,
		29.542336, 40.951984, 60.409107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.045738, 41.597836, 60.969707>,  <30.098139, 40.776527, 60.796791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.045738, 41.597836, 60.969707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704168, 41.458904, 60.814697>,  <29.499228, 41.375546, 60.721691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.704168, 41.458904, 60.814697>,  <30.045738, 41.597836, 60.969707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.704168, 41.458904, 60.814697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515298, 0.460334, 0.722883,
		-0.072685, 0.816980, -0.572067,
		-0.853923, -0.347328, -0.387529,
		29.447992, 41.354706, 60.698437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578234, 42.161911, 60.821003>,  <30.045738, 41.597836, 60.969707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578234, 42.161911, 60.821003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361010, 41.830860, 60.877731>,  <29.230675, 41.632229, 60.911770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.361010, 41.830860, 60.877731>,  <29.578234, 42.161911, 60.821003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.361010, 41.830860, 60.877731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502162, 0.455470, 0.735106,
		-0.672993, 0.327988, -0.662952,
		-0.543060, -0.827630, 0.141825,
		29.198092, 41.582573, 60.920280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 11

// nucleotide -1

// particle -1
sphere {
	<36.588032, 34.713402, 47.208961> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716553, 34.945774, 47.508102>,  <36.793667, 35.085197, 47.687588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.716553, 34.945774, 47.508102>,  <36.588032, 34.713402, 47.208961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716553, 34.945774, 47.508102> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615316, -0.472223, 0.631183,
		0.719827, -0.662967, 0.205730,
		0.321303, 0.580931, 0.747853,
		36.812943, 35.120052, 47.732460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780388, 34.221081, 47.762024>,  <36.588032, 34.713402, 47.208961>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780388, 34.221081, 47.762024> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696388, 34.583195, 47.909729>,  <36.645988, 34.800465, 47.998352>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.696388, 34.583195, 47.909729>,  <36.780388, 34.221081, 47.762024>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696388, 34.583195, 47.909729> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428519, -0.424700, 0.797497,
		0.878789, 0.009241, 0.477121,
		-0.210003, 0.905287, 0.369262,
		36.633389, 34.854782, 48.020508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.602409, 33.973782, 48.556568>,  <36.780388, 34.221081, 47.762024>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.602409, 33.973782, 48.556568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508396, 34.362564, 48.553257>,  <36.451988, 34.595833, 48.551270>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.508396, 34.362564, 48.553257>,  <36.602409, 33.973782, 48.556568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.508396, 34.362564, 48.553257> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697629, -0.162756, 0.697729,
		0.676813, 0.169759, 0.716315,
		-0.235030, 0.971953, -0.008273,
		36.437885, 34.654148, 48.550774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.580616, 34.188034, 49.212292>,  <36.602409, 33.973782, 48.556568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.580616, 34.188034, 49.212292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348438, 34.432487, 48.997036>,  <36.209133, 34.579159, 48.867882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.348438, 34.432487, 48.997036>,  <36.580616, 34.188034, 49.212292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.348438, 34.432487, 48.997036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757023, -0.161503, 0.633115,
		0.300008, 0.774873, 0.556388,
		-0.580442, 0.611137, -0.538144,
		36.174305, 34.615829, 48.835594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.387001, 34.701523, 49.756084>,  <36.580616, 34.188034, 49.212292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.387001, 34.701523, 49.756084> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149364, 34.703049, 49.434330>,  <36.006783, 34.703964, 49.241276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.149364, 34.703049, 49.434330>,  <36.387001, 34.701523, 49.756084>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.149364, 34.703049, 49.434330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804163, -0.026987, 0.593796,
		-0.019440, 0.999628, 0.019104,
		-0.594091, 0.003819, -0.804389,
		35.971138, 34.704193, 49.193012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900082, 35.314053, 49.891464>,  <36.387001, 34.701523, 49.756084>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900082, 35.314053, 49.891464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710575, 35.093597, 49.616714>,  <35.596870, 34.961327, 49.451866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.710575, 35.093597, 49.616714>,  <35.900082, 35.314053, 49.891464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710575, 35.093597, 49.616714> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851098, 0.086195, 0.517883,
		-0.226219, 0.829952, -0.509906,
		-0.473769, -0.551135, -0.686872,
		35.568443, 34.928257, 49.410652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.280724, 35.559780, 49.863552>,  <35.900082, 35.314053, 49.891464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.280724, 35.559780, 49.863552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198158, 35.212845, 49.682388>,  <35.148621, 35.004684, 49.573692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.198158, 35.212845, 49.682388>,  <35.280724, 35.559780, 49.863552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198158, 35.212845, 49.682388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.875133, -0.043390, 0.481933,
		-0.437650, 0.495828, -0.750078,
		-0.206410, -0.867336, -0.452905,
		35.136234, 34.952644, 49.546516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711452, 35.704830, 49.624382>,  <35.280724, 35.559780, 49.863552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711452, 35.704830, 49.624382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.692116, 35.308159, 49.672123>,  <34.680515, 35.070156, 49.700768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.692116, 35.308159, 49.672123>,  <34.711452, 35.704830, 49.624382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.692116, 35.308159, 49.672123> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.931010, 0.088020, 0.354221,
		-0.361777, -0.093998, -0.927514,
		-0.048343, -0.991673, 0.119357,
		34.677612, 35.010658, 49.707932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.065022, 35.344624, 49.215107>,  <34.711452, 35.704830, 49.624382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.065022, 35.344624, 49.215107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156067, 35.053051, 49.473366>,  <34.210693, 34.878109, 49.628319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.156067, 35.053051, 49.473366>,  <34.065022, 35.344624, 49.215107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156067, 35.053051, 49.473366> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968396, -0.238899, 0.071673,
		0.102000, -0.641553, -0.760267,
		0.227609, -0.728929, 0.645645,
		34.224350, 34.834373, 49.667061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714272, 34.719288, 48.987568>,  <34.065022, 35.344624, 49.215107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714272, 34.719288, 48.987568> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816391, 34.689396, 49.373158>,  <33.877663, 34.671459, 49.604511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.816391, 34.689396, 49.373158>,  <33.714272, 34.719288, 48.987568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816391, 34.689396, 49.373158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965587, -0.070915, 0.250227,
		0.049663, -0.994680, -0.090255,
		0.255296, -0.074722, 0.963971,
		33.892979, 34.666977, 49.662350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369083, 34.077507, 49.329906>,  <33.714272, 34.719288, 48.987568>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369083, 34.077507, 49.329906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458893, 34.298859, 49.650745>,  <33.512779, 34.431671, 49.843246>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.458893, 34.298859, 49.650745>,  <33.369083, 34.077507, 49.329906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458893, 34.298859, 49.650745> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.959137, -0.019935, 0.282238,
		0.172176, -0.832687, 0.526295,
		0.224524, 0.553384, 0.802094,
		33.526249, 34.464874, 49.891373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.099144, 33.656853, 49.881092>,  <33.369083, 34.077507, 49.329906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.099144, 33.656853, 49.881092> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154358, 33.996414, 50.085175>,  <33.187485, 34.200150, 50.207623>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.154358, 33.996414, 50.085175>,  <33.099144, 33.656853, 49.881092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154358, 33.996414, 50.085175> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.913440, -0.090016, 0.396895,
		0.382852, -0.520828, 0.762996,
		0.138032, 0.848902, 0.510208,
		33.195766, 34.251083, 50.238235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.701061, 33.544937, 50.480976>,  <33.099144, 33.656853, 49.881092>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.701061, 33.544937, 50.480976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766529, 33.937191, 50.437973>,  <32.805809, 34.172546, 50.412170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.766529, 33.937191, 50.437973>,  <32.701061, 33.544937, 50.480976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766529, 33.937191, 50.437973> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840415, 0.195673, 0.505385,
		0.516636, 0.007633, 0.856171,
		0.163672, 0.980640, -0.107507,
		32.815632, 34.231384, 50.405720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.694023, 33.977222, 51.141323>,  <32.701061, 33.544937, 50.480976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.694023, 33.977222, 51.141323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549976, 34.194786, 50.838146>,  <32.463547, 34.325325, 50.656239>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.549976, 34.194786, 50.838146>,  <32.694023, 33.977222, 51.141323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.549976, 34.194786, 50.838146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851883, 0.139453, 0.504825,
		0.380275, 0.827478, 0.413123,
		-0.360120, 0.543905, -0.757945,
		32.441940, 34.357956, 50.610764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.225883, 34.395481, 51.411865>,  <32.694023, 33.977222, 51.141323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.225883, 34.395481, 51.411865> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148895, 34.496788, 51.032642>,  <32.102703, 34.557571, 50.805111>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.148895, 34.496788, 51.032642>,  <32.225883, 34.395481, 51.411865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.148895, 34.496788, 51.032642> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.974109, 0.067452, 0.215783,
		0.118600, 0.965041, 0.233732,
		-0.192474, 0.253272, -0.948054,
		32.091152, 34.572769, 50.748226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.815748, 34.925911, 51.498619>,  <32.225883, 34.395481, 51.411865>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.815748, 34.925911, 51.498619> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.737839, 34.832939, 51.117455>,  <31.691093, 34.777157, 50.888756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.737839, 34.832939, 51.117455>,  <31.815748, 34.925911, 51.498619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.737839, 34.832939, 51.117455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.979052, 0.104838, 0.174546,
		0.059332, 0.966946, -0.247981,
		-0.194774, -0.232430, -0.952911,
		31.679407, 34.763210, 50.831581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306797, 35.388264, 51.257900>,  <31.815748, 34.925911, 51.498619>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306797, 35.388264, 51.257900> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.288067, 35.077690, 51.006519>,  <31.276829, 34.891346, 50.855690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.288067, 35.077690, 51.006519>,  <31.306797, 35.388264, 51.257900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.288067, 35.077690, 51.006519> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.994824, -0.020550, 0.099511,
		-0.090179, 0.629861, -0.771455,
		-0.046825, -0.776436, -0.628454,
		31.274019, 34.844761, 50.817982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.652016, 35.540417, 50.809708>,  <31.306797, 35.388264, 51.257900>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.652016, 35.540417, 50.809708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730330, 35.150047, 50.771267>,  <30.777317, 34.915825, 50.748203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.730330, 35.150047, 50.771267>,  <30.652016, 35.540417, 50.809708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.730330, 35.150047, 50.771267> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960599, -0.210572, 0.181411,
		-0.197279, 0.056794, -0.978701,
		0.195784, -0.975928, -0.096097,
		30.789064, 34.857269, 50.742439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185799, 35.365639, 50.406517>,  <30.652016, 35.540417, 50.809708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185799, 35.365639, 50.406517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.276546, 35.032234, 50.608028>,  <30.330996, 34.832191, 50.728935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.276546, 35.032234, 50.608028>,  <30.185799, 35.365639, 50.406517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276546, 35.032234, 50.608028> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957390, -0.285775, -0.041671,
		0.178701, -0.472861, -0.862826,
		0.226869, -0.833508, 0.503781,
		30.344606, 34.782181, 50.759163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842081, 34.815132, 49.989613>,  <30.185799, 35.365639, 50.406517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842081, 34.815132, 49.989613> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.926636, 34.651005, 50.344456>,  <29.977369, 34.552528, 50.557362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.926636, 34.651005, 50.344456>,  <29.842081, 34.815132, 49.989613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926636, 34.651005, 50.344456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.962067, -0.247496, 0.114775,
		0.172460, -0.877716, -0.447071,
		0.211388, -0.410318, 0.887104,
		29.990051, 34.527908, 50.610588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.454954, 34.118885, 49.996212>,  <29.842081, 34.815132, 49.989613>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.454954, 34.118885, 49.996212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519695, 34.185390, 50.385296>,  <29.558540, 34.225296, 50.618744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.519695, 34.185390, 50.385296>,  <29.454954, 34.118885, 49.996212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.519695, 34.185390, 50.385296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.935252, -0.288613, 0.204956,
		0.314814, -0.942898, 0.108791,
		0.161854, 0.166270, 0.972706,
		29.568253, 34.235271, 50.677109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217203, 33.530067, 50.309704>,  <29.454954, 34.118885, 49.996212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217203, 33.530067, 50.309704> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248873, 33.796829, 50.606075>,  <29.267874, 33.956886, 50.783897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.248873, 33.796829, 50.606075>,  <29.217203, 33.530067, 50.309704>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.248873, 33.796829, 50.606075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.950920, -0.172511, 0.256885,
		0.299136, -0.724903, 0.620511,
		0.079172, 0.666901, 0.740929,
		29.272625, 33.996899, 50.828354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099691, 33.297970, 50.924553>,  <29.217203, 33.530067, 50.309704>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099691, 33.297970, 50.924553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.011652, 33.681053, 50.998695>,  <28.958828, 33.910904, 51.043182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.011652, 33.681053, 50.998695>,  <29.099691, 33.297970, 50.924553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.011652, 33.681053, 50.998695> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851080, -0.281387, 0.443266,
		0.476675, -0.060192, 0.877016,
		-0.220100, 0.957705, 0.185358,
		28.945621, 33.968365, 51.054302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908888, 33.226864, 51.574310>,  <29.099691, 33.297970, 50.924553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908888, 33.226864, 51.574310> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767262, 33.587173, 51.473721>,  <28.682285, 33.803360, 51.413368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.767262, 33.587173, 51.473721>,  <28.908888, 33.226864, 51.574310>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767262, 33.587173, 51.473721> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.873272, -0.222198, 0.433617,
		0.334715, 0.373134, 0.865296,
		-0.354065, 0.900777, -0.251475,
		28.661041, 33.857407, 51.398277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.661533, 33.584213, 52.129200>,  <28.908888, 33.226864, 51.574310>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.661533, 33.584213, 52.129200> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.472944, 33.765759, 51.826752>,  <28.359791, 33.874683, 51.645283>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.472944, 33.765759, 51.826752>,  <28.661533, 33.584213, 52.129200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.472944, 33.765759, 51.826752> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851703, -0.011969, 0.523888,
		0.228722, 0.890993, 0.392197,
		-0.471475, 0.453860, -0.756124,
		28.331501, 33.901917, 51.599915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291889, 34.157486, 52.411461>,  <28.661533, 33.584213, 52.129200>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291889, 34.157486, 52.411461> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093058, 34.062012, 52.077770>,  <27.973759, 34.004726, 51.877556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.093058, 34.062012, 52.077770>,  <28.291889, 34.157486, 52.411461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.093058, 34.062012, 52.077770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866857, 0.179071, 0.465287,
		0.038330, 0.954444, -0.295917,
		-0.497081, -0.238683, -0.834231,
		27.943933, 33.990406, 51.827499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.677158, 34.604393, 52.460354>,  <28.291889, 34.157486, 52.411461>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.677158, 34.604393, 52.460354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562819, 34.350254, 52.173405>,  <27.494215, 34.197769, 52.001236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.562819, 34.350254, 52.173405>,  <27.677158, 34.604393, 52.460354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.562819, 34.350254, 52.173405> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954876, 0.251844, 0.157439,
		0.080636, 0.730002, -0.678671,
		-0.285850, -0.635351, -0.717369,
		27.477064, 34.159649, 51.958195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.150541, 34.969536, 52.089062>,  <27.677158, 34.604393, 52.460354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.150541, 34.969536, 52.089062> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.095356, 34.596031, 51.956974>,  <27.062244, 34.371929, 51.877720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<27.095356, 34.596031, 51.956974>,  <27.150541, 34.969536, 52.089062>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.095356, 34.596031, 51.956974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988489, 0.150717, -0.013197,
		0.062094, 0.324601, -0.943811,
		-0.137965, -0.933766, -0.330222,
		27.053967, 34.315903, 51.857906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.792458, 34.927055, 51.419048>,  <27.150541, 34.969536, 52.089062>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.792458, 34.927055, 51.419048> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.743523, 34.581646, 51.614746>,  <26.714161, 34.374401, 51.732166>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.743523, 34.581646, 51.614746>,  <26.792458, 34.927055, 51.419048>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.743523, 34.581646, 51.614746> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991595, 0.085434, -0.097161,
		0.042102, -0.497023, -0.866716,
		-0.122338, -0.863522, 0.489248,
		26.706821, 34.322590, 51.761520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.385065, 34.677139, 50.936657>,  <26.792458, 34.927055, 51.419048>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.385065, 34.677139, 50.936657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.348948, 34.466995, 51.275085>,  <26.327276, 34.340908, 51.478142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<26.348948, 34.466995, 51.275085>,  <26.385065, 34.677139, 50.936657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.348948, 34.466995, 51.275085> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.992125, -0.026598, -0.122396,
		0.086806, -0.850464, -0.518821,
		-0.090294, -0.525360, 0.846076,
		26.321859, 34.309387, 51.528908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.906969, 34.109154, 50.834820>,  <26.385065, 34.677139, 50.936657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.906969, 34.109154, 50.834820> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.897402, 34.155094, 51.232059>,  <25.891663, 34.182659, 51.470402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.897402, 34.155094, 51.232059>,  <25.906969, 34.109154, 50.834820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.897402, 34.155094, 51.232059> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.998084, -0.059442, -0.017162,
		0.057060, -0.991603, 0.116051,
		-0.023917, 0.114849, 0.993095,
		25.890226, 34.189548, 51.529987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.247835, 33.901478, 51.066364>,  <25.906969, 34.109154, 50.834820>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.247835, 33.901478, 51.066364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.349051, 34.052387, 51.422710>,  <25.409781, 34.142933, 51.636517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<25.349051, 34.052387, 51.422710>,  <25.247835, 33.901478, 51.066364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.349051, 34.052387, 51.422710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965856, 0.045581, 0.255036,
		0.055608, -0.924985, 0.375913,
		0.253039, 0.377260, 0.890868,
		25.424963, 34.165569, 51.689968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.832443, 33.507580, 51.558475>,  <25.247835, 33.901478, 51.066364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.832443, 33.507580, 51.558475> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.928396, 33.858353, 51.725063>,  <24.985968, 34.068817, 51.825016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.928396, 33.858353, 51.725063>,  <24.832443, 33.507580, 51.558475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.928396, 33.858353, 51.725063> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.965458, 0.170544, 0.196990,
		0.101721, -0.449338, 0.887552,
		0.239881, 0.876933, 0.416469,
		25.000360, 34.121433, 51.850002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.617653, 33.491039, 52.148571>,  <24.832443, 33.507580, 51.558475>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.617653, 33.491039, 52.148571> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.646496, 33.888676, 52.116127>,  <24.663801, 34.127258, 52.096661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.646496, 33.888676, 52.116127>,  <24.617653, 33.491039, 52.148571>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.646496, 33.888676, 52.116127> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911645, 0.098676, 0.398956,
		0.404603, 0.045172, 0.913376,
		0.072107, 0.994094, -0.081106,
		24.668127, 34.186905, 52.091797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.547167, 33.827911, 52.777340>,  <24.617653, 33.491039, 52.148571>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.547167, 33.827911, 52.777340> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.419237, 34.099483, 52.512985>,  <24.342480, 34.262424, 52.354374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<24.419237, 34.099483, 52.512985>,  <24.547167, 33.827911, 52.777340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.419237, 34.099483, 52.512985> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.881914, 0.041641, 0.469567,
		0.346322, 0.733024, 0.585437,
		-0.319826, 0.678927, -0.660886,
		24.323290, 34.303162, 52.314720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 12

// nucleotide -1

// particle -1
sphere {
	<36.073059, 32.012306, 50.492016> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711937, 31.907892, 50.355309>,  <35.495262, 31.845243, 50.273285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.711937, 31.907892, 50.355309>,  <36.073059, 32.012306, 50.492016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711937, 31.907892, 50.355309> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424432, 0.668897, 0.610274,
		0.069301, 0.696014, -0.714675,
		-0.902804, -0.261038, -0.341766,
		35.441097, 31.829580, 50.252777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853195, 32.517456, 50.135769>,  <36.073059, 32.012306, 50.492016>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853195, 32.517456, 50.135769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570633, 32.303509, 50.321201>,  <35.401096, 32.175140, 50.432461>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.570633, 32.303509, 50.321201>,  <35.853195, 32.517456, 50.135769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570633, 32.303509, 50.321201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315944, 0.824362, 0.469689,
		-0.633377, 0.185326, -0.751324,
		-0.706408, -0.534867, 0.463579,
		35.358711, 32.143047, 50.460274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.200844, 32.930172, 50.130386>,  <35.853195, 32.517456, 50.135769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.200844, 32.930172, 50.130386> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185890, 32.655045, 50.420353>,  <35.176918, 32.489967, 50.594334>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.185890, 32.655045, 50.420353>,  <35.200844, 32.930172, 50.130386>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.185890, 32.655045, 50.420353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370431, 0.683283, 0.629210,
		-0.928107, -0.245008, -0.280336,
		-0.037387, -0.687819, 0.724919,
		35.174675, 32.448700, 50.637829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.700123, 33.196983, 50.657555>,  <35.200844, 32.930172, 50.130386>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.700123, 33.196983, 50.657555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879059, 32.904354, 50.863346>,  <34.986420, 32.728775, 50.986820>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.879059, 32.904354, 50.863346>,  <34.700123, 33.196983, 50.657555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.879059, 32.904354, 50.863346> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264401, 0.441356, 0.857494,
		-0.854387, -0.519622, 0.004010,
		0.447343, -0.731572, 0.514478,
		35.013260, 32.684883, 51.017689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198158, 33.034904, 51.207108>,  <34.700123, 33.196983, 50.657555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198158, 33.034904, 51.207108> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563671, 32.908066, 51.308662>,  <34.782978, 32.831963, 51.369595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.563671, 32.908066, 51.308662>,  <34.198158, 33.034904, 51.207108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.563671, 32.908066, 51.308662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077470, 0.477495, 0.875212,
		-0.398759, -0.819418, 0.411758,
		0.913778, -0.317099, 0.253886,
		34.837803, 32.812935, 51.384827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038631, 32.725681, 51.855358>,  <34.198158, 33.034904, 51.207108>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038631, 32.725681, 51.855358> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429260, 32.809475, 51.835640>,  <34.663635, 32.859753, 51.823811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.429260, 32.809475, 51.835640>,  <34.038631, 32.725681, 51.855358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.429260, 32.809475, 51.835640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080958, 0.569835, 0.817762,
		0.199396, -0.794610, 0.573442,
		0.976569, 0.209483, -0.049293,
		34.722229, 32.872318, 51.820850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.319893, 32.639553, 52.538834>,  <34.038631, 32.725681, 51.855358>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.319893, 32.639553, 52.538834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585293, 32.868092, 52.345615>,  <34.744534, 33.005215, 52.229683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.585293, 32.868092, 52.345615>,  <34.319893, 32.639553, 52.538834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.585293, 32.868092, 52.345615> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024310, 0.661756, 0.749325,
		0.747782, -0.485433, 0.452964,
		0.663498, 0.571343, -0.483049,
		34.784344, 33.039494, 52.200699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.825031, 32.747860, 52.974510>,  <34.319893, 32.639553, 52.538834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.825031, 32.747860, 52.974510> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905846, 33.041985, 52.715744>,  <34.954334, 33.218460, 52.560486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.905846, 33.041985, 52.715744>,  <34.825031, 32.747860, 52.974510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.905846, 33.041985, 52.715744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082487, 0.670964, 0.736887,
		0.975899, -0.095514, 0.196211,
		0.202033, 0.735312, -0.646915,
		34.966457, 33.262577, 52.521671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.367455, 33.112366, 53.289265>,  <34.825031, 32.747860, 52.974510>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.367455, 33.112366, 53.289265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181595, 33.339748, 53.017689>,  <35.070080, 33.476177, 52.854744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.181595, 33.339748, 53.017689>,  <35.367455, 33.112366, 53.289265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181595, 33.339748, 53.017689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173219, 0.693568, 0.699255,
		0.868385, 0.442516, -0.223802,
		-0.464654, 0.568456, -0.678936,
		35.042198, 33.510284, 52.814007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.670395, 33.735313, 53.354752>,  <35.367455, 33.112366, 53.289265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.670395, 33.735313, 53.354752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313576, 33.782616, 53.180271>,  <35.099483, 33.810997, 53.075584>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.313576, 33.782616, 53.180271>,  <35.670395, 33.735313, 53.354752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.313576, 33.782616, 53.180271> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181274, 0.790502, 0.585018,
		0.413998, 0.600934, -0.683728,
		-0.892046, 0.118255, -0.436200,
		35.045963, 33.818092, 53.049412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508514, 34.517708, 53.297466>,  <35.670395, 33.735313, 53.354752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508514, 34.517708, 53.297466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139286, 34.371979, 53.248135>,  <34.917747, 34.284542, 53.218536>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.139286, 34.371979, 53.248135>,  <35.508514, 34.517708, 53.297466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139286, 34.371979, 53.248135> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361709, 0.713197, 0.600430,
		-0.130795, 0.598848, -0.790111,
		-0.923071, -0.364323, -0.123326,
		34.862366, 34.262680, 53.211136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.101364, 35.104515, 53.285793>,  <35.508514, 34.517708, 53.297466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.101364, 35.104515, 53.285793> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867424, 34.800564, 53.399311>,  <34.727058, 34.618195, 53.467422>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.867424, 34.800564, 53.399311>,  <35.101364, 35.104515, 53.285793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.867424, 34.800564, 53.399311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340229, 0.547416, 0.764579,
		-0.736338, 0.350609, -0.578688,
		-0.584851, -0.759875, 0.283796,
		34.691967, 34.572601, 53.484451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.067951, 35.704201, 52.832493>,  <35.101364, 35.104515, 53.285793>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.067951, 35.704201, 52.832493> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387093, 35.835590, 53.034698>,  <35.578575, 35.914425, 53.156021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.387093, 35.835590, 53.034698>,  <35.067951, 35.704201, 52.832493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.387093, 35.835590, 53.034698> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598352, -0.533793, -0.597528,
		0.073565, 0.779210, -0.622431,
		0.797849, 0.328475, 0.505510,
		35.626446, 35.934132, 53.186352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.481422, 35.466415, 52.426754>,  <35.067951, 35.704201, 52.832493>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.481422, 35.466415, 52.426754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717716, 35.640137, 52.698757>,  <35.859493, 35.744370, 52.861961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.717716, 35.640137, 52.698757>,  <35.481422, 35.466415, 52.426754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.717716, 35.640137, 52.698757> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805974, -0.277993, -0.522615,
		-0.037935, 0.856798, -0.514255,
		0.590735, 0.434301, 0.680011,
		35.894936, 35.770428, 52.902760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.892673, 35.926956, 52.037579>,  <35.481422, 35.466415, 52.426754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.892673, 35.926956, 52.037579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098083, 35.874786, 52.376820>,  <36.221329, 35.843483, 52.580364>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.098083, 35.874786, 52.376820>,  <35.892673, 35.926956, 52.037579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.098083, 35.874786, 52.376820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839728, -0.126906, -0.527970,
		0.176492, 0.983302, 0.044355,
		0.513525, -0.130428, 0.848104,
		36.252140, 35.835659, 52.631252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.516224, 36.407993, 51.994907>,  <35.892673, 35.926956, 52.037579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.516224, 36.407993, 51.994907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581280, 36.117428, 52.262001>,  <36.620312, 35.943089, 52.422256>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.581280, 36.117428, 52.262001>,  <36.516224, 36.407993, 51.994907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.581280, 36.117428, 52.262001> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825349, -0.270692, -0.495505,
		0.540692, 0.631704, 0.555520,
		0.162638, -0.726413, 0.667737,
		36.630070, 35.899506, 52.462322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269623, 36.505608, 52.301762>,  <36.516224, 36.407993, 51.994907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269623, 36.505608, 52.301762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149708, 36.124008, 52.303627>,  <37.077759, 35.895050, 52.304745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.149708, 36.124008, 52.303627>,  <37.269623, 36.505608, 52.301762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.149708, 36.124008, 52.303627> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867703, -0.274692, -0.414291,
		0.396513, -0.120150, 0.910133,
		-0.299783, -0.953996, 0.004665,
		37.059772, 35.837811, 52.305027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.943867, 36.099396, 52.247299>,  <37.269623, 36.505608, 52.301762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.943867, 36.099396, 52.247299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664948, 35.823608, 52.168907>,  <37.497597, 35.658134, 52.121872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.664948, 35.823608, 52.168907>,  <37.943867, 36.099396, 52.247299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.664948, 35.823608, 52.168907> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572956, -0.371846, -0.730378,
		0.430701, -0.621577, 0.654323,
		-0.697293, -0.689473, -0.195982,
		37.455761, 35.616768, 52.110111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261990, 35.460220, 52.243652>,  <37.943867, 36.099396, 52.247299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261990, 35.460220, 52.243652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931984, 35.405357, 52.024368>,  <37.733978, 35.372440, 51.892796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.931984, 35.405357, 52.024368>,  <38.261990, 35.460220, 52.243652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.931984, 35.405357, 52.024368> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549429, -0.421621, -0.721362,
		-0.132200, -0.896339, 0.423201,
		-0.825016, -0.137154, -0.548213,
		37.684479, 35.364212, 51.859905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347786, 34.801411, 51.911915>,  <38.261990, 35.460220, 52.243652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347786, 34.801411, 51.911915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061207, 34.978664, 51.696384>,  <37.889259, 35.085018, 51.567066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.061207, 34.978664, 51.696384>,  <38.347786, 34.801411, 51.911915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.061207, 34.978664, 51.696384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461596, -0.278019, -0.842398,
		-0.523100, -0.852254, -0.005364,
		-0.716446, 0.443134, -0.538829,
		37.846272, 35.111603, 51.534737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.019154, 34.271454, 51.525455>,  <38.347786, 34.801411, 51.911915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.019154, 34.271454, 51.525455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949963, 34.620712, 51.343159>,  <37.908447, 34.830265, 51.233780>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.949963, 34.620712, 51.343159>,  <38.019154, 34.271454, 51.525455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.949963, 34.620712, 51.343159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338938, -0.381684, -0.859906,
		-0.924770, -0.303214, -0.229918,
		-0.172979, 0.873143, -0.455740,
		37.898067, 34.882656, 51.206436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.644276, 34.147621, 50.871231>,  <38.019154, 34.271454, 51.525455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.644276, 34.147621, 50.871231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817741, 34.507809, 50.858044>,  <37.921822, 34.723923, 50.850132>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.817741, 34.507809, 50.858044>,  <37.644276, 34.147621, 50.871231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.817741, 34.507809, 50.858044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256354, -0.158365, -0.953521,
		-0.863839, 0.405058, -0.299516,
		0.433664, 0.900471, -0.032964,
		37.947842, 34.777950, 50.848156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.439404, 34.441505, 50.255508>,  <37.644276, 34.147621, 50.871231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.439404, 34.441505, 50.255508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753910, 34.671947, 50.344841>,  <37.942616, 34.810215, 50.398441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.753910, 34.671947, 50.344841>,  <37.439404, 34.441505, 50.255508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753910, 34.671947, 50.344841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350438, -0.118099, -0.929110,
		-0.508893, 0.808796, -0.294748,
		0.786270, 0.576109, 0.223333,
		37.989792, 34.844780, 50.411842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.654808, 34.704845, 49.629101>,  <37.439404, 34.441505, 50.255508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.654808, 34.704845, 49.629101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977375, 34.806618, 49.842628>,  <38.170914, 34.867680, 49.970745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.977375, 34.806618, 49.842628>,  <37.654808, 34.704845, 49.629101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.977375, 34.806618, 49.842628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571824, -0.105458, -0.813570,
		-0.150700, 0.961325, -0.230530,
		0.806416, 0.254428, 0.533816,
		38.219299, 34.882946, 50.002773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.903427, 35.234890, 49.297569>,  <37.654808, 34.704845, 49.629101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.903427, 35.234890, 49.297569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203232, 35.084190, 49.515301>,  <38.383114, 34.993771, 49.645939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.203232, 35.084190, 49.515301>,  <37.903427, 35.234890, 49.297569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.203232, 35.084190, 49.515301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616379, 0.097240, -0.781422,
		0.241468, 0.921198, 0.305102,
		0.749513, -0.376747, 0.544327,
		38.428085, 34.971165, 49.678600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.571686, 35.593445, 49.053715>,  <37.903427, 35.234890, 49.297569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.571686, 35.593445, 49.053715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676979, 35.270882, 49.265530>,  <38.740154, 35.077343, 49.392616>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.676979, 35.270882, 49.265530>,  <38.571686, 35.593445, 49.053715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.676979, 35.270882, 49.265530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858839, -0.054135, -0.509377,
		0.439435, 0.588870, 0.678328,
		0.263236, -0.806413, 0.529533,
		38.755951, 35.028957, 49.424389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.296944, 36.308769, 49.033730>,  <38.571686, 35.593445, 49.053715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.296944, 36.308769, 49.033730> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001495, 36.412834, 48.784969>,  <37.824226, 36.475273, 48.635712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.001495, 36.412834, 48.784969>,  <38.296944, 36.308769, 49.033730>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.001495, 36.412834, 48.784969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193512, 0.801882, 0.565277,
		0.645755, 0.537869, -0.541940,
		-0.738617, 0.260158, -0.621903,
		37.779911, 36.490883, 48.598400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403755, 36.942558, 48.901035>,  <38.296944, 36.308769, 49.033730>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403755, 36.942558, 48.901035> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016647, 36.856068, 48.849403>,  <37.784382, 36.804173, 48.818424>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.016647, 36.856068, 48.849403>,  <38.403755, 36.942558, 48.901035>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.016647, 36.856068, 48.849403> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251748, 0.818081, 0.517075,
		-0.006204, 0.532907, -0.846151,
		-0.967773, -0.216225, -0.129083,
		37.726315, 36.791199, 48.810677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.076580, 37.547245, 48.634174>,  <38.403755, 36.942558, 48.901035>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.076580, 37.547245, 48.634174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789352, 37.318043, 48.792179>,  <37.617016, 37.180519, 48.886982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.789352, 37.318043, 48.792179>,  <38.076580, 37.547245, 48.634174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789352, 37.318043, 48.792179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385536, 0.800030, 0.459690,
		-0.579429, 0.177798, -0.795393,
		-0.718070, -0.573010, 0.395013,
		37.573933, 37.146141, 48.910683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.550751, 38.053482, 48.601154>,  <38.076580, 37.547245, 48.634174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.550751, 38.053482, 48.601154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421139, 37.758698, 48.838436>,  <37.343372, 37.581825, 48.980804>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.421139, 37.758698, 48.838436>,  <37.550751, 38.053482, 48.601154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.421139, 37.758698, 48.838436> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643480, 0.631335, 0.432838,
		-0.693495, -0.241460, -0.678795,
		-0.324034, -0.736962, 0.593202,
		37.323929, 37.537609, 49.016396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.875896, 38.297623, 48.676167>,  <37.550751, 38.053482, 48.601154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.875896, 38.297623, 48.676167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903423, 38.021305, 48.964073>,  <36.919941, 37.855515, 49.136818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.903423, 38.021305, 48.964073>,  <36.875896, 38.297623, 48.676167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.903423, 38.021305, 48.964073> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771988, 0.420113, 0.477011,
		-0.631901, -0.588478, -0.504376,
		0.068816, -0.690796, 0.719768,
		36.924068, 37.814068, 49.180004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.264507, 37.940449, 48.864429>,  <36.875896, 38.297623, 48.676167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.264507, 37.940449, 48.864429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456951, 37.932362, 49.215000>,  <36.572418, 37.927509, 49.425343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.456951, 37.932362, 49.215000>,  <36.264507, 37.940449, 48.864429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456951, 37.932362, 49.215000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737255, 0.531588, 0.416977,
		-0.474326, -0.846762, 0.240851,
		0.481114, -0.020215, 0.876425,
		36.601284, 37.926296, 49.477928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.752121, 38.060856, 49.350128>,  <36.264507, 37.940449, 48.864429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.752121, 38.060856, 49.350128> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066162, 38.129856, 49.588070>,  <36.254589, 38.171257, 49.730835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.066162, 38.129856, 49.588070>,  <35.752121, 38.060856, 49.350128>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.066162, 38.129856, 49.588070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567065, 0.586456, 0.578366,
		-0.249089, -0.791400, 0.558248,
		0.785106, 0.172498, 0.594855,
		36.301693, 38.181606, 49.766525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582321, 37.856831, 50.123222>,  <35.752121, 38.060856, 49.350128>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582321, 37.856831, 50.123222> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872986, 38.128052, 50.167423>,  <36.047386, 38.290783, 50.193943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.872986, 38.128052, 50.167423>,  <35.582321, 37.856831, 50.123222>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872986, 38.128052, 50.167423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542613, 0.467825, 0.697647,
		0.421341, -0.566916, 0.707869,
		0.726665, 0.678046, 0.110502,
		36.090984, 38.331467, 50.200573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579781, 37.956303, 50.787048>,  <35.582321, 37.856831, 50.123222>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579781, 37.956303, 50.787048> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.796638, 38.272850, 50.674042>,  <35.926754, 38.462776, 50.606239>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.796638, 38.272850, 50.674042>,  <35.579781, 37.956303, 50.787048>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.796638, 38.272850, 50.674042> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401671, 0.539382, 0.740086,
		0.738061, -0.287760, 0.610295,
		0.542149, 0.791367, -0.282512,
		35.959282, 38.510262, 50.589287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.671623, 38.267101, 51.415588>,  <35.579781, 37.956303, 50.787048>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.671623, 38.267101, 51.415588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722282, 38.562092, 51.150230>,  <35.752678, 38.739086, 50.991016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.722282, 38.562092, 51.150230>,  <35.671623, 38.267101, 51.415588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.722282, 38.562092, 51.150230> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432503, 0.642913, 0.632142,
		0.892693, 0.206862, 0.400383,
		0.126645, 0.737476, -0.663392,
		35.760277, 38.783337, 50.951214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.028179, 38.845901, 51.717541>,  <35.671623, 38.267101, 51.415588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.028179, 38.845901, 51.717541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821571, 38.990730, 51.407158>,  <35.697605, 39.077629, 51.220928>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.821571, 38.990730, 51.407158>,  <36.028179, 38.845901, 51.717541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.821571, 38.990730, 51.407158> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429103, 0.674751, 0.600485,
		0.740996, 0.643129, -0.193157,
		-0.516522, 0.362072, -0.775957,
		35.666615, 39.099354, 51.174370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.063805, 39.621906, 51.764046>,  <36.028179, 38.845901, 51.717541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.063805, 39.621906, 51.764046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750603, 39.503082, 51.545448>,  <35.562679, 39.431789, 51.414291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.750603, 39.503082, 51.545448>,  <36.063805, 39.621906, 51.764046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.750603, 39.503082, 51.545448> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608332, 0.548958, 0.573216,
		0.129724, 0.781282, -0.610548,
		-0.783009, -0.297056, -0.546492,
		35.515701, 39.413967, 51.381500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.637199, 40.178177, 51.763313>,  <36.063805, 39.621906, 51.764046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.637199, 40.178177, 51.763313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408001, 39.877178, 51.633434>,  <35.270485, 39.696579, 51.555508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.408001, 39.877178, 51.633434>,  <35.637199, 40.178177, 51.763313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408001, 39.877178, 51.633434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.785147, 0.390411, 0.480752,
		-0.235000, 0.530402, -0.814524,
		-0.572991, -0.752498, -0.324697,
		35.236103, 39.651428, 51.536026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.090450, 40.393066, 51.409473>,  <35.637199, 40.178177, 51.763313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.090450, 40.393066, 51.409473> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953831, 40.036964, 51.529995>,  <34.871861, 39.823303, 51.602310>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.953831, 40.036964, 51.529995>,  <35.090450, 40.393066, 51.409473>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953831, 40.036964, 51.529995> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861238, 0.424815, 0.278929,
		-0.376319, -0.164230, -0.911818,
		-0.341545, -0.890259, 0.301307,
		34.851368, 39.769886, 51.620388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.361198, 40.403446, 51.209408>,  <35.090450, 40.393066, 51.409473>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.361198, 40.403446, 51.209408> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428539, 40.119259, 51.482727>,  <34.468945, 39.948746, 51.646717>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.428539, 40.119259, 51.482727>,  <34.361198, 40.403446, 51.209408>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428539, 40.119259, 51.482727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937520, 0.098722, 0.333631,
		-0.304491, -0.696771, -0.649458,
		0.168348, -0.710468, 0.683297,
		34.479042, 39.906120, 51.687717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.676090, 40.041664, 51.336994>,  <34.361198, 40.403446, 51.209408>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.676090, 40.041664, 51.336994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916561, 39.978115, 51.650257>,  <34.060844, 39.939983, 51.838215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.916561, 39.978115, 51.650257>,  <33.676090, 40.041664, 51.336994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916561, 39.978115, 51.650257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.768661, 0.153005, 0.621087,
		-0.218504, -0.975371, -0.030139,
		0.601178, -0.158877, 0.783162,
		34.096916, 39.930454, 51.885204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.246727, 39.700947, 51.804626>,  <33.676090, 40.041664, 51.336994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.246727, 39.700947, 51.804626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551727, 39.787155, 52.048641>,  <33.734726, 39.838879, 52.195049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.551727, 39.787155, 52.048641>,  <33.246727, 39.700947, 51.804626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551727, 39.787155, 52.048641> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646979, 0.248702, 0.720809,
		0.003633, -0.944297, 0.329073,
		0.762499, 0.215522, 0.610037,
		33.780476, 39.851810, 52.231651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.097881, 39.495071, 52.448784>,  <33.246727, 39.700947, 51.804626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.097881, 39.495071, 52.448784> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382034, 39.766468, 52.523636>,  <33.552525, 39.929306, 52.568546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.382034, 39.766468, 52.523636>,  <33.097881, 39.495071, 52.448784>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.382034, 39.766468, 52.523636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589367, 0.428120, 0.685098,
		0.384713, -0.596971, 0.704004,
		0.710382, 0.678483, 0.187131,
		33.595146, 39.970013, 52.579773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.160378, 39.560844, 53.187897>,  <33.097881, 39.495071, 52.448784>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.160378, 39.560844, 53.187897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351028, 39.885918, 53.053810>,  <33.465420, 40.080963, 52.973358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.351028, 39.885918, 53.053810>,  <33.160378, 39.560844, 53.187897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.351028, 39.885918, 53.053810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413399, 0.543725, 0.730387,
		0.775838, -0.209547, 0.595118,
		0.476630, 0.812683, -0.335216,
		33.494019, 40.129723, 52.953247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.469444, 39.827450, 53.744526>,  <33.160378, 39.560844, 53.187897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.469444, 39.827450, 53.744526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455395, 40.144283, 53.500763>,  <33.446964, 40.334381, 53.354507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.455395, 40.144283, 53.500763>,  <33.469444, 39.827450, 53.744526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455395, 40.144283, 53.500763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371917, 0.555623, 0.743614,
		0.927601, 0.252767, 0.275072,
		-0.035125, 0.792081, -0.609404,
		33.444859, 40.381908, 53.317940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727760, 40.416622, 54.129772>,  <33.469444, 39.827450, 53.744526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727760, 40.416622, 54.129772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531475, 40.578392, 53.821060>,  <33.413704, 40.675453, 53.635834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.531475, 40.578392, 53.821060>,  <33.727760, 40.416622, 54.129772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.531475, 40.578392, 53.821060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375431, 0.701177, 0.606138,
		0.786288, 0.587191, -0.192245,
		-0.490716, 0.404424, -0.771777,
		33.384262, 40.699718, 53.589527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999981, 41.153206, 54.195511>,  <33.727760, 40.416622, 54.129772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999981, 41.153206, 54.195511> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659851, 41.110039, 53.989479>,  <33.455772, 41.084141, 53.865860>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.659851, 41.110039, 53.989479>,  <33.999981, 41.153206, 54.195511>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659851, 41.110039, 53.989479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357790, 0.836299, 0.415440,
		0.385931, 0.537549, -0.749733,
		-0.850320, -0.107915, -0.515083,
		33.404755, 41.077663, 53.834953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.876175, 41.784008, 54.077705>,  <33.999981, 41.153206, 54.195511>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.876175, 41.784008, 54.077705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522606, 41.620327, 53.987167>,  <33.310463, 41.522118, 53.932846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.522606, 41.620327, 53.987167>,  <33.876175, 41.784008, 54.077705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.522606, 41.620327, 53.987167> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460388, 0.846352, 0.267825,
		0.081973, 0.340944, -0.936503,
		-0.883925, -0.409200, -0.226345,
		33.257427, 41.497566, 53.919262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586338, 42.249695, 53.707958>,  <33.876175, 41.784008, 54.077705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586338, 42.249695, 53.707958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285545, 42.017536, 53.832958>,  <33.105068, 41.878239, 53.907959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.285545, 42.017536, 53.832958>,  <33.586338, 42.249695, 53.707958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285545, 42.017536, 53.832958> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501266, 0.811361, 0.300707,
		-0.428080, 0.069482, -0.901066,
		-0.751984, -0.580401, 0.312499,
		33.059952, 41.843414, 53.926708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055557, 42.585945, 53.481007>,  <33.586338, 42.249695, 53.707958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055557, 42.585945, 53.481007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910217, 42.346798, 53.766815>,  <32.823013, 42.203312, 53.938301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.910217, 42.346798, 53.766815>,  <33.055557, 42.585945, 53.481007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.910217, 42.346798, 53.766815> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605547, 0.734393, 0.306563,
		-0.708020, -0.321286, -0.628874,
		-0.363346, -0.597866, 0.714518,
		32.801212, 42.167439, 53.981171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.399063, 42.796867, 53.494175>,  <33.055557, 42.585945, 53.481007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.399063, 42.796867, 53.494175> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 42.601135, 53.839497>,  <32.478134, 42.483696, 54.046688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.448483, 42.601135, 53.839497>,  <32.399063, 42.796867, 53.494175>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.448483, 42.601135, 53.839497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752904, 0.520493, 0.402769,
		-0.646430, -0.699747, -0.304110,
		0.123550, -0.489327, 0.863304,
		32.485546, 42.454338, 54.098488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.680597, 42.584652, 53.671432>,  <32.399063, 42.796867, 53.494175>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.680597, 42.584652, 53.671432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909872, 42.576069, 53.999088>,  <32.047436, 42.570919, 54.195683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.909872, 42.576069, 53.999088>,  <31.680597, 42.584652, 53.671432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.909872, 42.576069, 53.999088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641117, 0.610821, 0.464614,
		-0.510320, -0.791478, 0.336358,
		0.573187, -0.021457, 0.819144,
		32.081829, 42.569633, 54.244831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219448, 42.460922, 54.122391>,  <31.680597, 42.584652, 53.671432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219448, 42.460922, 54.122391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531404, 42.631020, 54.306103>,  <31.718578, 42.733078, 54.416328>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531404, 42.631020, 54.306103>,  <31.219448, 42.460922, 54.122391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531404, 42.631020, 54.306103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625758, 0.513333, 0.587296,
		0.013980, -0.745425, 0.666443,
		0.779892, 0.425242, 0.459279,
		31.765371, 42.758591, 54.443886>
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
