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
	<42.777084, 32.520546, 23.056589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144432, 32.674782, 23.021008>,  <43.364841, 32.767323, 22.999659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.144432, 32.674782, 23.021008>,  <42.777084, 32.520546, 23.056589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.144432, 32.674782, 23.021008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182776, -0.612700, -0.768890,
		-0.350983, 0.689867, -0.633163,
		0.918370, 0.385594, -0.088956,
		43.419945, 32.790459, 22.994320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.845398, 32.848576, 22.406740>,  <42.777084, 32.520546, 23.056589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.845398, 32.848576, 22.406740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184551, 32.716709, 22.572830>,  <43.388042, 32.637589, 22.672483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184551, 32.716709, 22.572830>,  <42.845398, 32.848576, 22.406740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184551, 32.716709, 22.572830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244143, -0.452418, -0.857737,
		0.470624, 0.828635, -0.303111,
		0.847884, -0.329669, 0.415225,
		43.438915, 32.617809, 22.697397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.438244, 33.210133, 22.170458>,  <42.845398, 32.848576, 22.406740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.438244, 33.210133, 22.170458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477371, 32.822906, 22.262783>,  <43.500847, 32.590569, 22.318178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.477371, 32.822906, 22.262783>,  <43.438244, 33.210133, 22.170458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477371, 32.822906, 22.262783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285429, -0.194893, -0.938375,
		0.953395, 0.157667, 0.257252,
		0.097815, -0.968069, 0.230812,
		43.506714, 32.532486, 22.332027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.065784, 32.988544, 21.799858>,  <43.438244, 33.210133, 22.170458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.065784, 32.988544, 21.799858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851017, 32.663834, 21.891716>,  <43.722157, 32.469006, 21.946831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.851017, 32.663834, 21.891716>,  <44.065784, 32.988544, 21.799858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.851017, 32.663834, 21.891716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298973, -0.437632, -0.847994,
		0.788883, -0.386644, 0.477671,
		-0.536916, -0.811779, 0.229645,
		43.689941, 32.420300, 21.960609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.489101, 32.341496, 21.871960>,  <44.065784, 32.988544, 21.799858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.489101, 32.341496, 21.871960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117168, 32.297531, 21.731480>,  <43.894009, 32.271152, 21.647192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.117168, 32.297531, 21.731480>,  <44.489101, 32.341496, 21.871960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.117168, 32.297531, 21.731480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366048, -0.178211, -0.913373,
		0.037800, -0.977835, 0.205937,
		-0.929828, -0.109908, -0.351198,
		43.838219, 32.264561, 21.626120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.469402, 31.765745, 21.343769>,  <44.489101, 32.341496, 21.871960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.469402, 31.765745, 21.343769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168884, 32.022285, 21.281502>,  <43.988575, 32.176208, 21.244143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168884, 32.022285, 21.281502>,  <44.469402, 31.765745, 21.343769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168884, 32.022285, 21.281502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266661, 0.079237, -0.960528,
		-0.603699, -0.763146, -0.230553,
		-0.751292, 0.641349, -0.155666,
		43.943497, 32.214691, 21.234802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.252602, 31.472609, 20.800983>,  <44.469402, 31.765745, 21.343769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.252602, 31.472609, 20.800983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109856, 31.844700, 20.835209>,  <44.024208, 32.067955, 20.855743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.109856, 31.844700, 20.835209>,  <44.252602, 31.472609, 20.800983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.109856, 31.844700, 20.835209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388512, 0.231094, -0.891994,
		-0.849532, -0.285081, -0.443875,
		-0.356867, 0.930228, 0.085564,
		44.002796, 32.123768, 20.860878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.821220, 31.623600, 20.275934>,  <44.252602, 31.472609, 20.800983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.821220, 31.623600, 20.275934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959179, 31.976929, 20.402924>,  <44.041954, 32.188927, 20.479116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.959179, 31.976929, 20.402924>,  <43.821220, 31.623600, 20.275934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959179, 31.976929, 20.402924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235098, 0.246152, -0.940286,
		-0.908722, 0.398939, -0.122770,
		0.344896, 0.883322, 0.317473,
		44.062649, 32.241924, 20.498165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.581261, 32.110836, 19.643349>,  <43.821220, 31.623600, 20.275934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.581261, 32.110836, 19.643349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879181, 32.270058, 19.857571>,  <44.057934, 32.365589, 19.986103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.879181, 32.270058, 19.857571>,  <43.581261, 32.110836, 19.643349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.879181, 32.270058, 19.857571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497913, 0.202791, -0.843183,
		-0.444239, 0.894667, -0.047157,
		0.744805, 0.398055, 0.535554,
		44.102623, 32.389473, 20.018236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.967834, 32.514919, 19.156355>,  <43.581261, 32.110836, 19.643349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.967834, 32.514919, 19.156355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228790, 32.565006, 19.455341>,  <44.385365, 32.595058, 19.634733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.228790, 32.565006, 19.455341>,  <43.967834, 32.514919, 19.156355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.228790, 32.565006, 19.455341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717969, 0.213732, -0.662449,
		-0.242708, 0.968834, 0.049534,
		0.652390, 0.125218, 0.747468,
		44.424507, 32.602573, 19.679581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.340092, 33.176960, 19.075127>,  <43.967834, 32.514919, 19.156355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.340092, 33.176960, 19.075127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582138, 32.946312, 19.294704>,  <44.727367, 32.807922, 19.426451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.582138, 32.946312, 19.294704>,  <44.340092, 33.176960, 19.075127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.582138, 32.946312, 19.294704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679923, 0.015593, -0.733118,
		0.414170, 0.816864, 0.401492,
		0.605118, -0.576619, 0.548946,
		44.763672, 32.773327, 19.459389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041729, 33.492058, 19.146158>,  <44.340092, 33.176960, 19.075127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041729, 33.492058, 19.146158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097149, 33.102180, 19.216328>,  <45.130402, 32.868256, 19.258429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.097149, 33.102180, 19.216328>,  <45.041729, 33.492058, 19.146158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.097149, 33.102180, 19.216328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736863, -0.016889, -0.675831,
		0.661692, 0.222902, 0.715876,
		0.138554, -0.974694, 0.175423,
		45.138714, 32.809772, 19.268955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.717667, 33.470528, 19.173662>,  <45.041729, 33.492058, 19.146158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.717667, 33.470528, 19.173662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574551, 33.107090, 19.087452>,  <45.488682, 32.889027, 19.035727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574551, 33.107090, 19.087452>,  <45.717667, 33.470528, 19.173662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574551, 33.107090, 19.087452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716366, -0.119014, -0.687499,
		0.599006, -0.400372, 0.693465,
		-0.357788, -0.908591, -0.215523,
		45.467213, 32.834511, 19.022795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.340519, 33.028992, 19.034359>,  <45.717667, 33.470528, 19.173662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.340519, 33.028992, 19.034359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042747, 32.832436, 18.853531>,  <45.864086, 32.714500, 18.745035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.042747, 32.832436, 18.853531>,  <46.340519, 33.028992, 19.034359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.042747, 32.832436, 18.853531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579595, -0.139404, -0.802893,
		0.331515, -0.859709, 0.388584,
		-0.744424, -0.491392, -0.452069,
		45.819420, 32.685017, 18.717911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723122, 32.548363, 18.620478>,  <46.340519, 33.028992, 19.034359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723122, 32.548363, 18.620478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374249, 32.470505, 18.440964>,  <46.164925, 32.423790, 18.333256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.374249, 32.470505, 18.440964>,  <46.723122, 32.548363, 18.620478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374249, 32.470505, 18.440964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473526, -0.105717, -0.874412,
		0.122757, -0.975160, 0.184375,
		-0.872183, -0.194647, -0.448786,
		46.112595, 32.412109, 18.306328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.809566, 32.053978, 18.159851>,  <46.723122, 32.548363, 18.620478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.809566, 32.053978, 18.159851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464245, 32.210293, 18.032108>,  <46.257053, 32.304081, 17.955463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.464245, 32.210293, 18.032108>,  <46.809566, 32.053978, 18.159851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.464245, 32.210293, 18.032108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266863, -0.183610, -0.946082,
		-0.428355, -0.901982, 0.054224,
		-0.863305, 0.390789, -0.319356,
		46.205254, 32.327530, 17.936302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.472855, 31.524132, 17.805071>,  <46.809566, 32.053978, 18.159851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.472855, 31.524132, 17.805071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344528, 31.877682, 17.668930>,  <46.267532, 32.089813, 17.587246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.344528, 31.877682, 17.668930>,  <46.472855, 31.524132, 17.805071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.344528, 31.877682, 17.668930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219256, -0.280280, -0.934543,
		-0.921414, -0.374440, -0.103877,
		-0.320816, 0.883876, -0.340352,
		46.248283, 32.142845, 17.566824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.102833, 31.347837, 17.291992>,  <46.472855, 31.524132, 17.805071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.102833, 31.347837, 17.291992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236053, 31.720444, 17.233536>,  <46.315987, 31.944008, 17.198462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236053, 31.720444, 17.233536>,  <46.102833, 31.347837, 17.291992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236053, 31.720444, 17.233536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210646, -0.224577, -0.951416,
		-0.919079, 0.286083, -0.271015,
		0.333048, 0.931516, -0.146141,
		46.335968, 31.999899, 17.189693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.959782, 31.520517, 16.573555>,  <46.102833, 31.347837, 17.291992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.959782, 31.520517, 16.573555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236931, 31.792999, 16.668114>,  <46.403221, 31.956488, 16.724850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.236931, 31.792999, 16.668114>,  <45.959782, 31.520517, 16.573555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.236931, 31.792999, 16.668114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321279, 0.001848, -0.946983,
		-0.645525, 0.732092, -0.217576,
		0.692876, 0.681204, 0.236399,
		46.444794, 31.997360, 16.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.899345, 31.992098, 15.918529>,  <45.959782, 31.520517, 16.573555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.899345, 31.992098, 15.918529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233334, 32.097984, 16.111504>,  <46.433727, 32.161514, 16.227289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.233334, 32.097984, 16.111504>,  <45.899345, 31.992098, 15.918529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.233334, 32.097984, 16.111504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477114, 0.088585, -0.874366,
		-0.274193, 0.960250, -0.052333,
		0.834973, 0.264714, 0.482438,
		46.483826, 32.177399, 16.256235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.984894, 32.618862, 15.753763>,  <45.899345, 31.992098, 15.918529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.984894, 32.618862, 15.753763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346554, 32.520119, 15.893237>,  <46.563549, 32.460873, 15.976922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.346554, 32.520119, 15.893237>,  <45.984894, 32.618862, 15.753763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.346554, 32.520119, 15.893237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422525, 0.395962, -0.815283,
		0.063194, 0.884463, 0.462311,
		0.904145, -0.246859, 0.348686,
		46.617798, 32.446060, 15.997843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.297527, 33.318062, 15.816072>,  <45.984894, 32.618862, 15.753763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.297527, 33.318062, 15.816072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560444, 33.016743, 15.806996>,  <46.718193, 32.835953, 15.801551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.560444, 33.016743, 15.806996>,  <46.297527, 33.318062, 15.816072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.560444, 33.016743, 15.806996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537225, 0.489452, -0.686896,
		0.528541, 0.439302, 0.726401,
		0.657293, -0.753294, -0.022691,
		46.757633, 32.790756, 15.800189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.950993, 33.645824, 15.730043>,  <46.297527, 33.318062, 15.816072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.950993, 33.645824, 15.730043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.044224, 33.266186, 15.645303>,  <47.100163, 33.038403, 15.594459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.044224, 33.266186, 15.645303>,  <46.950993, 33.645824, 15.730043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.044224, 33.266186, 15.645303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693964, 0.314948, -0.647473,
		0.681239, 0.003897, 0.732051,
		0.233081, -0.949101, -0.211851,
		47.114147, 32.981457, 15.581748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.608440, 33.609074, 15.690910>,  <46.950993, 33.645824, 15.730043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.608440, 33.609074, 15.690910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507179, 33.302628, 15.454610>,  <47.446423, 33.118759, 15.312829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.507179, 33.302628, 15.454610>,  <47.608440, 33.609074, 15.690910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.507179, 33.302628, 15.454610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581474, 0.367536, -0.725813,
		0.773176, -0.527249, 0.352431,
		-0.253153, -0.766111, -0.590752,
		47.431232, 33.072796, 15.277385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.217812, 33.442833, 15.341444>,  <47.608440, 33.609074, 15.690910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.217812, 33.442833, 15.341444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911186, 33.302570, 15.126250>,  <47.727211, 33.218414, 14.997134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.911186, 33.302570, 15.126250>,  <48.217812, 33.442833, 15.341444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.911186, 33.302570, 15.126250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462093, 0.280552, -0.841285,
		0.445932, -0.893495, -0.053026,
		-0.766560, -0.350653, -0.537985,
		47.681217, 33.197376, 14.964855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.436241, 32.981468, 14.851869>,  <48.217812, 33.442833, 15.341444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.436241, 32.981468, 14.851869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.100552, 33.151192, 14.715831>,  <47.899139, 33.253025, 14.634209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.100552, 33.151192, 14.715831>,  <48.436241, 32.981468, 14.851869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.100552, 33.151192, 14.715831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493556, 0.331818, -0.803928,
		-0.228264, -0.842531, -0.487890,
		-0.839225, 0.424309, -0.340094,
		47.848785, 33.278484, 14.613803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.295876, 32.724564, 14.172738>,  <48.436241, 32.981468, 14.851869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.295876, 32.724564, 14.172738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.129948, 33.084503, 14.226691>,  <48.030392, 33.300468, 14.259064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.129948, 33.084503, 14.226691>,  <48.295876, 32.724564, 14.172738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.129948, 33.084503, 14.226691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483045, 0.343412, -0.805441,
		-0.771097, -0.268960, -0.577123,
		-0.414822, 0.899849, 0.134883,
		48.005501, 33.354458, 14.267157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.088345, 32.990829, 13.617529>,  <48.295876, 32.724564, 14.172738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.088345, 32.990829, 13.617529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203308, 33.303814, 13.838492>,  <48.272285, 33.491604, 13.971070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.203308, 33.303814, 13.838492>,  <48.088345, 32.990829, 13.617529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.203308, 33.303814, 13.838492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507859, 0.364499, -0.780525,
		-0.812080, 0.504877, -0.292618,
		0.287410, 0.782458, 0.552409,
		48.289532, 33.538551, 14.004215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.894745, 33.741127, 13.493041>,  <48.088345, 32.990829, 13.617529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.894745, 33.741127, 13.493041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.266880, 33.706512, 13.635585>,  <48.490162, 33.685745, 13.721111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.266880, 33.706512, 13.635585>,  <47.894745, 33.741127, 13.493041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.266880, 33.706512, 13.635585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357878, 0.426287, -0.830784,
		-0.080019, 0.900439, 0.427558,
		0.930333, -0.086535, 0.356359,
		48.545979, 33.680553, 13.742493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.225063, 34.384426, 13.706830>,  <47.894745, 33.741127, 13.493041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.225063, 34.384426, 13.706830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.467758, 34.105492, 13.554202>,  <48.613377, 33.938133, 13.462626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.467758, 34.105492, 13.554202>,  <48.225063, 34.384426, 13.706830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.467758, 34.105492, 13.554202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093189, 0.539112, -0.837063,
		0.789420, 0.472321, 0.392084,
		0.606739, -0.697332, -0.381570,
		48.649780, 33.896294, 13.439731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.888107, 34.539864, 13.350034>,  <48.225063, 34.384426, 13.706830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.888107, 34.539864, 13.350034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.992611, 34.908817, 13.463834>,  <49.055313, 35.130192, 13.532114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.992611, 34.908817, 13.463834>,  <48.888107, 34.539864, 13.350034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.992611, 34.908817, 13.463834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861751, 0.090094, 0.499268,
		0.434888, -0.375608, 0.818408,
		0.261262, 0.922389, 0.284500,
		49.070992, 35.185535, 13.549184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.816750, 34.689629, 14.079590>,  <48.888107, 34.539864, 13.350034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.816750, 34.689629, 14.079590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.763527, 35.044392, 13.902640>,  <48.731594, 35.257248, 13.796471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.763527, 35.044392, 13.902640>,  <48.816750, 34.689629, 14.079590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.763527, 35.044392, 13.902640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812471, 0.158020, 0.561178,
		0.567615, 0.434084, 0.699560,
		-0.133054, 0.886905, -0.442375,
		48.723610, 35.310463, 13.769928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.682346, 35.179100, 14.570853>,  <48.816750, 34.689629, 14.079590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.682346, 35.179100, 14.570853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.500900, 35.302883, 14.236556>,  <48.392033, 35.377155, 14.035977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.500900, 35.302883, 14.236556>,  <48.682346, 35.179100, 14.570853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.500900, 35.302883, 14.236556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.837329, 0.173099, 0.518572,
		0.305144, 0.935024, 0.180601,
		-0.453615, 0.309462, -0.835743,
		48.364815, 35.395721, 13.985833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.354683, 35.905212, 14.465321>,  <48.682346, 35.179100, 14.570853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.354683, 35.905212, 14.465321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.168407, 35.618996, 14.257041>,  <48.056641, 35.447266, 14.132073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.168407, 35.618996, 14.257041>,  <48.354683, 35.905212, 14.465321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.168407, 35.618996, 14.257041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845574, 0.186229, 0.500324,
		-0.261035, 0.673285, -0.691772,
		-0.465689, -0.715546, -0.520700,
		48.028702, 35.404331, 14.100831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.686905, 36.177986, 14.181757>,  <48.354683, 35.905212, 14.465321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.686905, 36.177986, 14.181757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666500, 35.781784, 14.232833>,  <47.654259, 35.544064, 14.263478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.666500, 35.781784, 14.232833>,  <47.686905, 36.177986, 14.181757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.666500, 35.781784, 14.232833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835981, 0.112298, 0.537145,
		-0.546382, -0.079347, -0.833769,
		-0.051009, -0.990501, 0.127690,
		47.651196, 35.484634, 14.271140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.055748, 35.894020, 13.990008>,  <47.686905, 36.177986, 14.181757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.055748, 35.894020, 13.990008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178806, 35.670937, 14.298375>,  <47.252644, 35.537086, 14.483396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.178806, 35.670937, 14.298375>,  <47.055748, 35.894020, 13.990008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.178806, 35.670937, 14.298375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828661, 0.241144, 0.505144,
		-0.467625, -0.794236, -0.387964,
		0.307649, -0.557708, 0.770917,
		47.271099, 35.503624, 14.529651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.479893, 35.503849, 14.187029>,  <47.055748, 35.894020, 13.990008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.479893, 35.503849, 14.187029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717117, 35.473572, 14.507665>,  <46.859451, 35.455406, 14.700047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.717117, 35.473572, 14.507665>,  <46.479893, 35.503849, 14.187029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.717117, 35.473572, 14.507665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800182, 0.055077, 0.597223,
		-0.089357, -0.995609, -0.027907,
		0.593063, -0.075697, 0.801589,
		46.895035, 35.450863, 14.748141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153267, 35.016869, 14.738054>,  <46.479893, 35.503849, 14.187029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153267, 35.016869, 14.738054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400150, 35.249615, 14.949897>,  <46.548283, 35.389263, 15.077003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.400150, 35.249615, 14.949897>,  <46.153267, 35.016869, 14.738054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.400150, 35.249615, 14.949897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657940, 0.012567, 0.752965,
		0.431469, -0.813188, 0.390590,
		0.617211, 0.581866, 0.529607,
		46.585312, 35.424175, 15.108779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.153854, 34.716370, 15.392123>,  <46.153267, 35.016869, 14.738054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.153854, 34.716370, 15.392123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296520, 35.084126, 15.458474>,  <46.382122, 35.304779, 15.498285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.296520, 35.084126, 15.458474>,  <46.153854, 34.716370, 15.392123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.296520, 35.084126, 15.458474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505744, 0.040725, 0.861722,
		0.785500, -0.391241, 0.479500,
		0.356668, 0.919387, 0.165878,
		46.403522, 35.359943, 15.508238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.395863, 34.734913, 16.068617>,  <46.153854, 34.716370, 15.392123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.395863, 34.734913, 16.068617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314743, 35.115372, 15.975501>,  <46.266071, 35.343647, 15.919632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.314743, 35.115372, 15.975501>,  <46.395863, 34.734913, 16.068617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.314743, 35.115372, 15.975501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596746, 0.068441, 0.799506,
		0.776382, 0.301051, 0.553714,
		-0.202795, 0.951149, -0.232787,
		46.253906, 35.400715, 15.905664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.351631, 35.060200, 16.672258>,  <46.395863, 34.734913, 16.068617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.351631, 35.060200, 16.672258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175282, 35.330246, 16.435665>,  <46.069469, 35.492271, 16.293709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.175282, 35.330246, 16.435665>,  <46.351631, 35.060200, 16.672258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.175282, 35.330246, 16.435665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581637, 0.287015, 0.761132,
		0.683613, 0.679594, 0.266131,
		-0.440877, 0.675111, -0.591484,
		46.043018, 35.532780, 16.258221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.336975, 35.727467, 17.012112>,  <46.351631, 35.060200, 16.672258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.336975, 35.727467, 17.012112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040497, 35.725811, 16.743599>,  <45.862610, 35.724815, 16.582491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.040497, 35.725811, 16.743599>,  <46.336975, 35.727467, 17.012112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.040497, 35.725811, 16.743599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640695, 0.302833, 0.705551,
		0.200365, 0.953035, -0.227110,
		-0.741191, -0.004141, -0.671281,
		45.818138, 35.724567, 16.542215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.895767, 36.157459, 17.247595>,  <46.336975, 35.727467, 17.012112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.895767, 36.157459, 17.247595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669296, 35.958572, 16.984623>,  <45.533413, 35.839241, 16.826839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669296, 35.958572, 16.984623>,  <45.895767, 36.157459, 17.247595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669296, 35.958572, 16.984623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774216, 0.047047, 0.631170,
		-0.282901, 0.866348, -0.411593,
		-0.566177, -0.497221, -0.657431,
		45.499443, 35.809406, 16.787394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164841, 36.432209, 17.327112>,  <45.895767, 36.157459, 17.247595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164841, 36.432209, 17.327112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096592, 36.081764, 17.146751>,  <45.055645, 35.871498, 17.038534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.096592, 36.081764, 17.146751>,  <45.164841, 36.432209, 17.327112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.096592, 36.081764, 17.146751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839027, -0.110765, 0.532696,
		-0.516647, 0.469208, -0.716184,
		-0.170617, -0.876114, -0.450904,
		45.045406, 35.818932, 17.011480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.409615, 36.357639, 17.367924>,  <45.164841, 36.432209, 17.327112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.409615, 36.357639, 17.367924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544624, 35.985806, 17.308666>,  <44.625629, 35.762707, 17.273111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.544624, 35.985806, 17.308666>,  <44.409615, 36.357639, 17.367924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544624, 35.985806, 17.308666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701075, -0.353271, 0.619430,
		-0.628147, -0.105216, -0.770948,
		0.337527, -0.929585, -0.148142,
		44.645882, 35.706928, 17.264223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.889397, 35.926773, 17.071493>,  <44.409615, 36.357639, 17.367924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.889397, 35.926773, 17.071493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145069, 35.679962, 17.255112>,  <44.298473, 35.531876, 17.365282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145069, 35.679962, 17.255112>,  <43.889397, 35.926773, 17.071493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145069, 35.679962, 17.255112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756290, -0.396022, 0.520762,
		-0.139530, -0.680035, -0.719780,
		0.639185, -0.617024, 0.459046,
		44.336826, 35.494854, 17.392826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.550705, 35.368790, 17.184862>,  <43.889397, 35.926773, 17.071493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.550705, 35.368790, 17.184862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840939, 35.281967, 17.446064>,  <44.015079, 35.229874, 17.602785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840939, 35.281967, 17.446064>,  <43.550705, 35.368790, 17.184862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840939, 35.281967, 17.446064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681332, -0.359704, 0.637494,
		0.096514, -0.907468, -0.408886,
		0.725584, -0.217060, 0.653004,
		44.058613, 35.216850, 17.641966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.494995, 34.616707, 17.374815>,  <43.550705, 35.368790, 17.184862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.494995, 34.616707, 17.374815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727306, 34.763569, 17.665440>,  <43.866695, 34.851685, 17.839815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727306, 34.763569, 17.665440>,  <43.494995, 34.616707, 17.374815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727306, 34.763569, 17.665440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461005, -0.587272, 0.665271,
		0.670946, -0.721325, -0.171817,
		0.580780, 0.367153, 0.726562,
		43.901539, 34.873714, 17.883408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.592182, 34.090752, 17.884172>,  <43.494995, 34.616707, 17.374815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.592182, 34.090752, 17.884172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680988, 34.415462, 18.100220>,  <43.734272, 34.610291, 18.229849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.680988, 34.415462, 18.100220>,  <43.592182, 34.090752, 17.884172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.680988, 34.415462, 18.100220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472489, -0.394987, 0.787870,
		0.852914, -0.430122, 0.295861,
		0.222018, 0.811776, 0.540118,
		43.747593, 34.658997, 18.262255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.056221, 33.903114, 18.518799>,  <43.592182, 34.090752, 17.884172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.056221, 33.903114, 18.518799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857677, 34.241138, 18.598301>,  <43.738552, 34.443951, 18.646002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.857677, 34.241138, 18.598301>,  <44.056221, 33.903114, 18.518799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.857677, 34.241138, 18.598301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443805, -0.443784, 0.778520,
		0.746098, 0.298219, 0.595318,
		-0.496362, 0.845057, 0.198756,
		43.708771, 34.494656, 18.657928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290154, 34.017021, 19.155329>,  <44.056221, 33.903114, 18.518799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290154, 34.017021, 19.155329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 34.200600, 19.079845>,  <43.734509, 34.310745, 19.034555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.942875, 34.200600, 19.079845>,  <44.290154, 34.017021, 19.155329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.942875, 34.200600, 19.079845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410694, -0.451119, 0.792352,
		0.278517, 0.765415, 0.580144,
		-0.868193, 0.458945, -0.188707,
		43.682419, 34.338284, 19.023233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.095535, 34.199322, 19.821630>,  <44.290154, 34.017021, 19.155329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.095535, 34.199322, 19.821630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762871, 34.230503, 19.601719>,  <43.563271, 34.249214, 19.469772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.762871, 34.230503, 19.601719>,  <44.095535, 34.199322, 19.821630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.762871, 34.230503, 19.601719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503833, -0.522153, 0.688120,
		-0.233427, 0.849282, 0.473532,
		-0.831664, 0.077955, -0.549780,
		43.513371, 34.253891, 19.436785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.589222, 34.245853, 20.287848>,  <44.095535, 34.199322, 19.821630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.589222, 34.245853, 20.287848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362934, 34.156643, 19.970303>,  <43.227161, 34.103115, 19.779776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.362934, 34.156643, 19.970303>,  <43.589222, 34.245853, 20.287848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.362934, 34.156643, 19.970303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722578, -0.329768, 0.607564,
		-0.397294, 0.917340, 0.025402,
		-0.565719, -0.223027, -0.793865,
		43.193218, 34.089733, 19.732143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995888, 34.409676, 20.569586>,  <43.589222, 34.245853, 20.287848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995888, 34.409676, 20.569586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910709, 34.172222, 20.259167>,  <42.859604, 34.029751, 20.072914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.910709, 34.172222, 20.259167>,  <42.995888, 34.409676, 20.569586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910709, 34.172222, 20.259167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856512, -0.268778, 0.440620,
		-0.470153, 0.758522, -0.451221,
		-0.212942, -0.593635, -0.776049,
		42.846828, 33.994133, 20.026352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.273453, 34.598450, 20.232853>,  <42.995888, 34.409676, 20.569586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.273453, 34.598450, 20.232853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336159, 34.220200, 20.118862>,  <42.373783, 33.993248, 20.050467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.336159, 34.220200, 20.118862>,  <42.273453, 34.598450, 20.232853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336159, 34.220200, 20.118862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879618, -0.264888, 0.395104,
		-0.449109, 0.188736, -0.873315,
		0.156760, -0.945628, -0.284979,
		42.383186, 33.936512, 20.033369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754723, 34.385498, 20.028000>,  <42.273453, 34.598450, 20.232853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754723, 34.385498, 20.028000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901203, 34.013802, 20.047596>,  <41.989094, 33.790783, 20.059353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.901203, 34.013802, 20.047596>,  <41.754723, 34.385498, 20.028000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.901203, 34.013802, 20.047596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.883081, -0.330450, 0.333123,
		-0.293363, -0.165256, -0.941610,
		0.366206, -0.929243, 0.048993,
		42.011063, 33.735027, 20.062292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.244984, 33.934170, 19.757694>,  <41.754723, 34.385498, 20.028000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.244984, 33.934170, 19.757694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475742, 33.706318, 19.991859>,  <41.614197, 33.569607, 20.132359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.475742, 33.706318, 19.991859>,  <41.244984, 33.934170, 19.757694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.475742, 33.706318, 19.991859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814861, -0.450951, 0.364205,
		0.056530, -0.687139, -0.724323,
		0.576894, -0.569634, 0.585415,
		41.648811, 33.535427, 20.167484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.060478, 33.161224, 19.780199>,  <41.244984, 33.934170, 19.757694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.060478, 33.161224, 19.780199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233974, 33.262272, 20.126160>,  <41.338070, 33.322899, 20.333736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.233974, 33.262272, 20.126160>,  <41.060478, 33.161224, 19.780199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.233974, 33.262272, 20.126160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741349, -0.445527, 0.501904,
		0.512127, -0.858889, -0.005964,
		0.433737, 0.252617, 0.864903,
		41.364094, 33.338058, 20.385630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.167812, 32.543587, 20.212896>,  <41.060478, 33.161224, 19.780199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.167812, 32.543587, 20.212896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145576, 32.852818, 20.465645>,  <41.132233, 33.038357, 20.617294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.145576, 32.852818, 20.465645>,  <41.167812, 32.543587, 20.212896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.145576, 32.852818, 20.465645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684793, -0.490074, 0.539339,
		0.726614, -0.402718, 0.556642,
		-0.055594, 0.773075, 0.631873,
		41.128899, 33.084740, 20.655207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.898365, 32.227493, 20.718092>,  <41.167812, 32.543587, 20.212896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.898365, 32.227493, 20.718092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826477, 32.613621, 20.793846>,  <40.783344, 32.845295, 20.839298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826477, 32.613621, 20.793846>,  <40.898365, 32.227493, 20.718092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826477, 32.613621, 20.793846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851838, -0.249006, 0.460834,
		0.492008, -0.078501, 0.867044,
		-0.179723, 0.965315, 0.189383,
		40.772560, 32.903214, 20.850660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.873592, 32.434750, 21.506857>,  <40.898365, 32.227493, 20.718092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.873592, 32.434750, 21.506857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638794, 32.657902, 21.272182>,  <40.497913, 32.791794, 21.131378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.638794, 32.657902, 21.272182>,  <40.873592, 32.434750, 21.506857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.638794, 32.657902, 21.272182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791133, -0.241417, 0.561984,
		0.171886, 0.794029, 0.583072,
		-0.586995, 0.557885, -0.586687,
		40.462696, 32.825268, 21.096176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.485935, 32.964348, 21.911217>,  <40.873592, 32.434750, 21.506857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.485935, 32.964348, 21.911217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271736, 32.858204, 21.590511>,  <40.143219, 32.794518, 21.398087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271736, 32.858204, 21.590511>,  <40.485935, 32.964348, 21.911217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271736, 32.858204, 21.590511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814433, -0.088962, 0.573398,
		-0.223486, 0.960035, -0.168482,
		-0.535494, -0.265363, -0.801766,
		40.111088, 32.778595, 21.349981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960720, 33.502270, 21.824345>,  <40.485935, 32.964348, 21.911217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960720, 33.502270, 21.824345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865551, 33.128922, 21.716858>,  <39.808449, 32.904911, 21.652367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.865551, 33.128922, 21.716858>,  <39.960720, 33.502270, 21.824345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.865551, 33.128922, 21.716858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841448, 0.059890, 0.537009,
		-0.485136, 0.353879, -0.799633,
		-0.237926, -0.933372, -0.268716,
		39.794174, 32.848911, 21.636244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.245605, 33.521542, 21.493013>,  <39.960720, 33.502270, 21.824345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.245605, 33.521542, 21.493013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298679, 33.161190, 21.658333>,  <39.330524, 32.944981, 21.757524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.298679, 33.161190, 21.658333>,  <39.245605, 33.521542, 21.493013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.298679, 33.161190, 21.658333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.912673, 0.051572, 0.405423,
		-0.386551, -0.431000, -0.815363,
		0.132687, -0.900877, 0.413297,
		39.338486, 32.890926, 21.782322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.565720, 33.359104, 21.101152>,  <39.245605, 33.521542, 21.493013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.565720, 33.359104, 21.101152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260300, 33.580257, 21.234612>,  <38.077049, 33.712948, 21.314686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260300, 33.580257, 21.234612>,  <38.565720, 33.359104, 21.101152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260300, 33.580257, 21.234612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303072, -0.763054, 0.570874,
		0.570215, 0.334770, 0.750189,
		-0.763546, 0.552882, 0.333646,
		38.031235, 33.746120, 21.334705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490887, 33.265289, 21.797108>,  <38.565720, 33.359104, 21.101152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.490887, 33.265289, 21.797108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118107, 33.392353, 21.727184>,  <37.894440, 33.468594, 21.685230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118107, 33.392353, 21.727184>,  <38.490887, 33.265289, 21.797108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118107, 33.392353, 21.727184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343640, -0.620038, 0.705311,
		0.115664, 0.717386, 0.687007,
		-0.931951, 0.317662, -0.174807,
		37.838520, 33.487652, 21.674742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.041286, 33.355480, 22.453276>,  <38.490887, 33.265289, 21.797108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.041286, 33.355480, 22.453276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769470, 33.302231, 22.164692>,  <37.606380, 33.270279, 21.991541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769470, 33.302231, 22.164692>,  <38.041286, 33.355480, 22.453276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769470, 33.302231, 22.164692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486706, -0.654027, 0.579108,
		-0.548950, 0.744665, 0.379642,
		-0.679537, -0.133127, -0.721461,
		37.565609, 33.262291, 21.948254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414734, 33.435642, 22.744492>,  <38.041286, 33.355480, 22.453276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414734, 33.435642, 22.744492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342228, 33.219349, 22.415920>,  <37.298725, 33.089573, 22.218777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.342228, 33.219349, 22.415920>,  <37.414734, 33.435642, 22.744492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.342228, 33.219349, 22.415920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468816, -0.686734, 0.555526,
		-0.864496, 0.485798, -0.129022,
		-0.181269, -0.540737, -0.821428,
		37.287846, 33.057129, 22.169491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752586, 33.261013, 22.911289>,  <37.414734, 33.435642, 22.744492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752586, 33.261013, 22.911289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851719, 33.009151, 22.616776>,  <36.911198, 32.858036, 22.440067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.851719, 33.009151, 22.616776>,  <36.752586, 33.261013, 22.911289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.851719, 33.009151, 22.616776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505501, -0.732380, 0.456166,
		-0.826467, 0.259140, -0.499799,
		0.247832, -0.629655, -0.736284,
		36.926067, 32.820255, 22.395891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.110630, 33.003841, 22.641939>,  <36.752586, 33.261013, 22.911289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.110630, 33.003841, 22.641939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402271, 32.754189, 22.529610>,  <36.577255, 32.604397, 22.462212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.402271, 32.754189, 22.529610>,  <36.110630, 33.003841, 22.641939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.402271, 32.754189, 22.529610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507941, -0.768474, 0.389156,
		-0.458691, -0.141095, -0.877322,
		0.729107, -0.624131, -0.280825,
		36.621002, 32.566948, 22.445362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.784126, 32.440178, 22.217239>,  <36.110630, 33.003841, 22.641939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.784126, 32.440178, 22.217239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119816, 32.315434, 22.395432>,  <36.321228, 32.240589, 22.502348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.119816, 32.315434, 22.395432>,  <35.784126, 32.440178, 22.217239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.119816, 32.315434, 22.395432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504454, -0.752382, 0.423612,
		0.203066, -0.580229, -0.788732,
		0.839220, -0.311858, 0.445482,
		36.371582, 32.221874, 22.529076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639687, 31.658516, 22.347601>,  <35.784126, 32.440178, 22.217239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639687, 31.658516, 22.347601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986210, 31.725769, 22.535744>,  <36.194126, 31.766121, 22.648630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.986210, 31.725769, 22.535744>,  <35.639687, 31.658516, 22.347601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986210, 31.725769, 22.535744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169692, -0.786583, 0.593710,
		0.469797, -0.594153, -0.652896,
		0.866311, 0.168132, 0.470358,
		36.246101, 31.776209, 22.676851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.941219, 31.048281, 22.475906>,  <35.639687, 31.658516, 22.347601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.941219, 31.048281, 22.475906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083538, 31.285587, 22.764751>,  <36.168930, 31.427971, 22.938059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083538, 31.285587, 22.764751>,  <35.941219, 31.048281, 22.475906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083538, 31.285587, 22.764751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196118, -0.708072, 0.678360,
		0.913756, -0.382975, -0.135576,
		0.355793, 0.593266, 0.722113,
		36.190277, 31.463568, 22.981386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.103828, 30.569899, 22.966461>,  <35.941219, 31.048281, 22.475906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.103828, 30.569899, 22.966461> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188183, 30.896942, 23.180767>,  <36.238796, 31.093168, 23.309351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.188183, 30.896942, 23.180767>,  <36.103828, 30.569899, 22.966461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.188183, 30.896942, 23.180767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200820, -0.572638, 0.794832,
		0.956660, -0.060028, -0.284954,
		0.210887, 0.817608, 0.535765,
		36.251450, 31.142225, 23.341497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640259, 30.349236, 23.512589>,  <36.103828, 30.569899, 22.966461>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640259, 30.349236, 23.512589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459446, 30.675446, 23.657139>,  <36.350960, 30.871172, 23.743870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.459446, 30.675446, 23.657139>,  <36.640259, 30.349236, 23.512589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459446, 30.675446, 23.657139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013256, -0.411226, 0.911437,
		0.891905, 0.407205, 0.196696,
		-0.452028, 0.815523, 0.361376,
		36.323837, 30.920103, 23.765553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946255, 30.591558, 24.074768>,  <36.640259, 30.349236, 23.512589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946255, 30.591558, 24.074768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589130, 30.756840, 24.146496>,  <36.374855, 30.856009, 24.189533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589130, 30.756840, 24.146496>,  <36.946255, 30.591558, 24.074768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589130, 30.756840, 24.146496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003001, -0.403552, 0.914952,
		0.450424, 0.816340, 0.361535,
		-0.892810, 0.413202, 0.179320,
		36.321289, 30.880800, 24.200293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.067978, 30.639763, 24.703850>,  <36.946255, 30.591558, 24.074768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.067978, 30.639763, 24.703850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671700, 30.630009, 24.650295>,  <36.433933, 30.624157, 24.618162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.671700, 30.630009, 24.650295>,  <37.067978, 30.639763, 24.703850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.671700, 30.630009, 24.650295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113608, -0.393439, 0.912304,
		-0.074921, 0.919027, 0.387009,
		-0.990697, -0.024383, -0.133886,
		36.374489, 30.622694, 24.610130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.845783, 30.629528, 25.371334>,  <37.067978, 30.639763, 24.703850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.845783, 30.629528, 25.371334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510906, 30.520515, 25.181664>,  <36.309982, 30.455107, 25.067862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.510906, 30.520515, 25.181664>,  <36.845783, 30.629528, 25.371334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.510906, 30.520515, 25.181664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192930, -0.664099, 0.722323,
		-0.511756, 0.696203, 0.503397,
		-0.837188, -0.272533, -0.474175,
		36.259750, 30.438755, 25.039412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357899, 30.615700, 25.863085>,  <36.845783, 30.629528, 25.371334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357899, 30.615700, 25.863085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207676, 30.395077, 25.565163>,  <36.117542, 30.262703, 25.386410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.207676, 30.395077, 25.565163>,  <36.357899, 30.615700, 25.863085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207676, 30.395077, 25.565163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077730, -0.782057, 0.618340,
		-0.923532, 0.290118, 0.250837,
		-0.375560, -0.551559, -0.744806,
		36.095009, 30.229609, 25.341721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.817169, 30.386972, 26.218987>,  <36.357899, 30.615700, 25.863085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.817169, 30.386972, 26.218987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891586, 30.135197, 25.917206>,  <35.936237, 29.984131, 25.736137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.891586, 30.135197, 25.917206>,  <35.817169, 30.386972, 26.218987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.891586, 30.135197, 25.917206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043812, -0.772406, 0.633617,
		-0.981565, -0.084825, -0.171276,
		0.186041, -0.629440, -0.754450,
		35.947399, 29.946365, 25.690870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.285530, 29.937534, 26.257660>,  <35.817169, 30.386972, 26.218987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.285530, 29.937534, 26.257660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591770, 29.769821, 26.062496>,  <35.775513, 29.669193, 25.945398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.591770, 29.769821, 26.062496>,  <35.285530, 29.937534, 26.257660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.591770, 29.769821, 26.062496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046314, -0.792387, 0.608258,
		-0.641646, -0.443087, -0.626071,
		0.765602, -0.419282, -0.487911,
		35.821449, 29.644037, 25.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.207203, 29.300724, 26.469202>,  <35.285530, 29.937534, 26.257660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.207203, 29.300724, 26.469202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559971, 29.272919, 26.282707>,  <35.771633, 29.256235, 26.170811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559971, 29.272919, 26.282707>,  <35.207203, 29.300724, 26.469202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559971, 29.272919, 26.282707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252895, -0.764912, 0.592413,
		-0.397812, -0.640373, -0.657015,
		0.881924, -0.069513, -0.466239,
		35.824547, 29.252066, 26.142836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278008, 28.612652, 26.182968>,  <35.207203, 29.300724, 26.469202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278008, 28.612652, 26.182968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648148, 28.757511, 26.227810>,  <35.870232, 28.844427, 26.254715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.648148, 28.757511, 26.227810>,  <35.278008, 28.612652, 26.182968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.648148, 28.757511, 26.227810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294348, -0.872704, 0.389548,
		0.238909, -0.327471, -0.914158,
		0.925355, 0.362147, 0.112107,
		35.925755, 28.866156, 26.261442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.733189, 28.014946, 26.040741>,  <35.278008, 28.612652, 26.182968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.733189, 28.014946, 26.040741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978184, 28.249310, 26.252995>,  <36.125179, 28.389929, 26.380346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978184, 28.249310, 26.252995>,  <35.733189, 28.014946, 26.040741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978184, 28.249310, 26.252995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485354, -0.808586, 0.332596,
		0.623933, 0.053834, -0.779621,
		0.612486, 0.585910, 0.530632,
		36.161930, 28.425083, 26.412184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406265, 27.784533, 25.956997>,  <35.733189, 28.014946, 26.040741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406265, 27.784533, 25.956997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395454, 27.983944, 26.303577>,  <36.388969, 28.103590, 26.511526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.395454, 27.983944, 26.303577>,  <36.406265, 27.784533, 25.956997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395454, 27.983944, 26.303577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321930, -0.816250, 0.479685,
		0.946378, 0.291901, -0.138430,
		-0.027027, 0.498528, 0.866452,
		36.387344, 28.133503, 26.563513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985779, 27.536562, 26.397188>,  <36.406265, 27.784533, 25.956997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985779, 27.536562, 26.397188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749668, 27.724457, 26.659767>,  <36.608002, 27.837193, 26.817314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.749668, 27.724457, 26.659767>,  <36.985779, 27.536562, 26.397188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.749668, 27.724457, 26.659767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246390, -0.669578, 0.700683,
		0.768680, 0.575337, 0.279496,
		-0.590274, 0.469736, 0.656449,
		36.572586, 27.865377, 26.856701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310860, 27.566113, 26.982630>,  <36.985779, 27.536562, 26.397188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310860, 27.566113, 26.982630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937572, 27.646553, 27.101738>,  <36.713600, 27.694818, 27.173203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.937572, 27.646553, 27.101738>,  <37.310860, 27.566113, 26.982630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.937572, 27.646553, 27.101738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201412, -0.393507, 0.896987,
		0.297561, 0.897056, 0.326722,
		-0.933215, 0.201103, 0.297770,
		36.657608, 27.706884, 27.191069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382416, 27.678280, 27.667280>,  <37.310860, 27.566113, 26.982630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382416, 27.678280, 27.667280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989861, 27.619225, 27.618160>,  <36.754326, 27.583792, 27.588688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989861, 27.619225, 27.618160>,  <37.382416, 27.678280, 27.667280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989861, 27.619225, 27.618160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020695, -0.554429, 0.831974,
		-0.190913, 0.819031, 0.541055,
		-0.981389, -0.147638, -0.122798,
		36.695442, 27.574934, 27.581322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.062450, 27.692312, 28.383532>,  <37.382416, 27.678280, 27.667280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.062450, 27.692312, 28.383532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820831, 27.487465, 28.139282>,  <36.675861, 27.364557, 27.992733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.820831, 27.487465, 28.139282>,  <37.062450, 27.692312, 28.383532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.820831, 27.487465, 28.139282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243890, -0.610653, 0.753406,
		-0.758711, 0.604019, 0.243964,
		-0.604049, -0.512117, -0.610623,
		36.639618, 27.333830, 27.956095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.519505, 27.446295, 28.841768>,  <37.062450, 27.692312, 28.383532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.519505, 27.446295, 28.841768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484756, 27.217773, 28.515316>,  <36.463909, 27.080662, 28.319445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.484756, 27.217773, 28.515316>,  <36.519505, 27.446295, 28.841768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.484756, 27.217773, 28.515316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231886, -0.785129, 0.574283,
		-0.968856, 0.239137, -0.064274,
		-0.086869, -0.571302, -0.816130,
		36.458694, 27.046383, 28.270477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.830387, 27.065691, 28.940432>,  <36.519505, 27.446295, 28.841768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.830387, 27.065691, 28.940432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053158, 26.865837, 28.675041>,  <36.186821, 26.745924, 28.515808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053158, 26.865837, 28.675041>,  <35.830387, 27.065691, 28.940432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053158, 26.865837, 28.675041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280561, -0.865041, 0.415920,
		-0.781740, -0.045492, -0.621943,
		0.556927, -0.499634, -0.663474,
		36.220234, 26.715946, 28.475998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428028, 26.468229, 28.869949>,  <35.830387, 27.065691, 28.940432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428028, 26.468229, 28.869949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778416, 26.356491, 28.712654>,  <35.988647, 26.289448, 28.618277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.778416, 26.356491, 28.712654>,  <35.428028, 26.468229, 28.869949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.778416, 26.356491, 28.712654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052716, -0.865796, 0.497613,
		-0.479469, -0.415166, -0.773140,
		0.875974, -0.279347, -0.393237,
		36.041206, 26.272686, 28.594683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361984, 25.805117, 28.472401>,  <35.428028, 26.468229, 28.869949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361984, 25.805117, 28.472401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746223, 25.837799, 28.578667>,  <35.976765, 25.857409, 28.642427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.746223, 25.837799, 28.578667>,  <35.361984, 25.805117, 28.472401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.746223, 25.837799, 28.578667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073176, -0.847754, 0.525318,
		0.268142, -0.524059, -0.808370,
		0.960596, 0.081706, 0.265667,
		36.034401, 25.862310, 28.658367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517952, 25.223392, 28.492748>,  <35.361984, 25.805117, 28.472401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517952, 25.223392, 28.492748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809242, 25.372570, 28.722740>,  <35.984016, 25.462076, 28.860735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.809242, 25.372570, 28.722740>,  <35.517952, 25.223392, 28.492748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.809242, 25.372570, 28.722740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082782, -0.880696, 0.466391,
		0.680318, -0.292041, -0.672220,
		0.728227, 0.372942, 0.574978,
		36.027710, 25.484453, 28.895233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.043091, 24.659136, 28.559862>,  <35.517952, 25.223392, 28.492748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.043091, 24.659136, 28.559862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080761, 24.912624, 28.866985>,  <36.103363, 25.064718, 29.051258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.080761, 24.912624, 28.866985>,  <36.043091, 24.659136, 28.559862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080761, 24.912624, 28.866985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133860, -0.772291, 0.621006,
		0.986516, 0.044296, -0.157559,
		0.094174, 0.633723, 0.767806,
		36.109013, 25.102741, 29.097326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.434612, 24.278078, 29.103197>,  <36.043091, 24.659136, 28.559862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.434612, 24.278078, 29.103197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320354, 24.598648, 29.313389>,  <36.251801, 24.790989, 29.439503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.320354, 24.598648, 29.313389>,  <36.434612, 24.278078, 29.103197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.320354, 24.598648, 29.313389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109888, -0.517316, 0.848710,
		0.952014, 0.300175, 0.059703,
		-0.285647, 0.801423, 0.525478,
		36.234661, 24.839075, 29.471031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.797653, 24.295568, 29.699087>,  <36.434612, 24.278078, 29.103197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.797653, 24.295568, 29.699087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486572, 24.518139, 29.816097>,  <36.299923, 24.651682, 29.886303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486572, 24.518139, 29.816097>,  <36.797653, 24.295568, 29.699087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486572, 24.518139, 29.816097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109844, -0.578457, 0.808283,
		0.618965, 0.596470, 0.510986,
		-0.777700, 0.556428, 0.292525,
		36.253262, 24.685068, 29.903854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840290, 24.296350, 30.366093>,  <36.797653, 24.295568, 29.699087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840290, 24.296350, 30.366093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458233, 24.397717, 30.304787>,  <36.229000, 24.458536, 30.268003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.458233, 24.397717, 30.304787>,  <36.840290, 24.296350, 30.366093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458233, 24.397717, 30.304787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276026, -0.574211, 0.770773,
		0.107319, 0.778501, 0.618400,
		-0.955140, 0.253413, -0.153263,
		36.171692, 24.473740, 30.258808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538498, 24.660213, 30.975729>,  <36.840290, 24.296350, 30.366093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.538498, 24.660213, 30.975729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220341, 24.512894, 30.783184>,  <36.029446, 24.424501, 30.667656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.220341, 24.512894, 30.783184>,  <36.538498, 24.660213, 30.975729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220341, 24.512894, 30.783184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283275, -0.476229, 0.832443,
		-0.535827, 0.798475, 0.274457,
		-0.795390, -0.368298, -0.481364,
		35.981724, 24.402405, 30.638775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005241, 24.657164, 31.553659>,  <36.538498, 24.660213, 30.975729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005241, 24.657164, 31.553659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849609, 24.435265, 31.259483>,  <35.756229, 24.302124, 31.082977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.849609, 24.435265, 31.259483>,  <36.005241, 24.657164, 31.553659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.849609, 24.435265, 31.259483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555460, -0.495615, 0.667705,
		-0.734904, 0.668296, -0.115309,
		-0.389076, -0.554748, -0.735442,
		35.732887, 24.268841, 31.038851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.274441, 24.757156, 31.566341>,  <36.005241, 24.657164, 31.553659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.274441, 24.757156, 31.566341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350525, 24.394245, 31.416317>,  <35.396175, 24.176498, 31.326303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.350525, 24.394245, 31.416317>,  <35.274441, 24.757156, 31.566341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.350525, 24.394245, 31.416317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526408, -0.416727, 0.741102,
		-0.828682, 0.056468, -0.556864,
		0.190212, -0.907276, -0.375060,
		35.407589, 24.122063, 31.303799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.703232, 24.487823, 31.777451>,  <35.274441, 24.757156, 31.566341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.703232, 24.487823, 31.777451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943787, 24.181797, 31.685356>,  <35.088120, 23.998182, 31.630100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.943787, 24.181797, 31.685356>,  <34.703232, 24.487823, 31.777451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.943787, 24.181797, 31.685356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354010, -0.513504, 0.781659,
		-0.716247, -0.388574, -0.579655,
		0.601388, -0.765065, -0.230237,
		35.124203, 23.952278, 31.616285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274590, 23.846012, 31.776339>,  <34.703232, 24.487823, 31.777451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.274590, 23.846012, 31.776339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652412, 23.719910, 31.813057>,  <34.879105, 23.644249, 31.835087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.652412, 23.719910, 31.813057>,  <34.274590, 23.846012, 31.776339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.652412, 23.719910, 31.813057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269974, -0.586548, 0.763594,
		-0.186885, -0.746040, -0.639138,
		0.944557, -0.315255, 0.091795,
		34.935780, 23.625334, 31.840595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.224258, 23.150854, 31.832876>,  <34.274590, 23.846012, 31.776339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.224258, 23.150854, 31.832876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575439, 23.241371, 32.001629>,  <34.786148, 23.295681, 32.102882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.575439, 23.241371, 32.001629>,  <34.224258, 23.150854, 31.832876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.575439, 23.241371, 32.001629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232710, -0.568395, 0.789159,
		0.418377, -0.791023, -0.446366,
		0.877956, 0.226293, 0.421883,
		34.838825, 23.309259, 32.128193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556545, 22.560978, 31.935699>,  <34.224258, 23.150854, 31.832876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556545, 22.560978, 31.935699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750347, 22.797142, 32.193901>,  <34.866627, 22.938841, 32.348824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.750347, 22.797142, 32.193901>,  <34.556545, 22.560978, 31.935699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.750347, 22.797142, 32.193901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225057, -0.628932, 0.744174,
		0.845345, -0.505828, -0.171842,
		0.484501, 0.590410, 0.645504,
		34.895699, 22.974264, 32.387554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059017, 22.080961, 32.305519>,  <34.556545, 22.560978, 31.935699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059017, 22.080961, 32.305519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992733, 22.403725, 32.532299>,  <34.952961, 22.597383, 32.668365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.992733, 22.403725, 32.532299>,  <35.059017, 22.080961, 32.305519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.992733, 22.403725, 32.532299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223984, -0.590671, 0.775202,
		0.960401, 0.001474, 0.278618,
		-0.165715, 0.806911, 0.566951,
		34.943020, 22.645798, 32.702385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.493572, 22.060888, 32.881874>,  <35.059017, 22.080961, 32.305519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.493572, 22.060888, 32.881874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148148, 22.257721, 32.925911>,  <34.940895, 22.375820, 32.952335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.148148, 22.257721, 32.925911>,  <35.493572, 22.060888, 32.881874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.148148, 22.257721, 32.925911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146612, -0.453930, 0.878893,
		0.482462, 0.742835, 0.464141,
		-0.863560, 0.492081, 0.110095,
		34.889080, 22.405346, 32.958939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.616814, 22.491777, 33.379272>,  <35.493572, 22.060888, 32.881874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.616814, 22.491777, 33.379272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239716, 22.359520, 33.361809>,  <35.013458, 22.280167, 33.351330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239716, 22.359520, 33.361809>,  <35.616814, 22.491777, 33.379272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239716, 22.359520, 33.361809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069067, -0.321611, 0.944349,
		-0.326281, 0.887267, 0.326034,
		-0.942746, -0.330641, -0.043655,
		34.956890, 22.260328, 33.348713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.283615, 22.643217, 34.105762>,  <35.616814, 22.491777, 33.379272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.283615, 22.643217, 34.105762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099804, 22.358856, 33.892803>,  <34.989517, 22.188240, 33.765026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.099804, 22.358856, 33.892803>,  <35.283615, 22.643217, 34.105762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.099804, 22.358856, 33.892803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227405, -0.485283, 0.844267,
		-0.858556, 0.509038, 0.061340,
		-0.459531, -0.710901, -0.532400,
		34.961945, 22.145586, 33.733082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.662075, 22.434814, 34.421291>,  <35.283615, 22.643217, 34.105762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.662075, 22.434814, 34.421291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796864, 22.144363, 34.181561>,  <34.877735, 21.970093, 34.037724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.796864, 22.144363, 34.181561>,  <34.662075, 22.434814, 34.421291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796864, 22.144363, 34.181561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024358, -0.629617, 0.776523,
		-0.941201, -0.276261, -0.194474,
		0.336968, -0.726128, -0.599325,
		34.897953, 21.926525, 34.001762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.303146, 21.800821, 34.558601>,  <34.662075, 22.434814, 34.421291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.303146, 21.800821, 34.558601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669952, 21.705441, 34.430714>,  <34.890038, 21.648212, 34.353981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.669952, 21.705441, 34.430714>,  <34.303146, 21.800821, 34.558601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.669952, 21.705441, 34.430714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062251, -0.706209, 0.705261,
		-0.393958, -0.666640, -0.632763,
		0.917018, -0.238453, -0.319716,
		34.945057, 21.633905, 34.334801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767006, 21.888092, 35.098831>,  <34.303146, 21.800821, 34.558601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767006, 21.888092, 35.098831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076176, 22.084351, 35.259758>,  <34.261677, 22.202106, 35.356312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.076176, 22.084351, 35.259758>,  <33.767006, 21.888092, 35.098831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.076176, 22.084351, 35.259758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097880, 0.718675, -0.688423,
		-0.626907, 0.492718, 0.603504,
		0.772921, 0.490648, 0.402315,
		34.308052, 22.231544, 35.380451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616207, 22.595135, 35.326008>,  <33.767006, 21.888092, 35.098831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616207, 22.595135, 35.326008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010845, 22.595806, 35.260742>,  <34.247627, 22.596209, 35.221581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.010845, 22.595806, 35.260742>,  <33.616207, 22.595135, 35.326008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.010845, 22.595806, 35.260742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107610, 0.758386, -0.642861,
		0.122663, 0.651804, 0.748403,
		0.986597, 0.001680, -0.163167,
		34.306824, 22.596310, 35.211792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.883629, 23.333344, 35.303528>,  <33.616207, 22.595135, 35.326008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.883629, 23.333344, 35.303528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077858, 23.055157, 35.091663>,  <34.194397, 22.888245, 34.964546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.077858, 23.055157, 35.091663>,  <33.883629, 23.333344, 35.303528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.077858, 23.055157, 35.091663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056045, 0.579874, -0.812776,
		0.872396, 0.424350, 0.242596,
		0.485576, -0.695466, -0.529662,
		34.223530, 22.846518, 34.932766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.397247, 23.868647, 35.355820>,  <33.883629, 23.333344, 35.303528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.397247, 23.868647, 35.355820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772923, 23.990936, 35.418373>,  <33.998329, 24.064310, 35.455906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.772923, 23.990936, 35.418373>,  <33.397247, 23.868647, 35.355820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772923, 23.990936, 35.418373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076270, 0.629738, -0.773054,
		-0.334823, 0.714117, 0.614761,
		0.939189, 0.305724, 0.156385,
		34.054680, 24.082653, 35.465290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.276817, 24.645924, 35.503658>,  <33.397247, 23.868647, 35.355820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.276817, 24.645924, 35.503658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625587, 24.500366, 35.372620>,  <33.834850, 24.413033, 35.293995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.625587, 24.500366, 35.372620>,  <33.276817, 24.645924, 35.503658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.625587, 24.500366, 35.372620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060941, 0.744523, -0.664809,
		0.485823, 0.559703, 0.671348,
		0.871930, -0.363892, -0.327597,
		33.887165, 24.391199, 35.274342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649174, 25.227848, 35.566837>,  <33.276817, 24.645924, 35.503658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649174, 25.227848, 35.566837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816376, 25.007309, 35.278038>,  <33.916698, 24.874985, 35.104759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816376, 25.007309, 35.278038>,  <33.649174, 25.227848, 35.566837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816376, 25.007309, 35.278038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090670, 0.816118, -0.570728,
		0.903907, 0.173105, 0.391136,
		0.418009, -0.551349, -0.721999,
		33.941780, 24.841904, 35.061440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.322861, 25.553391, 35.370487>,  <33.649174, 25.227848, 35.566837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.322861, 25.553391, 35.370487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235249, 25.333176, 35.048264>,  <34.182682, 25.201046, 34.854927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.235249, 25.333176, 35.048264>,  <34.322861, 25.553391, 35.370487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.235249, 25.333176, 35.048264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442769, 0.679628, -0.584860,
		0.869472, -0.484781, 0.094902,
		-0.219031, -0.550539, -0.805563,
		34.169540, 25.168015, 34.806595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.932503, 25.554049, 34.951843>,  <34.322861, 25.553391, 35.370487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.932503, 25.554049, 34.951843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614197, 25.476471, 34.722359>,  <34.423214, 25.429924, 34.584667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.614197, 25.476471, 34.722359>,  <34.932503, 25.554049, 34.951843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.614197, 25.476471, 34.722359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326381, 0.660643, -0.676037,
		0.510130, -0.725216, -0.462417,
		-0.795765, -0.193942, -0.573710,
		34.375465, 25.418289, 34.550247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192177, 25.534260, 34.347576>,  <34.932503, 25.554049, 34.951843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192177, 25.534260, 34.347576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802341, 25.578133, 34.269447>,  <34.568439, 25.604456, 34.222569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.802341, 25.578133, 34.269447>,  <35.192177, 25.534260, 34.347576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.802341, 25.578133, 34.269447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223104, 0.553704, -0.802269,
		0.020157, -0.825458, -0.564103,
		-0.974586, 0.109683, -0.195324,
		34.509964, 25.611038, 34.210850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.132973, 25.303053, 33.731819>,  <35.192177, 25.534260, 34.347576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.132973, 25.303053, 33.731819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814724, 25.545097, 33.743298>,  <34.623775, 25.690323, 33.750187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.814724, 25.545097, 33.743298>,  <35.132973, 25.303053, 33.731819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814724, 25.545097, 33.743298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216766, 0.328610, -0.919254,
		-0.565679, -0.725161, -0.392617,
		-0.795625, 0.605109, 0.028698,
		34.576035, 25.726629, 33.751907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.858192, 25.218204, 33.066811>,  <35.132973, 25.303053, 33.731819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.858192, 25.218204, 33.066811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702190, 25.552612, 33.221199>,  <34.608589, 25.753258, 33.313831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.702190, 25.552612, 33.221199>,  <34.858192, 25.218204, 33.066811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702190, 25.552612, 33.221199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264833, 0.503286, -0.822537,
		-0.881909, -0.218573, -0.417688,
		-0.390001, 0.836020, 0.385966,
		34.585190, 25.803419, 33.336990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.468143, 25.589989, 32.504990>,  <34.858192, 25.218204, 33.066811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.468143, 25.589989, 32.504990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527203, 25.869762, 32.784702>,  <34.562637, 26.037626, 32.952530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527203, 25.869762, 32.784702>,  <34.468143, 25.589989, 32.504990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527203, 25.869762, 32.784702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061719, 0.699135, -0.712321,
		-0.987113, 0.148328, 0.060055,
		0.147644, 0.699435, 0.699280,
		34.571495, 26.079594, 32.994488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.042515, 26.163544, 32.239075>,  <34.468143, 25.589989, 32.504990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.042515, 26.163544, 32.239075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281151, 26.317703, 32.520653>,  <34.424332, 26.410200, 32.689602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281151, 26.317703, 32.520653>,  <34.042515, 26.163544, 32.239075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281151, 26.317703, 32.520653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109806, 0.829698, -0.547306,
		-0.794997, 0.403816, 0.452673,
		0.596593, 0.385400, 0.703949,
		34.460129, 26.433323, 32.731838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746674, 26.947765, 32.514595>,  <34.042515, 26.163544, 32.239075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746674, 26.947765, 32.514595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140797, 26.918373, 32.576275>,  <34.377270, 26.900738, 32.613281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.140797, 26.918373, 32.576275>,  <33.746674, 26.947765, 32.514595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140797, 26.918373, 32.576275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115932, 0.950659, -0.287762,
		-0.125444, 0.301409, 0.945207,
		0.985304, -0.073482, 0.154198,
		34.436386, 26.896328, 32.622536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893303, 27.480288, 32.828449>,  <33.746674, 26.947765, 32.514595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893303, 27.480288, 32.828449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254978, 27.368156, 32.699539>,  <34.471985, 27.300879, 32.622192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254978, 27.368156, 32.699539>,  <33.893303, 27.480288, 32.828449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254978, 27.368156, 32.699539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197851, 0.943553, -0.265638,
		0.378545, 0.176426, 0.908613,
		0.904190, -0.280326, -0.322271,
		34.526234, 27.284060, 32.602859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392242, 27.966913, 33.070595>,  <33.893303, 27.480288, 32.828449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392242, 27.966913, 33.070595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535690, 27.769878, 32.753422>,  <34.621761, 27.651657, 32.563118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.535690, 27.769878, 32.753422>,  <34.392242, 27.966913, 33.070595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.535690, 27.769878, 32.753422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268731, 0.867957, -0.417653,
		0.893965, -0.063306, 0.443643,
		0.358623, -0.492588, -0.792936,
		34.643276, 27.622103, 32.515541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805889, 28.482138, 32.794926>,  <34.392242, 27.966913, 33.070595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805889, 28.482138, 32.794926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782154, 28.211575, 32.501274>,  <34.767914, 28.049236, 32.325081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.782154, 28.211575, 32.501274>,  <34.805889, 28.482138, 32.794926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.782154, 28.211575, 32.501274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229028, 0.706586, -0.669539,
		0.971610, -0.207865, 0.112990,
		-0.059337, -0.676409, -0.734132,
		34.764355, 28.008652, 32.281033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.190151, 28.769022, 32.401535>,  <34.805889, 28.482138, 32.794926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.190151, 28.769022, 32.401535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017963, 28.498707, 32.162201>,  <34.914650, 28.336517, 32.018600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.017963, 28.498707, 32.162201>,  <35.190151, 28.769022, 32.401535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.017963, 28.498707, 32.162201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092739, 0.626277, -0.774065,
		0.897830, -0.388698, -0.206920,
		-0.430467, -0.675789, -0.598338,
		34.888824, 28.295971, 31.982700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.624416, 28.869431, 31.766850>,  <35.190151, 28.769022, 32.401535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.624416, 28.869431, 31.766850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284557, 28.675045, 31.684933>,  <35.080643, 28.558414, 31.635782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.284557, 28.675045, 31.684933>,  <35.624416, 28.869431, 31.766850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284557, 28.675045, 31.684933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015743, 0.411538, -0.911256,
		0.527116, -0.771023, -0.357313,
		-0.849648, -0.485963, -0.204790,
		35.029663, 28.529257, 31.623495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746639, 28.535700, 31.094246>,  <35.624416, 28.869431, 31.766850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746639, 28.535700, 31.094246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362480, 28.582676, 31.195312>,  <35.131985, 28.610861, 31.255953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.362480, 28.582676, 31.195312>,  <35.746639, 28.535700, 31.094246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.362480, 28.582676, 31.195312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199020, 0.345494, -0.917074,
		-0.194994, -0.931044, -0.308440,
		-0.960400, 0.117438, 0.252666,
		35.074360, 28.617907, 31.271112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.416050, 28.176601, 30.633207>,  <35.746639, 28.535700, 31.094246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.416050, 28.176601, 30.633207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198467, 28.471455, 30.793579>,  <35.067917, 28.648367, 30.889803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.198467, 28.471455, 30.793579>,  <35.416050, 28.176601, 30.633207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198467, 28.471455, 30.793579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004690, 0.475125, -0.879906,
		-0.839100, -0.480511, -0.254990,
		-0.543957, 0.737133, 0.400931,
		35.035278, 28.692595, 30.913858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073475, 28.343565, 30.041986>,  <35.416050, 28.176601, 30.633207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073475, 28.343565, 30.041986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018997, 28.650074, 30.293152>,  <34.986309, 28.833979, 30.443851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.018997, 28.650074, 30.293152>,  <35.073475, 28.343565, 30.041986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018997, 28.650074, 30.293152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127758, 0.642114, -0.755888,
		-0.982409, -0.022729, -0.185352,
		-0.136198, 0.766272, 0.627915,
		34.978138, 28.879955, 30.481527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.661182, 28.715809, 29.690411>,  <35.073475, 28.343565, 30.041986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.661182, 28.715809, 29.690411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831856, 28.955837, 29.961071>,  <34.934261, 29.099854, 30.123468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.831856, 28.955837, 29.961071>,  <34.661182, 28.715809, 29.690411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.831856, 28.955837, 29.961071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097732, 0.713203, -0.694111,
		-0.899105, 0.362296, 0.245666,
		0.426684, 0.600069, 0.676652,
		34.959862, 29.135859, 30.164066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344322, 29.340303, 29.557531>,  <34.661182, 28.715809, 29.690411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344322, 29.340303, 29.557531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690189, 29.413216, 29.744770>,  <34.897709, 29.456963, 29.857113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.690189, 29.413216, 29.744770>,  <34.344322, 29.340303, 29.557531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690189, 29.413216, 29.744770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121882, 0.827870, -0.547517,
		-0.487326, 0.530476, 0.693620,
		0.864672, 0.182279, 0.468098,
		34.949593, 29.467899, 29.885199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327396, 30.095753, 29.623709>,  <34.344322, 29.340303, 29.557531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327396, 30.095753, 29.623709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705662, 29.969158, 29.653507>,  <34.932621, 29.893202, 29.671387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.705662, 29.969158, 29.653507>,  <34.327396, 30.095753, 29.623709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.705662, 29.969158, 29.653507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279127, 0.672755, -0.685192,
		0.166738, 0.668758, 0.724542,
		0.945667, -0.316487, 0.074495,
		34.989361, 29.874212, 29.675856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.656284, 30.702400, 29.668800>,  <34.327396, 30.095753, 29.623709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.656284, 30.702400, 29.668800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946941, 30.466404, 29.528004>,  <35.121338, 30.324806, 29.443525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.946941, 30.466404, 29.528004>,  <34.656284, 30.702400, 29.668800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.946941, 30.466404, 29.528004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179309, 0.657461, -0.731842,
		0.663200, 0.468674, 0.583532,
		0.726645, -0.589990, -0.351991,
		35.164936, 30.289408, 29.422407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151512, 31.133183, 29.495684>,  <34.656284, 30.702400, 29.668800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151512, 31.133183, 29.495684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290417, 30.804279, 29.315327>,  <35.373760, 30.606937, 29.207113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.290417, 30.804279, 29.315327>,  <35.151512, 31.133183, 29.495684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.290417, 30.804279, 29.315327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310718, 0.554540, -0.771971,
		0.884797, 0.127974, 0.448059,
		0.347259, -0.822258, -0.450892,
		35.394596, 30.557602, 29.180059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959957, 31.131275, 29.417171>,  <35.151512, 31.133183, 29.495684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959957, 31.131275, 29.417171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766758, 30.924595, 29.134403>,  <35.650841, 30.800587, 28.964743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.766758, 30.924595, 29.134403>,  <35.959957, 31.131275, 29.417171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766758, 30.924595, 29.134403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426074, 0.566622, -0.705266,
		0.764969, -0.641839, -0.053520,
		-0.482993, -0.516704, -0.706919,
		35.621861, 30.769585, 28.922327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474972, 31.083654, 28.806971>,  <35.959957, 31.131275, 29.417171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474972, 31.083654, 28.806971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114502, 31.058651, 28.635399>,  <35.898220, 31.043650, 28.532455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.114502, 31.058651, 28.635399>,  <36.474972, 31.083654, 28.806971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114502, 31.058651, 28.635399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342874, 0.502604, -0.793616,
		0.265190, -0.862254, -0.431500,
		-0.901173, -0.062509, -0.428930,
		35.844151, 31.039898, 28.506720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673668, 31.047806, 28.126654>,  <36.474972, 31.083654, 28.806971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673668, 31.047806, 28.126654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277168, 31.097027, 28.107571>,  <36.039268, 31.126560, 28.096121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277168, 31.097027, 28.107571>,  <36.673668, 31.047806, 28.126654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277168, 31.097027, 28.107571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103625, 0.501786, -0.858763,
		-0.081735, -0.856194, -0.510148,
		-0.991252, 0.123055, -0.047709,
		35.979794, 31.133944, 28.093258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.518677, 30.859488, 27.381535>,  <36.673668, 31.047806, 28.126654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.518677, 30.859488, 27.381535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222713, 31.090389, 27.519699>,  <36.045135, 31.228930, 27.602598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.222713, 31.090389, 27.519699>,  <36.518677, 30.859488, 27.381535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.222713, 31.090389, 27.519699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052253, 0.561237, -0.826004,
		-0.670671, -0.593121, -0.445429,
		-0.739912, 0.577252, 0.345413,
		36.000740, 31.263565, 27.623323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128098, 30.982630, 26.829985>,  <36.518677, 30.859488, 27.381535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128098, 30.982630, 26.829985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999229, 31.273846, 27.072033>,  <35.921909, 31.448574, 27.217262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.999229, 31.273846, 27.072033>,  <36.128098, 30.982630, 26.829985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.999229, 31.273846, 27.072033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028928, 0.646471, -0.762390,
		-0.946240, -0.228112, -0.229333,
		-0.322168, 0.728038, 0.605118,
		35.902580, 31.492256, 27.253569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617802, 31.249758, 26.438211>,  <36.128098, 30.982630, 26.829985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617802, 31.249758, 26.438211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765686, 31.513783, 26.699787>,  <35.854416, 31.672197, 26.856733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.765686, 31.513783, 26.699787>,  <35.617802, 31.249758, 26.438211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.765686, 31.513783, 26.699787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259762, 0.602316, -0.754811,
		-0.892099, 0.448927, 0.051221,
		0.369706, 0.660061, 0.653940,
		35.876598, 31.711802, 26.895969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266121, 31.801544, 26.275887>,  <35.617802, 31.249758, 26.438211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266121, 31.801544, 26.275887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597393, 31.916412, 26.468407>,  <35.796158, 31.985334, 26.583918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597393, 31.916412, 26.468407>,  <35.266121, 31.801544, 26.275887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597393, 31.916412, 26.468407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243209, 0.589544, -0.770252,
		-0.504941, 0.754964, 0.418406,
		0.828181, 0.287172, 0.481299,
		35.845848, 32.002563, 26.612797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223873, 32.484234, 26.180693>,  <35.266121, 31.801544, 26.275887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223873, 32.484234, 26.180693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609325, 32.416344, 26.263268>,  <35.840595, 32.375610, 26.312813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.609325, 32.416344, 26.263268>,  <35.223873, 32.484234, 26.180693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609325, 32.416344, 26.263268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263722, 0.728963, -0.631715,
		-0.043269, 0.663180, 0.747208,
		0.963628, -0.169721, 0.206437,
		35.898415, 32.365429, 26.325199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480461, 33.206310, 26.366306>,  <35.223873, 32.484234, 26.180693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480461, 33.206310, 26.366306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798409, 32.984814, 26.267067>,  <35.989178, 32.851917, 26.207523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.798409, 32.984814, 26.267067>,  <35.480461, 33.206310, 26.366306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798409, 32.984814, 26.267067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297865, 0.712313, -0.635520,
		0.528638, 0.431256, 0.731136,
		0.794870, -0.553741, -0.248100,
		36.036869, 32.818691, 26.192636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.937206, 33.730011, 26.163034>,  <35.480461, 33.206310, 26.366306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.937206, 33.730011, 26.163034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092384, 33.388496, 26.024151>,  <36.185490, 33.183590, 25.940821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.092384, 33.388496, 26.024151>,  <35.937206, 33.730011, 26.163034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.092384, 33.388496, 26.024151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419670, 0.499022, -0.758191,
		0.820596, 0.148423, 0.551900,
		0.387943, -0.853784, -0.347207,
		36.208767, 33.132362, 25.919989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730137, 33.790096, 26.169613>,  <35.937206, 33.730011, 26.163034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730137, 33.790096, 26.169613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605919, 33.521774, 25.900219>,  <36.531387, 33.360779, 25.738583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.605919, 33.521774, 25.900219>,  <36.730137, 33.790096, 26.169613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605919, 33.521774, 25.900219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481924, 0.499598, -0.719827,
		0.819337, -0.548104, 0.168133,
		-0.310541, -0.670808, -0.673484,
		36.512756, 33.320534, 25.698174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322552, 33.801651, 25.670210>,  <36.730137, 33.790096, 26.169613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322552, 33.801651, 25.670210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032810, 33.605640, 25.476227>,  <36.858967, 33.488033, 25.359837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.032810, 33.605640, 25.476227>,  <37.322552, 33.801651, 25.670210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.032810, 33.605640, 25.476227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186463, 0.537956, -0.822092,
		0.663733, -0.685912, -0.298299,
		-0.724354, -0.490028, -0.484956,
		36.815502, 33.458633, 25.330740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601891, 33.695499, 25.018991>,  <37.322552, 33.801651, 25.670210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601891, 33.695499, 25.018991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203354, 33.682632, 24.987335>,  <36.964230, 33.674911, 24.968342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.203354, 33.682632, 24.987335>,  <37.601891, 33.695499, 25.018991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203354, 33.682632, 24.987335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054466, 0.474517, -0.878560,
		0.065817, -0.879659, -0.471030,
		-0.996344, -0.032170, -0.079143,
		36.904449, 33.672981, 24.963593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.435219, 33.358955, 24.325739>,  <37.601891, 33.695499, 25.018991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.435219, 33.358955, 24.325739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121872, 33.572807, 24.452553>,  <36.933865, 33.701118, 24.528641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.121872, 33.572807, 24.452553>,  <37.435219, 33.358955, 24.325739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121872, 33.572807, 24.452553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011975, 0.522943, -0.852284,
		-0.621450, -0.663851, -0.416056,
		-0.783363, 0.534634, 0.317033,
		36.886864, 33.733196, 24.547663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.992222, 33.450188, 23.708467>,  <37.435219, 33.358955, 24.325739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.992222, 33.450188, 23.708467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862411, 33.737980, 23.954079>,  <36.784527, 33.910656, 24.101446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.862411, 33.737980, 23.954079>,  <36.992222, 33.450188, 23.708467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.862411, 33.737980, 23.954079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183632, 0.588890, -0.787075,
		-0.927882, -0.368179, -0.058987,
		-0.324521, 0.719481, 0.614030,
		36.765057, 33.953823, 24.138288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320366, 33.534023, 23.488684>,  <36.992222, 33.450188, 23.708467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320366, 33.534023, 23.488684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428932, 33.875397, 23.666664>,  <36.494072, 34.080223, 23.773453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.428932, 33.875397, 23.666664>,  <36.320366, 33.534023, 23.488684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428932, 33.875397, 23.666664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358917, 0.518705, -0.775966,
		-0.893036, 0.050907, 0.447096,
		0.271413, 0.853436, 0.444951,
		36.510357, 34.131428, 23.800150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764507, 34.012356, 23.345657>,  <36.320366, 33.534023, 23.488684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764507, 34.012356, 23.345657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068359, 34.242214, 23.467476>,  <36.250671, 34.380131, 23.540567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.068359, 34.242214, 23.467476>,  <35.764507, 34.012356, 23.345657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.068359, 34.242214, 23.467476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158232, 0.617507, -0.770485,
		-0.630816, 0.537093, 0.560002,
		0.759627, 0.574645, 0.304548,
		36.296249, 34.414608, 23.558840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.500381, 34.675049, 23.331844>,  <35.764507, 34.012356, 23.345657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.500381, 34.675049, 23.331844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900253, 34.680889, 23.323627>,  <36.140179, 34.684395, 23.318697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.900253, 34.680889, 23.323627>,  <35.500381, 34.675049, 23.331844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.900253, 34.680889, 23.323627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025106, 0.504303, -0.863162,
		-0.002245, 0.863403, 0.504510,
		0.999682, 0.014604, -0.020544,
		36.200157, 34.685272, 23.317465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042084, 34.513092, 24.006361>,  <35.500381, 34.675049, 23.331844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.042084, 34.513092, 24.006361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737659, 34.584511, 23.756912>,  <34.555004, 34.627361, 23.607243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.737659, 34.584511, 23.756912>,  <35.042084, 34.513092, 24.006361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737659, 34.584511, 23.756912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634431, -0.405247, 0.658234,
		-0.135196, 0.896603, 0.421694,
		-0.761064, 0.178545, -0.623620,
		34.509338, 34.638073, 23.569826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525841, 34.891003, 24.423979>,  <35.042084, 34.513092, 24.006361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525841, 34.891003, 24.423979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281822, 34.764732, 24.133270>,  <34.135410, 34.688972, 23.958845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.281822, 34.764732, 24.133270>,  <34.525841, 34.891003, 24.423979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.281822, 34.764732, 24.133270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611876, -0.395085, 0.685212,
		-0.503438, 0.862705, 0.047869,
		-0.610047, -0.315672, -0.726769,
		34.098808, 34.670033, 23.915239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767628, 35.214058, 24.521975>,  <34.525841, 34.891003, 24.423979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767628, 35.214058, 24.521975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748096, 34.877277, 24.307041>,  <33.736378, 34.675209, 24.178082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.748096, 34.877277, 24.307041>,  <33.767628, 35.214058, 24.521975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748096, 34.877277, 24.307041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617831, -0.397245, 0.678588,
		-0.784793, 0.365114, -0.500790,
		-0.048825, -0.841955, -0.537334,
		33.733448, 34.624691, 24.145842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175888, 34.984940, 24.669817>,  <33.767628, 35.214058, 24.521975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175888, 34.984940, 24.669817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312393, 34.651981, 24.495159>,  <33.394295, 34.452206, 24.390364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.312393, 34.651981, 24.495159>,  <33.175888, 34.984940, 24.669817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312393, 34.651981, 24.495159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510337, -0.554182, 0.657600,
		-0.789364, -0.001578, -0.613924,
		0.341264, -0.832394, -0.436646,
		33.414772, 34.402264, 24.364166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584827, 34.653484, 24.589699>,  <33.175888, 34.984940, 24.669817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584827, 34.653484, 24.589699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897453, 34.404610, 24.607735>,  <33.085030, 34.255283, 24.618555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897453, 34.404610, 24.607735>,  <32.584827, 34.653484, 24.589699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897453, 34.404610, 24.607735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489635, -0.567063, 0.662342,
		-0.386532, -0.539744, -0.747844,
		0.781569, -0.622187, 0.045090,
		33.131924, 34.217953, 24.621262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.307007, 33.958126, 24.570156>,  <32.584827, 34.653484, 24.589699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.307007, 33.958126, 24.570156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672516, 33.843628, 24.685448>,  <32.891823, 33.774929, 24.754623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.672516, 33.843628, 24.685448>,  <32.307007, 33.958126, 24.570156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.672516, 33.843628, 24.685448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406157, -0.656155, 0.636001,
		0.007071, -0.698229, -0.715840,
		0.913776, -0.286246, 0.288230,
		32.946648, 33.757755, 24.771917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198895, 33.187626, 24.714012>,  <32.307007, 33.958126, 24.570156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198895, 33.187626, 24.714012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544186, 33.298153, 24.883003>,  <32.751362, 33.364468, 24.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544186, 33.298153, 24.883003>,  <32.198895, 33.187626, 24.714012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544186, 33.298153, 24.883003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162431, -0.640357, 0.750706,
		0.477967, -0.716654, -0.507892,
		0.863229, 0.276315, 0.422476,
		32.803154, 33.381046, 25.009747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.614166, 32.625511, 24.908178>,  <32.198895, 33.187626, 24.714012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.614166, 32.625511, 24.908178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708961, 32.910088, 25.172810>,  <32.765839, 33.080833, 25.331589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.708961, 32.910088, 25.172810>,  <32.614166, 32.625511, 24.908178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.708961, 32.910088, 25.172810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137547, -0.649549, 0.747775,
		0.961726, -0.268213, -0.056080,
		0.236989, 0.711441, 0.661580,
		32.780060, 33.123520, 25.371284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.014797, 32.214901, 25.388418>,  <32.614166, 32.625511, 24.908178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.014797, 32.214901, 25.388418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918900, 32.556705, 25.572739>,  <32.861362, 32.761787, 25.683331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.918900, 32.556705, 25.572739>,  <33.014797, 32.214901, 25.388418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.918900, 32.556705, 25.572739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160899, -0.503052, 0.849147,
		0.957411, 0.129434, 0.258092,
		-0.239742, 0.854509, 0.460801,
		32.846977, 32.813057, 25.710979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361732, 32.345287, 25.967161>,  <33.014797, 32.214901, 25.388418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361732, 32.345287, 25.967161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040462, 32.564022, 26.061718>,  <32.847702, 32.695263, 26.118452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.040462, 32.564022, 26.061718>,  <33.361732, 32.345287, 25.967161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.040462, 32.564022, 26.061718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005405, -0.390097, 0.920758,
		0.595720, 0.740806, 0.310361,
		-0.803174, 0.546836, 0.236393,
		32.799511, 32.728073, 26.132635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481266, 32.516632, 26.618626>,  <33.361732, 32.345287, 25.967161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481266, 32.516632, 26.618626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091206, 32.601921, 26.594551>,  <32.857170, 32.653095, 26.580107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.091206, 32.601921, 26.594551>,  <33.481266, 32.516632, 26.618626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.091206, 32.601921, 26.594551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159540, -0.487299, 0.858537,
		0.153733, 0.846803, 0.509206,
		-0.975148, 0.213224, -0.060185,
		32.798660, 32.665890, 26.576496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.233212, 32.650967, 27.229416>,  <33.481266, 32.516632, 26.618626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.233212, 32.650967, 27.229416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874622, 32.581375, 27.066410>,  <32.659470, 32.539619, 26.968607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874622, 32.581375, 27.066410>,  <33.233212, 32.650967, 27.229416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874622, 32.581375, 27.066410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279922, -0.490557, 0.825226,
		-0.343482, 0.853865, 0.391070,
		-0.896473, -0.173981, -0.407513,
		32.605682, 32.529182, 26.944157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647011, 32.866661, 27.765114>,  <33.233212, 32.650967, 27.229416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647011, 32.866661, 27.765114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564747, 32.569679, 27.510098>,  <32.515388, 32.391491, 27.357088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564747, 32.569679, 27.510098>,  <32.647011, 32.866661, 27.765114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564747, 32.569679, 27.510098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254756, -0.588389, 0.767397,
		-0.944882, 0.320243, -0.068135,
		-0.205664, -0.742457, -0.637542,
		32.503048, 32.346943, 27.318834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.922773, 32.673225, 27.909170>,  <32.647011, 32.866661, 27.765114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.922773, 32.673225, 27.909170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104256, 32.368401, 27.724388>,  <32.213146, 32.185505, 27.613518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.104256, 32.368401, 27.724388>,  <31.922773, 32.673225, 27.909170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.104256, 32.368401, 27.724388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244775, -0.605013, 0.757657,
		-0.856875, -0.230679, -0.461034,
		0.453708, -0.762067, -0.461956,
		32.240368, 32.139782, 27.585802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485449, 32.091259, 27.967978>,  <31.922773, 32.673225, 27.909170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485449, 32.091259, 27.967978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824877, 31.904453, 27.868515>,  <32.028534, 31.792370, 27.808838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.824877, 31.904453, 27.868515>,  <31.485449, 32.091259, 27.967978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.824877, 31.904453, 27.868515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091439, -0.592352, 0.800474,
		-0.521124, -0.656520, -0.545355,
		0.848569, -0.467012, -0.248658,
		32.079449, 31.764349, 27.793917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.398569, 31.488285, 28.113190>,  <31.485449, 32.091259, 27.967978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.398569, 31.488285, 28.113190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793501, 31.458763, 28.057003>,  <32.030460, 31.441050, 28.023291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.793501, 31.458763, 28.057003>,  <31.398569, 31.488285, 28.113190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793501, 31.458763, 28.057003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045831, -0.714873, 0.697751,
		-0.151915, -0.695349, -0.702433,
		0.987330, -0.073806, -0.140469,
		32.089699, 31.436621, 28.014862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.467596, 30.810709, 27.935474>,  <31.398569, 31.488285, 28.113190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.467596, 30.810709, 27.935474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813276, 30.957859, 28.072777>,  <32.020683, 31.046148, 28.155157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.813276, 30.957859, 28.072777>,  <31.467596, 30.810709, 27.935474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.813276, 30.957859, 28.072777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010284, -0.694988, 0.718947,
		0.503040, -0.617786, -0.604393,
		0.864202, 0.367875, 0.343254,
		32.072536, 31.068222, 28.175753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.842972, 30.233311, 27.956762>,  <31.467596, 30.810709, 27.935474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.842972, 30.233311, 27.956762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031281, 30.499172, 28.188835>,  <32.144264, 30.658689, 28.328079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.031281, 30.499172, 28.188835>,  <31.842972, 30.233311, 27.956762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031281, 30.499172, 28.188835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257092, -0.732419, 0.630449,
		0.843966, -0.147637, -0.515679,
		0.470770, 0.664655, 0.580180,
		32.172512, 30.698568, 28.362888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.594788, 30.022139, 28.111607>,  <31.842972, 30.233311, 27.956762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.594788, 30.022139, 28.111607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484497, 30.271984, 28.403862>,  <32.418324, 30.421892, 28.579216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.484497, 30.271984, 28.403862>,  <32.594788, 30.022139, 28.111607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.484497, 30.271984, 28.403862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452341, -0.586370, 0.671981,
		0.848153, 0.515779, -0.120862,
		-0.275724, 0.624614, 0.730639,
		32.401779, 30.459368, 28.623055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.095234, 29.898375, 28.644762>,  <32.594788, 30.022139, 28.111607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.095234, 29.898375, 28.644762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805454, 30.097588, 28.835396>,  <32.631588, 30.217115, 28.949776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.805454, 30.097588, 28.835396>,  <33.095234, 29.898375, 28.644762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.805454, 30.097588, 28.835396> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157599, -0.553400, 0.817870,
		0.671069, 0.667616, 0.322421,
		-0.724450, 0.498034, 0.476585,
		32.588120, 30.246998, 28.978371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367401, 30.030474, 29.266344>,  <33.095234, 29.898375, 28.644762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367401, 30.030474, 29.266344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967739, 30.041283, 29.278687>,  <32.727940, 30.047768, 29.286093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.967739, 30.041283, 29.278687>,  <33.367401, 30.030474, 29.266344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.967739, 30.041283, 29.278687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011922, -0.528468, 0.848870,
		0.039246, 0.848523, 0.527701,
		-0.999158, 0.027024, 0.030856,
		32.667992, 30.049389, 29.287943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.236641, 30.230160, 29.975866>,  <33.367401, 30.030474, 29.266344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.236641, 30.230160, 29.975866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892605, 30.064232, 29.857098>,  <32.686184, 29.964676, 29.785837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.892605, 30.064232, 29.857098>,  <33.236641, 30.230160, 29.975866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.892605, 30.064232, 29.857098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007982, -0.592913, 0.805227,
		-0.510072, 0.690201, 0.513272,
		-0.860095, -0.414820, -0.296920,
		32.634575, 29.939785, 29.768023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670776, 30.346533, 30.528982>,  <33.236641, 30.230160, 29.975866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670776, 30.346533, 30.528982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557613, 30.036221, 30.303371>,  <32.489716, 29.850033, 30.168005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.557613, 30.036221, 30.303371>,  <32.670776, 30.346533, 30.528982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557613, 30.036221, 30.303371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107364, -0.558742, 0.822363,
		-0.953118, 0.293213, 0.074784,
		-0.282912, -0.775779, -0.564027,
		32.472740, 29.803486, 30.134163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191208, 29.974842, 30.924137>,  <32.670776, 30.346533, 30.528982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191208, 29.974842, 30.924137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351902, 29.708206, 30.672974>,  <32.448318, 29.548225, 30.522276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.351902, 29.708206, 30.672974>,  <32.191208, 29.974842, 30.924137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.351902, 29.708206, 30.672974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051755, -0.701104, 0.711178,
		-0.914294, -0.253206, -0.316155,
		0.401732, -0.666588, -0.627910,
		32.472424, 29.508230, 30.484600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964355, 29.380899, 31.296303>,  <32.191208, 29.974842, 30.924137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964355, 29.380899, 31.296303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149944, 29.211777, 30.984928>,  <32.261299, 29.110302, 30.798103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.149944, 29.211777, 30.984928>,  <31.964355, 29.380899, 31.296303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149944, 29.211777, 30.984928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283085, -0.903436, 0.321973,
		-0.839399, 0.070976, -0.538862,
		0.463974, -0.422808, -0.778435,
		32.289135, 29.084934, 30.751398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518547, 28.905260, 30.961853>,  <31.964355, 29.380899, 31.296303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518547, 28.905260, 30.961853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886503, 28.778465, 30.869492>,  <32.107277, 28.702389, 30.814074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.886503, 28.778465, 30.869492>,  <31.518547, 28.905260, 30.961853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886503, 28.778465, 30.869492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253473, -0.929850, 0.266705,
		-0.299249, -0.186811, -0.935709,
		0.919892, -0.316988, -0.230905,
		32.162472, 28.683369, 30.800220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.454048, 28.308401, 30.482397>,  <31.518547, 28.905260, 30.961853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.454048, 28.308401, 30.482397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804033, 28.303055, 30.675999>,  <32.014023, 28.299847, 30.792160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.804033, 28.303055, 30.675999>,  <31.454048, 28.308401, 30.482397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.804033, 28.303055, 30.675999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201343, -0.919138, 0.338594,
		0.440341, -0.393708, -0.806904,
		0.874963, -0.013368, 0.484004,
		32.066521, 28.299044, 30.821199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765108, 27.654676, 30.361605>,  <31.454048, 28.308401, 30.482397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765108, 27.654676, 30.361605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962084, 27.792053, 30.681492>,  <32.080269, 27.874479, 30.873425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.962084, 27.792053, 30.681492>,  <31.765108, 27.654676, 30.361605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.962084, 27.792053, 30.681492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003721, -0.919675, 0.392663,
		0.870338, -0.190387, -0.454163,
		0.492440, 0.343440, 0.799720,
		32.109818, 27.895084, 30.921408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.020210, 27.041660, 30.497196>,  <31.765108, 27.654676, 30.361605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.020210, 27.041660, 30.497196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071239, 27.253036, 30.832928>,  <32.101856, 27.379862, 31.034367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.071239, 27.253036, 30.832928>,  <32.020210, 27.041660, 30.497196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.071239, 27.253036, 30.832928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157536, -0.824705, 0.543179,
		0.979238, -0.201520, -0.021961,
		0.127572, 0.528442, 0.839329,
		32.109512, 27.411570, 31.084726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.437244, 26.652605, 30.910246>,  <32.020210, 27.041660, 30.497196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.437244, 26.652605, 30.910246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207378, 26.863472, 31.160641>,  <32.069458, 26.989992, 31.310877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.207378, 26.863472, 31.160641>,  <32.437244, 26.652605, 30.910246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.207378, 26.863472, 31.160641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066724, -0.792532, 0.606170,
		0.815666, 0.306575, 0.490613,
		-0.574662, 0.527167, 0.625985,
		32.034981, 27.021622, 31.348436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709770, 26.528107, 31.513559>,  <32.437244, 26.652605, 30.910246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709770, 26.528107, 31.513559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338444, 26.649822, 31.599007>,  <32.115646, 26.722851, 31.650274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338444, 26.649822, 31.599007>,  <32.709770, 26.528107, 31.513559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338444, 26.649822, 31.599007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086493, -0.735569, 0.671906,
		0.361583, 0.605267, 0.709161,
		-0.928319, 0.304287, 0.213618,
		32.059948, 26.741108, 31.663092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.679783, 26.488068, 32.272762>,  <32.709770, 26.528107, 31.513559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.679783, 26.488068, 32.272762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300343, 26.475540, 32.146797>,  <32.072678, 26.468023, 32.071217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.300343, 26.475540, 32.146797>,  <32.679783, 26.488068, 32.272762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.300343, 26.475540, 32.146797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177395, -0.771438, 0.611076,
		-0.262074, 0.635534, 0.726233,
		-0.948603, -0.031317, -0.314915,
		32.015762, 26.466145, 32.052322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.286488, 26.411049, 32.873486>,  <32.679783, 26.488068, 32.272762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.286488, 26.411049, 32.873486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983816, 26.363029, 32.616417>,  <31.802214, 26.334219, 32.462173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983816, 26.363029, 32.616417>,  <32.286488, 26.411049, 32.873486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983816, 26.363029, 32.616417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509639, -0.507433, 0.694824,
		-0.409527, 0.853288, 0.322781,
		-0.756675, -0.120047, -0.642676,
		31.756813, 26.327015, 32.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643616, 26.574459, 33.278641>,  <32.286488, 26.411049, 32.873486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643616, 26.574459, 33.278641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570305, 26.334904, 32.966808>,  <31.526318, 26.191170, 32.779709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570305, 26.334904, 32.966808>,  <31.643616, 26.574459, 33.278641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570305, 26.334904, 32.966808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562947, -0.586173, 0.582660,
		-0.805916, 0.545649, -0.229711,
		-0.183278, -0.598890, -0.779577,
		31.515322, 26.155237, 32.732937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.881012, 26.432796, 33.192791>,  <31.643616, 26.574459, 33.278641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.881012, 26.432796, 33.192791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052191, 26.133907, 32.989410>,  <31.154898, 25.954575, 32.867382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052191, 26.133907, 32.989410>,  <30.881012, 26.432796, 33.192791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052191, 26.133907, 32.989410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488714, -0.664543, 0.565279,
		-0.760276, 0.006578, -0.649566,
		0.427946, -0.747221, -0.508451,
		31.180574, 25.909740, 32.836876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386126, 26.005968, 33.023060>,  <30.881012, 26.432796, 33.192791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386126, 26.005968, 33.023060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709610, 25.771877, 33.046722>,  <30.903700, 25.631422, 33.060921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.709610, 25.771877, 33.046722>,  <30.386126, 26.005968, 33.023060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709610, 25.771877, 33.046722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499556, -0.630244, 0.594337,
		-0.310537, -0.510199, -0.802037,
		0.808709, -0.585226, 0.059158,
		30.952223, 25.596310, 33.064468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.231768, 25.266211, 32.826435>,  <30.386126, 26.005968, 33.023060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.231768, 25.266211, 32.826435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541769, 25.255890, 33.079006>,  <30.727770, 25.249697, 33.230549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.541769, 25.255890, 33.079006>,  <30.231768, 25.266211, 32.826435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541769, 25.255890, 33.079006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430954, -0.752379, 0.498200,
		0.462220, -0.658224, -0.594217,
		0.775004, -0.025802, 0.631429,
		30.774271, 25.248150, 33.268436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.504866, 24.551247, 32.759804>,  <30.231768, 25.266211, 32.826435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.504866, 24.551247, 32.759804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531525, 24.742989, 33.109840>,  <30.547520, 24.858034, 33.319862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.531525, 24.742989, 33.109840>,  <30.504866, 24.551247, 32.759804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.531525, 24.742989, 33.109840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514095, -0.735163, 0.441861,
		0.855140, -0.479328, 0.197436,
		0.066649, 0.479353, 0.875088,
		30.551519, 24.886795, 33.372368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.080912, 24.350611, 32.246880>,  <30.504866, 24.551247, 32.759804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.080912, 24.350611, 32.246880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904434, 24.163986, 31.940243>,  <30.798548, 24.052011, 31.756260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.904434, 24.163986, 31.940243>,  <31.080912, 24.350611, 32.246880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.904434, 24.163986, 31.940243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648922, 0.424189, -0.631637,
		0.619878, -0.776136, 0.115611,
		-0.441195, -0.466560, -0.766596,
		30.772076, 24.024019, 31.710264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.670839, 24.197510, 31.745993>,  <31.080912, 24.350611, 32.246880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.670839, 24.197510, 31.745993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342186, 24.129742, 31.528290>,  <31.144995, 24.089081, 31.397669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.342186, 24.129742, 31.528290>,  <31.670839, 24.197510, 31.745993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342186, 24.129742, 31.528290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494647, 0.262581, -0.828478,
		0.283278, -0.949919, -0.131938,
		-0.821631, -0.169427, -0.544257,
		31.095695, 24.078917, 31.365013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941620, 23.975920, 31.188778>,  <31.670839, 24.197510, 31.745993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941620, 23.975920, 31.188778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579521, 24.097099, 31.069611>,  <31.362263, 24.169807, 30.998110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.579521, 24.097099, 31.069611>,  <31.941620, 23.975920, 31.188778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.579521, 24.097099, 31.069611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393499, 0.333253, -0.856797,
		-0.160284, -0.892840, -0.420886,
		-0.905244, 0.302949, -0.297917,
		31.307947, 24.187984, 30.980236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.840767, 23.796507, 30.352613>,  <31.941620, 23.975920, 31.188778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.840767, 23.796507, 30.352613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576532, 24.079342, 30.453533>,  <31.417992, 24.249043, 30.514086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.576532, 24.079342, 30.453533>,  <31.840767, 23.796507, 30.352613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576532, 24.079342, 30.453533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108790, 0.422675, -0.899728,
		-0.742826, -0.566900, -0.356137,
		-0.660586, 0.707085, 0.252300,
		31.378357, 24.291468, 30.529222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.206236, 23.795858, 29.800631>,  <31.840767, 23.796507, 30.352613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.206236, 23.795858, 29.800631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261475, 24.144199, 29.989330>,  <31.294619, 24.353203, 30.102551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.261475, 24.144199, 29.989330>,  <31.206236, 23.795858, 29.800631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261475, 24.144199, 29.989330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304713, 0.415854, -0.856864,
		-0.942379, 0.262079, -0.207932,
		0.138097, 0.870850, 0.471751,
		31.302904, 24.405455, 30.130856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.948076, 24.354046, 29.383574>,  <31.206236, 23.795858, 29.800631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.948076, 24.354046, 29.383574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197083, 24.549217, 29.628326>,  <31.346485, 24.666321, 29.775179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.197083, 24.549217, 29.628326>,  <30.948076, 24.354046, 29.383574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.197083, 24.549217, 29.628326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239459, 0.625598, -0.742486,
		-0.745074, 0.608729, 0.272605,
		0.622514, 0.487930, 0.611883,
		31.383837, 24.695597, 29.811892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.877298, 24.952282, 29.082846>,  <30.948076, 24.354046, 29.383574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.877298, 24.952282, 29.082846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199594, 25.008526, 29.312981>,  <31.392971, 25.042273, 29.451061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.199594, 25.008526, 29.312981>,  <30.877298, 24.952282, 29.082846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199594, 25.008526, 29.312981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325947, 0.705802, -0.628969,
		-0.494513, 0.694315, 0.522861,
		0.805739, 0.140608, 0.575338,
		31.441317, 25.050709, 29.485582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.873814, 25.619184, 29.183752>,  <30.877298, 24.952282, 29.082846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.873814, 25.619184, 29.183752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243319, 25.519699, 29.300240>,  <31.465021, 25.460009, 29.370132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.243319, 25.519699, 29.300240>,  <30.873814, 25.619184, 29.183752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243319, 25.519699, 29.300240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366022, 0.797082, -0.480300,
		-0.112670, 0.550275, 0.827347,
		0.923760, -0.248712, 0.291220,
		31.520447, 25.445086, 29.387606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.256830, 26.219095, 29.449286>,  <30.873814, 25.619184, 29.183752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.256830, 26.219095, 29.449286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519833, 25.960567, 29.294388>,  <31.677635, 25.805450, 29.201450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.519833, 25.960567, 29.294388>,  <31.256830, 26.219095, 29.449286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.519833, 25.960567, 29.294388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324750, 0.706872, -0.628386,
		0.679868, 0.287412, 0.674666,
		0.657508, -0.646317, -0.387243,
		31.717085, 25.766672, 29.178215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.765247, 26.674690, 29.427631>,  <31.256830, 26.219095, 29.449286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.765247, 26.674690, 29.427631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872049, 26.378700, 29.180683>,  <31.936131, 26.201107, 29.032515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.872049, 26.378700, 29.180683>,  <31.765247, 26.674690, 29.427631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.872049, 26.378700, 29.180683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360778, 0.670794, -0.647977,
		0.893615, -0.049722, 0.446071,
		0.267003, -0.739975, -0.617371,
		31.952150, 26.156708, 28.995472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.395691, 26.873713, 29.201515>,  <31.765247, 26.674690, 29.427631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.395691, 26.873713, 29.201515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306847, 26.609604, 28.914543>,  <32.253540, 26.451139, 28.742359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.306847, 26.609604, 28.914543>,  <32.395691, 26.873713, 29.201515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.306847, 26.609604, 28.914543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273029, 0.664256, -0.695859,
		0.936013, -0.350440, 0.032732,
		-0.222115, -0.660270, -0.717432,
		32.240211, 26.411524, 28.699314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.953773, 26.891888, 28.669079>,  <32.395691, 26.873713, 29.201515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.953773, 26.891888, 28.669079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634617, 26.730171, 28.490227>,  <32.443123, 26.633141, 28.382915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.634617, 26.730171, 28.490227>,  <32.953773, 26.891888, 28.669079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.634617, 26.730171, 28.490227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225624, 0.487537, -0.843446,
		0.558993, -0.773857, -0.297780,
		-0.797885, -0.404294, -0.447130,
		32.395252, 26.608883, 28.356089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.113304, 26.692331, 28.051489>,  <32.953773, 26.891888, 28.669079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.113304, 26.692331, 28.051489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719311, 26.742474, 28.004017>,  <32.482914, 26.772558, 27.975533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.719311, 26.742474, 28.004017>,  <33.113304, 26.692331, 28.051489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.719311, 26.742474, 28.004017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167579, 0.529368, -0.831677,
		-0.041428, -0.839080, -0.542428,
		-0.984988, 0.125355, -0.118681,
		32.423813, 26.780081, 27.968412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.826977, 26.381506, 27.444063>,  <33.113304, 26.692331, 28.051489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.826977, 26.381506, 27.444063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562241, 26.662403, 27.549004>,  <32.403400, 26.830940, 27.611969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.562241, 26.662403, 27.549004>,  <32.826977, 26.381506, 27.444063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.562241, 26.662403, 27.549004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245908, 0.533976, -0.808949,
		-0.708168, -0.470877, -0.526092,
		-0.661836, 0.702242, 0.262352,
		32.363689, 26.873075, 27.627708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.731926, 26.706867, 26.719402>,  <32.826977, 26.381506, 27.444063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.731926, 26.706867, 26.719402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541615, 26.939030, 26.983753>,  <32.427425, 27.078327, 27.142365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541615, 26.939030, 26.983753>,  <32.731926, 26.706867, 26.719402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541615, 26.939030, 26.983753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018233, 0.744701, -0.667149,
		-0.879374, -0.329468, -0.343733,
		-0.475783, 0.580406, 0.660878,
		32.398880, 27.113152, 27.182016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.147095, 26.899498, 26.403116>,  <32.731926, 26.706867, 26.719402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.147095, 26.899498, 26.403116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220413, 27.186329, 26.672100>,  <32.264404, 27.358427, 26.833490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220413, 27.186329, 26.672100>,  <32.147095, 26.899498, 26.403116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220413, 27.186329, 26.672100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219148, 0.696643, -0.683128,
		-0.958319, -0.022151, 0.284840,
		0.183299, 0.717077, 0.672460,
		32.275402, 27.401451, 26.873838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588074, 27.332239, 26.285473>,  <32.147095, 26.899498, 26.403116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588074, 27.332239, 26.285473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852812, 27.561550, 26.478683>,  <32.011654, 27.699137, 26.594610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.852812, 27.561550, 26.478683>,  <31.588074, 27.332239, 26.285473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.852812, 27.561550, 26.478683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118102, 0.716038, -0.687998,
		-0.740280, 0.398300, 0.541611,
		0.661844, 0.573276, 0.483029,
		32.051365, 27.733534, 26.623592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305586, 27.924932, 26.284307>,  <31.588074, 27.332239, 26.285473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305586, 27.924932, 26.284307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667635, 28.047688, 26.402000>,  <31.884865, 28.121342, 26.472616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.667635, 28.047688, 26.402000>,  <31.305586, 27.924932, 26.284307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.667635, 28.047688, 26.402000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132512, 0.861228, -0.490638,
		-0.403973, 0.405098, 0.820184,
		0.905122, 0.306889, 0.294233,
		31.939171, 28.139753, 26.490271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.251966, 28.635498, 26.529074>,  <31.305586, 27.924932, 26.284307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.251966, 28.635498, 26.529074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650093, 28.621262, 26.493122>,  <31.888969, 28.612720, 26.471550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.650093, 28.621262, 26.493122>,  <31.251966, 28.635498, 26.529074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650093, 28.621262, 26.493122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000759, 0.932606, -0.360895,
		0.096668, 0.359137, 0.928265,
		0.995316, -0.035591, -0.089880,
		31.948689, 28.610584, 26.466158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.572487, 29.234215, 26.790909>,  <31.251966, 28.635498, 26.529074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.572487, 29.234215, 26.790909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820700, 29.088390, 26.513195>,  <31.969627, 29.000896, 26.346567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.820700, 29.088390, 26.513195>,  <31.572487, 29.234215, 26.790909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.820700, 29.088390, 26.513195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008583, 0.888471, -0.458853,
		0.784133, 0.278775, 0.554455,
		0.620534, -0.364560, -0.694286,
		32.006859, 28.979023, 26.304909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.191521, 29.612188, 26.808088>,  <31.572487, 29.234215, 26.790909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.191521, 29.612188, 26.808088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187653, 29.428772, 26.452641>,  <32.185329, 29.318722, 26.239372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.187653, 29.428772, 26.452641>,  <32.191521, 29.612188, 26.808088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.187653, 29.428772, 26.452641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049929, 0.887332, -0.458421,
		0.998706, -0.048802, 0.014310,
		-0.009674, -0.458542, -0.888620,
		32.184750, 29.291210, 26.186054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623760, 30.031609, 26.408195>,  <32.191521, 29.612188, 26.808088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623760, 30.031609, 26.408195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439655, 29.802708, 26.136700>,  <32.329193, 29.665367, 25.973803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.439655, 29.802708, 26.136700>,  <32.623760, 30.031609, 26.408195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.439655, 29.802708, 26.136700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247737, 0.816952, -0.520784,
		0.852517, -0.071549, -0.517780,
		-0.460262, -0.572250, -0.678740,
		32.301579, 29.631033, 25.933077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.792694, 30.448982, 25.774328>,  <32.623760, 30.031609, 26.408195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.792694, 30.448982, 25.774328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467045, 30.232063, 25.691273>,  <32.271656, 30.101912, 25.641439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.467045, 30.232063, 25.691273>,  <32.792694, 30.448982, 25.774328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.467045, 30.232063, 25.691273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410580, 0.790433, -0.454576,
		0.410639, -0.284830, -0.866168,
		-0.814125, -0.542298, -0.207637,
		32.222809, 30.069374, 25.628981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.633968, 30.578243, 25.038740>,  <32.792694, 30.448982, 25.774328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.633968, 30.578243, 25.038740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295807, 30.460487, 25.217010>,  <32.092911, 30.389833, 25.323973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.295807, 30.460487, 25.217010>,  <32.633968, 30.578243, 25.038740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.295807, 30.460487, 25.217010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482352, 0.779165, -0.400298,
		-0.229413, -0.553387, -0.800708,
		-0.845403, -0.294389, 0.445678,
		32.042187, 30.372171, 25.350714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.183960, 30.940063, 24.560671>,  <32.633968, 30.578243, 25.038740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.183960, 30.940063, 24.560671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946764, 30.803040, 24.852154>,  <31.804445, 30.720825, 25.027042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.946764, 30.803040, 24.852154>,  <32.183960, 30.940063, 24.560671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.946764, 30.803040, 24.852154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704413, 0.659116, -0.263379,
		-0.390080, -0.669492, -0.632154,
		-0.592993, -0.342558, 0.728706,
		31.768866, 30.700272, 25.070766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.491207, 30.624538, 24.264938>,  <32.183960, 30.940063, 24.560671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.491207, 30.624538, 24.264938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455858, 30.754707, 24.641510>,  <31.434649, 30.832809, 24.867453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.455858, 30.754707, 24.641510>,  <31.491207, 30.624538, 24.264938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455858, 30.754707, 24.641510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697328, 0.654682, -0.291762,
		-0.711283, -0.682270, 0.169069,
		-0.088374, 0.325422, 0.941430,
		31.429346, 30.852333, 24.923939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.819326, 30.558434, 24.337460>,  <31.491207, 30.624538, 24.264938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.819326, 30.558434, 24.337460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963499, 30.826752, 24.596725>,  <31.050003, 30.987743, 24.752285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963499, 30.826752, 24.596725>,  <30.819326, 30.558434, 24.337460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963499, 30.826752, 24.596725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573061, 0.707515, -0.413549,
		-0.735995, -0.222383, 0.639419,
		0.360433, 0.670796, 0.648167,
		31.071629, 31.027990, 24.791176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.246195, 30.894560, 24.695938>,  <30.819326, 30.558434, 24.337460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.246195, 30.894560, 24.695938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542498, 31.162178, 24.720135>,  <30.720280, 31.322748, 24.734653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542498, 31.162178, 24.720135>,  <30.246195, 30.894560, 24.695938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542498, 31.162178, 24.720135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621142, 0.716439, -0.317645,
		-0.255857, 0.197723, 0.946278,
		0.740756, 0.669045, 0.060492,
		30.764725, 31.362892, 24.738283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879675, 31.439547, 24.892477>,  <30.246195, 30.894560, 24.695938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879675, 31.439547, 24.892477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231213, 31.583782, 24.767506>,  <30.442135, 31.670322, 24.692522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231213, 31.583782, 24.767506>,  <29.879675, 31.439547, 24.892477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231213, 31.583782, 24.767506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475671, 0.713041, -0.515082,
		0.037043, 0.601289, 0.798172,
		0.878843, 0.360587, -0.312429,
		30.494865, 31.691957, 24.673777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.857327, 32.108017, 25.147856>,  <29.879675, 31.439547, 24.892477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.857327, 32.108017, 25.147856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126694, 32.091862, 24.852592>,  <30.288315, 32.082169, 24.675434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.126694, 32.091862, 24.852592>,  <29.857327, 32.108017, 25.147856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.126694, 32.091862, 24.852592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517434, 0.687388, -0.509666,
		0.527984, 0.725167, 0.442002,
		0.673420, -0.040389, -0.738156,
		30.328720, 32.079746, 24.631145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.021017, 32.857742, 24.945490>,  <29.857327, 32.108017, 25.147856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.021017, 32.857742, 24.945490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108704, 32.627953, 24.630043>,  <30.161316, 32.490078, 24.440775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.108704, 32.627953, 24.630043>,  <30.021017, 32.857742, 24.945490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.108704, 32.627953, 24.630043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479036, 0.640778, -0.599941,
		0.849982, 0.509294, -0.134726,
		0.219217, -0.574477, -0.788619,
		30.174469, 32.455608, 24.393457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167166, 33.330406, 24.376953>,  <30.021017, 32.857742, 24.945490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167166, 33.330406, 24.376953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134346, 32.984444, 24.178883>,  <30.114655, 32.776867, 24.060040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.134346, 32.984444, 24.178883>,  <30.167166, 33.330406, 24.376953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.134346, 32.984444, 24.178883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469470, 0.471816, -0.746316,
		0.879128, 0.171235, -0.444762,
		-0.082051, -0.864909, -0.495176,
		30.109732, 32.724972, 24.030331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.060919, 33.640236, 23.803860>,  <30.167166, 33.330406, 24.376953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.060919, 33.640236, 23.803860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973194, 33.260147, 23.715328>,  <29.920559, 33.032093, 23.662209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.973194, 33.260147, 23.715328>,  <30.060919, 33.640236, 23.803860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.973194, 33.260147, 23.715328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392619, 0.293628, -0.871569,
		0.893170, -0.104245, -0.437470,
		-0.219310, -0.950219, -0.221331,
		29.907400, 32.975082, 23.648930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390945, 33.410461, 23.215378>,  <30.060919, 33.640236, 23.803860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390945, 33.410461, 23.215378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067917, 33.175999, 23.241470>,  <29.874100, 33.035320, 23.257126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.067917, 33.175999, 23.241470>,  <30.390945, 33.410461, 23.215378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.067917, 33.175999, 23.241470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296820, 0.308365, -0.903775,
		0.509637, -0.749222, -0.423008,
		-0.807569, -0.586155, 0.065230,
		29.825645, 33.000153, 23.261040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.310787, 33.234718, 22.561874>,  <30.390945, 33.410461, 23.215378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.310787, 33.234718, 22.561874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958174, 33.120007, 22.711891>,  <29.746605, 33.051178, 22.801901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.958174, 33.120007, 22.711891>,  <30.310787, 33.234718, 22.561874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.958174, 33.120007, 22.711891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410513, 0.073240, -0.908908,
		0.233193, -0.955192, -0.182292,
		-0.881533, -0.286784, 0.375040,
		29.693714, 33.033974, 22.824404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904812, 32.728542, 22.076275>,  <30.310787, 33.234718, 22.561874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904812, 32.728542, 22.076275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599451, 32.853962, 22.302162>,  <29.416235, 32.929214, 22.437695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.599451, 32.853962, 22.302162>,  <29.904812, 32.728542, 22.076275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.599451, 32.853962, 22.302162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546052, 0.153729, -0.823526,
		-0.345026, -0.937047, 0.053855,
		-0.763403, 0.313546, 0.564716,
		29.370430, 32.948025, 22.471577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.350382, 32.280186, 21.864748>,  <29.904812, 32.728542, 22.076275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.350382, 32.280186, 21.864748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241070, 32.632462, 22.019516>,  <29.175484, 32.843826, 22.112377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.241070, 32.632462, 22.019516>,  <29.350382, 32.280186, 21.864748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.241070, 32.632462, 22.019516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541891, 0.191392, -0.818366,
		-0.794778, -0.433312, 0.424933,
		-0.273279, 0.880687, 0.386922,
		29.159086, 32.896667, 22.135593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.641298, 32.347107, 21.642872>,  <29.350382, 32.280186, 21.864748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.641298, 32.347107, 21.642872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752720, 32.719673, 21.736568>,  <28.819572, 32.943214, 21.792786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.752720, 32.719673, 21.736568>,  <28.641298, 32.347107, 21.642872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.752720, 32.719673, 21.736568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527302, 0.352163, -0.773262,
		-0.802721, 0.091879, 0.589235,
		0.278553, 0.931418, 0.234241,
		28.836287, 32.999100, 21.806841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.114693, 32.747364, 21.427584>,  <28.641298, 32.347107, 21.642872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.114693, 32.747364, 21.427584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387503, 33.037292, 21.466522>,  <28.551189, 33.211250, 21.489885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.387503, 33.037292, 21.466522>,  <28.114693, 32.747364, 21.427584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.387503, 33.037292, 21.466522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380154, 0.465083, -0.799488,
		-0.624758, 0.508266, 0.592742,
		0.682026, 0.724820, 0.097345,
		28.592110, 33.254738, 21.495726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.792645, 33.363937, 21.665676>,  <28.114693, 32.747364, 21.427584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.792645, 33.363937, 21.665676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125921, 33.502144, 21.492973>,  <28.325888, 33.585068, 21.389351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.125921, 33.502144, 21.492973>,  <27.792645, 33.363937, 21.665676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.125921, 33.502144, 21.492973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543548, 0.368067, -0.754375,
		-0.101732, 0.863219, 0.494473,
		0.833190, 0.345514, -0.431757,
		28.375879, 33.605797, 21.363447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.170015, 33.234962, 21.341408>,  <27.792645, 33.363937, 21.665676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.170015, 33.234962, 21.341408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821217, 33.053310, 21.268322>,  <26.611937, 32.944317, 21.224470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.821217, 33.053310, 21.268322>,  <27.170015, 33.234962, 21.341408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.821217, 33.053310, 21.268322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235763, -0.062509, -0.969798,
		0.428995, -0.888739, 0.161575,
		-0.871997, -0.454133, -0.182715,
		26.559618, 32.917072, 21.213507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.534956, 33.769062, 21.417048>,  <27.170015, 33.234962, 21.341408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.534956, 33.769062, 21.417048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148352, 33.699409, 21.341640>,  <25.916389, 33.657619, 21.296396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.148352, 33.699409, 21.341640>,  <26.534956, 33.769062, 21.417048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.148352, 33.699409, 21.341640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244382, 0.400239, 0.883225,
		-0.078345, 0.899715, -0.429390,
		-0.966509, -0.174131, -0.188518,
		25.858398, 33.647171, 21.285086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.045132, 34.420631, 21.486912>,  <26.534956, 33.769062, 21.417048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.045132, 34.420631, 21.486912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829948, 34.087086, 21.536335>,  <25.700838, 33.886959, 21.565989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.829948, 34.087086, 21.536335>,  <26.045132, 34.420631, 21.486912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.829948, 34.087086, 21.536335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262264, 0.304861, 0.915575,
		-0.801136, 0.460136, -0.382696,
		-0.537958, -0.833867, 0.123558,
		25.668562, 33.836926, 21.573402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.518019, 34.647430, 21.953247>,  <26.045132, 34.420631, 21.486912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.518019, 34.647430, 21.953247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550802, 34.248787, 21.956284>,  <25.570473, 34.009602, 21.958105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.550802, 34.248787, 21.956284>,  <25.518019, 34.647430, 21.953247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.550802, 34.248787, 21.956284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093046, -0.000068, 0.995662,
		-0.992283, -0.082312, -0.092736,
		0.081961, -0.996606, 0.007592,
		25.575390, 33.949806, 21.958561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.991343, 34.267651, 22.336441>,  <25.518019, 34.647430, 21.953247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.991343, 34.267651, 22.336441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342522, 34.076149, 22.336777>,  <25.553230, 33.961246, 22.336979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.342522, 34.076149, 22.336777>,  <24.991343, 34.267651, 22.336441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.342522, 34.076149, 22.336777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058840, 0.109644, 0.992228,
		-0.475126, -0.871075, 0.124432,
		0.877949, -0.478754, 0.000841,
		25.605906, 33.932522, 22.337029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.828518, 35.071365, 22.235023>,  <24.991343, 34.267651, 22.336441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.828518, 35.071365, 22.235023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698154, 34.717335, 22.102108>,  <24.619936, 34.504917, 22.022360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.698154, 34.717335, 22.102108>,  <24.828518, 35.071365, 22.235023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.698154, 34.717335, 22.102108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841537, 0.111430, 0.528582,
		-0.430811, 0.451902, -0.781144,
		-0.325910, -0.885081, -0.332287,
		24.600382, 34.451809, 22.002422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.152611, 35.173653, 21.909771>,  <24.828518, 35.071365, 22.235023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.152611, 35.173653, 21.909771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161797, 34.801144, 22.055210>,  <24.167309, 34.577637, 22.142473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.161797, 34.801144, 22.055210>,  <24.152611, 35.173653, 21.909771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.161797, 34.801144, 22.055210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.920037, 0.122611, 0.372154,
		-0.391158, -0.343071, -0.853989,
		0.022967, -0.931273, 0.363599,
		24.168686, 34.521763, 22.164289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.397755, 34.957306, 22.009594>,  <24.152611, 35.173653, 21.909771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.397755, 34.957306, 22.009594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.091406, 35.190144, 21.900341>,  <22.907597, 35.329845, 21.834789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.091406, 35.190144, 21.900341>,  <23.397755, 34.957306, 22.009594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.091406, 35.190144, 21.900341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521649, -0.810848, -0.265345,
		-0.375924, -0.060743, 0.924658,
		-0.765874, 0.582096, -0.273131,
		22.861643, 35.364773, 21.818401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.819466, 34.535923, 22.023426>,  <23.397755, 34.957306, 22.009594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.819466, 34.535923, 22.023426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673752, 34.849789, 21.822788>,  <22.586325, 35.038109, 21.702406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.673752, 34.849789, 21.822788>,  <22.819466, 34.535923, 22.023426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.673752, 34.849789, 21.822788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510572, -0.618714, -0.597084,
		-0.778855, 0.038592, 0.626016,
		-0.364282, 0.784667, -0.501593,
		22.564466, 35.085190, 21.672310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.191683, 34.376030, 21.923653>,  <22.819466, 34.535923, 22.023426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.191683, 34.376030, 21.923653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259031, 34.655773, 21.645790>,  <22.299440, 34.823620, 21.479073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.259031, 34.655773, 21.645790>,  <22.191683, 34.376030, 21.923653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.259031, 34.655773, 21.645790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654315, -0.447773, -0.609402,
		-0.737239, 0.557130, 0.382209,
		0.168374, 0.699361, -0.694654,
		22.309544, 34.865582, 21.437393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.539793, 34.583511, 21.564137>,  <22.191683, 34.376030, 21.923653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.539793, 34.583511, 21.564137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833651, 34.691841, 21.315315>,  <22.009964, 34.756840, 21.166021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.833651, 34.691841, 21.315315>,  <21.539793, 34.583511, 21.564137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.833651, 34.691841, 21.315315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544658, -0.311266, -0.778756,
		-0.404534, 0.910914, -0.081160,
		0.734643, 0.270828, -0.622054,
		22.054043, 34.773090, 21.128698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.139801, 34.742817, 21.000792>,  <21.539793, 34.583511, 21.564137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.139801, 34.742817, 21.000792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507301, 34.719044, 20.844654>,  <21.727800, 34.704781, 20.750971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.507301, 34.719044, 20.844654>,  <21.139801, 34.742817, 21.000792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.507301, 34.719044, 20.844654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387988, -0.319297, -0.864589,
		-0.073255, 0.945789, -0.316411,
		0.918749, -0.059428, -0.390345,
		21.782927, 34.701214, 20.727551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074450, 34.977219, 20.277594>,  <21.139801, 34.742817, 21.000792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074450, 34.977219, 20.277594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416630, 34.771698, 20.251652>,  <21.621939, 34.648384, 20.236088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.416630, 34.771698, 20.251652>,  <21.074450, 34.977219, 20.277594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.416630, 34.771698, 20.251652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295346, -0.381154, -0.876066,
		0.425409, 0.768586, -0.477810,
		0.855452, -0.513806, -0.064853,
		21.673265, 34.617558, 20.232197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.384142, 35.208344, 19.732395>,  <21.074450, 34.977219, 20.277594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.384142, 35.208344, 19.732395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504850, 34.832787, 19.798618>,  <21.577276, 34.607452, 19.838352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.504850, 34.832787, 19.798618>,  <21.384142, 35.208344, 19.732395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.504850, 34.832787, 19.798618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296966, -0.257583, -0.919490,
		0.905949, 0.228313, -0.356551,
		0.301773, -0.938895, 0.165556,
		21.595383, 34.551117, 19.848286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700607, 34.965042, 19.098093>,  <21.384142, 35.208344, 19.732395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700607, 34.965042, 19.098093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.623121, 34.626400, 19.296379>,  <21.576630, 34.423214, 19.415350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.623121, 34.626400, 19.296379>,  <21.700607, 34.965042, 19.098093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.623121, 34.626400, 19.296379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234912, -0.450561, -0.861285,
		0.952519, -0.283293, -0.111597,
		-0.193714, -0.846606, 0.495716,
		21.565006, 34.372417, 19.445093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.768599, 34.507549, 18.621721>,  <21.700607, 34.965042, 19.098093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.768599, 34.507549, 18.621721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559067, 34.297276, 18.889828>,  <21.433348, 34.171112, 19.050692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.559067, 34.297276, 18.889828>,  <21.768599, 34.507549, 18.621721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.559067, 34.297276, 18.889828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311045, -0.614484, -0.725025,
		0.793002, -0.588273, 0.158374,
		-0.523831, -0.525685, 0.670266,
		21.401917, 34.139568, 19.090908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.935656, 33.765739, 18.548431>,  <21.768599, 34.507549, 18.621721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.935656, 33.765739, 18.548431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597912, 33.752323, 18.762321>,  <21.395266, 33.744274, 18.890656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.597912, 33.752323, 18.762321>,  <21.935656, 33.765739, 18.548431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.597912, 33.752323, 18.762321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368890, -0.687409, -0.625610,
		0.388556, -0.725496, 0.568050,
		-0.844360, -0.033537, 0.534725,
		21.344604, 33.742264, 18.922739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.871267, 33.047298, 18.782055>,  <21.935656, 33.765739, 18.548431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.871267, 33.047298, 18.782055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510071, 33.219128, 18.785423>,  <21.293352, 33.322227, 18.787445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.510071, 33.219128, 18.785423>,  <21.871267, 33.047298, 18.782055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.510071, 33.219128, 18.785423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349145, -0.722218, -0.597075,
		-0.250408, -0.542094, 0.802141,
		-0.902991, 0.429576, 0.008420,
		21.239174, 33.348000, 18.787949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.389809, 32.486996, 19.098354>,  <21.871267, 33.047298, 18.782055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.389809, 32.486996, 19.098354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.172623, 32.749996, 18.889400>,  <21.042311, 32.907795, 18.764029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.172623, 32.749996, 18.889400>,  <21.389809, 32.486996, 19.098354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.172623, 32.749996, 18.889400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133615, -0.681783, -0.719249,
		-0.829057, -0.320729, 0.458036,
		-0.542965, 0.657499, -0.522383,
		21.009733, 32.947247, 18.732685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.991455, 32.047535, 18.792202>,  <21.389809, 32.486996, 19.098354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.991455, 32.047535, 18.792202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910780, 32.383072, 18.589951>,  <20.862375, 32.584396, 18.468599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.910780, 32.383072, 18.589951>,  <20.991455, 32.047535, 18.792202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.910780, 32.383072, 18.589951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194782, -0.540277, -0.818633,
		-0.959887, -0.066619, 0.272359,
		-0.201686, 0.838846, -0.505629,
		20.850273, 32.634727, 18.438261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.281900, 31.941990, 18.455101>,  <20.991455, 32.047535, 18.792202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.281900, 31.941990, 18.455101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482059, 32.234463, 18.269642>,  <20.602156, 32.409946, 18.158365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.482059, 32.234463, 18.269642>,  <20.281900, 31.941990, 18.455101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.482059, 32.234463, 18.269642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116495, -0.473787, -0.872900,
		-0.857921, 0.490812, -0.151903,
		0.500399, 0.731184, -0.463649,
		20.632179, 32.453819, 18.130547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.970221, 31.882973, 17.800583>,  <20.281900, 31.941990, 18.455101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.970221, 31.882973, 17.800583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303938, 32.099487, 17.758694>,  <20.504168, 32.229397, 17.733561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.303938, 32.099487, 17.758694>,  <19.970221, 31.882973, 17.800583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.303938, 32.099487, 17.758694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002750, -0.185862, -0.982572,
		-0.551315, 0.820041, -0.153574,
		0.834292, 0.541285, -0.104724,
		20.554226, 32.261871, 17.727276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.957293, 32.368340, 17.300257>,  <19.970221, 31.882973, 17.800583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.957293, 32.368340, 17.300257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.352913, 32.310707, 17.313000>,  <20.590286, 32.276127, 17.320646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.352913, 32.310707, 17.313000>,  <19.957293, 32.368340, 17.300257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.352913, 32.310707, 17.313000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020713, -0.078211, -0.996722,
		0.146103, 0.986470, -0.074370,
		0.989052, -0.144084, 0.031859,
		20.649630, 32.267483, 17.322557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222979, 32.531425, 16.703287>,  <19.957293, 32.368340, 17.300257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222979, 32.531425, 16.703287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556606, 32.335354, 16.804520>,  <20.756783, 32.217712, 16.865259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.556606, 32.335354, 16.804520>,  <20.222979, 32.531425, 16.703287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.556606, 32.335354, 16.804520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303712, 0.025043, -0.952435,
		0.460526, 0.871261, 0.169761,
		0.834071, -0.490180, 0.253079,
		20.806828, 32.188301, 16.880444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.941530, 32.941143, 16.577713>,  <20.222979, 32.531425, 16.703287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.941530, 32.941143, 16.577713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.999872, 32.547054, 16.541782>,  <21.034878, 32.310600, 16.520224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.999872, 32.547054, 16.541782>,  <20.941530, 32.941143, 16.577713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.999872, 32.547054, 16.541782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391728, 0.140890, -0.909230,
		0.908447, 0.097428, 0.406487,
		0.145855, -0.985220, -0.089826,
		21.043629, 32.251488, 16.514835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.541037, 32.836849, 16.095631>,  <20.941530, 32.941143, 16.577713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.541037, 32.836849, 16.095631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394346, 32.465412, 16.118355>,  <21.306332, 32.242550, 16.131990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.394346, 32.465412, 16.118355>,  <21.541037, 32.836849, 16.095631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.394346, 32.465412, 16.118355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269265, -0.164396, -0.948931,
		0.890510, -0.332701, 0.310326,
		-0.366727, -0.928592, 0.056811,
		21.284328, 32.186836, 16.135399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.083218, 32.395203, 15.907043>,  <21.541037, 32.836849, 16.095631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.083218, 32.395203, 15.907043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.730486, 32.220543, 15.835807>,  <21.518847, 32.115746, 15.793065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.730486, 32.220543, 15.835807>,  <22.083218, 32.395203, 15.907043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.730486, 32.220543, 15.835807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254065, -0.121753, -0.959493,
		0.397279, -0.891355, 0.218303,
		-0.881828, -0.436650, -0.178093,
		21.465937, 32.089550, 15.782379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.224682, 31.842386, 15.446216>,  <22.083218, 32.395203, 15.907043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.224682, 31.842386, 15.446216> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828699, 31.861427, 15.392964>,  <21.591110, 31.872852, 15.361013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.828699, 31.861427, 15.392964>,  <22.224682, 31.842386, 15.446216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.828699, 31.861427, 15.392964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118682, -0.231947, -0.965461,
		-0.076836, -0.971563, 0.223968,
		-0.989955, 0.047601, -0.133129,
		21.531713, 31.875708, 15.353025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.081511, 31.273636, 15.082241>,  <22.224682, 31.842386, 15.446216>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.081511, 31.273636, 15.082241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792278, 31.540096, 15.009141>,  <21.618738, 31.699972, 14.965281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.792278, 31.540096, 15.009141>,  <22.081511, 31.273636, 15.082241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.792278, 31.540096, 15.009141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113127, -0.146790, -0.982677,
		-0.681435, -0.731231, 0.030782,
		-0.723082, 0.666149, -0.182750,
		21.575354, 31.739941, 14.954316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.599756, 30.928740, 14.593426>,  <22.081511, 31.273636, 15.082241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.599756, 30.928740, 14.593426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513556, 31.318897, 14.574803>,  <21.461836, 31.552992, 14.563630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.513556, 31.318897, 14.574803>,  <21.599756, 30.928740, 14.593426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.513556, 31.318897, 14.574803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075775, -0.030829, -0.996648,
		-0.973560, -0.218305, -0.067267,
		-0.215499, 0.975394, -0.046556,
		21.448906, 31.611515, 14.560837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053314, 30.980541, 14.160620>,  <21.599756, 30.928740, 14.593426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053314, 30.980541, 14.160620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218807, 31.344677, 14.164844>,  <21.318102, 31.563158, 14.167377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.218807, 31.344677, 14.164844>,  <21.053314, 30.980541, 14.160620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.218807, 31.344677, 14.164844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048730, 0.033726, -0.998243,
		-0.909094, 0.412490, 0.058314,
		0.413731, 0.910338, 0.010559,
		21.342926, 31.617779, 14.168012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617952, 31.557459, 13.745683>,  <21.053314, 30.980541, 14.160620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617952, 31.557459, 13.745683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.015591, 31.587257, 13.714128>,  <21.254173, 31.605137, 13.695194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.015591, 31.587257, 13.714128>,  <20.617952, 31.557459, 13.745683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.015591, 31.587257, 13.714128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089122, 0.145888, -0.985278,
		-0.061889, 0.986492, 0.151666,
		0.994096, 0.074495, -0.078889,
		21.313820, 31.609606, 13.690461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.549891, 32.340096, 13.814909>,  <20.617952, 31.557459, 13.745683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.549891, 32.340096, 13.814909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314413, 32.643841, 13.704055>,  <20.173126, 32.826088, 13.637543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.314413, 32.643841, 13.704055>,  <20.549891, 32.340096, 13.814909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.314413, 32.643841, 13.704055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802767, 0.508941, -0.310715,
		-0.094901, -0.405391, -0.909204,
		-0.588693, 0.759366, -0.277135,
		20.137806, 32.871651, 13.620914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.263662, 32.642441, 13.087444>,  <20.549891, 32.340096, 13.814909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.263662, 32.642441, 13.087444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209341, 32.972473, 12.868066>,  <20.176748, 33.170494, 12.736439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.209341, 32.972473, 12.868066>,  <20.263662, 32.642441, 13.087444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.209341, 32.972473, 12.868066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461265, 0.437261, 0.772035,
		0.876808, 0.357824, 0.321201,
		-0.135804, 0.825085, -0.548445,
		20.168600, 33.219997, 12.703532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.675673, 33.241753, 13.251410>,  <20.263662, 32.642441, 13.087444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.675673, 33.241753, 13.251410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309650, 33.344875, 13.127341>,  <20.090036, 33.406750, 13.052900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.309650, 33.344875, 13.127341>,  <20.675673, 33.241753, 13.251410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.309650, 33.344875, 13.127341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247813, 0.247372, 0.936694,
		0.318212, 0.933994, -0.162472,
		-0.915057, 0.257804, -0.310173,
		20.035133, 33.422218, 13.034289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.503515, 33.946918, 13.284726>,  <20.675673, 33.241753, 13.251410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.503515, 33.946918, 13.284726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175060, 33.731842, 13.361268>,  <19.977987, 33.602795, 13.407193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.175060, 33.731842, 13.361268>,  <20.503515, 33.946918, 13.284726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.175060, 33.731842, 13.361268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016068, 0.313367, 0.949496,
		-0.570504, 0.782742, -0.248677,
		-0.821138, -0.537695, 0.191354,
		19.928719, 33.570534, 13.418674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.105896, 34.469368, 13.647898>,  <20.503515, 33.946918, 13.284726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.105896, 34.469368, 13.647898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.016262, 34.085270, 13.714480>,  <19.962481, 33.854809, 13.754430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.016262, 34.085270, 13.714480>,  <20.105896, 34.469368, 13.647898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.016262, 34.085270, 13.714480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169153, 0.206529, 0.963708,
		-0.959777, 0.187798, -0.208709,
		-0.224087, -0.960249, 0.166456,
		19.949036, 33.797195, 13.764417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.357271, 34.291409, 13.767091>,  <20.105896, 34.469368, 13.647898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.357271, 34.291409, 13.767091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634724, 34.074867, 13.957170>,  <19.801195, 33.944942, 14.071217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.634724, 34.074867, 13.957170>,  <19.357271, 34.291409, 13.767091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.634724, 34.074867, 13.957170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177137, 0.511247, 0.840981,
		-0.698210, -0.667506, 0.258724,
		0.693632, -0.541352, 0.475198,
		19.842813, 33.912460, 14.099729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.047140, 34.070950, 14.380880>,  <19.357271, 34.291409, 13.767091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.047140, 34.070950, 14.380880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445719, 34.091526, 14.407556>,  <19.684866, 34.103870, 14.423560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.445719, 34.091526, 14.407556>,  <19.047140, 34.070950, 14.380880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.445719, 34.091526, 14.407556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080427, 0.346219, 0.934700,
		0.024991, -0.936742, 0.349126,
		0.996447, 0.051438, 0.066688,
		19.744654, 34.106956, 14.427562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.181440, 33.666294, 14.989304>,  <19.047140, 34.070950, 14.380880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.181440, 33.666294, 14.989304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485023, 33.918362, 14.923738>,  <19.667173, 34.069603, 14.884398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.485023, 33.918362, 14.923738>,  <19.181440, 33.666294, 14.989304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.485023, 33.918362, 14.923738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029820, 0.285110, 0.958031,
		0.650456, -0.722217, 0.235178,
		0.758958, 0.630170, -0.163915,
		19.712711, 34.107414, 14.874563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.596251, 33.546902, 15.560443>,  <19.181440, 33.666294, 14.989304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.596251, 33.546902, 15.560443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678717, 33.907738, 15.408792>,  <19.728197, 34.124237, 15.317801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.678717, 33.907738, 15.408792>,  <19.596251, 33.546902, 15.560443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.678717, 33.907738, 15.408792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056327, 0.397749, 0.915764,
		0.976895, -0.167443, 0.132813,
		0.206165, 0.902086, -0.379127,
		19.740566, 34.178364, 15.295053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.998102, 33.837360, 16.070946>,  <19.596251, 33.546902, 15.560443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.998102, 33.837360, 16.070946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.882498, 34.152401, 15.853263>,  <19.813135, 34.341423, 15.722653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.882498, 34.152401, 15.853263>,  <19.998102, 33.837360, 16.070946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.882498, 34.152401, 15.853263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171365, 0.601844, 0.780011,
		0.941863, 0.132174, -0.308907,
		-0.289011, 0.787600, -0.544205,
		19.795795, 34.388680, 15.690001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.386189, 34.361168, 16.316425>,  <19.998102, 33.837360, 16.070946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.386189, 34.361168, 16.316425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099203, 34.555439, 16.116680>,  <19.927011, 34.672001, 15.996833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099203, 34.555439, 16.116680>,  <20.386189, 34.361168, 16.316425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099203, 34.555439, 16.116680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153280, 0.589221, 0.793300,
		0.679523, 0.645706, -0.348300,
		-0.717463, 0.485678, -0.499363,
		19.883965, 34.701141, 15.966871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.576553, 34.984596, 16.231194>,  <20.386189, 34.361168, 16.316425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.576553, 34.984596, 16.231194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177803, 35.009403, 16.211609>,  <19.938553, 35.024288, 16.199858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.177803, 35.009403, 16.211609>,  <20.576553, 34.984596, 16.231194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.177803, 35.009403, 16.211609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002311, 0.596521, 0.802594,
		0.078980, 0.800198, -0.594513,
		-0.996873, 0.062015, -0.048963,
		19.878740, 35.028008, 16.196920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.510553, 35.514404, 16.703781>,  <20.576553, 34.984596, 16.231194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.510553, 35.514404, 16.703781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127819, 35.444759, 16.610699>,  <19.898178, 35.402973, 16.554850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.127819, 35.444759, 16.610699>,  <20.510553, 35.514404, 16.703781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.127819, 35.444759, 16.610699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289808, 0.631895, 0.718832,
		0.021889, 0.755244, -0.655078,
		-0.956834, -0.174112, -0.232707,
		19.840769, 35.392525, 16.540886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.241240, 36.217865, 16.592525>,  <20.510553, 35.514404, 16.703781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.241240, 36.217865, 16.592525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976004, 35.949280, 16.724857>,  <19.816862, 35.788128, 16.804256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.976004, 35.949280, 16.724857>,  <20.241240, 36.217865, 16.592525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.976004, 35.949280, 16.724857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205955, 0.588567, 0.781774,
		-0.719647, 0.450252, -0.528565,
		-0.663092, -0.671462, 0.330829,
		19.777077, 35.747841, 16.824106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.712225, 36.669056, 16.851177>,  <20.241240, 36.217865, 16.592525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.712225, 36.669056, 16.851177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630455, 36.301010, 16.984806>,  <19.581392, 36.080181, 17.064983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.630455, 36.301010, 16.984806>,  <19.712225, 36.669056, 16.851177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.630455, 36.301010, 16.984806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283765, 0.382325, 0.879378,
		-0.936850, 0.084969, -0.339252,
		-0.204424, -0.920113, 0.334070,
		19.569128, 36.024975, 17.085028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.981976, 36.675850, 17.275324>,  <19.712225, 36.669056, 16.851177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.981976, 36.675850, 17.275324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.176386, 36.344807, 17.387638>,  <19.293032, 36.146179, 17.455027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.176386, 36.344807, 17.387638>,  <18.981976, 36.675850, 17.275324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.176386, 36.344807, 17.387638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188536, 0.214429, 0.958371,
		-0.853366, -0.518730, -0.051817,
		0.486025, -0.827610, 0.280786,
		19.322193, 36.096523, 17.471874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.566393, 36.221062, 17.747494>,  <18.981976, 36.675850, 17.275324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.566393, 36.221062, 17.747494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.943201, 36.128780, 17.844959>,  <19.169287, 36.073414, 17.903439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.943201, 36.128780, 17.844959>,  <18.566393, 36.221062, 17.747494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.943201, 36.128780, 17.844959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231885, 0.077287, 0.969668,
		-0.242533, -0.969951, 0.019310,
		0.942023, -0.230698, 0.243662,
		19.225807, 36.059570, 17.918058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.462467, 35.932343, 18.444565>,  <18.566393, 36.221062, 17.747494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.462467, 35.932343, 18.444565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854578, 36.007092, 18.418842>,  <19.089844, 36.051941, 18.403408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.854578, 36.007092, 18.418842>,  <18.462467, 35.932343, 18.444565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.854578, 36.007092, 18.418842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043240, 0.114700, 0.992459,
		0.192840, -0.975665, 0.104357,
		0.980277, 0.186873, -0.064306,
		19.148661, 36.063152, 18.399551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.821026, 35.490669, 18.906290>,  <18.462467, 35.932343, 18.444565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.821026, 35.490669, 18.906290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088877, 35.785366, 18.868763>,  <19.249588, 35.962185, 18.846247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.088877, 35.785366, 18.868763>,  <18.821026, 35.490669, 18.906290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.088877, 35.785366, 18.868763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144467, -0.005306, 0.989495,
		0.728509, -0.676148, -0.109989,
		0.669629, 0.736746, -0.093816,
		19.289766, 36.006390, 18.840618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268045, 35.379108, 19.473093>,  <18.821026, 35.490669, 18.906290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268045, 35.379108, 19.473093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382420, 35.741695, 19.348797>,  <19.451044, 35.959248, 19.274220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.382420, 35.741695, 19.348797>,  <19.268045, 35.379108, 19.473093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.382420, 35.741695, 19.348797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165474, 0.272699, 0.947762,
		0.943854, -0.322417, -0.072022,
		0.285934, 0.906467, -0.310740,
		19.468201, 36.013634, 19.255575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.856838, 35.431019, 19.750492>,  <19.268045, 35.379108, 19.473093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.856838, 35.431019, 19.750492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.730785, 35.798023, 19.653446>,  <19.655153, 36.018227, 19.595219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.730785, 35.798023, 19.653446>,  <19.856838, 35.431019, 19.750492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.730785, 35.798023, 19.653446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315487, 0.342376, 0.885012,
		0.895076, 0.202352, -0.397357,
		-0.315130, 0.917514, -0.242613,
		19.636246, 36.073277, 19.580662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.452028, 35.863811, 19.857277>,  <19.856838, 35.431019, 19.750492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.452028, 35.863811, 19.857277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124035, 36.087650, 19.905415>,  <19.927238, 36.221954, 19.934298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.124035, 36.087650, 19.905415>,  <20.452028, 35.863811, 19.857277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.124035, 36.087650, 19.905415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440970, 0.483552, 0.756124,
		0.364928, 0.673078, -0.643268,
		-0.819984, 0.559592, 0.120345,
		19.878040, 36.255527, 19.941519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.676971, 36.563786, 20.038460>,  <20.452028, 35.863811, 19.857277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.676971, 36.563786, 20.038460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.305067, 36.563328, 20.185722>,  <20.081924, 36.563053, 20.274080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.305067, 36.563328, 20.185722>,  <20.676971, 36.563786, 20.038460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.305067, 36.563328, 20.185722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337972, 0.393910, 0.854757,
		-0.145998, 0.919148, -0.365857,
		-0.929763, -0.001144, 0.368156,
		20.026138, 36.562984, 20.296169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.617588, 37.135143, 20.466642>,  <20.676971, 36.563786, 20.038460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.617588, 37.135143, 20.466642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.310486, 36.916473, 20.600327>,  <20.126225, 36.785271, 20.680536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.310486, 36.916473, 20.600327>,  <20.617588, 37.135143, 20.466642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.310486, 36.916473, 20.600327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302997, 0.149834, 0.941139,
		-0.564574, 0.823830, 0.050605,
		-0.767756, -0.546676, 0.334210,
		20.080158, 36.752472, 20.700590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.291918, 37.533928, 20.944637>,  <20.617588, 37.135143, 20.466642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.291918, 37.533928, 20.944637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215324, 37.148579, 21.019733>,  <20.169369, 36.917370, 21.064791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.215324, 37.148579, 21.019733>,  <20.291918, 37.533928, 20.944637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.215324, 37.148579, 21.019733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299783, 0.124734, 0.945818,
		-0.934593, 0.237390, 0.264919,
		-0.191484, -0.963373, 0.187741,
		20.157879, 36.859566, 21.076056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.866779, 37.595634, 21.531199>,  <20.291918, 37.533928, 20.944637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.866779, 37.595634, 21.531199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023411, 37.227619, 21.525497>,  <20.117390, 37.006809, 21.522076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.023411, 37.227619, 21.525497>,  <19.866779, 37.595634, 21.531199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.023411, 37.227619, 21.525497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242427, 0.088211, 0.966151,
		-0.887635, -0.381781, 0.257583,
		0.391580, -0.920034, -0.014254,
		20.140884, 36.951611, 21.521221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.728830, 37.261360, 22.209324>,  <19.866779, 37.595634, 21.531199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.728830, 37.261360, 22.209324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.025118, 37.044388, 22.050774>,  <20.202890, 36.914204, 21.955645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.025118, 37.044388, 22.050774>,  <19.728830, 37.261360, 22.209324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025118, 37.044388, 22.050774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454999, -0.029043, 0.890018,
		-0.494281, -0.839601, 0.225290,
		0.740717, -0.542426, -0.396373,
		20.247334, 36.881660, 21.931862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.152517, 37.466934, 21.906332>,  <19.728830, 37.261360, 22.209324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.152517, 37.466934, 21.906332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014687, 37.518661, 22.278255>,  <18.931988, 37.549698, 22.501410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.014687, 37.518661, 22.278255>,  <19.152517, 37.466934, 21.906332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.014687, 37.518661, 22.278255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.896552, 0.248316, -0.366788,
		-0.278318, -0.960009, 0.030374,
		-0.344578, 0.129316, 0.929809,
		18.911314, 37.557457, 22.557198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.581636, 37.770439, 21.796263>,  <19.152517, 37.466934, 21.906332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.581636, 37.770439, 21.796263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383083, 37.514359, 22.030781>,  <18.263952, 37.360710, 22.171492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.383083, 37.514359, 22.030781>,  <18.581636, 37.770439, 21.796263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.383083, 37.514359, 22.030781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621802, 0.209083, 0.754749,
		-0.605779, 0.739203, 0.294296,
		-0.496380, -0.640205, 0.586296,
		18.234169, 37.322296, 22.206669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.426752, 38.103882, 22.542236>,  <18.581636, 37.770439, 21.796263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.426752, 38.103882, 22.542236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.461187, 37.705639, 22.557007>,  <18.481848, 37.466694, 22.565870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.461187, 37.705639, 22.557007>,  <18.426752, 38.103882, 22.542236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.461187, 37.705639, 22.557007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648740, 0.084148, 0.756343,
		-0.756125, -0.041155, 0.653132,
		0.086087, -0.995603, 0.036927,
		18.487013, 37.406960, 22.568085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.167067, 37.846764, 23.291485>,  <18.426752, 38.103882, 22.542236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.167067, 37.846764, 23.291485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.427094, 37.576103, 23.153183>,  <18.583111, 37.413708, 23.070202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.427094, 37.576103, 23.153183>,  <18.167067, 37.846764, 23.291485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.427094, 37.576103, 23.153183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502022, 0.040867, 0.863889,
		-0.570425, -0.735165, 0.366263,
		0.650069, -0.676656, -0.345757,
		18.622114, 37.373108, 23.049456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.075262, 37.304825, 23.706528>,  <18.167067, 37.846764, 23.291485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.075262, 37.304825, 23.706528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443365, 37.329632, 23.551979>,  <18.664227, 37.344517, 23.459249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.443365, 37.329632, 23.551979>,  <18.075262, 37.304825, 23.706528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.443365, 37.329632, 23.551979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389573, -0.052113, 0.919520,
		0.036891, -0.996713, -0.072118,
		0.920256, 0.062017, -0.386370,
		18.719442, 37.348236, 23.436068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.317352, 25.498144, 25.539017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699532, 25.554070, 25.642990>,  <33.928841, 25.587626, 25.705374>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699532, 25.554070, 25.642990>,  <33.317352, 25.498144, 25.539017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699532, 25.554070, 25.642990> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034015, 0.926977, -0.373573,
		-0.293182, 0.348089, 0.890437,
		0.955451, 0.139813, 0.259933,
		33.986168, 25.596014, 25.720970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.343983, 26.199558, 25.542807>,  <33.317352, 25.498144, 25.539017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.343983, 26.199558, 25.542807> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724899, 26.079868, 25.518791>,  <33.953449, 26.008055, 25.504381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.724899, 26.079868, 25.518791>,  <33.343983, 26.199558, 25.542807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.724899, 26.079868, 25.518791> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236440, 0.847740, -0.474797,
		0.192971, 0.437949, 0.878045,
		0.952291, -0.299227, -0.060040,
		34.010586, 25.990101, 25.500778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773872, 26.653936, 25.962156>,  <33.343983, 26.199558, 25.542807>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773872, 26.653936, 25.962156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975651, 26.488731, 25.658852>,  <34.096718, 26.389608, 25.476870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.975651, 26.488731, 25.658852>,  <33.773872, 26.653936, 25.962156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.975651, 26.488731, 25.658852> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183401, 0.909394, -0.373320,
		0.843741, 0.049254, 0.534486,
		0.504445, -0.413010, -0.758260,
		34.126984, 26.364828, 25.431374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144627, 27.219978, 25.770119>,  <33.773872, 26.653936, 25.962156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144627, 27.219978, 25.770119> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260483, 26.983788, 25.468803>,  <34.329998, 26.842073, 25.288013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.260483, 26.983788, 25.468803>,  <34.144627, 27.219978, 25.770119>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.260483, 26.983788, 25.468803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257346, 0.806088, -0.532912,
		0.921889, -0.039501, 0.385435,
		0.289644, -0.590476, -0.753289,
		34.347378, 26.806644, 25.242817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788158, 27.506321, 25.504517>,  <34.144627, 27.219978, 25.770119>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788158, 27.506321, 25.504517> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602810, 27.289398, 25.224178>,  <34.491600, 27.159245, 25.055975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.602810, 27.289398, 25.224178>,  <34.788158, 27.506321, 25.504517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.602810, 27.289398, 25.224178> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129955, 0.740742, -0.659100,
		0.876583, -0.396488, -0.272765,
		-0.463373, -0.542309, -0.700847,
		34.463799, 27.126705, 25.013924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238697, 27.474455, 24.839350>,  <34.788158, 27.506321, 25.504517>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238697, 27.474455, 24.839350> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856113, 27.436180, 24.729050>,  <34.626564, 27.413216, 24.662870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.856113, 27.436180, 24.729050>,  <35.238697, 27.474455, 24.839350>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856113, 27.436180, 24.729050> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065652, 0.850001, -0.522674,
		0.284401, -0.518017, -0.806706,
		-0.956455, -0.095687, -0.275750,
		34.569176, 27.407475, 24.646324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.241840, 27.480772, 24.117088>,  <35.238697, 27.474455, 24.839350>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.241840, 27.480772, 24.117088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863945, 27.586082, 24.195217>,  <34.637207, 27.649269, 24.242094>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.863945, 27.586082, 24.195217>,  <35.241840, 27.480772, 24.117088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.863945, 27.586082, 24.195217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100801, 0.800260, -0.591120,
		-0.311937, -0.538766, -0.782577,
		-0.944740, 0.263277, 0.195323,
		34.580524, 27.665066, 24.253815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064072, 27.761715, 23.406975>,  <35.241840, 27.480772, 24.117088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064072, 27.761715, 23.406975> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776031, 27.878750, 23.658638>,  <34.603207, 27.948971, 23.809635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.776031, 27.878750, 23.658638>,  <35.064072, 27.761715, 23.406975>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776031, 27.878750, 23.658638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196419, 0.783697, -0.589269,
		-0.665484, -0.547914, -0.506874,
		-0.720105, 0.292589, 0.629159,
		34.560001, 27.966526, 23.847385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.522575, 28.039303, 23.000954>,  <35.064072, 27.761715, 23.406975>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.522575, 28.039303, 23.000954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444401, 28.183300, 23.365856>,  <34.397495, 28.269699, 23.584797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.444401, 28.183300, 23.365856>,  <34.522575, 28.039303, 23.000954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444401, 28.183300, 23.365856> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275491, 0.872586, -0.403359,
		-0.941227, -0.330150, -0.071360,
		-0.195437, 0.359994, 0.912255,
		34.385769, 28.291298, 23.639532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943867, 28.329618, 22.960058>,  <34.522575, 28.039303, 23.000954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943867, 28.329618, 22.960058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082981, 28.517139, 23.284840>,  <34.166451, 28.629652, 23.479708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.082981, 28.517139, 23.284840>,  <33.943867, 28.329618, 22.960058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.082981, 28.517139, 23.284840> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462708, 0.839028, -0.286240,
		-0.815441, -0.276146, 0.508723,
		0.347789, 0.468802, 0.811953,
		34.187317, 28.657780, 23.528425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.381947, 28.693983, 23.188179>,  <33.943867, 28.329618, 22.960058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.381947, 28.693983, 23.188179> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722687, 28.875568, 23.292698>,  <33.927132, 28.984520, 23.355410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.722687, 28.875568, 23.292698>,  <33.381947, 28.693983, 23.188179>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722687, 28.875568, 23.292698> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402184, 0.886470, -0.228951,
		-0.335566, 0.089942, 0.937713,
		0.851847, 0.453961, 0.261296,
		33.978241, 29.011757, 23.371086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.114910, 29.164011, 23.567225>,  <33.381947, 28.693983, 23.188179>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.114910, 29.164011, 23.567225> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483593, 29.296658, 23.486744>,  <33.704803, 29.376245, 23.438456>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.483593, 29.296658, 23.486744>,  <33.114910, 29.164011, 23.567225>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.483593, 29.296658, 23.486744> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372300, 0.901899, -0.219022,
		0.108834, 0.276783, 0.954750,
		0.921709, 0.331616, -0.201203,
		33.760105, 29.396143, 23.426382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108856, 29.855904, 23.828495>,  <33.114910, 29.164011, 23.567225>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108856, 29.855904, 23.828495> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417229, 29.867649, 23.574001>,  <33.602253, 29.874697, 23.421305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.417229, 29.867649, 23.574001>,  <33.108856, 29.855904, 23.828495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417229, 29.867649, 23.574001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305714, 0.893400, -0.329205,
		0.558746, 0.448302, 0.697731,
		0.770936, 0.029365, -0.636235,
		33.648510, 29.876459, 23.383131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.313206, 30.556597, 23.848373>,  <33.108856, 29.855904, 23.828495>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.313206, 30.556597, 23.848373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445919, 30.393467, 23.508114>,  <33.525547, 30.295589, 23.303959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.445919, 30.393467, 23.508114>,  <33.313206, 30.556597, 23.848373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.445919, 30.393467, 23.508114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196584, 0.852038, -0.485165,
		0.922645, 0.328194, 0.202521,
		0.331784, -0.407823, -0.850647,
		33.545456, 30.271120, 23.252920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.738712, 31.125931, 23.518190>,  <33.313206, 30.556597, 23.848373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.738712, 31.125931, 23.518190> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680763, 30.877430, 23.210148>,  <33.645996, 30.728331, 23.025322>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.680763, 30.877430, 23.210148>,  <33.738712, 31.125931, 23.518190>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680763, 30.877430, 23.210148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159714, 0.782791, -0.601440,
		0.976476, 0.035867, -0.212624,
		-0.144868, -0.621250, -0.770105,
		33.637302, 30.691055, 22.979116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.149578, 31.397310, 22.918297>,  <33.738712, 31.125931, 23.518190>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.149578, 31.397310, 22.918297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868553, 31.161438, 22.758961>,  <33.699936, 31.019915, 22.663359>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.868553, 31.161438, 22.758961>,  <34.149578, 31.397310, 22.918297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.868553, 31.161438, 22.758961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041783, 0.592985, -0.804129,
		0.710393, -0.548308, -0.441248,
		-0.702564, -0.589684, -0.398343,
		33.657784, 30.984533, 22.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332603, 31.354824, 22.207535>,  <34.149578, 31.397310, 22.918297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332603, 31.354824, 22.207535> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939602, 31.293350, 22.249599>,  <33.703800, 31.256466, 22.274837>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.939602, 31.293350, 22.249599>,  <34.332603, 31.354824, 22.207535>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.939602, 31.293350, 22.249599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184308, 0.721790, -0.667121,
		0.026622, -0.674833, -0.737490,
		-0.982508, -0.153686, 0.105162,
		33.644848, 31.247244, 22.281147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.959049, 31.320440, 21.465590>,  <34.332603, 31.354824, 22.207535>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.959049, 31.320440, 21.465590> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659714, 31.388947, 21.721920>,  <33.480114, 31.430050, 21.875719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.659714, 31.388947, 21.721920>,  <33.959049, 31.320440, 21.465590>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.659714, 31.388947, 21.721920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266945, 0.806646, -0.527316,
		-0.607232, -0.565676, -0.557925,
		-0.748338, 0.171268, 0.640826,
		33.435211, 31.440327, 21.914167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.281326, 31.203920, 21.088358>,  <33.959049, 31.320440, 21.465590>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.281326, 31.203920, 21.088358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221638, 31.442238, 21.404018>,  <33.185825, 31.585228, 21.593414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.221638, 31.442238, 21.404018>,  <33.281326, 31.203920, 21.088358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221638, 31.442238, 21.404018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490572, 0.648331, -0.582242,
		-0.858529, -0.474020, 0.195534,
		-0.149224, 0.595795, 0.789152,
		33.176872, 31.620975, 21.640764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.632805, 31.375727, 20.947905>,  <33.281326, 31.203920, 21.088358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.632805, 31.375727, 20.947905> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737423, 31.641872, 21.227585>,  <32.800194, 31.801559, 21.395393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.737423, 31.641872, 21.227585>,  <32.632805, 31.375727, 20.947905>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.737423, 31.641872, 21.227585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565056, 0.692853, -0.447959,
		-0.782500, -0.277927, 0.557181,
		0.261545, 0.665366, 0.699201,
		32.815887, 31.841482, 21.437346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.995840, 31.774529, 21.064600>,  <32.632805, 31.375727, 20.947905>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.995840, 31.774529, 21.064600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.305569, 31.999561, 21.180481>,  <32.491405, 32.134583, 21.250010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.305569, 31.999561, 21.180481>,  <31.995840, 31.774529, 21.064600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305569, 31.999561, 21.180481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469730, 0.817776, -0.332559,
		-0.424003, 0.121426, 0.897484,
		0.774322, 0.562581, 0.289702,
		32.537865, 32.168335, 21.267391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730564, 32.353592, 21.626003>,  <31.995840, 31.774529, 21.064600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730564, 32.353592, 21.626003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056416, 32.480946, 21.432091>,  <32.251926, 32.557358, 21.315742>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.056416, 32.480946, 21.432091>,  <31.730564, 32.353592, 21.626003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.056416, 32.480946, 21.432091> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519723, 0.771728, -0.366502,
		0.257431, 0.550515, 0.794143,
		0.814627, 0.318385, -0.484782,
		32.300804, 32.576462, 21.286655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.492788, 33.056938, 21.733721>,  <31.730564, 32.353592, 21.626003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.492788, 33.056938, 21.733721> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.201134, 32.845753, 21.559544>,  <31.026140, 32.719040, 21.455038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.201134, 32.845753, 21.559544>,  <31.492788, 33.056938, 21.733721>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201134, 32.845753, 21.559544> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156990, -0.748337, 0.644473,
		-0.666118, 0.401549, 0.628526,
		-0.729137, -0.527968, -0.435442,
		30.982393, 32.687363, 21.428911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.164839, 32.757366, 22.315102>,  <31.492788, 33.056938, 21.733721>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.164839, 32.757366, 22.315102> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.972818, 32.564220, 22.022148>,  <30.857605, 32.448334, 21.846376>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.972818, 32.564220, 22.022148>,  <31.164839, 32.757366, 22.315102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.972818, 32.564220, 22.022148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023460, -0.841642, 0.539525,
		-0.876926, 0.241819, 0.415361,
		-0.480052, -0.482868, -0.732385,
		30.828802, 32.419361, 21.802433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739782, 32.378231, 22.701292>,  <31.164839, 32.757366, 22.315102>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739782, 32.378231, 22.701292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.728949, 32.204437, 22.341183>,  <30.722448, 32.100163, 22.125116>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.728949, 32.204437, 22.341183>,  <30.739782, 32.378231, 22.701292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.728949, 32.204437, 22.341183> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026537, -0.900600, 0.433839,
		-0.999281, -0.012140, 0.035922,
		-0.027085, -0.434481, -0.900274,
		30.720823, 32.074093, 22.071100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129593, 31.904570, 22.684231>,  <30.739782, 32.378231, 22.701292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129593, 31.904570, 22.684231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.377165, 31.779713, 22.395927>,  <30.525709, 31.704798, 22.222946>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.377165, 31.779713, 22.395927>,  <30.129593, 31.904570, 22.684231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.377165, 31.779713, 22.395927> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056249, -0.932901, 0.355714,
		-0.783428, -0.179621, -0.594959,
		0.618931, -0.312142, -0.720757,
		30.562843, 31.686069, 22.179701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.726084, 31.476015, 22.200787>,  <30.129593, 31.904570, 22.684231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.726084, 31.476015, 22.200787> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113823, 31.378555, 22.213421>,  <30.346466, 31.320080, 22.221001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.113823, 31.378555, 22.213421>,  <29.726084, 31.476015, 22.200787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113823, 31.378555, 22.213421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240178, -0.912661, 0.330703,
		-0.051750, -0.328152, -0.943206,
		0.969349, -0.243651, 0.031585,
		30.404627, 31.305460, 22.222897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.689930, 30.786112, 22.088749>,  <29.726084, 31.476015, 22.200787>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.689930, 30.786112, 22.088749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.073833, 30.835606, 22.189587>,  <30.304176, 30.865301, 22.250090>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.073833, 30.835606, 22.189587>,  <29.689930, 30.786112, 22.088749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073833, 30.835606, 22.189587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068789, -0.973937, 0.216135,
		0.272269, -0.190096, -0.943257,
		0.959759, 0.123733, 0.252096,
		30.361761, 30.872725, 22.265215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.033783, 30.244881, 21.807150>,  <29.689930, 30.786112, 22.088749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.033783, 30.244881, 21.807150> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.272238, 30.361649, 22.106323>,  <30.415310, 30.431709, 22.285828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.272238, 30.361649, 22.106323>,  <30.033783, 30.244881, 21.807150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.272238, 30.361649, 22.106323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233525, -0.954328, 0.186343,
		0.768171, 0.063575, -0.637080,
		0.596137, 0.291918, 0.747934,
		30.451078, 30.449224, 22.330704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.472174, 29.807865, 21.822670>,  <30.033783, 30.244881, 21.807150>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.472174, 29.807865, 21.822670> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.562141, 29.953625, 22.184139>,  <30.616123, 30.041080, 22.401020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.562141, 29.953625, 22.184139>,  <30.472174, 29.807865, 21.822670>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.562141, 29.953625, 22.184139> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101703, -0.931150, 0.350166,
		0.969055, 0.013146, -0.246496,
		0.224921, 0.364400, 0.903672,
		30.629618, 30.062944, 22.455240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.109987, 29.386719, 22.065281>,  <30.472174, 29.807865, 21.822670>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.109987, 29.386719, 22.065281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939457, 29.558250, 22.383865>,  <30.837139, 29.661169, 22.575016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.939457, 29.558250, 22.383865>,  <31.109987, 29.386719, 22.065281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.939457, 29.558250, 22.383865> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168584, -0.827395, 0.535720,
		0.888721, 0.362663, 0.280448,
		-0.426327, 0.428827, 0.796463,
		30.811560, 29.686899, 22.622805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.642429, 29.359730, 22.586109>,  <31.109987, 29.386719, 22.065281>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.642429, 29.359730, 22.586109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286301, 29.375320, 22.767574>,  <31.072624, 29.384674, 22.876453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.286301, 29.375320, 22.767574>,  <31.642429, 29.359730, 22.586109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.286301, 29.375320, 22.767574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190560, -0.872985, 0.448981,
		0.413541, 0.486187, 0.769809,
		-0.890320, 0.038977, 0.453663,
		31.019205, 29.387014, 22.903673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759333, 29.081194, 23.236290>,  <31.642429, 29.359730, 22.586109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759333, 29.081194, 23.236290> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361477, 29.068394, 23.196960>,  <31.122763, 29.060713, 23.173363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.361477, 29.068394, 23.196960>,  <31.759333, 29.081194, 23.236290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.361477, 29.068394, 23.196960> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004695, -0.963898, 0.266231,
		-0.103295, 0.264342, 0.958881,
		-0.994640, -0.032002, -0.098325,
		31.063086, 29.058794, 23.167463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.487680, 28.819986, 23.920538>,  <31.759333, 29.081194, 23.236290>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.487680, 28.819986, 23.920538> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214037, 28.753677, 23.636421>,  <31.049850, 28.713892, 23.465952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.214037, 28.753677, 23.636421>,  <31.487680, 28.819986, 23.920538>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.214037, 28.753677, 23.636421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303659, -0.820690, 0.484003,
		-0.663163, 0.546798, 0.511103,
		-0.684109, -0.165772, -0.710292,
		31.008804, 28.703945, 23.423334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711651, 28.653683, 24.238291>,  <31.487680, 28.819986, 23.920538>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711651, 28.653683, 24.238291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679796, 28.486115, 23.876480>,  <30.660685, 28.385574, 23.659393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.679796, 28.486115, 23.876480>,  <30.711651, 28.653683, 24.238291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679796, 28.486115, 23.876480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156390, -0.890919, 0.426387,
		-0.984480, 0.175414, 0.005434,
		-0.079636, -0.418920, -0.904524,
		30.655905, 28.360439, 23.605124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.444500, 28.109924, 24.473307>,  <30.711651, 28.653683, 24.238291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.444500, 28.109924, 24.473307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.541430, 28.014179, 24.097225>,  <30.599586, 27.956732, 23.871576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.541430, 28.014179, 24.097225>,  <30.444500, 28.109924, 24.473307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.541430, 28.014179, 24.097225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171577, -0.964386, 0.201299,
		-0.954904, 0.112538, -0.274762,
		0.242323, -0.239364, -0.940205,
		30.614126, 27.942369, 23.815165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.895292, 27.634274, 24.245724>,  <30.444500, 28.109924, 24.473307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.895292, 27.634274, 24.245724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213217, 27.573750, 24.010647>,  <30.403971, 27.537436, 23.869602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.213217, 27.573750, 24.010647>,  <29.895292, 27.634274, 24.245724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.213217, 27.573750, 24.010647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100738, -0.922085, 0.373646,
		-0.598436, -0.356181, -0.717641,
		0.794812, -0.151309, -0.587689,
		30.451660, 27.528357, 23.834339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.837769, 26.929974, 23.928709>,  <29.895292, 27.634274, 24.245724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.837769, 26.929974, 23.928709> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.224106, 27.029789, 23.956638>,  <30.455908, 27.089678, 23.973396>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.224106, 27.029789, 23.956638>,  <29.837769, 26.929974, 23.928709>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.224106, 27.029789, 23.956638> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186244, -0.855868, 0.482497,
		0.180159, -0.453013, -0.873110,
		0.965845, 0.249538, 0.069821,
		30.513859, 27.104650, 23.977585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.208353, 26.278215, 23.849209>,  <29.837769, 26.929974, 23.928709>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.208353, 26.278215, 23.849209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.494434, 26.519829, 23.989853>,  <30.666082, 26.664797, 24.074240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.494434, 26.519829, 23.989853>,  <30.208353, 26.278215, 23.849209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.494434, 26.519829, 23.989853> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207706, -0.664043, 0.718265,
		0.667340, -0.440674, -0.600387,
		0.715203, 0.604031, 0.351611,
		30.708996, 26.701038, 24.095337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.792723, 25.887836, 23.829428>,  <30.208353, 26.278215, 23.849209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.792723, 25.887836, 23.829428> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.807291, 26.161991, 24.120335>,  <30.816032, 26.326485, 24.294878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.807291, 26.161991, 24.120335>,  <30.792723, 25.887836, 23.829428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.807291, 26.161991, 24.120335> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111645, -0.725984, 0.678588,
		0.993081, 0.056482, -0.102960,
		0.036419, 0.685388, 0.727267,
		30.818216, 26.367607, 24.338514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<31.767441, 25.964716, 23.989748> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557543, 26.120426, 24.292564>,  <31.431604, 26.213852, 24.474255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.557543, 26.120426, 24.292564>,  <31.767441, 25.964716, 23.989748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557543, 26.120426, 24.292564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367091, -0.698899, 0.613828,
		0.768041, 0.600005, 0.223845,
		-0.524745, 0.389273, 0.757040,
		31.400120, 26.237207, 24.519676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179428, 26.142376, 24.567377>,  <31.767441, 25.964716, 23.989748>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179428, 26.142376, 24.567377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.818407, 26.075752, 24.726200>,  <31.601795, 26.035778, 24.821495>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.818407, 26.075752, 24.726200>,  <32.179428, 26.142376, 24.567377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818407, 26.075752, 24.726200> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424883, -0.494016, 0.758566,
		0.069808, 0.853350, 0.516643,
		-0.902553, -0.166559, 0.397060,
		31.547642, 26.025785, 24.845318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273552, 26.154175, 25.286951>,  <32.179428, 26.142376, 24.567377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273552, 26.154175, 25.286951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912897, 25.985218, 25.249794>,  <31.696503, 25.883844, 25.227499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.912897, 25.985218, 25.249794>,  <32.273552, 26.154175, 25.286951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.912897, 25.985218, 25.249794> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220156, -0.633142, 0.742067,
		-0.372258, 0.648627, 0.663858,
		-0.901640, -0.422393, -0.092893,
		31.642405, 25.858500, 25.221926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934011, 26.190239, 25.928059>,  <32.273552, 26.154175, 25.286951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934011, 26.190239, 25.928059> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739965, 25.882137, 25.762470>,  <31.623539, 25.697277, 25.663116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.739965, 25.882137, 25.762470>,  <31.934011, 26.190239, 25.928059>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.739965, 25.882137, 25.762470> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015653, -0.465683, 0.884813,
		-0.874311, 0.435715, 0.213853,
		-0.485114, -0.770254, -0.413972,
		31.594431, 25.651060, 25.638279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510876, 26.052784, 26.462137>,  <31.934011, 26.190239, 25.928059>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510876, 26.052784, 26.462137> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512903, 25.722733, 26.236168>,  <31.514120, 25.524702, 26.100586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.512903, 25.722733, 26.236168>,  <31.510876, 26.052784, 26.462137>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.512903, 25.722733, 26.236168> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113795, -0.561734, 0.819454,
		-0.993491, 0.060134, -0.096742,
		0.005066, -0.825130, -0.564921,
		31.514423, 25.475193, 26.066692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053370, 25.499937, 26.892462>,  <31.510876, 26.052784, 26.462137>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.053370, 25.499937, 26.892462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232080, 25.267891, 26.620033>,  <31.339306, 25.128664, 26.456575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.232080, 25.267891, 26.620033>,  <31.053370, 25.499937, 26.892462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.232080, 25.267891, 26.620033> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072120, -0.735444, 0.673736,
		-0.891734, -0.350128, -0.286741,
		0.446776, -0.580114, -0.681072,
		31.366114, 25.093857, 26.415712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750156, 24.727900, 26.873270>,  <31.053370, 25.499937, 26.892462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750156, 24.727900, 26.873270> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108143, 24.675709, 26.702618>,  <31.322935, 24.644394, 26.600225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.108143, 24.675709, 26.702618>,  <30.750156, 24.727900, 26.873270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.108143, 24.675709, 26.702618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145902, -0.818098, 0.556263,
		-0.421606, -0.560082, -0.713132,
		0.894965, -0.130476, -0.426632,
		31.376633, 24.636566, 26.574629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729378, 24.090622, 26.451401>,  <30.750156, 24.727900, 26.873270>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729378, 24.090622, 26.451401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116568, 24.164406, 26.519516>,  <31.348881, 24.208677, 26.560385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.116568, 24.164406, 26.519516>,  <30.729378, 24.090622, 26.451401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.116568, 24.164406, 26.519516> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113294, -0.926291, 0.359375,
		0.224029, -0.328573, -0.917524,
		0.967975, 0.184461, 0.170290,
		31.406960, 24.219744, 26.570602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.065039, 23.488831, 26.220558>,  <30.729378, 24.090622, 26.451401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.065039, 23.488831, 26.220558> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.337101, 23.673500, 26.448330>,  <31.500338, 23.784302, 26.584993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.337101, 23.673500, 26.448330>,  <31.065039, 23.488831, 26.220558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.337101, 23.673500, 26.448330> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218228, -0.869071, 0.443950,
		0.699833, -0.177690, -0.691853,
		0.680155, 0.461672, 0.569428,
		31.541147, 23.812002, 26.619158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.666941, 22.993189, 26.262167>,  <31.065039, 23.488831, 26.220558>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.666941, 22.993189, 26.262167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682825, 23.243938, 26.573410>,  <31.692356, 23.394388, 26.760157>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.682825, 23.243938, 26.573410>,  <31.666941, 22.993189, 26.262167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682825, 23.243938, 26.573410> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357755, -0.736019, 0.574707,
		0.932971, 0.255550, -0.253495,
		0.039710, 0.626873, 0.778108,
		31.694738, 23.432001, 26.806843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195305, 22.601042, 26.704031>,  <31.666941, 22.993189, 26.262167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195305, 22.601042, 26.704031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013554, 22.871677, 26.935810>,  <31.904501, 23.034060, 27.074879>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.013554, 22.871677, 26.935810>,  <32.195305, 22.601042, 26.704031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013554, 22.871677, 26.935810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030337, -0.638346, 0.769151,
		0.890290, 0.367068, 0.269528,
		-0.454383, 0.676591, 0.579449,
		31.877239, 23.074656, 27.109644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490379, 22.534861, 27.302429>,  <32.195305, 22.601042, 26.704031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490379, 22.534861, 27.302429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142700, 22.722229, 27.365768>,  <31.934093, 22.834650, 27.403772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142700, 22.722229, 27.365768>,  <32.490379, 22.534861, 27.302429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142700, 22.722229, 27.365768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110951, -0.496843, 0.860719,
		0.481854, 0.730566, 0.483827,
		-0.869198, 0.468423, 0.158349,
		31.881941, 22.862755, 27.413273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.509148, 22.625906, 27.967049>,  <32.490379, 22.534861, 27.302429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.509148, 22.625906, 27.967049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120586, 22.642239, 27.873482>,  <31.887451, 22.652039, 27.817341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.120586, 22.642239, 27.873482>,  <32.509148, 22.625906, 27.967049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.120586, 22.642239, 27.873482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233511, -0.343062, 0.909825,
		-0.043101, 0.938425, 0.342784,
		-0.971398, 0.040830, -0.233919,
		31.829166, 22.654488, 27.803307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260845, 22.927973, 28.533678>,  <32.509148, 22.625906, 27.967049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260845, 22.927973, 28.533678> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958609, 22.734818, 28.356632>,  <31.777267, 22.618925, 28.250404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.958609, 22.734818, 28.356632>,  <32.260845, 22.927973, 28.533678>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.958609, 22.734818, 28.356632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245522, -0.417666, 0.874799,
		-0.607294, 0.769660, 0.197024,
		-0.755588, -0.482886, -0.442615,
		31.731932, 22.589952, 28.223848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663445, 23.229485, 28.847612>,  <32.260845, 22.927973, 28.533678>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663445, 23.229485, 28.847612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584324, 22.864719, 28.703785>,  <31.536852, 22.645861, 28.617489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.584324, 22.864719, 28.703785>,  <31.663445, 23.229485, 28.847612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.584324, 22.864719, 28.703785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196296, -0.322535, 0.925980,
		-0.960387, 0.253741, -0.115207,
		-0.197800, -0.911913, -0.359567,
		31.524984, 22.591145, 28.595915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300022, 22.925863, 29.427019>,  <31.663445, 23.229485, 28.847612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300022, 22.925863, 29.427019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350113, 22.596828, 29.205147>,  <31.380167, 22.399408, 29.072023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.350113, 22.596828, 29.205147>,  <31.300022, 22.925863, 29.427019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.350113, 22.596828, 29.205147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225896, -0.568036, 0.791395,
		-0.966069, 0.026197, -0.256952,
		0.125226, -0.822587, -0.554680,
		31.387680, 22.350052, 29.038742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.740730, 22.511147, 29.595926>,  <31.300022, 22.925863, 29.427019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.740730, 22.511147, 29.595926> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029524, 22.269096, 29.461723>,  <31.202799, 22.123865, 29.381203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.029524, 22.269096, 29.461723>,  <30.740730, 22.511147, 29.595926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029524, 22.269096, 29.461723> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233316, -0.669416, 0.705298,
		-0.651383, -0.430937, -0.624494,
		0.721986, -0.605124, -0.335501,
		31.246119, 22.087559, 29.361073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.517929, 21.813925, 29.678534>,  <30.740730, 22.511147, 29.595926>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.517929, 21.813925, 29.678534> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912954, 21.779148, 29.626141>,  <31.149969, 21.758282, 29.594706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.912954, 21.779148, 29.626141>,  <30.517929, 21.813925, 29.678534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.912954, 21.779148, 29.626141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047245, -0.630529, 0.774727,
		-0.149942, -0.771282, -0.618581,
		0.987565, -0.086939, -0.130982,
		31.209225, 21.753067, 29.586845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595978, 21.086462, 29.845995>,  <30.517929, 21.813925, 29.678534>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595978, 21.086462, 29.845995> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.944134, 21.279903, 29.882977>,  <31.153028, 21.395967, 29.905167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.944134, 21.279903, 29.882977>,  <30.595978, 21.086462, 29.845995>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944134, 21.279903, 29.882977> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125876, -0.400103, 0.907785,
		0.475999, -0.778490, -0.409120,
		0.870391, 0.483602, 0.092456,
		31.205252, 21.424984, 29.910713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.999266, 20.588005, 30.079819>,  <30.595978, 21.086462, 29.845995>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.999266, 20.588005, 30.079819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182262, 20.934261, 30.161179>,  <31.292061, 21.142015, 30.209993>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.182262, 20.934261, 30.161179>,  <30.999266, 20.588005, 30.079819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.182262, 20.934261, 30.161179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157228, -0.303883, 0.939646,
		0.875203, -0.397901, -0.275127,
		0.457493, 0.865638, 0.203398,
		31.319510, 21.193953, 30.222198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575058, 20.347204, 30.327694>,  <30.999266, 20.588005, 30.079819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.575058, 20.347204, 30.327694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.578615, 20.717052, 30.480007>,  <31.580750, 20.938961, 30.571394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.578615, 20.717052, 30.480007>,  <31.575058, 20.347204, 30.327694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578615, 20.717052, 30.480007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020964, -0.380886, 0.924384,
		0.999741, -0.000238, -0.022771,
		0.008893, 0.924622, 0.380782,
		31.581284, 20.994438, 30.594242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.199055, 20.408100, 30.730606>,  <31.575058, 20.347204, 30.327694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.199055, 20.408100, 30.730606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918814, 20.657684, 30.869072>,  <31.750669, 20.807434, 30.952150>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.918814, 20.657684, 30.869072>,  <32.199055, 20.408100, 30.730606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.918814, 20.657684, 30.869072> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086748, -0.407051, 0.909277,
		0.708257, 0.667072, 0.231055,
		-0.700604, 0.623958, 0.346164,
		31.708632, 20.844872, 30.972921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485119, 20.601978, 31.418188>,  <32.199055, 20.408100, 30.730606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485119, 20.601978, 31.418188> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088589, 20.638912, 31.380795>,  <31.850670, 20.661072, 31.358358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.088589, 20.638912, 31.380795>,  <32.485119, 20.601978, 31.418188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088589, 20.638912, 31.380795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126875, -0.487623, 0.863786,
		0.034170, 0.868158, 0.495110,
		-0.991330, 0.092333, -0.093485,
		31.791189, 20.666613, 31.352749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.098118, 20.930738, 31.987457>,  <32.485119, 20.601978, 31.418188>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.098118, 20.930738, 31.987457> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889864, 20.643276, 31.803082>,  <31.764910, 20.470798, 31.692455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.889864, 20.643276, 31.803082>,  <32.098118, 20.930738, 31.987457>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.889864, 20.643276, 31.803082> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154973, -0.451369, 0.878777,
		-0.839594, 0.528959, 0.123628,
		-0.520639, -0.718657, -0.460941,
		31.733673, 20.427679, 31.664799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.736095, 20.693827, 32.131496>,  <32.098118, 20.930738, 31.987457>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.736095, 20.693827, 32.131496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095707, 20.550800, 32.030396>,  <33.311474, 20.464985, 31.969734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.095707, 20.550800, 32.030396>,  <32.736095, 20.693827, 32.131496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.095707, 20.550800, 32.030396> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213305, 0.861727, -0.460355,
		0.382415, 0.359960, 0.850992,
		0.899033, -0.357567, -0.252756,
		33.365417, 20.443531, 31.954569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229908, 21.295576, 32.146805>,  <32.736095, 20.693827, 32.131496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229908, 21.295576, 32.146805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400795, 21.035305, 31.895695>,  <33.503326, 20.879143, 31.745028>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.400795, 21.035305, 31.895695>,  <33.229908, 21.295576, 32.146805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.400795, 21.035305, 31.895695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032429, 0.704911, -0.708554,
		0.903569, 0.282345, 0.322249,
		0.427214, -0.650678, -0.627780,
		33.528957, 20.840101, 31.707361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889538, 21.542917, 32.019737>,  <33.229908, 21.295576, 32.146805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889538, 21.542917, 32.019737> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789360, 21.321529, 31.702007>,  <33.729256, 21.188698, 31.511370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.789360, 21.321529, 31.702007>,  <33.889538, 21.542917, 32.019737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.789360, 21.321529, 31.702007> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258738, 0.752364, -0.605808,
		0.932917, -0.357241, -0.045219,
		-0.250441, -0.553468, -0.794325,
		33.714230, 21.155489, 31.463709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.365826, 21.807428, 31.613773>,  <33.889538, 21.542917, 32.019737>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.365826, 21.807428, 31.613773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097282, 21.616154, 31.387280>,  <33.936157, 21.501389, 31.251383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.097282, 21.616154, 31.387280>,  <34.365826, 21.807428, 31.613773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.097282, 21.616154, 31.387280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093406, 0.703324, -0.704706,
		0.735228, -0.525996, -0.427513,
		-0.671353, -0.478188, -0.566235,
		33.895874, 21.472698, 31.217409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.738098, 21.744946, 31.020813>,  <34.365826, 21.807428, 31.613773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.738098, 21.744946, 31.020813> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350632, 21.696671, 30.933975>,  <34.118153, 21.667706, 30.881872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.350632, 21.696671, 30.933975>,  <34.738098, 21.744946, 31.020813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.350632, 21.696671, 30.933975> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059586, 0.735591, -0.674801,
		0.241131, -0.666589, -0.705348,
		-0.968662, -0.120686, -0.217093,
		34.060032, 21.660465, 30.868847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.716915, 21.446381, 30.306673>,  <34.738098, 21.744946, 31.020813>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.716915, 21.446381, 30.306673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381973, 21.648918, 30.389088>,  <34.181007, 21.770441, 30.438538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.381973, 21.648918, 30.389088>,  <34.716915, 21.446381, 30.306673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.381973, 21.648918, 30.389088> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123126, 0.541911, -0.831368,
		-0.532614, -0.670781, -0.516116,
		-0.837354, 0.506345, 0.206038,
		34.130768, 21.800821, 30.450899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.370392, 21.573566, 29.617819>,  <34.716915, 21.446381, 30.306673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.370392, 21.573566, 29.617819> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184803, 21.826286, 29.866192>,  <34.073448, 21.977919, 30.015215>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.184803, 21.826286, 29.866192>,  <34.370392, 21.573566, 29.617819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.184803, 21.826286, 29.866192> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056889, 0.678249, -0.732627,
		-0.884019, -0.375245, -0.278749,
		-0.463976, 0.631799, 0.620932,
		34.045609, 22.015825, 30.052471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752178, 21.772860, 29.287294>,  <34.370392, 21.573566, 29.617819>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752178, 21.772860, 29.287294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827309, 22.057327, 29.558281>,  <33.872387, 22.228008, 29.720873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.827309, 22.057327, 29.558281>,  <33.752178, 21.772860, 29.287294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.827309, 22.057327, 29.558281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238526, 0.702122, -0.670917,
		-0.952800, -0.035579, 0.301508,
		0.187824, 0.711167, 0.677468,
		33.883656, 22.270678, 29.761522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.447903, 22.307825, 28.980673>,  <33.752178, 21.772860, 29.287294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.447903, 22.307825, 28.980673> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642109, 22.507431, 29.267799>,  <33.758633, 22.627195, 29.440075>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.642109, 22.507431, 29.267799>,  <33.447903, 22.307825, 28.980673>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.642109, 22.507431, 29.267799> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008234, 0.823658, -0.567027,
		-0.874190, 0.269389, 0.404007,
		0.485514, 0.499016, 0.717815,
		33.787762, 22.657135, 29.483145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975094, 22.914927, 29.150467>,  <33.447903, 22.307825, 28.980673>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975094, 22.914927, 29.150467> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356384, 22.990986, 29.244450>,  <33.585159, 23.036621, 29.300840>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.356384, 22.990986, 29.244450>,  <32.975094, 22.914927, 29.150467>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356384, 22.990986, 29.244450> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013930, 0.748876, -0.662563,
		-0.301940, 0.634845, 0.711199,
		0.953225, 0.190147, 0.234959,
		33.642353, 23.048031, 29.314938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.036068, 23.676189, 29.270742>,  <32.975094, 22.914927, 29.150467>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.036068, 23.676189, 29.270742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394733, 23.534313, 29.164768>,  <33.609932, 23.449188, 29.101183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.394733, 23.534313, 29.164768>,  <33.036068, 23.676189, 29.270742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.394733, 23.534313, 29.164768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095936, 0.739890, -0.665853,
		0.432195, 0.571629, 0.697459,
		0.896663, -0.354689, -0.264936,
		33.663731, 23.427906, 29.085287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445370, 24.252411, 29.242964>,  <33.036068, 23.676189, 29.270742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445370, 24.252411, 29.242964> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626698, 23.987385, 29.004467>,  <33.735497, 23.828369, 28.861368>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.626698, 23.987385, 29.004467>,  <33.445370, 24.252411, 29.242964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626698, 23.987385, 29.004467> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070831, 0.693587, -0.716882,
		0.888527, 0.282748, 0.361350,
		0.453324, -0.662564, -0.596243,
		33.762695, 23.788616, 28.825594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.866302, 24.629389, 28.896091>,  <33.445370, 24.252411, 29.242964>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.866302, 24.629389, 28.896091> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902855, 24.310608, 28.657253>,  <33.924786, 24.119339, 28.513950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.902855, 24.310608, 28.657253>,  <33.866302, 24.629389, 28.896091>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902855, 24.310608, 28.657253> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007245, 0.599054, -0.800676,
		0.995790, 0.077491, 0.048967,
		0.091379, -0.796950, -0.597093,
		33.930267, 24.071524, 28.478125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.396854, 24.885252, 28.411180>,  <33.866302, 24.629389, 28.896091>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.396854, 24.885252, 28.411180> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.220531, 24.552780, 28.275635>,  <34.114738, 24.353298, 28.194307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.220531, 24.552780, 28.275635>,  <34.396854, 24.885252, 28.411180>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.220531, 24.552780, 28.275635> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034822, 0.361405, -0.931759,
		0.896926, -0.422527, -0.130367,
		-0.440809, -0.831179, -0.338866,
		34.088287, 24.303427, 28.173975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736221, 24.716267, 27.821003>,  <34.396854, 24.885252, 28.411180>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736221, 24.716267, 27.821003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386024, 24.528831, 27.773773>,  <34.175907, 24.416370, 27.745436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.386024, 24.528831, 27.773773>,  <34.736221, 24.716267, 27.821003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386024, 24.528831, 27.773773> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066113, 0.125899, -0.989838,
		0.478691, -0.874400, -0.079244,
		-0.875491, -0.468588, -0.118076,
		34.123379, 24.388256, 27.738350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860081, 24.361677, 27.329168>,  <34.736221, 24.716267, 27.821003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860081, 24.361677, 27.329168> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460449, 24.362488, 27.312019>,  <34.220669, 24.362974, 27.301731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.460449, 24.362488, 27.312019>,  <34.860081, 24.361677, 27.329168>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460449, 24.362488, 27.312019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042808, 0.118663, -0.992011,
		0.003077, -0.992933, -0.118641,
		-0.999079, 0.002027, -0.042870,
		34.160725, 24.363094, 27.299158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614376, 23.889147, 26.803263>,  <34.860081, 24.361677, 27.329168>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614376, 23.889147, 26.803263> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333611, 24.168243, 26.860500>,  <34.165150, 24.335701, 26.894842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.333611, 24.168243, 26.860500>,  <34.614376, 23.889147, 26.803263>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333611, 24.168243, 26.860500> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040311, 0.239493, -0.970061,
		-0.711120, -0.675131, -0.196230,
		-0.701914, 0.697740, 0.143094,
		34.123035, 24.377565, 26.903429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.368656, 24.001415, 26.086695>,  <34.614376, 23.889147, 26.803263>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.368656, 24.001415, 26.086695> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243145, 24.304123, 26.316074>,  <34.167839, 24.485748, 26.453701>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.243145, 24.304123, 26.316074>,  <34.368656, 24.001415, 26.086695>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.243145, 24.304123, 26.316074> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039048, 0.593154, -0.804142,
		-0.948693, -0.274714, -0.156569,
		-0.313778, 0.756770, 0.573448,
		34.149010, 24.531155, 26.488110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.857944, 24.270254, 25.708773>,  <34.368656, 24.001415, 26.086695>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.857944, 24.270254, 25.708773> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965599, 24.576138, 25.942963>,  <34.030193, 24.759668, 26.083477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.965599, 24.576138, 25.942963>,  <33.857944, 24.270254, 25.708773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.965599, 24.576138, 25.942963> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080764, 0.623686, -0.777491,
		-0.959709, 0.161967, 0.229618,
		0.269137, 0.764710, 0.585477,
		34.046341, 24.805552, 26.118607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517559, 24.807070, 25.458990>,  <33.857944, 24.270254, 25.708773>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517559, 24.807070, 25.458990> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780422, 25.000793, 25.690018>,  <33.938141, 25.117027, 25.828634>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.780422, 25.000793, 25.690018>,  <33.517559, 24.807070, 25.458990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.780422, 25.000793, 25.690018> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036560, 0.785837, -0.617352,
		-0.752863, 0.384584, 0.534128,
		0.657161, 0.484309, 0.577567,
		33.977570, 25.146086, 25.863287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.255819, 31.866737, 15.145163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649139, 31.897072, 15.211337>,  <20.885132, 31.915272, 15.251041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.649139, 31.897072, 15.211337>,  <20.255819, 31.866737, 15.145163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.649139, 31.897072, 15.211337> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148461, -0.191513, 0.970197,
		0.105260, -0.978556, -0.177056,
		0.983300, 0.075838, 0.165436,
		20.944130, 31.919823, 15.260967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.444958, 31.277493, 15.639952>,  <20.255819, 31.866737, 15.145163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.444958, 31.277493, 15.639952> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744951, 31.538425, 15.683738>,  <20.924948, 31.694986, 15.710010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.744951, 31.538425, 15.683738>,  <20.444958, 31.277493, 15.639952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.744951, 31.538425, 15.683738> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012127, -0.179024, 0.983770,
		0.661343, -0.736486, -0.142177,
		0.749986, 0.652334, 0.109465,
		20.969948, 31.734125, 15.716578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.887152, 30.990582, 16.152369>,  <20.444958, 31.277493, 15.639952>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.887152, 30.990582, 16.152369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991770, 31.376404, 16.138367>,  <21.054541, 31.607897, 16.129965>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.991770, 31.376404, 16.138367>,  <20.887152, 30.990582, 16.152369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.991770, 31.376404, 16.138367> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046340, 0.023678, 0.998645,
		0.964078, -0.262814, -0.038504,
		0.261546, 0.964556, -0.035006,
		21.070234, 31.665771, 16.127865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.467316, 31.012014, 16.579651>,  <20.887152, 30.990582, 16.152369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.467316, 31.012014, 16.579651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329779, 31.387188, 16.561535>,  <21.247257, 31.612293, 16.550665>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.329779, 31.387188, 16.561535>,  <21.467316, 31.012014, 16.579651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.329779, 31.387188, 16.561535> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017255, 0.054533, 0.998363,
		0.938869, 0.342496, -0.034935,
		-0.343841, 0.937935, -0.045290,
		21.226627, 31.668568, 16.547949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.815990, 31.380926, 17.195494>,  <21.467316, 31.012014, 16.579651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.815990, 31.380926, 17.195494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.531820, 31.636860, 17.078255>,  <21.361319, 31.790421, 17.007912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.531820, 31.636860, 17.078255>,  <21.815990, 31.380926, 17.195494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.531820, 31.636860, 17.078255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037541, 0.381418, 0.923640,
		0.702769, 0.667182, -0.246949,
		-0.710427, 0.639835, -0.293095,
		21.318693, 31.828810, 16.990326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.934845, 32.101315, 17.292917>,  <21.815990, 31.380926, 17.195494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.934845, 32.101315, 17.292917> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535507, 32.119774, 17.306637>,  <21.295904, 32.130852, 17.314869>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.535507, 32.119774, 17.306637>,  <21.934845, 32.101315, 17.292917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.535507, 32.119774, 17.306637> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056005, 0.645229, 0.761934,
		0.013033, 0.762594, -0.646746,
		-0.998345, 0.046151, 0.034300,
		21.236004, 32.133617, 17.316927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.770693, 32.703026, 17.543287>,  <21.934845, 32.101315, 17.292917>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.770693, 32.703026, 17.543287> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.390942, 32.579426, 17.565903>,  <21.163090, 32.505264, 17.579472>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.390942, 32.579426, 17.565903>,  <21.770693, 32.703026, 17.543287>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.390942, 32.579426, 17.565903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224791, 0.794001, 0.564828,
		-0.219426, 0.523527, -0.823269,
		-0.949380, -0.309002, 0.056540,
		21.106129, 32.486725, 17.582865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.225147, 33.280071, 17.344503>,  <21.770693, 32.703026, 17.543287>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.225147, 33.280071, 17.344503> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.048544, 33.024296, 17.596279>,  <20.942581, 32.870831, 17.747345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.048544, 33.024296, 17.596279>,  <21.225147, 33.280071, 17.344503>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.048544, 33.024296, 17.596279> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182925, 0.750928, 0.634544,
		-0.878412, 0.165017, -0.448510,
		-0.441509, -0.639435, 0.629438,
		20.916092, 32.832466, 17.785110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.659369, 33.651955, 17.603395>,  <21.225147, 33.280071, 17.344503>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.659369, 33.651955, 17.603395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.713512, 33.349594, 17.859612>,  <20.745998, 33.168179, 18.013342>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.713512, 33.349594, 17.859612>,  <20.659369, 33.651955, 17.603395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.713512, 33.349594, 17.859612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037878, 0.649967, 0.759018,
		-0.990072, -0.078477, 0.116610,
		0.135358, -0.755900, 0.640541,
		20.754120, 33.122826, 18.051773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.226479, 33.766151, 18.174236>,  <20.659369, 33.651955, 17.603395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.226479, 33.766151, 18.174236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515236, 33.533607, 18.324379>,  <20.688490, 33.394081, 18.414465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.515236, 33.533607, 18.324379>,  <20.226479, 33.766151, 18.174236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.515236, 33.533607, 18.324379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083990, 0.612019, 0.786371,
		-0.686889, -0.536149, 0.490640,
		0.721893, -0.581359, 0.375358,
		20.731804, 33.359200, 18.436987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.020445, 33.722790, 18.836344>,  <20.226479, 33.766151, 18.174236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.020445, 33.722790, 18.836344> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407753, 33.624214, 18.819759>,  <20.640139, 33.565067, 18.809809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.407753, 33.624214, 18.819759>,  <20.020445, 33.722790, 18.836344>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.407753, 33.624214, 18.819759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218161, 0.752650, 0.621228,
		-0.121887, -0.610562, 0.782533,
		0.968271, -0.246438, -0.041462,
		20.698235, 33.550282, 18.807322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.167734, 33.712765, 19.494516>,  <20.020445, 33.722790, 18.836344>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.167734, 33.712765, 19.494516> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.527189, 33.725758, 19.319519>,  <20.742863, 33.733551, 19.214521>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.527189, 33.725758, 19.319519>,  <20.167734, 33.712765, 19.494516>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.527189, 33.725758, 19.319519> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344988, 0.563709, 0.750477,
		0.270992, -0.825335, 0.495364,
		0.898636, 0.032479, -0.437491,
		20.796780, 33.735500, 19.188272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.692301, 33.501675, 20.042465>,  <20.167734, 33.712765, 19.494516>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.692301, 33.501675, 20.042465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.924688, 33.661964, 19.759087>,  <21.064121, 33.758137, 19.589060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.924688, 33.661964, 19.759087>,  <20.692301, 33.501675, 20.042465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.924688, 33.661964, 19.759087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622996, 0.341203, 0.703887,
		0.523787, -0.850296, -0.051420,
		0.580967, 0.400721, -0.708449,
		21.098978, 33.782181, 19.546553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.356987, 33.255959, 20.017815>,  <20.692301, 33.501675, 20.042465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.356987, 33.255959, 20.017815> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404020, 33.621475, 19.862301>,  <21.432241, 33.840786, 19.768993>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.404020, 33.621475, 19.862301>,  <21.356987, 33.255959, 20.017815>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.404020, 33.621475, 19.862301> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541204, 0.269284, 0.796608,
		0.832629, -0.304081, -0.462886,
		0.117585, 0.913795, -0.388783,
		21.439297, 33.895615, 19.745667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.998085, 33.419777, 20.228020>,  <21.356987, 33.255959, 20.017815>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.998085, 33.419777, 20.228020> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.889366, 33.784588, 20.105167>,  <21.824135, 34.003475, 20.031456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.889366, 33.784588, 20.105167>,  <21.998085, 33.419777, 20.228020>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.889366, 33.784588, 20.105167> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456742, 0.403162, 0.792999,
		0.847061, 0.075257, -0.526141,
		-0.271799, 0.912029, -0.307130,
		21.807827, 34.058197, 20.013029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.642263, 33.846046, 20.155005>,  <21.998085, 33.419777, 20.228020>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.642263, 33.846046, 20.155005> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.338459, 34.100681, 20.208515>,  <22.156176, 34.253464, 20.240622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.338459, 34.100681, 20.208515>,  <22.642263, 33.846046, 20.155005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.338459, 34.100681, 20.208515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574638, 0.560217, 0.596614,
		0.304853, 0.530009, -0.791300,
		-0.759510, 0.636590, 0.133779,
		22.110605, 34.291660, 20.248650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.960461, 34.473740, 20.142365>,  <22.642263, 33.846046, 20.155005>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.960461, 34.473740, 20.142365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610804, 34.566196, 20.313221>,  <22.401011, 34.621670, 20.415735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.610804, 34.566196, 20.313221>,  <22.960461, 34.473740, 20.142365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.610804, 34.566196, 20.313221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484953, 0.463219, 0.741788,
		-0.026399, 0.855570, -0.517013,
		-0.874142, 0.231145, 0.427140,
		22.348560, 34.635540, 20.441362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.956474, 35.169083, 20.281700>,  <22.960461, 34.473740, 20.142365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.956474, 35.169083, 20.281700> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.708155, 35.005268, 20.549099>,  <22.559162, 34.906979, 20.709539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.708155, 35.005268, 20.549099>,  <22.956474, 35.169083, 20.281700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.708155, 35.005268, 20.549099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523751, 0.417841, 0.742357,
		-0.583347, 0.810981, -0.044902,
		-0.620800, -0.409534, 0.668498,
		22.521915, 34.882408, 20.749649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.623749, 35.777863, 20.558685>,  <22.956474, 35.169083, 20.281700>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.623749, 35.777863, 20.558685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529987, 35.500240, 20.830963>,  <22.473730, 35.333668, 20.994329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.529987, 35.500240, 20.830963>,  <22.623749, 35.777863, 20.558685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.529987, 35.500240, 20.830963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432309, 0.552734, 0.712456,
		-0.870726, 0.461273, 0.170482,
		-0.234406, -0.694055, 0.680692,
		22.459665, 35.292023, 21.035172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.189571, 36.081142, 20.946980>,  <22.623749, 35.777863, 20.558685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.189571, 36.081142, 20.946980> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.308928, 35.765312, 21.161469>,  <22.380541, 35.575813, 21.290163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.308928, 35.765312, 21.161469>,  <22.189571, 36.081142, 20.946980>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.308928, 35.765312, 21.161469> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472238, 0.610365, 0.635961,
		-0.829431, 0.063462, 0.554993,
		0.298389, -0.789574, 0.536225,
		22.398445, 35.528439, 21.322336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.859018, 36.113388, 21.565212>,  <22.189571, 36.081142, 20.946980>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.859018, 36.113388, 21.565212> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.190678, 35.897606, 21.623856>,  <22.389673, 35.768135, 21.659040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.190678, 35.897606, 21.623856>,  <21.859018, 36.113388, 21.565212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.190678, 35.897606, 21.623856> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208421, 0.541657, 0.814351,
		-0.518721, -0.644663, 0.561550,
		0.829150, -0.539460, 0.146608,
		22.439423, 35.735767, 21.667837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.109634, 36.103825, 21.492678>,  <21.859018, 36.113388, 21.565212>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.109634, 36.103825, 21.492678> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.817400, 36.318718, 21.661259>,  <20.642059, 36.447655, 21.762407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.817400, 36.318718, 21.661259>,  <21.109634, 36.103825, 21.492678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.817400, 36.318718, 21.661259> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565510, -0.130147, -0.814408,
		-0.382676, -0.833333, 0.398894,
		-0.730587, 0.537232, 0.421454,
		20.598223, 36.479889, 21.787695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.465658, 35.741558, 21.381035>,  <21.109634, 36.103825, 21.492678>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.465658, 35.741558, 21.381035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.363905, 36.126183, 21.422379>,  <20.302853, 36.356956, 21.447186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.363905, 36.126183, 21.422379>,  <20.465658, 35.741558, 21.381035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.363905, 36.126183, 21.422379> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686575, -0.104291, -0.719540,
		-0.681104, -0.254004, 0.686716,
		-0.254384, 0.961564, 0.103360,
		20.287590, 36.414650, 21.453386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.785284, 35.662430, 21.380821>,  <20.465658, 35.741558, 21.381035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.785284, 35.662430, 21.380821> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.880917, 36.034786, 21.270344>,  <19.938297, 36.258202, 21.204058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.880917, 36.034786, 21.270344>,  <19.785284, 35.662430, 21.380821>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.880917, 36.034786, 21.270344> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648774, -0.058488, -0.758730,
		-0.722448, 0.360588, 0.589953,
		0.239083, 0.930890, -0.276194,
		19.952642, 36.314053, 21.187485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.166435, 35.865192, 21.033863>,  <19.785284, 35.662430, 21.380821>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.166435, 35.865192, 21.033863> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.427109, 36.157639, 20.953087>,  <19.583513, 36.333107, 20.904621>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.427109, 36.157639, 20.953087>,  <19.166435, 35.865192, 21.033863>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.427109, 36.157639, 20.953087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330804, 0.034378, -0.943073,
		-0.682550, 0.681391, 0.264259,
		0.651686, 0.731112, -0.201942,
		19.622614, 36.376972, 20.892504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.810324, 36.400227, 20.558027>,  <19.166435, 35.865192, 21.033863>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.810324, 36.400227, 20.558027> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.201622, 36.440666, 20.485565>,  <19.436401, 36.464931, 20.442089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.201622, 36.440666, 20.485565>,  <18.810324, 36.400227, 20.558027>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.201622, 36.440666, 20.485565> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194337, 0.140999, -0.970748,
		-0.072599, 0.984834, 0.157579,
		0.978245, 0.101099, -0.181154,
		19.495096, 36.470997, 20.431219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.893835, 37.051414, 20.092211>,  <18.810324, 36.400227, 20.558027>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.893835, 37.051414, 20.092211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182661, 36.779331, 20.041718>,  <19.355957, 36.616081, 20.011421>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.182661, 36.779331, 20.041718>,  <18.893835, 37.051414, 20.092211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.182661, 36.779331, 20.041718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104139, 0.073522, -0.991842,
		0.683940, 0.729322, -0.017749,
		0.722067, -0.680208, -0.126235,
		19.399281, 36.575268, 20.003847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.138262, 37.376678, 19.464741>,  <18.893835, 37.051414, 20.092211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.138262, 37.376678, 19.464741> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.267590, 37.000290, 19.504807>,  <19.345186, 36.774456, 19.528847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.267590, 37.000290, 19.504807>,  <19.138262, 37.376678, 19.464741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.267590, 37.000290, 19.504807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031638, -0.095042, -0.994970,
		0.945761, 0.324863, -0.000958,
		0.323320, -0.940973, 0.100166,
		19.364586, 36.717999, 19.534857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.522223, 37.260258, 18.866989>,  <19.138262, 37.376678, 19.464741>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.522223, 37.260258, 18.866989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.518559, 36.878323, 18.985783>,  <19.516361, 36.649162, 19.057058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.518559, 36.878323, 18.985783>,  <19.522223, 37.260258, 18.866989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.518559, 36.878323, 18.985783> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212520, -0.292070, -0.932486,
		0.977114, 0.054575, 0.205598,
		-0.009159, -0.954838, 0.296984,
		19.515810, 36.591869, 19.074879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155258, 36.996811, 18.651588>,  <19.522223, 37.260258, 18.866989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155258, 36.996811, 18.651588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.899458, 36.696484, 18.717682>,  <19.745977, 36.516285, 18.757338>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.899458, 36.696484, 18.717682>,  <20.155258, 36.996811, 18.651588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.899458, 36.696484, 18.717682> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124719, -0.313402, -0.941395,
		0.758606, -0.581416, 0.294063,
		-0.639502, -0.750823, 0.165235,
		19.707607, 36.471237, 18.767252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.412222, 36.397755, 18.396534>,  <20.155258, 36.996811, 18.651588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.412222, 36.397755, 18.396534> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.025412, 36.295895, 18.394867>,  <19.793325, 36.234779, 18.393867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.025412, 36.295895, 18.394867>,  <20.412222, 36.397755, 18.396534>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.025412, 36.295895, 18.394867> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135217, -0.499476, -0.855710,
		0.215827, -0.828056, 0.517438,
		-0.967024, -0.254652, -0.004167,
		19.735304, 36.219498, 18.393618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.443777, 35.720406, 18.153580>,  <20.412222, 36.397755, 18.396534>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.443777, 35.720406, 18.153580> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.053745, 35.792355, 18.101631>,  <19.819727, 35.835526, 18.070463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.053745, 35.792355, 18.101631>,  <20.443777, 35.720406, 18.153580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.053745, 35.792355, 18.101631> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003811, -0.598869, -0.800838,
		-0.221825, -0.780386, 0.584630,
		-0.975079, 0.179874, -0.129870,
		19.761221, 35.846317, 18.062670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028217, 35.120930, 17.902910>,  <20.443777, 35.720406, 18.153580>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028217, 35.120930, 17.902910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.803694, 35.419044, 17.758976>,  <19.668980, 35.597912, 17.672615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.803694, 35.419044, 17.758976>,  <20.028217, 35.120930, 17.902910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.803694, 35.419044, 17.758976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011674, -0.427617, -0.903885,
		-0.827523, -0.511561, 0.231325,
		-0.561310, 0.745285, -0.359835,
		19.635300, 35.642632, 17.651026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.506554, 34.796688, 17.493349>,  <20.028217, 35.120930, 17.902910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.506554, 34.796688, 17.493349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.504728, 35.183666, 17.392132>,  <19.503633, 35.415852, 17.331402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.504728, 35.183666, 17.392132>,  <19.506554, 34.796688, 17.493349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.504728, 35.183666, 17.392132> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203983, -0.248628, -0.946877,
		-0.978964, 0.047298, 0.198476,
		-0.004561, 0.967444, -0.253045,
		19.503361, 35.473900, 17.316217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.830257, 34.868694, 17.295271>,  <19.506554, 34.796688, 17.493349>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.830257, 34.868694, 17.295271> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.113239, 35.111172, 17.149925>,  <19.283030, 35.256657, 17.062717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.113239, 35.111172, 17.149925>,  <18.830257, 34.868694, 17.295271>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.113239, 35.111172, 17.149925> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136741, -0.387016, -0.911878,
		-0.693402, 0.694801, -0.190906,
		0.707457, 0.606193, -0.363365,
		19.325476, 35.293030, 17.040916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.597462, 34.964973, 16.718679>,  <18.830257, 34.868694, 17.295271>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.597462, 34.964973, 16.718679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.971006, 35.084621, 16.640263>,  <19.195133, 35.156410, 16.593212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<18.971006, 35.084621, 16.640263>,  <18.597462, 34.964973, 16.718679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971006, 35.084621, 16.640263> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069847, -0.385062, -0.920244,
		-0.350753, 0.873072, -0.338701,
		0.933860, 0.299121, -0.196043,
		19.251163, 35.174358, 16.581450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.627893, 35.113426, 16.033627>,  <18.597462, 34.964973, 16.718679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.627893, 35.113426, 16.033627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.022472, 35.092888, 16.095959>,  <19.259220, 35.080563, 16.133358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.022472, 35.092888, 16.095959>,  <18.627893, 35.113426, 16.033627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.022472, 35.092888, 16.095959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133314, -0.302779, -0.943691,
		0.095640, 0.951676, -0.291830,
		0.986448, -0.051350, 0.155830,
		19.318407, 35.077484, 16.142708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.906256, 35.288662, 15.424767>,  <18.627893, 35.113426, 16.033627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.906256, 35.288662, 15.424767> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.219360, 35.105835, 15.593705>,  <19.407223, 34.996140, 15.695068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.219360, 35.105835, 15.593705>,  <18.906256, 35.288662, 15.424767>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.219360, 35.105835, 15.593705> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285859, -0.338750, -0.896400,
		0.552782, 0.822399, -0.134505,
		0.782762, -0.457064, 0.422345,
		19.454189, 34.968716, 15.720408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435101, 35.499481, 15.095348>,  <18.906256, 35.288662, 15.424767>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435101, 35.499481, 15.095348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542109, 35.149956, 15.257775>,  <19.606314, 34.940243, 15.355231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.542109, 35.149956, 15.257775>,  <19.435101, 35.499481, 15.095348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.542109, 35.149956, 15.257775> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245792, -0.345600, -0.905620,
		0.931676, 0.342078, 0.122321,
		0.267518, -0.873810, 0.406067,
		19.622364, 34.887814, 15.379596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.033138, 35.373108, 14.795109>,  <19.435101, 35.499481, 15.095348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.033138, 35.373108, 14.795109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.925915, 35.027225, 14.965018>,  <19.861580, 34.819698, 15.066964>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.925915, 35.027225, 14.965018>,  <20.033138, 35.373108, 14.795109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.925915, 35.027225, 14.965018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147830, -0.472607, -0.868786,
		0.951993, -0.170092, 0.254516,
		-0.268060, -0.864703, 0.424774,
		19.845497, 34.767815, 15.092450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.637030, 34.972328, 14.698603>,  <20.033138, 35.373108, 14.795109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.637030, 34.972328, 14.698603> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362774, 34.685760, 14.750199>,  <20.198221, 34.513821, 14.781157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.362774, 34.685760, 14.750199>,  <20.637030, 34.972328, 14.698603>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.362774, 34.685760, 14.750199> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211491, -0.365605, -0.906424,
		0.696542, -0.594199, 0.402189,
		-0.685639, -0.716422, 0.128991,
		20.157082, 34.470833, 14.788897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.981581, 34.394257, 14.457349>,  <20.637030, 34.972328, 14.698603>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.981581, 34.394257, 14.457349> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.589289, 34.317169, 14.444543>,  <20.353912, 34.270916, 14.436859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.589289, 34.317169, 14.444543>,  <20.981581, 34.394257, 14.457349>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.589289, 34.317169, 14.444543> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148104, -0.626576, -0.765158,
		0.127400, -0.755157, 0.643046,
		-0.980732, -0.192719, -0.032016,
		20.295069, 34.259354, 14.434938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<30.069145, 28.475086, 22.604670> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370646, 28.542633, 22.858707>,  <30.551546, 28.583160, 23.011129>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.370646, 28.542633, 22.858707>,  <30.069145, 28.475086, 22.604670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.370646, 28.542633, 22.858707> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139751, 0.985505, -0.096178,
		-0.642128, -0.016261, 0.766425,
		0.753752, 0.168867, 0.635093,
		30.596771, 28.593294, 23.049234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.812574, 29.032866, 22.903702>,  <30.069145, 28.475086, 22.604670>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.812574, 29.032866, 22.903702> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203341, 29.044361, 22.988377>,  <30.437799, 29.051258, 23.039181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203341, 29.044361, 22.988377>,  <29.812574, 29.032866, 22.903702>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203341, 29.044361, 22.988377> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028867, 0.999580, -0.002479,
		-0.211670, -0.003689, 0.977334,
		0.976915, 0.028737, 0.211688,
		30.496414, 29.052982, 23.051884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835716, 29.516918, 23.500778>,  <29.812574, 29.032866, 22.903702>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835716, 29.516918, 23.500778> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188860, 29.484234, 23.315788>,  <30.400745, 29.464622, 23.204794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.188860, 29.484234, 23.315788>,  <29.835716, 29.516918, 23.500778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.188860, 29.484234, 23.315788> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035158, 0.970485, -0.238587,
		0.468320, 0.226898, 0.853928,
		0.882859, -0.081712, -0.462475,
		30.453718, 29.459721, 23.177046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.171322, 30.041304, 23.680094>,  <29.835716, 29.516918, 23.500778>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.171322, 30.041304, 23.680094> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359613, 29.940006, 23.342033>,  <30.472589, 29.879229, 23.139196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.359613, 29.940006, 23.342033>,  <30.171322, 30.041304, 23.680094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.359613, 29.940006, 23.342033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022087, 0.954238, -0.298230,
		0.882000, 0.159053, 0.443596,
		0.470731, -0.253242, -0.845151,
		30.500834, 29.864035, 23.088488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706932, 30.556360, 23.599308>,  <30.171322, 30.041304, 23.680094>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706932, 30.556360, 23.599308> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697487, 30.399155, 23.231617>,  <30.691820, 30.304831, 23.011002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697487, 30.399155, 23.231617>,  <30.706932, 30.556360, 23.599308>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.697487, 30.399155, 23.231617> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184730, 0.901937, -0.390366,
		0.982506, -0.179026, 0.051305,
		-0.023612, -0.393015, -0.919229,
		30.690403, 30.281250, 22.955849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.339222, 30.793015, 23.232311>,  <30.706932, 30.556360, 23.599308>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.339222, 30.793015, 23.232311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053499, 30.726524, 22.960388>,  <30.882065, 30.686630, 22.797235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.053499, 30.726524, 22.960388>,  <31.339222, 30.793015, 23.232311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.053499, 30.726524, 22.960388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230706, 0.861153, -0.452980,
		0.660713, -0.480402, -0.576778,
		-0.714306, -0.166224, -0.679806,
		30.839207, 30.676657, 22.756447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.564850, 31.073662, 22.693529>,  <31.339222, 30.793015, 23.232311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.564850, 31.073662, 22.693529> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201967, 30.990696, 22.547127>,  <30.984238, 30.940916, 22.459286>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.201967, 30.990696, 22.547127>,  <31.564850, 31.073662, 22.693529>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.201967, 30.990696, 22.547127> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069527, 0.784124, -0.616697,
		0.414904, -0.584918, -0.696940,
		-0.907205, -0.207414, -0.366004,
		30.929806, 30.928473, 22.437325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.689093, 30.945013, 21.982265>,  <31.564850, 31.073662, 22.693529>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.689093, 30.945013, 21.982265> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312683, 31.060234, 22.053257>,  <31.086838, 31.129366, 22.095852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.312683, 31.060234, 22.053257>,  <31.689093, 30.945013, 21.982265>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.312683, 31.060234, 22.053257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101878, 0.741458, -0.663221,
		-0.322636, -0.606025, -0.727076,
		-0.941024, 0.288052, 0.177480,
		31.030376, 31.146650, 22.106501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508518, 31.308327, 21.388237>,  <31.689093, 30.945013, 21.982265>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508518, 31.308327, 21.388237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193237, 31.414734, 21.610218>,  <31.004068, 31.478579, 21.743406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193237, 31.414734, 21.610218>,  <31.508518, 31.308327, 21.388237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.193237, 31.414734, 21.610218> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042319, 0.876187, -0.480109,
		-0.613958, -0.401908, -0.679356,
		-0.788203, 0.266017, 0.554951,
		30.956776, 31.494539, 21.776703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.959440, 31.416754, 20.957102>,  <31.508518, 31.308327, 21.388237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.959440, 31.416754, 20.957102> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861387, 31.620934, 21.286793>,  <30.802555, 31.743441, 21.484608>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.861387, 31.620934, 21.286793>,  <30.959440, 31.416754, 20.957102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.861387, 31.620934, 21.286793> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181078, 0.811100, -0.556172,
		-0.952428, -0.285586, -0.106397,
		-0.245134, 0.510448, 0.824228,
		30.787848, 31.774069, 21.534061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367220, 31.624924, 20.900070>,  <30.959440, 31.416754, 20.957102>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367220, 31.624924, 20.900070> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525467, 31.892799, 21.151466>,  <30.620415, 32.053524, 21.302305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.525467, 31.892799, 21.151466>,  <30.367220, 31.624924, 20.900070>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.525467, 31.892799, 21.151466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263461, 0.738313, -0.620871,
		-0.879816, 0.080043, 0.468526,
		0.395615, 0.669691, 0.628492,
		30.644152, 32.093708, 21.340014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907383, 32.190334, 20.823683>,  <30.367220, 31.624924, 20.900070>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907383, 32.190334, 20.823683> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221842, 32.337166, 21.022572>,  <30.410517, 32.425262, 21.141905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.221842, 32.337166, 21.022572>,  <29.907383, 32.190334, 20.823683>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.221842, 32.337166, 21.022572> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087697, 0.862628, -0.498180,
		-0.611786, 0.348038, 0.710343,
		0.786147, 0.367074, 0.497222,
		30.457685, 32.447289, 21.171738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.780769, 32.899471, 20.955402>,  <29.907383, 32.190334, 20.823683>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.780769, 32.899471, 20.955402> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176315, 32.839947, 20.954971>,  <30.413643, 32.804234, 20.954714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.176315, 32.839947, 20.954971>,  <29.780769, 32.899471, 20.955402>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.176315, 32.839947, 20.954971> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119801, 0.800329, -0.587470,
		0.088284, 0.580800, 0.809245,
		0.988865, -0.148813, -0.001075,
		30.472975, 32.795303, 20.954649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.195595, 33.497742, 21.036732>,  <29.780769, 32.899471, 20.955402>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.195595, 33.497742, 21.036732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479977, 33.254467, 20.895504>,  <30.650606, 33.108501, 20.810768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.479977, 33.254467, 20.895504>,  <30.195595, 33.497742, 21.036732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.479977, 33.254467, 20.895504> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604756, 0.784984, -0.134426,
		0.358909, -0.117950, 0.925890,
		0.710953, -0.608184, -0.353069,
		30.693262, 33.072010, 20.789583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.554298, 33.863529, 20.760305>,  <30.195595, 33.497742, 21.036732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.554298, 33.863529, 20.760305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201530, 33.813107, 20.941998>,  <28.989870, 33.782852, 21.051012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.201530, 33.813107, 20.941998>,  <29.554298, 33.863529, 20.760305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201530, 33.813107, 20.941998> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471260, -0.258945, 0.843126,
		0.011336, 0.957631, 0.287776,
		-0.881921, -0.126059, 0.454229,
		28.936954, 33.775288, 21.078266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574993, 34.085072, 21.534555>,  <29.554298, 33.863529, 20.760305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574993, 34.085072, 21.534555> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262871, 33.835098, 21.544254>,  <29.075598, 33.685116, 21.550074>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.262871, 33.835098, 21.544254>,  <29.574993, 34.085072, 21.534555>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.262871, 33.835098, 21.544254> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371496, -0.431973, 0.821821,
		-0.503106, 0.650279, 0.569230,
		-0.780305, -0.624929, 0.024248,
		29.028780, 33.647621, 21.551529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.182158, 34.257732, 22.164986>,  <29.574993, 34.085072, 21.534555>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.182158, 34.257732, 22.164986> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082249, 33.884003, 22.063274>,  <29.022303, 33.659767, 22.002249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.082249, 33.884003, 22.063274>,  <29.182158, 34.257732, 22.164986>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.082249, 33.884003, 22.063274> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200738, -0.306858, 0.930345,
		-0.947269, 0.181332, 0.264199,
		-0.249773, -0.934322, -0.254277,
		29.007317, 33.603706, 21.986992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.730606, 34.002018, 22.589293>,  <29.182158, 34.257732, 22.164986>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.730606, 34.002018, 22.589293> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861727, 33.652493, 22.445629>,  <28.940399, 33.442776, 22.359430>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861727, 33.652493, 22.445629>,  <28.730606, 34.002018, 22.589293>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.861727, 33.652493, 22.445629> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129261, -0.418073, 0.899170,
		-0.935862, -0.248325, -0.249995,
		0.327802, -0.873813, -0.359160,
		28.960068, 33.390350, 22.337881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.356741, 33.497124, 23.027712>,  <28.730606, 34.002018, 22.589293>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.356741, 33.497124, 23.027712> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672224, 33.330128, 22.847202>,  <28.861513, 33.229931, 22.738897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672224, 33.330128, 22.847202>,  <28.356741, 33.497124, 23.027712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.672224, 33.330128, 22.847202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350917, -0.296988, 0.888063,
		-0.504777, -0.858780, -0.087733,
		0.788706, -0.417486, -0.451273,
		28.908836, 33.204884, 22.711821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.555981, 32.891438, 23.431047>,  <28.356741, 33.497124, 23.027712>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.555981, 32.891438, 23.431047> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893200, 32.939346, 23.221313>,  <29.095531, 32.968090, 23.095472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893200, 32.939346, 23.221313>,  <28.555981, 32.891438, 23.431047>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.893200, 32.939346, 23.221313> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509293, -0.491156, 0.706673,
		-0.172894, -0.862799, -0.475064,
		0.843047, 0.119767, -0.524335,
		29.146114, 32.975277, 23.064013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.758217, 32.284779, 23.393393>,  <28.555981, 32.891438, 23.431047>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.758217, 32.284779, 23.393393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086283, 32.510494, 23.355652>,  <29.283123, 32.645924, 23.333008>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086283, 32.510494, 23.355652>,  <28.758217, 32.284779, 23.393393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.086283, 32.510494, 23.355652> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507507, -0.641438, 0.575321,
		0.264127, -0.519743, -0.812468,
		0.820167, 0.564291, -0.094352,
		29.332333, 32.679783, 23.327347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.306248, 31.830669, 23.479536>,  <28.758217, 32.284779, 23.393393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.306248, 31.830669, 23.479536> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518177, 32.168869, 23.506126>,  <29.645334, 32.371788, 23.522079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518177, 32.168869, 23.506126>,  <29.306248, 31.830669, 23.479536>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.518177, 32.168869, 23.506126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687283, -0.473955, 0.550462,
		0.496921, -0.245959, -0.832210,
		0.529821, 0.845500, 0.066475,
		29.677124, 32.422520, 23.526070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933882, 31.577274, 23.387981>,  <29.306248, 31.830669, 23.479536>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933882, 31.577274, 23.387981> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009178, 31.936970, 23.545937>,  <30.054356, 32.152786, 23.640709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.009178, 31.936970, 23.545937>,  <29.933882, 31.577274, 23.387981>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.009178, 31.936970, 23.545937> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663769, -0.412832, 0.623683,
		0.723862, 0.144710, -0.674599,
		0.188243, 0.899238, 0.394887,
		30.065651, 32.206741, 23.664402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.566309, 31.677261, 23.407026>,  <29.933882, 31.577274, 23.387981>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.566309, 31.677261, 23.407026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448702, 31.911373, 23.709286>,  <30.378138, 32.051842, 23.890642>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448702, 31.911373, 23.709286>,  <30.566309, 31.677261, 23.407026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448702, 31.911373, 23.709286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660622, -0.446915, 0.603196,
		0.690748, 0.676548, -0.255247,
		-0.294017, 0.585278, 0.755648,
		30.360497, 32.086956, 23.935980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.227543, 31.877831, 23.668646>,  <30.566309, 31.677261, 23.407026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.227543, 31.877831, 23.668646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954529, 31.941479, 23.953976>,  <30.790720, 31.979668, 24.125174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954529, 31.941479, 23.953976>,  <31.227543, 31.877831, 23.668646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954529, 31.941479, 23.953976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665657, -0.267614, 0.696622,
		0.301741, 0.950297, 0.076737,
		-0.682534, 0.159119, 0.713322,
		30.749769, 31.989214, 24.167973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.588469, 32.230106, 24.247837>,  <31.227543, 31.877831, 23.668646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.588469, 32.230106, 24.247837> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246784, 32.063984, 24.372959>,  <31.041775, 31.964310, 24.448032>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.246784, 32.063984, 24.372959>,  <31.588469, 32.230106, 24.247837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.246784, 32.063984, 24.372959> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512257, -0.569276, 0.643053,
		-0.088992, 0.709538, 0.699025,
		-0.854209, -0.415308, 0.312805,
		30.990522, 31.939392, 24.466801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562904, 32.318905, 24.980703>,  <31.588469, 32.230106, 24.247837>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562904, 32.318905, 24.980703> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352148, 31.991264, 24.889957>,  <31.225695, 31.794682, 24.835510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.352148, 31.991264, 24.889957>,  <31.562904, 32.318905, 24.980703>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.352148, 31.991264, 24.889957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548074, -0.531445, 0.645896,
		-0.649617, 0.215978, 0.728939,
		-0.526890, -0.819097, -0.226863,
		31.194080, 31.745535, 24.821898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.533947, 31.900154, 25.664043>,  <31.562904, 32.318905, 24.980703>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.533947, 31.900154, 25.664043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404263, 31.632915, 25.396152>,  <31.326452, 31.472572, 25.235418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.404263, 31.632915, 25.396152>,  <31.533947, 31.900154, 25.664043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.404263, 31.632915, 25.396152> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427133, -0.735078, 0.526514,
		-0.844064, -0.115361, 0.523686,
		-0.324211, -0.668095, -0.669728,
		31.306999, 31.432487, 25.195234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518719, 32.358170, 26.318037>,  <31.533947, 31.900154, 25.664043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518719, 32.358170, 26.318037> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834238, 32.430981, 26.552868>,  <32.023548, 32.474667, 26.693768>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834238, 32.430981, 26.552868>,  <31.518719, 32.358170, 26.318037>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.834238, 32.430981, 26.552868> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325075, 0.687079, -0.649806,
		-0.521654, 0.703411, 0.482794,
		0.788799, 0.182030, 0.587079,
		32.070877, 32.485588, 26.728992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.508175, 33.062553, 26.417709>,  <31.518719, 32.358170, 26.318037>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.508175, 33.062553, 26.417709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886652, 32.948143, 26.478260>,  <32.113739, 32.879498, 26.514589>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886652, 32.948143, 26.478260>,  <31.508175, 33.062553, 26.417709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.886652, 32.948143, 26.478260> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302544, 0.615842, -0.727466,
		0.114848, 0.734119, 0.669238,
		0.946191, -0.286022, 0.151375,
		32.170509, 32.862335, 26.523672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.843645, 33.561401, 26.099794>,  <31.508175, 33.062553, 26.417709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.843645, 33.561401, 26.099794> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143093, 33.300220, 26.145794>,  <32.322762, 33.143513, 26.173393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143093, 33.300220, 26.145794>,  <31.843645, 33.561401, 26.099794>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.143093, 33.300220, 26.145794> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578255, 0.558187, -0.595019,
		0.324326, 0.511943, 0.795442,
		0.748621, -0.652948, 0.114999,
		32.367680, 33.104336, 26.180294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.433842, 33.929634, 26.278811>,  <31.843645, 33.561401, 26.099794>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.433842, 33.929634, 26.278811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515678, 33.587975, 26.087578>,  <32.564781, 33.382977, 25.972837>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.515678, 33.587975, 26.087578>,  <32.433842, 33.929634, 26.278811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515678, 33.587975, 26.087578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582739, 0.498716, -0.641637,
		0.786484, -0.147323, 0.599782,
		0.204593, -0.854154, -0.478083,
		32.577057, 33.331730, 25.944153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.096127, 34.156910, 25.958519>,  <32.433842, 33.929634, 26.278811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.096127, 34.156910, 25.958519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029736, 33.800777, 25.788921>,  <32.989902, 33.587097, 25.687162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029736, 33.800777, 25.788921>,  <33.096127, 34.156910, 25.958519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.029736, 33.800777, 25.788921> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578566, 0.260262, -0.772997,
		0.798570, -0.373605, 0.471917,
		-0.165973, -0.890328, -0.423992,
		32.979942, 33.533680, 25.661724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762905, 33.842735, 25.744503>,  <33.096127, 34.156910, 25.958519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762905, 33.842735, 25.744503> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468128, 33.689850, 25.521492>,  <33.291264, 33.598118, 25.387686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468128, 33.689850, 25.521492>,  <33.762905, 33.842735, 25.744503>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.468128, 33.689850, 25.521492> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466947, 0.308523, -0.828718,
		0.488756, -0.871050, -0.048890,
		-0.736938, -0.382211, -0.557527,
		33.247047, 33.575188, 25.354235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.129318, 33.573380, 25.202150>,  <33.762905, 33.842735, 25.744503>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.129318, 33.573380, 25.202150> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756424, 33.650368, 25.079590>,  <33.532688, 33.696560, 25.006054>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.756424, 33.650368, 25.079590>,  <34.129318, 33.573380, 25.202150>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756424, 33.650368, 25.079590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361180, 0.443786, -0.820124,
		-0.021876, -0.875219, -0.483233,
		-0.932240, 0.192475, -0.306403,
		33.476753, 33.708111, 24.987669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133007, 33.296822, 24.563232>,  <34.129318, 33.573380, 25.202150>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133007, 33.296822, 24.563232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838043, 33.566811, 24.573303>,  <33.661064, 33.728806, 24.579346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838043, 33.566811, 24.573303>,  <34.133007, 33.296822, 24.563232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.838043, 33.566811, 24.573303> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364494, 0.429038, -0.826481,
		-0.568653, -0.600281, -0.562402,
		-0.737413, 0.674973, 0.025175,
		33.616821, 33.769302, 24.580856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.051514, 33.364204, 23.906826>,  <34.133007, 33.296822, 24.563232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.051514, 33.364204, 23.906826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867130, 33.682388, 24.064186>,  <33.756500, 33.873299, 24.158602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867130, 33.682388, 24.064186>,  <34.051514, 33.364204, 23.906826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867130, 33.682388, 24.064186> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257348, 0.544081, -0.798592,
		-0.849287, -0.266877, -0.455508,
		-0.460959, 0.795458, 0.393401,
		33.728844, 33.921024, 24.182207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605934, 33.623039, 23.298792>,  <34.051514, 33.364204, 23.906826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605934, 33.623039, 23.298792> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671936, 33.914909, 23.564228>,  <33.711536, 34.090031, 23.723490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.671936, 33.914909, 23.564228>,  <33.605934, 33.623039, 23.298792>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671936, 33.914909, 23.564228> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511976, 0.511700, -0.689959,
		-0.843003, 0.453589, -0.289142,
		0.165004, 0.729671, 0.663592,
		33.721436, 34.133812, 23.763306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.361259, 34.187550, 23.026407>,  <33.605934, 33.623039, 23.298792>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.361259, 34.187550, 23.026407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640762, 34.294586, 23.291775>,  <33.808464, 34.358810, 23.450996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.640762, 34.294586, 23.291775>,  <33.361259, 34.187550, 23.026407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.640762, 34.294586, 23.291775> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483216, 0.507270, -0.713568,
		-0.527481, 0.819189, 0.225154,
		0.698760, 0.267595, 0.663421,
		33.850391, 34.374866, 23.490801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517368, 34.878780, 22.804878>,  <33.361259, 34.187550, 23.026407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517368, 34.878780, 22.804878> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826294, 34.797421, 23.045597>,  <34.011650, 34.748604, 23.190029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.826294, 34.797421, 23.045597>,  <33.517368, 34.878780, 22.804878>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826294, 34.797421, 23.045597> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504106, 0.772686, -0.385789,
		-0.386532, 0.601320, 0.699291,
		0.772315, -0.203397, 0.601797,
		34.057987, 34.736401, 23.226135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.395006, 30.217554, 29.437073> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.786016, 30.150837, 29.385506>,  <32.020622, 30.110806, 29.354567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.786016, 30.150837, 29.385506>,  <31.395006, 30.217554, 29.437073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786016, 30.150837, 29.385506> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061879, 0.811625, -0.580892,
		0.201520, 0.559861, 0.803707,
		0.977528, -0.166794, -0.128915,
		32.079273, 30.100800, 29.346830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.795832, 30.852930, 29.752497>,  <31.395006, 30.217554, 29.437073>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.795832, 30.852930, 29.752497> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010967, 30.653194, 29.480793>,  <32.140049, 30.533354, 29.317772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.010967, 30.653194, 29.480793>,  <31.795832, 30.852930, 29.752497>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010967, 30.653194, 29.480793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140680, 0.847577, -0.511685,
		0.831227, 0.179646, 0.526107,
		0.537839, -0.499339, -0.679257,
		32.172318, 30.503393, 29.277016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.174152, 31.356129, 29.530319>,  <31.795832, 30.852930, 29.752497>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.174152, 31.356129, 29.530319> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.237514, 31.076118, 29.251789>,  <32.275532, 30.908112, 29.084671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.237514, 31.076118, 29.251789>,  <32.174152, 31.356129, 29.530319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.237514, 31.076118, 29.251789> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092825, 0.712665, -0.695336,
		0.983002, 0.045506, 0.177867,
		0.158401, -0.700027, -0.696327,
		32.285034, 30.866110, 29.042891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820480, 31.615007, 29.084995>,  <32.174152, 31.356129, 29.530319>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820480, 31.615007, 29.084995> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614204, 31.337822, 28.883453>,  <32.490440, 31.171511, 28.762529>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.614204, 31.337822, 28.883453>,  <32.820480, 31.615007, 29.084995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.614204, 31.337822, 28.883453> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095374, 0.537996, -0.837535,
		0.851454, -0.479958, -0.211345,
		-0.515685, -0.692965, -0.503854,
		32.459499, 31.129932, 28.732298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253685, 31.427805, 28.615446>,  <32.820480, 31.615007, 29.084995>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253685, 31.427805, 28.615446> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884129, 31.343239, 28.487862>,  <32.662395, 31.292500, 28.411312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.884129, 31.343239, 28.487862>,  <33.253685, 31.427805, 28.615446>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884129, 31.343239, 28.487862> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230191, 0.358797, -0.904586,
		0.305683, -0.909159, -0.282823,
		-0.923888, -0.211413, -0.318959,
		32.606964, 31.279814, 28.392174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.359928, 31.273361, 28.001953>,  <33.253685, 31.427805, 28.615446>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.359928, 31.273361, 28.001953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965820, 31.341202, 27.993145>,  <32.729355, 31.381907, 27.987860>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.965820, 31.341202, 27.993145>,  <33.359928, 31.273361, 28.001953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.965820, 31.341202, 27.993145> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100355, 0.469068, -0.877441,
		-0.138488, -0.866723, -0.479178,
		-0.985266, 0.169603, -0.022020,
		32.670238, 31.392082, 27.986540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.155399, 31.133917, 27.372105>,  <33.359928, 31.273361, 28.001953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.155399, 31.133917, 27.372105> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.849052, 31.354069, 27.505085>,  <32.665245, 31.486160, 27.584873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.849052, 31.354069, 27.505085>,  <33.155399, 31.133917, 27.372105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849052, 31.354069, 27.505085> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087388, 0.423147, -0.901837,
		-0.637028, -0.719743, -0.275980,
		-0.765871, 0.550379, 0.332453,
		32.619289, 31.519182, 27.604820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.626865, 31.074095, 26.912849>,  <33.155399, 31.133917, 27.372105>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.626865, 31.074095, 26.912849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525135, 31.406345, 27.110992>,  <32.464096, 31.605696, 27.229877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.525135, 31.406345, 27.110992>,  <32.626865, 31.074095, 26.912849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525135, 31.406345, 27.110992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137314, 0.475995, -0.868662,
		-0.957321, -0.288942, -0.007001,
		-0.254326, 0.830627, 0.495356,
		32.448837, 31.655533, 27.259600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.962519, 31.350601, 26.615458>,  <32.626865, 31.074095, 26.912849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.962519, 31.350601, 26.615458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158504, 31.638474, 26.812229>,  <32.276096, 31.811197, 26.930292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.158504, 31.638474, 26.812229>,  <31.962519, 31.350601, 26.615458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158504, 31.638474, 26.812229> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158583, 0.628474, -0.761493,
		-0.857196, 0.295094, 0.422060,
		0.489965, 0.719681, 0.491929,
		32.305492, 31.854378, 26.959808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.285215, 31.166878, 26.184433>,  <31.962519, 31.350601, 26.615458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.285215, 31.166878, 26.184433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.318377, 31.067616, 25.798367>,  <31.338274, 31.008059, 25.566727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.318377, 31.067616, 25.798367>,  <31.285215, 31.166878, 26.184433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.318377, 31.067616, 25.798367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272222, -0.926027, 0.261474,
		-0.958656, -0.284417, -0.009218,
		0.082904, -0.248155, -0.965166,
		31.343248, 30.993170, 25.508816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.193335, 30.416487, 26.203114>,  <31.285215, 31.166878, 26.184433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.193335, 30.416487, 26.203114> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.347403, 30.498089, 25.843109>,  <31.439844, 30.547050, 25.627106>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.347403, 30.498089, 25.843109>,  <31.193335, 30.416487, 26.203114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.347403, 30.498089, 25.843109> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437123, -0.899246, -0.016760,
		-0.812752, -0.386961, -0.435540,
		0.385172, 0.204007, -0.900013,
		31.462954, 30.559290, 25.573105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893581, 29.936092, 25.743645>,  <31.193335, 30.416487, 26.203114>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893581, 29.936092, 25.743645> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.243267, 30.068501, 25.601562>,  <31.453079, 30.147945, 25.516314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.243267, 30.068501, 25.601562>,  <30.893581, 29.936092, 25.743645>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.243267, 30.068501, 25.601562> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401438, -0.904290, 0.145284,
		-0.273118, -0.269603, -0.923429,
		0.874216, 0.331020, -0.355207,
		31.505531, 30.167807, 25.495001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.177530, 29.405273, 25.321228>,  <30.893581, 29.936092, 25.743645>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.177530, 29.405273, 25.321228> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.510736, 29.604202, 25.418186>,  <31.710661, 29.723560, 25.476362>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.510736, 29.604202, 25.418186>,  <31.177530, 29.405273, 25.321228>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.510736, 29.604202, 25.418186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456820, -0.865444, 0.205722,
		0.312091, -0.060638, -0.948115,
		0.833015, 0.497322, 0.242397,
		31.760641, 29.753399, 25.490906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691317, 29.079679, 24.875174>,  <31.177530, 29.405273, 25.321228>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691317, 29.079679, 24.875174> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849188, 29.225895, 25.212364>,  <31.943911, 29.313623, 25.414679>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.849188, 29.225895, 25.212364>,  <31.691317, 29.079679, 24.875174>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849188, 29.225895, 25.212364> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458240, -0.873523, 0.164236,
		0.796394, 0.321465, -0.512266,
		0.394680, 0.365537, 0.842977,
		31.967592, 29.335556, 25.465258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.273460, 28.690899, 25.019659>,  <31.691317, 29.079679, 24.875174>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.273460, 28.690899, 25.019659> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.234760, 28.897259, 25.360126>,  <32.211540, 29.021074, 25.564407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.234760, 28.897259, 25.360126>,  <32.273460, 28.690899, 25.019659>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234760, 28.897259, 25.360126> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172456, -0.833556, 0.524827,
		0.980254, 0.197565, -0.008325,
		-0.096748, 0.515899, 0.851169,
		32.205734, 29.052029, 25.615477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760773, 28.437593, 25.358988>,  <32.273460, 28.690899, 25.019659>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760773, 28.437593, 25.358988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.557312, 28.618629, 25.651955>,  <32.435234, 28.727251, 25.827734>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.557312, 28.618629, 25.651955>,  <32.760773, 28.437593, 25.358988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.557312, 28.618629, 25.651955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256673, -0.732291, 0.630768,
		0.821822, 0.508834, 0.256314,
		-0.508652, 0.452590, 0.732417,
		32.404716, 28.754406, 25.871679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143654, 28.320883, 25.970257>,  <32.760773, 28.437593, 25.358988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143654, 28.320883, 25.970257> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.783760, 28.414841, 26.117390>,  <32.567825, 28.471216, 26.205669>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.783760, 28.414841, 26.117390>,  <33.143654, 28.320883, 25.970257>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.783760, 28.414841, 26.117390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052542, -0.778380, 0.625590,
		0.433263, 0.582192, 0.687994,
		-0.899735, 0.234896, 0.367833,
		32.513840, 28.485310, 26.227739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239624, 28.235872, 26.603916>,  <33.143654, 28.320883, 25.970257>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239624, 28.235872, 26.603916> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841839, 28.217506, 26.566097>,  <32.603168, 28.206488, 26.543406>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.841839, 28.217506, 26.566097>,  <33.239624, 28.235872, 26.603916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841839, 28.217506, 26.566097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061539, -0.474889, 0.877892,
		-0.085205, 0.878848, 0.469433,
		-0.994461, -0.045912, -0.094547,
		32.543499, 28.203733, 26.537733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.909103, 28.533588, 27.217600>,  <33.239624, 28.235872, 26.603916>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.909103, 28.533588, 27.217600> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.638485, 28.289688, 27.052441>,  <32.476112, 28.143349, 26.953344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.638485, 28.289688, 27.052441>,  <32.909103, 28.533588, 27.217600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638485, 28.289688, 27.052441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109362, -0.471289, 0.875172,
		-0.728231, 0.637253, 0.252167,
		-0.676550, -0.609750, -0.412899,
		32.435520, 28.106764, 26.928572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.466518, 28.392780, 27.745876>,  <32.909103, 28.533588, 27.217600>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.466518, 28.392780, 27.745876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384655, 28.098316, 27.487827>,  <32.335537, 27.921638, 27.332998>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.384655, 28.098316, 27.487827>,  <32.466518, 28.392780, 27.745876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384655, 28.098316, 27.487827> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083132, -0.643621, 0.760816,
		-0.975298, 0.209334, 0.070521,
		-0.204654, -0.736160, -0.645125,
		32.323257, 27.877468, 27.294291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.897369, 28.000578, 28.060551>,  <32.466518, 28.392780, 27.745876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.897369, 28.000578, 28.060551> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033604, 27.745193, 27.784473>,  <32.115345, 27.591963, 27.618826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.033604, 27.745193, 27.784473>,  <31.897369, 28.000578, 28.060551>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.033604, 27.745193, 27.784473> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196376, -0.766199, 0.611863,
		-0.919477, -0.072855, -0.386335,
		0.340587, -0.638460, -0.690195,
		32.135780, 27.553656, 27.577415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.344147, 27.589193, 27.895428>,  <31.897369, 28.000578, 28.060551>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.344147, 27.589193, 27.895428> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.676462, 27.389694, 27.796604>,  <31.875851, 27.269995, 27.737310>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.676462, 27.389694, 27.796604>,  <31.344147, 27.589193, 27.895428>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676462, 27.389694, 27.796604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296920, -0.772589, 0.561200,
		-0.470774, -0.392882, -0.789946,
		0.830789, -0.498749, -0.247060,
		31.925699, 27.240070, 27.722486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.181656, 26.815121, 27.819407>,  <31.344147, 27.589193, 27.895428>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.181656, 26.815121, 27.819407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.574221, 26.808781, 27.895905>,  <31.809759, 26.804976, 27.941803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.574221, 26.808781, 27.895905>,  <31.181656, 26.815121, 27.819407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.574221, 26.808781, 27.895905> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120226, -0.827548, 0.548371,
		0.149574, -0.561172, -0.814073,
		0.981414, -0.015851, 0.191247,
		31.868645, 26.804026, 27.953279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<37.231701, 25.852989, 28.182219> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879147, 26.004318, 28.295372>,  <36.667614, 26.095116, 28.363264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.879147, 26.004318, 28.295372>,  <37.231701, 25.852989, 28.182219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879147, 26.004318, 28.295372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001606, 0.596433, -0.802661,
		-0.472386, -0.707912, -0.525083,
		-0.881390, 0.378322, 0.282884,
		36.614731, 26.117815, 28.380238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.898838, 25.962889, 27.655581>,  <37.231701, 25.852989, 28.182219>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.898838, 25.962889, 27.655581> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688175, 26.194969, 27.904095>,  <36.561779, 26.334217, 28.053204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.688175, 26.194969, 27.904095>,  <36.898838, 25.962889, 27.655581>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688175, 26.194969, 27.904095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023391, 0.720691, -0.692861,
		-0.849757, -0.379432, -0.365985,
		-0.526656, 0.580203, 0.621288,
		36.530178, 26.369030, 28.090481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.324551, 26.356251, 27.193253>,  <36.898838, 25.962889, 27.655581>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.324551, 26.356251, 27.193253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371658, 26.565121, 27.531120>,  <36.399925, 26.690443, 27.733841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.371658, 26.565121, 27.531120>,  <36.324551, 26.356251, 27.193253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371658, 26.565121, 27.531120> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350313, 0.817750, -0.456691,
		-0.929199, -0.242112, 0.279233,
		0.117772, 0.522175, 0.844667,
		36.406990, 26.721773, 27.784521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.772240, 26.670782, 27.274670>,  <36.324551, 26.356251, 27.193253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.772240, 26.670782, 27.274670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035667, 26.888878, 27.482132>,  <36.193726, 27.019735, 27.606609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.035667, 26.888878, 27.482132>,  <35.772240, 26.670782, 27.274670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.035667, 26.888878, 27.482132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275684, 0.816116, -0.507891,
		-0.700203, 0.191497, 0.687783,
		0.658570, 0.545237, 0.518654,
		36.233238, 27.052448, 27.637728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.434616, 27.238092, 27.490061>,  <35.772240, 26.670782, 27.274670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.434616, 27.238092, 27.490061> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819149, 27.345779, 27.466843>,  <36.049870, 27.410391, 27.452911>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.819149, 27.345779, 27.466843>,  <35.434616, 27.238092, 27.490061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.819149, 27.345779, 27.466843> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261284, 0.824938, -0.501207,
		-0.087049, 0.496991, 0.863378,
		0.961329, 0.269216, -0.058045,
		36.107548, 27.426544, 27.449429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.422043, 27.928118, 27.482410>,  <35.434616, 27.238092, 27.490061>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.422043, 27.928118, 27.482410> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811726, 27.885571, 27.402805>,  <36.045536, 27.860043, 27.355042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.811726, 27.885571, 27.402805>,  <35.422043, 27.928118, 27.482410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811726, 27.885571, 27.402805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009689, 0.900837, -0.434049,
		0.225447, 0.420925, 0.878633,
		0.974207, -0.106369, -0.199012,
		36.103989, 27.853661, 27.343102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812767, 28.539970, 27.649700>,  <35.422043, 27.928118, 27.482410>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812767, 28.539970, 27.649700> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044670, 28.330967, 27.399624>,  <36.183811, 28.205564, 27.249578>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.044670, 28.330967, 27.399624>,  <35.812767, 28.539970, 27.649700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044670, 28.330967, 27.399624> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103218, 0.808224, -0.579759,
		0.808224, 0.271589, 0.522507,
		0.579759, -0.522507, -0.625193,
		36.218597, 28.174215, 27.212067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.332340, 28.986864, 27.592419>,  <35.812767, 28.539970, 27.649700>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.332340, 28.986864, 27.592419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347721, 28.723942, 27.291363>,  <36.356949, 28.566189, 27.110729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.347721, 28.723942, 27.291363>,  <36.332340, 28.986864, 27.592419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.347721, 28.723942, 27.291363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043692, 0.751373, -0.658430,
		0.998305, 0.058200, 0.000169,
		0.038447, -0.657306, -0.752642,
		36.359257, 28.526751, 27.065571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858917, 29.235626, 27.111334>,  <36.332340, 28.986864, 27.592419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858917, 29.235626, 27.111334> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636467, 28.992542, 26.884560>,  <36.502998, 28.846691, 26.748495>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.636467, 28.992542, 26.884560>,  <36.858917, 29.235626, 27.111334>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.636467, 28.992542, 26.884560> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034047, 0.698237, -0.715057,
		0.830402, -0.378357, -0.408997,
		-0.556124, -0.607710, -0.566935,
		36.469631, 28.810228, 26.714479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.154911, 29.320772, 26.483244>,  <36.858917, 29.235626, 27.111334>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.154911, 29.320772, 26.483244> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781170, 29.190285, 26.425892>,  <36.556923, 29.111992, 26.391481>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781170, 29.190285, 26.425892>,  <37.154911, 29.320772, 26.483244>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781170, 29.190285, 26.425892> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134685, 0.695833, -0.705462,
		0.329903, -0.639843, -0.694093,
		-0.934357, -0.326218, -0.143380,
		36.500862, 29.092419, 26.382877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.058228, 29.304581, 25.717358>,  <37.154911, 29.320772, 26.483244>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.058228, 29.304581, 25.717358> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684212, 29.311512, 25.859009>,  <36.459805, 29.315670, 25.944000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.684212, 29.311512, 25.859009>,  <37.058228, 29.304581, 25.717358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.684212, 29.311512, 25.859009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249815, 0.676569, -0.692710,
		-0.251596, -0.736176, -0.628287,
		-0.935036, 0.017328, 0.354130,
		36.403702, 29.316710, 25.965248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719322, 29.051332, 25.187450>,  <37.058228, 29.304581, 25.717358>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719322, 29.051332, 25.187450> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436653, 29.222057, 25.413174>,  <36.267052, 29.324493, 25.548607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.436653, 29.222057, 25.413174>,  <36.719322, 29.051332, 25.187450>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436653, 29.222057, 25.413174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330615, 0.505939, -0.796693,
		-0.625544, -0.749571, -0.216423,
		-0.706674, 0.426814, 0.564306,
		36.224651, 29.350101, 25.582466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141376, 29.080067, 24.740128>,  <36.719322, 29.051332, 25.187450>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141376, 29.080067, 24.740128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.080624, 29.355667, 25.023594>,  <36.044170, 29.521029, 25.193674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.080624, 29.355667, 25.023594>,  <36.141376, 29.080067, 24.740128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.080624, 29.355667, 25.023594> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273790, 0.659599, -0.699978,
		-0.949721, -0.300341, 0.088460,
		-0.151884, 0.689003, 0.708665,
		36.035057, 29.562368, 25.236193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.545963, 29.425272, 24.524242>,  <36.141376, 29.080067, 24.740128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.545963, 29.425272, 24.524242> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732002, 29.673298, 24.776974>,  <35.843624, 29.822113, 24.928612>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.732002, 29.673298, 24.776974>,  <35.545963, 29.425272, 24.524242>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.732002, 29.673298, 24.776974> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128631, 0.753478, -0.644767,
		-0.875867, 0.218604, 0.430198,
		0.465093, 0.620067, 0.631827,
		35.871529, 29.859318, 24.966522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768150, 29.308825, 24.407894>,  <35.545963, 29.425272, 24.524242>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768150, 29.308825, 24.407894> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546375, 29.100960, 24.147881>,  <34.413307, 28.976242, 23.991873>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.546375, 29.100960, 24.147881>,  <34.768150, 29.308825, 24.407894>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546375, 29.100960, 24.147881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033426, -0.794360, 0.606526,
		-0.831550, 0.314556, 0.457798,
		-0.554443, -0.519660, -0.650036,
		34.380043, 28.945063, 23.952869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.227455, 28.836647, 24.781555>,  <34.768150, 29.308825, 24.407894>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.227455, 28.836647, 24.781555> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268543, 28.651169, 24.429546>,  <34.293198, 28.539883, 24.218342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.268543, 28.651169, 24.429546>,  <34.227455, 28.836647, 24.781555>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268543, 28.651169, 24.429546> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044264, -0.885954, 0.461655,
		-0.993725, -0.008470, -0.111533,
		0.102723, -0.463695, -0.880020,
		34.299358, 28.512060, 24.165541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.583748, 28.536213, 24.597929>,  <34.227455, 28.836647, 24.781555>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.583748, 28.536213, 24.597929> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884335, 28.346039, 24.414948>,  <34.064686, 28.231934, 24.305159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.884335, 28.346039, 24.414948>,  <33.583748, 28.536213, 24.597929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.884335, 28.346039, 24.414948> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317387, -0.868345, 0.381107,
		-0.578420, -0.141198, -0.803426,
		0.751462, -0.475437, -0.457454,
		34.109772, 28.203407, 24.277712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348194, 27.927666, 24.302267>,  <33.583748, 28.536213, 24.597929>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348194, 27.927666, 24.302267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741646, 27.859253, 24.279556>,  <33.977718, 27.818205, 24.265930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.741646, 27.859253, 24.279556>,  <33.348194, 27.927666, 24.302267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.741646, 27.859253, 24.279556> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137136, -0.914798, 0.379919,
		-0.116916, -0.365913, -0.923276,
		0.983628, -0.171033, -0.056775,
		34.036736, 27.807943, 24.262524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345657, 27.140068, 24.171124>,  <33.348194, 27.927666, 24.302267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345657, 27.140068, 24.171124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712166, 27.224716, 24.307163>,  <33.932072, 27.275505, 24.388786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.712166, 27.224716, 24.307163>,  <33.345657, 27.140068, 24.171124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.712166, 27.224716, 24.307163> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055890, -0.908289, 0.414593,
		0.396645, -0.360871, -0.844065,
		0.916270, 0.211621, 0.340099,
		33.987045, 27.288202, 24.409193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.803471, 26.557402, 24.066954>,  <33.345657, 27.140068, 24.171124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.803471, 26.557402, 24.066954> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003727, 26.722778, 24.371170>,  <34.123882, 26.822004, 24.553699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.003727, 26.722778, 24.371170>,  <33.803471, 26.557402, 24.066954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.003727, 26.722778, 24.371170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142675, -0.905968, 0.398579,
		0.853815, -0.091035, -0.512555,
		0.500643, 0.413442, 0.760541,
		34.153919, 26.846811, 24.599333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.299149, 25.985516, 24.288229>,  <33.803471, 26.557402, 24.066954>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.299149, 25.985516, 24.288229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339878, 26.249729, 24.585773>,  <34.364315, 26.408257, 24.764299>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.339878, 26.249729, 24.585773>,  <34.299149, 25.985516, 24.288229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.339878, 26.249729, 24.585773> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273493, -0.737520, 0.617468,
		0.956470, 0.140570, -0.255746,
		0.101820, 0.660534, 0.743860,
		34.370422, 26.447889, 24.808931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.955181, 25.790659, 24.579308>,  <34.299149, 25.985516, 24.288229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.955181, 25.790659, 24.579308> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691975, 25.968548, 24.822369>,  <34.534050, 26.075281, 24.968206>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.691975, 25.968548, 24.822369>,  <34.955181, 25.790659, 24.579308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.691975, 25.968548, 24.822369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160131, -0.705871, 0.690003,
		0.735784, 0.551334, 0.393259,
		-0.658012, 0.444720, 0.607654,
		34.494572, 26.101963, 25.004665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.276958, 25.714087, 25.276354>,  <34.955181, 25.790659, 24.579308>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.276958, 25.714087, 25.276354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909519, 25.820232, 25.393490>,  <34.689056, 25.883921, 25.463772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.909519, 25.820232, 25.393490>,  <35.276958, 25.714087, 25.276354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.909519, 25.820232, 25.393490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015831, -0.715708, 0.698220,
		0.394874, 0.646020, 0.653248,
		-0.918599, 0.265367, 0.292842,
		34.633938, 25.899843, 25.481342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.185490, 25.846964, 26.067333>,  <35.276958, 25.714087, 25.276354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.185490, 25.846964, 26.067333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814865, 25.744473, 25.957184>,  <34.592491, 25.682978, 25.891094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.814865, 25.744473, 25.957184>,  <35.185490, 25.846964, 26.067333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814865, 25.744473, 25.957184> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097240, -0.544036, 0.833408,
		-0.363355, 0.798982, 0.479168,
		-0.926562, -0.256229, -0.275371,
		34.536896, 25.667604, 25.874573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.834404, 25.678951, 26.608770>,  <35.185490, 25.846964, 26.067333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.834404, 25.678951, 26.608770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545670, 25.520691, 26.381645>,  <34.372429, 25.425734, 26.245369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.545670, 25.520691, 26.381645>,  <34.834404, 25.678951, 26.608770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545670, 25.520691, 26.381645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183990, -0.681227, 0.708574,
		-0.667159, 0.615946, 0.418938,
		-0.721835, -0.395652, -0.567814,
		34.329121, 25.401995, 26.211300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.248886, 25.681087, 27.057493>,  <34.834404, 25.678951, 26.608770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.248886, 25.681087, 27.057493> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182240, 25.417641, 26.763973>,  <34.142250, 25.259573, 26.587862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.182240, 25.417641, 26.763973>,  <34.248886, 25.681087, 27.057493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.182240, 25.417641, 26.763973> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259404, -0.688708, 0.677046,
		-0.951287, 0.303160, -0.056095,
		-0.166620, -0.658617, -0.733799,
		34.132252, 25.220057, 26.543833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.606857, 25.474464, 27.119627>,  <34.248886, 25.681087, 27.057493>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.606857, 25.474464, 27.119627> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772987, 25.186268, 26.897495>,  <33.872665, 25.013350, 26.764215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.772987, 25.186268, 26.897495>,  <33.606857, 25.474464, 27.119627>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.772987, 25.186268, 26.897495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405593, -0.693105, 0.595903,
		-0.814247, -0.022256, -0.580092,
		0.415327, -0.720494, -0.555332,
		33.897587, 24.970119, 26.730896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071163, 25.023817, 26.856632>,  <33.606857, 25.474464, 27.119627>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071163, 25.023817, 26.856632> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422329, 24.841377, 26.914913>,  <33.633030, 24.731913, 26.949883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.422329, 24.841377, 26.914913>,  <33.071163, 25.023817, 26.856632>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.422329, 24.841377, 26.914913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445606, -0.666947, 0.597173,
		-0.175194, -0.589197, -0.788767,
		0.877919, -0.456101, 0.145705,
		33.685703, 24.704548, 26.958624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.686260, 24.423611, 26.668545>,  <33.071163, 25.023817, 26.856632>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.686260, 24.423611, 26.668545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296783, 24.341438, 26.629108>,  <32.063099, 24.292135, 26.605446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.296783, 24.341438, 26.629108>,  <32.686260, 24.423611, 26.668545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296783, 24.341438, 26.629108> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122432, 0.836578, -0.533992,
		0.192178, -0.507873, -0.839722,
		-0.973693, -0.205430, -0.098592,
		32.004677, 24.279810, 26.599531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.548786, 24.641779, 26.042545>,  <32.686260, 24.423611, 26.668545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.548786, 24.641779, 26.042545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185863, 24.623795, 26.209770>,  <31.968111, 24.613003, 26.310104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.185863, 24.623795, 26.209770>,  <32.548786, 24.641779, 26.042545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.185863, 24.623795, 26.209770> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260938, 0.839855, -0.475977,
		-0.329711, -0.540945, -0.773737,
		-0.907305, -0.044962, 0.418062,
		31.913671, 24.610306, 26.335188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.027550, 24.399916, 25.553270>,  <32.548786, 24.641779, 26.042545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.027550, 24.399916, 25.553270> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828810, 24.615635, 25.825241>,  <31.709566, 24.745066, 25.988422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.828810, 24.615635, 25.825241>,  <32.027550, 24.399916, 25.553270>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828810, 24.615635, 25.825241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296329, 0.630956, -0.716996,
		-0.815677, -0.557721, -0.153681,
		-0.496850, 0.539297, 0.679925,
		31.679754, 24.777424, 26.029219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.345098, 24.395197, 25.336449>,  <32.027550, 24.399916, 25.553270>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.345098, 24.395197, 25.336449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443512, 24.707298, 25.566463>,  <31.502560, 24.894560, 25.704473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.443512, 24.707298, 25.566463>,  <31.345098, 24.395197, 25.336449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.443512, 24.707298, 25.566463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286428, 0.625307, -0.725913,
		-0.925974, 0.013891, 0.377332,
		0.246032, 0.780255, 0.575039,
		31.517323, 24.941376, 25.738976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.893255, 24.826588, 24.945642>,  <31.345098, 24.395197, 25.336449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.893255, 24.826588, 24.945642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086708, 25.086967, 25.179691>,  <31.202780, 25.243195, 25.320120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.086708, 25.086967, 25.179691>,  <30.893255, 24.826588, 24.945642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.086708, 25.086967, 25.179691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184670, 0.729341, -0.658755,
		-0.855568, 0.210541, 0.472944,
		0.483632, 0.650949, 0.585120,
		31.231798, 25.282251, 25.355227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.469486, 25.348806, 25.121840>,  <30.893255, 24.826588, 24.945642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.469486, 25.348806, 25.121840> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834959, 25.502743, 25.174114>,  <31.054243, 25.595104, 25.205479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.834959, 25.502743, 25.174114>,  <30.469486, 25.348806, 25.121840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.834959, 25.502743, 25.174114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240941, 0.771843, -0.588392,
		-0.327307, 0.506117, 0.797945,
		0.913683, 0.384843, 0.130685,
		31.109064, 25.618196, 25.213320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.403479, 26.032476, 25.441027>,  <30.469486, 25.348806, 25.121840>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.403479, 26.032476, 25.441027> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749882, 26.032978, 25.241016>,  <30.957724, 26.033279, 25.121010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.749882, 26.032978, 25.241016>,  <30.403479, 26.032476, 25.441027>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749882, 26.032978, 25.241016> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311604, 0.783435, -0.537711,
		0.391062, 0.621473, 0.678853,
		0.866010, 0.001255, -0.500025,
		31.009686, 26.033354, 25.091009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.595274, 26.810373, 25.403372>,  <30.403479, 26.032476, 25.441027>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.595274, 26.810373, 25.403372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.844423, 26.621273, 25.154041>,  <30.993914, 26.507812, 25.004442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.844423, 26.621273, 25.154041>,  <30.595274, 26.810373, 25.403372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.844423, 26.621273, 25.154041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034096, 0.779602, -0.625346,
		0.781579, 0.410765, 0.469475,
		0.622874, -0.472750, -0.623326,
		31.031286, 26.479448, 24.967043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.165415, 27.240059, 25.205965>,  <30.595274, 26.810373, 25.403372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.165415, 27.240059, 25.205965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126802, 26.975578, 24.908375>,  <31.103636, 26.816891, 24.729820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.126802, 26.975578, 24.908375>,  <31.165415, 27.240059, 25.205965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.126802, 26.975578, 24.908375> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119322, 0.734386, -0.668161,
		0.988152, -0.153271, 0.008004,
		-0.096532, -0.661200, -0.743973,
		31.097843, 26.777218, 24.685183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.635893, 27.367931, 24.677979>,  <31.165415, 27.240059, 25.205965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.635893, 27.367931, 24.677979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342291, 27.169353, 24.492603>,  <31.166130, 27.050207, 24.381378>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.342291, 27.169353, 24.492603>,  <31.635893, 27.367931, 24.677979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.342291, 27.169353, 24.492603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045840, 0.717047, -0.695516,
		0.677590, -0.489272, -0.549077,
		-0.734010, -0.496444, -0.463435,
		31.122089, 27.020420, 24.353573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745995, 27.503040, 23.934355>,  <31.635893, 27.367931, 24.677979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745995, 27.503040, 23.934355> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369144, 27.369461, 23.922520>,  <31.143034, 27.289312, 23.915419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.369144, 27.369461, 23.922520>,  <31.745995, 27.503040, 23.934355>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.369144, 27.369461, 23.922520> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237182, 0.726288, -0.645175,
		0.236943, -0.600819, -0.763462,
		-0.942127, -0.333949, -0.029586,
		31.086506, 27.269276, 23.913645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.552202, 27.437862, 23.188616>,  <31.745995, 27.503040, 23.934355>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.552202, 27.437862, 23.188616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219410, 27.484802, 23.405518>,  <31.019735, 27.512966, 23.535660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.219410, 27.484802, 23.405518>,  <31.552202, 27.437862, 23.188616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.219410, 27.484802, 23.405518> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308904, 0.713891, -0.628441,
		-0.460858, -0.690354, -0.557693,
		-0.831979, 0.117348, 0.542255,
		30.969816, 27.520006, 23.568193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.167942, 27.594296, 22.716787>,  <31.552202, 27.437862, 23.188616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.167942, 27.594296, 22.716787> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005960, 27.724503, 23.058559>,  <30.908772, 27.802628, 23.263622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.005960, 27.724503, 23.058559>,  <31.167942, 27.594296, 22.716787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.005960, 27.724503, 23.058559> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233711, 0.866587, -0.440916,
		-0.883963, -0.378241, -0.274852,
		-0.404956, 0.325517, 0.854429,
		30.884474, 27.822157, 23.314888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.522991, 27.918137, 22.406820>,  <31.167942, 27.594296, 22.716787>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.522991, 27.918137, 22.406820> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556461, 28.057556, 22.780239>,  <30.576544, 28.141207, 23.004292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.556461, 28.057556, 22.780239>,  <30.522991, 27.918137, 22.406820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556461, 28.057556, 22.780239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170676, 0.928003, -0.331179,
		-0.981768, -0.131624, 0.137138,
		0.083674, 0.348547, 0.933549,
		30.581564, 28.162121, 23.060305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<46.692154, 33.593498, 14.257053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.059731, 33.454258, 14.331208>,  <47.280277, 33.370716, 14.375701>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.059731, 33.454258, 14.331208>,  <46.692154, 33.593498, 14.257053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.059731, 33.454258, 14.331208> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365243, -0.573826, 0.733022,
		-0.148782, -0.741319, -0.654455,
		0.918946, -0.348096, 0.185387,
		47.335415, 33.349831, 14.386824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643372, 32.772114, 14.312879>,  <46.692154, 33.593498, 14.257053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643372, 32.772114, 14.312879> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.955116, 32.931374, 14.506404>,  <47.142162, 33.026928, 14.622519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.955116, 32.931374, 14.506404>,  <46.643372, 32.772114, 14.312879>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.955116, 32.931374, 14.506404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233396, -0.532114, 0.813868,
		0.581481, -0.747218, -0.321783,
		0.779362, 0.398146, 0.483812,
		47.188927, 33.050816, 14.651547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.892681, 32.110817, 14.584752>,  <46.643372, 32.772114, 14.312879>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.892681, 32.110817, 14.584752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.055241, 32.407616, 14.798024>,  <47.152775, 32.585693, 14.925987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.055241, 32.407616, 14.798024>,  <46.892681, 32.110817, 14.584752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.055241, 32.407616, 14.798024> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119081, -0.535553, 0.836064,
		0.905903, -0.403266, -0.129289,
		0.406398, 0.741997, 0.533180,
		47.177158, 32.630215, 14.957978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.200321, 31.769341, 15.095465>,  <46.892681, 32.110817, 14.584752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.200321, 31.769341, 15.095465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.210392, 32.130344, 15.267438>,  <47.216434, 32.346947, 15.370622>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.210392, 32.130344, 15.267438>,  <47.200321, 31.769341, 15.095465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.210392, 32.130344, 15.267438> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217590, -0.414812, 0.883507,
		0.975716, -0.115790, 0.185934,
		0.025174, 0.902510, 0.429934,
		47.217945, 32.401096, 15.396418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.661160, 31.808331, 15.746560>,  <47.200321, 31.769341, 15.095465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.661160, 31.808331, 15.746560> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.388344, 32.100670, 15.757020>,  <47.224655, 32.276073, 15.763296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.388344, 32.100670, 15.757020>,  <47.661160, 31.808331, 15.746560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.388344, 32.100670, 15.757020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163056, -0.186829, 0.968766,
		0.712907, 0.656472, 0.246594,
		-0.682039, 0.730848, 0.026150,
		47.183731, 32.319923, 15.764865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.872646, 32.146622, 16.257969>,  <47.661160, 31.808331, 15.746560>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.872646, 32.146622, 16.257969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.487850, 32.237999, 16.198116>,  <47.256973, 32.292828, 16.162205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.487850, 32.237999, 16.198116>,  <47.872646, 32.146622, 16.257969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.487850, 32.237999, 16.198116> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184700, -0.140685, 0.972673,
		0.201152, 0.963338, 0.177532,
		-0.961989, 0.228446, -0.149629,
		47.199253, 32.306534, 16.153227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.593815, 32.480824, 16.860830>,  <47.872646, 32.146622, 16.257969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.593815, 32.480824, 16.860830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.251656, 32.384274, 16.677517>,  <47.046360, 32.326344, 16.567530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.251656, 32.384274, 16.677517>,  <47.593815, 32.480824, 16.860830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.251656, 32.384274, 16.677517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488820, 0.083594, 0.868370,
		-0.171295, 0.966824, -0.189496,
		-0.855402, -0.241377, -0.458284,
		46.995033, 32.311859, 16.540031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.194042, 32.920761, 17.167456>,  <47.593815, 32.480824, 16.860830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.194042, 32.920761, 17.167456> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.953827, 32.639301, 17.015545>,  <46.809700, 32.470425, 16.924398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.953827, 32.639301, 17.015545>,  <47.194042, 32.920761, 17.167456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.953827, 32.639301, 17.015545> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681749, 0.202400, 0.703031,
		-0.417823, 0.681108, -0.601263,
		-0.600536, -0.703652, -0.379777,
		46.773666, 32.428207, 16.901611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.594330, 33.267879, 17.136723>,  <47.194042, 32.920761, 17.167456>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.594330, 33.267879, 17.136723> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.527836, 32.873672, 17.150108>,  <46.487938, 32.637150, 17.158140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.527836, 32.873672, 17.150108>,  <46.594330, 33.267879, 17.136723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.527836, 32.873672, 17.150108> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662225, 0.136721, 0.736726,
		-0.730631, 0.100313, -0.675363,
		-0.166240, -0.985517, 0.033463,
		46.477962, 32.578018, 17.160147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.896202, 33.284420, 17.135712>,  <46.594330, 33.267879, 17.136723>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.896202, 33.284420, 17.135712> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.998398, 32.924107, 17.276173>,  <46.059715, 32.707916, 17.360449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.998398, 32.924107, 17.276173>,  <45.896202, 33.284420, 17.135712>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.998398, 32.924107, 17.276173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814453, -0.004817, 0.580209,
		-0.520954, -0.434232, -0.734880,
		0.255486, -0.900788, 0.351152,
		46.075043, 32.653870, 17.381517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.192169, 32.965748, 17.431206>,  <45.896202, 33.284420, 17.135712>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.192169, 32.965748, 17.431206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.507103, 32.768543, 17.579281>,  <45.696064, 32.650219, 17.668125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.507103, 32.768543, 17.579281>,  <45.192169, 32.965748, 17.431206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.507103, 32.768543, 17.579281> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466598, -0.084038, 0.880468,
		-0.402972, -0.865954, -0.296205,
		0.787338, -0.493012, 0.370188,
		45.743305, 32.620640, 17.690338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.907322, 32.453232, 17.734068>,  <45.192169, 32.965748, 17.431206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.907322, 32.453232, 17.734068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.260857, 32.469620, 17.920464>,  <45.472977, 32.479454, 18.032301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.260857, 32.469620, 17.920464>,  <44.907322, 32.453232, 17.734068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.260857, 32.469620, 17.920464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446699, -0.221815, 0.866752,
		0.138877, -0.974228, -0.177746,
		0.883840, 0.040973, 0.465991,
		45.526009, 32.481911, 18.060261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.945278, 31.848124, 18.164053>,  <44.907322, 32.453232, 17.734068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.945278, 31.848124, 18.164053> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.208042, 32.098270, 18.332523>,  <45.365700, 32.248360, 18.433605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.208042, 32.098270, 18.332523>,  <44.945278, 31.848124, 18.164053>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.208042, 32.098270, 18.332523> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385737, -0.201214, 0.900400,
		0.647826, -0.753943, 0.109047,
		0.656908, 0.625366, 0.421176,
		45.405113, 32.285881, 18.458876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.969505, 31.651430, 18.781979>,  <44.945278, 31.848124, 18.164053>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.969505, 31.651430, 18.781979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.161583, 31.991207, 18.869488>,  <45.276829, 32.195072, 18.921993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.161583, 31.991207, 18.869488>,  <44.969505, 31.651430, 18.781979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.161583, 31.991207, 18.869488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319765, -0.062728, 0.945418,
		0.816801, -0.523941, 0.241500,
		0.480194, 0.849442, 0.218774,
		45.305641, 32.246040, 18.935120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.197361, 31.527214, 19.393274>,  <44.969505, 31.651430, 18.781979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.197361, 31.527214, 19.393274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.189713, 31.925159, 19.353512>,  <45.185123, 32.163925, 19.329655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.189713, 31.925159, 19.353512>,  <45.197361, 31.527214, 19.393274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.189713, 31.925159, 19.353512> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551215, 0.072460, 0.831211,
		0.834144, 0.070690, 0.546998,
		-0.019123, 0.994863, -0.099408,
		45.183975, 32.223618, 19.323690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395138, 31.786987, 20.077604>,  <45.197361, 31.527214, 19.393274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395138, 31.786987, 20.077604> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.184917, 32.070648, 19.889606>,  <45.058784, 32.240845, 19.776808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.184917, 32.070648, 19.889606>,  <45.395138, 31.786987, 20.077604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.184917, 32.070648, 19.889606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448342, 0.238641, 0.861417,
		0.723036, 0.663440, 0.192524,
		-0.525555, 0.709153, -0.469995,
		45.027252, 32.283394, 19.748608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.361927, 32.423775, 20.543564>,  <45.395138, 31.786987, 20.077604>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.361927, 32.423775, 20.543564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.066872, 32.468250, 20.277172>,  <44.889839, 32.494934, 20.117336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.066872, 32.468250, 20.277172>,  <45.361927, 32.423775, 20.543564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.066872, 32.468250, 20.277172> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581838, 0.395768, 0.710515,
		0.342575, 0.911595, -0.227239,
		-0.737636, 0.111188, -0.665981,
		44.845581, 32.501606, 20.077377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006413, 33.015347, 20.796251>,  <45.361927, 32.423775, 20.543564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006413, 33.015347, 20.796251> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.759533, 32.813572, 20.554718>,  <44.611404, 32.692509, 20.409798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.759533, 32.813572, 20.554718>,  <45.006413, 33.015347, 20.796251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.759533, 32.813572, 20.554718> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763398, 0.198101, 0.614800,
		-0.190508, 0.840416, -0.507354,
		-0.617195, -0.504438, -0.603832,
		44.574375, 32.662239, 20.373568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.365700, 33.372669, 20.969559>,  <45.006413, 33.015347, 20.796251>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.365700, 33.372669, 20.969559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.246769, 33.026566, 20.808105>,  <44.175411, 32.818901, 20.711233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.246769, 33.026566, 20.808105>,  <44.365700, 33.372669, 20.969559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246769, 33.026566, 20.808105> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634206, -0.137030, 0.760924,
		-0.713709, 0.482228, -0.508013,
		-0.297325, -0.865263, -0.403632,
		44.157570, 32.766987, 20.687016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.612129, 33.401318, 20.781038>,  <44.365700, 33.372669, 20.969559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.612129, 33.401318, 20.781038> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.737633, 33.023014, 20.814735>,  <43.812935, 32.796032, 20.834953>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.737633, 33.023014, 20.814735>,  <43.612129, 33.401318, 20.781038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.737633, 33.023014, 20.814735> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721984, -0.180010, 0.668084,
		-0.616683, -0.270435, -0.739302,
		0.313755, -0.945760, 0.084241,
		43.831760, 32.739285, 20.840008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968929, 32.953697, 20.791588>,  <43.612129, 33.401318, 20.781038>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968929, 32.953697, 20.791588> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.270672, 32.756691, 20.965199>,  <43.451717, 32.638489, 21.069365>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.270672, 32.756691, 20.965199>,  <42.968929, 32.953697, 20.791588>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.270672, 32.756691, 20.965199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600912, -0.251870, 0.758595,
		-0.264306, -0.833058, -0.485960,
		0.754352, -0.492520, 0.434024,
		43.496979, 32.608936, 21.095407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400482, 32.629608, 20.802166>,  <42.968929, 32.953697, 20.791588>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400482, 32.629608, 20.802166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.166821, 32.896336, 20.617077>,  <42.026623, 33.056374, 20.506023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.166821, 32.896336, 20.617077>,  <42.400482, 32.629608, 20.802166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.166821, 32.896336, 20.617077> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781966, 0.309637, -0.540975,
		-0.217458, -0.677847, -0.702308,
		-0.584158, 0.666820, -0.462721,
		41.991573, 33.096382, 20.478260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.610966, 32.636383, 20.110889>,  <42.400482, 32.629608, 20.802166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.610966, 32.636383, 20.110889> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425121, 32.989883, 20.133244>,  <42.313614, 33.201984, 20.146656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.425121, 32.989883, 20.133244>,  <42.610966, 32.636383, 20.110889>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.425121, 32.989883, 20.133244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684508, 0.398471, -0.610467,
		-0.561768, -0.245378, -0.790067,
		-0.464614, 0.883748, 0.055885,
		42.285736, 33.255009, 20.150009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.641972, 32.813206, 19.501602>,  <42.610966, 32.636383, 20.110889>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.641972, 32.813206, 19.501602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.570038, 33.149837, 19.705330>,  <42.526878, 33.351814, 19.827566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.570038, 33.149837, 19.705330>,  <42.641972, 32.813206, 19.501602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.570038, 33.149837, 19.705330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666818, 0.484942, -0.565849,
		-0.723197, 0.237864, -0.648388,
		-0.179835, 0.841577, 0.509320,
		42.516087, 33.402309, 19.858126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.513767, 33.247765, 19.039602>,  <42.641972, 32.813206, 19.501602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.513767, 33.247765, 19.039602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624210, 33.485142, 19.342018>,  <42.690475, 33.627567, 19.523468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.624210, 33.485142, 19.342018>,  <42.513767, 33.247765, 19.039602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.624210, 33.485142, 19.342018> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592426, 0.514335, -0.620073,
		-0.756834, 0.619102, -0.209559,
		0.276105, 0.593441, 0.756038,
		42.707043, 33.663174, 19.568830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682514, 33.789425, 18.599911>,  <42.513767, 33.247765, 19.039602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682514, 33.789425, 18.599911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829670, 33.864849, 18.964130>,  <42.917965, 33.910103, 19.182663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.829670, 33.864849, 18.964130>,  <42.682514, 33.789425, 18.599911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.829670, 33.864849, 18.964130> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568923, 0.728912, -0.380808,
		-0.735517, 0.658128, 0.160881,
		0.367888, 0.188562, 0.910551,
		42.940037, 33.921417, 19.237295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.353096, 34.403557, 18.910898>,  <42.682514, 33.789425, 18.599911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.353096, 34.403557, 18.910898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.715687, 34.342754, 19.068481>,  <42.933239, 34.306274, 19.163031>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.715687, 34.342754, 19.068481>,  <42.353096, 34.403557, 18.910898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.715687, 34.342754, 19.068481> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370547, 0.733724, -0.569512,
		-0.202488, 0.662227, 0.721425,
		0.906473, -0.152003, 0.393957,
		42.987629, 34.297153, 19.186668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.695847, 35.173401, 18.956326>,  <42.353096, 34.403557, 18.910898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.695847, 35.173401, 18.956326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990089, 34.902447, 18.958580>,  <43.166637, 34.739876, 18.959932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.990089, 34.902447, 18.958580>,  <42.695847, 35.173401, 18.956326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.990089, 34.902447, 18.958580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519660, 0.558952, -0.646163,
		0.434548, 0.478254, 0.763179,
		0.735610, -0.677382, 0.005638,
		43.210773, 34.699234, 18.960272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.232944, 35.613724, 18.867077>,  <42.695847, 35.173401, 18.956326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.232944, 35.613724, 18.867077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.401207, 35.253811, 18.820698>,  <43.502163, 35.037865, 18.792870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.401207, 35.253811, 18.820698>,  <43.232944, 35.613724, 18.867077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.401207, 35.253811, 18.820698> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544416, 0.352600, -0.761107,
		0.725713, 0.257040, 0.638178,
		0.420656, -0.899780, -0.115949,
		43.527405, 34.983875, 18.785913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928806, 35.772755, 18.906929>,  <43.232944, 35.613724, 18.867077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928806, 35.772755, 18.906929> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882725, 35.420994, 18.722160>,  <43.855076, 35.209938, 18.611300>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.882725, 35.420994, 18.722160>,  <43.928806, 35.772755, 18.906929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.882725, 35.420994, 18.722160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654995, 0.282352, -0.700898,
		0.746799, -0.383304, 0.543479,
		-0.115205, -0.879406, -0.461923,
		43.848164, 35.157173, 18.583584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.561974, 35.551216, 18.797899>,  <43.928806, 35.772755, 18.906929>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.561974, 35.551216, 18.797899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.364460, 35.330551, 18.529022>,  <44.245953, 35.198151, 18.367697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.364460, 35.330551, 18.529022>,  <44.561974, 35.551216, 18.797899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.364460, 35.330551, 18.529022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645507, 0.285413, -0.708421,
		0.582662, -0.783714, 0.215170,
		-0.493787, -0.551663, -0.672192,
		44.216324, 35.165051, 18.327364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.025219, 35.152298, 18.483326>,  <44.561974, 35.551216, 18.797899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.025219, 35.152298, 18.483326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.727478, 35.184410, 18.218147>,  <44.548832, 35.203678, 18.059040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.727478, 35.184410, 18.218147>,  <45.025219, 35.152298, 18.483326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727478, 35.184410, 18.218147> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662402, 0.214601, -0.717754,
		0.084646, -0.973397, -0.212917,
		-0.744352, 0.080281, -0.662945,
		44.504173, 35.208492, 18.019264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.211025, 34.699398, 17.933220>,  <45.025219, 35.152298, 18.483326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.211025, 34.699398, 17.933220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.956379, 34.967964, 17.781475>,  <44.803589, 35.129105, 17.690428>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.956379, 34.967964, 17.781475>,  <45.211025, 34.699398, 17.933220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.956379, 34.967964, 17.781475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648043, 0.199103, -0.735118,
		-0.418036, -0.713835, -0.561858,
		-0.636620, 0.671415, -0.379364,
		44.765392, 35.169388, 17.667665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.088997, 34.468628, 17.184185>,  <45.211025, 34.699398, 17.933220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.088997, 34.468628, 17.184185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.974609, 34.851467, 17.202885>,  <44.905975, 35.081169, 17.214106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.974609, 34.851467, 17.202885>,  <45.088997, 34.468628, 17.184185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.974609, 34.851467, 17.202885> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567561, 0.208489, -0.796496,
		-0.772071, -0.201243, -0.602833,
		-0.285973, 0.957096, 0.046751,
		44.888817, 35.138596, 17.216909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.005295, 34.605350, 16.541119>,  <45.088997, 34.468628, 17.184185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.005295, 34.605350, 16.541119> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.992401, 34.983921, 16.669643>,  <44.984665, 35.211063, 16.746758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.992401, 34.983921, 16.669643>,  <45.005295, 34.605350, 16.541119>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.992401, 34.983921, 16.669643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582541, 0.279016, -0.763411,
		-0.812162, 0.162571, -0.560324,
		-0.032231, 0.946425, 0.321310,
		44.982731, 35.267849, 16.766037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.775448, 35.153481, 15.931278>,  <45.005295, 34.605350, 16.541119>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.775448, 35.153481, 15.931278> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001282, 35.371796, 16.178944>,  <45.136780, 35.502785, 16.327543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.001282, 35.371796, 16.178944>,  <44.775448, 35.153481, 15.931278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001282, 35.371796, 16.178944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637985, 0.187365, -0.746906,
		-0.523663, 0.816706, -0.242423,
		0.564581, 0.545789, 0.619162,
		45.170654, 35.535534, 16.364693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.921684, 35.686760, 15.599750>,  <44.775448, 35.153481, 15.931278>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.921684, 35.686760, 15.599750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.192562, 35.723351, 15.891788>,  <45.355087, 35.745304, 16.067011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.192562, 35.723351, 15.891788>,  <44.921684, 35.686760, 15.599750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.192562, 35.723351, 15.891788> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711969, 0.169029, -0.681563,
		-0.185756, 0.981357, 0.049336,
		0.677196, 0.091479, 0.730094,
		45.395721, 35.750793, 16.110815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.375931, 36.287323, 15.463284>,  <44.921684, 35.686760, 15.599750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.375931, 36.287323, 15.463284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.567356, 36.032841, 15.705348>,  <45.682213, 35.880150, 15.850586>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<45.567356, 36.032841, 15.705348>,  <45.375931, 36.287323, 15.463284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.567356, 36.032841, 15.705348> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821491, 0.081049, -0.564432,
		0.310048, 0.767249, 0.561426,
		0.478563, -0.636207, 0.605159,
		45.710926, 35.841980, 15.886896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.005413, 36.635059, 15.644883>,  <45.375931, 36.287323, 15.463284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.005413, 36.635059, 15.644883> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.080654, 36.247208, 15.707419>,  <46.125797, 36.014496, 15.744941>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.080654, 36.247208, 15.707419>,  <46.005413, 36.635059, 15.644883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.080654, 36.247208, 15.707419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882937, 0.097225, -0.459314,
		0.430163, 0.224436, 0.874407,
		0.188101, -0.969627, 0.156340,
		46.137085, 35.956318, 15.754321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.700531, 36.589138, 15.578536>,  <46.005413, 36.635059, 15.644883>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.700531, 36.589138, 15.578536> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.631462, 36.195148, 15.580161>,  <46.590023, 35.958755, 15.581137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<46.631462, 36.195148, 15.580161>,  <46.700531, 36.589138, 15.578536>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.631462, 36.195148, 15.580161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813681, -0.144962, -0.562947,
		0.555075, -0.093896, 0.826483,
		-0.172668, -0.984972, 0.004063,
		46.579662, 35.899658, 15.581380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.404594, 36.243507, 15.700075>,  <46.700531, 36.589138, 15.578536>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.404594, 36.243507, 15.700075> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.138317, 36.006756, 15.518294>,  <46.978550, 35.864704, 15.409226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.138317, 36.006756, 15.518294>,  <47.404594, 36.243507, 15.700075>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.138317, 36.006756, 15.518294> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741989, -0.460239, -0.487476,
		0.079370, -0.661709, 0.745548,
		-0.665698, -0.591879, -0.454451,
		46.938606, 35.829193, 15.381959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.609360, 35.534801, 15.795803>,  <47.404594, 36.243507, 15.700075>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.609360, 35.534801, 15.795803> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.374516, 35.510784, 15.472892>,  <47.233608, 35.496376, 15.279145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<47.374516, 35.510784, 15.472892>,  <47.609360, 35.534801, 15.795803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<47.374516, 35.510784, 15.472892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747464, -0.423095, -0.512141,
		-0.310807, -0.904094, 0.293280,
		-0.587108, -0.060039, -0.807279,
		47.198383, 35.492771, 15.230708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<31.486689, 25.970716, 27.723196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774340, 26.173237, 27.913570>,  <31.946930, 26.294748, 28.027796>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.774340, 26.173237, 27.913570>,  <31.486689, 25.970716, 27.723196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774340, 26.173237, 27.913570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123691, -0.767251, 0.629306,
		0.683781, -0.393681, -0.614376,
		0.719127, 0.506301, 0.475937,
		31.990078, 26.325127, 28.056351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.979393, 25.573795, 27.739420>,  <31.486689, 25.970716, 27.723196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.979393, 25.573795, 27.739420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054218, 25.828072, 28.038994>,  <32.099113, 25.980637, 28.218739>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.054218, 25.828072, 28.038994>,  <31.979393, 25.573795, 27.739420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.054218, 25.828072, 28.038994> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008695, -0.761293, 0.648350,
		0.982310, -0.127793, -0.136881,
		0.187061, 0.635691, 0.748937,
		32.110336, 26.018778, 28.263676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266399, 25.175522, 28.158993>,  <31.979393, 25.573795, 27.739420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266399, 25.175522, 28.158993> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205036, 25.487373, 28.401855>,  <32.168217, 25.674484, 28.547573>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.205036, 25.487373, 28.401855>,  <32.266399, 25.175522, 28.158993>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.205036, 25.487373, 28.401855> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035862, -0.618420, 0.785029,
		0.987512, 0.098657, 0.122831,
		-0.153410, 0.779631, 0.607159,
		32.159012, 25.721262, 28.584003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653736, 25.082806, 28.694565>,  <32.266399, 25.175522, 28.158993>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653736, 25.082806, 28.694565> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341545, 25.277546, 28.851448>,  <32.154228, 25.394390, 28.945578>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.341545, 25.277546, 28.851448>,  <32.653736, 25.082806, 28.694565>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341545, 25.277546, 28.851448> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081920, -0.701582, 0.707864,
		0.619788, 0.520345, 0.587455,
		-0.780482, 0.486850, 0.392206,
		32.107399, 25.423601, 28.969110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.770809, 25.066961, 29.535265>,  <32.653736, 25.082806, 28.694565>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.770809, 25.066961, 29.535265> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388813, 25.177883, 29.493134>,  <32.159615, 25.244436, 29.467855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.388813, 25.177883, 29.493134>,  <32.770809, 25.066961, 29.535265>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388813, 25.177883, 29.493134> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251373, -0.568021, 0.783686,
		0.157491, 0.774890, 0.612162,
		-0.954991, 0.277305, -0.105328,
		32.102314, 25.261074, 29.461535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553249, 25.084673, 30.231386>,  <32.770809, 25.066961, 29.535265>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553249, 25.084673, 30.231386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214542, 25.088165, 30.018627>,  <32.011318, 25.090261, 29.890972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.214542, 25.088165, 30.018627>,  <32.553249, 25.084673, 30.231386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214542, 25.088165, 30.018627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479834, -0.444220, 0.756590,
		-0.229671, 0.895875, 0.380340,
		-0.846765, 0.008733, -0.531896,
		31.960512, 25.090786, 29.859058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081764, 25.461344, 30.643711>,  <32.553249, 25.084673, 30.231386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081764, 25.461344, 30.643711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869085, 25.234741, 30.391880>,  <31.741478, 25.098780, 30.240782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.869085, 25.234741, 30.391880>,  <32.081764, 25.461344, 30.643711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869085, 25.234741, 30.391880> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600766, -0.271691, 0.751841,
		-0.596973, 0.777981, -0.195880,
		-0.531699, -0.566506, -0.629576,
		31.709576, 25.064789, 30.203007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.418509, 25.532057, 30.764254>,  <32.081764, 25.461344, 30.643711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.418509, 25.532057, 30.764254> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.408224, 25.181828, 30.571293>,  <31.402054, 24.971689, 30.455517>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.408224, 25.181828, 30.571293>,  <31.418509, 25.532057, 30.764254>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.408224, 25.181828, 30.571293> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547226, -0.391511, 0.739772,
		-0.836590, 0.283005, -0.469070,
		-0.025713, -0.875573, -0.482402,
		31.400511, 24.919155, 30.426573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.698412, 25.282442, 30.916098>,  <31.418509, 25.532057, 30.764254>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.698412, 25.282442, 30.916098> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891945, 24.961330, 30.776699>,  <31.008064, 24.768663, 30.693060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.891945, 24.961330, 30.776699>,  <30.698412, 25.282442, 30.916098>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.891945, 24.961330, 30.776699> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497232, -0.579851, 0.645393,
		-0.720187, -0.138976, -0.679718,
		0.483829, -0.802781, -0.348498,
		31.037094, 24.720495, 30.672150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135565, 24.799603, 30.859444>,  <30.698412, 25.282442, 30.916098>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135565, 24.799603, 30.859444> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493412, 24.623768, 30.891506>,  <30.708120, 24.518267, 30.910744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.493412, 24.623768, 30.891506>,  <30.135565, 24.799603, 30.859444>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.493412, 24.623768, 30.891506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397697, -0.701537, 0.591340,
		-0.203710, -0.560902, -0.802429,
		0.894617, -0.439586, 0.080158,
		30.761797, 24.491892, 30.915554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.049025, 24.094114, 30.672728>,  <30.135565, 24.799603, 30.859444>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.049025, 24.094114, 30.672728> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385115, 24.103756, 30.889408>,  <30.586769, 24.109541, 31.019417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.385115, 24.103756, 30.889408>,  <30.049025, 24.094114, 30.672728>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.385115, 24.103756, 30.889408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413426, -0.617938, 0.668754,
		0.350860, -0.785857, -0.509241,
		0.840224, 0.024106, 0.541704,
		30.637182, 24.110987, 31.051920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.273661, 23.413071, 30.695398>,  <30.049025, 24.094114, 30.672728>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.273661, 23.413071, 30.695398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412952, 23.593731, 31.023972>,  <30.496527, 23.702127, 31.221115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.412952, 23.593731, 31.023972>,  <30.273661, 23.413071, 30.695398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.412952, 23.593731, 31.023972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413028, -0.712711, 0.566966,
		0.841513, -0.536708, -0.061642,
		0.348229, 0.451650, 0.821432,
		30.517422, 23.729225, 31.270401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.220140, 22.740267, 30.719778>,  <30.273661, 23.413071, 30.695398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.220140, 22.740267, 30.719778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313450, 22.463394, 30.446583>,  <30.369436, 22.297272, 30.282665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313450, 22.463394, 30.446583>,  <30.220140, 22.740267, 30.719778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313450, 22.463394, 30.446583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904943, -0.102531, 0.412996,
		-0.355895, -0.714405, 0.602466,
		0.233274, -0.692180, -0.682986,
		30.383432, 22.255739, 30.241688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486588, 22.071606, 31.000355>,  <30.220140, 22.740267, 30.719778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486588, 22.071606, 31.000355> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.709358, 22.132614, 30.673779>,  <30.843019, 22.169220, 30.477833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.709358, 22.132614, 30.673779>,  <30.486588, 22.071606, 31.000355>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.709358, 22.132614, 30.673779> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820296, 0.053079, 0.569471,
		0.130194, -0.986873, -0.095553,
		0.556924, 0.152524, -0.816439,
		30.876436, 22.178371, 30.428846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.004688, 21.824200, 31.417276>,  <30.486588, 22.071606, 31.000355>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.004688, 21.824200, 31.417276> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.221203, 21.515823, 31.283016>,  <31.351112, 21.330797, 31.202461>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.221203, 21.515823, 31.283016>,  <31.004688, 21.824200, 31.417276>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.221203, 21.515823, 31.283016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048527, 0.427161, -0.902872,
		0.839437, 0.472425, 0.268628,
		0.541287, -0.770940, -0.335649,
		31.383589, 21.284542, 31.182322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.581629, 22.135969, 31.116516>,  <31.004688, 21.824200, 31.417276>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.581629, 22.135969, 31.116516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565216, 21.774578, 30.945850>,  <31.555368, 21.557743, 30.843451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.565216, 21.774578, 30.945850>,  <31.581629, 22.135969, 31.116516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.565216, 21.774578, 30.945850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073292, 0.428595, -0.900519,
		0.996466, -0.005679, -0.083804,
		-0.041033, -0.903479, -0.426664,
		31.552906, 21.503534, 30.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.035107, 22.167965, 30.702604>,  <31.581629, 22.135969, 31.116516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.035107, 22.167965, 30.702604> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806433, 21.878742, 30.547493>,  <31.669230, 21.705210, 30.454426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.806433, 21.878742, 30.547493>,  <32.035107, 22.167965, 30.702604>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806433, 21.878742, 30.547493> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194596, 0.339652, -0.920200,
		0.797065, -0.601521, -0.053469,
		-0.571681, -0.723055, -0.387779,
		31.634928, 21.661825, 30.431160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382317, 22.055143, 30.048969>,  <32.035107, 22.167965, 30.702604>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382317, 22.055143, 30.048969> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035866, 21.859985, 30.005569>,  <31.827993, 21.742889, 29.979528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.035866, 21.859985, 30.005569>,  <32.382317, 22.055143, 30.048969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.035866, 21.859985, 30.005569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011979, 0.237284, -0.971367,
		0.499673, -0.840031, -0.211363,
		-0.866132, -0.487898, -0.108501,
		31.776026, 21.713615, 29.973019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.525101, 21.821285, 29.452677>,  <32.382317, 22.055143, 30.048969>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.525101, 21.821285, 29.452677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127865, 21.799641, 29.494343>,  <31.889524, 21.786654, 29.519342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.127865, 21.799641, 29.494343>,  <32.525101, 21.821285, 29.452677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.127865, 21.799641, 29.494343> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111351, 0.153524, -0.981851,
		0.037138, -0.986662, -0.158488,
		-0.993087, -0.054112, 0.104164,
		31.829939, 21.783407, 29.525593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312447, 21.393452, 28.864349>,  <32.525101, 21.821285, 29.452677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312447, 21.393452, 28.864349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989801, 21.594658, 28.988506>,  <31.796213, 21.715382, 29.063000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.989801, 21.594658, 28.988506>,  <32.312447, 21.393452, 28.864349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989801, 21.594658, 28.988506> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175452, 0.297699, -0.938398,
		-0.564433, -0.811387, -0.151874,
		-0.806617, 0.503017, 0.310391,
		31.747816, 21.745564, 29.081623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759439, 21.314035, 28.404421>,  <32.312447, 21.393452, 28.864349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759439, 21.314035, 28.404421> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.628948, 21.643723, 28.589565>,  <31.550653, 21.841536, 28.700653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.628948, 21.643723, 28.589565>,  <31.759439, 21.314035, 28.404421>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.628948, 21.643723, 28.589565> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287018, 0.380169, -0.879257,
		-0.900664, -0.419688, 0.112544,
		-0.326227, 0.824217, 0.462863,
		31.531080, 21.890987, 28.728424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.132189, 21.490265, 27.961258>,  <31.759439, 21.314035, 28.404421>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.132189, 21.490265, 27.961258> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261526, 21.806568, 28.169163>,  <31.339128, 21.996349, 28.293905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.261526, 21.806568, 28.169163>,  <31.132189, 21.490265, 27.961258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.261526, 21.806568, 28.169163> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022574, 0.542664, -0.839647,
		-0.946012, 0.283229, 0.157617,
		0.323345, 0.790758, 0.519760,
		31.358530, 22.043795, 28.325090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761833, 21.917206, 27.658627>,  <31.132189, 21.490265, 27.961258>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761833, 21.917206, 27.658627> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047636, 22.135216, 27.834091>,  <31.219118, 22.266022, 27.939369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.047636, 22.135216, 27.834091>,  <30.761833, 21.917206, 27.658627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.047636, 22.135216, 27.834091> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003913, 0.630097, -0.776507,
		-0.699615, 0.553105, 0.452343,
		0.714509, 0.545026, 0.438661,
		31.261990, 22.298723, 27.965689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.565456, 22.595411, 27.395575>,  <30.761833, 21.917206, 27.658627>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.565456, 22.595411, 27.395575> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940350, 22.595173, 27.535057>,  <31.165285, 22.595030, 27.618746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.940350, 22.595173, 27.535057>,  <30.565456, 22.595411, 27.395575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.940350, 22.595173, 27.535057> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263987, 0.654575, -0.708408,
		-0.227833, 0.755997, 0.613646,
		0.937232, -0.000596, 0.348707,
		31.221519, 22.594994, 27.639669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667292, 23.234304, 27.711309>,  <30.565456, 22.595411, 27.395575>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667292, 23.234304, 27.711309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019215, 23.092342, 27.584831>,  <31.230368, 23.007164, 27.508944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.019215, 23.092342, 27.584831>,  <30.667292, 23.234304, 27.711309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.019215, 23.092342, 27.584831> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080321, 0.766651, -0.637020,
		0.468494, 0.535058, 0.703012,
		0.879808, -0.354906, -0.316195,
		31.283157, 22.985870, 27.489973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.111620, 23.883730, 27.811663>,  <30.667292, 23.234304, 27.711309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.111620, 23.883730, 27.811663> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358591, 23.633888, 27.620392>,  <31.506775, 23.483984, 27.505629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.358591, 23.633888, 27.620392>,  <31.111620, 23.883730, 27.811663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.358591, 23.633888, 27.620392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151911, 0.691117, -0.706598,
		0.771819, 0.363633, 0.521599,
		0.617429, -0.624602, -0.478178,
		31.543819, 23.446508, 27.476938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.740759, 24.169140, 27.874729>,  <31.111620, 23.883730, 27.811663>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.740759, 24.169140, 27.874729> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705713, 23.937485, 27.550526>,  <31.684687, 23.798492, 27.356003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.705713, 23.937485, 27.550526>,  <31.740759, 24.169140, 27.874729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.705713, 23.937485, 27.550526> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323492, 0.753001, -0.573011,
		0.942166, -0.312396, 0.121374,
		-0.087611, -0.579136, -0.810510,
		31.679430, 23.763744, 27.307373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.236115, 24.455441, 27.467714>,  <31.740759, 24.169140, 27.874729>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.236115, 24.455441, 27.467714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048580, 24.249821, 27.180397>,  <31.936060, 24.126450, 27.008007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.048580, 24.249821, 27.180397>,  <32.236115, 24.455441, 27.467714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048580, 24.249821, 27.180397> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122205, 0.767637, -0.629125,
		0.874791, -0.382736, -0.297076,
		-0.468836, -0.514049, -0.718295,
		31.907930, 24.095606, 26.964909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.946861, 24.641819, 27.444088>,  <32.236115, 24.455441, 27.467714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.946861, 24.641819, 27.444088> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318436, 24.517132, 27.364170>,  <33.541378, 24.442320, 27.316219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.318436, 24.517132, 27.364170>,  <32.946861, 24.641819, 27.444088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.318436, 24.517132, 27.364170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040042, -0.621029, 0.782764,
		-0.368079, -0.719135, -0.589375,
		0.928932, -0.311719, -0.199792,
		33.597115, 24.423616, 27.304232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.912601, 23.907267, 27.606951>,  <32.946861, 24.641819, 27.444088>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.912601, 23.907267, 27.606951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289680, 24.039574, 27.624439>,  <33.515930, 24.118958, 27.634932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.289680, 24.039574, 27.624439>,  <32.912601, 23.907267, 27.606951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.289680, 24.039574, 27.624439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201331, -0.668445, 0.715994,
		0.266052, -0.666164, -0.696736,
		0.942699, 0.330766, 0.043722,
		33.572491, 24.138803, 27.637556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306866, 23.320009, 27.657303>,  <32.912601, 23.907267, 27.606951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306866, 23.320009, 27.657303> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521805, 23.617355, 27.816631>,  <33.650768, 23.795763, 27.912230>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.521805, 23.617355, 27.816631>,  <33.306866, 23.320009, 27.657303>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.521805, 23.617355, 27.816631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201672, -0.571864, 0.795173,
		0.818891, -0.346955, -0.457208,
		0.537350, 0.743366, 0.398323,
		33.683010, 23.840364, 27.936129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009983, 23.019911, 27.749037>,  <33.306866, 23.320009, 27.657303>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009983, 23.019911, 27.749037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958755, 23.346699, 27.973949>,  <33.928020, 23.542772, 28.108896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.958755, 23.346699, 27.973949>,  <34.009983, 23.019911, 27.749037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.958755, 23.346699, 27.973949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275224, -0.515405, 0.811548,
		0.952812, 0.258684, -0.158844,
		-0.128066, 0.816970, 0.562280,
		33.920338, 23.591789, 28.142633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556160, 23.023260, 28.185129>,  <34.009983, 23.019911, 27.749037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556160, 23.023260, 28.185129> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277828, 23.240303, 28.373341>,  <34.110828, 23.370529, 28.486267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.277828, 23.240303, 28.373341>,  <34.556160, 23.023260, 28.185129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277828, 23.240303, 28.373341> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082345, -0.590549, 0.802789,
		0.713470, 0.597351, 0.366241,
		-0.695830, 0.542608, 0.470528,
		34.069080, 23.403086, 28.514500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.855125, 23.015089, 28.855410>,  <34.556160, 23.023260, 28.185129>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.855125, 23.015089, 28.855410> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485344, 23.147118, 28.931767>,  <34.263474, 23.226334, 28.977581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.485344, 23.147118, 28.931767>,  <34.855125, 23.015089, 28.855410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485344, 23.147118, 28.931767> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005645, -0.512434, 0.858708,
		0.381254, 0.792758, 0.475585,
		-0.924453, 0.330070, 0.190893,
		34.208008, 23.246140, 28.989035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.901344, 23.342022, 29.611378>,  <34.855125, 23.015089, 28.855410>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.901344, 23.342022, 29.611378> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514904, 23.266304, 29.541164>,  <34.283039, 23.220873, 29.499037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.514904, 23.266304, 29.541164>,  <34.901344, 23.342022, 29.611378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.514904, 23.266304, 29.541164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038883, -0.565499, 0.823832,
		-0.255213, 0.802732, 0.538969,
		-0.966103, -0.189296, -0.175535,
		34.225075, 23.209515, 29.488504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959431, 24.032429, 29.954250>,  <34.901344, 23.342022, 29.611378>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959431, 24.032429, 29.954250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283108, 24.130852, 30.167667>,  <35.477314, 24.189905, 30.295717>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.283108, 24.130852, 30.167667>,  <34.959431, 24.032429, 29.954250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.283108, 24.130852, 30.167667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276685, 0.641507, -0.715482,
		-0.518321, 0.726584, 0.451020,
		0.809190, 0.246059, 0.533542,
		35.525864, 24.204670, 30.327730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.904526, 24.705811, 30.154703>,  <34.959431, 24.032429, 29.954250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.904526, 24.705811, 30.154703> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297630, 24.664673, 30.216152>,  <35.533493, 24.639990, 30.253021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297630, 24.664673, 30.216152>,  <34.904526, 24.705811, 30.154703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297630, 24.664673, 30.216152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182246, 0.678441, -0.711691,
		-0.031031, 0.727421, 0.685490,
		0.982763, -0.102843, 0.153622,
		35.592461, 24.633820, 30.262239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.259735, 25.400791, 30.324724>,  <34.904526, 24.705811, 30.154703>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.259735, 25.400791, 30.324724> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558147, 25.172779, 30.187031>,  <35.737194, 25.035973, 30.104414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558147, 25.172779, 30.187031>,  <35.259735, 25.400791, 30.324724>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558147, 25.172779, 30.187031> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216083, 0.696198, -0.684556,
		0.629873, 0.436319, 0.642562,
		0.746035, -0.570030, -0.344235,
		35.781960, 25.001770, 30.083761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716385, 25.840839, 30.117229>,  <35.259735, 25.400791, 30.324724>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716385, 25.840839, 30.117229> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903858, 25.525146, 29.958511>,  <36.016342, 25.335730, 29.863281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.903858, 25.525146, 29.958511>,  <35.716385, 25.840839, 30.117229>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903858, 25.525146, 29.958511> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261868, 0.553127, -0.790871,
		0.843661, 0.266758, 0.465915,
		0.468681, -0.789234, -0.396796,
		36.044464, 25.288376, 29.839472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.391682, 26.029844, 29.955513>,  <35.716385, 25.840839, 30.117229>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.391682, 26.029844, 29.955513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308125, 25.721287, 29.715076>,  <36.257988, 25.536152, 29.570814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.308125, 25.721287, 29.715076>,  <36.391682, 26.029844, 29.955513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308125, 25.721287, 29.715076> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384847, 0.500215, -0.775679,
		0.899030, -0.393366, 0.192375,
		-0.208897, -0.771394, -0.601094,
		36.245457, 25.489868, 29.534748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.918137, 26.071028, 29.597462>,  <36.391682, 26.029844, 29.955513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.918137, 26.071028, 29.597462> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640785, 25.887997, 29.374805>,  <36.474373, 25.778179, 29.241211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.640785, 25.887997, 29.374805>,  <36.918137, 26.071028, 29.597462>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640785, 25.887997, 29.374805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217949, 0.603137, -0.767284,
		0.686824, -0.653337, -0.318472,
		-0.693377, -0.457578, -0.556643,
		36.432770, 25.750725, 29.207813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.270710, 26.085003, 29.007765>,  <36.918137, 26.071028, 29.597462>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.270710, 26.085003, 29.007765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889740, 26.010078, 28.911606>,  <36.661156, 25.965124, 28.853910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.889740, 26.010078, 28.911606>,  <37.270710, 26.085003, 29.007765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.889740, 26.010078, 28.911606> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062743, 0.651402, -0.756135,
		0.298230, -0.735248, -0.608662,
		-0.952430, -0.187313, -0.240399,
		36.604012, 25.953884, 28.839485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<31.405081, 25.538359, 34.209457> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213240, 25.247929, 34.012360>,  <31.098135, 25.073671, 33.894100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.213240, 25.247929, 34.012360>,  <31.405081, 25.538359, 34.209457>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.213240, 25.247929, 34.012360> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311485, 0.384103, -0.869162,
		0.820340, -0.570335, 0.041944,
		-0.479603, -0.726074, -0.492746,
		31.069359, 25.030107, 33.864536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.909773, 25.136232, 33.767624>,  <31.405081, 25.538359, 34.209457>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.909773, 25.136232, 33.767624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.550522, 25.144855, 33.591942>,  <31.334970, 25.150028, 33.486530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.550522, 25.144855, 33.591942>,  <31.909773, 25.136232, 33.767624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550522, 25.144855, 33.591942> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404094, 0.434366, -0.805006,
		0.173423, -0.900479, -0.398827,
		-0.898127, 0.021557, -0.439207,
		31.281084, 25.151323, 33.460178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.120403, 25.032196, 33.089088>,  <31.909773, 25.136232, 33.767624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.120403, 25.032196, 33.089088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750597, 25.184502, 33.095970>,  <31.528715, 25.275885, 33.100101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.750597, 25.184502, 33.095970>,  <32.120403, 25.032196, 33.089088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.750597, 25.184502, 33.095970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241286, 0.619605, -0.746907,
		-0.295059, -0.686372, -0.664706,
		-0.924511, 0.380765, 0.017208,
		31.473244, 25.298731, 33.101131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910648, 24.974791, 32.396236>,  <32.120403, 25.032196, 33.089088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910648, 24.974791, 32.396236> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678051, 25.272545, 32.527542>,  <31.538492, 25.451199, 32.606323>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.678051, 25.272545, 32.527542>,  <31.910648, 24.974791, 32.396236>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.678051, 25.272545, 32.527542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202272, 0.523103, -0.827919,
		-0.788007, -0.415030, -0.454748,
		-0.581491, 0.744388, 0.328260,
		31.503603, 25.495861, 32.626019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.579817, 25.253431, 31.788649>,  <31.910648, 24.974791, 32.396236>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.579817, 25.253431, 31.788649> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560638, 25.524677, 32.082005>,  <31.549131, 25.687426, 32.258018>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.560638, 25.524677, 32.082005>,  <31.579817, 25.253431, 31.788649>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.560638, 25.524677, 32.082005> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295758, 0.710947, -0.638030,
		-0.954059, 0.186315, -0.234644,
		-0.047945, 0.678116, 0.733389,
		31.546255, 25.728111, 32.302021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.292570, 25.777185, 31.436539>,  <31.579817, 25.253431, 31.788649>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.292570, 25.777185, 31.436539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405085, 25.961838, 31.773056>,  <31.472593, 26.072630, 31.974966>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.405085, 25.961838, 31.773056>,  <31.292570, 25.777185, 31.436539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.405085, 25.961838, 31.773056> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261080, 0.806807, -0.529999,
		-0.923426, 0.368727, 0.106420,
		0.281286, 0.461631, 0.841294,
		31.489470, 26.100327, 32.025444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.818947, 26.419647, 31.604256>,  <31.292570, 25.777185, 31.436539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.818947, 26.419647, 31.604256> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178677, 26.431343, 31.778778>,  <31.394514, 26.438360, 31.883492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.178677, 26.431343, 31.778778>,  <30.818947, 26.419647, 31.604256>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.178677, 26.431343, 31.778778> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161133, 0.905392, -0.392811,
		-0.406514, 0.423568, 0.809529,
		0.899323, 0.029241, 0.436306,
		31.448473, 26.440115, 31.909670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.835386, 27.171858, 31.981817>,  <30.818947, 26.419647, 31.604256>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.835386, 27.171858, 31.981817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.206816, 27.050354, 31.896511>,  <31.429674, 26.977451, 31.845327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.206816, 27.050354, 31.896511>,  <30.835386, 27.171858, 31.981817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.206816, 27.050354, 31.896511> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179286, 0.870230, -0.458865,
		0.324972, 0.387855, 0.862532,
		0.928574, -0.303758, -0.213263,
		31.485388, 26.959227, 31.832533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.240538, 27.773458, 32.058765>,  <30.835386, 27.171858, 31.981817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.240538, 27.773458, 32.058765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504025, 27.548355, 31.859009>,  <31.662117, 27.413292, 31.739155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.504025, 27.548355, 31.859009>,  <31.240538, 27.773458, 32.058765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504025, 27.548355, 31.859009> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322373, 0.810833, -0.488494,
		0.679830, 0.160787, 0.715527,
		0.658716, -0.562759, -0.499395,
		31.701639, 27.379528, 31.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.878172, 28.159702, 32.106724>,  <31.240538, 27.773458, 32.058765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.878172, 28.159702, 32.106724> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949022, 27.926285, 31.789711>,  <31.991533, 27.786234, 31.599504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.949022, 27.926285, 31.789711>,  <31.878172, 28.159702, 32.106724>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949022, 27.926285, 31.789711> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550106, 0.726429, -0.411927,
		0.816094, -0.363011, 0.449682,
		0.177128, -0.583544, -0.792529,
		32.002159, 27.751221, 31.551952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716972, 28.171034, 31.984571>,  <31.878172, 28.159702, 32.106724>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716972, 28.171034, 31.984571> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510788, 28.098408, 31.649590>,  <32.387077, 28.054832, 31.448601>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.510788, 28.098408, 31.649590>,  <32.716972, 28.171034, 31.984571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.510788, 28.098408, 31.649590> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486976, 0.742076, -0.460628,
		0.705088, -0.645258, -0.294096,
		-0.515466, -0.181565, -0.837454,
		32.356148, 28.043938, 31.398354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.191826, 28.282162, 31.399300>,  <32.716972, 28.171034, 31.984571>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.191826, 28.282162, 31.399300> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.831444, 28.295109, 31.226219>,  <32.615215, 28.302877, 31.122370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.831444, 28.295109, 31.226219>,  <33.191826, 28.282162, 31.399300>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831444, 28.295109, 31.226219> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355124, 0.628017, -0.692447,
		0.249332, -0.777527, -0.577309,
		-0.900956, 0.032367, -0.432702,
		32.561157, 28.304819, 31.096409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929951, 28.091362, 31.230188>,  <33.191826, 28.282162, 31.399300>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929951, 28.091362, 31.230188> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289604, 28.209190, 31.359673>,  <34.505398, 28.279888, 31.437363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.289604, 28.209190, 31.359673>,  <33.929951, 28.091362, 31.230188>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.289604, 28.209190, 31.359673> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105971, -0.864123, 0.491997,
		0.424654, -0.408066, -0.808177,
		0.899132, 0.294572, 0.323710,
		34.559345, 28.297562, 31.456785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.305397, 27.563805, 31.025803>,  <33.929951, 28.091362, 31.230188>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.305397, 27.563805, 31.025803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.475346, 27.768463, 31.324520>,  <34.577312, 27.891258, 31.503752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.475346, 27.768463, 31.324520>,  <34.305397, 27.563805, 31.025803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475346, 27.768463, 31.324520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111367, -0.848231, 0.517785,
		0.898379, -0.136822, -0.417367,
		0.424869, 0.511648, 0.746795,
		34.602806, 27.921957, 31.548559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.659199, 27.058178, 31.312101>,  <34.305397, 27.563805, 31.025803>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.659199, 27.058178, 31.312101> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.666264, 27.337597, 31.598240>,  <34.670502, 27.505249, 31.769922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.666264, 27.337597, 31.598240>,  <34.659199, 27.058178, 31.312101>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666264, 27.337597, 31.598240> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313416, -0.683266, 0.659483,
		0.949452, 0.212553, -0.231004,
		0.017662, 0.698547, 0.715346,
		34.671562, 27.547161, 31.812843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.262638, 26.972322, 31.610094>,  <34.659199, 27.058178, 31.312101>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.262638, 26.972322, 31.610094> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073750, 27.173431, 31.899708>,  <34.960415, 27.294096, 32.073475>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.073750, 27.173431, 31.899708>,  <35.262638, 26.972322, 31.610094>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073750, 27.173431, 31.899708> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260416, -0.705150, 0.659505,
		0.842134, 0.499983, 0.202057,
		-0.472221, 0.502773, 0.724035,
		34.932083, 27.324263, 32.116917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.626633, 26.882267, 32.184231>,  <35.262638, 26.972322, 31.610094>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.626633, 26.882267, 32.184231> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.286037, 27.012779, 32.348434>,  <35.081680, 27.091087, 32.446957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.286037, 27.012779, 32.348434>,  <35.626633, 26.882267, 32.184231>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.286037, 27.012779, 32.348434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107698, -0.657334, 0.745864,
		0.513201, 0.679302, 0.524570,
		-0.851484, 0.326283, 0.410504,
		35.030594, 27.110664, 32.471584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674931, 26.873106, 32.929722>,  <35.626633, 26.882267, 32.184231>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674931, 26.873106, 32.929722> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284111, 26.892239, 32.846691>,  <35.049618, 26.903719, 32.796871>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.284111, 26.892239, 32.846691>,  <35.674931, 26.873106, 32.929722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.284111, 26.892239, 32.846691> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185439, -0.670524, 0.718338,
		-0.104823, 0.740344, 0.664005,
		-0.977049, 0.047834, -0.207575,
		34.990997, 26.906590, 32.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406380, 26.892145, 33.583073>,  <35.674931, 26.873106, 32.929722>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406380, 26.892145, 33.583073> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123093, 26.775433, 33.325920>,  <34.953121, 26.705404, 33.171627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123093, 26.775433, 33.325920>,  <35.406380, 26.892145, 33.583073>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123093, 26.775433, 33.325920> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376289, -0.614472, 0.693420,
		-0.597360, 0.732998, 0.325383,
		-0.708215, -0.291783, -0.642880,
		34.910629, 26.687899, 33.133057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.730137, 26.952112, 33.924614>,  <35.406380, 26.892145, 33.583073>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.730137, 26.952112, 33.924614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.702202, 26.672955, 33.639500>,  <34.685440, 26.505461, 33.468430>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.702202, 26.672955, 33.639500>,  <34.730137, 26.952112, 33.924614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702202, 26.672955, 33.639500> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592981, -0.545547, 0.592243,
		-0.802183, 0.464028, -0.375740,
		-0.069834, -0.697894, -0.712788,
		34.681252, 26.463587, 33.425663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023636, 26.828348, 33.869629>,  <34.730137, 26.952112, 33.924614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023636, 26.828348, 33.869629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231518, 26.515804, 33.731426>,  <34.356247, 26.328278, 33.648502>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.231518, 26.515804, 33.731426>,  <34.023636, 26.828348, 33.869629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.231518, 26.515804, 33.731426> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491316, -0.604194, 0.627342,
		-0.698938, -0.156278, -0.697899,
		0.519707, -0.781362, -0.345512,
		34.387428, 26.281395, 33.627773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515285, 26.325245, 33.994888>,  <34.023636, 26.828348, 33.869629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515285, 26.325245, 33.994888> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850014, 26.126541, 33.902828>,  <34.050850, 26.007318, 33.847591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.850014, 26.126541, 33.902828>,  <33.515285, 26.325245, 33.994888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.850014, 26.126541, 33.902828> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322056, -0.786600, 0.526821,
		-0.442740, -0.366730, -0.818224,
		0.836816, -0.496758, -0.230152,
		34.101059, 25.977514, 33.833782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329018, 25.692324, 33.870518>,  <33.515285, 26.325245, 33.994888>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329018, 25.692324, 33.870518> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.715244, 25.644497, 33.962936>,  <33.946980, 25.615801, 34.018387>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.715244, 25.644497, 33.962936>,  <33.329018, 25.692324, 33.870518>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715244, 25.644497, 33.962936> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198720, -0.912166, 0.358418,
		0.167899, -0.391991, -0.904518,
		0.965568, -0.119568, 0.231048,
		34.004913, 25.608627, 34.032249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.448479, 25.013330, 33.715878>,  <33.329018, 25.692324, 33.870518>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.448479, 25.013330, 33.715878> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745411, 25.150360, 33.946213>,  <33.923569, 25.232578, 34.084412>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.745411, 25.150360, 33.946213>,  <33.448479, 25.013330, 33.715878>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745411, 25.150360, 33.946213> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030737, -0.841098, 0.540009,
		0.669327, -0.418565, -0.613844,
		0.742332, 0.342575, 0.575835,
		33.968109, 25.253132, 34.118961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763378, 24.384930, 33.903992>,  <33.448479, 25.013330, 33.715878>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763378, 24.384930, 33.903992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910519, 24.632038, 34.181995>,  <33.998802, 24.780304, 34.348797>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.910519, 24.632038, 34.181995>,  <33.763378, 24.384930, 33.903992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.910519, 24.632038, 34.181995> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012157, -0.750549, 0.660703,
		0.929806, -0.234589, -0.283598,
		0.367848, 0.617773, 0.695014,
		34.020874, 24.817369, 34.390499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406635, 24.141823, 34.072701>,  <33.763378, 24.384930, 33.903992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406635, 24.141823, 34.072701> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.229790, 24.333599, 34.375927>,  <34.123680, 24.448666, 34.557865>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.229790, 24.333599, 34.375927>,  <34.406635, 24.141823, 34.072701>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229790, 24.333599, 34.375927> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073702, -0.822880, 0.563415,
		0.893924, 0.304967, 0.328475,
		-0.442118, 0.479440, 0.758069,
		34.097153, 24.477430, 34.603348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.784832, 23.680269, 33.540081>,  <34.406635, 24.141823, 34.072701>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.784832, 23.680269, 33.540081> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.844086, 23.387054, 33.274536>,  <34.879639, 23.211124, 33.115211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.844086, 23.387054, 33.274536>,  <34.784832, 23.680269, 33.540081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844086, 23.387054, 33.274536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302203, 0.672710, -0.675377,
		0.941663, -0.100574, 0.321177,
		0.148134, -0.733039, -0.663860,
		34.888527, 23.167143, 33.075378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399590, 23.795490, 33.232979>,  <34.784832, 23.680269, 33.540081>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399590, 23.795490, 33.232979> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250973, 23.543293, 32.960381>,  <35.161804, 23.391973, 32.796822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.250973, 23.543293, 32.960381>,  <35.399590, 23.795490, 33.232979>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.250973, 23.543293, 32.960381> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272645, 0.627576, -0.729255,
		0.887481, -0.456753, -0.061268,
		-0.371540, -0.630495, -0.681494,
		35.139511, 23.354145, 32.755932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900215, 23.822699, 32.692886>,  <35.399590, 23.795490, 33.232979>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900215, 23.822699, 32.692886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577293, 23.663124, 32.518940>,  <35.383541, 23.567379, 32.414574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.577293, 23.663124, 32.518940>,  <35.900215, 23.822699, 32.692886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577293, 23.663124, 32.518940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295053, 0.365318, -0.882885,
		0.511081, -0.841065, -0.177215,
		-0.807304, -0.398938, -0.434865,
		35.335102, 23.543444, 32.388481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188248, 23.465633, 32.059677>,  <35.900215, 23.822699, 32.692886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188248, 23.465633, 32.059677> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794067, 23.508118, 32.006599>,  <35.557560, 23.533607, 31.974752>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.794067, 23.508118, 32.006599>,  <36.188248, 23.465633, 32.059677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.794067, 23.508118, 32.006599> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164172, 0.392719, -0.904886,
		-0.043998, -0.913504, -0.404442,
		-0.985450, 0.106211, -0.132693,
		35.498432, 23.539982, 31.966791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007988, 22.984573, 31.458292>,  <36.188248, 23.465633, 32.059677>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007988, 22.984573, 31.458292> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.740597, 23.281235, 31.480526>,  <35.580162, 23.459230, 31.493866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.740597, 23.281235, 31.480526>,  <36.007988, 22.984573, 31.458292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.740597, 23.281235, 31.480526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214847, 0.264118, -0.940257,
		-0.712025, -0.616598, -0.335899,
		-0.668477, 0.741653, 0.055584,
		35.540054, 23.503731, 31.497202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582718, 22.970125, 30.797398>,  <36.007988, 22.984573, 31.458292>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582718, 22.970125, 30.797398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573933, 23.337471, 30.955448>,  <35.568661, 23.557878, 31.050278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.573933, 23.337471, 30.955448>,  <35.582718, 22.970125, 30.797398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.573933, 23.337471, 30.955448> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307908, 0.382223, -0.871262,
		-0.951163, 0.102531, -0.291164,
		-0.021959, 0.918364, 0.395127,
		35.567345, 23.612980, 31.073986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266315, 23.322531, 30.212393>,  <35.582718, 22.970125, 30.797398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266315, 23.322531, 30.212393> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410625, 23.605026, 30.456055>,  <35.497211, 23.774523, 30.602251>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410625, 23.605026, 30.456055>,  <35.266315, 23.322531, 30.212393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410625, 23.605026, 30.456055> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264412, 0.548894, -0.792971,
		-0.894388, 0.447149, 0.011287,
		0.360772, 0.706239, 0.609155,
		35.518856, 23.816898, 30.638802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.497700, 23.397444, 30.218641>,  <35.266315, 23.322531, 30.212393>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.497700, 23.397444, 30.218641> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276726, 23.152287, 29.992657>,  <34.144142, 23.005192, 29.857065>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.276726, 23.152287, 29.992657>,  <34.497700, 23.397444, 30.218641>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.276726, 23.152287, 29.992657> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035170, -0.660030, 0.750416,
		-0.832815, 0.434424, 0.343067,
		-0.552433, -0.612891, -0.564962,
		34.110996, 22.968418, 29.823168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.949173, 23.163412, 30.680769>,  <34.497700, 23.397444, 30.218641>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.949173, 23.163412, 30.680769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942215, 22.890163, 30.388729>,  <33.938042, 22.726215, 30.213505>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.942215, 22.890163, 30.388729>,  <33.949173, 23.163412, 30.680769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942215, 22.890163, 30.388729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236121, -0.706748, 0.666898,
		-0.971568, 0.183992, -0.149006,
		-0.017394, -0.683121, -0.730099,
		33.936996, 22.685226, 30.169699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423225, 22.860598, 30.791500>,  <33.949173, 23.163412, 30.680769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423225, 22.860598, 30.791500> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639160, 22.604832, 30.572514>,  <33.768723, 22.451372, 30.441122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.639160, 22.604832, 30.572514>,  <33.423225, 22.860598, 30.791500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.639160, 22.604832, 30.572514> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217484, -0.734242, 0.643109,
		-0.813187, -0.228111, -0.535437,
		0.539840, -0.639417, -0.547466,
		33.801113, 22.413006, 30.408274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954735, 22.355486, 30.702539>,  <33.423225, 22.860598, 30.791500>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954735, 22.355486, 30.702539> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312546, 22.196815, 30.620110>,  <33.527233, 22.101614, 30.570652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.312546, 22.196815, 30.620110>,  <32.954735, 22.355486, 30.702539>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.312546, 22.196815, 30.620110> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214596, -0.785489, 0.580478,
		-0.392131, -0.475031, -0.787768,
		0.894528, -0.396676, -0.206075,
		33.580906, 22.077812, 30.558287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.760887, 21.547611, 30.813097>,  <32.954735, 22.355486, 30.702539>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.760887, 21.547611, 30.813097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159309, 21.566574, 30.783108>,  <33.398365, 21.577951, 30.765114>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.159309, 21.566574, 30.783108>,  <32.760887, 21.547611, 30.813097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.159309, 21.566574, 30.783108> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073762, -0.912150, 0.403165,
		-0.049274, -0.407105, -0.912051,
		0.996058, 0.047409, -0.074975,
		33.458126, 21.580797, 30.760614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.958000, 20.908445, 30.492598>,  <32.760887, 21.547611, 30.813097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.958000, 20.908445, 30.492598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264038, 21.062794, 30.698795>,  <33.447662, 21.155403, 30.822514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.264038, 21.062794, 30.698795>,  <32.958000, 20.908445, 30.492598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264038, 21.062794, 30.698795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096762, -0.860367, 0.500406,
		0.636608, -0.332977, -0.695599,
		0.765093, 0.385869, 0.515497,
		33.493565, 21.178555, 30.853445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468952, 20.458500, 30.411970>,  <32.958000, 20.908445, 30.492598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468952, 20.458500, 30.411970> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.503712, 20.663532, 30.753662>,  <33.524567, 20.786552, 30.958677>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.503712, 20.663532, 30.753662>,  <33.468952, 20.458500, 30.411970>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.503712, 20.663532, 30.753662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021382, -0.856317, 0.516008,
		0.995987, -0.063108, -0.063456,
		0.086902, 0.512580, 0.854230,
		33.529781, 20.817307, 31.009932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912243, 20.136942, 30.744303>,  <33.468952, 20.458500, 30.411970>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912243, 20.136942, 30.744303> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793896, 20.346237, 31.063972>,  <33.722885, 20.471815, 31.255775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.793896, 20.346237, 31.063972>,  <33.912243, 20.136942, 30.744303>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793896, 20.346237, 31.063972> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209396, -0.780757, 0.588703,
		0.931994, 0.341525, 0.121441,
		-0.295872, 0.523239, 0.799175,
		33.705135, 20.503208, 31.303724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.435818, 20.010971, 31.368999>,  <33.912243, 20.136942, 30.744303>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.435818, 20.010971, 31.368999> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091454, 20.123760, 31.538387>,  <33.884834, 20.191433, 31.640020>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.091454, 20.123760, 31.538387>,  <34.435818, 20.010971, 31.368999>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091454, 20.123760, 31.538387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017660, -0.848420, 0.529028,
		0.508450, 0.447968, 0.735394,
		-0.860911, 0.281971, 0.423468,
		33.833179, 20.208351, 31.665428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<33.483318, 32.881859, 20.865631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109558, 32.801895, 20.983570>,  <32.885303, 32.753918, 21.054333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.109558, 32.801895, 20.983570>,  <33.483318, 32.881859, 20.865631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.109558, 32.801895, 20.983570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356070, -0.548573, 0.756493,
		0.010518, 0.811853, 0.583767,
		-0.934400, -0.199906, 0.294847,
		32.829239, 32.741924, 21.072023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.587440, 32.932400, 21.588251>,  <33.483318, 32.881859, 20.865631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.587440, 32.932400, 21.588251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263981, 32.713715, 21.501362>,  <33.069904, 32.582504, 21.449228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.263981, 32.713715, 21.501362>,  <33.587440, 32.932400, 21.588251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263981, 32.713715, 21.501362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266749, -0.669865, 0.692911,
		-0.524333, 0.502381, 0.687524,
		-0.808653, -0.546712, -0.217223,
		33.021385, 32.549702, 21.436195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.240978, 32.780670, 22.237074>,  <33.587440, 32.932400, 21.588251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.240978, 32.780670, 22.237074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119759, 32.495300, 21.984348>,  <33.047028, 32.324078, 21.832714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.119759, 32.495300, 21.984348>,  <33.240978, 32.780670, 22.237074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.119759, 32.495300, 21.984348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018839, -0.658376, 0.752454,
		-0.952787, 0.239936, 0.186083,
		-0.303053, -0.713423, -0.631812,
		33.028843, 32.281273, 21.794806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.838589, 32.300018, 22.685940>,  <33.240978, 32.780670, 22.237074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.838589, 32.300018, 22.685940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927326, 32.088459, 22.358269>,  <32.980568, 31.961523, 22.161667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.927326, 32.088459, 22.358269>,  <32.838589, 32.300018, 22.685940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.927326, 32.088459, 22.358269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062188, -0.830725, 0.553199,
		-0.973097, -0.173667, -0.151400,
		0.221844, -0.528901, -0.819175,
		32.993881, 31.929789, 22.112516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487659, 31.603102, 22.743364>,  <32.838589, 32.300018, 22.685940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487659, 31.603102, 22.743364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777405, 31.560963, 22.470837>,  <32.951252, 31.535679, 22.307320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.777405, 31.560963, 22.470837>,  <32.487659, 31.603102, 22.743364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777405, 31.560963, 22.470837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201527, -0.912734, 0.355392,
		-0.659303, -0.394738, -0.639923,
		0.724366, -0.105349, -0.681319,
		32.994713, 31.529358, 22.266441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427540, 30.919992, 22.619402>,  <32.487659, 31.603102, 22.743364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427540, 30.919992, 22.619402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795555, 31.029343, 22.507118>,  <33.016365, 31.094954, 22.439749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.795555, 31.029343, 22.507118>,  <32.427540, 30.919992, 22.619402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795555, 31.029343, 22.507118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377421, -0.810785, 0.447415,
		-0.105281, -0.517583, -0.849131,
		0.920038, 0.273375, -0.280707,
		33.071568, 31.111355, 22.422907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641277, 30.275372, 22.278513>,  <32.427540, 30.919992, 22.619402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641277, 30.275372, 22.278513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955704, 30.504745, 22.370838>,  <33.144360, 30.642370, 22.426233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955704, 30.504745, 22.370838>,  <32.641277, 30.275372, 22.278513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955704, 30.504745, 22.370838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549491, -0.819250, 0.163978,
		0.283122, -0.002069, -0.959082,
		0.786067, 0.573433, 0.230811,
		33.191525, 30.676775, 22.440081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.330822, 30.021185, 21.944820>,  <32.641277, 30.275372, 22.278513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.330822, 30.021185, 21.944820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424408, 30.224400, 22.276402>,  <33.480560, 30.346329, 22.475349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.424408, 30.224400, 22.276402>,  <33.330822, 30.021185, 21.944820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.424408, 30.224400, 22.276402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542538, -0.775741, 0.322301,
		0.806793, 0.374332, -0.457122,
		0.233961, 0.508036, 0.828952,
		33.494595, 30.376810, 22.525087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990135, 29.837221, 22.086374>,  <33.330822, 30.021185, 21.944820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990135, 29.837221, 22.086374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862888, 29.975136, 22.439629>,  <33.786541, 30.057884, 22.651581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.862888, 29.975136, 22.439629>,  <33.990135, 29.837221, 22.086374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.862888, 29.975136, 22.439629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455252, -0.761541, 0.461303,
		0.831594, 0.548795, 0.085291,
		-0.318114, 0.344788, 0.883133,
		33.767456, 30.078573, 22.704569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631001, 29.873446, 22.483507>,  <33.990135, 29.837221, 22.086374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631001, 29.873446, 22.483507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321003, 29.879848, 22.736214>,  <34.135006, 29.883690, 22.887838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.321003, 29.879848, 22.736214>,  <34.631001, 29.873446, 22.483507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321003, 29.879848, 22.736214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457496, -0.675452, 0.578328,
		0.435986, 0.737231, 0.516147,
		-0.774993, 0.016008, 0.631767,
		34.088505, 29.884651, 22.925743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.897388, 29.858252, 23.028439>,  <34.631001, 29.873446, 22.483507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.897388, 29.858252, 23.028439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545834, 29.705818, 23.143219>,  <34.334900, 29.614359, 23.212088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.545834, 29.705818, 23.143219>,  <34.897388, 29.858252, 23.028439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.545834, 29.705818, 23.143219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475685, -0.745359, 0.467079,
		0.035886, 0.547006, 0.836359,
		-0.878883, -0.381082, 0.286951,
		34.282169, 29.591494, 23.229303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063774, 29.658419, 23.717661>,  <34.897388, 29.858252, 23.028439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063774, 29.658419, 23.717661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725872, 29.460533, 23.636028>,  <34.523132, 29.341803, 23.587049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.725872, 29.460533, 23.636028>,  <35.063774, 29.658419, 23.717661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.725872, 29.460533, 23.636028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372408, -0.817296, 0.439703,
		-0.384321, 0.295439, 0.874650,
		-0.844754, -0.494714, -0.204081,
		34.472446, 29.312119, 23.574804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151157, 30.041296, 24.412418>,  <35.063774, 29.658419, 23.717661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151157, 30.041296, 24.412418> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474125, 30.180405, 24.603054>,  <35.667904, 30.263870, 24.717436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474125, 30.180405, 24.603054>,  <35.151157, 30.041296, 24.412418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474125, 30.180405, 24.603054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050953, 0.763678, -0.643584,
		-0.587779, 0.543923, 0.598885,
		0.807415, 0.347770, 0.476588,
		35.716351, 30.284737, 24.746031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048466, 30.797188, 24.481150>,  <35.151157, 30.041296, 24.412418>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048466, 30.797188, 24.481150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442341, 30.735703, 24.514050>,  <35.678665, 30.698811, 24.533789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.442341, 30.735703, 24.514050>,  <35.048466, 30.797188, 24.481150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.442341, 30.735703, 24.514050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173484, 0.817377, -0.549362,
		0.017216, 0.555218, 0.831527,
		0.984686, -0.153715, 0.082249,
		35.737747, 30.689589, 24.538725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146820, 31.412382, 24.214561>,  <35.048466, 30.797188, 24.481150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146820, 31.412382, 24.214561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 31.242943, 24.227425>,  <35.726200, 31.141279, 24.235142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508934, 31.242943, 24.227425>,  <35.146820, 31.412382, 24.214561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508934, 31.242943, 24.227425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345681, 0.690535, -0.635347,
		0.246926, 0.586283, 0.771557,
		0.905280, -0.423596, 0.032156,
		35.780518, 31.115864, 24.237072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610973, 31.979589, 24.244551>,  <35.146820, 31.412382, 24.214561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610973, 31.979589, 24.244551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818520, 31.666847, 24.106285>,  <35.943047, 31.479202, 24.023325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.818520, 31.666847, 24.106285>,  <35.610973, 31.979589, 24.244551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.818520, 31.666847, 24.106285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401834, 0.579965, -0.708639,
		0.754527, 0.228786, 0.615098,
		0.518862, -0.781855, -0.345665,
		35.974178, 31.432291, 24.002586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282909, 32.232292, 24.049868>,  <35.610973, 31.979589, 24.244551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282909, 32.232292, 24.049868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277794, 31.888119, 23.846107>,  <36.274727, 31.681614, 23.723850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.277794, 31.888119, 23.846107>,  <36.282909, 32.232292, 24.049868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.277794, 31.888119, 23.846107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547103, 0.420403, -0.723837,
		0.836968, -0.287951, 0.465370,
		-0.012787, -0.860433, -0.509402,
		36.273956, 31.629990, 23.693287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.928127, 32.107117, 23.842670>,  <36.282909, 32.232292, 24.049868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.928127, 32.107117, 23.842670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701443, 31.916656, 23.573711>,  <36.565434, 31.802380, 23.412336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.701443, 31.916656, 23.573711>,  <36.928127, 32.107117, 23.842670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.701443, 31.916656, 23.573711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595589, 0.327158, -0.733650,
		0.569311, -0.816238, 0.098189,
		-0.566709, -0.476155, -0.672396,
		36.531429, 31.773809, 23.371992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.328182, 31.846272, 23.398529>,  <36.928127, 32.107117, 23.842670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.328182, 31.846272, 23.398529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994774, 31.847553, 23.177536>,  <36.794731, 31.848322, 23.044939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994774, 31.847553, 23.177536>,  <37.328182, 31.846272, 23.398529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994774, 31.847553, 23.177536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528614, 0.295430, -0.795794,
		0.160671, -0.955359, -0.247940,
		-0.833518, 0.003203, -0.552483,
		36.744720, 31.848515, 23.011791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.538177, 31.671574, 22.792192>,  <37.328182, 31.846272, 23.398529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.538177, 31.671574, 22.792192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180691, 31.823982, 22.697456>,  <36.966198, 31.915428, 22.640615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.180691, 31.823982, 22.697456>,  <37.538177, 31.671574, 22.792192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180691, 31.823982, 22.697456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429179, 0.572351, -0.698728,
		-0.130677, -0.726110, -0.675046,
		-0.893717, 0.381023, -0.236838,
		36.912575, 31.938290, 22.626406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.510311, 31.734032, 22.027607>,  <37.538177, 31.671574, 22.792192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.510311, 31.734032, 22.027607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226738, 31.990036, 22.146130>,  <37.056595, 32.143639, 22.217243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.226738, 31.990036, 22.146130>,  <37.510311, 31.734032, 22.027607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.226738, 31.990036, 22.146130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357862, 0.688459, -0.630840,
		-0.607739, -0.341188, -0.717108,
		-0.708935, 0.640012, 0.296305,
		37.014057, 32.182041, 22.235022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.353321, 32.117214, 21.437126>,  <37.510311, 31.734032, 22.027607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.353321, 32.117214, 21.437126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206753, 32.333000, 21.740364>,  <37.118813, 32.462471, 21.922306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.206753, 32.333000, 21.740364>,  <37.353321, 32.117214, 21.437126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.206753, 32.333000, 21.740364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224970, 0.841955, -0.490408,
		-0.902843, -0.009147, -0.429874,
		-0.366420, 0.539470, 0.758096,
		37.096828, 32.494843, 21.967793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.892281, 32.518631, 21.070097>,  <37.353321, 32.117214, 21.437126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.892281, 32.518631, 21.070097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986088, 32.686241, 21.420963>,  <37.042374, 32.786808, 21.631483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.986088, 32.686241, 21.420963>,  <36.892281, 32.518631, 21.070097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.986088, 32.686241, 21.420963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211040, 0.858866, -0.466703,
		-0.948928, 0.294567, 0.112988,
		0.234517, 0.419023, 0.877167,
		37.056442, 32.811947, 21.684113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.629211, 33.136871, 21.090858>,  <36.892281, 32.518631, 21.070097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.629211, 33.136871, 21.090858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917976, 33.182652, 21.363838>,  <37.091236, 33.210117, 21.527626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917976, 33.182652, 21.363838>,  <36.629211, 33.136871, 21.090858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917976, 33.182652, 21.363838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308158, 0.829865, -0.465147,
		-0.619576, 0.546100, 0.563826,
		0.721917, 0.114446, 0.682450,
		37.134552, 33.216984, 21.568573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632858, 33.879936, 21.320436>,  <36.629211, 33.136871, 21.090858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632858, 33.879936, 21.320436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 33.735336, 21.408512>,  <37.212700, 33.648579, 21.461357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.995258, 33.735336, 21.408512>,  <36.632858, 33.879936, 21.320436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995258, 33.735336, 21.408512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415541, 0.858628, -0.300140,
		-0.080563, 0.363425, 0.928134,
		0.906000, -0.361498, 0.220191,
		37.267059, 33.626888, 21.474569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923332, 34.398788, 21.698853>,  <36.632858, 33.879936, 21.320436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923332, 34.398788, 21.698853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219925, 34.177872, 21.546440>,  <37.397881, 34.045322, 21.454992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219925, 34.177872, 21.546440>,  <36.923332, 34.398788, 21.698853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219925, 34.177872, 21.546440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360812, 0.806977, -0.467550,
		0.565706, 0.209198, 0.797630,
		0.741479, -0.552290, -0.381030,
		37.442368, 34.012184, 21.432131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.682007, 34.298492, 22.458973>,  <36.923332, 34.398788, 21.698853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.682007, 34.298492, 22.458973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741112, 34.688286, 22.526554>,  <36.776573, 34.922161, 22.567102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.741112, 34.688286, 22.526554>,  <36.682007, 34.298492, 22.458973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.741112, 34.688286, 22.526554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103993, -0.154575, 0.982493,
		0.983541, -0.162744, 0.078500,
		0.147761, 0.974485, 0.168955,
		36.785439, 34.980633, 22.577240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287899, 34.529011, 22.695784>,  <36.682007, 34.298492, 22.458973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287899, 34.529011, 22.695784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006084, 34.779224, 22.829849>,  <36.836994, 34.929352, 22.910288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.006084, 34.779224, 22.829849>,  <37.287899, 34.529011, 22.695784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.006084, 34.779224, 22.829849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011458, -0.462191, 0.886706,
		0.709576, 0.628557, 0.318463,
		-0.704536, 0.625536, 0.335162,
		36.794724, 34.966885, 22.930397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.479149, 34.856857, 23.346981>,  <37.287899, 34.529011, 22.695784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.479149, 34.856857, 23.346981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079582, 34.874020, 23.339844>,  <36.839840, 34.884315, 23.335562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.079582, 34.874020, 23.339844>,  <37.479149, 34.856857, 23.346981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.079582, 34.874020, 23.339844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037647, -0.522172, 0.852008,
		0.027238, 0.851760, 0.523224,
		-0.998920, 0.042905, -0.017843,
		36.779907, 34.886890, 23.334492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.286572, 35.104900, 24.000944>,  <37.479149, 34.856857, 23.346981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.286572, 35.104900, 24.000944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971954, 34.906212, 23.854187>,  <36.783184, 34.786999, 23.766132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971954, 34.906212, 23.854187>,  <37.286572, 35.104900, 24.000944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971954, 34.906212, 23.854187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100198, -0.483598, 0.869537,
		-0.609349, 0.720692, 0.330601,
		-0.786546, -0.496726, -0.366892,
		36.735992, 34.757195, 23.744120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.864891, 35.197361, 24.540499>,  <37.286572, 35.104900, 24.000944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.864891, 35.197361, 24.540499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753410, 34.884693, 24.317314>,  <36.686520, 34.697094, 24.183403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.753410, 34.884693, 24.317314>,  <36.864891, 35.197361, 24.540499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.753410, 34.884693, 24.317314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000186, -0.580939, 0.813947,
		-0.960377, 0.226954, 0.161764,
		-0.278703, -0.781666, -0.557963,
		36.669800, 34.650192, 24.149925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.350060, 34.871498, 24.942806>,  <36.864891, 35.197361, 24.540499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.350060, 34.871498, 24.942806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475449, 34.590286, 24.687466>,  <36.550682, 34.421558, 24.534262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.475449, 34.590286, 24.687466>,  <36.350060, 34.871498, 24.942806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475449, 34.590286, 24.687466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059730, -0.685498, 0.725620,
		-0.947718, -0.189331, -0.256875,
		0.313470, -0.703026, -0.638350,
		36.569489, 34.379379, 24.495960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758156, 34.354450, 24.832125>,  <36.350060, 34.871498, 24.942806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758156, 34.354450, 24.832125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100460, 34.160873, 24.758938>,  <36.305843, 34.044727, 24.715025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100460, 34.160873, 24.758938>,  <35.758156, 34.354450, 24.832125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100460, 34.160873, 24.758938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297447, -0.749558, 0.591344,
		-0.423321, -0.451625, -0.785388,
		0.855760, -0.483940, -0.182969,
		36.357189, 34.015690, 24.704046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.591946, 33.662647, 24.866171>,  <35.758156, 34.354450, 24.832125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.591946, 33.662647, 24.866171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991913, 33.661362, 24.871021>,  <36.231895, 33.660591, 24.873932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991913, 33.661362, 24.871021>,  <35.591946, 33.662647, 24.866171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991913, 33.661362, 24.871021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011069, -0.681132, 0.732077,
		0.005907, -0.732154, -0.681114,
		0.999921, -0.003215, 0.012128,
		36.291889, 33.660397, 24.874660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.754562, 32.980225, 24.749531>,  <35.591946, 33.662647, 24.866171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.754562, 32.980225, 24.749531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081280, 33.120266, 24.932957>,  <36.277309, 33.204292, 25.043013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.081280, 33.120266, 24.932957>,  <35.754562, 32.980225, 24.749531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081280, 33.120266, 24.932957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061437, -0.737529, 0.672514,
		0.573656, -0.577475, -0.580897,
		0.816789, 0.350104, 0.458566,
		36.326317, 33.225296, 25.070526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116093, 32.357273, 24.918121>,  <35.754562, 32.980225, 24.749531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116093, 32.357273, 24.918121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227489, 32.667824, 25.144283>,  <36.294327, 32.854153, 25.279980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.227489, 32.667824, 25.144283>,  <36.116093, 32.357273, 24.918121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.227489, 32.667824, 25.144283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035306, -0.580022, 0.813835,
		0.959789, -0.246611, -0.134123,
		0.278495, 0.776375, 0.565405,
		36.311039, 32.900738, 25.313906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.532276, 32.038708, 25.320288>,  <36.116093, 32.357273, 24.918121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.532276, 32.038708, 25.320288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 32.383453, 25.495422>,  <36.368488, 32.590302, 25.600504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.429909, 32.383453, 25.495422>,  <36.532276, 32.038708, 25.320288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429909, 32.383453, 25.495422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196985, -0.489912, 0.849225,
		0.946416, 0.131084, 0.295151,
		-0.255918, 0.861860, 0.437839,
		36.353134, 32.642010, 25.626774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985924, 32.017235, 25.906853>,  <36.532276, 32.038708, 25.320288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985924, 32.017235, 25.906853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694420, 32.274845, 25.999924>,  <36.519516, 32.429413, 26.055767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.694420, 32.274845, 25.999924>,  <36.985924, 32.017235, 25.906853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.694420, 32.274845, 25.999924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113606, -0.448794, 0.886384,
		0.675280, 0.619527, 0.400228,
		-0.728759, 0.644027, 0.232680,
		36.475792, 32.468052, 26.069727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153637, 32.225872, 26.621058>,  <36.985924, 32.017235, 25.906853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153637, 32.225872, 26.621058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764816, 32.284824, 26.547966>,  <36.531525, 32.320194, 26.504110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.764816, 32.284824, 26.547966>,  <37.153637, 32.225872, 26.621058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.764816, 32.284824, 26.547966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228320, -0.412522, 0.881871,
		0.054588, 0.898947, 0.434643,
		-0.972055, 0.147377, -0.182729,
		36.473202, 32.329037, 26.493147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.849854, 32.478561, 27.306261>,  <37.153637, 32.225872, 26.621058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.849854, 32.478561, 27.306261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526653, 32.355213, 27.105446>,  <36.332733, 32.281204, 26.984957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526653, 32.355213, 27.105446>,  <36.849854, 32.478561, 27.306261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526653, 32.355213, 27.105446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326030, -0.475726, 0.816939,
		-0.490754, 0.823766, 0.283848,
		-0.808000, -0.308373, -0.502037,
		36.284252, 32.262703, 26.954834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.273132, 32.547653, 27.807129>,  <36.849854, 32.478561, 27.306261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.273132, 32.547653, 27.807129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137642, 32.296852, 27.526520>,  <36.056347, 32.146370, 27.358154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.137642, 32.296852, 27.526520>,  <36.273132, 32.547653, 27.807129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.137642, 32.296852, 27.526520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.420675, -0.566000, 0.708997,
		-0.841604, 0.535268, -0.072046,
		-0.338725, -0.627003, -0.701522,
		36.036026, 32.108749, 27.316063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.614971, 32.378765, 28.074150>,  <36.273132, 32.547653, 27.807129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.614971, 32.378765, 28.074150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711506, 32.104202, 27.799747>,  <35.769428, 31.939465, 27.635105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.711506, 32.104202, 27.799747>,  <35.614971, 32.378765, 28.074150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.711506, 32.104202, 27.799747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421398, -0.710901, 0.563066,
		-0.874174, 0.153194, -0.460815,
		0.241335, -0.686404, -0.686007,
		35.783905, 31.898281, 27.593945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981056, 31.962231, 28.016809>,  <35.614971, 32.378765, 28.074150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981056, 31.962231, 28.016809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325275, 31.784443, 27.917290>,  <35.531807, 31.677771, 27.857578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.325275, 31.784443, 27.917290>,  <34.981056, 31.962231, 28.016809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.325275, 31.784443, 27.917290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230206, -0.775087, 0.588426,
		-0.454377, -0.449095, -0.769321,
		0.860550, -0.444470, -0.248797,
		35.583439, 31.651102, 27.842651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721783, 31.321930, 27.875473>,  <34.981056, 31.962231, 28.016809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721783, 31.321930, 27.875473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110928, 31.258270, 27.942654>,  <35.344414, 31.220074, 27.982962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110928, 31.258270, 27.942654>,  <34.721783, 31.321930, 27.875473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110928, 31.258270, 27.942654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225912, -0.810219, 0.540841,
		0.050003, -0.564107, -0.824186,
		0.972864, -0.159150, 0.167952,
		35.402786, 31.210526, 27.993040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835979, 30.538790, 27.874023>,  <34.721783, 31.321930, 27.875473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835979, 30.538790, 27.874023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153664, 30.699074, 28.056740>,  <35.344273, 30.795244, 28.166370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153664, 30.699074, 28.056740>,  <34.835979, 30.538790, 27.874023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153664, 30.699074, 28.056740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079600, -0.676658, 0.731982,
		0.602406, -0.617709, -0.505512,
		0.794211, 0.400712, 0.456792,
		35.391926, 30.819288, 28.193777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300644, 29.926012, 27.948320>,  <34.835979, 30.538790, 27.874023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300644, 29.926012, 27.948320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378975, 30.183369, 28.244347>,  <35.425976, 30.337782, 28.421963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.378975, 30.183369, 28.244347>,  <35.300644, 29.926012, 27.948320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.378975, 30.183369, 28.244347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182510, -0.717580, 0.672138,
		0.963504, -0.266695, -0.023099,
		0.195831, 0.643392, 0.740065,
		35.437725, 30.376387, 28.466366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.691360, 29.481602, 28.409286>,  <35.300644, 29.926012, 27.948320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.691360, 29.481602, 28.409286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564495, 29.788738, 28.631935>,  <35.488377, 29.973021, 28.765524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.564495, 29.788738, 28.631935>,  <35.691360, 29.481602, 28.409286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564495, 29.788738, 28.631935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209542, -0.629155, 0.748503,
		0.924933, 0.120761, 0.360439,
		-0.317161, 0.767842, 0.556621,
		35.469345, 30.019091, 28.798922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.127876, 29.374599, 29.081177>,  <35.691360, 29.481602, 28.409286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.127876, 29.374599, 29.081177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825996, 29.622383, 29.167618>,  <35.644867, 29.771053, 29.219482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.825996, 29.622383, 29.167618>,  <36.127876, 29.374599, 29.081177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.825996, 29.622383, 29.167618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082659, -0.416543, 0.905350,
		0.650842, 0.665405, 0.365569,
		-0.754700, 0.619458, 0.216102,
		35.599586, 29.808220, 29.232449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.221142, 29.612844, 29.703939>,  <36.127876, 29.374599, 29.081177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.221142, 29.612844, 29.703939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827988, 29.685234, 29.690189>,  <35.592094, 29.728668, 29.681938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.827988, 29.685234, 29.690189>,  <36.221142, 29.612844, 29.703939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.827988, 29.685234, 29.690189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135435, -0.583450, 0.800777,
		0.124861, 0.791729, 0.597976,
		-0.982887, 0.180973, -0.034377,
		35.533123, 29.739527, 29.679876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074890, 29.759529, 30.422813>,  <36.221142, 29.612844, 29.703939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074890, 29.759529, 30.422813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726616, 29.659008, 30.253700>,  <35.517651, 29.598696, 30.152233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.726616, 29.659008, 30.253700>,  <36.074890, 29.759529, 30.422813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.726616, 29.659008, 30.253700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313374, -0.379072, 0.870690,
		-0.379072, 0.890590, 0.251303,
		-0.870690, -0.251303, -0.422783,
		35.465408, 29.583618, 30.126865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581345, 29.884159, 30.976995>,  <36.074890, 29.759529, 30.422813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581345, 29.884159, 30.976995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370701, 29.664543, 30.717384>,  <35.244316, 29.532774, 30.561617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.370701, 29.664543, 30.717384>,  <35.581345, 29.884159, 30.976995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.370701, 29.664543, 30.717384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384032, -0.527482, 0.757814,
		-0.758420, 0.648321, 0.066929,
		-0.526611, -0.549038, -0.649029,
		35.212719, 29.499832, 30.522676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.902790, 29.890009, 31.272713>,  <35.581345, 29.884159, 30.976995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.902790, 29.890009, 31.272713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910027, 29.583843, 31.015400>,  <34.914368, 29.400145, 30.861012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.910027, 29.583843, 31.015400>,  <34.902790, 29.890009, 31.272713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.910027, 29.583843, 31.015400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454923, -0.579234, 0.676412,
		-0.890347, 0.280409, -0.358682,
		0.018088, -0.765414, -0.643284,
		34.915455, 29.354219, 30.822414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.208141, 29.546230, 31.380657>,  <34.902790, 29.890009, 31.272713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.208141, 29.546230, 31.380657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482002, 29.305946, 31.215542>,  <34.646320, 29.161776, 31.116472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.482002, 29.305946, 31.215542>,  <34.208141, 29.546230, 31.380657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.482002, 29.305946, 31.215542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311026, -0.752978, 0.579902,
		-0.659175, -0.268643, -0.702366,
		0.684654, -0.600712, -0.412790,
		34.687397, 29.125732, 31.091705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.869980, 28.821714, 31.108044>,  <34.208141, 29.546230, 31.380657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.869980, 28.821714, 31.108044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256229, 28.780499, 31.203506>,  <34.487980, 28.755768, 31.260784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.256229, 28.780499, 31.203506>,  <33.869980, 28.821714, 31.108044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.256229, 28.780499, 31.203506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220226, -0.812043, 0.540450,
		0.138110, -0.574429, -0.806819,
		0.965622, -0.103041, 0.238655,
		34.545918, 28.749586, 31.275103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434822, 28.498785, 30.638351>,  <33.869980, 28.821714, 31.108044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434822, 28.498785, 30.638351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037079, 28.528694, 30.668449>,  <32.798431, 28.546640, 30.686508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.037079, 28.528694, 30.668449>,  <33.434822, 28.498785, 30.638351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.037079, 28.528694, 30.668449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003590, 0.685205, -0.728341,
		-0.106019, -0.724502, -0.681071,
		-0.994357, 0.074773, 0.075246,
		32.738773, 28.551126, 30.691023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.066147, 28.491411, 29.884815>,  <33.434822, 28.498785, 30.638351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.066147, 28.491411, 29.884815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820007, 28.686085, 30.132843>,  <32.672325, 28.802889, 30.281660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.820007, 28.686085, 30.132843>,  <33.066147, 28.491411, 29.884815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.820007, 28.686085, 30.132843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020730, 0.776371, -0.629936,
		-0.787985, -0.400482, -0.467647,
		-0.615345, 0.486686, 0.620071,
		32.635403, 28.832090, 30.318865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.645981, 28.720613, 29.490435>,  <33.066147, 28.491411, 29.884815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.645981, 28.720613, 29.490435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598057, 28.965813, 29.802814>,  <32.569302, 29.112932, 29.990242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.598057, 28.965813, 29.802814>,  <32.645981, 28.720613, 29.490435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.598057, 28.965813, 29.802814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135726, 0.769116, -0.624531,
		-0.983476, -0.180817, -0.008945,
		-0.119805, 0.612997, 0.780949,
		32.562115, 29.149712, 30.037100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.976332, 28.923111, 29.398922>,  <32.645981, 28.720613, 29.490435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.976332, 28.923111, 29.398922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171509, 29.193512, 29.619804>,  <32.288616, 29.355753, 29.752333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.171509, 29.193512, 29.619804>,  <31.976332, 28.923111, 29.398922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.171509, 29.193512, 29.619804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106948, 0.674161, -0.730800,
		-0.866299, 0.297532, 0.401250,
		0.487943, 0.676004, 0.552204,
		32.317890, 29.396313, 29.785465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.517981, 29.509483, 29.336182>,  <31.976332, 28.923111, 29.398922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.517981, 29.509483, 29.336182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871073, 29.642872, 29.468597>,  <32.082928, 29.722904, 29.548046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.871073, 29.642872, 29.468597>,  <31.517981, 29.509483, 29.336182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.871073, 29.642872, 29.468597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011376, 0.719476, -0.694424,
		-0.469744, 0.609222, 0.638896,
		0.882729, 0.333470, 0.331039,
		32.135891, 29.742912, 29.567909>
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
