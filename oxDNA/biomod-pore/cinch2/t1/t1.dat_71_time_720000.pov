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
	<42.546230, 32.528069, 22.613413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943501, 32.486782, 22.635162>,  <43.181862, 32.462009, 22.648212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.943501, 32.486782, 22.635162>,  <42.546230, 32.528069, 22.613413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.943501, 32.486782, 22.635162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104849, -0.994091, 0.028095,
		0.051154, -0.033604, -0.998125,
		0.993171, -0.103216, 0.054375,
		43.241451, 32.455818, 22.651474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.355038, 33.175877, 22.756123>,  <42.546230, 32.528069, 22.613413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.355038, 33.175877, 22.756123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171268, 32.890865, 22.968246>,  <42.061008, 32.719856, 23.095522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.171268, 32.890865, 22.968246>,  <42.355038, 33.175877, 22.756123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.171268, 32.890865, 22.968246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726069, 0.645174, 0.237854,
		-0.511622, -0.275768, -0.813754,
		-0.459421, -0.712533, 0.530312,
		42.033443, 32.677105, 23.127340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.632137, 33.889996, 22.325521>,  <42.355038, 33.175877, 22.756123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.632137, 33.889996, 22.325521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678047, 33.590492, 22.064388>,  <42.705593, 33.410789, 21.907709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678047, 33.590492, 22.064388>,  <42.632137, 33.889996, 22.325521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678047, 33.590492, 22.064388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.993324, -0.094185, -0.066614,
		-0.011610, 0.656119, -0.754568,
		0.114775, -0.748757, -0.652832,
		42.712479, 33.365864, 21.868538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.231899, 34.042061, 21.716928>,  <42.632137, 33.889996, 22.325521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.231899, 34.042061, 21.716928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282547, 33.655144, 21.804855>,  <42.312935, 33.422993, 21.857611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.282547, 33.655144, 21.804855>,  <42.231899, 34.042061, 21.716928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.282547, 33.655144, 21.804855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.991822, -0.127035, 0.012297,
		0.016030, -0.219577, -0.975463,
		0.126618, -0.967289, 0.219818,
		42.320534, 33.364956, 21.870800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.796856, 33.330585, 21.446043>,  <42.231899, 34.042061, 21.716928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.796856, 33.330585, 21.446043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848442, 33.697525, 21.295395>,  <41.879395, 33.917686, 21.205006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.848442, 33.697525, 21.295395>,  <41.796856, 33.330585, 21.446043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.848442, 33.697525, 21.295395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481824, 0.389917, 0.784736,
		0.866725, 0.080258, 0.492286,
		0.128969, 0.917346, -0.376621,
		41.887135, 33.972729, 21.182409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.389912, 33.758308, 21.939898>,  <41.796856, 33.330585, 21.446043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.389912, 33.758308, 21.939898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133194, 33.452103, 21.958218>,  <40.979164, 33.268379, 21.969210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.133194, 33.452103, 21.958218>,  <41.389912, 33.758308, 21.939898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.133194, 33.452103, 21.958218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466845, -0.342616, 0.815273,
		-0.608409, 0.544616, 0.577263,
		-0.641790, -0.765511, 0.045801,
		40.940659, 33.222450, 21.971958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673923, 33.374050, 22.364056>,  <41.389912, 33.758308, 21.939898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673923, 33.374050, 22.364056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352196, 33.137260, 22.343491>,  <41.159161, 32.995186, 22.331152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.352196, 33.137260, 22.343491>,  <41.673923, 33.374050, 22.364056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.352196, 33.137260, 22.343491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399222, -0.602452, 0.691139,
		-0.440111, 0.535368, 0.720890,
		-0.804316, -0.591974, -0.051415,
		41.110901, 32.959667, 22.328066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243828, 33.404728, 23.017727>,  <41.673923, 33.374050, 22.364056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243828, 33.404728, 23.017727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161072, 33.054028, 22.844055>,  <41.111420, 32.843609, 22.739853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.161072, 33.054028, 22.844055>,  <41.243828, 33.404728, 23.017727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.161072, 33.054028, 22.844055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259336, -0.477048, 0.839744,
		-0.943367, 0.061135, 0.326068,
		-0.206888, -0.876748, -0.434177,
		41.099007, 32.791004, 22.713802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.746059, 33.047916, 23.407543>,  <41.243828, 33.404728, 23.017727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.746059, 33.047916, 23.407543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940315, 32.773991, 23.190220>,  <41.056870, 32.609634, 23.059826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.940315, 32.773991, 23.190220>,  <40.746059, 33.047916, 23.407543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.940315, 32.773991, 23.190220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223736, -0.503445, 0.834557,
		-0.845040, -0.526855, -0.091278,
		0.485644, -0.684812, -0.543307,
		41.086010, 32.568546, 23.027227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.578499, 32.382851, 23.665337>,  <40.746059, 33.047916, 23.407543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.578499, 32.382851, 23.665337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920425, 32.280598, 23.484695>,  <41.125580, 32.219246, 23.376310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920425, 32.280598, 23.484695>,  <40.578499, 32.382851, 23.665337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920425, 32.280598, 23.484695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255932, -0.549376, 0.795415,
		-0.451436, -0.795511, -0.404189,
		0.854813, -0.255634, -0.451604,
		41.176868, 32.203907, 23.349215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.497101, 31.641676, 23.728777>,  <40.578499, 32.382851, 23.665337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.497101, 31.641676, 23.728777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877270, 31.719017, 23.631355>,  <41.105370, 31.765423, 23.572903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.877270, 31.719017, 23.631355>,  <40.497101, 31.641676, 23.728777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.877270, 31.719017, 23.631355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310839, -0.567782, 0.762235,
		0.009096, -0.800148, -0.599733,
		0.950419, 0.193354, -0.243553,
		41.162395, 31.777023, 23.558289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.821602, 30.992096, 23.794180>,  <40.497101, 31.641676, 23.728777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.821602, 30.992096, 23.794180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102127, 31.275585, 23.824829>,  <41.270443, 31.445679, 23.843220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102127, 31.275585, 23.824829>,  <40.821602, 30.992096, 23.794180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102127, 31.275585, 23.824829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426336, -0.503154, 0.751714,
		0.571309, -0.494521, -0.655023,
		0.701315, 0.708721, 0.076624,
		41.312523, 31.488201, 23.847816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391582, 30.666052, 23.858234>,  <40.821602, 30.992096, 23.794180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391582, 30.666052, 23.858234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498627, 31.012234, 24.027641>,  <41.562855, 31.219944, 24.129286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.498627, 31.012234, 24.027641>,  <41.391582, 30.666052, 23.858234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498627, 31.012234, 24.027641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587906, -0.494914, 0.639865,
		0.763380, 0.077752, -0.641253,
		0.267614, 0.865457, 0.423518,
		41.578911, 31.271872, 24.154697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.170712, 30.721680, 23.820526>,  <41.391582, 30.666052, 23.858234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.170712, 30.721680, 23.820526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037727, 30.987690, 24.088020>,  <41.957935, 31.147297, 24.248518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.037727, 30.987690, 24.088020>,  <42.170712, 30.721680, 23.820526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.037727, 30.987690, 24.088020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670416, -0.332073, 0.663529,
		0.663333, 0.668931, -0.335442,
		-0.332464, 0.665026, 0.668736,
		41.937988, 31.187199, 24.288641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.767342, 30.829937, 24.184185>,  <42.170712, 30.721680, 23.820526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.767342, 30.829937, 24.184185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471897, 30.944103, 24.428474>,  <42.294628, 31.012604, 24.575048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.471897, 30.944103, 24.428474>,  <42.767342, 30.829937, 24.184185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.471897, 30.944103, 24.428474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550570, -0.267366, 0.790815,
		0.388998, 0.920355, 0.040340,
		-0.738616, 0.285416, 0.610725,
		42.250313, 31.029728, 24.611692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.105545, 31.172716, 24.800081>,  <42.767342, 30.829937, 24.184185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.105545, 31.172716, 24.800081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745525, 31.097408, 24.957291>,  <42.529514, 31.052223, 25.051617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.745525, 31.097408, 24.957291>,  <43.105545, 31.172716, 24.800081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.745525, 31.097408, 24.957291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433007, -0.284582, 0.855288,
		-0.049177, 0.939983, 0.337659,
		-0.900048, -0.188270, 0.393024,
		42.475510, 31.040928, 25.075197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089046, 31.408939, 25.514914>,  <43.105545, 31.172716, 24.800081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089046, 31.408939, 25.514914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810127, 31.130093, 25.448215>,  <42.642776, 30.962784, 25.408195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.810127, 31.130093, 25.448215>,  <43.089046, 31.408939, 25.514914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.810127, 31.130093, 25.448215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292226, -0.488901, 0.821937,
		-0.654510, 0.524405, 0.544624,
		-0.697295, -0.697119, -0.166746,
		42.600937, 30.920958, 25.398191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.937275, 31.190693, 26.164787>,  <43.089046, 31.408939, 25.514914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.937275, 31.190693, 26.164787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806259, 30.882023, 25.946709>,  <42.727650, 30.696821, 25.815861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.806259, 30.882023, 25.946709>,  <42.937275, 31.190693, 26.164787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.806259, 30.882023, 25.946709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308056, -0.632713, 0.710476,
		-0.893208, 0.064756, 0.444956,
		-0.327537, -0.771674, -0.545196,
		42.707996, 30.650520, 25.783150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.654694, 30.762350, 26.683790>,  <42.937275, 31.190693, 26.164787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.654694, 30.762350, 26.683790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690243, 30.533802, 26.357445>,  <42.711575, 30.396673, 26.161636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.690243, 30.533802, 26.357445>,  <42.654694, 30.762350, 26.683790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.690243, 30.533802, 26.357445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177763, -0.796857, 0.577425,
		-0.980052, -0.196350, 0.030747,
		0.088877, -0.571372, -0.815864,
		42.716908, 30.362391, 26.112686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.493252, 30.138124, 26.889084>,  <42.654694, 30.762350, 26.683790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.493252, 30.138124, 26.889084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678780, 30.047016, 26.546623>,  <42.790096, 29.992352, 26.341146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.678780, 30.047016, 26.546623>,  <42.493252, 30.138124, 26.889084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.678780, 30.047016, 26.546623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579177, -0.653317, 0.487576,
		-0.670397, -0.722008, -0.171094,
		0.463812, -0.227776, -0.856152,
		42.817924, 29.978683, 26.289778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.360554, 29.393299, 26.651331>,  <42.493252, 30.138124, 26.889084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.360554, 29.393299, 26.651331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714024, 29.525154, 26.518394>,  <42.926105, 29.604267, 26.438633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.714024, 29.525154, 26.518394>,  <42.360554, 29.393299, 26.651331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.714024, 29.525154, 26.518394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440957, -0.824449, 0.354739,
		-0.157061, -0.460023, -0.873905,
		0.883679, 0.329639, -0.332340,
		42.979126, 29.624046, 26.418692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.574661, 28.955654, 26.146181>,  <42.360554, 29.393299, 26.651331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.574661, 28.955654, 26.146181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924057, 29.127243, 26.238266>,  <43.133694, 29.230196, 26.293516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.924057, 29.127243, 26.238266>,  <42.574661, 28.955654, 26.146181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.924057, 29.127243, 26.238266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362611, -0.888790, 0.280297,
		0.324848, -0.161360, -0.931900,
		0.873491, 0.428971, 0.230210,
		43.186104, 29.255934, 26.307329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970066, 28.404222, 26.050571>,  <42.574661, 28.955654, 26.146181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970066, 28.404222, 26.050571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223148, 28.649792, 26.239372>,  <43.374996, 28.797134, 26.352652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223148, 28.649792, 26.239372>,  <42.970066, 28.404222, 26.050571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223148, 28.649792, 26.239372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541015, -0.786522, 0.297802,
		0.554067, 0.066939, -0.829777,
		0.632703, 0.613924, 0.472001,
		43.412960, 28.833969, 26.380972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.691910, 28.370581, 25.767490>,  <42.970066, 28.404222, 26.050571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.691910, 28.370581, 25.767490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735973, 28.518295, 26.136597>,  <43.762413, 28.606924, 26.358061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.735973, 28.518295, 26.136597>,  <43.691910, 28.370581, 25.767490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.735973, 28.518295, 26.136597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761915, -0.627556, 0.160187,
		0.638240, 0.685422, -0.350494,
		0.110159, 0.369284, 0.922764,
		43.769020, 28.629080, 26.413425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.442230, 28.601337, 25.797337>,  <43.691910, 28.370581, 25.767490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.442230, 28.601337, 25.797337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302055, 28.548195, 26.168182>,  <44.217949, 28.516310, 26.390690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.302055, 28.548195, 26.168182>,  <44.442230, 28.601337, 25.797337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.302055, 28.548195, 26.168182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868175, -0.417453, 0.268336,
		0.351377, 0.898934, 0.261635,
		-0.350437, -0.132858, 0.927115,
		44.196926, 28.508337, 26.446318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041412, 28.716934, 26.215790>,  <44.442230, 28.601337, 25.797337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041412, 28.716934, 26.215790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788975, 28.508350, 26.445503>,  <44.637512, 28.383200, 26.583330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.788975, 28.508350, 26.445503>,  <45.041412, 28.716934, 26.215790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.788975, 28.508350, 26.445503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744497, -0.615062, 0.259660,
		0.217816, 0.591421, 0.776387,
		-0.631095, -0.521459, 0.574282,
		44.599648, 28.351913, 26.617788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.259274, 28.604834, 26.944351>,  <45.041412, 28.716934, 26.215790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.259274, 28.604834, 26.944351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003075, 28.314903, 26.842850>,  <44.849354, 28.140945, 26.781948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.003075, 28.314903, 26.842850>,  <45.259274, 28.604834, 26.944351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.003075, 28.314903, 26.842850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666363, -0.688795, 0.285519,
		-0.381736, 0.013782, 0.924169,
		-0.640498, -0.724825, -0.253754,
		44.810925, 28.097456, 26.766724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.893253, 27.996592, 27.404625>,  <45.259274, 28.604834, 26.944351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.893253, 27.996592, 27.404625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979053, 27.860279, 27.038486>,  <45.030533, 27.778492, 26.818804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.979053, 27.860279, 27.038486>,  <44.893253, 27.996592, 27.404625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.979053, 27.860279, 27.038486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746429, -0.547235, 0.378652,
		-0.629946, -0.764463, 0.136984,
		0.214503, -0.340779, -0.915346,
		45.043404, 27.758045, 26.763884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599976, 28.494572, 27.902468>,  <44.893253, 27.996592, 27.404625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599976, 28.494572, 27.902468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485516, 28.817459, 28.108971>,  <44.416840, 29.011190, 28.232872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.485516, 28.817459, 28.108971>,  <44.599976, 28.494572, 27.902468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.485516, 28.817459, 28.108971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.957575, -0.260142, -0.124004,
		0.034202, -0.529837, 0.847410,
		-0.286148, 0.807217, 0.516255,
		44.399670, 29.059624, 28.263847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.172241, 28.322330, 28.494093>,  <44.599976, 28.494572, 27.902468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.172241, 28.322330, 28.494093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081196, 28.690937, 28.368233>,  <44.026569, 28.912100, 28.292717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.081196, 28.690937, 28.368233>,  <44.172241, 28.322330, 28.494093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081196, 28.690937, 28.368233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968312, -0.248305, -0.026750,
		-0.102779, 0.298589, 0.948831,
		-0.227612, 0.921515, -0.314648,
		44.012913, 28.967392, 28.273838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.685459, 28.744907, 28.944448>,  <44.172241, 28.322330, 28.494093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.685459, 28.744907, 28.944448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633667, 28.877548, 28.570652>,  <43.602592, 28.957132, 28.346375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633667, 28.877548, 28.570652>,  <43.685459, 28.744907, 28.944448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633667, 28.877548, 28.570652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.988151, -0.121476, 0.093813,
		-0.082409, 0.935565, 0.343404,
		-0.129484, 0.331605, -0.934490,
		43.594822, 28.977030, 28.290304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.306767, 28.092150, 28.894897>,  <43.685459, 28.744907, 28.944448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.306767, 28.092150, 28.894897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245998, 27.937244, 29.258644>,  <43.209538, 27.844301, 29.476892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.245998, 27.937244, 29.258644>,  <43.306767, 28.092150, 28.894897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.245998, 27.937244, 29.258644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527397, 0.746361, 0.405953,
		-0.835926, 0.541270, 0.090853,
		-0.151921, -0.387263, 0.909367,
		43.200420, 27.821066, 29.531454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723080, 27.606970, 28.964430>,  <43.306767, 28.092150, 28.894897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723080, 27.606970, 28.964430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510033, 27.416157, 29.244076>,  <42.382202, 27.301670, 29.411863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.510033, 27.416157, 29.244076>,  <42.723080, 27.606970, 28.964430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.510033, 27.416157, 29.244076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797312, 0.559904, -0.225389,
		-0.283919, -0.677458, -0.678558,
		-0.532619, -0.477030, 0.699113,
		42.350246, 27.273048, 29.453810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.145267, 27.058441, 28.736015>,  <42.723080, 27.606970, 28.964430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.145267, 27.058441, 28.736015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068542, 27.273136, 29.064678>,  <42.022507, 27.401953, 29.261875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.068542, 27.273136, 29.064678>,  <42.145267, 27.058441, 28.736015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.068542, 27.273136, 29.064678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824913, 0.365411, -0.431270,
		-0.531722, -0.760517, 0.372673,
		-0.191809, 0.536739, 0.821658,
		42.010998, 27.434158, 29.311176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.444992, 27.065161, 28.845282>,  <42.145267, 27.058441, 28.736015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.444992, 27.065161, 28.845282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578365, 27.375778, 29.059124>,  <41.658390, 27.562149, 29.187429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.578365, 27.375778, 29.059124>,  <41.444992, 27.065161, 28.845282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.578365, 27.375778, 29.059124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792938, 0.537727, -0.286529,
		-0.509975, -0.328372, 0.795045,
		0.333429, 0.776544, 0.534606,
		41.678394, 27.608742, 29.219505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.826515, 27.416801, 29.138987>,  <41.444992, 27.065161, 28.845282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.826515, 27.416801, 29.138987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114601, 27.689850, 29.089493>,  <41.287453, 27.853680, 29.059797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.114601, 27.689850, 29.089493>,  <40.826515, 27.416801, 29.138987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.114601, 27.689850, 29.089493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651476, 0.604185, -0.458847,
		-0.238461, 0.411081, 0.879858,
		0.720219, 0.682623, -0.123735,
		41.330666, 27.894636, 29.052372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.680500, 28.092426, 28.947905>,  <40.826515, 27.416801, 29.138987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.680500, 28.092426, 28.947905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050819, 28.057911, 28.800694>,  <41.273010, 28.037201, 28.712366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050819, 28.057911, 28.800694>,  <40.680500, 28.092426, 28.947905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050819, 28.057911, 28.800694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319957, 0.339564, -0.884491,
		0.201293, 0.936616, 0.286760,
		0.925802, -0.086291, -0.368028,
		41.328560, 28.032024, 28.690285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.768181, 28.672867, 28.639126>,  <40.680500, 28.092426, 28.947905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.768181, 28.672867, 28.639126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050827, 28.439777, 28.478561>,  <41.220413, 28.299925, 28.382223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.050827, 28.439777, 28.478561>,  <40.768181, 28.672867, 28.639126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050827, 28.439777, 28.478561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127041, 0.453594, -0.882107,
		0.696101, 0.674306, 0.246486,
		0.706615, -0.582722, -0.401412,
		41.262810, 28.264961, 28.358137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.210270, 29.090574, 28.255001>,  <40.768181, 28.672867, 28.639126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.210270, 29.090574, 28.255001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252899, 28.729019, 28.089287>,  <41.278477, 28.512087, 27.989859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.252899, 28.729019, 28.089287>,  <41.210270, 29.090574, 28.255001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.252899, 28.729019, 28.089287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279144, 0.372702, -0.884970,
		0.954317, 0.209957, -0.212595,
		0.106571, -0.903887, -0.414284,
		41.284870, 28.457853, 27.965002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.392658, 29.221907, 27.475777>,  <41.210270, 29.090574, 28.255001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.392658, 29.221907, 27.475777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293369, 28.834465, 27.470287>,  <41.233795, 28.601999, 27.466993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.293369, 28.834465, 27.470287>,  <41.392658, 29.221907, 27.475777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.293369, 28.834465, 27.470287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351241, 0.103198, -0.930581,
		0.902782, -0.226169, -0.365830,
		-0.248221, -0.968606, -0.013725,
		41.218903, 28.543882, 27.466169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.673199, 28.890385, 26.826302>,  <41.392658, 29.221907, 27.475777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.673199, 28.890385, 26.826302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359425, 28.677567, 26.953796>,  <41.171162, 28.549875, 27.030293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.359425, 28.677567, 26.953796>,  <41.673199, 28.890385, 26.826302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.359425, 28.677567, 26.953796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405660, 0.051386, -0.912579,
		0.469156, -0.845154, -0.256139,
		-0.784431, -0.532047, 0.318737,
		41.124096, 28.517952, 27.049417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.552990, 28.506618, 26.124550>,  <41.673199, 28.890385, 26.826302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.552990, 28.506618, 26.124550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227821, 28.417850, 26.339920>,  <41.032719, 28.364590, 26.469143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.227821, 28.417850, 26.339920>,  <41.552990, 28.506618, 26.124550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.227821, 28.417850, 26.339920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555259, 0.016567, -0.831513,
		0.175610, -0.974924, -0.136691,
		-0.812927, -0.221921, 0.538426,
		40.983944, 28.351274, 26.501448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.240318, 27.968103, 25.755474>,  <41.552990, 28.506618, 26.124550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.240318, 27.968103, 25.755474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965443, 28.147343, 25.984203>,  <40.800518, 28.254887, 26.121441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.965443, 28.147343, 25.984203>,  <41.240318, 27.968103, 25.755474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.965443, 28.147343, 25.984203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606653, 0.079096, -0.791022,
		-0.399686, -0.890477, 0.217488,
		-0.687185, 0.448100, 0.571824,
		40.759289, 28.281773, 26.155750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.642227, 27.713390, 25.524822>,  <41.240318, 27.968103, 25.755474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.642227, 27.713390, 25.524822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526814, 28.050751, 25.706120>,  <40.457565, 28.253166, 25.814898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.526814, 28.050751, 25.706120>,  <40.642227, 27.713390, 25.524822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526814, 28.050751, 25.706120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646896, 0.177276, -0.741687,
		-0.705887, -0.507200, 0.494442,
		-0.288531, 0.843399, 0.453242,
		40.440254, 28.303770, 25.842093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.925011, 27.666264, 25.468708>,  <40.642227, 27.713390, 25.524822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.925011, 27.666264, 25.468708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033573, 28.044819, 25.538776>,  <40.098709, 28.271952, 25.580818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.033573, 28.044819, 25.538776>,  <39.925011, 27.666264, 25.468708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.033573, 28.044819, 25.538776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.715965, 0.320158, -0.620397,
		-0.643220, 0.042963, 0.764475,
		0.271407, 0.946390, 0.175172,
		40.114994, 28.328735, 25.591328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.199974, 27.977530, 25.493605>,  <39.925011, 27.666264, 25.468708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.199974, 27.977530, 25.493605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460598, 28.278954, 25.458683>,  <39.616970, 28.459808, 25.437731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.460598, 28.278954, 25.458683>,  <39.199974, 27.977530, 25.493605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.460598, 28.278954, 25.458683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679481, 0.528548, -0.508863,
		-0.337315, 0.390874, 0.856409,
		0.651555, 0.753561, -0.087305,
		39.656063, 28.505022, 25.432491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785461, 28.635967, 25.438387>,  <39.199974, 27.977530, 25.493605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785461, 28.635967, 25.438387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146404, 28.749096, 25.308304>,  <39.362968, 28.816973, 25.230253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146404, 28.749096, 25.308304>,  <38.785461, 28.635967, 25.438387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146404, 28.749096, 25.308304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430980, 0.587789, -0.684661,
		-0.002483, 0.757968, 0.652287,
		0.902358, 0.282823, -0.325209,
		39.417110, 28.833942, 25.210741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860085, 29.437300, 25.472536>,  <38.785461, 28.635967, 25.438387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860085, 29.437300, 25.472536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127831, 29.306660, 25.205616>,  <39.288479, 29.228275, 25.045464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.127831, 29.306660, 25.205616>,  <38.860085, 29.437300, 25.472536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.127831, 29.306660, 25.205616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350540, 0.653088, -0.671266,
		0.655040, 0.683234, 0.322665,
		0.669361, -0.326600, -0.667300,
		39.328640, 29.208679, 25.005426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.221893, 30.032372, 25.198542>,  <38.860085, 29.437300, 25.472536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.221893, 30.032372, 25.198542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268921, 29.759899, 24.909496>,  <39.297138, 29.596416, 24.736069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.268921, 29.759899, 24.909496>,  <39.221893, 30.032372, 25.198542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.268921, 29.759899, 24.909496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298099, 0.669895, -0.679984,
		0.947267, 0.295354, -0.124302,
		0.117567, -0.681181, -0.722614,
		39.304192, 29.555546, 24.692713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519779, 30.358025, 24.618135>,  <39.221893, 30.032372, 25.198542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519779, 30.358025, 24.618135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351288, 30.044426, 24.435745>,  <39.250191, 29.856266, 24.326311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351288, 30.044426, 24.435745>,  <39.519779, 30.358025, 24.618135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351288, 30.044426, 24.435745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331498, 0.601058, -0.727213,
		0.844200, -0.155169, -0.513077,
		-0.421230, -0.783997, -0.455976,
		39.224918, 29.809227, 24.298952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.739456, 30.371923, 23.861027>,  <39.519779, 30.358025, 24.618135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.739456, 30.371923, 23.861027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424107, 30.126316, 23.845833>,  <39.234898, 29.978951, 23.836716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.424107, 30.126316, 23.845833>,  <39.739456, 30.371923, 23.861027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424107, 30.126316, 23.845833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306174, 0.445172, -0.841474,
		0.533594, -0.651766, -0.538960,
		-0.788375, -0.614021, -0.037988,
		39.187595, 29.942110, 23.834436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.839527, 30.217249, 23.096750>,  <39.739456, 30.371923, 23.861027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.839527, 30.217249, 23.096750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468399, 30.143269, 23.226334>,  <39.245724, 30.098881, 23.304085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.468399, 30.143269, 23.226334>,  <39.839527, 30.217249, 23.096750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.468399, 30.143269, 23.226334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369066, 0.581474, -0.725037,
		-0.054280, -0.792264, -0.607760,
		-0.927817, -0.184949, 0.323960,
		39.190056, 30.087784, 23.323523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.410557, 30.038006, 22.551962>,  <39.839527, 30.217249, 23.096750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.410557, 30.038006, 22.551962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185429, 30.174065, 22.853302>,  <39.050350, 30.255699, 23.034105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.185429, 30.174065, 22.853302>,  <39.410557, 30.038006, 22.551962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.185429, 30.174065, 22.853302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475439, 0.612332, -0.631671,
		-0.676159, -0.713688, -0.182914,
		-0.562820, 0.340145, 0.753349,
		39.016582, 30.276108, 23.079308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.938633, 30.327311, 22.230913>,  <39.410557, 30.038006, 22.551962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.938633, 30.327311, 22.230913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850044, 30.503662, 22.578838>,  <38.796890, 30.609472, 22.787594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.850044, 30.503662, 22.578838>,  <38.938633, 30.327311, 22.230913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.850044, 30.503662, 22.578838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382846, 0.781040, -0.493360,
		-0.896872, -0.442271, -0.004190,
		-0.221472, 0.440877, 0.869815,
		38.783604, 30.635925, 22.839783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.338749, 30.611488, 22.165585>,  <38.938633, 30.327311, 22.230913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.338749, 30.611488, 22.165585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472744, 30.814987, 22.482811>,  <38.553143, 30.937086, 22.673147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.472744, 30.814987, 22.482811>,  <38.338749, 30.611488, 22.165585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.472744, 30.814987, 22.482811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416705, 0.834904, -0.359573,
		-0.845068, -0.210023, 0.491681,
		0.334988, 0.508749, 0.793068,
		38.573242, 30.967611, 22.720732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.800121, 30.868324, 22.437037>,  <38.338749, 30.611488, 22.165585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.800121, 30.868324, 22.437037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099575, 31.091972, 22.579544>,  <38.279247, 31.226162, 22.665049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.099575, 31.091972, 22.579544>,  <37.800121, 30.868324, 22.437037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099575, 31.091972, 22.579544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447410, 0.822628, -0.350866,
		-0.489254, 0.103272, 0.866005,
		0.748635, 0.559122, 0.356270,
		38.324165, 31.259708, 22.686424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.501579, 31.431347, 22.817495>,  <37.800121, 30.868324, 22.437037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.501579, 31.431347, 22.817495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869095, 31.549862, 22.713154>,  <38.089603, 31.620972, 22.650549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.869095, 31.549862, 22.713154>,  <37.501579, 31.431347, 22.817495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.869095, 31.549862, 22.713154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380881, 0.839013, -0.388570,
		0.103732, 0.456367, 0.883724,
		0.918787, 0.296287, -0.260855,
		38.144730, 31.638748, 22.634897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.513363, 32.153736, 22.993607>,  <37.501579, 31.431347, 22.817495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.513363, 32.153736, 22.993607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774864, 32.037762, 22.714024>,  <37.931767, 31.968178, 22.546274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.774864, 32.037762, 22.714024>,  <37.513363, 32.153736, 22.993607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774864, 32.037762, 22.714024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216390, 0.813482, -0.539835,
		0.725107, 0.504168, 0.469079,
		0.653755, -0.289934, -0.698958,
		37.970989, 31.950781, 22.504335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057526, 32.108341, 23.519186>,  <37.513363, 32.153736, 22.993607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057526, 32.108341, 23.519186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812431, 32.380444, 23.680084>,  <36.665375, 32.543705, 23.776623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.812431, 32.380444, 23.680084>,  <37.057526, 32.108341, 23.519186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.812431, 32.380444, 23.680084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432573, 0.137271, -0.891088,
		-0.661386, -0.720004, 0.210149,
		-0.612739, 0.680258, 0.402243,
		36.628609, 32.584522, 23.800756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.266121, 32.025249, 23.463013>,  <37.057526, 32.108341, 23.519186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.266121, 32.025249, 23.463013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416084, 32.396069, 23.461155>,  <36.506062, 32.618561, 23.460039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416084, 32.396069, 23.461155>,  <36.266121, 32.025249, 23.463013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416084, 32.396069, 23.461155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373293, 0.146373, -0.916094,
		-0.848583, 0.345189, 0.400938,
		0.374912, 0.927049, -0.004647,
		36.528557, 32.674183, 23.459761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.874870, 32.487885, 22.986876>,  <36.266121, 32.025249, 23.463013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.874870, 32.487885, 22.986876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193596, 32.725201, 23.032639>,  <36.384830, 32.867592, 23.060097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193596, 32.725201, 23.032639>,  <35.874870, 32.487885, 22.986876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193596, 32.725201, 23.032639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264019, 0.512193, -0.817284,
		-0.543485, 0.621020, 0.564764,
		0.796818, 0.593289, 0.114409,
		36.432640, 32.903187, 23.066961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454052, 31.952154, 23.406458>,  <35.874870, 32.487885, 22.986876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454052, 31.952154, 23.406458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134308, 31.785328, 23.579468>,  <34.942463, 31.685232, 23.683273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.134308, 31.785328, 23.579468>,  <35.454052, 31.952154, 23.406458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134308, 31.785328, 23.579468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244088, 0.432379, 0.868026,
		-0.549039, 0.799440, -0.243826,
		-0.799361, -0.417065, 0.432527,
		34.894501, 31.660208, 23.709227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.255341, 32.417492, 23.865259>,  <35.454052, 31.952154, 23.406458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.255341, 32.417492, 23.865259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072552, 32.098797, 24.023445>,  <34.962879, 31.907581, 24.118357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.072552, 32.098797, 24.023445>,  <35.255341, 32.417492, 23.865259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.072552, 32.098797, 24.023445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293552, 0.284606, 0.912593,
		-0.839647, 0.533117, 0.103826,
		-0.456969, -0.796735, 0.395466,
		34.935463, 31.859776, 24.142084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694962, 32.907925, 24.325357>,  <35.255341, 32.417492, 23.865259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694962, 32.907925, 24.325357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772346, 32.756947, 24.687595>,  <34.818779, 32.666359, 24.904938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772346, 32.756947, 24.687595>,  <34.694962, 32.907925, 24.325357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772346, 32.756947, 24.687595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689583, 0.604266, 0.399172,
		-0.697887, -0.701710, -0.143377,
		0.193465, -0.377447, 0.905596,
		34.830387, 32.643711, 24.959274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808006, 33.318150, 24.992685>,  <34.694962, 32.907925, 24.325357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808006, 33.318150, 24.992685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647251, 33.400223, 25.349648>,  <34.550797, 33.449467, 25.563826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.647251, 33.400223, 25.349648>,  <34.808006, 33.318150, 24.992685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647251, 33.400223, 25.349648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027697, -0.971403, 0.235818,
		0.915271, 0.119489, 0.384710,
		-0.401886, 0.205182, 0.892406,
		34.526684, 33.461777, 25.617369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.217155, 32.992870, 25.541262>,  <34.808006, 33.318150, 24.992685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.217155, 32.992870, 25.541262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836658, 33.041889, 25.654484>,  <34.608360, 33.071301, 25.722418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836658, 33.041889, 25.654484>,  <35.217155, 32.992870, 25.541262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836658, 33.041889, 25.654484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053311, -0.969201, 0.240434,
		0.303801, 0.213621, 0.928478,
		-0.951243, 0.122542, 0.283055,
		34.551285, 33.078651, 25.739401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.206638, 32.546970, 26.094784>,  <35.217155, 32.992870, 25.541262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.206638, 32.546970, 26.094784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818466, 32.616886, 26.028187>,  <34.585564, 32.658836, 25.988228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818466, 32.616886, 26.028187>,  <35.206638, 32.546970, 26.094784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818466, 32.616886, 26.028187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202064, -0.965525, 0.164108,
		-0.132067, 0.192897, 0.972291,
		-0.970427, 0.174791, -0.166492,
		34.527340, 32.669323, 25.978239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884422, 32.152935, 26.608509>,  <35.206638, 32.546970, 26.094784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884422, 32.152935, 26.608509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598198, 32.205090, 26.334000>,  <34.426464, 32.236382, 26.169294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.598198, 32.205090, 26.334000>,  <34.884422, 32.152935, 26.608509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.598198, 32.205090, 26.334000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300375, -0.944395, 0.133767,
		-0.630671, 0.301858, 0.714938,
		-0.715563, 0.130387, -0.686273,
		34.383530, 32.244205, 26.128119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.289288, 32.006931, 26.913815>,  <34.884422, 32.152935, 26.608509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.289288, 32.006931, 26.913815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218906, 31.946976, 26.524647>,  <34.176678, 31.911003, 26.291145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218906, 31.946976, 26.524647>,  <34.289288, 32.006931, 26.913815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218906, 31.946976, 26.524647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313285, -0.928427, 0.199688,
		-0.933216, 0.339938, 0.116405,
		-0.175956, -0.149884, -0.972921,
		34.166119, 31.902010, 26.232771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629257, 31.878681, 26.929810>,  <34.289288, 32.006931, 26.913815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629257, 31.878681, 26.929810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747082, 31.742722, 26.572552>,  <33.817776, 31.661146, 26.358198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.747082, 31.742722, 26.572552>,  <33.629257, 31.878681, 26.929810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747082, 31.742722, 26.572552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284719, -0.923378, 0.257504,
		-0.912234, 0.178445, -0.368763,
		0.294557, -0.339898, -0.893144,
		33.835449, 31.640753, 26.304609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129623, 31.504391, 26.718811>,  <33.629257, 31.878681, 26.929810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129623, 31.504391, 26.718811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432510, 31.364624, 26.498074>,  <33.614243, 31.280764, 26.365631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.432510, 31.364624, 26.498074>,  <33.129623, 31.504391, 26.718811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.432510, 31.364624, 26.498074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291166, -0.936863, 0.193674,
		-0.584673, 0.014024, -0.811148,
		0.757219, -0.349415, -0.551842,
		33.659676, 31.259800, 26.332521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.902916, 30.916622, 26.415295>,  <33.129623, 31.504391, 26.718811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.902916, 30.916622, 26.415295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297176, 30.855118, 26.387440>,  <33.533733, 30.818216, 26.370726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.297176, 30.855118, 26.387440>,  <32.902916, 30.916622, 26.415295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.297176, 30.855118, 26.387440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130894, -0.956746, 0.259813,
		-0.106575, -0.246970, -0.963145,
		0.985651, -0.153760, -0.069638,
		33.592873, 30.808990, 26.366549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050503, 30.251532, 26.091295>,  <32.902916, 30.916622, 26.415295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050503, 30.251532, 26.091295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378052, 30.356861, 26.295300>,  <33.574581, 30.420059, 26.417702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.378052, 30.356861, 26.295300>,  <33.050503, 30.251532, 26.091295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.378052, 30.356861, 26.295300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206270, -0.964201, 0.166640,
		0.535635, -0.031256, -0.843871,
		0.818870, 0.263324, 0.510013,
		33.623714, 30.435858, 26.448303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.622204, 29.775845, 25.812050>,  <33.050503, 30.251532, 26.091295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.622204, 29.775845, 25.812050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758163, 29.912724, 26.162449>,  <33.839741, 29.994850, 26.372688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.758163, 29.912724, 26.162449>,  <33.622204, 29.775845, 25.812050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.758163, 29.912724, 26.162449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169493, -0.938491, 0.300843,
		0.925062, 0.046219, -0.376993,
		0.339900, 0.342197, 0.875997,
		33.860134, 30.015383, 26.425247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.327023, 29.495165, 25.956879>,  <33.622204, 29.775845, 25.812050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.327023, 29.495165, 25.956879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218941, 29.575581, 26.333511>,  <34.154091, 29.623831, 26.559490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.218941, 29.575581, 26.333511>,  <34.327023, 29.495165, 25.956879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218941, 29.575581, 26.333511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129017, -0.961577, 0.242333,
		0.954121, 0.186958, 0.233880,
		-0.270200, 0.201040, 0.941581,
		34.137882, 29.635893, 26.615986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.808857, 29.154697, 26.405687>,  <34.327023, 29.495165, 25.956879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.808857, 29.154697, 26.405687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497238, 29.231041, 26.644569>,  <34.310265, 29.276848, 26.787899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.497238, 29.231041, 26.644569>,  <34.808857, 29.154697, 26.405687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.497238, 29.231041, 26.644569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064178, -0.923258, 0.378783,
		0.623670, 0.333418, 0.707014,
		-0.779049, 0.190861, 0.597206,
		34.263523, 29.288300, 26.823730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984665, 28.854864, 27.049286>,  <34.808857, 29.154697, 26.405687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984665, 28.854864, 27.049286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593285, 28.929241, 27.085186>,  <34.358456, 28.973867, 27.106726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.593285, 28.929241, 27.085186>,  <34.984665, 28.854864, 27.049286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593285, 28.929241, 27.085186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103992, -0.819349, 0.563784,
		0.178370, 0.542302, 0.821031,
		-0.978453, 0.185943, 0.089753,
		34.299747, 28.985023, 27.112112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937534, 28.930601, 27.706392>,  <34.984665, 28.854864, 27.049286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937534, 28.930601, 27.706392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587410, 28.827820, 27.542534>,  <34.377335, 28.766151, 27.444220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.587410, 28.827820, 27.542534>,  <34.937534, 28.930601, 27.706392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.587410, 28.827820, 27.542534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025678, -0.821242, 0.570002,
		-0.482882, 0.509447, 0.712242,
		-0.875309, -0.256954, -0.409644,
		34.324818, 28.750734, 27.419641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.531158, 28.796505, 28.333982>,  <34.937534, 28.930601, 27.706392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.531158, 28.796505, 28.333982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318687, 28.651955, 28.027451>,  <34.191204, 28.565224, 27.843531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.318687, 28.651955, 28.027451>,  <34.531158, 28.796505, 28.333982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.318687, 28.651955, 28.027451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288836, -0.773061, 0.564757,
		-0.796510, 0.521328, 0.306251,
		-0.531174, -0.361378, -0.766329,
		34.159336, 28.543541, 27.797552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.912586, 28.608240, 28.603382>,  <34.531158, 28.796505, 28.333982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.912586, 28.608240, 28.603382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966923, 28.379356, 28.279869>,  <33.999523, 28.242027, 28.085762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.966923, 28.379356, 28.279869>,  <33.912586, 28.608240, 28.603382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966923, 28.379356, 28.279869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086288, -0.820079, 0.565708,
		-0.986966, -0.007057, -0.160772,
		0.135838, -0.572207, -0.808781,
		34.007675, 28.207695, 28.037235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318256, 28.067867, 28.543871>,  <33.912586, 28.608240, 28.603382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318256, 28.067867, 28.543871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645264, 27.915546, 28.371059>,  <33.841469, 27.824154, 28.267372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.645264, 27.915546, 28.371059>,  <33.318256, 28.067867, 28.543871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.645264, 27.915546, 28.371059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142898, -0.860856, 0.488372,
		-0.557888, -0.337518, -0.758184,
		0.817521, -0.380800, -0.432030,
		33.890518, 27.801306, 28.241449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253563, 27.318802, 28.509542>,  <33.318256, 28.067867, 28.543871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253563, 27.318802, 28.509542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647038, 27.344997, 28.442532>,  <33.883121, 27.360716, 28.402325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.647038, 27.344997, 28.442532>,  <33.253563, 27.318802, 28.509542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.647038, 27.344997, 28.442532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121177, -0.929581, 0.348131,
		-0.132932, -0.362753, -0.922355,
		0.983689, 0.065491, -0.167528,
		33.942146, 27.364645, 28.392273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366077, 26.637403, 28.298632>,  <33.253563, 27.318802, 28.509542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366077, 26.637403, 28.298632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719189, 26.812222, 28.367565>,  <33.931053, 26.917112, 28.408926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.719189, 26.812222, 28.367565>,  <33.366077, 26.637403, 28.298632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.719189, 26.812222, 28.367565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395639, -0.889414, 0.228938,
		0.253334, -0.133918, -0.958065,
		0.882775, 0.437045, 0.172336,
		33.984020, 26.943335, 28.419266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.849236, 26.189983, 27.957382>,  <33.366077, 26.637403, 28.298632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.849236, 26.189983, 27.957382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063900, 26.411530, 28.212013>,  <34.192699, 26.544456, 28.364792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063900, 26.411530, 28.212013>,  <33.849236, 26.189983, 27.957382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063900, 26.411530, 28.212013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442872, -0.827041, 0.346219,
		0.718234, 0.096121, -0.689131,
		0.536660, 0.553863, 0.636578,
		34.224899, 26.577688, 28.402987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565418, 25.935419, 27.841339>,  <33.849236, 26.189983, 27.957382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565418, 25.935419, 27.841339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 26.103199, 28.204441>,  <34.569508, 26.203867, 28.422302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.567974, 26.103199, 28.204441>,  <34.565418, 25.935419, 27.841339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.567974, 26.103199, 28.204441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342233, -0.853874, 0.392143,
		0.939593, 0.308160, -0.149003,
		0.006387, 0.419448, 0.907757,
		34.569889, 26.229034, 28.476768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.258987, 25.771053, 28.130108>,  <34.565418, 25.935419, 27.841339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.258987, 25.771053, 28.130108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016315, 25.874920, 28.430645>,  <34.870712, 25.937241, 28.610968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.016315, 25.874920, 28.430645>,  <35.258987, 25.771053, 28.130108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.016315, 25.874920, 28.430645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275209, -0.818094, 0.504957,
		0.745791, 0.513122, 0.424855,
		-0.606676, 0.259669, 0.751343,
		34.834312, 25.952820, 28.656048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.635368, 25.717525, 28.661669>,  <35.258987, 25.771053, 28.130108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.635368, 25.717525, 28.661669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278236, 25.717701, 28.841824>,  <35.063957, 25.717806, 28.949917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.278236, 25.717701, 28.841824>,  <35.635368, 25.717525, 28.661669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.278236, 25.717701, 28.841824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337347, -0.661901, 0.669391,
		0.298404, 0.749591, 0.590819,
		-0.892834, 0.000438, 0.450386,
		35.010387, 25.717833, 28.976940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749569, 25.797174, 29.336637>,  <35.635368, 25.717525, 28.661669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.749569, 25.797174, 29.336637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385311, 25.632366, 29.324162>,  <35.166756, 25.533482, 29.316675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.385311, 25.632366, 29.324162>,  <35.749569, 25.797174, 29.336637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385311, 25.632366, 29.324162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223409, -0.554460, 0.801662,
		-0.347596, 0.723057, 0.596963,
		-0.910640, -0.412022, -0.031191,
		35.112118, 25.508760, 29.314804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384556, 25.878569, 30.028740>,  <35.749569, 25.797174, 29.336637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384556, 25.878569, 30.028740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229675, 25.563789, 29.836578>,  <35.136749, 25.374922, 29.721281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.229675, 25.563789, 29.836578>,  <35.384556, 25.878569, 30.028740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.229675, 25.563789, 29.836578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126923, -0.561584, 0.817627,
		-0.913218, 0.255610, 0.317327,
		-0.387199, -0.786948, -0.480406,
		35.113514, 25.327705, 29.692457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096245, 25.501766, 30.564089>,  <35.384556, 25.878569, 30.028740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096245, 25.501766, 30.564089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047771, 25.245441, 30.260860>,  <35.018688, 25.091646, 30.078922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.047771, 25.245441, 30.260860>,  <35.096245, 25.501766, 30.564089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.047771, 25.245441, 30.260860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084591, -0.754256, 0.651108,
		-0.989019, 0.143031, 0.037197,
		-0.121185, -0.640812, -0.758073,
		35.011417, 25.053198, 30.033438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612595, 24.986998, 30.670031>,  <35.096245, 25.501766, 30.564089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612595, 24.986998, 30.670031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811523, 24.789246, 30.384861>,  <34.930882, 24.670593, 30.213760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.811523, 24.789246, 30.384861>,  <34.612595, 24.986998, 30.670031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811523, 24.789246, 30.384861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215090, -0.866356, 0.450737,
		-0.840480, -0.070819, -0.537195,
		0.497322, -0.494381, -0.712922,
		34.960720, 24.640932, 30.170984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165001, 24.481276, 30.342314>,  <34.612595, 24.986998, 30.670031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165001, 24.481276, 30.342314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543468, 24.358521, 30.301159>,  <34.770550, 24.284868, 30.276466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.543468, 24.358521, 30.301159>,  <34.165001, 24.481276, 30.342314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543468, 24.358521, 30.301159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226582, -0.854990, 0.466533,
		-0.231138, -0.418107, -0.878499,
		0.946169, -0.306886, -0.102885,
		34.827320, 24.266455, 30.270294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.027187, 23.878222, 30.112745>,  <34.165001, 24.481276, 30.342314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.027187, 23.878222, 30.112745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400547, 23.887745, 30.255966>,  <34.624561, 23.893459, 30.341898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.400547, 23.887745, 30.255966>,  <34.027187, 23.878222, 30.112745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.400547, 23.887745, 30.255966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247575, -0.679555, 0.690588,
		0.259758, -0.733238, -0.628401,
		0.933398, 0.023809, 0.358051,
		34.680565, 23.894888, 30.363382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284580, 23.224705, 30.201893>,  <34.027187, 23.878222, 30.112745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284580, 23.224705, 30.201893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515621, 23.427971, 30.457439>,  <34.654243, 23.549931, 30.610767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.515621, 23.427971, 30.457439>,  <34.284580, 23.224705, 30.201893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.515621, 23.427971, 30.457439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220159, -0.656644, 0.721352,
		0.786072, -0.557303, -0.267400,
		0.577598, 0.508164, 0.638865,
		34.688900, 23.580420, 30.649099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384567, 22.661007, 30.751087>,  <34.284580, 23.224705, 30.201893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.384567, 22.661007, 30.751087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533951, 22.991028, 30.920708>,  <34.623581, 23.189041, 31.022480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.533951, 22.991028, 30.920708>,  <34.384567, 22.661007, 30.751087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533951, 22.991028, 30.920708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261531, -0.344936, 0.901455,
		0.890017, -0.447558, 0.086957,
		0.373459, 0.825052, 0.424049,
		34.645988, 23.238543, 31.047922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745247, 22.410271, 31.345888>,  <34.384567, 22.661007, 30.751087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745247, 22.410271, 31.345888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684978, 22.799976, 31.412945>,  <34.648819, 23.033800, 31.453178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.684978, 22.799976, 31.412945>,  <34.745247, 22.410271, 31.345888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.684978, 22.799976, 31.412945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250479, -0.201667, 0.946885,
		0.956326, 0.100678, 0.274418,
		-0.150671, 0.974266, 0.167642,
		34.639778, 23.092257, 31.463238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.167034, 22.643879, 31.898050>,  <34.745247, 22.410271, 31.345888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.167034, 22.643879, 31.898050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836460, 22.866535, 31.864212>,  <34.638115, 23.000130, 31.843908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.836460, 22.866535, 31.864212>,  <35.167034, 22.643879, 31.898050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.836460, 22.866535, 31.864212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307271, -0.319994, 0.896208,
		0.471797, 0.766650, 0.435494,
		-0.826433, 0.556643, -0.084597,
		34.588531, 23.033527, 31.838833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.981155, 22.921562, 32.549866>,  <35.167034, 22.643879, 31.898050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.981155, 22.921562, 32.549866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635765, 23.003147, 32.365341>,  <34.428532, 23.052097, 32.254627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.635765, 23.003147, 32.365341>,  <34.981155, 22.921562, 32.549866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.635765, 23.003147, 32.365341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494366, -0.160802, 0.854251,
		0.100054, 0.965682, 0.239680,
		-0.863476, 0.203961, -0.461312,
		34.376720, 23.064335, 32.226948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.650780, 23.403925, 33.034733>,  <34.981155, 22.921562, 32.549866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.650780, 23.403925, 33.034733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353977, 23.275948, 32.799084>,  <34.175896, 23.199162, 32.657696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.353977, 23.275948, 32.799084>,  <34.650780, 23.403925, 33.034733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.353977, 23.275948, 32.799084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620048, -0.006586, 0.784537,
		-0.254888, 0.947414, -0.193494,
		-0.742006, -0.319944, -0.589120,
		34.131374, 23.179964, 32.622349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009235, 23.770136, 33.176239>,  <34.650780, 23.403925, 33.034733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009235, 23.770136, 33.176239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907715, 23.419407, 33.012894>,  <33.846802, 23.208969, 32.914886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.907715, 23.419407, 33.012894>,  <34.009235, 23.770136, 33.176239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907715, 23.419407, 33.012894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594722, -0.191494, 0.780792,
		-0.762817, 0.441031, -0.472865,
		-0.253803, -0.876825, -0.408366,
		33.831573, 23.156359, 32.890385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340717, 23.732504, 33.320694>,  <34.009235, 23.770136, 33.176239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340717, 23.732504, 33.320694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430832, 23.351650, 33.238052>,  <33.484901, 23.123138, 33.188469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.430832, 23.351650, 33.238052>,  <33.340717, 23.732504, 33.320694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430832, 23.351650, 33.238052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510154, -0.295943, 0.807564,
		-0.830053, -0.076532, -0.552408,
		0.225286, -0.952135, -0.206605,
		33.498417, 23.066010, 33.176071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.727631, 23.386379, 33.501400>,  <33.340717, 23.732504, 33.320694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.727631, 23.386379, 33.501400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014713, 23.108093, 33.513298>,  <33.186962, 22.941122, 33.520435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014713, 23.108093, 33.513298>,  <32.727631, 23.386379, 33.501400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014713, 23.108093, 33.513298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307073, -0.277868, 0.910217,
		-0.624986, -0.662399, -0.413061,
		0.717704, -0.695713, 0.029742,
		33.230026, 22.899380, 33.522221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364159, 22.755390, 33.796982>,  <32.727631, 23.386379, 33.501400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364159, 22.755390, 33.796982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752678, 22.677353, 33.851406>,  <32.985790, 22.630529, 33.884060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.752678, 22.677353, 33.851406>,  <32.364159, 22.755390, 33.796982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.752678, 22.677353, 33.851406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188457, -0.282241, 0.940651,
		-0.145112, -0.939297, -0.310908,
		0.971302, -0.195092, 0.136060,
		33.044067, 22.618824, 33.892223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.381416, 22.051098, 34.003742>,  <32.364159, 22.755390, 33.796982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.381416, 22.051098, 34.003742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705841, 22.224865, 34.160439>,  <32.900494, 22.329126, 34.254456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.705841, 22.224865, 34.160439>,  <32.381416, 22.051098, 34.003742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.705841, 22.224865, 34.160439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203642, -0.418113, 0.885275,
		0.548374, -0.797785, -0.250648,
		0.811058, 0.434419, 0.391745,
		32.949158, 22.355190, 34.277962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.615971, 21.529814, 34.467178>,  <32.381416, 22.051098, 34.003742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.615971, 21.529814, 34.467178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800800, 21.867725, 34.575130>,  <32.911697, 22.070473, 34.639904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.800800, 21.867725, 34.575130>,  <32.615971, 21.529814, 34.467178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.800800, 21.867725, 34.575130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029854, -0.289331, 0.956763,
		0.886341, -0.450149, -0.108471,
		0.462070, 0.844780, 0.269885,
		32.939423, 22.121159, 34.656097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050575, 21.294762, 35.026146>,  <32.615971, 21.529814, 34.467178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050575, 21.294762, 35.026146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022755, 21.688744, 35.089432>,  <33.006062, 21.925133, 35.127403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.022755, 21.688744, 35.089432>,  <33.050575, 21.294762, 35.026146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022755, 21.688744, 35.089432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172649, -0.144321, 0.974353,
		0.982525, 0.095081, -0.160014,
		-0.069549, 0.984952, 0.158214,
		33.001888, 21.984230, 35.136894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549400, 21.375212, 35.541592>,  <33.050575, 21.294762, 35.026146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549400, 21.375212, 35.541592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447891, 21.762115, 35.540699>,  <33.386986, 21.994259, 35.540161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.447891, 21.762115, 35.540699>,  <33.549400, 21.375212, 35.541592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.447891, 21.762115, 35.540699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068391, -0.015637, 0.997536,
		0.964843, 0.253301, 0.070120,
		-0.253774, 0.967261, -0.002236,
		33.371758, 22.052294, 35.540028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109238, 21.844858, 35.752327>,  <33.549400, 21.375212, 35.541592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109238, 21.844858, 35.752327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730541, 21.933342, 35.845924>,  <33.503323, 21.986431, 35.902084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.730541, 21.933342, 35.845924>,  <34.109238, 21.844858, 35.752327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.730541, 21.933342, 35.845924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209673, -0.128006, 0.969356,
		0.244382, 0.966789, 0.074807,
		-0.946739, 0.221208, 0.233992,
		33.446518, 21.999704, 35.916122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.999687, 22.496651, 36.181355>,  <34.109238, 21.844858, 35.752327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.999687, 22.496651, 36.181355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739449, 22.207790, 36.275349>,  <33.583305, 22.034473, 36.331745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739449, 22.207790, 36.275349>,  <33.999687, 22.496651, 36.181355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739449, 22.207790, 36.275349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368393, -0.029537, 0.929201,
		-0.664083, 0.691104, 0.285252,
		-0.650600, -0.722151, 0.234983,
		33.544270, 21.991144, 36.345844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524849, 22.805239, 36.699081>,  <33.999687, 22.496651, 36.181355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524849, 22.805239, 36.699081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577408, 22.409794, 36.728416>,  <33.608944, 22.172527, 36.746017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.577408, 22.409794, 36.728416>,  <33.524849, 22.805239, 36.699081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.577408, 22.409794, 36.728416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140069, 0.091755, 0.985881,
		-0.981384, -0.119274, 0.150531,
		0.131402, -0.988612, 0.073340,
		33.616829, 22.113211, 36.750420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204456, 22.624014, 37.382851>,  <33.524849, 22.805239, 36.699081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204456, 22.624014, 37.382851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473675, 22.347145, 37.278610>,  <33.635204, 22.181025, 37.216064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.473675, 22.347145, 37.278610>,  <33.204456, 22.624014, 37.382851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473675, 22.347145, 37.278610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409304, 0.055101, 0.910733,
		-0.616022, -0.719628, 0.320393,
		0.673043, -0.692170, -0.260603,
		33.675587, 22.139494, 37.200428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.535122, 22.088436, 37.747108>,  <33.204456, 22.624014, 37.382851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.535122, 22.088436, 37.747108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228165, 21.886223, 37.904861>,  <33.043991, 21.764894, 37.999516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228165, 21.886223, 37.904861>,  <33.535122, 22.088436, 37.747108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228165, 21.886223, 37.904861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596546, 0.337476, -0.728178,
		0.235022, -0.794070, -0.560551,
		-0.767397, -0.505532, 0.394385,
		32.997944, 21.734564, 38.023178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.342850, 21.648922, 37.194046>,  <33.535122, 22.088436, 37.747108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.342850, 21.648922, 37.194046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083103, 21.754620, 37.479282>,  <32.927258, 21.818037, 37.650425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.083103, 21.754620, 37.479282>,  <33.342850, 21.648922, 37.194046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.083103, 21.754620, 37.479282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597177, 0.403400, -0.693288,
		-0.470858, -0.876039, -0.104154,
		-0.649362, 0.264242, 0.713095,
		32.888294, 21.833893, 37.693211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.579586, 21.344810, 37.074802>,  <33.342850, 21.648922, 37.194046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.579586, 21.344810, 37.074802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626076, 21.695511, 37.261478>,  <32.653969, 21.905931, 37.373482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.626076, 21.695511, 37.261478>,  <32.579586, 21.344810, 37.074802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626076, 21.695511, 37.261478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518114, 0.454396, -0.724626,
		-0.847378, -0.157577, 0.507070,
		0.116226, 0.876752, 0.466688,
		32.660942, 21.958536, 37.401485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.043152, 21.776224, 36.975788>,  <32.579586, 21.344810, 37.074802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.043152, 21.776224, 36.975788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 22.062248, 37.076309>,  <32.460644, 22.233864, 37.136623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304085, 22.062248, 37.076309>,  <32.043152, 21.776224, 36.975788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304085, 22.062248, 37.076309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517239, 0.662344, -0.542001,
		-0.554015, 0.223578, 0.801923,
		0.652328, 0.715062, 0.251305,
		32.499783, 22.276768, 37.151699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.762798, 22.368866, 37.361343>,  <32.043152, 21.776224, 36.975788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.762798, 22.368866, 37.361343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066673, 22.484554, 37.128372>,  <32.249001, 22.553967, 36.988590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.066673, 22.484554, 37.128372>,  <31.762798, 22.368866, 37.361343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.066673, 22.484554, 37.128372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609650, 0.628411, -0.483142,
		0.226271, 0.722117, 0.653719,
		0.759689, 0.289219, -0.582430,
		32.294579, 22.571320, 36.953644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723045, 23.066483, 37.311703>,  <31.762798, 22.368866, 37.361343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723045, 23.066483, 37.311703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953287, 22.975281, 36.997585>,  <32.091431, 22.920559, 36.809113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.953287, 22.975281, 36.997585>,  <31.723045, 23.066483, 37.311703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.953287, 22.975281, 36.997585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381994, 0.774144, -0.504759,
		0.723022, 0.590520, 0.358504,
		0.575604, -0.228005, -0.785298,
		32.125969, 22.906879, 36.761997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.047722, 23.685850, 37.152699>,  <31.723045, 23.066483, 37.311703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.047722, 23.685850, 37.152699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088806, 23.473251, 36.816376>,  <32.113457, 23.345692, 36.614582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.088806, 23.473251, 36.816376>,  <32.047722, 23.685850, 37.152699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.088806, 23.473251, 36.816376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265960, 0.799833, -0.538082,
		0.958497, 0.278888, -0.059208,
		0.102708, -0.531497, -0.840811,
		32.119617, 23.313803, 36.564133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.477287, 23.937359, 36.762867>,  <32.047722, 23.685850, 37.152699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.477287, 23.937359, 36.762867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210896, 23.741947, 36.537369>,  <32.051060, 23.624701, 36.402069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.210896, 23.741947, 36.537369>,  <32.477287, 23.937359, 36.762867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.210896, 23.741947, 36.537369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232735, 0.854074, -0.465178,
		0.708735, -0.178595, -0.682494,
		-0.665979, -0.488529, -0.563747,
		32.011101, 23.595388, 36.368244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.568325, 24.119032, 36.127235>,  <32.477287, 23.937359, 36.762867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.568325, 24.119032, 36.127235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204460, 23.964268, 36.066830>,  <31.986139, 23.871408, 36.030586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.204460, 23.964268, 36.066830>,  <32.568325, 24.119032, 36.127235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204460, 23.964268, 36.066830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227333, 0.768115, -0.598597,
		0.347601, -0.510194, -0.786687,
		-0.909667, -0.386913, -0.151014,
		31.931561, 23.848194, 36.021526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.553249, 24.104345, 35.389565>,  <32.568325, 24.119032, 36.127235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.553249, 24.104345, 35.389565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184235, 24.104008, 35.543930>,  <31.962826, 24.103806, 35.636551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.184235, 24.104008, 35.543930>,  <32.553249, 24.104345, 35.389565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.184235, 24.104008, 35.543930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255883, 0.749908, -0.610051,
		-0.288888, -0.661541, -0.692031,
		-0.922534, -0.000842, 0.385916,
		31.907475, 24.103754, 35.659706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.113575, 24.151291, 34.783321>,  <32.553249, 24.104345, 35.389565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.113575, 24.151291, 34.783321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857691, 24.241127, 35.077347>,  <31.704159, 24.295029, 35.253761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.857691, 24.241127, 35.077347>,  <32.113575, 24.151291, 34.783321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.857691, 24.241127, 35.077347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389846, 0.729402, -0.562133,
		-0.662409, -0.646168, -0.379054,
		-0.639715, 0.224589, 0.735068,
		31.665777, 24.308504, 35.297867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475599, 24.144022, 34.537529>,  <32.113575, 24.151291, 34.783321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475599, 24.144022, 34.537529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446562, 24.378460, 34.860321>,  <31.429138, 24.519123, 35.053997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.446562, 24.378460, 34.860321>,  <31.475599, 24.144022, 34.537529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.446562, 24.378460, 34.860321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325277, 0.750964, -0.574672,
		-0.942828, -0.304212, 0.136127,
		-0.072595, 0.586095, 0.806983,
		31.424784, 24.554289, 35.102417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.909006, 24.471621, 34.380795>,  <31.475599, 24.144022, 34.537529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.909006, 24.471621, 34.380795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080564, 24.702011, 34.659161>,  <31.183500, 24.840244, 34.826180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080564, 24.702011, 34.659161>,  <30.909006, 24.471621, 34.380795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080564, 24.702011, 34.659161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317603, 0.817333, -0.480723,
		-0.845680, -0.014844, 0.533484,
		0.428898, 0.575974, 0.695917,
		31.209234, 24.874804, 34.867935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.448563, 24.950626, 34.483620>,  <30.909006, 24.471621, 34.380795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.448563, 24.950626, 34.483620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768679, 25.109959, 34.662895>,  <30.960749, 25.205557, 34.770458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.768679, 25.109959, 34.662895>,  <30.448563, 24.950626, 34.483620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.768679, 25.109959, 34.662895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152876, 0.858302, -0.489844,
		-0.579799, 0.323500, 0.747784,
		0.800289, 0.398329, 0.448187,
		31.008766, 25.229458, 34.797352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.249119, 25.538666, 34.769558>,  <30.448563, 24.950626, 34.483620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.249119, 25.538666, 34.769558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646296, 25.571190, 34.735012>,  <30.884602, 25.590704, 34.714287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.646296, 25.571190, 34.735012>,  <30.249119, 25.538666, 34.769558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.646296, 25.571190, 34.735012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110078, 0.902883, -0.415555,
		0.044184, 0.422127, 0.905459,
		0.992940, 0.081311, -0.086360,
		30.944178, 25.595583, 34.709103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.315546, 26.275732, 34.731037>,  <30.249119, 25.538666, 34.769558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.315546, 26.275732, 34.731037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661686, 26.114231, 34.612270>,  <30.869370, 26.017330, 34.541012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.661686, 26.114231, 34.612270>,  <30.315546, 26.275732, 34.731037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.661686, 26.114231, 34.612270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155956, 0.779964, -0.606081,
		0.476289, 0.478165, 0.737907,
		0.865348, -0.403750, -0.296916,
		30.921289, 25.993107, 34.523197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.837824, 26.765827, 34.831047>,  <30.315546, 26.275732, 34.731037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.837824, 26.765827, 34.831047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973196, 26.512215, 34.552917>,  <31.054419, 26.360048, 34.386040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.973196, 26.512215, 34.552917>,  <30.837824, 26.765827, 34.831047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.973196, 26.512215, 34.552917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271158, 0.773289, -0.573147,
		0.901076, 0.005429, 0.433628,
		0.338431, -0.634030, -0.695320,
		31.074726, 26.322006, 34.344322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.218519, 27.106379, 34.392792>,  <30.837824, 26.765827, 34.831047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.218519, 27.106379, 34.392792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179356, 26.778553, 34.166969>,  <31.155857, 26.581858, 34.031475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.179356, 26.778553, 34.166969>,  <31.218519, 27.106379, 34.392792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.179356, 26.778553, 34.166969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148794, 0.548855, -0.822568,
		0.984010, -0.164539, 0.068210,
		-0.097907, -0.819564, -0.564561,
		31.149984, 26.532684, 33.997601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820337, 27.003538, 33.958073>,  <31.218519, 27.106379, 34.392792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820337, 27.003538, 33.958073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527025, 26.808907, 33.768108>,  <31.351038, 26.692127, 33.654129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.527025, 26.808907, 33.768108>,  <31.820337, 27.003538, 33.958073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.527025, 26.808907, 33.768108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209935, 0.502324, -0.838807,
		0.646709, -0.714779, -0.266192,
		-0.733277, -0.486581, -0.474915,
		31.307041, 26.662933, 33.625633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.081032, 26.662151, 33.325695>,  <31.820337, 27.003538, 33.958073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.081032, 26.662151, 33.325695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686317, 26.701111, 33.273899>,  <31.449490, 26.724485, 33.242821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.686317, 26.701111, 33.273899>,  <32.081032, 26.662151, 33.325695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.686317, 26.701111, 33.273899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161651, 0.537330, -0.827735,
		-0.011042, -0.837730, -0.545974,
		-0.986787, 0.097397, -0.129486,
		31.390282, 26.730330, 33.235054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.933002, 26.568424, 32.635796>,  <32.081032, 26.662151, 33.325695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.933002, 26.568424, 32.635796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594978, 26.750965, 32.747234>,  <31.392164, 26.860489, 32.814098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.594978, 26.750965, 32.747234>,  <31.933002, 26.568424, 32.635796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.594978, 26.750965, 32.747234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090497, 0.635630, -0.766671,
		-0.526959, -0.622670, -0.578443,
		-0.845059, 0.456352, 0.278601,
		31.341461, 26.887871, 32.830814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.529131, 26.601326, 32.056782>,  <31.933002, 26.568424, 32.635796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.529131, 26.601326, 32.056782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432877, 26.889359, 32.317112>,  <31.375124, 27.062178, 32.473309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.432877, 26.889359, 32.317112>,  <31.529131, 26.601326, 32.056782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.432877, 26.889359, 32.317112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162434, 0.690949, -0.704418,
		-0.956927, -0.063793, -0.283234,
		-0.240637, 0.720083, 0.650825,
		31.360685, 27.105383, 32.512360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.042110, 27.062767, 31.684946>,  <31.529131, 26.601326, 32.056782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.042110, 27.062767, 31.684946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189579, 27.285267, 31.982849>,  <31.278061, 27.418768, 32.161591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189579, 27.285267, 31.982849>,  <31.042110, 27.062767, 31.684946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189579, 27.285267, 31.982849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100440, 0.772666, -0.626816,
		-0.924117, 0.305894, 0.228992,
		0.368674, 0.556252, 0.744758,
		31.300180, 27.452143, 32.206276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880177, 27.816830, 31.525160>,  <31.042110, 27.062767, 31.684946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880177, 27.816830, 31.525160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159431, 27.851925, 31.809387>,  <31.326984, 27.872982, 31.979923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.159431, 27.851925, 31.809387>,  <30.880177, 27.816830, 31.525160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.159431, 27.851925, 31.809387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364152, 0.810989, -0.457919,
		-0.616442, 0.578445, 0.534229,
		0.698135, 0.087740, 0.710570,
		31.368872, 27.878246, 32.022556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.910519, 28.550739, 31.663502>,  <30.880177, 27.816830, 31.525160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.910519, 28.550739, 31.663502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262800, 28.419758, 31.800400>,  <31.474169, 28.341169, 31.882540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262800, 28.419758, 31.800400>,  <30.910519, 28.550739, 31.663502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262800, 28.419758, 31.800400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413545, 0.883878, -0.218496,
		-0.230957, 0.333965, 0.913853,
		0.880704, -0.327456, 0.342247,
		31.527012, 28.321522, 31.903074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.063757, 29.111513, 31.995731>,  <30.910519, 28.550739, 31.663502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.063757, 29.111513, 31.995731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407768, 28.912495, 31.950474>,  <31.614176, 28.793083, 31.923319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.407768, 28.912495, 31.950474>,  <31.063757, 29.111513, 31.995731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.407768, 28.912495, 31.950474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475680, 0.862033, -0.175006,
		0.184607, 0.096689, 0.978045,
		0.860028, -0.497544, -0.113144,
		31.665777, 28.763231, 31.916531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.567444, 29.383408, 32.450035>,  <31.063757, 29.111513, 31.995731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.567444, 29.383408, 32.450035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780111, 29.236557, 32.144737>,  <31.907713, 29.148447, 31.961559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.780111, 29.236557, 32.144737>,  <31.567444, 29.383408, 32.450035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.780111, 29.236557, 32.144737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512111, 0.857121, -0.055550,
		0.674588, -0.361332, 0.643716,
		0.531671, -0.367128, -0.763245,
		31.939613, 29.126419, 31.915764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.169724, 29.798553, 32.548950>,  <31.567444, 29.383408, 32.450035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.169724, 29.798553, 32.548950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201118, 29.610676, 32.197216>,  <32.219955, 29.497950, 31.986176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.201118, 29.610676, 32.197216>,  <32.169724, 29.798553, 32.548950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.201118, 29.610676, 32.197216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712706, 0.643183, -0.279938,
		0.697058, -0.604733, 0.385238,
		0.078491, -0.469695, -0.879333,
		32.224667, 29.469767, 31.933416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.876606, 29.918276, 32.390526>,  <32.169724, 29.798553, 32.548950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.876606, 29.918276, 32.390526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664089, 29.823307, 32.065231>,  <32.536579, 29.766325, 31.870054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664089, 29.823307, 32.065231>,  <32.876606, 29.918276, 32.390526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664089, 29.823307, 32.065231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349477, 0.813026, -0.465676,
		0.771746, -0.531620, -0.348982,
		-0.531294, -0.237422, -0.813239,
		32.504700, 29.752081, 31.821260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295990, 30.036211, 31.860592>,  <32.876606, 29.918276, 32.390526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295990, 30.036211, 31.860592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938320, 30.033073, 31.681530>,  <32.723717, 30.031191, 31.574093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938320, 30.033073, 31.681530>,  <33.295990, 30.036211, 31.860592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938320, 30.033073, 31.681530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284663, 0.761774, -0.581951,
		0.345574, -0.647795, -0.678926,
		-0.894173, -0.007842, -0.447652,
		32.670067, 30.030720, 31.547234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.434666, 30.363115, 31.205650>,  <33.295990, 30.036211, 31.860592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.434666, 30.363115, 31.205650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036144, 30.372448, 31.238720>,  <32.797031, 30.378048, 31.258562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036144, 30.372448, 31.238720>,  <33.434666, 30.363115, 31.205650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036144, 30.372448, 31.238720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028782, 0.816123, -0.577161,
		-0.080937, -0.577407, -0.812435,
		-0.996304, 0.023331, 0.082674,
		32.737251, 30.379448, 31.263521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.203979, 30.304798, 30.495945>,  <33.434666, 30.363115, 31.205650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.203979, 30.304798, 30.495945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919991, 30.476627, 30.719162>,  <32.749599, 30.579725, 30.853092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.919991, 30.476627, 30.719162>,  <33.203979, 30.304798, 30.495945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.919991, 30.476627, 30.719162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125843, 0.702268, -0.700702,
		-0.692897, -0.567703, -0.444530,
		-0.709970, 0.429574, 0.558041,
		32.707001, 30.605499, 30.886574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681293, 30.414423, 30.008318>,  <33.203979, 30.304798, 30.495945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.681293, 30.414423, 30.008318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638065, 30.638115, 30.337093>,  <32.612129, 30.772329, 30.534359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.638065, 30.638115, 30.337093>,  <32.681293, 30.414423, 30.008318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.638065, 30.638115, 30.337093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189249, 0.800088, -0.569248,
		-0.975963, -0.217073, 0.019365,
		-0.108075, 0.559230, 0.821938,
		32.605644, 30.805883, 30.583675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168884, 30.839005, 29.837284>,  <32.681293, 30.414423, 30.008318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168884, 30.839005, 29.837284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345219, 31.030682, 30.140873>,  <32.451019, 31.145687, 30.323027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.345219, 31.030682, 30.140873>,  <32.168884, 30.839005, 29.837284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345219, 31.030682, 30.140873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219722, 0.877454, -0.426376,
		-0.870280, 0.021197, 0.492100,
		0.440833, 0.479192, 0.758974,
		32.477470, 31.174438, 30.368565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.773987, 31.389156, 29.807564>,  <32.168884, 30.839005, 29.837284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.773987, 31.389156, 29.807564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091240, 31.499485, 30.024769>,  <32.281593, 31.565681, 30.155092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.091240, 31.499485, 30.024769>,  <31.773987, 31.389156, 29.807564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.091240, 31.499485, 30.024769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002804, 0.889913, -0.456121,
		-0.609044, 0.363287, 0.705045,
		0.793132, 0.275821, 0.543015,
		32.329178, 31.582232, 30.187674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.656073, 32.045471, 30.212343>,  <31.773987, 31.389156, 29.807564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.656073, 32.045471, 30.212343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055176, 32.026890, 30.231621>,  <32.294636, 32.015739, 30.243187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055176, 32.026890, 30.231621>,  <31.656073, 32.045471, 30.212343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055176, 32.026890, 30.231621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056132, 0.972914, -0.224250,
		-0.036473, 0.226453, 0.973339,
		0.997757, -0.046457, 0.048196,
		32.354504, 32.012951, 30.246080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.941637, 32.640095, 30.549425>,  <31.656073, 32.045471, 30.212343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.941637, 32.640095, 30.549425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217442, 32.507870, 30.291649>,  <32.382923, 32.428535, 30.136984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.217442, 32.507870, 30.291649>,  <31.941637, 32.640095, 30.549425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217442, 32.507870, 30.291649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095993, 0.923631, -0.371068,
		0.717885, 0.193994, 0.668586,
		0.689512, -0.330564, -0.644439,
		32.424294, 32.408699, 30.098318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245869, 33.213207, 30.481699>,  <31.941637, 32.640095, 30.549425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245869, 33.213207, 30.481699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403572, 32.992897, 30.187431>,  <32.498196, 32.860710, 30.010872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403572, 32.992897, 30.187431>,  <32.245869, 33.213207, 30.481699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403572, 32.992897, 30.187431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205246, 0.833062, -0.513694,
		0.895785, 0.051537, 0.441489,
		0.394262, -0.550774, -0.735667,
		32.521851, 32.827663, 29.966732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.752235, 33.540031, 30.121544>,  <32.245869, 33.213207, 30.481699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.752235, 33.540031, 30.121544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676762, 33.271870, 29.834503>,  <32.631477, 33.110973, 29.662279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.676762, 33.271870, 29.834503>,  <32.752235, 33.540031, 30.121544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.676762, 33.271870, 29.834503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051311, 0.722998, -0.688942,
		0.980696, -0.166814, -0.102020,
		-0.188686, -0.670408, -0.717601,
		32.620155, 33.070747, 29.619223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.253765, 33.547916, 29.525343>,  <32.752235, 33.540031, 30.121544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.253765, 33.547916, 29.525343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908604, 33.405006, 29.382374>,  <32.701508, 33.319260, 29.296593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.908604, 33.405006, 29.382374>,  <33.253765, 33.547916, 29.525343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.908604, 33.405006, 29.382374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047633, 0.646603, -0.761338,
		0.503119, -0.673987, -0.540938,
		-0.862903, -0.357277, -0.357422,
		32.649734, 33.297825, 29.275146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.442730, 33.769100, 28.779339>,  <33.253765, 33.547916, 29.525343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.442730, 33.769100, 28.779339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067951, 33.631264, 28.802608>,  <32.843082, 33.548561, 28.816570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.067951, 33.631264, 28.802608>,  <33.442730, 33.769100, 28.779339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.067951, 33.631264, 28.802608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212915, 0.430877, -0.876933,
		0.277115, -0.834029, -0.477078,
		-0.936949, -0.344589, 0.058174,
		32.786865, 33.527885, 28.820061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.335552, 33.333984, 28.223349>,  <33.442730, 33.769100, 28.779339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.335552, 33.333984, 28.223349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995789, 33.499943, 28.353806>,  <32.791931, 33.599518, 28.432079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.995789, 33.499943, 28.353806>,  <33.335552, 33.333984, 28.223349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.995789, 33.499943, 28.353806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153762, 0.396624, -0.905012,
		-0.504845, -0.818870, -0.273099,
		-0.849405, 0.414899, 0.326144,
		32.740967, 33.624413, 28.451649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.879654, 33.104488, 27.692179>,  <33.335552, 33.333984, 28.223349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.879654, 33.104488, 27.692179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712254, 33.410740, 27.887592>,  <32.611813, 33.594490, 28.004841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712254, 33.410740, 27.887592>,  <32.879654, 33.104488, 27.692179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712254, 33.410740, 27.887592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144705, 0.474825, -0.868102,
		-0.896617, -0.433991, -0.087922,
		-0.418496, 0.765632, 0.488536,
		32.586704, 33.640430, 28.034153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.266697, 33.223148, 27.328421>,  <32.879654, 33.104488, 27.692179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.266697, 33.223148, 27.328421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341881, 33.554607, 27.539326>,  <32.386990, 33.753483, 27.665869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.341881, 33.554607, 27.539326>,  <32.266697, 33.223148, 27.328421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341881, 33.554607, 27.539326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040598, 0.542929, -0.838797,
		-0.981338, 0.136252, 0.135689,
		0.187957, 0.828652, 0.527265,
		32.398270, 33.803204, 27.697506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.745453, 33.705757, 27.028460>,  <32.266697, 33.223148, 27.328421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.745453, 33.705757, 27.028460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038231, 33.915272, 27.202770>,  <32.213898, 34.040981, 27.307358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.038231, 33.915272, 27.202770>,  <31.745453, 33.705757, 27.028460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.038231, 33.915272, 27.202770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024751, 0.618706, -0.785233,
		-0.680914, 0.585533, 0.439894,
		0.731945, 0.523789, 0.435778,
		32.257812, 34.072407, 27.333504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.307840, 33.146866, 26.846195>,  <31.745453, 33.705757, 27.028460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.307840, 33.146866, 26.846195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950937, 33.324818, 26.815327>,  <30.736795, 33.431587, 26.796806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950937, 33.324818, 26.815327>,  <31.307840, 33.146866, 26.846195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950937, 33.324818, 26.815327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376045, -0.637568, 0.672382,
		0.249929, 0.628959, 0.736170,
		-0.892259, 0.444880, -0.077170,
		30.683260, 33.458282, 26.792175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.066345, 33.202610, 27.513617>,  <31.307840, 33.146866, 26.846195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.066345, 33.202610, 27.513617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725956, 33.239735, 27.306839>,  <30.521723, 33.262009, 27.182772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.725956, 33.239735, 27.306839>,  <31.066345, 33.202610, 27.513617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.725956, 33.239735, 27.306839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492750, -0.481757, 0.724644,
		-0.181785, 0.871376, 0.455695,
		-0.850971, 0.092814, -0.516946,
		30.470665, 33.267578, 27.151754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.576530, 33.301609, 28.001476>,  <31.066345, 33.202610, 27.513617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.576530, 33.301609, 28.001476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371481, 33.161709, 27.687817>,  <30.248451, 33.077766, 27.499620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.371481, 33.161709, 27.687817>,  <30.576530, 33.301609, 28.001476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371481, 33.161709, 27.687817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554765, -0.562125, 0.613393,
		-0.655325, 0.749459, 0.094129,
		-0.512625, -0.349752, -0.784148,
		30.217693, 33.056782, 27.452572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137186, 33.021660, 28.364561>,  <30.576530, 33.301609, 28.001476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137186, 33.021660, 28.364561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033894, 32.863342, 28.012047>,  <29.971918, 32.768353, 27.800539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.033894, 32.863342, 28.012047>,  <30.137186, 33.021660, 28.364561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033894, 32.863342, 28.012047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629898, -0.622678, 0.464221,
		-0.732492, 0.674997, -0.088512,
		-0.258233, -0.395792, -0.881286,
		29.956423, 32.744606, 27.747662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.327833, 32.860012, 28.363390>,  <30.137186, 33.021660, 28.364561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.327833, 32.860012, 28.363390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526079, 32.642311, 28.092640>,  <29.645027, 32.511692, 27.930189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.526079, 32.642311, 28.092640>,  <29.327833, 32.860012, 28.363390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.526079, 32.642311, 28.092640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347937, -0.838468, 0.419417,
		-0.795805, 0.027640, -0.604922,
		0.495615, -0.544249, -0.676874,
		29.674763, 32.479038, 27.889578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.770388, 32.397236, 28.132992>,  <29.327833, 32.860012, 28.363390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.770388, 32.397236, 28.132992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121029, 32.242878, 28.017990>,  <29.331413, 32.150265, 27.948990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121029, 32.242878, 28.017990>,  <28.770388, 32.397236, 28.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121029, 32.242878, 28.017990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244537, -0.871773, 0.424515,
		-0.414454, -0.301826, -0.858562,
		0.876601, -0.385892, -0.287502,
		29.384008, 32.127110, 27.931740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.602888, 31.705988, 27.957514>,  <28.770388, 32.397236, 28.132992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.602888, 31.705988, 27.957514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997831, 31.679523, 28.015133>,  <29.234797, 31.663645, 28.049704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.997831, 31.679523, 28.015133>,  <28.602888, 31.705988, 27.957514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997831, 31.679523, 28.015133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118565, -0.911384, 0.394107,
		0.105208, -0.406203, -0.907706,
		0.987357, -0.066159, 0.144046,
		29.294039, 31.659676, 28.058346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.835287, 30.968086, 27.655083>,  <28.602888, 31.705988, 27.957514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.835287, 30.968086, 27.655083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102547, 31.112957, 27.915054>,  <29.262903, 31.199879, 28.071037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.102547, 31.112957, 27.915054>,  <28.835287, 30.968086, 27.655083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.102547, 31.112957, 27.915054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133402, -0.917686, 0.374242,
		0.731970, -0.163348, -0.661466,
		0.668149, 0.362175, 0.649928,
		29.302992, 31.221609, 28.110033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.455824, 30.415960, 27.746267>,  <28.835287, 30.968086, 27.655083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.455824, 30.415960, 27.746267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455061, 30.652905, 28.068535>,  <29.454603, 30.795071, 28.261896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.455061, 30.652905, 28.068535>,  <29.455824, 30.415960, 27.746267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.455061, 30.652905, 28.068535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105738, -0.801037, 0.589203,
		0.994392, 0.086314, -0.061108,
		-0.001906, 0.592360, 0.805671,
		29.454489, 30.830612, 28.310236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.003977, 30.183905, 28.202518>,  <29.455824, 30.415960, 27.746267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.003977, 30.183905, 28.202518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740591, 30.379135, 28.431675>,  <29.582560, 30.496273, 28.569170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.740591, 30.379135, 28.431675>,  <30.003977, 30.183905, 28.202518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740591, 30.379135, 28.431675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158989, -0.653820, 0.739758,
		0.735627, 0.578188, 0.352919,
		-0.658464, 0.488076, 0.572894,
		29.543053, 30.525558, 28.603542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.050795, 29.879009, 28.812450>,  <30.003977, 30.183905, 28.202518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.050795, 29.879009, 28.812450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730143, 30.088017, 28.928631>,  <29.537750, 30.213421, 28.998339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.730143, 30.088017, 28.928631>,  <30.050795, 29.879009, 28.812450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.730143, 30.088017, 28.928631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032731, -0.523482, 0.851408,
		0.596922, 0.673008, 0.436742,
		-0.801631, 0.522519, 0.290450,
		29.489653, 30.244772, 29.015766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.179829, 30.095222, 29.547194>,  <30.050795, 29.879009, 28.812450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.179829, 30.095222, 29.547194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786276, 30.141518, 29.492676>,  <29.550144, 30.169294, 29.459965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.786276, 30.141518, 29.492676>,  <30.179829, 30.095222, 29.547194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.786276, 30.141518, 29.492676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172707, -0.417705, 0.892017,
		0.046310, 0.901181, 0.430963,
		-0.983884, 0.115740, -0.136296,
		29.491110, 30.176239, 29.451788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.972748, 30.310862, 30.150105>,  <30.179829, 30.095222, 29.547194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.972748, 30.310862, 30.150105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642279, 30.177650, 29.968323>,  <29.443996, 30.097723, 29.859253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642279, 30.177650, 29.968323>,  <29.972748, 30.310862, 30.150105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642279, 30.177650, 29.968323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330798, -0.366219, 0.869745,
		-0.456080, 0.868893, 0.192395,
		-0.826174, -0.333029, -0.454454,
		29.394426, 30.077742, 29.831987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524071, 30.497763, 30.557503>,  <29.972748, 30.310862, 30.150105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524071, 30.497763, 30.557503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315907, 30.211864, 30.370605>,  <29.191008, 30.040325, 30.258467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.315907, 30.211864, 30.370605>,  <29.524071, 30.497763, 30.557503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.315907, 30.211864, 30.370605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304151, -0.356140, 0.883548,
		-0.797915, 0.601918, -0.032052,
		-0.520408, -0.714744, -0.467243,
		29.159784, 29.997440, 30.230433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.843351, 30.398243, 30.922739>,  <29.524071, 30.497763, 30.557503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.843351, 30.398243, 30.922739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880220, 30.054447, 30.721630>,  <28.902342, 29.848169, 30.600964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.880220, 30.054447, 30.721630>,  <28.843351, 30.398243, 30.922739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.880220, 30.054447, 30.721630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269971, -0.507582, 0.818215,
		-0.958447, 0.060319, -0.278822,
		0.092172, -0.859490, -0.502775,
		28.907871, 29.796600, 30.570797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320845, 30.031796, 31.076736>,  <28.843351, 30.398243, 30.922739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320845, 30.031796, 31.076736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568930, 29.748428, 30.941990>,  <28.717781, 29.578407, 30.861141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.568930, 29.748428, 30.941990>,  <28.320845, 30.031796, 31.076736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.568930, 29.748428, 30.941990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208515, -0.562879, 0.799806,
		-0.756212, -0.425808, -0.496821,
		0.620213, -0.708417, -0.336868,
		28.754993, 29.535904, 30.840929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.962307, 29.395557, 31.156158>,  <28.320845, 30.031796, 31.076736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.962307, 29.395557, 31.156158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354361, 29.316597, 31.163887>,  <28.589592, 29.269220, 31.168524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.354361, 29.316597, 31.163887>,  <27.962307, 29.395557, 31.156158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.354361, 29.316597, 31.163887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159103, -0.724311, 0.670865,
		-0.118437, -0.660610, -0.741328,
		0.980132, -0.197403, 0.019320,
		28.648399, 29.257376, 31.169683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076752, 28.657564, 31.022171>,  <27.962307, 29.395557, 31.156158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076752, 28.657564, 31.022171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403519, 28.771576, 31.222733>,  <28.599579, 28.839983, 31.343069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.403519, 28.771576, 31.222733>,  <28.076752, 28.657564, 31.022171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.403519, 28.771576, 31.222733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094669, -0.791295, 0.604061,
		0.568936, -0.540934, -0.619437,
		0.816915, 0.285031, 0.501406,
		28.648594, 28.857084, 31.373154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317730, 28.030178, 31.265900>,  <28.076752, 28.657564, 31.022171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317730, 28.030178, 31.265900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519159, 28.314468, 31.462383>,  <28.640017, 28.485043, 31.580273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519159, 28.314468, 31.462383>,  <28.317730, 28.030178, 31.265900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519159, 28.314468, 31.462383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245156, -0.662740, 0.707584,
		0.828441, -0.235896, -0.507975,
		0.503571, 0.710724, 0.491210,
		28.670231, 28.527685, 31.609747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.000689, 27.747437, 31.444290>,  <28.317730, 28.030178, 31.265900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.000689, 27.747437, 31.444290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913271, 28.038113, 31.704800>,  <28.860821, 28.212519, 31.861105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.913271, 28.038113, 31.704800>,  <29.000689, 27.747437, 31.444290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.913271, 28.038113, 31.704800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073188, -0.653323, 0.753534,
		0.973079, 0.212345, 0.089594,
		-0.218543, 0.726691, 0.651276,
		28.847708, 28.256121, 31.900183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363865, 27.637682, 31.999220>,  <29.000689, 27.747437, 31.444290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363865, 27.637682, 31.999220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106853, 27.887222, 32.177193>,  <28.952646, 28.036947, 32.283978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.106853, 27.887222, 32.177193>,  <29.363865, 27.637682, 31.999220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106853, 27.887222, 32.177193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044281, -0.609911, 0.791232,
		0.764979, 0.488689, 0.419511,
		-0.642531, 0.623852, 0.444930,
		28.914095, 28.074377, 32.310673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687447, 27.724579, 32.647305>,  <29.363865, 27.637682, 31.999220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687447, 27.724579, 32.647305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298620, 27.817593, 32.660061>,  <29.065325, 27.873400, 32.667713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.298620, 27.817593, 32.660061>,  <29.687447, 27.724579, 32.647305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.298620, 27.817593, 32.660061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133679, -0.660179, 0.739117,
		0.192919, 0.714207, 0.672822,
		-0.972066, 0.232532, 0.031887,
		29.007000, 27.887352, 32.669628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.409063, 27.779173, 33.359230>,  <29.687447, 27.724579, 32.647305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.409063, 27.779173, 33.359230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071037, 27.725079, 33.152317>,  <28.868221, 27.692621, 33.028172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.071037, 27.725079, 33.152317>,  <29.409063, 27.779173, 33.359230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.071037, 27.725079, 33.152317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215389, -0.799397, 0.560867,
		-0.489360, 0.585386, 0.646414,
		-0.845065, -0.135236, -0.517278,
		28.817518, 27.684507, 32.997135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.889257, 27.835800, 33.850311>,  <29.409063, 27.779173, 33.359230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.889257, 27.835800, 33.850311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765671, 27.620525, 33.536652>,  <28.691519, 27.491362, 33.348454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.765671, 27.620525, 33.536652>,  <28.889257, 27.835800, 33.850311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.765671, 27.620525, 33.536652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108551, -0.799150, 0.591249,
		-0.944858, 0.267796, 0.188489,
		-0.308965, -0.538186, -0.784154,
		28.672981, 27.459070, 33.301407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305389, 27.546076, 34.127235>,  <28.889257, 27.835800, 33.850311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305389, 27.546076, 34.127235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393145, 27.312031, 33.814953>,  <28.445797, 27.171604, 33.627583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.393145, 27.312031, 33.814953>,  <28.305389, 27.546076, 34.127235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.393145, 27.312031, 33.814953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101833, -0.809568, 0.578126,
		-0.970309, -0.047332, -0.237194,
		0.219388, -0.585115, -0.780711,
		28.458961, 27.136496, 33.580738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.970509, 26.878624, 34.128277>,  <28.305389, 27.546076, 34.127235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.970509, 26.878624, 34.128277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260172, 26.776333, 33.872089>,  <28.433969, 26.714958, 33.718376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.260172, 26.776333, 33.872089>,  <27.970509, 26.878624, 34.128277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.260172, 26.776333, 33.872089> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030420, -0.939647, 0.340790,
		-0.688960, -0.227304, -0.688235,
		0.724161, -0.255727, -0.640465,
		28.477421, 26.699615, 33.679951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.826422, 26.251474, 33.762932>,  <27.970509, 26.878624, 34.128277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.826422, 26.251474, 33.762932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215191, 26.245739, 33.668983>,  <28.448452, 26.242298, 33.612614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.215191, 26.245739, 33.668983>,  <27.826422, 26.251474, 33.762932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.215191, 26.245739, 33.668983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020423, -0.989234, 0.144909,
		-0.234416, -0.145637, -0.961165,
		0.971922, -0.014340, -0.234867,
		28.506767, 26.241438, 33.598522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885862, 25.640453, 33.402161>,  <27.826422, 26.251474, 33.762932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885862, 25.640453, 33.402161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263067, 25.720078, 33.508820>,  <28.489389, 25.767853, 33.572815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.263067, 25.720078, 33.508820>,  <27.885862, 25.640453, 33.402161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.263067, 25.720078, 33.508820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223473, -0.972590, -0.064248,
		0.246553, 0.120176, -0.961649,
		0.943012, 0.199062, 0.266651,
		28.545971, 25.779797, 33.588814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.364555, 25.398958, 32.860233>,  <27.885862, 25.640453, 33.402161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.364555, 25.398958, 32.860233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587442, 25.418861, 33.191784>,  <28.721174, 25.430803, 33.390713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.587442, 25.418861, 33.191784>,  <28.364555, 25.398958, 32.860233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.587442, 25.418861, 33.191784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314870, -0.936316, -0.155466,
		0.768351, 0.347616, -0.537400,
		0.557219, 0.049758, 0.828873,
		28.754608, 25.433788, 33.440445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011536, 25.020054, 32.588905>,  <28.364555, 25.398958, 32.860233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011536, 25.020054, 32.588905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992674, 25.045250, 32.987663>,  <28.981358, 25.060368, 33.226921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.992674, 25.045250, 32.987663>,  <29.011536, 25.020054, 32.588905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.992674, 25.045250, 32.987663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540067, -0.837954, 0.078492,
		0.840300, 0.542094, 0.005493,
		-0.047153, 0.062990, 0.996900,
		28.978527, 25.064148, 33.286732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.703333, 24.880463, 32.937233>,  <29.011536, 25.020054, 32.588905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.703333, 24.880463, 32.937233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441914, 24.781162, 33.223240>,  <29.285063, 24.721582, 33.394844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.441914, 24.781162, 33.223240>,  <29.703333, 24.880463, 32.937233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.441914, 24.781162, 33.223240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492568, -0.856762, 0.152761,
		0.574676, 0.452030, 0.682214,
		-0.653548, -0.248249, 0.715016,
		29.245850, 24.706688, 33.437744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.119814, 24.501772, 33.394489>,  <29.703333, 24.880463, 32.937233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.119814, 24.501772, 33.394489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750759, 24.401585, 33.511799>,  <29.529327, 24.341473, 33.582184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.750759, 24.401585, 33.511799>,  <30.119814, 24.501772, 33.394489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.750759, 24.401585, 33.511799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331793, -0.903139, 0.272496,
		0.196614, 0.348720, 0.916372,
		-0.922636, -0.250469, 0.293272,
		29.473969, 24.326445, 33.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.219252, 24.133644, 33.955788>,  <30.119814, 24.501772, 33.394489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.219252, 24.133644, 33.955788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854807, 24.015507, 33.840794>,  <29.636141, 23.944624, 33.771797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.854807, 24.015507, 33.840794>,  <30.219252, 24.133644, 33.955788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854807, 24.015507, 33.840794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223945, -0.940307, 0.256263,
		-0.346013, 0.169103, 0.922865,
		-0.911111, -0.295341, -0.287488,
		29.581474, 23.926905, 33.754547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943363, 23.726547, 34.565720>,  <30.219252, 24.133644, 33.955788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943363, 23.726547, 34.565720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753637, 23.622597, 34.229271>,  <29.639803, 23.560226, 34.027401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.753637, 23.622597, 34.229271>,  <29.943363, 23.726547, 34.565720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.753637, 23.622597, 34.229271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190889, -0.963066, 0.189909,
		-0.859411, -0.070486, 0.506403,
		-0.474313, -0.259877, -0.841125,
		29.611343, 23.544634, 33.976933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393085, 23.315605, 34.746460>,  <29.943363, 23.726547, 34.565720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393085, 23.315605, 34.746460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456606, 23.224888, 34.362095>,  <29.494719, 23.170458, 34.131477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.456606, 23.224888, 34.362095>,  <29.393085, 23.315605, 34.746460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.456606, 23.224888, 34.362095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030253, -0.971685, 0.234334,
		-0.986847, -0.066282, -0.147443,
		0.158800, -0.226791, -0.960910,
		29.504246, 23.156851, 34.073822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.963057, 22.793844, 34.659946>,  <29.393085, 23.315605, 34.746460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.963057, 22.793844, 34.659946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213552, 22.741898, 34.352451>,  <29.363850, 22.710730, 34.167953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.213552, 22.741898, 34.352451>,  <28.963057, 22.793844, 34.659946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.213552, 22.741898, 34.352451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116677, -0.990536, 0.072285,
		-0.770850, 0.044426, -0.635465,
		0.626239, -0.129865, -0.768739,
		29.401424, 22.702938, 34.121830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.673281, 22.312124, 34.223835>,  <28.963057, 22.793844, 34.659946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.673281, 22.312124, 34.223835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058678, 22.275661, 34.123138>,  <29.289915, 22.253784, 34.062721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.058678, 22.275661, 34.123138>,  <28.673281, 22.312124, 34.223835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058678, 22.275661, 34.123138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063084, -0.991076, 0.117430,
		-0.260196, -0.097262, -0.960645,
		0.963493, -0.091156, -0.251738,
		29.347725, 22.248314, 34.047615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.719261, 21.651037, 33.976521>,  <28.673281, 22.312124, 34.223835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.719261, 21.651037, 33.976521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095675, 21.775139, 34.030479>,  <29.321522, 21.849600, 34.062855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.095675, 21.775139, 34.030479>,  <28.719261, 21.651037, 33.976521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.095675, 21.775139, 34.030479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229851, -0.878904, 0.417966,
		0.248241, -0.362313, -0.898391,
		0.941034, 0.310253, 0.134902,
		29.377985, 21.868216, 34.070950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009964, 20.901876, 34.192142>,  <28.719261, 21.651037, 33.976521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009964, 20.901876, 34.192142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867878, 20.605412, 33.964283>,  <28.782627, 20.427532, 33.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.867878, 20.605412, 33.964283>,  <29.009964, 20.901876, 34.192142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.867878, 20.605412, 33.964283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099229, 0.576053, -0.811367,
		0.929504, -0.344734, -0.131077,
		-0.355213, -0.741162, -0.569651,
		28.761314, 20.383062, 33.793388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.532513, 20.784369, 33.594288>,  <29.009964, 20.901876, 34.192142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.532513, 20.784369, 33.594288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160814, 20.654751, 33.523300>,  <28.937794, 20.576981, 33.480709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.160814, 20.654751, 33.523300>,  <29.532513, 20.784369, 33.594288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.160814, 20.654751, 33.523300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011706, 0.505928, -0.862496,
		0.369270, -0.799396, -0.473927,
		-0.929248, -0.324042, -0.177466,
		28.882040, 20.557539, 33.470058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.498924, 20.621695, 32.956928>,  <29.532513, 20.784369, 33.594288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.498924, 20.621695, 32.956928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111904, 20.683929, 33.036572>,  <28.879692, 20.721272, 33.084358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.111904, 20.683929, 33.036572>,  <29.498924, 20.621695, 32.956928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.111904, 20.683929, 33.036572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044501, 0.670717, -0.740377,
		-0.248739, -0.725211, -0.642027,
		-0.967548, 0.155589, 0.199106,
		28.821640, 20.730606, 33.096302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160992, 20.715971, 32.292709>,  <29.498924, 20.621695, 32.956928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160992, 20.715971, 32.292709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875675, 20.859123, 32.533752>,  <28.704485, 20.945015, 32.678379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.875675, 20.859123, 32.533752>,  <29.160992, 20.715971, 32.292709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875675, 20.859123, 32.533752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118792, 0.785630, -0.607185,
		-0.690726, -0.504686, -0.517871,
		-0.713293, 0.357880, 0.602608,
		28.661688, 20.966488, 32.714535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508749, 20.779446, 31.890240>,  <29.160992, 20.715971, 32.292709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508749, 20.779446, 31.890240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486137, 21.039013, 32.193741>,  <28.472570, 21.194754, 32.375843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.486137, 21.039013, 32.193741>,  <28.508749, 20.779446, 31.890240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.486137, 21.039013, 32.193741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150840, 0.745696, -0.648988,
		-0.986941, -0.151137, 0.055729,
		-0.056529, 0.648919, 0.758755,
		28.469179, 21.233688, 32.421368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.914515, 21.116219, 31.725868>,  <28.508749, 20.779446, 31.890240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.914515, 21.116219, 31.725868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088873, 21.351955, 31.997948>,  <28.193487, 21.493399, 32.161194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.088873, 21.351955, 31.997948>,  <27.914515, 21.116219, 31.725868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.088873, 21.351955, 31.997948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187606, 0.798674, -0.571772,
		-0.880227, 0.121624, 0.458704,
		0.435896, 0.589345, 0.680197,
		28.219641, 21.528759, 32.202007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.447029, 21.826105, 31.788239>,  <27.914515, 21.116219, 31.725868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.447029, 21.826105, 31.788239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811853, 21.887928, 31.940163>,  <28.030748, 21.925022, 32.031319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.811853, 21.887928, 31.940163>,  <27.447029, 21.826105, 31.788239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.811853, 21.887928, 31.940163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016703, 0.911475, -0.411016,
		-0.409713, 0.381216, 0.828740,
		0.912062, 0.154556, 0.379810,
		28.085472, 21.934296, 32.054104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.386780, 22.523750, 32.039165>,  <27.447029, 21.826105, 31.788239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.386780, 22.523750, 32.039165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778381, 22.464024, 31.983658>,  <28.013342, 22.428188, 31.950354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.778381, 22.464024, 31.983658>,  <27.386780, 22.523750, 32.039165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.778381, 22.464024, 31.983658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091262, 0.929783, -0.356615,
		0.182274, 0.336463, 0.923888,
		0.979003, -0.149318, -0.138769,
		28.072083, 22.419228, 31.942026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669090, 23.108505, 32.355747>,  <27.386780, 22.523750, 32.039165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669090, 23.108505, 32.355747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944147, 22.940605, 32.118782>,  <28.109180, 22.839865, 31.976603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.944147, 22.940605, 32.118782>,  <27.669090, 23.108505, 32.355747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.944147, 22.940605, 32.118782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132851, 0.874912, -0.465704,
		0.713792, 0.241535, 0.657390,
		0.687642, -0.419751, -0.592417,
		28.150440, 22.814680, 31.941057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.274633, 23.509825, 32.419830>,  <27.669090, 23.108505, 32.355747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.274633, 23.509825, 32.419830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327950, 23.323116, 32.070122>,  <28.359940, 23.211092, 31.860296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.327950, 23.323116, 32.070122>,  <28.274633, 23.509825, 32.419830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.327950, 23.323116, 32.070122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010855, 0.881407, -0.472234,
		0.991018, 0.072435, 0.112416,
		0.133291, -0.466772, -0.874276,
		28.367937, 23.183084, 31.807838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.743940, 23.854309, 32.118965>,  <28.274633, 23.509825, 32.419830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.743940, 23.854309, 32.118965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563530, 23.669029, 31.813805>,  <28.455284, 23.557861, 31.630709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.563530, 23.669029, 31.813805>,  <28.743940, 23.854309, 32.118965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.563530, 23.669029, 31.813805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131907, 0.810801, -0.570265,
		0.882711, -0.357836, -0.304591,
		-0.451024, -0.463201, -0.762904,
		28.428223, 23.530069, 31.584934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.239613, 23.911356, 31.468885>,  <28.743940, 23.854309, 32.118965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.239613, 23.911356, 31.468885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871229, 23.842945, 31.328838>,  <28.650198, 23.801899, 31.244810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.871229, 23.842945, 31.328838>,  <29.239613, 23.911356, 31.468885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.871229, 23.842945, 31.328838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142445, 0.688568, -0.711043,
		0.362687, -0.704715, -0.609782,
		-0.920960, -0.171026, -0.350118,
		28.594942, 23.791637, 31.223803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258936, 23.768074, 30.775227>,  <29.239613, 23.911356, 31.468885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258936, 23.768074, 30.775227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886673, 23.903999, 30.829494>,  <28.663315, 23.985554, 30.862055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.886673, 23.903999, 30.829494>,  <29.258936, 23.768074, 30.775227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886673, 23.903999, 30.829494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217975, 0.812713, -0.540356,
		-0.293878, -0.473314, -0.830427,
		-0.930657, 0.339811, 0.135668,
		28.607475, 24.005943, 30.870195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.136385, 24.251997, 30.229906>,  <29.258936, 23.768074, 30.775227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.136385, 24.251997, 30.229906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811209, 24.326004, 30.450775>,  <28.616102, 24.370409, 30.583296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.811209, 24.326004, 30.450775>,  <29.136385, 24.251997, 30.229906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.811209, 24.326004, 30.450775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062426, 0.915037, -0.398511,
		-0.578989, -0.358436, -0.732322,
		-0.812942, 0.185018, 0.552172,
		28.567326, 24.381510, 30.616426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.640360, 24.506769, 29.813601>,  <29.136385, 24.251997, 30.229906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.640360, 24.506769, 29.813601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475866, 24.630707, 30.156502>,  <28.377171, 24.705070, 30.362242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.475866, 24.630707, 30.156502>,  <28.640360, 24.506769, 29.813601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.475866, 24.630707, 30.156502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216109, 0.880500, -0.421919,
		-0.885540, -0.358768, -0.295133,
		-0.411236, 0.309846, 0.857252,
		28.352495, 24.723661, 30.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.040321, 24.827909, 29.683041>,  <28.640360, 24.506769, 29.813601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.040321, 24.827909, 29.683041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134277, 24.963791, 30.047333>,  <28.190651, 25.045319, 30.265907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.134277, 24.963791, 30.047333>,  <28.040321, 24.827909, 29.683041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.134277, 24.963791, 30.047333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194048, 0.934472, -0.298509,
		-0.952456, -0.106608, 0.285417,
		0.234891, 0.339702, 0.910730,
		28.204744, 25.065701, 30.320551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582954, 25.372066, 29.781231>,  <28.040321, 24.827909, 29.683041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582954, 25.372066, 29.781231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854961, 25.450535, 30.063816>,  <28.018166, 25.497616, 30.233368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.854961, 25.450535, 30.063816>,  <27.582954, 25.372066, 29.781231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.854961, 25.450535, 30.063816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120978, 0.920314, -0.372002,
		-0.723145, 0.338435, 0.602098,
		0.680018, 0.196171, 0.706464,
		28.058968, 25.509386, 30.275755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352257, 25.922554, 30.286911>,  <27.582954, 25.372066, 29.781231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352257, 25.922554, 30.286911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752211, 25.923710, 30.292919>,  <27.992182, 25.924402, 30.296524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.752211, 25.923710, 30.292919>,  <27.352257, 25.922554, 30.286911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.752211, 25.923710, 30.292919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001977, 0.949361, -0.314182,
		-0.015167, 0.314175, 0.949244,
		0.999883, 0.002889, 0.015020,
		28.052176, 25.924576, 30.297424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.627304, 26.586885, 30.659235>,  <27.352257, 25.922554, 30.286911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.627304, 26.586885, 30.659235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909021, 26.452618, 30.409019>,  <28.078051, 26.372057, 30.258890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.909021, 26.452618, 30.409019>,  <27.627304, 26.586885, 30.659235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.909021, 26.452618, 30.409019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140335, 0.929593, -0.340827,
		0.695902, 0.152256, 0.701811,
		0.704291, -0.335671, -0.625539,
		28.120308, 26.351917, 30.221357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.101376, 27.101982, 30.660553>,  <27.627304, 26.586885, 30.659235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.101376, 27.101982, 30.660553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178600, 26.902969, 30.322277>,  <28.224936, 26.783562, 30.119312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.178600, 26.902969, 30.322277>,  <28.101376, 27.101982, 30.660553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.178600, 26.902969, 30.322277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025890, 0.864185, -0.502506,
		0.980845, 0.075119, 0.179721,
		0.193061, -0.497534, -0.845687,
		28.236519, 26.753710, 30.068571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639668, 27.530869, 30.388380>,  <28.101376, 27.101982, 30.660553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639668, 27.530869, 30.388380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466705, 27.321060, 30.095013>,  <28.362928, 27.195175, 29.918993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.466705, 27.321060, 30.095013>,  <28.639668, 27.530869, 30.388380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.466705, 27.321060, 30.095013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030960, 0.804275, -0.593451,
		0.901147, -0.279319, -0.331535,
		-0.432407, -0.524522, -0.733417,
		28.336983, 27.163704, 29.874989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.926079, 27.813173, 29.828007>,  <28.639668, 27.530869, 30.388380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.926079, 27.813173, 29.828007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625898, 27.607006, 29.662518>,  <28.445791, 27.483305, 29.563223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.625898, 27.607006, 29.662518>,  <28.926079, 27.813173, 29.828007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.625898, 27.607006, 29.662518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200125, 0.773794, -0.600993,
		0.629901, -0.368219, -0.683842,
		-0.750449, -0.515420, -0.413724,
		28.400764, 27.452379, 29.538401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.063057, 28.026859, 29.221134>,  <28.926079, 27.813173, 29.828007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.063057, 28.026859, 29.221134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684872, 27.896576, 29.219841>,  <28.457960, 27.818405, 29.219065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.684872, 27.896576, 29.219841>,  <29.063057, 28.026859, 29.221134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.684872, 27.896576, 29.219841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258905, 0.757497, -0.599305,
		0.197647, -0.565784, -0.800514,
		-0.945465, -0.325708, -0.003233,
		28.401232, 27.798864, 29.218870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.819975, 28.175056, 28.522646>,  <29.063057, 28.026859, 29.221134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.819975, 28.175056, 28.522646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476284, 28.142475, 28.724674>,  <28.270069, 28.122927, 28.845892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.476284, 28.142475, 28.724674>,  <28.819975, 28.175056, 28.522646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.476284, 28.142475, 28.724674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441596, 0.616552, -0.651810,
		-0.258312, -0.783089, -0.565726,
		-0.859225, -0.081452, 0.505072,
		28.218517, 28.118040, 28.876196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377245, 28.213564, 27.965441>,  <28.819975, 28.175056, 28.522646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377245, 28.213564, 27.965441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153492, 28.330257, 28.275791>,  <28.019239, 28.400272, 28.462002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.153492, 28.330257, 28.275791>,  <28.377245, 28.213564, 27.965441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.153492, 28.330257, 28.275791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317028, 0.789558, -0.525444,
		-0.765887, -0.539899, -0.349179,
		-0.559383, 0.291731, 0.775876,
		27.985678, 28.417776, 28.508554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.659786, 28.222237, 27.776911>,  <28.377245, 28.213564, 27.965441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.659786, 28.222237, 27.776911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648058, 28.469475, 28.091133>,  <27.641020, 28.617817, 28.279667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.648058, 28.469475, 28.091133>,  <27.659786, 28.222237, 27.776911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.648058, 28.469475, 28.091133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523840, 0.659826, -0.538722,
		-0.851312, -0.427302, 0.304436,
		-0.029322, 0.618096, 0.785556,
		27.639261, 28.654903, 28.326799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.013083, 28.275656, 27.810406>,  <27.659786, 28.222237, 27.776911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.013083, 28.275656, 27.810406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167364, 28.577866, 28.022224>,  <27.259933, 28.759192, 28.149315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.167364, 28.577866, 28.022224>,  <27.013083, 28.275656, 27.810406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.167364, 28.577866, 28.022224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481129, 0.654444, -0.583282,
		-0.787241, -0.029807, 0.615924,
		0.385702, 0.755523, 0.529546,
		27.283075, 28.804522, 28.181087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.445742, 28.716278, 28.036476>,  <27.013083, 28.275656, 27.810406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.445742, 28.716278, 28.036476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773924, 28.944935, 28.039993>,  <26.970833, 29.082129, 28.042105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.773924, 28.944935, 28.039993>,  <26.445742, 28.716278, 28.036476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.773924, 28.944935, 28.039993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417221, 0.609198, -0.674393,
		-0.390867, 0.549641, 0.738321,
		0.820457, 0.571641, 0.008794,
		27.020061, 29.116426, 28.042631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.162891, 29.341715, 27.970581>,  <26.445742, 28.716278, 28.036476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.162891, 29.341715, 27.970581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546988, 29.403393, 27.877487>,  <26.777445, 29.440399, 27.821630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546988, 29.403393, 27.877487>,  <26.162891, 29.341715, 27.970581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546988, 29.403393, 27.877487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271631, 0.708544, -0.651292,
		0.064477, 0.688614, 0.722256,
		0.960239, 0.154193, -0.232734,
		26.835060, 29.449650, 27.807667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.141800, 30.051649, 27.863136>,  <26.162891, 29.341715, 27.970581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.141800, 30.051649, 27.863136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461912, 29.894928, 27.681568>,  <26.653980, 29.800896, 27.572628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.461912, 29.894928, 27.681568>,  <26.141800, 30.051649, 27.863136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.461912, 29.894928, 27.681568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127310, 0.628720, -0.767139,
		0.585956, 0.671714, 0.453272,
		0.800280, -0.391804, -0.453918,
		26.701996, 29.777388, 27.545393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.587507, 30.674664, 27.706839>,  <26.141800, 30.051649, 27.863136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.587507, 30.674664, 27.706839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666836, 30.356800, 27.477341>,  <26.714432, 30.166082, 27.339642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.666836, 30.356800, 27.477341>,  <26.587507, 30.674664, 27.706839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.666836, 30.356800, 27.477341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284587, 0.513470, -0.809543,
		0.937912, 0.323829, -0.124318,
		0.198320, -0.794659, -0.573747,
		26.726332, 30.118402, 27.305216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.902126, 30.989893, 27.176426>,  <26.587507, 30.674664, 27.706839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.902126, 30.989893, 27.176426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851753, 30.621609, 27.028679>,  <26.821529, 30.400639, 26.940031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.851753, 30.621609, 27.028679>,  <26.902126, 30.989893, 27.176426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851753, 30.621609, 27.028679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180482, 0.387382, -0.904080,
		0.975483, -0.047191, -0.214956,
		-0.125935, -0.920710, -0.369368,
		26.813972, 30.345396, 26.917868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.137251, 31.018238, 26.495590>,  <26.902126, 30.989893, 27.176426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.137251, 31.018238, 26.495590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920742, 30.682308, 26.479023>,  <26.790836, 30.480749, 26.469082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.920742, 30.682308, 26.479023>,  <27.137251, 31.018238, 26.495590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.920742, 30.682308, 26.479023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216463, 0.186772, -0.958259,
		0.812508, -0.509713, -0.282885,
		-0.541272, -0.839827, -0.041420,
		26.758360, 30.430361, 26.466597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.295883, 30.578779, 25.808260>,  <27.137251, 31.018238, 26.495590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.295883, 30.578779, 25.808260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934860, 30.469536, 25.941406>,  <26.718246, 30.403990, 26.021294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.934860, 30.469536, 25.941406>,  <27.295883, 30.578779, 25.808260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.934860, 30.469536, 25.941406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410592, 0.313202, -0.856340,
		0.129621, -0.909569, -0.394820,
		-0.902559, -0.273109, 0.332864,
		26.664093, 30.387602, 26.041265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888878, 30.270668, 25.240164>,  <27.295883, 30.578779, 25.808260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888878, 30.270668, 25.240164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596628, 30.363464, 25.497028>,  <26.421278, 30.419142, 25.651146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.596628, 30.363464, 25.497028>,  <26.888878, 30.270668, 25.240164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.596628, 30.363464, 25.497028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645074, 0.073687, -0.760559,
		-0.223762, -0.969923, 0.095814,
		-0.730623, 0.231991, 0.642160,
		26.377441, 30.433062, 25.689676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.311247, 29.918240, 25.054113>,  <26.888878, 30.270668, 25.240164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.311247, 29.918240, 25.054113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191507, 30.240902, 25.257954>,  <26.119663, 30.434500, 25.380259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.191507, 30.240902, 25.257954>,  <26.311247, 29.918240, 25.054113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.191507, 30.240902, 25.257954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644357, 0.222995, -0.731489,
		-0.703700, -0.547337, 0.453022,
		-0.299350, 0.806657, 0.509602,
		26.101702, 30.482899, 25.410835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.603731, 29.885355, 24.926926>,  <26.311247, 29.918240, 25.054113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.603731, 29.885355, 24.926926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665667, 30.256950, 25.061390>,  <25.702827, 30.479908, 25.142069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.665667, 30.256950, 25.061390>,  <25.603731, 29.885355, 24.926926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.665667, 30.256950, 25.061390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761462, 0.329014, -0.558502,
		-0.629444, -0.169493, 0.758336,
		0.154841, 0.928990, 0.336159,
		25.712118, 30.535646, 25.162237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.932167, 30.198828, 25.074736>,  <25.603731, 29.885355, 24.926926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.932167, 30.198828, 25.074736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197926, 30.489105, 25.003242>,  <25.357382, 30.663271, 24.960346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.197926, 30.489105, 25.003242>,  <24.932167, 30.198828, 25.074736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.197926, 30.489105, 25.003242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576456, 0.345372, -0.740552,
		-0.475684, 0.595053, 0.647794,
		0.664398, 0.725693, -0.178733,
		25.397245, 30.706814, 24.949623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.524702, 30.853132, 25.075350>,  <24.932167, 30.198828, 25.074736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.524702, 30.853132, 25.075350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862320, 30.918491, 24.871040>,  <25.064890, 30.957706, 24.748455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.862320, 30.918491, 24.871040>,  <24.524702, 30.853132, 25.075350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.862320, 30.918491, 24.871040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530634, 0.392224, -0.751391,
		0.077560, 0.905241, 0.417760,
		0.844045, 0.163399, -0.510773,
		25.115534, 30.967512, 24.717808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.549679, 31.587597, 24.965681>,  <24.524702, 30.853132, 25.075350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.549679, 31.587597, 24.965681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773199, 31.398003, 24.693481>,  <24.907310, 31.284246, 24.530161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.773199, 31.398003, 24.693481>,  <24.549679, 31.587597, 24.965681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.773199, 31.398003, 24.693481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496712, 0.465808, -0.732325,
		0.664093, 0.747236, 0.024859,
		0.558800, -0.473984, -0.680501,
		24.940840, 31.255808, 24.489330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.915188, 32.038437, 24.504570>,  <24.549679, 31.587597, 24.965681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.915188, 32.038437, 24.504570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841339, 31.713753, 24.282925>,  <24.797029, 31.518944, 24.149937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.841339, 31.713753, 24.282925>,  <24.915188, 32.038437, 24.504570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.841339, 31.713753, 24.282925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559419, 0.550355, -0.619807,
		0.808062, 0.195552, -0.555693,
		-0.184624, -0.811708, -0.554116,
		24.785952, 31.470240, 24.116690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.175444, 32.174442, 23.754765>,  <24.915188, 32.038437, 24.504570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.175444, 32.174442, 23.754765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857718, 31.938778, 23.814030>,  <24.667082, 31.797380, 23.849588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.857718, 31.938778, 23.814030>,  <25.175444, 32.174442, 23.754765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.857718, 31.938778, 23.814030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564052, 0.624658, -0.540045,
		0.225622, -0.512538, -0.828492,
		-0.794318, -0.589158, 0.148162,
		24.619423, 31.762030, 23.858479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.884439, 32.058647, 23.077513>,  <25.175444, 32.174442, 23.754765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.884439, 32.058647, 23.077513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587454, 32.034130, 23.344341>,  <24.409262, 32.019421, 23.504438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.587454, 32.034130, 23.344341>,  <24.884439, 32.058647, 23.077513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.587454, 32.034130, 23.344341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525868, 0.670209, -0.523720,
		-0.414978, -0.739637, -0.529840,
		-0.742466, -0.061294, 0.667074,
		24.364714, 32.015743, 23.544464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.487654, 32.401638, 22.660027>,  <24.884439, 32.058647, 23.077513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.487654, 32.401638, 22.660027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284325, 32.362328, 23.002243>,  <24.162327, 32.338741, 23.207573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.284325, 32.362328, 23.002243>,  <24.487654, 32.401638, 22.660027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.284325, 32.362328, 23.002243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669301, 0.670226, -0.320676,
		-0.541889, -0.735621, -0.406470,
		-0.508323, -0.098280, 0.855540,
		24.131828, 32.332844, 23.258905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.696657, 32.377087, 22.515141>,  <24.487654, 32.401638, 22.660027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.696657, 32.377087, 22.515141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768644, 32.510391, 22.885342>,  <23.811836, 32.590374, 23.107462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.768644, 32.510391, 22.885342>,  <23.696657, 32.377087, 22.515141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.768644, 32.510391, 22.885342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585812, 0.792132, -0.171322,
		-0.790213, -0.511337, 0.337784,
		0.179966, 0.333259, 0.925500,
		23.822634, 32.610371, 23.162992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.059156, 32.679596, 22.696480>,  <23.696657, 32.377087, 22.515141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.059156, 32.679596, 22.696480> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347288, 32.844421, 22.919666>,  <23.520168, 32.943317, 23.053577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.347288, 32.844421, 22.919666>,  <23.059156, 32.679596, 22.696480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.347288, 32.844421, 22.919666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524662, 0.849859, 0.049703,
		-0.453712, -0.328546, 0.828374,
		0.720330, 0.412065, 0.557967,
		23.563387, 32.968040, 23.087057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.667488, 32.399910, 22.141796>,  <23.059156, 32.679596, 22.696480>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.667488, 32.399910, 22.141796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320580, 32.240398, 22.261005>,  <22.112434, 32.144691, 22.332531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320580, 32.240398, 22.261005>,  <22.667488, 32.399910, 22.141796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320580, 32.240398, 22.261005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112764, -0.425723, -0.897799,
		0.484895, -0.812243, 0.324250,
		-0.867272, -0.398775, 0.298023,
		22.060398, 32.120766, 22.350412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.704044, 32.998756, 21.621334>,  <22.667488, 32.399910, 22.141796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.704044, 32.998756, 21.621334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451311, 33.268921, 21.773441>,  <22.299671, 33.431019, 21.864706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.451311, 33.268921, 21.773441>,  <22.704044, 32.998756, 21.621334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.451311, 33.268921, 21.773441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051993, 0.526429, -0.848628,
		-0.773360, -0.516418, -0.367731,
		-0.631831, 0.675414, 0.380269,
		22.261763, 33.471546, 21.887522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.205753, 33.113499, 21.159828>,  <22.704044, 32.998756, 21.621334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.205753, 33.113499, 21.159828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187759, 33.450390, 21.374725>,  <22.176964, 33.652523, 21.503664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.187759, 33.450390, 21.374725>,  <22.205753, 33.113499, 21.159828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.187759, 33.450390, 21.374725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122634, 0.529066, -0.839673,
		-0.991432, -0.103655, 0.079487,
		-0.044983, 0.842226, 0.537244,
		22.174265, 33.703056, 21.535898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.579672, 33.512733, 20.847105>,  <22.205753, 33.113499, 21.159828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.579672, 33.512733, 20.847105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805367, 33.790237, 21.026138>,  <21.940783, 33.956741, 21.133558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.805367, 33.790237, 21.026138>,  <21.579672, 33.512733, 20.847105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.805367, 33.790237, 21.026138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227887, 0.651933, -0.723223,
		-0.793539, 0.306071, 0.525944,
		0.564237, 0.693761, 0.447584,
		21.974638, 33.998367, 21.160414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.072815, 34.069141, 21.006794>,  <21.579672, 33.512733, 20.847105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.072815, 34.069141, 21.006794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449881, 34.201626, 20.990406>,  <21.676121, 34.281116, 20.980574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.449881, 34.201626, 20.990406>,  <21.072815, 34.069141, 21.006794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.449881, 34.201626, 20.990406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292114, 0.759487, -0.581248,
		-0.161403, 0.559890, 0.812694,
		0.942666, 0.331215, -0.040968,
		21.732679, 34.300991, 20.978115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.976526, 34.785328, 21.064743>,  <21.072815, 34.069141, 21.006794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.976526, 34.785328, 21.064743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.349703, 34.752682, 20.924480>,  <21.573608, 34.733093, 20.840322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.349703, 34.752682, 20.924480>,  <20.976526, 34.785328, 21.064743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.349703, 34.752682, 20.924480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194903, 0.704410, -0.682510,
		0.302713, 0.705085, 0.641265,
		0.932941, -0.081620, -0.350657,
		21.629585, 34.728195, 20.819283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191664, 35.464615, 21.065498>,  <20.976526, 34.785328, 21.064743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191664, 35.464615, 21.065498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403381, 35.249722, 20.802826>,  <21.530413, 35.120785, 20.645224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403381, 35.249722, 20.802826>,  <21.191664, 35.464615, 21.065498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403381, 35.249722, 20.802826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238298, 0.648698, -0.722776,
		0.814285, 0.539047, 0.215332,
		0.529296, -0.537232, -0.656679,
		21.562170, 35.088551, 20.605822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.697638, 35.942444, 20.700283>,  <21.191664, 35.464615, 21.065498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.697638, 35.942444, 20.700283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.673122, 35.624138, 20.459286>,  <21.658413, 35.433155, 20.314688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.673122, 35.624138, 20.459286>,  <21.697638, 35.942444, 20.700283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.673122, 35.624138, 20.459286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084787, 0.597293, -0.797529,
		0.994512, -0.099963, 0.030863,
		-0.061289, -0.795769, -0.602491,
		21.654736, 35.385406, 20.278538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.174425, 36.138165, 20.217604>,  <21.697638, 35.942444, 20.700283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.174425, 36.138165, 20.217604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.955175, 35.838089, 20.069675>,  <21.823626, 35.658043, 19.980919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.955175, 35.838089, 20.069675>,  <22.174425, 36.138165, 20.217604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.955175, 35.838089, 20.069675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007488, 0.446546, -0.894729,
		0.836362, -0.487655, -0.250381,
		-0.548126, -0.750193, -0.369823,
		21.790737, 35.613029, 19.958729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.519798, 35.996525, 19.621937>,  <22.174425, 36.138165, 20.217604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.519798, 35.996525, 19.621937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158873, 35.831966, 19.570423>,  <21.942318, 35.733231, 19.539515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.158873, 35.831966, 19.570423>,  <22.519798, 35.996525, 19.621937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.158873, 35.831966, 19.570423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024600, 0.347395, -0.937396,
		0.430382, -0.842656, -0.323579,
		-0.902312, -0.411398, -0.128783,
		21.888180, 35.708546, 19.531788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.539351, 35.658646, 18.966568>,  <22.519798, 35.996525, 19.621937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.539351, 35.658646, 18.966568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149073, 35.722488, 19.026630>,  <21.914906, 35.760796, 19.062668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.149073, 35.722488, 19.026630>,  <22.539351, 35.658646, 18.966568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.149073, 35.722488, 19.026630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081589, 0.371372, -0.924893,
		-0.203385, -0.914663, -0.349323,
		-0.975693, 0.159609, 0.150158,
		21.856365, 35.770370, 19.071678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.267479, 35.506275, 18.354776>,  <22.539351, 35.658646, 18.966568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.267479, 35.506275, 18.354776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990408, 35.728283, 18.539017>,  <21.824165, 35.861488, 18.649561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.990408, 35.728283, 18.539017>,  <22.267479, 35.506275, 18.354776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.990408, 35.728283, 18.539017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273223, 0.389096, -0.879746,
		-0.667494, -0.735226, -0.117873,
		-0.692676, 0.555020, 0.460600,
		21.782604, 35.894791, 18.677197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.637285, 35.462547, 18.049603>,  <22.267479, 35.506275, 18.354776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.637285, 35.462547, 18.049603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591345, 35.802887, 18.254684>,  <21.563782, 36.007092, 18.377733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.591345, 35.802887, 18.254684>,  <21.637285, 35.462547, 18.049603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.591345, 35.802887, 18.254684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421539, 0.425601, -0.800730,
		-0.899508, -0.308088, 0.309786,
		-0.114850, 0.850850, 0.512703,
		21.556890, 36.058144, 18.408495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.930460, 35.594631, 17.933231>,  <21.637285, 35.462547, 18.049603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.930460, 35.594631, 17.933231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106951, 35.933868, 18.050568>,  <21.212845, 36.137413, 18.120970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.106951, 35.933868, 18.050568>,  <20.930460, 35.594631, 17.933231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.106951, 35.933868, 18.050568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491722, 0.501928, -0.711532,
		-0.750684, 0.169706, 0.638493,
		0.441229, 0.848097, 0.293341,
		21.239319, 36.188297, 18.138571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.435511, 36.181084, 17.773125>,  <20.930460, 35.594631, 17.933231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.435511, 36.181084, 17.773125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800949, 36.340954, 17.803078>,  <21.020212, 36.436874, 17.821049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.800949, 36.340954, 17.803078>,  <20.435511, 36.181084, 17.773125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.800949, 36.340954, 17.803078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214250, 0.629653, -0.746749,
		-0.345605, 0.666182, 0.660877,
		0.913594, 0.399673, 0.074881,
		21.075027, 36.460857, 17.825542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.247234, 36.799583, 17.475706>,  <20.435511, 36.181084, 17.773125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.247234, 36.799583, 17.475706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646822, 36.790016, 17.460289>,  <20.886576, 36.784275, 17.451038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.646822, 36.790016, 17.460289>,  <20.247234, 36.799583, 17.475706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.646822, 36.790016, 17.460289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005203, 0.783677, -0.621147,
		0.045063, 0.620708, 0.782746,
		0.998971, -0.023918, -0.038545,
		20.946512, 36.782841, 17.448725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.470098, 37.551212, 17.700272>,  <20.247234, 36.799583, 17.475706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.470098, 37.551212, 17.700272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790447, 37.386280, 17.526566>,  <20.982656, 37.287319, 17.422342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.790447, 37.386280, 17.526566>,  <20.470098, 37.551212, 17.700272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.790447, 37.386280, 17.526566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114732, 0.817401, -0.564528,
		0.587743, 0.402290, 0.701941,
		0.800871, -0.412333, -0.434266,
		21.030708, 37.262581, 17.396286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.128967, 37.965382, 17.757381>,  <20.470098, 37.551212, 17.700272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.128967, 37.965382, 17.757381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156851, 37.748337, 17.422546>,  <21.173580, 37.618111, 17.221645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.156851, 37.748337, 17.422546>,  <21.128967, 37.965382, 17.757381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.156851, 37.748337, 17.422546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053928, 0.835851, -0.546301,
		0.996109, 0.083224, 0.029004,
		0.069709, -0.542611, -0.837086,
		21.177763, 37.585552, 17.171421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.488176, 38.427330, 17.292143>,  <21.128967, 37.965382, 17.757381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.488176, 38.427330, 17.292143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361172, 38.134357, 17.051235>,  <21.284969, 37.958572, 16.906691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.361172, 38.134357, 17.051235>,  <21.488176, 38.427330, 17.292143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.361172, 38.134357, 17.051235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001909, 0.634641, -0.772804,
		0.948253, -0.246523, -0.200107,
		-0.317511, -0.732432, -0.602271,
		21.265919, 37.914627, 16.870554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745712, 38.639030, 16.620285>,  <21.488176, 38.427330, 17.292143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745712, 38.639030, 16.620285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458815, 38.371071, 16.543552>,  <21.286676, 38.210297, 16.497513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.458815, 38.371071, 16.543552>,  <21.745712, 38.639030, 16.620285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.458815, 38.371071, 16.543552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284207, 0.532588, -0.797230,
		0.636228, -0.517290, -0.572386,
		-0.717245, -0.669896, -0.191830,
		21.243641, 38.170101, 16.486004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.791300, 38.572441, 15.827300>,  <21.745712, 38.639030, 16.620285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.791300, 38.572441, 15.827300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444370, 38.423737, 15.959691>,  <21.236214, 38.334515, 16.039125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.444370, 38.423737, 15.959691>,  <21.791300, 38.572441, 15.827300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.444370, 38.423737, 15.959691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465130, 0.368596, -0.804855,
		0.177214, -0.852017, -0.492608,
		-0.867323, -0.371758, 0.330978,
		21.184174, 38.312210, 16.058985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.499195, 38.034824, 15.467446>,  <21.791300, 38.572441, 15.827300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.499195, 38.034824, 15.467446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184284, 38.212234, 15.638787>,  <20.995338, 38.318680, 15.741591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.184284, 38.212234, 15.638787>,  <21.499195, 38.034824, 15.467446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.184284, 38.212234, 15.638787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156897, 0.527737, -0.834791,
		-0.596305, -0.724419, -0.345888,
		-0.787277, 0.443521, 0.428352,
		20.948101, 38.345291, 15.767293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.762722, 37.922115, 15.076689>,  <21.499195, 38.034824, 15.467446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.762722, 37.922115, 15.076689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770863, 38.268517, 15.276538>,  <20.775747, 38.476357, 15.396447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.770863, 38.268517, 15.276538>,  <20.762722, 37.922115, 15.076689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.770863, 38.268517, 15.276538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360119, 0.472534, -0.804379,
		-0.932684, -0.163552, 0.321482,
		0.020353, 0.866004, 0.499623,
		20.776968, 38.528316, 15.426425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.122894, 38.347279, 14.924606>,  <20.762722, 37.922115, 15.076689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.122894, 38.347279, 14.924606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366810, 38.612335, 15.098531>,  <20.513159, 38.771370, 15.202886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.366810, 38.612335, 15.098531>,  <20.122894, 38.347279, 14.924606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.366810, 38.612335, 15.098531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265142, 0.687562, -0.675987,
		-0.746898, 0.296923, 0.594963,
		0.609790, 0.662643, 0.434812,
		20.549747, 38.811127, 15.228974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.720087, 39.017548, 15.060736>,  <20.122894, 38.347279, 14.924606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.720087, 39.017548, 15.060736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.108530, 39.020218, 14.965316>,  <20.341597, 39.021820, 14.908064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.108530, 39.020218, 14.965316>,  <19.720087, 39.017548, 15.060736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.108530, 39.020218, 14.965316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191044, 0.620790, -0.760343,
		0.143013, 0.783949, 0.604129,
		0.971107, 0.006677, -0.238550,
		20.399862, 39.022221, 14.893751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706736, 39.642582, 14.736740>,  <19.720087, 39.017548, 15.060736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706736, 39.642582, 14.736740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049128, 39.449654, 14.662265>,  <20.254562, 39.333897, 14.617579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.049128, 39.449654, 14.662265>,  <19.706736, 39.642582, 14.736740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.049128, 39.449654, 14.662265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056686, 0.445513, -0.893479,
		0.513889, 0.754247, 0.408691,
		0.855982, -0.482316, -0.186189,
		20.305922, 39.304958, 14.606408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.506681, 39.833958, 14.999895>,  <19.706736, 39.642582, 14.736740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.506681, 39.833958, 14.999895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624357, 39.766350, 15.376168>,  <20.694963, 39.725784, 15.601933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.624357, 39.766350, 15.376168>,  <20.506681, 39.833958, 14.999895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.624357, 39.766350, 15.376168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169279, 0.977893, 0.122763,
		-0.940637, 0.123123, 0.316297,
		0.294189, -0.169018, 0.940684,
		20.712614, 39.715645, 15.658373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.061253, 40.179871, 15.511777>,  <20.506681, 39.833958, 14.999895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.061253, 40.179871, 15.511777> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420898, 40.124214, 15.677781>,  <20.636686, 40.090820, 15.777384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.420898, 40.124214, 15.677781>,  <20.061253, 40.179871, 15.511777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.420898, 40.124214, 15.677781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049933, 0.974544, 0.218568,
		-0.434858, -0.175794, 0.883173,
		0.899114, -0.139146, 0.415010,
		20.690632, 40.082470, 15.802284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.078821, 40.417118, 16.192932>,  <20.061253, 40.179871, 15.511777>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.078821, 40.417118, 16.192932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423933, 40.438858, 15.991874>,  <20.631001, 40.451900, 15.871239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.423933, 40.438858, 15.991874>,  <20.078821, 40.417118, 16.192932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.423933, 40.438858, 15.991874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077806, 0.996635, -0.025795,
		0.499554, 0.061364, 0.864107,
		0.862782, 0.054347, -0.502647,
		20.682768, 40.455162, 15.841080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.559933, 40.995617, 16.474466>,  <20.078821, 40.417118, 16.192932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.559933, 40.995617, 16.474466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648651, 40.950329, 16.087067>,  <20.701881, 40.923157, 15.854628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.648651, 40.950329, 16.087067>,  <20.559933, 40.995617, 16.474466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.648651, 40.950329, 16.087067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044865, 0.990999, -0.126125,
		0.974060, 0.071426, 0.214721,
		0.221797, -0.113220, -0.968497,
		20.715191, 40.916363, 15.796517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.956409, 41.268723, 16.770870>,  <20.559933, 40.995617, 16.474466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.956409, 41.268723, 16.770870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754478, 41.613880, 16.761372>,  <19.633320, 41.820976, 16.755672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.754478, 41.613880, 16.761372>,  <19.956409, 41.268723, 16.770870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.754478, 41.613880, 16.761372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315106, 0.158598, -0.935711,
		-0.803654, -0.479853, -0.351968,
		-0.504825, 0.862895, -0.023746,
		19.603031, 41.872749, 16.754248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.414783, 41.042233, 16.225962>,  <19.956409, 41.268723, 16.770870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.414783, 41.042233, 16.225962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303123, 40.664967, 16.298088>,  <19.236128, 40.438606, 16.341364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.303123, 40.664967, 16.298088>,  <19.414783, 41.042233, 16.225962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.303123, 40.664967, 16.298088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173527, 0.135143, 0.975513,
		-0.944438, 0.303604, 0.125939,
		-0.279150, -0.943165, 0.180318,
		19.219379, 40.382015, 16.352184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.947222, 41.048061, 16.906494>,  <19.414783, 41.042233, 16.225962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.947222, 41.048061, 16.906494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130135, 40.694069, 16.871391>,  <19.239882, 40.481674, 16.850330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.130135, 40.694069, 16.871391>,  <18.947222, 41.048061, 16.906494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130135, 40.694069, 16.871391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305684, 0.063748, 0.949997,
		-0.835136, -0.461240, 0.299675,
		0.457280, -0.884982, -0.087756,
		19.267319, 40.428574, 16.845064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.828657, 40.625465, 17.634689>,  <18.947222, 41.048061, 16.906494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.828657, 40.625465, 17.634689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.120640, 40.444939, 17.429371>,  <19.295830, 40.336620, 17.306181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.120640, 40.444939, 17.429371>,  <18.828657, 40.625465, 17.634689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.120640, 40.444939, 17.429371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419593, -0.296920, 0.857776,
		-0.539540, -0.841515, -0.027367,
		0.729957, -0.451321, -0.513294,
		19.339626, 40.309544, 17.275383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.807775, 40.001362, 17.854763>,  <18.828657, 40.625465, 17.634689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.807775, 40.001362, 17.854763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185816, 40.038578, 17.729462>,  <19.412640, 40.060909, 17.654280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.185816, 40.038578, 17.729462>,  <18.807775, 40.001362, 17.854763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.185816, 40.038578, 17.729462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326011, -0.334182, 0.884330,
		-0.022406, -0.937905, -0.346167,
		0.945101, 0.093040, -0.313255,
		19.469345, 40.066490, 17.635485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.167690, 39.341854, 18.003056>,  <18.807775, 40.001362, 17.854763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.167690, 39.341854, 18.003056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.471682, 39.592178, 17.932865>,  <19.654076, 39.742374, 17.890751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.471682, 39.592178, 17.932865>,  <19.167690, 39.341854, 18.003056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.471682, 39.592178, 17.932865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446445, -0.306424, 0.840709,
		0.472355, -0.717261, -0.512266,
		0.759979, 0.625812, -0.175477,
		19.699675, 39.779922, 17.880222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.699995, 38.971428, 18.054708>,  <19.167690, 39.341854, 18.003056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.699995, 38.971428, 18.054708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.838434, 39.339890, 18.125912>,  <19.921497, 39.560966, 18.168634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.838434, 39.339890, 18.125912>,  <19.699995, 38.971428, 18.054708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.838434, 39.339890, 18.125912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562367, -0.355559, 0.746539,
		0.750972, -0.158268, -0.641086,
		0.346098, 0.921156, 0.178010,
		19.942263, 39.616238, 18.179316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.522184, 38.854996, 18.152605>,  <19.699995, 38.971428, 18.054708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.522184, 38.854996, 18.152605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389601, 39.195522, 18.315281>,  <20.310051, 39.399837, 18.412886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.389601, 39.195522, 18.315281>,  <20.522184, 38.854996, 18.152605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.389601, 39.195522, 18.315281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512576, -0.199405, 0.835167,
		0.792087, 0.485282, -0.370270,
		-0.331458, 0.851316, 0.406690,
		20.290163, 39.450916, 18.437288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.074991, 39.089504, 18.458490>,  <20.522184, 38.854996, 18.152605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.074991, 39.089504, 18.458490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767868, 39.281158, 18.628620>,  <20.583593, 39.396152, 18.730698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.767868, 39.281158, 18.628620>,  <21.074991, 39.089504, 18.458490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.767868, 39.281158, 18.628620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386555, -0.182969, 0.903935,
		0.510928, 0.858459, -0.044727,
		-0.767807, 0.479135, 0.425325,
		20.537525, 39.424900, 18.756218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.439512, 39.411728, 19.006346>,  <21.074991, 39.089504, 18.458490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.439512, 39.411728, 19.006346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.046848, 39.402103, 19.081989>,  <20.811249, 39.396328, 19.127375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.046848, 39.402103, 19.081989>,  <21.439512, 39.411728, 19.006346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.046848, 39.402103, 19.081989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186049, -0.337188, 0.922871,
		0.041555, 0.941130, 0.335482,
		-0.981661, -0.024066, 0.189108,
		20.752350, 39.394882, 19.138721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.365318, 39.414074, 19.734583>,  <21.439512, 39.411728, 19.006346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.365318, 39.414074, 19.734583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989019, 39.309090, 19.648689>,  <20.763241, 39.246101, 19.597153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.989019, 39.309090, 19.648689>,  <21.365318, 39.414074, 19.734583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.989019, 39.309090, 19.648689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064075, -0.484245, 0.872583,
		-0.333001, 0.834639, 0.438735,
		-0.940747, -0.262459, -0.214734,
		20.706795, 39.230350, 19.584269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.917501, 39.408497, 20.426346>,  <21.365318, 39.414074, 19.734583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.917501, 39.408497, 20.426346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731821, 39.162979, 20.170918>,  <20.620413, 39.015667, 20.017660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.731821, 39.162979, 20.170918>,  <20.917501, 39.408497, 20.426346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.731821, 39.162979, 20.170918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138321, -0.661873, 0.736743,
		-0.874863, 0.430325, 0.222341,
		-0.464201, -0.613795, -0.638571,
		20.592562, 38.978840, 19.979345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201977, 39.255562, 20.684191>,  <20.917501, 39.408497, 20.426346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201977, 39.255562, 20.684191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356501, 38.968693, 20.452179>,  <20.449215, 38.796574, 20.312971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.356501, 38.968693, 20.452179>,  <20.201977, 39.255562, 20.684191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.356501, 38.968693, 20.452179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092649, -0.655837, 0.749196,
		-0.917705, -0.235681, -0.319800,
		0.386308, -0.717170, -0.580029,
		20.472393, 38.753540, 20.278170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.784760, 38.714951, 20.841722>,  <20.201977, 39.255562, 20.684191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.784760, 38.714951, 20.841722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091413, 38.518990, 20.675705>,  <20.275406, 38.401413, 20.576094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.091413, 38.518990, 20.675705>,  <19.784760, 38.714951, 20.841722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.091413, 38.518990, 20.675705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164712, -0.774825, 0.610341,
		-0.620596, -0.399547, -0.674702,
		0.766636, -0.489907, -0.415043,
		20.321404, 38.372017, 20.551191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.632000, 37.969772, 20.884796>,  <19.784760, 38.714951, 20.841722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.632000, 37.969772, 20.884796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026102, 37.956524, 20.817650>,  <20.262564, 37.948574, 20.777363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.026102, 37.956524, 20.817650>,  <19.632000, 37.969772, 20.884796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.026102, 37.956524, 20.817650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053626, -0.871876, 0.486782,
		-0.162480, -0.488606, -0.857243,
		0.985254, -0.033122, -0.167865,
		20.321678, 37.946587, 20.767290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.875179, 37.244911, 20.781769>,  <19.632000, 37.969772, 20.884796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.875179, 37.244911, 20.781769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.224201, 37.402836, 20.896847>,  <20.433615, 37.497593, 20.965895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.224201, 37.402836, 20.896847>,  <19.875179, 37.244911, 20.781769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.224201, 37.402836, 20.896847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081802, -0.698687, 0.710736,
		0.481619, -0.596621, -0.641939,
		0.872555, 0.394816, 0.287696,
		20.485968, 37.521282, 20.983156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352123, 36.651936, 20.801491>,  <19.875179, 37.244911, 20.781769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352123, 36.651936, 20.801491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534504, 36.946510, 21.001400>,  <20.643932, 37.123253, 21.121346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.534504, 36.946510, 21.001400>,  <20.352123, 36.651936, 20.801491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.534504, 36.946510, 21.001400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343863, -0.663701, 0.664273,
		0.820893, -0.131023, -0.555848,
		0.455952, 0.736433, 0.499774,
		20.671289, 37.167439, 21.151333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.053858, 36.378525, 20.899693>,  <20.352123, 36.651936, 20.801491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.053858, 36.378525, 20.899693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.021044, 36.682083, 21.158100>,  <21.001356, 36.864220, 21.313145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.021044, 36.682083, 21.158100>,  <21.053858, 36.378525, 20.899693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.021044, 36.682083, 21.158100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279818, -0.604594, 0.745767,
		0.956542, 0.241947, -0.162756,
		-0.082035, 0.758899, 0.646021,
		20.996433, 36.909752, 21.351906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.692226, 36.439968, 21.331469>,  <21.053858, 36.378525, 20.899693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.692226, 36.439968, 21.331469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.407436, 36.627525, 21.540554>,  <21.236563, 36.740059, 21.666004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.407436, 36.627525, 21.540554>,  <21.692226, 36.439968, 21.331469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.407436, 36.627525, 21.540554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282797, -0.489889, 0.824642,
		0.642741, 0.734947, 0.216187,
		-0.711976, 0.468894, 0.522713,
		21.193844, 36.768192, 21.697369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.035286, 36.724770, 21.884354>,  <21.692226, 36.439968, 21.331469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.035286, 36.724770, 21.884354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.651239, 36.671951, 21.982933>,  <21.420811, 36.640259, 22.042082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.651239, 36.671951, 21.982933>,  <22.035286, 36.724770, 21.884354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651239, 36.671951, 21.982933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274549, -0.278533, 0.920349,
		-0.052882, 0.951306, 0.303677,
		-0.960118, -0.132045, 0.246451,
		21.363205, 36.632339, 22.056868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.069517, 36.810677, 22.640182>,  <22.035286, 36.724770, 21.884354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.069517, 36.810677, 22.640182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714306, 36.636696, 22.580547>,  <21.501179, 36.532307, 22.544765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.714306, 36.636696, 22.580547>,  <22.069517, 36.810677, 22.640182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.714306, 36.636696, 22.580547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108458, -0.513259, 0.851353,
		-0.446818, 0.739854, 0.502961,
		-0.888026, -0.434950, -0.149090,
		21.447899, 36.506210, 22.535820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.708584, 36.932156, 23.281826>,  <22.069517, 36.810677, 22.640182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.708584, 36.932156, 23.281826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.566195, 36.612453, 23.088139>,  <21.480761, 36.420631, 22.971926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.566195, 36.612453, 23.088139>,  <21.708584, 36.932156, 23.281826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.566195, 36.612453, 23.088139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019811, -0.524500, 0.851180,
		-0.934286, 0.293405, 0.202543,
		-0.355974, -0.799258, -0.484220,
		21.459402, 36.372677, 22.942873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.300951, 36.580482, 23.760820>,  <21.708584, 36.932156, 23.281826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.300951, 36.580482, 23.760820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350651, 36.298752, 23.481255>,  <21.380470, 36.129711, 23.313515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.350651, 36.298752, 23.481255>,  <21.300951, 36.580482, 23.760820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.350651, 36.298752, 23.481255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022512, -0.706192, 0.707662,
		-0.991996, -0.072193, -0.103599,
		0.124249, -0.704330, -0.698914,
		21.387926, 36.087452, 23.271580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.730074, 36.154034, 23.680008>,  <21.300951, 36.580482, 23.760820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.730074, 36.154034, 23.680008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.071756, 35.960625, 23.603546>,  <21.276766, 35.844578, 23.557669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.071756, 35.960625, 23.603546>,  <20.730074, 36.154034, 23.680008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.071756, 35.960625, 23.603546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165148, -0.600933, 0.782052,
		-0.493010, -0.636465, -0.593173,
		0.854206, -0.483521, -0.191156,
		21.328018, 35.815567, 23.546200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.155138, 36.660221, 23.631231>,  <20.730074, 36.154034, 23.680008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.155138, 36.660221, 23.631231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193409, 37.037380, 23.758850>,  <20.216372, 37.263676, 23.835421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.193409, 37.037380, 23.758850>,  <20.155138, 36.660221, 23.631231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.193409, 37.037380, 23.758850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.878681, 0.230608, -0.418018,
		-0.467723, -0.240345, 0.850570,
		0.095679, 0.942897, 0.319047,
		20.222113, 37.320248, 23.854565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.526451, 36.814030, 23.995348>,  <20.155138, 36.660221, 23.631231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.526451, 36.814030, 23.995348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.710474, 37.112999, 23.803638>,  <19.820887, 37.292381, 23.688612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.710474, 37.112999, 23.803638>,  <19.526451, 36.814030, 23.995348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710474, 37.112999, 23.803638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.868277, 0.265887, -0.418808,
		-0.185594, 0.608819, 0.771294,
		0.460055, 0.747425, -0.479276,
		19.848490, 37.337227, 23.659855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.143349, 37.409382, 24.210957>,  <19.526451, 36.814030, 23.995348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.143349, 37.409382, 24.210957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311075, 37.398720, 23.847977>,  <19.411711, 37.392323, 23.630188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.311075, 37.398720, 23.847977>,  <19.143349, 37.409382, 24.210957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.311075, 37.398720, 23.847977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.871472, 0.268266, -0.410573,
		0.254383, 0.962976, 0.089255,
		0.419316, -0.026660, -0.907449,
		19.436871, 37.390720, 23.575743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.658010, 36.927048, 24.547417>,  <19.143349, 37.409382, 24.210957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.658010, 36.927048, 24.547417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.346510, 37.015892, 24.312737>,  <18.159611, 37.069199, 24.171928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.346510, 37.015892, 24.312737>,  <18.658010, 36.927048, 24.547417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.346510, 37.015892, 24.312737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494555, 0.792747, -0.356325,
		0.385959, -0.567643, -0.727198,
		-0.778750, 0.222112, -0.586699,
		18.112885, 37.082527, 24.136726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<32.004738, 23.759897, 27.628448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.305923, 23.961391, 27.797825>,  <32.486633, 24.082289, 27.899450>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.305923, 23.961391, 27.797825>,  <32.004738, 23.759897, 27.628448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305923, 23.961391, 27.797825> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137352, 0.749590, -0.647494,
		-0.643571, 0.429378, 0.633601,
		0.752961, 0.503735, 0.423439,
		32.531811, 24.112513, 27.924856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.768152, 24.482624, 27.591490>,  <32.004738, 23.759897, 27.628448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.768152, 24.482624, 27.591490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161427, 24.500923, 27.662201>,  <32.397392, 24.511902, 27.704628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.161427, 24.500923, 27.662201>,  <31.768152, 24.482624, 27.591490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.161427, 24.500923, 27.662201> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068933, 0.803488, -0.591316,
		-0.169090, 0.593560, 0.786826,
		0.983187, 0.045747, 0.176777,
		32.456383, 24.514647, 27.715235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942652, 25.199924, 27.803539>,  <31.768152, 24.482624, 27.591490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942652, 25.199924, 27.803539> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288563, 25.049957, 27.669914>,  <32.496109, 24.959976, 27.589739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.288563, 25.049957, 27.669914>,  <31.942652, 25.199924, 27.803539>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288563, 25.049957, 27.669914> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135768, 0.815044, -0.563268,
		0.483457, 0.441745, 0.755732,
		0.864776, -0.374920, -0.334064,
		32.547997, 24.937481, 27.569695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.503548, 25.629822, 27.985580>,  <31.942652, 25.199924, 27.803539>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.503548, 25.629822, 27.985580> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.611073, 25.415653, 27.665314>,  <32.675587, 25.287151, 27.473154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.611073, 25.415653, 27.665314>,  <32.503548, 25.629822, 27.985580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.611073, 25.415653, 27.665314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240425, 0.842247, -0.482509,
		0.932703, -0.062796, 0.355135,
		0.268812, -0.535421, -0.800665,
		32.691715, 25.255028, 27.425114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.159626, 25.887756, 27.763060>,  <32.503548, 25.629822, 27.985580>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.159626, 25.887756, 27.763060> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.034927, 25.688511, 27.439407>,  <32.960106, 25.568964, 27.245216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.034927, 25.688511, 27.439407>,  <33.159626, 25.887756, 27.763060>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.034927, 25.688511, 27.439407> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262857, 0.773125, -0.577221,
		0.913082, -0.392635, -0.110089,
		-0.311750, -0.498112, -0.809133,
		32.941402, 25.539078, 27.196667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699409, 26.020384, 27.181602>,  <33.159626, 25.887756, 27.763060>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699409, 26.020384, 27.181602> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.362865, 25.888786, 27.010082>,  <33.160938, 25.809828, 26.907169>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.362865, 25.888786, 27.010082>,  <33.699409, 26.020384, 27.181602>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362865, 25.888786, 27.010082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083848, 0.863234, -0.497791,
		0.533928, -0.382869, -0.753878,
		-0.841362, -0.328996, -0.428802,
		33.110458, 25.790087, 26.881441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.752190, 26.114168, 26.492701>,  <33.699409, 26.020384, 27.181602>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.752190, 26.114168, 26.492701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.354649, 26.070713, 26.501225>,  <33.116123, 26.044640, 26.506340>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.354649, 26.070713, 26.501225>,  <33.752190, 26.114168, 26.492701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354649, 26.070713, 26.501225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098153, 0.775604, -0.623542,
		0.051212, -0.621801, -0.781499,
		-0.993853, -0.108639, 0.021312,
		33.056492, 26.038122, 26.507618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515373, 26.190926, 25.812710>,  <33.752190, 26.114168, 26.492701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515373, 26.190926, 25.812710> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180901, 26.242401, 26.025963>,  <32.980217, 26.273287, 26.153915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.180901, 26.242401, 26.025963>,  <33.515373, 26.190926, 25.812710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180901, 26.242401, 26.025963> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244013, 0.783272, -0.571789,
		-0.491173, -0.608213, -0.623559,
		-0.836186, 0.128691, 0.533134,
		32.930046, 26.281008, 26.185904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.046989, 26.363588, 25.301191>,  <33.515373, 26.190926, 25.812710>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.046989, 26.363588, 25.301191> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878361, 26.486851, 25.642323>,  <32.777184, 26.560808, 25.847002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.878361, 26.486851, 25.642323>,  <33.046989, 26.363588, 25.301191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.878361, 26.486851, 25.642323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404452, 0.777858, -0.480995,
		-0.811601, -0.547702, -0.203288,
		-0.421571, 0.308156, 0.852829,
		32.751888, 26.579298, 25.898170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.396782, 26.492584, 25.167898>,  <33.046989, 26.363588, 25.301191>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.396782, 26.492584, 25.167898> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481308, 26.717628, 25.487602>,  <32.532024, 26.852655, 25.679424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.481308, 26.717628, 25.487602>,  <32.396782, 26.492584, 25.167898>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.481308, 26.717628, 25.487602> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407256, 0.794044, -0.451262,
		-0.888531, -0.230142, 0.396923,
		0.211320, 0.562609, 0.799259,
		32.544704, 26.886412, 25.727381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.799158, 26.900173, 25.271587>,  <32.396782, 26.492584, 25.167898>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.799158, 26.900173, 25.271587> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097496, 27.096611, 25.451607>,  <32.276497, 27.214474, 25.559618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.097496, 27.096611, 25.451607>,  <31.799158, 26.900173, 25.271587>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.097496, 27.096611, 25.451607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284512, 0.845757, -0.451384,
		-0.602305, 0.208617, 0.770524,
		0.745843, 0.491094, 0.450050,
		32.321251, 27.243938, 25.586622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.489641, 27.432732, 25.525749>,  <31.799158, 26.900173, 25.271587>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.489641, 27.432732, 25.525749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873610, 27.543770, 25.541203>,  <32.103992, 27.610394, 25.550474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.873610, 27.543770, 25.541203>,  <31.489641, 27.432732, 25.525749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.873610, 27.543770, 25.541203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256960, 0.926721, -0.274153,
		-0.111907, 0.253238, 0.960910,
		0.959921, 0.277595, 0.038634,
		32.161587, 27.627048, 25.552794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556597, 27.966467, 26.013193>,  <31.489641, 27.432732, 25.525749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556597, 27.966467, 26.013193> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.877016, 28.031700, 25.782810>,  <32.069267, 28.070839, 25.644581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.877016, 28.031700, 25.782810>,  <31.556597, 27.966467, 26.013193>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.877016, 28.031700, 25.782810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210836, 0.977382, -0.016489,
		0.560243, 0.134641, 0.817313,
		0.801047, 0.163081, -0.575959,
		32.117329, 28.080624, 25.610023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822830, 28.676497, 26.140749>,  <31.556597, 27.966467, 26.013193>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822830, 28.676497, 26.140749> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007217, 28.577347, 25.799911>,  <32.117851, 28.517857, 25.595409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.007217, 28.577347, 25.799911>,  <31.822830, 28.676497, 26.140749>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.007217, 28.577347, 25.799911> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052602, 0.950878, -0.305065,
		0.885856, 0.185448, 0.425286,
		0.460969, -0.247872, -0.852096,
		32.145508, 28.502985, 25.544283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.332150, 29.220531, 25.990911>,  <31.822830, 28.676497, 26.140749>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.332150, 29.220531, 25.990911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.255589, 29.056889, 25.634037>,  <32.209652, 28.958702, 25.419912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.255589, 29.056889, 25.634037>,  <32.332150, 29.220531, 25.990911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.255589, 29.056889, 25.634037> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018077, 0.910306, -0.413540,
		0.981345, -0.063024, -0.181630,
		-0.191402, -0.409109, -0.892186,
		32.198170, 28.934156, 25.366381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447403, 29.769562, 25.540850>,  <32.332150, 29.220531, 25.990911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447403, 29.769562, 25.540850> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.274616, 29.521496, 25.278919>,  <32.170944, 29.372656, 25.121761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.274616, 29.521496, 25.278919>,  <32.447403, 29.769562, 25.540850>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274616, 29.521496, 25.278919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146006, 0.764572, -0.627784,
		0.889992, -0.175573, -0.420818,
		-0.431967, -0.620165, -0.654828,
		32.145027, 29.335447, 25.082470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709713, 30.035740, 24.896318>,  <32.447403, 29.769562, 25.540850>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709713, 30.035740, 24.896318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377831, 29.816887, 24.852066>,  <32.178703, 29.685575, 24.825514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.377831, 29.816887, 24.852066>,  <32.709713, 30.035740, 24.896318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.377831, 29.816887, 24.852066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392807, 0.713091, -0.580693,
		0.396608, -0.438345, -0.806571,
		-0.829702, -0.547133, -0.110632,
		32.128922, 29.652746, 24.818876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.555542, 30.171083, 24.216522>,  <32.709713, 30.035740, 24.896318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.555542, 30.171083, 24.216522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.206516, 30.041855, 24.363083>,  <31.997101, 29.964317, 24.451019>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.206516, 30.041855, 24.363083>,  <32.555542, 30.171083, 24.216522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206516, 30.041855, 24.363083> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488194, 0.550390, -0.677302,
		0.017153, -0.769867, -0.637974,
		-0.872566, -0.323073, 0.366404,
		31.944746, 29.944933, 24.473003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.112316, 29.986799, 23.647802>,  <32.555542, 30.171083, 24.216522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.112316, 29.986799, 23.647802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855577, 30.033295, 23.950993>,  <31.701534, 30.061192, 24.132906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.855577, 30.033295, 23.950993>,  <32.112316, 29.986799, 23.647802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.855577, 30.033295, 23.950993> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516216, 0.665441, -0.539174,
		-0.567061, -0.737344, -0.367105,
		-0.641844, 0.116239, 0.757975,
		31.663025, 30.068167, 24.178385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415102, 30.016716, 23.289438>,  <32.112316, 29.986799, 23.647802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415102, 30.016716, 23.289438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396904, 30.175591, 23.656082>,  <31.385986, 30.270916, 23.876068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.396904, 30.175591, 23.656082>,  <31.415102, 30.016716, 23.289438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.396904, 30.175591, 23.656082> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602653, 0.720870, -0.342280,
		-0.796706, -0.567969, 0.206571,
		-0.045493, 0.397187, 0.916610,
		31.383255, 30.294746, 23.931065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.651369, 30.105883, 23.505297>,  <31.415102, 30.016716, 23.289438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.651369, 30.105883, 23.505297> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853462, 30.387741, 23.704582>,  <30.974718, 30.556856, 23.824154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.853462, 30.387741, 23.704582>,  <30.651369, 30.105883, 23.505297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.853462, 30.387741, 23.704582> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520791, 0.709294, -0.475058,
		-0.688125, -0.019449, 0.725331,
		0.505233, 0.704645, 0.498212,
		31.005032, 30.599134, 23.854046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172245, 30.502541, 23.689606>,  <30.651369, 30.105883, 23.505297>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172245, 30.502541, 23.689606> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496361, 30.734608, 23.722675>,  <30.690830, 30.873848, 23.742517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.496361, 30.734608, 23.722675>,  <30.172245, 30.502541, 23.689606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.496361, 30.734608, 23.722675> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485485, 0.743574, -0.459785,
		-0.328225, 0.332423, 0.884174,
		0.810292, 0.580166, 0.082673,
		30.739449, 30.908657, 23.747477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974569, 31.093760, 24.001917>,  <30.172245, 30.502541, 23.689606>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974569, 31.093760, 24.001917> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.277929, 31.150398, 23.747429>,  <30.459946, 31.184381, 23.594736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.277929, 31.150398, 23.747429>,  <29.974569, 31.093760, 24.001917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.277929, 31.150398, 23.747429> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579107, 0.594323, -0.558046,
		0.299103, 0.791663, 0.532735,
		0.758401, 0.141597, -0.636222,
		30.505449, 31.192877, 23.556562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485519, 30.790421, 23.500031>,  <29.974569, 31.093760, 24.001917>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485519, 30.790421, 23.500031> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.146801, 30.599686, 23.594318>,  <28.943569, 30.485245, 23.650892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.146801, 30.599686, 23.594318>,  <29.485519, 30.790421, 23.500031>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.146801, 30.599686, 23.594318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428155, -0.348070, 0.833984,
		-0.315625, 0.807140, 0.498904,
		-0.846796, -0.476835, 0.235722,
		28.892761, 30.456635, 23.665035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311071, 30.879705, 24.250284>,  <29.485519, 30.790421, 23.500031>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311071, 30.879705, 24.250284> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.106148, 30.547432, 24.163101>,  <28.983192, 30.348068, 24.110792>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.106148, 30.547432, 24.163101>,  <29.311071, 30.879705, 24.250284>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106148, 30.547432, 24.163101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368857, -0.442026, 0.817654,
		-0.775552, 0.338498, 0.532858,
		-0.512311, -0.830682, -0.217957,
		28.952454, 30.298227, 24.097713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.829229, 30.716539, 24.913740>,  <29.311071, 30.879705, 24.250284>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.829229, 30.716539, 24.913740> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886414, 30.396351, 24.680912>,  <28.920725, 30.204237, 24.541214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.886414, 30.396351, 24.680912>,  <28.829229, 30.716539, 24.913740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.886414, 30.396351, 24.680912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235032, -0.543832, 0.805610,
		-0.961417, -0.251977, 0.110389,
		0.142962, -0.800471, -0.582072,
		28.929302, 30.156210, 24.506290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.462925, 30.244896, 25.429621>,  <28.829229, 30.716539, 24.913740>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.462925, 30.244896, 25.429621> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.647978, 30.025776, 25.150799>,  <28.759010, 29.894304, 24.983505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.647978, 30.025776, 25.150799>,  <28.462925, 30.244896, 25.429621>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647978, 30.025776, 25.150799> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128431, -0.736548, 0.664080,
		-0.877198, -0.396748, -0.270397,
		0.462633, -0.547802, -0.697054,
		28.786768, 29.861435, 24.941683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.176733, 29.503265, 25.371714>,  <28.462925, 30.244896, 25.429621>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.176733, 29.503265, 25.371714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.548367, 29.475792, 25.226341>,  <28.771347, 29.459309, 25.139118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.548367, 29.475792, 25.226341>,  <28.176733, 29.503265, 25.371714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.548367, 29.475792, 25.226341> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176831, -0.780548, 0.599563,
		-0.324854, -0.621311, -0.713051,
		0.929086, -0.068681, -0.363431,
		28.827093, 29.455187, 25.117311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.166733, 28.868061, 25.030586>,  <28.176733, 29.503265, 25.371714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.166733, 28.868061, 25.030586> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.547075, 28.945900, 25.126926>,  <28.775280, 28.992603, 25.184731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.547075, 28.945900, 25.126926>,  <28.166733, 28.868061, 25.030586>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547075, 28.945900, 25.126926> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067742, -0.889729, 0.451435,
		0.302139, -0.412933, -0.859185,
		0.950854, 0.194599, 0.240849,
		28.832331, 29.004280, 25.199181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.574053, 28.304464, 24.865271>,  <28.166733, 28.868061, 25.030586>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.574053, 28.304464, 24.865271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.838360, 28.483822, 25.106045>,  <28.996944, 28.591436, 25.250509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.838360, 28.483822, 25.106045>,  <28.574053, 28.304464, 24.865271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838360, 28.483822, 25.106045> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209675, -0.880294, 0.425581,
		0.720708, -0.155000, -0.675688,
		0.660769, 0.448395, 0.601935,
		29.036591, 28.618340, 25.286625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.223934, 27.842983, 24.947638>,  <28.574053, 28.304464, 24.865271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.223934, 27.842983, 24.947638> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.223406, 28.090660, 25.261734>,  <29.223089, 28.239265, 25.450191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.223406, 28.090660, 25.261734>,  <29.223934, 27.842983, 24.947638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223406, 28.090660, 25.261734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221706, -0.765517, 0.604012,
		0.975113, 0.174891, -0.136266,
		-0.001322, 0.619191, 0.785239,
		29.223009, 28.276417, 25.497305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.786192, 27.704193, 25.263441>,  <29.223934, 27.842983, 24.947638>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.786192, 27.704193, 25.263441> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.556095, 27.878548, 25.540310>,  <29.418037, 27.983160, 25.706432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.556095, 27.878548, 25.540310>,  <29.786192, 27.704193, 25.263441>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.556095, 27.878548, 25.540310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137322, -0.782724, 0.607030,
		0.806376, 0.444238, 0.390398,
		-0.575240, 0.435884, 0.692173,
		29.383524, 28.009314, 25.747961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.118786, 27.594946, 25.848862>,  <29.786192, 27.704193, 25.263441>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.118786, 27.594946, 25.848862> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.748844, 27.661709, 25.985558>,  <29.526878, 27.701767, 26.067575>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.748844, 27.661709, 25.985558>,  <30.118786, 27.594946, 25.848862>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748844, 27.661709, 25.985558> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116368, -0.731268, 0.672091,
		0.362080, 0.661354, 0.656894,
		-0.924855, 0.166909, 0.341738,
		29.471388, 27.711782, 26.088079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196152, 27.488701, 26.492626>,  <30.118786, 27.594946, 25.848862>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196152, 27.488701, 26.492626> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.797127, 27.463371, 26.480919>,  <29.557711, 27.448174, 26.473894>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.797127, 27.463371, 26.480919>,  <30.196152, 27.488701, 26.492626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797127, 27.463371, 26.480919> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023765, -0.702948, 0.710845,
		-0.065587, 0.708417, 0.702740,
		-0.997564, -0.063323, -0.029268,
		29.497858, 27.444374, 26.472137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.984114, 27.352249, 27.118107>,  <30.196152, 27.488701, 26.492626>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.984114, 27.352249, 27.118107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679972, 27.194580, 26.911617>,  <29.497486, 27.099979, 26.787724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.679972, 27.194580, 26.911617>,  <29.984114, 27.352249, 27.118107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.679972, 27.194580, 26.911617> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188879, -0.894634, 0.404914,
		-0.621436, 0.210375, 0.754692,
		-0.760357, -0.394173, -0.516222,
		29.451864, 27.076328, 26.756750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590767, 27.073524, 27.557795>,  <29.984114, 27.352249, 27.118107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590767, 27.073524, 27.557795> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498749, 26.887150, 27.216038>,  <29.443539, 26.775326, 27.010984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.498749, 26.887150, 27.216038>,  <29.590767, 27.073524, 27.557795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498749, 26.887150, 27.216038> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180046, -0.883159, 0.433145,
		-0.956380, -0.054186, 0.287056,
		-0.230046, -0.465934, -0.854391,
		29.429735, 26.747370, 26.959721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.017839, 26.531813, 27.740280>,  <29.590767, 27.073524, 27.557795>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.017839, 26.531813, 27.740280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152927, 26.411343, 27.383575>,  <29.233980, 26.339060, 27.169552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.152927, 26.411343, 27.383575>,  <29.017839, 26.531813, 27.740280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152927, 26.411343, 27.383575> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120720, -0.925742, 0.358369,
		-0.933472, -0.228683, -0.276286,
		0.337723, -0.301174, -0.891761,
		29.254244, 26.320990, 27.116047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670778, 25.856010, 27.583567>,  <29.017839, 26.531813, 27.740280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670778, 25.856010, 27.583567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986387, 25.851219, 27.337868>,  <29.175753, 25.848345, 27.190449>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.986387, 25.851219, 27.337868>,  <28.670778, 25.856010, 27.583567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.986387, 25.851219, 27.337868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218632, -0.928884, 0.298956,
		-0.574146, -0.370177, -0.730291,
		0.789022, -0.011979, -0.614248,
		29.223093, 25.847626, 27.153593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.630302, 25.221474, 27.256649>,  <28.670778, 25.856010, 27.583567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.630302, 25.221474, 27.256649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.012094, 25.331600, 27.210743>,  <29.241169, 25.397676, 27.183199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.012094, 25.331600, 27.210743>,  <28.630302, 25.221474, 27.256649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.012094, 25.331600, 27.210743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294331, -0.931737, 0.212686,
		-0.048373, -0.236782, -0.970358,
		0.954478, 0.275318, -0.114763,
		29.298437, 25.414196, 27.176313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885691, 24.677641, 26.893251>,  <28.630302, 25.221474, 27.256649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885691, 24.677641, 26.893251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207857, 24.857651, 27.047539>,  <29.401157, 24.965656, 27.140110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.207857, 24.857651, 27.047539>,  <28.885691, 24.677641, 26.893251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207857, 24.857651, 27.047539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378012, -0.891259, 0.250527,
		0.456517, -0.055973, -0.887952,
		0.805418, 0.450027, 0.385717,
		29.449482, 24.992659, 27.163254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<29.793863, 24.369379, 26.525663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838017, 24.532642, 26.888149>,  <29.864508, 24.630600, 27.105640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.838017, 24.532642, 26.888149>,  <29.793863, 24.369379, 26.525663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.838017, 24.532642, 26.888149> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493386, -0.814007, 0.306533,
		0.862778, 0.413277, -0.291232,
		0.110382, 0.408160, 0.906213,
		29.871132, 24.655090, 27.160013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.512993, 24.301722, 26.677906>,  <29.793863, 24.369379, 26.525663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.512993, 24.301722, 26.677906> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324167, 24.364586, 27.024883>,  <30.210873, 24.402304, 27.233070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.324167, 24.364586, 27.024883>,  <30.512993, 24.301722, 26.677906>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.324167, 24.364586, 27.024883> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591473, -0.673175, 0.443842,
		0.653695, 0.722590, 0.224825,
		-0.472062, 0.157160, 0.867443,
		30.182549, 24.411734, 27.285116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075371, 24.195097, 27.287552>,  <30.512993, 24.301722, 26.677906>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075371, 24.195097, 27.287552> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722136, 24.183853, 27.474899>,  <30.510195, 24.177107, 27.587307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.722136, 24.183853, 27.474899>,  <31.075371, 24.195097, 27.287552>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.722136, 24.183853, 27.474899> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394747, -0.584108, 0.709219,
		0.253643, 0.811189, 0.526914,
		-0.883086, -0.028109, 0.468369,
		30.457211, 24.175421, 27.615410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.245440, 24.188375, 28.038559>,  <31.075371, 24.195097, 27.287552>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.245440, 24.188375, 28.038559> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888195, 24.027218, 27.958530>,  <30.673849, 23.930523, 27.910513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.888195, 24.027218, 27.958530>,  <31.245440, 24.188375, 28.038559>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.888195, 24.027218, 27.958530> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211690, -0.768874, 0.603341,
		-0.396912, 0.496498, 0.771979,
		-0.893111, -0.402894, -0.200071,
		30.620262, 23.906349, 27.898508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996155, 23.906612, 28.739319>,  <31.245440, 24.188375, 28.038559>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996155, 23.906612, 28.739319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795313, 23.703316, 28.459438>,  <30.674809, 23.581337, 28.291510>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.795313, 23.703316, 28.459438>,  <30.996155, 23.906612, 28.739319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.795313, 23.703316, 28.459438> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167702, -0.850947, 0.497760,
		-0.848391, 0.132587, 0.512498,
		-0.502105, -0.508242, -0.699701,
		30.644682, 23.550844, 28.249529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.574339, 23.520205, 29.090281>,  <30.996155, 23.906612, 28.739319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.574339, 23.520205, 29.090281> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574823, 23.346359, 28.730034>,  <30.575115, 23.242052, 28.513885>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.574823, 23.346359, 28.730034>,  <30.574339, 23.520205, 29.090281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.574823, 23.346359, 28.730034> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165737, -0.888074, 0.428785,
		-0.986169, -0.149785, 0.070955,
		0.001212, -0.434615, -0.900616,
		30.575188, 23.215975, 28.459848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.974874, 23.000652, 29.077253>,  <30.574339, 23.520205, 29.090281>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.974874, 23.000652, 29.077253> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251106, 22.901176, 28.805592>,  <30.416845, 22.841490, 28.642595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.251106, 22.901176, 28.805592>,  <29.974874, 23.000652, 29.077253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.251106, 22.901176, 28.805592> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099633, -0.897361, 0.429903,
		-0.716360, -0.364549, -0.594922,
		0.690581, -0.248691, -0.679154,
		30.458281, 22.826569, 28.601845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842060, 22.237194, 29.105949>,  <29.974874, 23.000652, 29.077253>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842060, 22.237194, 29.105949> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192980, 22.274586, 28.917648>,  <30.403532, 22.297020, 28.804667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.192980, 22.274586, 28.917648>,  <29.842060, 22.237194, 29.105949>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192980, 22.274586, 28.917648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228558, -0.943860, 0.238517,
		-0.422030, -0.316845, -0.849411,
		0.877298, 0.093478, -0.470755,
		30.456169, 22.302629, 28.776423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.916580, 21.647535, 28.768915>,  <29.842060, 22.237194, 29.105949>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.916580, 21.647535, 28.768915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280170, 21.797432, 28.841946>,  <30.498323, 21.887369, 28.885763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.280170, 21.797432, 28.841946>,  <29.916580, 21.647535, 28.768915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280170, 21.797432, 28.841946> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271918, -0.865010, 0.421686,
		0.315953, -0.333656, -0.888171,
		0.908974, 0.374742, 0.182576,
		30.552862, 21.909855, 28.896719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.441818, 21.105715, 28.591686>,  <29.916580, 21.647535, 28.768915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.441818, 21.105715, 28.591686> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627810, 21.378265, 28.817791>,  <30.739405, 21.541796, 28.953453>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.627810, 21.378265, 28.817791>,  <30.441818, 21.105715, 28.591686>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627810, 21.378265, 28.817791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187250, -0.699728, 0.689433,
		0.865292, -0.214727, -0.452948,
		0.464980, 0.681375, 0.565262,
		30.767303, 21.582678, 28.987370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097979, 20.685728, 28.841011>,  <30.441818, 21.105715, 28.591686>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097979, 20.685728, 28.841011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003826, 20.992359, 29.079994>,  <30.947334, 21.176338, 29.223385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003826, 20.992359, 29.079994>,  <31.097979, 20.685728, 28.841011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003826, 20.992359, 29.079994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175905, -0.570976, 0.801900,
		0.955852, 0.293847, -0.000449,
		-0.235379, 0.766577, 0.597458,
		30.933212, 21.222332, 29.259232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591526, 20.697329, 29.386690>,  <31.097979, 20.685728, 28.841011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591526, 20.697329, 29.386690> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253466, 20.871887, 29.510159>,  <31.050629, 20.976622, 29.584240>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.253466, 20.871887, 29.510159>,  <31.591526, 20.697329, 29.386690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.253466, 20.871887, 29.510159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067615, -0.660105, 0.748124,
		0.530233, 0.611407, 0.587396,
		-0.845151, 0.436397, 0.308669,
		30.999920, 21.002806, 29.602758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.531811, 20.788445, 30.186861>,  <31.591526, 20.697329, 29.386690>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.531811, 20.788445, 30.186861> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149801, 20.800365, 30.068851>,  <30.920595, 20.807518, 29.998047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.149801, 20.800365, 30.068851>,  <31.531811, 20.788445, 30.186861>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149801, 20.800365, 30.068851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248350, -0.624002, 0.740907,
		-0.162014, 0.780854, 0.603340,
		-0.955026, 0.029802, -0.295022,
		30.863293, 20.809305, 29.980345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.226492, 20.674147, 30.782400>,  <31.531811, 20.788445, 30.186861>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.226492, 20.674147, 30.782400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932365, 20.600681, 30.521454>,  <30.755890, 20.556602, 30.364887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.932365, 20.600681, 30.521454>,  <31.226492, 20.674147, 30.782400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.932365, 20.600681, 30.521454> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397282, -0.663038, 0.634467,
		-0.549071, 0.725705, 0.414575,
		-0.735315, -0.183664, -0.652364,
		30.711771, 20.545582, 30.325745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.646433, 20.706598, 31.187481>,  <31.226492, 20.674147, 30.782400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.646433, 20.706598, 31.187481> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.509987, 20.487267, 30.882069>,  <30.428120, 20.355667, 30.698822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.509987, 20.487267, 30.882069>,  <30.646433, 20.706598, 31.187481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.509987, 20.487267, 30.882069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296317, -0.708113, 0.640915,
		-0.892097, 0.444872, 0.079069,
		-0.341115, -0.548329, -0.763529,
		30.407652, 20.322767, 30.653009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.981930, 20.472952, 31.353619>,  <30.646433, 20.706598, 31.187481>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.981930, 20.472952, 31.353619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068022, 20.224388, 31.052280>,  <30.119677, 20.075251, 30.871477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.068022, 20.224388, 31.052280>,  <29.981930, 20.472952, 31.353619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.068022, 20.224388, 31.052280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295791, -0.776670, 0.556140,
		-0.930689, 0.103134, -0.350971,
		0.215231, -0.621408, -0.753344,
		30.132591, 20.037966, 30.826277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.393730, 20.060253, 31.235535>,  <29.981930, 20.472952, 31.353619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.393730, 20.060253, 31.235535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693974, 19.871033, 31.051010>,  <29.874119, 19.757500, 30.940296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.693974, 19.871033, 31.051010>,  <29.393730, 20.060253, 31.235535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.693974, 19.871033, 31.051010> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251765, -0.850258, 0.462250,
		-0.610902, -0.230828, -0.757310,
		0.750609, -0.473053, -0.461310,
		29.919157, 19.729116, 30.912617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.098593, 19.268869, 31.254320>,  <29.393730, 20.060253, 31.235535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.098593, 19.268869, 31.254320> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489708, 19.242027, 31.174896>,  <29.724377, 19.225922, 31.127241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.489708, 19.242027, 31.174896>,  <29.098593, 19.268869, 31.254320>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489708, 19.242027, 31.174896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064637, -0.804648, 0.590223,
		-0.199378, -0.589948, -0.782439,
		0.977789, -0.067103, -0.198561,
		29.783045, 19.221897, 31.115328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.140074, 18.569038, 31.110802>,  <29.098593, 19.268869, 31.254320>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.140074, 18.569038, 31.110802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505331, 18.691944, 31.217949>,  <29.724485, 18.765688, 31.282238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.505331, 18.691944, 31.217949>,  <29.140074, 18.569038, 31.110802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.505331, 18.691944, 31.217949> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060693, -0.752290, 0.656030,
		0.403092, -0.582793, -0.705599,
		0.913145, 0.307265, 0.267870,
		29.779274, 18.784124, 31.298309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.578894, 17.969215, 31.153349>,  <29.140074, 18.569038, 31.110802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.578894, 17.969215, 31.153349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781069, 18.233105, 31.375809>,  <29.902374, 18.391438, 31.509285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.781069, 18.233105, 31.375809>,  <29.578894, 17.969215, 31.153349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.781069, 18.233105, 31.375809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261036, -0.731243, 0.630194,
		0.822432, -0.173349, -0.541808,
		0.505436, 0.659723, 0.556147,
		29.932699, 18.431021, 31.542652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.287960, 17.645580, 31.422213>,  <29.578894, 17.969215, 31.153349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.287960, 17.645580, 31.422213> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211945, 17.954159, 31.665115>,  <30.166336, 18.139305, 31.810856>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.211945, 17.954159, 31.665115>,  <30.287960, 17.645580, 31.422213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.211945, 17.954159, 31.665115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290268, -0.546726, 0.785388,
		0.937886, 0.325520, -0.120028,
		-0.190037, 0.771445, 0.607255,
		30.154934, 18.185593, 31.847292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.847786, 17.699833, 31.843010>,  <30.287960, 17.645580, 31.422213>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.847786, 17.699833, 31.843010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556271, 17.884285, 32.045486>,  <30.381361, 17.994955, 32.166973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.556271, 17.884285, 32.045486>,  <30.847786, 17.699833, 31.843010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556271, 17.884285, 32.045486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260772, -0.496629, 0.827863,
		0.633141, 0.735336, 0.241687,
		-0.728787, 0.461129, 0.506191,
		30.337635, 18.022623, 32.197346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058744, 18.197361, 32.313389>,  <30.847786, 17.699833, 31.843010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058744, 18.197361, 32.313389> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713993, 18.038929, 32.440060>,  <30.507141, 17.943869, 32.516060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.713993, 18.038929, 32.440060>,  <31.058744, 18.197361, 32.313389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.713993, 18.038929, 32.440060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473583, -0.405362, 0.781921,
		-0.181337, 0.823894, 0.536951,
		-0.861879, -0.396082, 0.316675,
		30.455429, 17.920105, 32.535061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.896538, 18.461340, 32.996971>,  <31.058744, 18.197361, 32.313389>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.896538, 18.461340, 32.996971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.798819, 18.093914, 32.872677>,  <30.740187, 17.873459, 32.798100>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.798819, 18.093914, 32.872677>,  <30.896538, 18.461340, 32.996971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.798819, 18.093914, 32.872677> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740793, -0.383563, 0.551457,
		-0.625735, -0.095470, 0.774171,
		-0.244296, -0.918567, -0.310732,
		30.725531, 17.818344, 32.779457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.184551, 19.191795, 33.008774>,  <30.896538, 18.461340, 32.996971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.184551, 19.191795, 33.008774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517998, 19.194038, 33.229702>,  <31.718065, 19.195385, 33.362259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.517998, 19.194038, 33.229702>,  <31.184551, 19.191795, 33.008774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.517998, 19.194038, 33.229702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433333, 0.613413, -0.660263,
		-0.342501, 0.789742, 0.508921,
		0.833616, 0.005609, 0.552316,
		31.768082, 19.195721, 33.395397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411861, 19.759583, 32.959728>,  <31.184551, 19.191795, 33.008774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411861, 19.759583, 32.959728> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754316, 19.608841, 33.101154>,  <31.959789, 19.518396, 33.186008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.754316, 19.608841, 33.101154>,  <31.411861, 19.759583, 32.959728>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.754316, 19.608841, 33.101154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516266, 0.653293, -0.553784,
		-0.022285, 0.656650, 0.753866,
		0.856138, -0.376855, 0.353565,
		32.011158, 19.495785, 33.207222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.827660, 20.285915, 33.006969>,  <31.411861, 19.759583, 32.959728>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.827660, 20.285915, 33.006969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084866, 19.979588, 33.009926>,  <32.239189, 19.795792, 33.011700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.084866, 19.979588, 33.009926>,  <31.827660, 20.285915, 33.006969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.084866, 19.979588, 33.009926> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716254, 0.597925, -0.359814,
		0.271132, 0.236661, 0.932995,
		0.643015, -0.765818, 0.007393,
		32.277771, 19.749842, 33.012142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444145, 20.540531, 33.160957>,  <31.827660, 20.285915, 33.006969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444145, 20.540531, 33.160957> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547867, 20.205181, 32.969170>,  <32.610100, 20.003971, 32.854099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.547867, 20.205181, 32.969170>,  <32.444145, 20.540531, 33.160957>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547867, 20.205181, 32.969170> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709812, 0.502082, -0.494045,
		0.654926, -0.212222, 0.725282,
		0.259304, -0.838376, -0.479465,
		32.625656, 19.953669, 32.825329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.227890, 20.513288, 33.126694>,  <32.444145, 20.540531, 33.160957>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.227890, 20.513288, 33.126694> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078148, 20.275070, 32.842388>,  <32.988304, 20.132139, 32.671806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.078148, 20.275070, 32.842388>,  <33.227890, 20.513288, 33.126694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.078148, 20.275070, 32.842388> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574511, 0.452700, -0.681909,
		0.727871, -0.663616, 0.172677,
		-0.374355, -0.595547, -0.710762,
		32.965843, 20.096407, 32.629158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796738, 20.372023, 32.629635>,  <33.227890, 20.513288, 33.126694>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796738, 20.372023, 32.629635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475288, 20.252373, 32.423832>,  <33.282421, 20.180582, 32.300350>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.475288, 20.252373, 32.423832>,  <33.796738, 20.372023, 32.629635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475288, 20.252373, 32.423832> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377586, 0.411977, -0.829279,
		0.460027, -0.860695, -0.218125,
		-0.803620, -0.299129, -0.514507,
		33.234203, 20.162636, 32.269482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109776, 20.192450, 31.968224>,  <33.796738, 20.372023, 32.629635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.109776, 20.192450, 31.968224> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721691, 20.266857, 31.906136>,  <33.488842, 20.311502, 31.868883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.721691, 20.266857, 31.906136>,  <34.109776, 20.192450, 31.968224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.721691, 20.266857, 31.906136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233763, 0.550455, -0.801470,
		-0.063646, -0.813877, -0.577540,
		-0.970208, 0.186018, -0.155220,
		33.430630, 20.322662, 31.859570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987694, 20.084906, 31.279335>,  <34.109776, 20.192450, 31.968224>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987694, 20.084906, 31.279335> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690651, 20.319172, 31.409275>,  <33.512424, 20.459732, 31.487238>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.690651, 20.319172, 31.409275>,  <33.987694, 20.084906, 31.279335>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690651, 20.319172, 31.409275> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066647, 0.547263, -0.834303,
		-0.666401, -0.597910, -0.445435,
		-0.742609, 0.585667, 0.324848,
		33.467869, 20.494871, 31.506729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.568085, 20.193325, 30.605396>,  <33.987694, 20.084906, 31.279335>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.568085, 20.193325, 30.605396> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446365, 20.482265, 30.853786>,  <33.373333, 20.655630, 31.002821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.446365, 20.482265, 30.853786>,  <33.568085, 20.193325, 30.605396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.446365, 20.482265, 30.853786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291409, 0.550047, -0.782643,
		-0.906908, -0.419117, 0.043120,
		-0.304301, 0.722350, 0.620976,
		33.355076, 20.698971, 31.040079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.939095, 20.426138, 30.412672>,  <33.568085, 20.193325, 30.605396>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.939095, 20.426138, 30.412672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063656, 20.741161, 30.625381>,  <33.138393, 20.930176, 30.753008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.063656, 20.741161, 30.625381>,  <32.939095, 20.426138, 30.412672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.063656, 20.741161, 30.625381> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267384, 0.609605, -0.746249,
		-0.911886, 0.090194, 0.400412,
		0.311400, 0.787557, 0.531774,
		33.157078, 20.977428, 30.784914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.450653, 20.943760, 30.261383>,  <32.939095, 20.426138, 30.412672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.450653, 20.943760, 30.261383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757160, 21.150654, 30.413860>,  <32.941063, 21.274790, 30.505346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.757160, 21.150654, 30.413860>,  <32.450653, 20.943760, 30.261383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.757160, 21.150654, 30.413860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135660, 0.710136, -0.690872,
		-0.628042, 0.477677, 0.614319,
		0.766263, 0.517235, 0.381193,
		32.987038, 21.305824, 30.528219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157360, 21.576241, 30.404652>,  <32.450653, 20.943760, 30.261383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157360, 21.576241, 30.404652> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553101, 21.633152, 30.392433>,  <32.790546, 21.667299, 30.385101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.553101, 21.633152, 30.392433>,  <32.157360, 21.576241, 30.404652>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553101, 21.633152, 30.392433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131054, 0.779917, -0.612008,
		-0.063250, 0.609497, 0.790262,
		0.989355, 0.142276, -0.030547,
		32.849907, 21.675835, 30.383268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.220856, 22.276791, 30.479952>,  <32.157360, 21.576241, 30.404652>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.220856, 22.276791, 30.479952> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571495, 22.162373, 30.325157>,  <32.781879, 22.093721, 30.232281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.571495, 22.162373, 30.325157>,  <32.220856, 22.276791, 30.479952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.571495, 22.162373, 30.325157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082361, 0.703122, -0.706283,
		0.474126, 0.650998, 0.592795,
		0.876596, -0.286044, -0.386985,
		32.834473, 22.076559, 30.209061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540314, 22.893661, 30.373789>,  <32.220856, 22.276791, 30.479952>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540314, 22.893661, 30.373789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696461, 22.613491, 30.134785>,  <32.790150, 22.445389, 29.991383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.696461, 22.613491, 30.134785>,  <32.540314, 22.893661, 30.373789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.696461, 22.613491, 30.134785> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007372, 0.646602, -0.762792,
		0.920629, 0.302175, 0.247250,
		0.390369, -0.700425, -0.597508,
		32.813572, 22.403364, 29.955532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.985706, 23.315157, 30.010412>,  <32.540314, 22.893661, 30.373789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.985706, 23.315157, 30.010412> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970474, 22.964581, 29.818413>,  <32.961334, 22.754234, 29.703213>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.970474, 22.964581, 29.818413>,  <32.985706, 23.315157, 30.010412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.970474, 22.964581, 29.818413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154505, 0.469406, -0.869359,
		0.987258, -0.107268, 0.117540,
		-0.038080, -0.876442, -0.479999,
		32.959049, 22.701649, 29.674414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.572510, 23.259567, 29.653908>,  <32.985706, 23.315157, 30.010412>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.572510, 23.259567, 29.653908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302662, 23.024727, 29.474934>,  <33.140751, 22.883823, 29.367550>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.302662, 23.024727, 29.474934>,  <33.572510, 23.259567, 29.653908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.302662, 23.024727, 29.474934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013224, 0.615661, -0.787900,
		0.738044, -0.525618, -0.423103,
		-0.674623, -0.587100, -0.447434,
		33.100273, 22.848597, 29.340704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.854313, 23.079762, 29.060555>,  <33.572510, 23.259567, 29.653908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.854313, 23.079762, 29.060555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458500, 23.052822, 29.009491>,  <33.221012, 23.036659, 28.978853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.458500, 23.052822, 29.009491>,  <33.854313, 23.079762, 29.060555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.458500, 23.052822, 29.009491> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044391, 0.699577, -0.713178,
		0.137338, -0.711377, -0.689262,
		-0.989529, -0.067349, -0.127657,
		33.161640, 23.032618, 28.971193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.780270, 23.123899, 28.327606>,  <33.854313, 23.079762, 29.060555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.780270, 23.123899, 28.327606> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413715, 23.190022, 28.473434>,  <33.193783, 23.229694, 28.560932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.413715, 23.190022, 28.473434>,  <33.780270, 23.123899, 28.327606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.413715, 23.190022, 28.473434> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181176, 0.640849, -0.745981,
		-0.356949, -0.749658, -0.557315,
		-0.916385, 0.165305, 0.364571,
		33.138798, 23.239613, 28.582806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234890, 23.027260, 27.799047>,  <33.780270, 23.123899, 28.327606>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234890, 23.027260, 27.799047> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087265, 23.269730, 28.080853>,  <32.998688, 23.415213, 28.249935>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.087265, 23.269730, 28.080853>,  <33.234890, 23.027260, 27.799047>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.087265, 23.269730, 28.080853> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228111, 0.675763, -0.700935,
		-0.900975, -0.419398, -0.111125,
		-0.369065, 0.606176, 0.704515,
		32.976547, 23.451582, 28.292208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.540367, 23.290199, 27.556747>,  <33.234890, 23.027260, 27.799047>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.540367, 23.290199, 27.556747> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688343, 23.539135, 27.832672>,  <32.777130, 23.688496, 27.998226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.688343, 23.539135, 27.832672>,  <32.540367, 23.290199, 27.556747>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688343, 23.539135, 27.832672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200752, 0.778493, -0.594683,
		-0.907107, 0.081515, 0.412930,
		0.369939, 0.622338, 0.689812,
		32.799324, 23.725836, 28.039616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.016970, 38.495838, 16.560158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274128, 38.440308, 16.258850>,  <20.428423, 38.406990, 16.078066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.274128, 38.440308, 16.258850>,  <20.016970, 38.495838, 16.560158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.274128, 38.440308, 16.258850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427286, -0.751197, 0.503120,
		-0.635697, -0.645315, -0.423626,
		0.642897, -0.138822, -0.753267,
		20.466997, 38.398663, 16.032869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.005962, 37.853073, 16.333345>,  <20.016970, 38.495838, 16.560158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.005962, 37.853073, 16.333345> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369282, 37.973186, 16.216846>,  <20.587273, 38.045254, 16.146946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.369282, 37.973186, 16.216846>,  <20.005962, 37.853073, 16.333345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.369282, 37.973186, 16.216846> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406151, -0.799770, 0.442051,
		-0.100190, -0.519804, -0.848390,
		0.908297, 0.300285, -0.291248,
		20.641771, 38.063271, 16.129473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.415028, 37.297009, 15.997895>,  <20.005962, 37.853073, 16.333345>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.415028, 37.297009, 15.997895> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.693514, 37.545689, 16.141434>,  <20.860605, 37.694897, 16.227556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.693514, 37.545689, 16.141434>,  <20.415028, 37.297009, 15.997895>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.693514, 37.545689, 16.141434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363259, -0.736307, 0.570872,
		0.619132, -0.267097, -0.738468,
		0.696218, 0.621700, 0.358846,
		20.902380, 37.732197, 16.249088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065304, 37.022793, 15.941936>,  <20.415028, 37.297009, 15.997895>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065304, 37.022793, 15.941936> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109440, 37.293621, 16.232975>,  <21.135921, 37.456120, 16.407598>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.109440, 37.293621, 16.232975>,  <21.065304, 37.022793, 15.941936>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.109440, 37.293621, 16.232975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440512, -0.689549, 0.574866,
		0.890940, 0.257085, -0.374343,
		0.110339, 0.677074, 0.727596,
		21.142542, 37.496742, 16.451254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703402, 36.909431, 16.215576>,  <21.065304, 37.022793, 15.941936>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703402, 36.909431, 16.215576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.498943, 37.102283, 16.500191>,  <21.376268, 37.217995, 16.670959>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.498943, 37.102283, 16.500191>,  <21.703402, 36.909431, 16.215576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.498943, 37.102283, 16.500191> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333843, -0.651486, 0.681260,
		0.792011, 0.585763, 0.172048,
		-0.511144, 0.482128, 0.711537,
		21.345600, 37.246922, 16.713652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.989780, 36.739346, 16.734629>,  <21.703402, 36.909431, 16.215576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.989780, 36.739346, 16.734629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.662233, 36.875862, 16.919228>,  <21.465706, 36.957771, 17.029987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.662233, 36.875862, 16.919228>,  <21.989780, 36.739346, 16.734629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.662233, 36.875862, 16.919228> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234421, -0.535059, 0.811640,
		0.523932, 0.772809, 0.358136,
		-0.818866, 0.341289, 0.461497,
		21.416573, 36.978249, 17.057676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.167477, 36.866203, 17.311211>,  <21.989780, 36.739346, 16.734629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.167477, 36.866203, 17.311211> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.778275, 36.843033, 17.400570>,  <21.544754, 36.829128, 17.454185>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.778275, 36.843033, 17.400570>,  <22.167477, 36.866203, 17.311211>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.778275, 36.843033, 17.400570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225638, -0.442090, 0.868127,
		0.048470, 0.895098, 0.443227,
		-0.973005, -0.057930, 0.223396,
		21.486374, 36.825653, 17.467588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.077023, 37.234943, 17.957041>,  <22.167477, 36.866203, 17.311211>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.077023, 37.234943, 17.957041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772396, 36.978264, 17.920734>,  <21.589621, 36.824257, 17.898951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.772396, 36.978264, 17.920734>,  <22.077023, 37.234943, 17.957041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.772396, 36.978264, 17.920734> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222005, -0.389890, 0.893700,
		-0.608875, 0.660461, 0.439388,
		-0.761567, -0.641698, -0.090768,
		21.543926, 36.785755, 17.893503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.753265, 37.295723, 18.526001>,  <22.077023, 37.234943, 17.957041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.753265, 37.295723, 18.526001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598703, 36.947540, 18.404022>,  <21.505966, 36.738628, 18.330835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.598703, 36.947540, 18.404022>,  <21.753265, 37.295723, 18.526001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.598703, 36.947540, 18.404022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057749, -0.307144, 0.949910,
		-0.920520, 0.384660, 0.068413,
		-0.386405, -0.870459, -0.304946,
		21.482782, 36.686401, 18.312538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.222191, 37.143356, 19.029663>,  <21.753265, 37.295723, 18.526001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.222191, 37.143356, 19.029663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285166, 36.798950, 18.836224>,  <21.322950, 36.592308, 18.720160>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.285166, 36.798950, 18.836224>,  <21.222191, 37.143356, 19.029663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.285166, 36.798950, 18.836224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183556, -0.506686, 0.842364,
		-0.970320, -0.043851, -0.237815,
		0.157436, -0.861015, -0.483598,
		21.332397, 36.540646, 18.691145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.846569, 36.661396, 19.334246>,  <21.222191, 37.143356, 19.029663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.846569, 36.661396, 19.334246> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105183, 36.434681, 19.129993>,  <21.260351, 36.298653, 19.007442>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.105183, 36.434681, 19.129993>,  <20.846569, 36.661396, 19.334246>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.105183, 36.434681, 19.129993> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072324, -0.711862, 0.698585,
		-0.759453, -0.414725, -0.501233,
		0.646529, -0.566794, -0.510632,
		21.299143, 36.264645, 18.976805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.595686, 36.006702, 19.289082>,  <20.846569, 36.661396, 19.334246>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.595686, 36.006702, 19.289082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.974899, 35.904758, 19.212891>,  <21.202427, 35.843594, 19.167177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.974899, 35.904758, 19.212891>,  <20.595686, 36.006702, 19.289082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.974899, 35.904758, 19.212891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039137, -0.687520, 0.725110,
		-0.315755, -0.679973, -0.661767,
		0.948033, -0.254856, -0.190475,
		21.259310, 35.828300, 19.155748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.632225, 35.301517, 19.490046>,  <20.595686, 36.006702, 19.289082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.632225, 35.301517, 19.490046> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017193, 35.410084, 19.493690>,  <21.248173, 35.475224, 19.495878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.017193, 35.410084, 19.493690>,  <20.632225, 35.301517, 19.490046>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.017193, 35.410084, 19.493690> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222556, -0.807507, 0.546261,
		0.155625, -0.523704, -0.837565,
		0.962419, 0.271417, 0.009114,
		21.305918, 35.491508, 19.496426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.065784, 34.661232, 19.326891>,  <20.632225, 35.301517, 19.490046>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.065784, 34.661232, 19.326891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280432, 34.937382, 19.520973>,  <21.409220, 35.103073, 19.637423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.280432, 34.937382, 19.520973>,  <21.065784, 34.661232, 19.326891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.280432, 34.937382, 19.520973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264640, -0.683687, 0.680102,
		0.801253, -0.236551, -0.549580,
		0.536619, 0.690374, 0.485205,
		21.441418, 35.144493, 19.666534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645031, 34.329166, 19.600416>,  <21.065784, 34.661232, 19.326891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645031, 34.329166, 19.600416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651470, 34.677547, 19.796860>,  <21.655334, 34.886574, 19.914726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.651470, 34.677547, 19.796860>,  <21.645031, 34.329166, 19.600416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.651470, 34.677547, 19.796860> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379843, -0.459677, 0.802755,
		0.924911, 0.173621, -0.338224,
		0.016098, 0.870949, 0.491109,
		21.656300, 34.938831, 19.944193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.364063, 34.434235, 19.846487>,  <21.645031, 34.329166, 19.600416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.364063, 34.434235, 19.846487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.115055, 34.649757, 20.073524>,  <21.965651, 34.779072, 20.209747>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.115055, 34.649757, 20.073524>,  <22.364063, 34.434235, 19.846487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.115055, 34.649757, 20.073524> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364638, -0.442036, 0.819538,
		0.692466, 0.717144, 0.078708,
		-0.622518, 0.538803, 0.567594,
		21.928299, 34.811398, 20.243803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.805935, 34.665730, 20.350054>,  <22.364063, 34.434235, 19.846487>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.805935, 34.665730, 20.350054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433630, 34.681396, 20.495464>,  <22.210247, 34.690796, 20.582710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.433630, 34.681396, 20.495464>,  <22.805935, 34.665730, 20.350054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.433630, 34.681396, 20.495464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290567, -0.524274, 0.800442,
		0.221935, 0.850648, 0.476595,
		-0.930761, 0.039164, 0.363525,
		22.154402, 34.693146, 20.604523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.843790, 34.945858, 20.986876>,  <22.805935, 34.665730, 20.350054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.843790, 34.945858, 20.986876> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.526289, 34.704742, 20.954365>,  <22.335789, 34.560074, 20.934858>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.526289, 34.704742, 20.954365>,  <22.843790, 34.945858, 20.986876>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.526289, 34.704742, 20.954365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296958, -0.500670, 0.813109,
		-0.530822, 0.621272, 0.576411,
		-0.793753, -0.602786, -0.081275,
		22.288162, 34.523907, 20.929983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.678177, 34.898834, 21.750587>,  <22.843790, 34.945858, 20.986876>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.678177, 34.898834, 21.750587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.455465, 34.621590, 21.567459>,  <22.321838, 34.455242, 21.457582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.455465, 34.621590, 21.567459>,  <22.678177, 34.898834, 21.750587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.455465, 34.621590, 21.567459> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087932, -0.597234, 0.797233,
		-0.825993, 0.403626, 0.393474,
		-0.556780, -0.693107, -0.457819,
		22.288431, 34.413658, 21.430113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215107, 34.746792, 22.285469>,  <22.678177, 34.898834, 21.750587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215107, 34.746792, 22.285469> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.183847, 34.425270, 22.049572>,  <22.165092, 34.232357, 21.908033>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.183847, 34.425270, 22.049572>,  <22.215107, 34.746792, 22.285469>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.183847, 34.425270, 22.049572> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146822, -0.575824, 0.804283,
		-0.986071, 0.149440, -0.073017,
		-0.078147, -0.803800, -0.589744,
		22.160404, 34.184132, 21.872648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.564459, 34.459976, 22.456522>,  <22.215107, 34.746792, 22.285469>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.564459, 34.459976, 22.456522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795044, 34.174656, 22.297073>,  <21.933395, 34.003464, 22.201405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.795044, 34.174656, 22.297073>,  <21.564459, 34.459976, 22.456522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.795044, 34.174656, 22.297073> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304600, -0.640256, 0.705188,
		-0.758229, -0.285093, -0.586353,
		0.576461, -0.713297, -0.398622,
		21.967983, 33.960667, 22.177486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.639614, 35.183002, 22.414843>,  <21.564459, 34.459976, 22.456522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.639614, 35.183002, 22.414843> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.528627, 35.461334, 22.679821>,  <21.462036, 35.628334, 22.838808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.528627, 35.461334, 22.679821>,  <21.639614, 35.183002, 22.414843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.528627, 35.461334, 22.679821> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470571, 0.502717, -0.725147,
		-0.837602, -0.512931, 0.187951,
		-0.277465, 0.695829, 0.662447,
		21.445389, 35.670082, 22.878555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.865633, 35.378773, 22.314762>,  <21.639614, 35.183002, 22.414843>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.865633, 35.378773, 22.314762> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056078, 35.682583, 22.492050>,  <21.170345, 35.864868, 22.598423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.056078, 35.682583, 22.492050>,  <20.865633, 35.378773, 22.314762>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.056078, 35.682583, 22.492050> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354402, 0.626991, -0.693744,
		-0.804809, 0.173221, 0.567694,
		0.476111, 0.759524, 0.443218,
		21.198912, 35.910439, 22.625015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.351723, 35.906826, 22.330048>,  <20.865633, 35.378773, 22.314762>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.351723, 35.906826, 22.330048> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704779, 36.086796, 22.384480>,  <20.916613, 36.194778, 22.417139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.704779, 36.086796, 22.384480>,  <20.351723, 35.906826, 22.330048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.704779, 36.086796, 22.384480> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289905, 0.748943, -0.595852,
		-0.370003, 0.486473, 0.791481,
		0.882640, 0.449921, 0.136080,
		20.969570, 36.221771, 22.425304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.130636, 36.499191, 22.458229>,  <20.351723, 35.906826, 22.330048>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.130636, 36.499191, 22.458229> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.510794, 36.552162, 22.345650>,  <20.738888, 36.583946, 22.278101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.510794, 36.552162, 22.345650>,  <20.130636, 36.499191, 22.458229>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.510794, 36.552162, 22.345650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281635, 0.750449, -0.597919,
		0.132034, 0.647525, 0.750518,
		0.950394, 0.132426, -0.281451,
		20.795912, 36.591888, 22.261215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.288095, 37.255684, 22.469004>,  <20.130636, 36.499191, 22.458229>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.288095, 37.255684, 22.469004> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550732, 37.080051, 22.223698>,  <20.708313, 36.974674, 22.076513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.550732, 37.080051, 22.223698>,  <20.288095, 37.255684, 22.469004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.550732, 37.080051, 22.223698> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124755, 0.738664, -0.662428,
		0.743856, 0.511453, 0.430224,
		0.656593, -0.439079, -0.613267,
		20.747709, 36.948326, 22.039717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.678486, 37.782536, 22.271347>,  <20.288095, 37.255684, 22.469004>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.678486, 37.782536, 22.271347> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.771322, 37.510006, 21.993664>,  <20.827024, 37.346489, 21.827053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.771322, 37.510006, 21.993664>,  <20.678486, 37.782536, 22.271347>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.771322, 37.510006, 21.993664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003678, 0.714308, -0.699822,
		0.972687, 0.159870, 0.168291,
		0.232092, -0.681326, -0.694210,
		20.840950, 37.305607, 21.785400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.212626, 38.057125, 21.906656>,  <20.678486, 37.782536, 22.271347>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.212626, 38.057125, 21.906656> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070755, 37.773315, 21.663090>,  <20.985632, 37.603031, 21.516949>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.070755, 37.773315, 21.663090>,  <21.212626, 38.057125, 21.906656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.070755, 37.773315, 21.663090> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131624, 0.606882, -0.783817,
		0.925678, -0.358151, -0.121857,
		-0.354678, -0.709522, -0.608918,
		20.964352, 37.560459, 21.480413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.616030, 38.068203, 21.293402>,  <21.212626, 38.057125, 21.906656>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.616030, 38.068203, 21.293402> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.269535, 37.895512, 21.192810>,  <21.061638, 37.791897, 21.132456>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.269535, 37.895512, 21.192810>,  <21.616030, 38.068203, 21.293402>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.269535, 37.895512, 21.192810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033897, 0.552946, -0.832527,
		0.498479, -0.712643, -0.493618,
		-0.866239, -0.431730, -0.251476,
		21.009665, 37.765991, 21.117367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.606302, 37.907681, 20.644051>,  <21.616030, 38.068203, 21.293402>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.606302, 37.907681, 20.644051> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.207853, 37.935890, 20.665104>,  <20.968784, 37.952816, 20.677736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.207853, 37.935890, 20.665104>,  <21.606302, 37.907681, 20.644051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.207853, 37.935890, 20.665104> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014213, 0.461305, -0.887128,
		-0.086846, -0.884434, -0.458513,
		-0.996120, 0.070526, 0.052633,
		20.909018, 37.957047, 20.680893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.292801, 37.759594, 19.962900>,  <21.606302, 37.907681, 20.644051>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.292801, 37.759594, 19.962900> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987686, 37.944347, 20.143929>,  <20.804617, 38.055199, 20.252544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.987686, 37.944347, 20.143929>,  <21.292801, 37.759594, 19.962900>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.987686, 37.944347, 20.143929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146624, 0.558102, -0.816715,
		-0.629806, -0.689338, -0.357991,
		-0.762788, 0.461882, 0.452570,
		20.758850, 38.082912, 20.279699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.768173, 37.866199, 19.392954>,  <21.292801, 37.759594, 19.962900>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.768173, 37.866199, 19.392954> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.656128, 38.130863, 19.671162>,  <20.588902, 38.289661, 19.838087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.656128, 38.130863, 19.671162>,  <20.768173, 37.866199, 19.392954>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.656128, 38.130863, 19.671162> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064187, 0.709993, -0.701277,
		-0.957819, -0.241079, -0.156409,
		-0.280113, 0.661657, 0.695519,
		20.572094, 38.329361, 19.879818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.134287, 38.210888, 19.104301>,  <20.768173, 37.866199, 19.392954>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.134287, 38.210888, 19.104301> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.285057, 38.457390, 19.380898>,  <20.375519, 38.605289, 19.546856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.285057, 38.457390, 19.380898>,  <20.134287, 38.210888, 19.104301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.285057, 38.457390, 19.380898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248285, 0.786456, -0.565545,
		-0.892346, 0.041482, 0.449442,
		0.376926, 0.616252, 0.691492,
		20.398134, 38.642265, 19.588345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.601263, 38.647259, 19.276037>,  <20.134287, 38.210888, 19.104301>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.601263, 38.647259, 19.276037> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950274, 38.822075, 19.363392>,  <20.159679, 38.926964, 19.415806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.950274, 38.822075, 19.363392>,  <19.601263, 38.647259, 19.276037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.950274, 38.822075, 19.363392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263455, 0.797316, -0.543028,
		-0.411451, 0.416270, 0.810819,
		0.872525, 0.437043, 0.218388,
		20.212030, 38.953186, 19.428907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.473131, 39.316929, 19.454439>,  <19.601263, 38.647259, 19.276037>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.473131, 39.316929, 19.454439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858412, 39.328003, 19.347496>,  <20.089581, 39.334648, 19.283331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.858412, 39.328003, 19.347496>,  <19.473131, 39.316929, 19.454439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.858412, 39.328003, 19.347496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176413, 0.815577, -0.551101,
		0.202794, 0.577986, 0.790447,
		0.963199, 0.027685, -0.267359,
		20.147371, 39.336308, 19.267288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.544609, 40.128082, 19.382671>,  <19.473131, 39.316929, 19.454439>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.544609, 40.128082, 19.382671> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.831604, 39.921715, 19.195465>,  <20.003801, 39.797894, 19.083141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.831604, 39.921715, 19.195465>,  <19.544609, 40.128082, 19.382671>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.831604, 39.921715, 19.195465> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144958, 0.546592, -0.824757,
		0.681320, 0.659597, 0.317387,
		0.717489, -0.515915, -0.468018,
		20.046850, 39.766941, 19.055059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.943356, 40.620380, 18.957386>,  <19.544609, 40.128082, 19.382671>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.943356, 40.620380, 18.957386> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.047619, 40.267082, 18.801476>,  <20.110178, 40.055103, 18.707930>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.047619, 40.267082, 18.801476>,  <19.943356, 40.620380, 18.957386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.047619, 40.267082, 18.801476> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140957, 0.364590, -0.920437,
		0.955085, 0.294863, -0.029466,
		0.260660, -0.883250, -0.389778,
		20.125816, 40.002106, 18.684542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.382143, 40.793610, 18.369970>,  <19.943356, 40.620380, 18.957386>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.382143, 40.793610, 18.369970> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.247654, 40.422043, 18.307903>,  <20.166962, 40.199104, 18.270664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.247654, 40.422043, 18.307903>,  <20.382143, 40.793610, 18.369970>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.247654, 40.422043, 18.307903> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162402, 0.219475, -0.962006,
		0.927675, -0.298247, -0.224649,
		-0.336220, -0.928913, -0.155166,
		20.146788, 40.143368, 18.261354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.664930, 40.618973, 17.777719>,  <20.382143, 40.793610, 18.369970>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.664930, 40.618973, 17.777719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.378201, 40.342827, 17.816822>,  <20.206163, 40.177139, 17.840284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.378201, 40.342827, 17.816822>,  <20.664930, 40.618973, 17.777719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.378201, 40.342827, 17.816822> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253615, 0.127559, -0.958858,
		0.649495, -0.712124, -0.266525,
		-0.716823, -0.690368, 0.097757,
		20.163153, 40.135715, 17.846149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.650835, 40.253784, 17.107719>,  <20.664930, 40.618973, 17.777719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.650835, 40.253784, 17.107719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.299627, 40.169998, 17.279861>,  <20.088902, 40.119728, 17.383146>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.299627, 40.169998, 17.279861>,  <20.650835, 40.253784, 17.107719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.299627, 40.169998, 17.279861> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425863, -0.068490, -0.902191,
		0.218450, -0.975415, -0.029066,
		-0.878020, -0.209462, 0.430355,
		20.036221, 40.107159, 17.408968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.389498, 39.678638, 16.740561>,  <20.650835, 40.253784, 17.107719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.389498, 39.678638, 16.740561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.068451, 39.856865, 16.899193>,  <19.875822, 39.963802, 16.994373>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.068451, 39.856865, 16.899193>,  <20.389498, 39.678638, 16.740561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.068451, 39.856865, 16.899193> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465875, -0.053041, -0.883260,
		-0.372514, -0.893677, 0.250149,
		-0.802617, 0.445565, 0.396583,
		19.827665, 39.990536, 17.018167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.823017, 39.277466, 16.552982>,  <20.389498, 39.678638, 16.740561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.823017, 39.277466, 16.552982> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710972, 39.653301, 16.631676>,  <19.643745, 39.878803, 16.678892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<19.710972, 39.653301, 16.631676>,  <19.823017, 39.277466, 16.552982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.710972, 39.653301, 16.631676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514625, 0.026024, -0.857020,
		-0.810370, -0.341305, 0.476248,
		-0.280111, 0.939592, 0.196733,
		19.626938, 39.935181, 16.690695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<28.247211, 27.257034, 26.428392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644039, 27.305084, 26.413609>,  <28.882135, 27.333914, 26.404739>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.644039, 27.305084, 26.413609>,  <28.247211, 27.257034, 26.428392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644039, 27.305084, 26.413609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125531, 0.961355, -0.245026,
		0.006096, 0.247723, 0.968812,
		0.992071, 0.120123, -0.036957,
		28.941660, 27.341122, 26.402521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.359058, 27.958534, 26.714077>,  <28.247211, 27.257034, 26.428392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.359058, 27.958534, 26.714077> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700289, 27.883137, 26.519455>,  <28.905027, 27.837898, 26.402681>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700289, 27.883137, 26.519455>,  <28.359058, 27.958534, 26.714077>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700289, 27.883137, 26.519455> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076291, 0.877393, -0.473668,
		0.516183, 0.441193, 0.734101,
		0.853074, -0.188494, -0.486554,
		28.956211, 27.826588, 26.373489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.724432, 28.507742, 26.750946>,  <28.359058, 27.958534, 26.714077>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.724432, 28.507742, 26.750946> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895725, 28.347950, 26.426716>,  <28.998501, 28.252075, 26.232178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895725, 28.347950, 26.426716>,  <28.724432, 28.507742, 26.750946>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.895725, 28.347950, 26.426716> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037719, 0.888301, -0.457710,
		0.902880, 0.226581, 0.365333,
		0.428234, -0.399478, -0.810576,
		29.024195, 28.228107, 26.183542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251373, 28.983595, 26.598362>,  <28.724432, 28.507742, 26.750946>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251373, 28.983595, 26.598362> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236753, 28.771099, 26.259789>,  <29.227982, 28.643602, 26.056644>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.236753, 28.771099, 26.259789>,  <29.251373, 28.983595, 26.598362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.236753, 28.771099, 26.259789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174764, 0.830549, -0.528815,
		0.983932, -0.167254, 0.062485,
		-0.036550, -0.531238, -0.846434,
		29.225788, 28.611729, 26.005857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789272, 29.277809, 26.110144>,  <29.251373, 28.983595, 26.598362>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789272, 29.277809, 26.110144> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560482, 29.077881, 25.849983>,  <29.423208, 28.957924, 25.693886>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.560482, 29.077881, 25.849983>,  <29.789272, 29.277809, 26.110144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.560482, 29.077881, 25.849983> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073645, 0.758418, -0.647594,
		0.816958, -0.418306, -0.396987,
		-0.571975, -0.499822, -0.650402,
		29.388889, 28.927935, 25.654863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.071396, 29.333796, 25.405897>,  <29.789272, 29.277809, 26.110144>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.071396, 29.333796, 25.405897> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700115, 29.206974, 25.328011>,  <29.477346, 29.130880, 25.281279>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.700115, 29.206974, 25.328011>,  <30.071396, 29.333796, 25.405897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.700115, 29.206974, 25.328011> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088391, 0.696247, -0.712340,
		0.361419, -0.643986, -0.674284,
		-0.928204, -0.317054, -0.194714,
		29.421654, 29.111858, 25.269596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.025276, 29.274008, 24.670830>,  <30.071396, 29.333796, 25.405897>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.025276, 29.274008, 24.670830> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655281, 29.332321, 24.811195>,  <29.433283, 29.367310, 24.895414>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655281, 29.332321, 24.811195>,  <30.025276, 29.274008, 24.670830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.655281, 29.332321, 24.811195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195657, 0.608932, -0.768713,
		-0.325749, -0.779711, -0.534733,
		-0.924990, 0.145783, 0.350915,
		29.377785, 29.376057, 24.916470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.576319, 29.218161, 24.066664>,  <30.025276, 29.274008, 24.670830>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.576319, 29.218161, 24.066664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340822, 29.404194, 24.331112>,  <29.199524, 29.515814, 24.489780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.340822, 29.404194, 24.331112>,  <29.576319, 29.218161, 24.066664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.340822, 29.404194, 24.331112> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471530, 0.466707, -0.748227,
		-0.656538, -0.752251, -0.055468,
		-0.588742, 0.465085, 0.661120,
		29.164200, 29.543718, 24.529448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.931416, 29.064110, 23.825220>,  <29.576319, 29.218161, 24.066664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.931416, 29.064110, 23.825220> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903723, 29.404228, 24.033913>,  <28.887108, 29.608299, 24.159128>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.903723, 29.404228, 24.033913>,  <28.931416, 29.064110, 23.825220>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.903723, 29.404228, 24.033913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528619, 0.412258, -0.742028,
		-0.846031, -0.327167, 0.420942,
		-0.069231, 0.850297, 0.521730,
		28.882954, 29.659317, 24.190432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.231693, 29.265938, 23.819954>,  <28.931416, 29.064110, 23.825220>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.231693, 29.265938, 23.819954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453632, 29.588047, 23.903549>,  <28.586796, 29.781313, 23.953707>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.453632, 29.588047, 23.903549>,  <28.231693, 29.265938, 23.819954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.453632, 29.588047, 23.903549> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472926, 0.511961, -0.717103,
		-0.684459, 0.299047, 0.664897,
		0.554849, 0.805274, 0.208989,
		28.620087, 29.829630, 23.966246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807610, 29.805004, 23.879110>,  <28.231693, 29.265938, 23.819954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807610, 29.805004, 23.879110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156412, 29.974804, 23.781616>,  <28.365694, 30.076683, 23.723120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.156412, 29.974804, 23.781616>,  <27.807610, 29.805004, 23.879110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.156412, 29.974804, 23.781616> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418675, 0.388832, -0.820683,
		-0.253606, 0.817687, 0.516791,
		0.872006, 0.424497, -0.243735,
		28.418015, 30.102154, 23.708496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.638685, 30.460073, 23.636347>,  <27.807610, 29.805004, 23.879110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.638685, 30.460073, 23.636347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002518, 30.396824, 23.482643>,  <28.220818, 30.358875, 23.390421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.002518, 30.396824, 23.482643>,  <27.638685, 30.460073, 23.636347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.002518, 30.396824, 23.482643> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294309, 0.407651, -0.864409,
		0.293326, 0.899343, 0.324255,
		0.909583, -0.158122, -0.384259,
		28.275393, 30.349386, 23.367365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.231003, 31.119081, 23.363417>,  <27.638685, 30.460073, 23.636347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.231003, 31.119081, 23.363417> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191889, 30.756638, 23.198784>,  <27.168421, 30.539171, 23.100004>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.191889, 30.756638, 23.198784>,  <27.231003, 31.119081, 23.363417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.191889, 30.756638, 23.198784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151930, -0.395127, 0.905976,
		-0.983542, 0.151123, -0.099028,
		-0.097785, -0.906111, -0.411584,
		27.162554, 30.484804, 23.075308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.610016, 30.789183, 23.701494>,  <27.231003, 31.119081, 23.363417>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.610016, 30.789183, 23.701494> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820593, 30.479099, 23.561832>,  <26.946939, 30.293049, 23.478035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.820593, 30.479099, 23.561832>,  <26.610016, 30.789183, 23.701494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.820593, 30.479099, 23.561832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066047, -0.446718, 0.892234,
		-0.847640, -0.446651, -0.286372,
		0.526445, -0.775207, -0.349156,
		26.978527, 30.246536, 23.457085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.912388, 30.751875, 23.808393>,  <26.610016, 30.789183, 23.701494>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.912388, 30.751875, 23.808393> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627003, 30.966759, 23.988338>,  <25.455772, 31.095690, 24.096306>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.627003, 30.966759, 23.988338>,  <25.912388, 30.751875, 23.808393>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.627003, 30.966759, 23.988338> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370433, -0.255786, 0.892946,
		0.594769, 0.803727, -0.016507,
		-0.713463, 0.537211, 0.449860,
		25.412964, 31.127922, 24.123297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.277786, 31.272503, 24.187645>,  <25.912388, 30.751875, 23.808393>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.277786, 31.272503, 24.187645> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920204, 31.172184, 24.336208>,  <25.705654, 31.111992, 24.425346>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.920204, 31.172184, 24.336208>,  <26.277786, 31.272503, 24.187645>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.920204, 31.172184, 24.336208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432210, -0.263370, 0.862456,
		-0.118484, 0.931524, 0.343838,
		-0.893956, -0.250797, 0.371408,
		25.652018, 31.096945, 24.447630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.190210, 31.658312, 24.827673>,  <26.277786, 31.272503, 24.187645>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.190210, 31.658312, 24.827673> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909597, 31.375038, 24.859501>,  <25.741230, 31.205074, 24.878597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909597, 31.375038, 24.859501>,  <26.190210, 31.658312, 24.827673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.909597, 31.375038, 24.859501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336866, -0.231150, 0.912738,
		-0.627992, 0.667119, 0.400722,
		-0.701532, -0.708182, 0.079569,
		25.699139, 31.162584, 24.883371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.007467, 31.717207, 25.629322>,  <26.190210, 31.658312, 24.827673>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.007467, 31.717207, 25.629322> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889008, 31.367199, 25.476151>,  <25.817932, 31.157194, 25.384247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.889008, 31.367199, 25.476151>,  <26.007467, 31.717207, 25.629322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.889008, 31.367199, 25.476151> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352189, -0.472703, 0.807784,
		-0.887839, 0.104363, 0.448164,
		-0.296151, -0.875020, -0.382928,
		25.800161, 31.104692, 25.361273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.697618, 31.398262, 26.154839>,  <26.007467, 31.717207, 25.629322>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.697618, 31.398262, 26.154839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810240, 31.089394, 25.926987>,  <25.877813, 30.904072, 25.790276>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.810240, 31.089394, 25.926987>,  <25.697618, 31.398262, 26.154839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.810240, 31.089394, 25.926987> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283408, -0.500241, 0.818192,
		-0.916738, -0.391802, 0.077995,
		0.281553, -0.772172, -0.569630,
		25.894707, 30.857742, 25.756098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.433304, 30.784842, 26.471998>,  <25.697618, 31.398262, 26.154839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.433304, 30.784842, 26.471998> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728725, 30.666676, 26.229588>,  <25.905979, 30.595776, 26.084141>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.728725, 30.666676, 26.229588>,  <25.433304, 30.784842, 26.471998>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.728725, 30.666676, 26.229588> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370178, -0.573586, 0.730731,
		-0.563463, -0.764027, -0.314280,
		0.738565, -0.295401, -0.606021,
		25.950293, 30.578053, 26.047779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.526333, 30.113499, 26.643663>,  <25.433304, 30.784842, 26.471998>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.526333, 30.113499, 26.643663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867752, 30.199940, 26.454029>,  <26.072603, 30.251804, 26.340248>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.867752, 30.199940, 26.454029>,  <25.526333, 30.113499, 26.643663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.867752, 30.199940, 26.454029> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518846, -0.435536, 0.735600,
		-0.047515, -0.873846, -0.483875,
		0.853546, 0.216104, -0.474086,
		26.123816, 30.264771, 26.311804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.836403, 29.492664, 26.581873>,  <25.526333, 30.113499, 26.643663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.836403, 29.492664, 26.581873> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107901, 29.785206, 26.555267>,  <26.270800, 29.960732, 26.539305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107901, 29.785206, 26.555267>,  <25.836403, 29.492664, 26.581873>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.107901, 29.785206, 26.555267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544928, -0.440863, 0.713227,
		0.492299, -0.520344, -0.697770,
		0.678745, 0.731356, -0.066513,
		26.311523, 30.004612, 26.535313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.419601, 29.177065, 26.599676>,  <25.836403, 29.492664, 26.581873>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.419601, 29.177065, 26.599676> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535782, 29.550426, 26.683952>,  <26.605490, 29.774445, 26.734518>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.535782, 29.550426, 26.683952>,  <26.419601, 29.177065, 26.599676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.535782, 29.550426, 26.683952> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689158, -0.356806, 0.630675,
		0.663851, -0.037983, -0.746899,
		0.290453, 0.933406, 0.210690,
		26.622917, 29.830448, 26.747160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183676, 29.112642, 26.587334>,  <26.419601, 29.177065, 26.599676>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183676, 29.112642, 26.587334> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036043, 29.421909, 26.793633>,  <26.947464, 29.607470, 26.917412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.036043, 29.421909, 26.793633>,  <27.183676, 29.112642, 26.587334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036043, 29.421909, 26.793633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563749, -0.254940, 0.785616,
		0.738896, 0.580707, -0.341778,
		-0.369080, 0.773166, 0.515747,
		26.925320, 29.653858, 26.948357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722534, 29.407179, 26.816483>,  <27.183676, 29.112642, 26.587334>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722534, 29.407179, 26.816483> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411167, 29.503883, 27.048214>,  <27.224348, 29.561907, 27.187252>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.411167, 29.503883, 27.048214>,  <27.722534, 29.407179, 26.816483>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.411167, 29.503883, 27.048214> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416842, -0.490967, 0.764980,
		0.469372, 0.836961, 0.281401,
		-0.778417, 0.241761, 0.579327,
		27.177643, 29.576412, 27.222012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068211, 29.629223, 27.454153>,  <27.722534, 29.407179, 26.816483>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068211, 29.629223, 27.454153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692404, 29.600941, 27.588203>,  <27.466921, 29.583971, 27.668634>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692404, 29.600941, 27.588203>,  <28.068211, 29.629223, 27.454153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692404, 29.600941, 27.588203> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333353, -0.413441, 0.847315,
		0.078647, 0.907782, 0.412004,
		-0.939516, -0.070704, 0.335128,
		27.410549, 29.579729, 27.688742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013523, 29.863977, 28.133026>,  <28.068211, 29.629223, 27.454153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013523, 29.863977, 28.133026> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692127, 29.625851, 28.133957>,  <27.499290, 29.482975, 28.134516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.692127, 29.625851, 28.133957>,  <28.013523, 29.863977, 28.133026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.692127, 29.625851, 28.133957> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238733, -0.318630, 0.917323,
		-0.545356, 0.737614, 0.398137,
		-0.803489, -0.595316, 0.002326,
		27.451080, 29.447256, 28.134655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765278, 29.780277, 28.851465>,  <28.013523, 29.863977, 28.133026>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765278, 29.780277, 28.851465> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616795, 29.468090, 28.650238>,  <27.527704, 29.280779, 28.529501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.616795, 29.468090, 28.650238>,  <27.765278, 29.780277, 28.851465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.616795, 29.468090, 28.650238> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098730, -0.571882, 0.814373,
		-0.923286, 0.252633, 0.289342,
		-0.371207, -0.780466, -0.503069,
		27.505432, 29.233950, 28.499317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.171556, 30.253813, 29.217999>,  <27.765278, 29.780277, 28.851465>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.171556, 30.253813, 29.217999> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561375, 30.235798, 29.305847>,  <28.795265, 30.224989, 29.358557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.561375, 30.235798, 29.305847>,  <28.171556, 30.253813, 29.217999>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.561375, 30.235798, 29.305847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201861, 0.602479, -0.772186,
		-0.097539, 0.796863, 0.596234,
		0.974545, -0.045038, 0.219620,
		28.853739, 30.222286, 29.371733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.413422, 30.942665, 29.342287>,  <28.171556, 30.253813, 29.217999>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.413422, 30.942665, 29.342287> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720057, 30.710945, 29.231472>,  <28.904037, 30.571913, 29.164984>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.720057, 30.710945, 29.231472>,  <28.413422, 30.942665, 29.342287>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.720057, 30.710945, 29.231472> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278894, 0.688980, -0.668972,
		0.578410, 0.435563, 0.689729,
		0.766590, -0.579302, -0.277037,
		28.950033, 30.537155, 29.148361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.934397, 31.280054, 29.488594>,  <28.413422, 30.942665, 29.342287>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.934397, 31.280054, 29.488594> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091057, 31.040112, 29.209515>,  <29.185053, 30.896147, 29.042067>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.091057, 31.040112, 29.209515>,  <28.934397, 31.280054, 29.488594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091057, 31.040112, 29.209515> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130886, 0.786883, -0.603062,
		0.910758, 0.144869, 0.386694,
		0.391648, -0.599856, -0.697699,
		29.208551, 30.860155, 29.000204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.523218, 31.583303, 29.339409>,  <28.934397, 31.280054, 29.488594>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.523218, 31.583303, 29.339409> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470976, 31.347584, 29.020493>,  <29.439631, 31.206152, 28.829144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.470976, 31.347584, 29.020493>,  <29.523218, 31.583303, 29.339409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.470976, 31.347584, 29.020493> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316496, 0.737320, -0.596817,
		0.939560, -0.330285, 0.090214,
		-0.130603, -0.589298, -0.797290,
		29.431795, 31.170795, 28.781305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.101608, 31.658615, 29.064192>,  <29.523218, 31.583303, 29.339409>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.101608, 31.658615, 29.064192> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860947, 31.513138, 28.779732>,  <29.716549, 31.425852, 28.609055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860947, 31.513138, 28.779732>,  <30.101608, 31.658615, 29.064192>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.860947, 31.513138, 28.779732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184020, 0.803261, -0.566488,
		0.777265, -0.471699, -0.416364,
		-0.601661, -0.363692, -0.711149,
		29.680450, 31.404030, 28.566387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.547283, 31.607780, 28.353481>,  <30.101608, 31.658615, 29.064192>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.547283, 31.607780, 28.353481> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158810, 31.619999, 28.258934>,  <29.925726, 31.627329, 28.202206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.158810, 31.619999, 28.258934>,  <30.547283, 31.607780, 28.353481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.158810, 31.619999, 28.258934> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163433, 0.807198, -0.567205,
		0.173469, -0.589490, -0.788929,
		-0.971184, 0.030544, -0.236366,
		29.867455, 31.629162, 28.188025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507530, 31.554739, 27.591208>,  <30.547283, 31.607780, 28.353481>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507530, 31.554739, 27.591208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174543, 31.734016, 27.721512>,  <29.974751, 31.841583, 27.799694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174543, 31.734016, 27.721512>,  <30.507530, 31.554739, 27.591208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174543, 31.734016, 27.721512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197933, 0.789699, -0.580687,
		-0.517513, -0.418925, -0.746112,
		-0.832468, 0.448193, 0.325761,
		29.924803, 31.868475, 27.819241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.240046, 31.760441, 26.974550>,  <30.507530, 31.554739, 27.591208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.240046, 31.760441, 26.974550> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073351, 31.993397, 27.253735>,  <29.973333, 32.133171, 27.421246>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.073351, 31.993397, 27.253735>,  <30.240046, 31.760441, 26.974550>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.073351, 31.993397, 27.253735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154622, 0.802038, -0.576911,
		-0.895780, -0.132501, -0.424290,
		-0.416738, 0.582390, 0.697962,
		29.948330, 32.168114, 27.463123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.690216, 32.056244, 26.625477>,  <30.240046, 31.760441, 26.974550>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.690216, 32.056244, 26.625477> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763929, 32.282600, 26.946926>,  <29.808157, 32.418415, 27.139795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.763929, 32.282600, 26.946926>,  <29.690216, 32.056244, 26.625477>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763929, 32.282600, 26.946926> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214962, 0.774627, -0.594764,
		-0.959079, 0.282353, 0.021105,
		0.184282, 0.565889, 0.803623,
		29.819214, 32.452366, 27.188013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.358446, 32.747898, 26.556335>,  <29.690216, 32.056244, 26.625477>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.358446, 32.747898, 26.556335> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641870, 32.836693, 26.824265>,  <29.811924, 32.889969, 26.985023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.641870, 32.836693, 26.824265>,  <29.358446, 32.747898, 26.556335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.641870, 32.836693, 26.824265> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353933, 0.709396, -0.609499,
		-0.610471, 0.668940, 0.424082,
		0.708560, 0.221985, 0.669825,
		29.854439, 32.903290, 27.025211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420174, 33.475552, 26.440420>,  <29.358446, 32.747898, 26.556335>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420174, 33.475552, 26.440420> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741274, 33.386818, 26.661827>,  <29.933933, 33.333580, 26.794672>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.741274, 33.386818, 26.661827>,  <29.420174, 33.475552, 26.440420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741274, 33.386818, 26.661827> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501371, 0.753599, -0.425106,
		-0.322828, 0.618772, 0.716173,
		0.802751, -0.221832, 0.553517,
		29.982100, 33.320267, 26.827883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.595430, 34.196541, 26.674551>,  <29.420174, 33.475552, 26.440420>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.595430, 34.196541, 26.674551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901844, 33.939568, 26.683266>,  <30.085691, 33.785385, 26.688494>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.901844, 33.939568, 26.683266>,  <29.595430, 34.196541, 26.674551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.901844, 33.939568, 26.683266> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606608, 0.711272, -0.355132,
		0.212653, 0.285258, 0.934562,
		0.766032, -0.642433, 0.021786,
		30.131653, 33.746838, 26.689802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<28.113512, 28.869625, 32.922031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.358141, 28.627232, 32.718559>,  <28.504919, 28.481794, 32.596474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.358141, 28.627232, 32.718559>,  <28.113512, 28.869625, 32.922031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358141, 28.627232, 32.718559> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339629, 0.781762, -0.522972,
		0.714583, 0.147072, 0.683916,
		0.611574, -0.605985, -0.508684,
		28.541613, 28.445436, 32.565952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.588007, 29.306673, 32.706387>,  <28.113512, 28.869625, 32.922031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.588007, 29.306673, 32.706387> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.650784, 28.989933, 32.470303>,  <28.688450, 28.799889, 32.328651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.650784, 28.989933, 32.470303>,  <28.588007, 29.306673, 32.706387>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.650784, 28.989933, 32.470303> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251185, 0.609965, -0.751564,
		0.955131, -0.030298, 0.294630,
		0.156943, -0.791849, -0.590207,
		28.697866, 28.752378, 32.293240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.147774, 29.497589, 32.341557>,  <28.588007, 29.306673, 32.706387>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.147774, 29.497589, 32.341557> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.018154, 29.191151, 32.119534>,  <28.940382, 29.007288, 31.986320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.018154, 29.191151, 32.119534>,  <29.147774, 29.497589, 32.341557>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018154, 29.191151, 32.119534> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328800, 0.458935, -0.825390,
		0.887064, -0.449970, 0.103174,
		-0.324051, -0.766097, -0.555055,
		28.920938, 28.961321, 31.953016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.655369, 29.373436, 31.824209>,  <29.147774, 29.497589, 32.341557>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.655369, 29.373436, 31.824209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.363422, 29.166752, 31.645187>,  <29.188255, 29.042742, 31.537775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.363422, 29.166752, 31.645187>,  <29.655369, 29.373436, 31.824209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363422, 29.166752, 31.645187> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382907, 0.233338, -0.893832,
		0.566285, -0.823749, 0.027547,
		-0.729866, -0.516711, -0.447555,
		29.144463, 29.011738, 31.510921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.905088, 28.995577, 31.205835>,  <29.655369, 29.373436, 31.824209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.905088, 28.995577, 31.205835> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.512215, 29.064911, 31.176792>,  <29.276491, 29.106512, 31.159367>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.512215, 29.064911, 31.176792>,  <29.905088, 28.995577, 31.205835>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512215, 29.064911, 31.176792> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133197, 0.369531, -0.919623,
		-0.132572, -0.912909, -0.386034,
		-0.982183, 0.173335, -0.072608,
		29.217560, 29.116911, 31.155010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717764, 28.741842, 30.435057>,  <29.905088, 28.995577, 31.205835>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717764, 28.741842, 30.435057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.434380, 28.985744, 30.577202>,  <29.264349, 29.132086, 30.662489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.434380, 28.985744, 30.577202>,  <29.717764, 28.741842, 30.435057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.434380, 28.985744, 30.577202> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009721, 0.511906, -0.858986,
		-0.705682, -0.605104, -0.368594,
		-0.708462, 0.609755, 0.355361,
		29.221842, 29.168671, 30.683809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.191381, 28.654594, 29.998032>,  <29.717764, 28.741842, 30.435057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.191381, 28.654594, 29.998032> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.118423, 29.010445, 30.165508>,  <29.074650, 29.223955, 30.265993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.118423, 29.010445, 30.165508>,  <29.191381, 28.654594, 29.998032>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.118423, 29.010445, 30.165508> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072500, 0.412505, -0.908066,
		-0.980549, -0.195979, -0.010740,
		-0.182393, 0.889625, 0.418689,
		29.063705, 29.277332, 30.291115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649656, 28.983971, 29.651432>,  <29.191381, 28.654594, 29.998032>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649656, 28.983971, 29.651432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.824745, 29.302525, 29.818367>,  <28.929798, 29.493656, 29.918528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.824745, 29.302525, 29.818367>,  <28.649656, 28.983971, 29.651432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.824745, 29.302525, 29.818367> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087713, 0.499775, -0.861702,
		-0.894821, 0.340581, 0.288617,
		0.437723, 0.796385, 0.417336,
		28.956062, 29.541441, 29.943567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.295450, 29.538012, 29.373859>,  <28.649656, 28.983971, 29.651432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.295450, 29.538012, 29.373859> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.616432, 29.720181, 29.528084>,  <28.809021, 29.829481, 29.620619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.616432, 29.720181, 29.528084>,  <28.295450, 29.538012, 29.373859>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.616432, 29.720181, 29.528084> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006201, 0.639745, -0.768562,
		-0.596681, 0.619127, 0.510543,
		0.802455, 0.455421, 0.385562,
		28.857168, 29.856806, 29.643753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.507215, 29.408875, 29.414204>,  <28.295450, 29.538012, 29.373859>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.507215, 29.408875, 29.414204> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.541800, 29.183342, 29.085663>,  <27.562550, 29.048023, 28.888538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.541800, 29.183342, 29.085663>,  <27.507215, 29.408875, 29.414204>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.541800, 29.183342, 29.085663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250791, -0.785572, 0.565668,
		-0.964173, -0.254894, 0.073484,
		0.086458, -0.563831, -0.821352,
		27.567738, 29.014193, 28.839256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.358135, 28.762091, 29.607885>,  <27.507215, 29.408875, 29.414204>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.358135, 28.762091, 29.607885> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.549187, 28.658833, 29.271973>,  <27.663816, 28.596878, 29.070425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.549187, 28.658833, 29.271973>,  <27.358135, 28.762091, 29.607885>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.549187, 28.658833, 29.271973> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460377, -0.740577, 0.489488,
		-0.748286, -0.620407, -0.234869,
		0.477620, -0.258149, -0.839785,
		27.692474, 28.581390, 29.020039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.108171, 28.081244, 29.522705>,  <27.358135, 28.762091, 29.607885>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.108171, 28.081244, 29.522705> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.449640, 28.087288, 29.314468>,  <27.654522, 28.090914, 29.189528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.449640, 28.087288, 29.314468>,  <27.108171, 28.081244, 29.522705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.449640, 28.087288, 29.314468> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214320, -0.921213, 0.324706,
		-0.474668, -0.388765, -0.789653,
		0.853673, 0.015111, -0.520590,
		27.705742, 28.091822, 29.158291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.133612, 27.514648, 29.136314>,  <27.108171, 28.081244, 29.522705>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.133612, 27.514648, 29.136314> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.519918, 27.608776, 29.179993>,  <27.751701, 27.665253, 29.206200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.519918, 27.608776, 29.179993>,  <27.133612, 27.514648, 29.136314>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.519918, 27.608776, 29.179993> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185600, -0.920847, 0.342920,
		0.181249, -0.310913, -0.932996,
		0.965765, 0.235318, 0.109197,
		27.809649, 27.679371, 29.212751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.398907, 26.835417, 29.001862>,  <27.133612, 27.514648, 29.136314>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.398907, 26.835417, 29.001862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.704973, 27.039059, 29.159512>,  <27.888613, 27.161243, 29.254101>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.704973, 27.039059, 29.159512>,  <27.398907, 26.835417, 29.001862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704973, 27.039059, 29.159512> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347440, -0.841877, 0.412952,
		0.542039, -0.179042, -0.821059,
		0.765166, 0.509105, 0.394124,
		27.934523, 27.191790, 29.277748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.878254, 26.289034, 28.986626>,  <27.398907, 26.835417, 29.001862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.878254, 26.289034, 28.986626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.012970, 26.573837, 29.233078>,  <28.093800, 26.744719, 29.380949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.012970, 26.573837, 29.233078>,  <27.878254, 26.289034, 28.986626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.012970, 26.573837, 29.233078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416418, -0.699519, 0.580749,
		0.844493, 0.060976, -0.532085,
		0.336791, 0.712008, 0.616130,
		28.114008, 26.787439, 29.417917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559977, 26.107769, 29.058691>,  <27.878254, 26.289034, 28.986626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559977, 26.107769, 29.058691> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.446535, 26.316479, 29.380516>,  <28.378469, 26.441704, 29.573610>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.446535, 26.316479, 29.380516>,  <28.559977, 26.107769, 29.058691>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.446535, 26.316479, 29.380516> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337301, -0.731117, 0.593040,
		0.897662, 0.439568, 0.031352,
		-0.283603, 0.521774, 0.804563,
		28.361454, 26.473011, 29.621885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.099669, 25.863413, 29.514994>,  <28.559977, 26.107769, 29.058691>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.099669, 25.863413, 29.514994> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.822052, 26.036140, 29.745415>,  <28.655481, 26.139778, 29.883667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.822052, 26.036140, 29.745415>,  <29.099669, 25.863413, 29.514994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.822052, 26.036140, 29.745415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055719, -0.765529, 0.640984,
		0.717776, 0.476967, 0.507248,
		-0.694041, 0.431820, 0.576054,
		28.613840, 26.165686, 29.918232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376913, 25.790195, 30.212982>,  <29.099669, 25.863413, 29.514994>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376913, 25.790195, 30.212982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.980545, 25.829964, 30.249184>,  <28.742723, 25.853825, 30.270905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.980545, 25.829964, 30.249184>,  <29.376913, 25.790195, 30.212982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.980545, 25.829964, 30.249184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021379, -0.781127, 0.624006,
		0.132736, 0.616406, 0.776160,
		-0.990921, 0.099422, 0.090506,
		28.683270, 25.859791, 30.276335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.139744, 25.735945, 30.896278>,  <29.376913, 25.790195, 30.212982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.139744, 25.735945, 30.896278> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.797390, 25.660152, 30.703796>,  <28.591978, 25.614677, 30.588306>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.797390, 25.660152, 30.703796>,  <29.139744, 25.735945, 30.896278>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797390, 25.660152, 30.703796> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205426, -0.729352, 0.652568,
		-0.474616, 0.657375, 0.585318,
		-0.855885, -0.189480, -0.481205,
		28.540625, 25.603308, 30.559435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.684786, 25.541618, 31.449457>,  <29.139744, 25.735945, 30.896278>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.684786, 25.541618, 31.449457> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.524284, 25.398834, 31.112038>,  <28.427982, 25.313164, 30.909586>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.524284, 25.398834, 31.112038>,  <28.684786, 25.541618, 31.449457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.524284, 25.398834, 31.112038> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101434, -0.897958, 0.428231,
		-0.910333, 0.257395, 0.324102,
		-0.401255, -0.356958, -0.843549,
		28.403908, 25.291746, 30.858973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.076313, 25.105593, 31.618893>,  <28.684786, 25.541618, 31.449457>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.076313, 25.105593, 31.618893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.151127, 24.988251, 31.243881>,  <28.196016, 24.917845, 31.018875>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.151127, 24.988251, 31.243881>,  <28.076313, 25.105593, 31.618893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151127, 24.988251, 31.243881> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216549, -0.943206, 0.251931,
		-0.958188, 0.155901, -0.239940,
		0.187037, -0.293356, -0.937528,
		28.207237, 24.900244, 30.962624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593019, 24.591743, 31.465216>,  <28.076313, 25.105593, 31.618893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593019, 24.591743, 31.465216> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.893251, 24.539932, 31.206032>,  <28.073391, 24.508844, 31.050522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.893251, 24.539932, 31.206032>,  <27.593019, 24.591743, 31.465216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893251, 24.539932, 31.206032> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019744, -0.984558, 0.173945,
		-0.660485, -0.117766, -0.741547,
		0.750580, -0.129529, -0.647960,
		28.118425, 24.501074, 31.011644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382593, 24.089975, 30.987598>,  <27.593019, 24.591743, 31.465216>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382593, 24.089975, 30.987598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.781847, 24.072624, 31.004795>,  <28.021399, 24.062214, 31.015114>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.781847, 24.072624, 31.004795>,  <27.382593, 24.089975, 30.987598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781847, 24.072624, 31.004795> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050345, -0.982902, 0.177113,
		0.034573, -0.178947, -0.983251,
		0.998133, -0.043379, 0.042991,
		28.081287, 24.059610, 31.017693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.004940, 23.875168, 29.898340> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641045, 23.985657, 30.022327>,  <35.422707, 24.051950, 30.096720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.641045, 23.985657, 30.022327>,  <36.004940, 23.875168, 29.898340>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.641045, 23.985657, 30.022327> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072648, 0.629153, -0.773879,
		-0.408780, -0.726545, -0.552297,
		-0.909737, 0.276223, 0.309967,
		35.368122, 24.068523, 30.115318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643784, 24.008986, 29.343277>,  <36.004940, 23.875168, 29.898340>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643784, 24.008986, 29.343277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429752, 24.223507, 29.604374>,  <35.301334, 24.352221, 29.761032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.429752, 24.223507, 29.604374>,  <35.643784, 24.008986, 29.343277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.429752, 24.223507, 29.604374> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238332, 0.645441, -0.725674,
		-0.810490, -0.543858, -0.217540,
		-0.535074, 0.536305, 0.652743,
		35.269230, 24.384399, 29.800198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143810, 24.261917, 28.987869>,  <35.643784, 24.008986, 29.343277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143810, 24.261917, 28.987869> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112511, 24.483803, 29.319210>,  <35.093731, 24.616934, 29.518015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.112511, 24.483803, 29.319210>,  <35.143810, 24.261917, 28.987869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112511, 24.483803, 29.319210> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457702, 0.718166, -0.524163,
		-0.885655, -0.420156, 0.197695,
		-0.078253, 0.554713, 0.828354,
		35.089035, 24.650217, 29.567717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.465527, 24.393389, 28.999544>,  <35.143810, 24.261917, 28.987869>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.465527, 24.393389, 28.999544> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659897, 24.681595, 29.197426>,  <34.776520, 24.854519, 29.316154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659897, 24.681595, 29.197426>,  <34.465527, 24.393389, 28.999544>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659897, 24.681595, 29.197426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471539, 0.692707, -0.545718,
		-0.735882, 0.031908, 0.676357,
		0.485930, 0.720513, 0.494705,
		34.805676, 24.897749, 29.345837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.984028, 24.880199, 29.167543>,  <34.465527, 24.393389, 28.999544>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.984028, 24.880199, 29.167543> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333622, 25.070217, 29.208511>,  <34.543377, 25.184227, 29.233091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.333622, 25.070217, 29.208511>,  <33.984028, 24.880199, 29.167543>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.333622, 25.070217, 29.208511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378836, 0.798023, -0.468661,
		-0.304367, 0.370802, 0.877421,
		0.873982, 0.475043, 0.102419,
		34.595818, 25.212730, 29.239237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786404, 25.577503, 29.386717>,  <33.984028, 24.880199, 29.167543>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786404, 25.577503, 29.386717> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171810, 25.618465, 29.287804>,  <34.403053, 25.643042, 29.228456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.171810, 25.618465, 29.287804>,  <33.786404, 25.577503, 29.386717>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.171810, 25.618465, 29.287804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181575, 0.928878, -0.322826,
		0.196637, 0.355949, 0.913584,
		0.963517, 0.102404, -0.247283,
		34.460865, 25.649187, 29.213619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140602, 26.217979, 29.711643>,  <33.786404, 25.577503, 29.386717>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140602, 26.217979, 29.711643> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364330, 26.134277, 29.390800>,  <34.498566, 26.084055, 29.198296>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.364330, 26.134277, 29.390800>,  <34.140602, 26.217979, 29.711643>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364330, 26.134277, 29.390800> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037934, 0.960139, -0.276937,
		0.828084, 0.185324, 0.529086,
		0.559319, -0.209257, -0.802106,
		34.532127, 26.071501, 29.150169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577709, 26.719919, 29.727215>,  <34.140602, 26.217979, 29.711643>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577709, 26.719919, 29.727215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556240, 26.575436, 29.354839>,  <34.543358, 26.488745, 29.131414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.556240, 26.575436, 29.354839>,  <34.577709, 26.719919, 29.727215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556240, 26.575436, 29.354839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045941, 0.932189, -0.359046,
		0.997501, 0.023497, -0.066627,
		-0.053672, -0.361209, -0.930939,
		34.540138, 26.467073, 29.075558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.831482, 27.224167, 29.361988>,  <34.577709, 26.719919, 29.727215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.831482, 27.224167, 29.361988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659840, 27.027451, 29.058933>,  <34.556854, 26.909422, 28.877100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.659840, 27.027451, 29.058933>,  <34.831482, 27.224167, 29.361988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659840, 27.027451, 29.058933> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145530, 0.865468, -0.479360,
		0.891456, -0.095435, -0.442943,
		-0.429100, -0.491790, -0.757638,
		34.531109, 26.879913, 28.831642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142876, 27.378149, 28.742521>,  <34.831482, 27.224167, 29.361988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142876, 27.378149, 28.742521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776516, 27.257175, 28.636944>,  <34.556702, 27.184591, 28.573597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.776516, 27.257175, 28.636944>,  <35.142876, 27.378149, 28.742521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776516, 27.257175, 28.636944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085816, 0.789858, -0.607256,
		0.392130, -0.533535, -0.749383,
		-0.915898, -0.302432, -0.263941,
		34.501747, 27.166445, 28.557762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.201691, 27.415903, 28.038372>,  <35.142876, 27.378149, 28.742521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.201691, 27.415903, 28.038372> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810097, 27.384514, 28.113670>,  <34.575142, 27.365681, 28.158850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.810097, 27.384514, 28.113670>,  <35.201691, 27.415903, 28.038372>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810097, 27.384514, 28.113670> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179189, 0.771748, -0.610161,
		-0.097398, -0.631068, -0.769589,
		-0.978982, -0.078474, 0.188247,
		34.516403, 27.360971, 28.170145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823357, 27.444201, 27.368263>,  <35.201691, 27.415903, 28.038372>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823357, 27.444201, 27.368263> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559834, 27.550827, 27.649662>,  <34.401718, 27.614803, 27.818501>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.559834, 27.550827, 27.649662>,  <34.823357, 27.444201, 27.368263>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.559834, 27.550827, 27.649662> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425690, 0.638925, -0.640752,
		-0.620286, -0.721607, -0.307456,
		-0.658812, 0.266568, 0.703497,
		34.362190, 27.630798, 27.860712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.166630, 27.471472, 26.990238>,  <34.823357, 27.444201, 27.368263>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.166630, 27.471472, 26.990238> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139309, 27.689537, 27.324455>,  <34.122917, 27.820375, 27.524986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.139309, 27.689537, 27.324455>,  <34.166630, 27.471472, 26.990238>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139309, 27.689537, 27.324455> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467548, 0.722344, -0.509527,
		-0.881325, -0.425458, 0.205552,
		-0.068303, 0.545164, 0.835542,
		34.118816, 27.853086, 27.575117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.485882, 27.695845, 26.980045>,  <34.166630, 27.471472, 26.990238>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.485882, 27.695845, 26.980045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736271, 27.925335, 27.191326>,  <33.886505, 28.063028, 27.318094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.736271, 27.925335, 27.191326>,  <33.485882, 27.695845, 26.980045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736271, 27.925335, 27.191326> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080920, 0.721447, -0.687725,
		-0.775637, 0.387753, 0.498030,
		0.625970, 0.573726, 0.528204,
		33.924061, 28.097452, 27.349787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.820976, 27.529362, 26.807667>,  <33.485882, 27.695845, 26.980045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.820976, 27.529362, 26.807667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739876, 27.345360, 26.461884>,  <32.691216, 27.234959, 26.254414>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.739876, 27.345360, 26.461884>,  <32.820976, 27.529362, 26.807667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739876, 27.345360, 26.461884> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123110, -0.887763, 0.443531,
		-0.971461, -0.016499, 0.236623,
		-0.202748, -0.460005, -0.864459,
		32.679050, 27.207359, 26.202545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.240807, 27.086376, 26.957245>,  <32.820976, 27.529362, 26.807667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.240807, 27.086376, 26.957245> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390926, 26.911320, 26.630413>,  <32.480999, 26.806286, 26.434315>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.390926, 26.911320, 26.630413>,  <32.240807, 27.086376, 26.957245>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390926, 26.911320, 26.630413> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067220, -0.866343, 0.494905,
		-0.924461, -0.240663, -0.295723,
		0.375303, -0.437642, -0.817079,
		32.503517, 26.780027, 26.385290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.907509, 26.461765, 26.938749>,  <32.240807, 27.086376, 26.957245>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.907509, 26.461765, 26.938749> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217766, 26.420326, 26.689705>,  <32.403919, 26.395462, 26.540277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.217766, 26.420326, 26.689705>,  <31.907509, 26.461765, 26.938749>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.217766, 26.420326, 26.689705> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150716, -0.927501, 0.342091,
		-0.612914, -0.359178, -0.703795,
		0.775643, -0.103599, -0.622612,
		32.450459, 26.389246, 26.502922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.784420, 25.801155, 26.682816>,  <31.907509, 26.461765, 26.938749>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.784420, 25.801155, 26.682816> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169621, 25.900150, 26.640156>,  <32.400742, 25.959547, 26.614561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.169621, 25.900150, 26.640156>,  <31.784420, 25.801155, 26.682816>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.169621, 25.900150, 26.640156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269362, -0.871845, 0.409059,
		0.008258, -0.422652, -0.906254,
		0.963003, 0.247488, -0.106647,
		32.458523, 25.974398, 26.608162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.018929, 25.273991, 26.300905>,  <31.784420, 25.801155, 26.682816>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.018929, 25.273991, 26.300905> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345085, 25.429642, 26.472355>,  <32.540779, 25.523031, 26.575224>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.345085, 25.429642, 26.472355>,  <32.018929, 25.273991, 26.300905>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.345085, 25.429642, 26.472355> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219288, -0.892833, 0.393397,
		0.535772, -0.226780, -0.813339,
		0.815390, 0.389127, 0.428625,
		32.589703, 25.546379, 26.600943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.464901, 24.754307, 26.257591>,  <32.018929, 25.273991, 26.300905>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.464901, 24.754307, 26.257591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630131, 24.999802, 26.526722>,  <32.729271, 25.147099, 26.688200>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.630131, 24.999802, 26.526722>,  <32.464901, 24.754307, 26.257591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630131, 24.999802, 26.526722> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183831, -0.779789, 0.598445,
		0.891950, -0.123517, -0.434936,
		0.413077, 0.613737, 0.672826,
		32.754055, 25.183922, 26.728569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148537, 24.469234, 26.479630>,  <32.464901, 24.754307, 26.257591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148537, 24.469234, 26.479630> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993366, 24.702518, 26.765114>,  <32.900265, 24.842489, 26.936403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.993366, 24.702518, 26.765114>,  <33.148537, 24.469234, 26.479630>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.993366, 24.702518, 26.765114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235104, -0.686120, 0.688452,
		0.891201, 0.434864, 0.129048,
		-0.387926, 0.583209, 0.713709,
		32.876987, 24.877481, 26.979227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.616096, 24.404623, 27.114157>,  <33.148537, 24.469234, 26.479630>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.616096, 24.404623, 27.114157> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275871, 24.563259, 27.252296>,  <33.071735, 24.658442, 27.335180>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.275871, 24.563259, 27.252296>,  <33.616096, 24.404623, 27.114157>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.275871, 24.563259, 27.252296> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070542, -0.564730, 0.822255,
		0.521128, 0.723738, 0.452359,
		-0.850558, 0.396590, 0.345351,
		33.020702, 24.682236, 27.355902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.768314, 24.521770, 27.788332>,  <33.616096, 24.404623, 27.114157>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.768314, 24.521770, 27.788332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369381, 24.504868, 27.764511>,  <33.130020, 24.494726, 27.750219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.369381, 24.504868, 27.764511>,  <33.768314, 24.521770, 27.788332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.369381, 24.504868, 27.764511> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017446, -0.654014, 0.756281,
		-0.070907, 0.755301, 0.651531,
		-0.997330, -0.042259, -0.059551,
		33.070183, 24.492189, 27.746645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.542713, 24.766293, 28.466736>,  <33.768314, 24.521770, 27.788332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.542713, 24.766293, 28.466736> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263268, 24.540440, 28.290951>,  <33.095600, 24.404928, 28.185480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.263268, 24.540440, 28.290951>,  <33.542713, 24.766293, 28.466736>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263268, 24.540440, 28.290951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160185, -0.475187, 0.865181,
		-0.697335, 0.674824, 0.241528,
		-0.698616, -0.564632, -0.439462,
		33.053684, 24.371050, 28.159113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.102341, 24.592934, 28.931952>,  <33.542713, 24.766293, 28.466736>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.102341, 24.592934, 28.931952> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994602, 24.315369, 28.664837>,  <32.929958, 24.148830, 28.504568>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.994602, 24.315369, 28.664837>,  <33.102341, 24.592934, 28.931952>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994602, 24.315369, 28.664837> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166326, -0.649475, 0.741969,
		-0.948572, 0.310916, 0.059517,
		-0.269345, -0.693911, -0.667788,
		32.913799, 24.107195, 28.464500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442394, 24.175493, 29.188082>,  <33.102341, 24.592934, 28.931952>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442394, 24.175493, 29.188082> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607605, 23.949932, 28.902027>,  <32.706734, 23.814596, 28.730394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.607605, 23.949932, 28.902027>,  <32.442394, 24.175493, 29.188082>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.607605, 23.949932, 28.902027> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114746, -0.811210, 0.573387,
		-0.903461, -0.154766, -0.399758,
		0.413028, -0.563903, -0.715138,
		32.731514, 23.780762, 28.687487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.946947, 23.612070, 29.002926>,  <32.442394, 24.175493, 29.188082>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.946947, 23.612070, 29.002926> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309673, 23.488819, 28.887863>,  <32.527309, 23.414869, 28.818825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.309673, 23.488819, 28.887863>,  <31.946947, 23.612070, 29.002926>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309673, 23.488819, 28.887863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054427, -0.762282, 0.644952,
		-0.418003, -0.569196, -0.708019,
		0.906814, -0.308127, -0.287657,
		32.581718, 23.396381, 28.801567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.886742, 22.830414, 28.795763>,  <31.946947, 23.612070, 29.002926>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.886742, 22.830414, 28.795763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 22.913235, 28.880505>,  <32.498016, 22.962927, 28.931349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.268787, 22.913235, 28.880505>,  <31.886742, 22.830414, 28.795763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.268787, 22.913235, 28.880505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089821, -0.883913, 0.458945,
		0.282285, -0.419317, -0.862837,
		0.955117, 0.207054, 0.211852,
		32.555321, 22.975351, 28.944059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.583817, 22.509342, 28.177561>,  <31.886742, 22.830414, 28.795763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.583817, 22.509342, 28.177561> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228067, 22.419849, 28.337040>,  <31.014618, 22.366154, 28.432728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.228067, 22.419849, 28.337040>,  <31.583817, 22.509342, 28.177561>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.228067, 22.419849, 28.337040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439184, 0.660372, -0.609119,
		-0.127010, -0.716836, -0.685576,
		-0.889374, -0.223730, 0.398697,
		30.961256, 22.352730, 28.456650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.235054, 22.632061, 27.580559>,  <31.583817, 22.509342, 28.177561>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.235054, 22.632061, 27.580559> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983187, 22.658802, 27.890152>,  <30.832067, 22.674847, 28.075909>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.983187, 22.658802, 27.890152>,  <31.235054, 22.632061, 27.580559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.983187, 22.658802, 27.890152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440450, 0.789971, -0.426555,
		-0.639941, -0.609489, -0.467974,
		-0.629666, 0.066850, 0.773984,
		30.794287, 22.678858, 28.122347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.514166, 22.664452, 27.260775>,  <31.235054, 22.632061, 27.580559>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.514166, 22.664452, 27.260775> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530777, 22.820511, 27.628700>,  <30.540743, 22.914146, 27.849455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.530777, 22.820511, 27.628700>,  <30.514166, 22.664452, 27.260775>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.530777, 22.820511, 27.628700> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543780, 0.781146, -0.306781,
		-0.838200, -0.487437, 0.244594,
		0.041527, 0.390149, 0.919815,
		30.543236, 22.937555, 27.904644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847010, 22.890053, 27.383938>,  <30.514166, 22.664452, 27.260775>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847010, 22.890053, 27.383938> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082829, 23.089729, 27.637943>,  <30.224319, 23.209536, 27.790346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.082829, 23.089729, 27.637943>,  <29.847010, 22.890053, 27.383938>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082829, 23.089729, 27.637943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489588, 0.846134, -0.210619,
		-0.642445, -0.186725, 0.743235,
		0.589549, 0.499190, 0.635013,
		30.259693, 23.239487, 27.828447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.430592, 23.353741, 27.663744>,  <29.847010, 22.890053, 27.383938>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.430592, 23.353741, 27.663744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.796080, 23.505253, 27.722588>,  <30.015373, 23.596159, 27.757893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.796080, 23.505253, 27.722588>,  <29.430592, 23.353741, 27.663744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.796080, 23.505253, 27.722588> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307677, 0.881404, -0.358416,
		-0.265421, 0.282230, 0.921899,
		0.913721, 0.378778, 0.147108,
		30.070196, 23.618887, 27.766720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287577, 23.898203, 28.188158>,  <29.430592, 23.353741, 27.663744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287577, 23.898203, 28.188158> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.634956, 23.983032, 28.008904>,  <29.843384, 24.033930, 27.901352>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.634956, 23.983032, 28.008904>,  <29.287577, 23.898203, 28.188158>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.634956, 23.983032, 28.008904> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383966, 0.859517, -0.337343,
		0.313639, 0.465033, 0.827873,
		0.868447, 0.212071, -0.448135,
		29.895491, 24.046654, 27.874462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.392769, 24.624577, 28.284973>,  <29.287577, 23.898203, 28.188158>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.392769, 24.624577, 28.284973> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.670809, 24.549885, 28.007278>,  <29.837633, 24.505070, 27.840662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.670809, 24.549885, 28.007278>,  <29.392769, 24.624577, 28.284973>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.670809, 24.549885, 28.007278> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197272, 0.879069, -0.433960,
		0.691316, 0.438600, 0.574206,
		0.695101, -0.186728, -0.694238,
		29.879339, 24.493866, 27.799007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909723, 25.229734, 28.327168>,  <29.392769, 24.624577, 28.284973>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909723, 25.229734, 28.327168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919508, 25.055798, 27.967098>,  <29.925379, 24.951435, 27.751057>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.919508, 25.055798, 27.967098>,  <29.909723, 25.229734, 28.327168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.919508, 25.055798, 27.967098> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217240, 0.876615, -0.429362,
		0.975812, 0.206057, -0.073022,
		0.024461, -0.434840, -0.900175,
		29.926846, 24.925346, 27.697046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.387346, 25.594639, 27.829540>,  <29.909723, 25.229734, 28.327168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.387346, 25.594639, 27.829540> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102879, 25.405491, 27.621452>,  <29.932198, 25.292002, 27.496599>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.102879, 25.405491, 27.621452>,  <30.387346, 25.594639, 27.829540>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.102879, 25.405491, 27.621452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225521, 0.854325, -0.468261,
		0.665864, -0.215694, -0.714214,
		-0.711172, -0.472868, -0.520221,
		29.889526, 25.263630, 27.465385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.486649, 25.877996, 27.188658>,  <30.387346, 25.594639, 27.829540>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.486649, 25.877996, 27.188658> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.125900, 25.705780, 27.174442>,  <29.909451, 25.602451, 27.165913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.125900, 25.705780, 27.174442>,  <30.486649, 25.877996, 27.188658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.125900, 25.705780, 27.174442> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326085, 0.732400, -0.597711,
		0.283365, -0.527471, -0.800924,
		-0.901872, -0.430539, -0.035536,
		29.855339, 25.576618, 27.163782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.296841, 25.948341, 26.447428>,  <30.486649, 25.877996, 27.188658>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.296841, 25.948341, 26.447428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963163, 25.909813, 26.664627>,  <29.762957, 25.886696, 26.794947>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.963163, 25.909813, 26.664627>,  <30.296841, 25.948341, 26.447428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963163, 25.909813, 26.664627> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416485, 0.755428, -0.505834,
		-0.361473, -0.648113, -0.670289,
		-0.834193, -0.096320, 0.542996,
		29.712906, 25.880917, 26.827526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822723, 26.011623, 25.981813>,  <30.296841, 25.948341, 26.447428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822723, 26.011623, 25.981813> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.638046, 26.090549, 26.327740>,  <29.527241, 26.137905, 26.535295>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.638046, 26.090549, 26.327740>,  <29.822723, 26.011623, 25.981813>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.638046, 26.090549, 26.327740> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393215, 0.828394, -0.398930,
		-0.795123, -0.524242, -0.304876,
		-0.461694, 0.197317, 0.864815,
		29.499538, 26.149744, 26.587185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.047560, 26.100140, 25.856434>,  <29.822723, 26.011623, 25.981813>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.047560, 26.100140, 25.856434> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.181385, 26.304966, 26.172878>,  <29.261681, 26.427862, 26.362745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.181385, 26.304966, 26.172878>,  <29.047560, 26.100140, 25.856434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.181385, 26.304966, 26.172878> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373363, 0.842816, -0.387635,
		-0.865256, -0.165683, 0.473161,
		0.334563, 0.512065, 0.791112,
		29.281754, 26.458586, 26.410212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.534880, 26.564634, 26.096931>,  <29.047560, 26.100140, 25.856434>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.534880, 26.564634, 26.096931> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855476, 26.731792, 26.268032>,  <29.047834, 26.832088, 26.370691>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.855476, 26.731792, 26.268032>,  <28.534880, 26.564634, 26.096931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.855476, 26.731792, 26.268032> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294804, 0.898456, -0.325374,
		-0.520286, 0.134683, 0.843304,
		0.801494, 0.417897, 0.427749,
		29.095924, 26.857162, 26.396357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.781097, 27.853737, 27.562485> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.016464, 27.986603, 27.267612>,  <44.157684, 28.066322, 27.090689>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.016464, 27.986603, 27.267612>,  <43.781097, 27.853737, 27.562485>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.016464, 27.986603, 27.267612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505001, 0.863002, -0.014230,
		0.631459, 0.380649, 0.675548,
		0.588416, 0.332167, -0.737179,
		44.192989, 28.086252, 27.046459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.734516, 28.543535, 27.673643>,  <43.781097, 27.853737, 27.562485>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.734516, 28.543535, 27.673643> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.883747, 28.519905, 27.303276>,  <43.973286, 28.505728, 27.081057>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.883747, 28.519905, 27.303276>,  <43.734516, 28.543535, 27.673643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883747, 28.519905, 27.303276> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492519, 0.833139, -0.251604,
		0.786281, 0.549900, 0.281729,
		0.373077, -0.059075, -0.925918,
		43.995670, 28.502182, 27.025501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.971046, 29.195070, 27.562654>,  <43.734516, 28.543535, 27.673643>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.971046, 29.195070, 27.562654> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.917522, 29.010590, 27.211796>,  <43.885406, 28.899900, 27.001280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.917522, 29.010590, 27.211796>,  <43.971046, 29.195070, 27.562654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917522, 29.010590, 27.211796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436771, 0.821951, -0.365551,
		0.889565, 0.334197, -0.311426,
		-0.133810, -0.461203, -0.877147,
		43.877380, 28.872229, 26.948652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.140385, 29.691122, 27.058084>,  <43.971046, 29.195070, 27.562654>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.140385, 29.691122, 27.058084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.936436, 29.426258, 26.838421>,  <43.814068, 29.267340, 26.706623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.936436, 29.426258, 26.838421>,  <44.140385, 29.691122, 27.058084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.936436, 29.426258, 26.838421> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365345, 0.744619, -0.558628,
		0.778817, -0.084194, -0.621575,
		-0.509870, -0.662158, -0.549162,
		43.783474, 29.227612, 26.673672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307396, 29.810324, 26.439360>,  <44.140385, 29.691122, 27.058084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307396, 29.810324, 26.439360> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943268, 29.645840, 26.420456>,  <43.724792, 29.547150, 26.409115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.943268, 29.645840, 26.420456>,  <44.307396, 29.810324, 26.439360>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943268, 29.645840, 26.420456> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368809, 0.857642, -0.358372,
		0.187896, -0.308803, -0.932382,
		-0.910316, -0.411208, -0.047258,
		43.670174, 29.522478, 26.406279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027073, 29.905714, 25.810982>,  <44.307396, 29.810324, 26.439360>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027073, 29.905714, 25.810982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.695415, 29.806725, 26.011490>,  <43.496422, 29.747332, 26.131794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.695415, 29.806725, 26.011490>,  <44.027073, 29.905714, 25.810982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.695415, 29.806725, 26.011490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556195, 0.455358, -0.695195,
		-0.056216, -0.855223, -0.515202,
		-0.829148, -0.247472, 0.501269,
		43.446671, 29.732483, 26.161871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.583607, 29.869909, 25.309599>,  <44.027073, 29.905714, 25.810982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.583607, 29.869909, 25.309599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.321930, 29.867050, 25.612118>,  <43.164925, 29.865334, 25.793629>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.321930, 29.867050, 25.612118>,  <43.583607, 29.869909, 25.309599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321930, 29.867050, 25.612118> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664700, 0.482510, -0.570401,
		-0.360842, -0.875862, -0.320405,
		-0.654191, -0.007149, 0.756295,
		43.125671, 29.864906, 25.839006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.968319, 29.689743, 25.002789>,  <43.583607, 29.869909, 25.309599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.968319, 29.689743, 25.002789> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865788, 29.877548, 25.340748>,  <42.804268, 29.990231, 25.543524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.865788, 29.877548, 25.340748>,  <42.968319, 29.689743, 25.002789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865788, 29.877548, 25.340748> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756480, 0.446673, -0.477725,
		-0.601690, -0.761605, 0.240680,
		-0.256332, 0.469512, 0.844898,
		42.788887, 30.018402, 25.594217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202427, 29.659515, 25.133566>,  <42.968319, 29.689743, 25.002789>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202427, 29.659515, 25.133566> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340153, 29.976494, 25.334953>,  <42.422787, 30.166681, 25.455786>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.340153, 29.976494, 25.334953>,  <42.202427, 29.659515, 25.133566>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340153, 29.976494, 25.334953> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669769, 0.583114, -0.459769,
		-0.657921, -0.178902, 0.731529,
		0.344311, 0.792447, 0.503466,
		42.443447, 30.214228, 25.485992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.573429, 30.068027, 25.412657>,  <42.202427, 29.659515, 25.133566>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.573429, 30.068027, 25.412657> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887302, 30.315903, 25.406204>,  <42.075626, 30.464628, 25.402332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.887302, 30.315903, 25.406204>,  <41.573429, 30.068027, 25.412657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.887302, 30.315903, 25.406204> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564766, 0.703925, -0.430730,
		-0.255565, 0.347096, 0.902337,
		0.784682, 0.619689, -0.016130,
		42.122707, 30.501810, 25.401365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332619, 30.752121, 25.541206>,  <41.573429, 30.068027, 25.412657>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332619, 30.752121, 25.541206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692291, 30.814388, 25.377628>,  <41.908096, 30.851748, 25.279482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.692291, 30.814388, 25.377628>,  <41.332619, 30.752121, 25.541206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.692291, 30.814388, 25.377628> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369018, 0.772008, -0.517522,
		0.235149, 0.616256, 0.751620,
		0.899183, 0.155666, -0.408947,
		41.962048, 30.861088, 25.254944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.398315, 31.491495, 25.491856>,  <41.332619, 30.752121, 25.541206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.398315, 31.491495, 25.491856> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.648750, 31.340286, 25.219059>,  <41.799011, 31.249561, 25.055382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.648750, 31.340286, 25.219059>,  <41.398315, 31.491495, 25.491856>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.648750, 31.340286, 25.219059> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291422, 0.697807, -0.654323,
		0.723248, 0.608411, 0.326724,
		0.626087, -0.378024, -0.681992,
		41.836578, 31.226879, 25.014462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.543564, 32.092735, 25.149878>,  <41.398315, 31.491495, 25.491856>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.543564, 32.092735, 25.149878> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.674606, 31.808449, 24.900864>,  <41.753231, 31.637877, 24.751455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.674606, 31.808449, 24.900864>,  <41.543564, 32.092735, 25.149878>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.674606, 31.808449, 24.900864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330551, 0.531038, -0.780215,
		0.885103, 0.461385, -0.060956,
		0.327610, -0.710719, -0.622535,
		41.772888, 31.595232, 24.714104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.896408, 32.467365, 24.647192>,  <41.543564, 32.092735, 25.149878>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.896408, 32.467365, 24.647192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820000, 32.111065, 24.482231>,  <41.774155, 31.897285, 24.383255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.820000, 32.111065, 24.482231>,  <41.896408, 32.467365, 24.647192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.820000, 32.111065, 24.482231> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243127, 0.449983, -0.859305,
		0.950999, -0.063881, -0.302522,
		-0.191023, -0.890749, -0.412402,
		41.762691, 31.843840, 24.358511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.262936, 32.444328, 23.934153>,  <41.896408, 32.467365, 24.647192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.262936, 32.444328, 23.934153> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979023, 32.163223, 23.914837>,  <41.808674, 31.994560, 23.903248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.979023, 32.163223, 23.914837>,  <42.262936, 32.444328, 23.934153>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979023, 32.163223, 23.914837> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182737, 0.249900, -0.950872,
		0.680307, -0.666086, -0.305795,
		-0.709781, -0.702765, -0.048290,
		41.766090, 31.952394, 23.900351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.454056, 32.135960, 23.365398>,  <42.262936, 32.444328, 23.934153>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.454056, 32.135960, 23.365398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.070030, 32.046810, 23.433056>,  <41.839615, 31.993320, 23.473650>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.070030, 32.046810, 23.433056>,  <42.454056, 32.135960, 23.365398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070030, 32.046810, 23.433056> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221860, 0.238092, -0.945563,
		0.170471, -0.945325, -0.278030,
		-0.960061, -0.222875, 0.169142,
		41.782013, 31.979948, 23.483799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.257248, 31.873894, 22.793861>,  <42.454056, 32.135960, 23.365398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.257248, 31.873894, 22.793861> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910435, 31.969383, 22.968800>,  <41.702347, 32.026676, 23.073763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910435, 31.969383, 22.968800>,  <42.257248, 31.873894, 22.793861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910435, 31.969383, 22.968800> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370732, 0.277350, -0.886361,
		-0.332894, -0.930638, -0.151968,
		-0.867029, 0.238724, 0.437345,
		41.650326, 32.041000, 23.100002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.724819, 31.646915, 22.375656>,  <42.257248, 31.873894, 22.793861>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.724819, 31.646915, 22.375656> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.536472, 31.914951, 22.605183>,  <41.423466, 32.075771, 22.742899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.536472, 31.914951, 22.605183>,  <41.724819, 31.646915, 22.375656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.536472, 31.914951, 22.605183> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589700, 0.244702, -0.769659,
		-0.656155, -0.700785, 0.279930,
		-0.470866, 0.670090, 0.573815,
		41.395214, 32.115978, 22.777327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982056, 31.682896, 22.069195>,  <41.724819, 31.646915, 22.375656>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982056, 31.682896, 22.069195> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031075, 32.015827, 22.285419>,  <41.060486, 32.215588, 22.415154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.031075, 32.015827, 22.285419>,  <40.982056, 31.682896, 22.069195>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.031075, 32.015827, 22.285419> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556184, 0.508698, -0.657180,
		-0.821974, -0.220117, 0.525269,
		0.122547, 0.832331, 0.540562,
		41.067837, 32.265526, 22.447588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.362061, 31.945679, 22.011890>,  <40.982056, 31.682896, 22.069195>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.362061, 31.945679, 22.011890> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576794, 32.263451, 22.125519>,  <40.705635, 32.454113, 22.193695>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.576794, 32.263451, 22.125519>,  <40.362061, 31.945679, 22.011890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576794, 32.263451, 22.125519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537334, 0.581519, -0.610826,
		-0.650449, 0.175271, 0.739051,
		0.536832, 0.794428, 0.284069,
		40.737843, 32.501778, 22.210739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.908760, 32.426338, 22.204361>,  <40.362061, 31.945679, 22.011890>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.908760, 32.426338, 22.204361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232948, 32.637978, 22.103802>,  <40.427460, 32.764961, 22.043467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.232948, 32.637978, 22.103802>,  <39.908760, 32.426338, 22.204361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.232948, 32.637978, 22.103802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542432, 0.515830, -0.663090,
		-0.221159, 0.673779, 0.705061,
		0.810467, 0.529095, -0.251399,
		40.476089, 32.796707, 22.028381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.303928, 32.056175, 22.348614>,  <39.908760, 32.426338, 22.204361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.303928, 32.056175, 22.348614> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930969, 31.962238, 22.458515>,  <38.707195, 31.905874, 22.524456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.930969, 31.962238, 22.458515>,  <39.303928, 32.056175, 22.348614>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930969, 31.962238, 22.458515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357834, -0.706931, 0.610084,
		0.050955, 0.667154, 0.743175,
		-0.932394, -0.234846, 0.274752,
		38.651253, 31.891785, 22.540941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.326817, 32.072556, 23.122772>,  <39.303928, 32.056175, 22.348614>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.326817, 32.072556, 23.122772> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041840, 31.830753, 22.980221>,  <38.870853, 31.685673, 22.894690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.041840, 31.830753, 22.980221>,  <39.326817, 32.072556, 23.122772>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041840, 31.830753, 22.980221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345831, -0.744358, 0.571255,
		-0.610597, 0.283739, 0.739367,
		-0.712441, -0.604502, -0.356378,
		38.828106, 31.649403, 22.873308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026173, 31.694935, 23.672688>,  <39.326817, 32.072556, 23.122772>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026173, 31.694935, 23.672688> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864853, 31.463108, 23.389435>,  <38.768059, 31.324013, 23.219482>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.864853, 31.463108, 23.389435>,  <39.026173, 31.694935, 23.672688>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864853, 31.463108, 23.389435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005814, -0.772218, 0.635331,
		-0.915049, 0.260347, 0.308067,
		-0.403301, -0.579567, -0.708131,
		38.743862, 31.289238, 23.176996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619003, 31.227850, 24.012207>,  <39.026173, 31.694935, 23.672688>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619003, 31.227850, 24.012207> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667862, 31.036602, 23.664303>,  <38.697178, 30.921852, 23.455561>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.667862, 31.036602, 23.664303>,  <38.619003, 31.227850, 24.012207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667862, 31.036602, 23.664303> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008592, -0.876797, 0.480783,
		-0.992475, -0.051252, -0.111203,
		0.122143, -0.478121, -0.869760,
		38.704506, 30.893166, 23.403376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194664, 30.660685, 23.981907>,  <38.619003, 31.227850, 24.012207>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194664, 30.660685, 23.981907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459827, 30.546516, 23.705040>,  <38.618923, 30.478016, 23.538919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.459827, 30.546516, 23.705040>,  <38.194664, 30.660685, 23.981907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.459827, 30.546516, 23.705040> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006429, -0.926621, 0.375942,
		-0.748675, -0.244764, -0.616097,
		0.662906, -0.285420, -0.692165,
		38.658699, 30.460890, 23.497391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.995079, 29.936020, 23.888882>,  <38.194664, 30.660685, 23.981907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.995079, 29.936020, 23.888882> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352283, 29.972893, 23.712688>,  <38.566608, 29.995016, 23.606972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.352283, 29.972893, 23.712688>,  <37.995079, 29.936020, 23.888882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.352283, 29.972893, 23.712688> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304116, -0.845091, 0.439697,
		-0.331718, -0.526614, -0.782713,
		0.893015, 0.092180, -0.440485,
		38.620190, 30.000547, 23.580544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.187717, 29.164499, 23.966288>,  <37.995079, 29.936020, 23.888882>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.187717, 29.164499, 23.966288> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506737, 29.398655, 23.908005>,  <38.698151, 29.539148, 23.873035>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.506737, 29.398655, 23.908005>,  <38.187717, 29.164499, 23.966288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.506737, 29.398655, 23.908005> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576471, -0.668413, 0.470007,
		0.177743, -0.458852, -0.870553,
		0.797552, 0.585389, -0.145709,
		38.746002, 29.574272, 23.864292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837891, 28.797070, 23.663515>,  <38.187717, 29.164499, 23.966288>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837891, 28.797070, 23.663515> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916561, 29.114738, 23.893509>,  <38.963764, 29.305340, 24.031506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<38.916561, 29.114738, 23.893509>,  <38.837891, 28.797070, 23.663515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.916561, 29.114738, 23.893509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663731, -0.539476, 0.518099,
		0.721651, 0.279738, -0.633219,
		0.196675, 0.794174, 0.574984,
		38.975563, 29.352991, 24.066004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537052, 28.708721, 23.789032>,  <38.837891, 28.797070, 23.663515>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537052, 28.708721, 23.789032> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439255, 28.964470, 24.080627>,  <39.380577, 29.117920, 24.255585>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.439255, 28.964470, 24.080627>,  <39.537052, 28.708721, 23.789032>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439255, 28.964470, 24.080627> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705736, -0.398226, 0.585964,
		0.664952, 0.657737, -0.353866,
		-0.244491, 0.639373, 0.728989,
		39.365906, 29.156282, 24.299324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181606, 28.911276, 24.122089>,  <39.537052, 28.708721, 23.789032>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181606, 28.911276, 24.122089> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900894, 28.995815, 24.394218>,  <39.732468, 29.046539, 24.557495>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.900894, 28.995815, 24.394218>,  <40.181606, 28.911276, 24.122089>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900894, 28.995815, 24.394218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559545, -0.427540, 0.710013,
		0.440925, 0.878943, 0.181780,
		-0.701779, 0.211348, 0.680322,
		39.690361, 29.059219, 24.598314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.602177, 29.062918, 24.636967>,  <40.181606, 28.911276, 24.122089>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.602177, 29.062918, 24.636967> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247410, 29.021534, 24.817047>,  <40.034550, 28.996704, 24.925095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247410, 29.021534, 24.817047>,  <40.602177, 29.062918, 24.636967>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247410, 29.021534, 24.817047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455453, -0.358570, 0.814856,
		0.077122, 0.927752, 0.365142,
		-0.886913, -0.103462, 0.450201,
		39.981335, 28.990496, 24.952106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508957, 29.437096, 25.252954>,  <40.602177, 29.062918, 24.636967>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508957, 29.437096, 25.252954> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244713, 29.142044, 25.308811>,  <40.086166, 28.965014, 25.342325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.244713, 29.142044, 25.308811>,  <40.508957, 29.437096, 25.252954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.244713, 29.142044, 25.308811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456483, -0.247006, 0.854758,
		-0.596001, 0.628406, 0.499889,
		-0.660610, -0.737628, 0.139640,
		40.046528, 28.920755, 25.350704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483135, 29.515842, 25.945335>,  <40.508957, 29.437096, 25.252954>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483135, 29.515842, 25.945335> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.324986, 29.162880, 25.843327>,  <40.230095, 28.951103, 25.782122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.324986, 29.162880, 25.843327>,  <40.483135, 29.515842, 25.945335>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.324986, 29.162880, 25.843327> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334934, -0.397032, 0.854508,
		-0.855276, 0.252435, 0.452525,
		-0.395375, -0.882407, -0.255023,
		40.206371, 28.898157, 25.766819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.899170, 29.354958, 26.391220>,  <40.483135, 29.515842, 25.945335>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.899170, 29.354958, 26.391220> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057411, 29.015720, 26.250233>,  <40.152355, 28.812178, 26.165640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.057411, 29.015720, 26.250233>,  <39.899170, 29.354958, 26.391220>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.057411, 29.015720, 26.250233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314138, -0.235679, 0.919659,
		-0.863028, -0.474542, 0.173184,
		0.395601, -0.848095, -0.352470,
		40.176090, 28.761292, 26.144491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.791786, 28.840267, 26.881702>,  <39.899170, 29.354958, 26.391220>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.791786, 28.840267, 26.881702> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086903, 28.684761, 26.660969>,  <40.263973, 28.591457, 26.528528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.086903, 28.684761, 26.660969>,  <39.791786, 28.840267, 26.881702>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.086903, 28.684761, 26.660969> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414534, -0.384251, 0.824932,
		-0.532750, -0.837383, -0.122340,
		0.737793, -0.388768, -0.551834,
		40.308239, 28.568130, 26.495419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.913288, 28.215048, 27.199547>,  <39.791786, 28.840267, 26.881702>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.913288, 28.215048, 27.199547> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247486, 28.262352, 26.984898>,  <40.448006, 28.290733, 26.856108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.247486, 28.262352, 26.984898>,  <39.913288, 28.215048, 27.199547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.247486, 28.262352, 26.984898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547676, -0.258672, 0.795701,
		-0.044710, -0.958699, -0.280887,
		0.835495, 0.118259, -0.536622,
		40.498135, 28.297829, 26.823912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.219090, 27.620796, 27.300854>,  <39.913288, 28.215048, 27.199547>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.219090, 27.620796, 27.300854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485081, 27.911114, 27.230400>,  <40.644676, 28.085304, 27.188128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.485081, 27.911114, 27.230400>,  <40.219090, 27.620796, 27.300854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485081, 27.911114, 27.230400> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529347, -0.291651, 0.796700,
		0.526870, -0.623027, -0.578139,
		0.664981, 0.725794, -0.176135,
		40.684574, 28.128853, 27.177559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.879982, 27.268894, 27.395178>,  <40.219090, 27.620796, 27.300854>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.879982, 27.268894, 27.395178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978844, 27.655720, 27.419510>,  <41.038158, 27.887815, 27.434109>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.978844, 27.655720, 27.419510>,  <40.879982, 27.268894, 27.395178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978844, 27.655720, 27.419510> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517829, -0.184879, 0.835268,
		0.819005, -0.174940, -0.546468,
		0.247152, 0.967066, 0.060828,
		41.052990, 27.945839, 27.437757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.593643, 27.291620, 27.402040>,  <40.879982, 27.268894, 27.395178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.593643, 27.291620, 27.402040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.490330, 27.639046, 27.571220>,  <41.428341, 27.847502, 27.672728>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.490330, 27.639046, 27.571220>,  <41.593643, 27.291620, 27.402040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.490330, 27.639046, 27.571220> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690256, -0.140387, 0.709815,
		0.675897, 0.475276, -0.563273,
		-0.258282, 0.868565, 0.422949,
		41.412846, 27.899614, 27.698105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.991169, 27.235914, 27.982172>,  <41.593643, 27.291620, 27.402040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.991169, 27.235914, 27.982172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.814175, 27.587440, 28.053596>,  <41.707977, 27.798357, 28.096451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.814175, 27.587440, 28.053596>,  <41.991169, 27.235914, 27.982172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814175, 27.587440, 28.053596> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414012, 0.023566, 0.909967,
		0.795486, 0.476577, -0.374268,
		-0.442489, 0.878817, 0.178562,
		41.681427, 27.851086, 28.107164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.510883, 27.775885, 28.142340>,  <41.991169, 27.235914, 27.982172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.510883, 27.775885, 28.142340> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.154285, 27.828808, 28.315655>,  <41.940327, 27.860561, 28.419643>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.154285, 27.828808, 28.315655>,  <42.510883, 27.775885, 28.142340>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.154285, 27.828808, 28.315655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432070, -0.039297, 0.900984,
		0.136237, 0.990429, -0.022134,
		-0.891491, 0.132310, 0.433288,
		41.886837, 27.868502, 28.445641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<27.470848, 23.410091, 30.697943> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.816858, 23.517128, 30.867710>,  <28.024464, 23.581350, 30.969570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.816858, 23.517128, 30.867710>,  <27.470848, 23.410091, 30.697943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.816858, 23.517128, 30.867710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186472, -0.956776, 0.223178,
		0.465793, -0.113912, -0.877531,
		0.865023, 0.267589, 0.424418,
		28.076365, 23.597404, 30.995035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.968805, 22.814777, 30.615318>,  <27.470848, 23.410091, 30.697943>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.968805, 22.814777, 30.615318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.128410, 23.031628, 30.911125>,  <28.224173, 23.161737, 31.088610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.128410, 23.031628, 30.911125>,  <27.968805, 22.814777, 30.615318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128410, 23.031628, 30.911125> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302258, -0.839190, 0.452107,
		0.865696, 0.043129, -0.498709,
		0.399013, 0.542126, 0.739519,
		28.248114, 23.194265, 31.132980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.601795, 22.569567, 30.686546>,  <27.968805, 22.814777, 30.615318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.601795, 22.569567, 30.686546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.535095, 22.776798, 31.022114>,  <28.495075, 22.901138, 31.223455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.535095, 22.776798, 31.022114>,  <28.601795, 22.569567, 30.686546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.535095, 22.776798, 31.022114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118734, -0.834090, 0.538698,
		0.978824, 0.189436, 0.077570,
		-0.166749, 0.518081, 0.838920,
		28.485071, 22.932222, 31.273790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.020508, 22.281418, 31.119556>,  <28.601795, 22.569567, 30.686546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.020508, 22.281418, 31.119556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770359, 22.461266, 31.374664>,  <28.620270, 22.569174, 31.527729>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.770359, 22.461266, 31.374664>,  <29.020508, 22.281418, 31.119556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.770359, 22.461266, 31.374664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097364, -0.765966, 0.635465,
		0.774227, 0.459499, 0.435239,
		-0.625373, 0.449618, 0.637771,
		28.582747, 22.596151, 31.565996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.298023, 22.128965, 31.753460>,  <29.020508, 22.281418, 31.119556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.298023, 22.128965, 31.753460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.915974, 22.226357, 31.820938>,  <28.686745, 22.284790, 31.861425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.915974, 22.226357, 31.820938>,  <29.298023, 22.128965, 31.753460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.915974, 22.226357, 31.820938> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019796, -0.620711, 0.783789,
		0.295545, 0.745276, 0.597676,
		-0.955124, 0.243477, 0.168695,
		28.629436, 22.299400, 31.871546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258917, 22.165152, 32.502132>,  <29.298023, 22.128965, 31.753460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258917, 22.165152, 32.502132> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.884695, 22.099895, 32.376835>,  <28.660162, 22.060741, 32.301655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.884695, 22.099895, 32.376835>,  <29.258917, 22.165152, 32.502132>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.884695, 22.099895, 32.376835> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138872, -0.645565, 0.750973,
		-0.324735, 0.746077, 0.581306,
		-0.935554, -0.163139, -0.313247,
		28.604029, 22.050953, 32.282860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793633, 22.331577, 33.026878>,  <29.258917, 22.165152, 32.502132>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793633, 22.331577, 33.026878> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622526, 22.062859, 32.784985>,  <28.519863, 21.901627, 32.639847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.622526, 22.062859, 32.784985>,  <28.793633, 22.331577, 33.026878>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.622526, 22.062859, 32.784985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206679, -0.578618, 0.788978,
		-0.879943, 0.462484, 0.108666,
		-0.427766, -0.671796, -0.604736,
		28.494196, 21.861320, 32.603565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285822, 21.961369, 33.462841>,  <28.793633, 22.331577, 33.026878>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285822, 21.961369, 33.462841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373592, 21.743290, 33.139210>,  <28.426254, 21.612442, 32.945030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.373592, 21.743290, 33.139210>,  <28.285822, 21.961369, 33.462841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.373592, 21.743290, 33.139210> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068437, -0.835851, 0.544674,
		-0.973226, -0.064144, -0.220718,
		0.219425, -0.545197, -0.809082,
		28.439421, 21.579731, 32.896484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.811306, 21.461704, 33.536655>,  <28.285822, 21.961369, 33.462841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.811306, 21.461704, 33.536655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096060, 21.320175, 33.293995>,  <28.266912, 21.235258, 33.148399>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.096060, 21.320175, 33.293995>,  <27.811306, 21.461704, 33.536655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.096060, 21.320175, 33.293995> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151812, -0.920919, 0.358972,
		-0.685690, -0.163450, -0.709305,
		0.711886, -0.353825, -0.606651,
		28.309626, 21.214027, 33.112000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.593475, 20.811579, 33.337135>,  <27.811306, 21.461704, 33.536655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.593475, 20.811579, 33.337135> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.987982, 20.783985, 33.277107>,  <28.224686, 20.767429, 33.241089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.987982, 20.783985, 33.277107>,  <27.593475, 20.811579, 33.337135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.987982, 20.783985, 33.277107> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030203, -0.968610, 0.246745,
		-0.162380, -0.238823, -0.957390,
		0.986266, -0.068982, -0.150070,
		28.283861, 20.763290, 33.232086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.714514, 20.105745, 33.138988>,  <27.593475, 20.811579, 33.337135>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.714514, 20.105745, 33.138988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079966, 20.231586, 33.241989>,  <28.299236, 20.307091, 33.303791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.079966, 20.231586, 33.241989>,  <27.714514, 20.105745, 33.138988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079966, 20.231586, 33.241989> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175286, -0.876318, 0.448712,
		0.366822, -0.364818, -0.855774,
		0.913628, 0.314603, 0.257505,
		28.354053, 20.325968, 33.319241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.174349, 19.457506, 33.028103>,  <27.714514, 20.105745, 33.138988>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.174349, 19.457506, 33.028103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.336105, 19.738644, 33.262192>,  <28.433159, 19.907326, 33.402645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.336105, 19.738644, 33.262192>,  <28.174349, 19.457506, 33.028103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.336105, 19.738644, 33.262192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281332, -0.704442, 0.651624,
		0.870242, -0.098870, -0.482601,
		0.404390, 0.702842, 0.585220,
		28.457422, 19.949495, 33.437759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.817522, 19.261955, 33.463856>,  <28.174349, 19.457506, 33.028103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.817522, 19.261955, 33.463856> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628931, 19.568542, 33.638321>,  <28.515778, 19.752495, 33.743000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.628931, 19.568542, 33.638321>,  <28.817522, 19.261955, 33.463856>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628931, 19.568542, 33.638321> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034696, -0.478075, 0.877634,
		0.881196, 0.428916, 0.198808,
		-0.471476, 0.766469, 0.436159,
		28.487488, 19.798483, 33.769169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448261, 18.928743, 33.667309>,  <28.817522, 19.261955, 33.463856>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448261, 18.928743, 33.667309> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268995, 19.018051, 34.013557>,  <29.161436, 19.071636, 34.221306>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268995, 19.018051, 34.013557>,  <29.448261, 18.928743, 33.667309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268995, 19.018051, 34.013557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227381, -0.907990, 0.351925,
		0.864548, 0.354547, 0.356164,
		-0.448167, 0.223272, 0.865619,
		29.134544, 19.085033, 34.273243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.480263, 18.817236, 32.806194>,  <29.448261, 18.928743, 33.667309>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.480263, 18.817236, 32.806194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741577, 18.571796, 32.628784>,  <29.898365, 18.424534, 32.522339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.741577, 18.571796, 32.628784>,  <29.480263, 18.817236, 32.806194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741577, 18.571796, 32.628784> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015728, 0.574690, -0.818220,
		0.756948, 0.541507, 0.365786,
		0.653286, -0.613597, -0.443528,
		29.937563, 18.387718, 32.495728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911961, 19.272915, 32.506691>,  <29.480263, 18.817236, 32.806194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911961, 19.272915, 32.506691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975063, 18.919922, 32.329453>,  <30.012924, 18.708126, 32.223110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.975063, 18.919922, 32.329453>,  <29.911961, 19.272915, 32.506691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.975063, 18.919922, 32.329453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135461, 0.463812, -0.875516,
		0.978143, 0.078096, 0.192712,
		0.157757, -0.882485, -0.443096,
		30.022390, 18.655176, 32.196526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.537176, 19.315247, 32.223343>,  <29.911961, 19.272915, 32.506691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.537176, 19.315247, 32.223343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347673, 19.041561, 32.001568>,  <30.233973, 18.877350, 31.868502>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.347673, 19.041561, 32.001568>,  <30.537176, 19.315247, 32.223343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.347673, 19.041561, 32.001568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158477, 0.553064, -0.817927,
		0.866280, -0.475364, -0.153585,
		-0.473756, -0.684214, -0.554442,
		30.205547, 18.836296, 31.835236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933571, 19.253939, 31.656567>,  <30.537176, 19.315247, 32.223343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933571, 19.253939, 31.656567> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588493, 19.091702, 31.535732>,  <30.381447, 18.994360, 31.463232>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.588493, 19.091702, 31.535732>,  <30.933571, 19.253939, 31.656567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588493, 19.091702, 31.535732> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091274, 0.462646, -0.881832,
		0.497426, -0.788321, -0.362101,
		-0.862691, -0.405596, -0.302086,
		30.329685, 18.970024, 31.445107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045315, 19.014349, 30.936436>,  <30.933571, 19.253939, 31.656567>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045315, 19.014349, 30.936436> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657467, 19.090324, 30.998093>,  <30.424759, 19.135910, 31.035088>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.657467, 19.090324, 30.998093>,  <31.045315, 19.014349, 30.936436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.657467, 19.090324, 30.998093> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028950, 0.714818, -0.698711,
		-0.242898, -0.673021, -0.698600,
		-0.969620, 0.189940, 0.154144,
		30.366581, 19.147306, 31.044336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.806978, 19.060394, 30.300459>,  <31.045315, 19.014349, 30.936436>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.806978, 19.060394, 30.300459> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528570, 19.265347, 30.501663>,  <30.361525, 19.388319, 30.622385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.528570, 19.265347, 30.501663>,  <30.806978, 19.060394, 30.300459>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.528570, 19.265347, 30.501663> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101735, 0.623108, -0.775491,
		-0.710777, -0.590933, -0.381569,
		-0.696022, 0.512382, 0.503009,
		30.319763, 19.419062, 30.652567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.383245, 19.229317, 29.827433>,  <30.806978, 19.060394, 30.300459>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.383245, 19.229317, 29.827433> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330069, 19.472038, 30.140896>,  <30.298162, 19.617670, 30.328974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.330069, 19.472038, 30.140896>,  <30.383245, 19.229317, 29.827433>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.330069, 19.472038, 30.140896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107289, 0.794839, -0.597261,
		-0.985300, 0.004678, -0.170769,
		-0.132940, 0.606803, 0.783656,
		30.290186, 19.654079, 30.375992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.070795, 19.739550, 29.541574>,  <30.383245, 19.229317, 29.827433>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.070795, 19.739550, 29.541574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174513, 19.917362, 29.884541>,  <30.236744, 20.024050, 30.090321>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.174513, 19.917362, 29.884541>,  <30.070795, 19.739550, 29.541574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174513, 19.917362, 29.884541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003656, 0.887320, -0.461140,
		-0.965791, 0.122705, 0.228452,
		0.259294, 0.444529, 0.857415,
		30.252300, 20.050720, 30.141766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.682604, 20.316271, 29.537201>,  <30.070795, 19.739550, 29.541574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.682604, 20.316271, 29.537201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997707, 20.400730, 29.768665>,  <30.186769, 20.451405, 29.907545>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.997707, 20.400730, 29.768665>,  <29.682604, 20.316271, 29.537201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997707, 20.400730, 29.768665> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024382, 0.927991, -0.371805,
		-0.615499, 0.307002, 0.725886,
		0.787761, 0.211147, 0.578662,
		30.234035, 20.464075, 29.942265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.573595, 21.055176, 29.830244>,  <29.682604, 20.316271, 29.537201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.573595, 21.055176, 29.830244> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.963268, 20.968395, 29.855213>,  <30.197073, 20.916327, 29.870195>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.963268, 20.968395, 29.855213>,  <29.573595, 21.055176, 29.830244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.963268, 20.968395, 29.855213> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225658, 0.927746, -0.297265,
		0.006578, 0.303677, 0.952752,
		0.974184, -0.216952, 0.062425,
		30.255524, 20.903309, 29.873941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.958988, 21.648418, 30.050882>,  <29.573595, 21.055176, 29.830244>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.958988, 21.648418, 30.050882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276630, 21.453991, 29.904934>,  <30.467216, 21.337336, 29.817364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.276630, 21.453991, 29.904934>,  <29.958988, 21.648418, 30.050882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.276630, 21.453991, 29.904934> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271358, 0.820731, -0.502758,
		0.543837, 0.300233, 0.783647,
		0.794107, -0.486067, -0.364873,
		30.514862, 21.308170, 29.795471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.677607, 22.076284, 30.193199>,  <29.958988, 21.648418, 30.050882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.677607, 22.076284, 30.193199> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.766508, 21.836693, 29.885479>,  <30.819849, 21.692938, 29.700846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.766508, 21.836693, 29.885479>,  <30.677607, 22.076284, 30.193199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766508, 21.836693, 29.885479> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166623, 0.800764, -0.575339,
		0.960646, -0.000313, 0.277775,
		0.222252, -0.598980, -0.769303,
		30.833183, 21.657000, 29.654688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.247194, 22.421082, 29.856758>,  <30.677607, 22.076284, 30.193199>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.247194, 22.421082, 29.856758> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105650, 22.159817, 29.588978>,  <31.020723, 22.003057, 29.428310>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.105650, 22.159817, 29.588978>,  <31.247194, 22.421082, 29.856758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.105650, 22.159817, 29.588978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115529, 0.679754, -0.724284,
		0.928135, -0.333637, -0.165079,
		-0.353861, -0.653162, -0.669448,
		30.999491, 21.963867, 29.388144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726767, 22.271877, 29.389910>,  <31.247194, 22.421082, 29.856758>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726767, 22.271877, 29.389910> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367085, 22.204369, 29.228443>,  <31.151276, 22.163864, 29.131563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.367085, 22.204369, 29.228443>,  <31.726767, 22.271877, 29.389910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.367085, 22.204369, 29.228443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261470, 0.532451, -0.805065,
		0.350804, -0.829465, -0.434654,
		-0.899206, -0.168771, -0.403666,
		31.097322, 22.153736, 29.107344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109730, 22.141134, 28.810972>,  <31.726767, 22.271877, 29.389910>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109730, 22.141134, 28.810972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411308, 22.358379, 28.958805>,  <32.592255, 22.488726, 29.047504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.411308, 22.358379, 28.958805>,  <32.109730, 22.141134, 28.810972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.411308, 22.358379, 28.958805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169701, -0.704508, 0.689108,
		0.634638, -0.456833, -0.623328,
		0.753947, 0.543113, 0.369582,
		32.637493, 22.521313, 29.069679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793484, 21.643764, 28.876715>,  <32.109730, 22.141134, 28.810972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793484, 21.643764, 28.876715> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841228, 21.967422, 29.106857>,  <32.869877, 22.161617, 29.244942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.841228, 21.967422, 29.106857>,  <32.793484, 21.643764, 28.876715>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.841228, 21.967422, 29.106857> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347925, -0.576842, 0.739055,
		0.929893, 0.111962, -0.350378,
		0.119366, 0.809147, 0.575355,
		32.877037, 22.210167, 29.279465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.503117, 21.604679, 29.141169>,  <32.793484, 21.643764, 28.876715>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.503117, 21.604679, 29.141169> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295784, 21.839676, 29.389744>,  <33.171383, 21.980675, 29.538889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.295784, 21.839676, 29.389744>,  <33.503117, 21.604679, 29.141169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.295784, 21.839676, 29.389744> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446639, -0.433718, 0.782561,
		0.729278, 0.683185, -0.037587,
		-0.518332, 0.587492, 0.621438,
		33.140285, 22.015924, 29.576176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859711, 21.609335, 29.673317>,  <33.503117, 21.604679, 29.141169>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859711, 21.609335, 29.673317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543026, 21.781639, 29.846588>,  <33.353016, 21.885021, 29.950552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.543026, 21.781639, 29.846588>,  <33.859711, 21.609335, 29.673317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.543026, 21.781639, 29.846588> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151119, -0.548951, 0.822080,
		0.591914, 0.716309, 0.369513,
		-0.791708, 0.430760, 0.433180,
		33.305515, 21.910868, 29.976542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144928, 22.025175, 30.293591>,  <33.859711, 21.609335, 29.673317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144928, 22.025175, 30.293591> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764111, 21.902855, 30.297443>,  <33.535618, 21.829462, 30.299755>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.764111, 21.902855, 30.297443>,  <34.144928, 22.025175, 30.293591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764111, 21.902855, 30.297443> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194316, -0.580042, 0.791070,
		-0.236321, 0.755008, 0.611649,
		-0.952047, -0.305800, 0.009634,
		33.478497, 21.811115, 30.300333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.084637, 21.893932, 30.951324>,  <34.144928, 22.025175, 30.293591>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.084637, 21.893932, 30.951324> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747105, 21.731312, 30.811230>,  <33.544586, 21.633739, 30.727173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.747105, 21.731312, 30.811230>,  <34.084637, 21.893932, 30.951324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.747105, 21.731312, 30.811230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088648, -0.538098, 0.838208,
		-0.529237, 0.738353, 0.418023,
		-0.843830, -0.406554, -0.350235,
		33.493958, 21.609346, 30.706160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578270, 21.979513, 31.485682>,  <34.084637, 21.893932, 30.951324>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.578270, 21.979513, 31.485682> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449192, 21.669415, 31.268478>,  <33.371746, 21.483355, 31.138157>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449192, 21.669415, 31.268478>,  <33.578270, 21.979513, 31.485682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449192, 21.669415, 31.268478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189026, -0.509359, 0.839537,
		-0.927435, 0.373559, 0.017827,
		-0.322697, -0.775247, -0.543009,
		33.352383, 21.436840, 31.105576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.209164, 22.595390, 31.898027>,  <33.578270, 21.979513, 31.485682>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.209164, 22.595390, 31.898027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482136, 22.793159, 32.113373>,  <33.645920, 22.911821, 32.242580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482136, 22.793159, 32.113373>,  <33.209164, 22.595390, 31.898027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482136, 22.793159, 32.113373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418579, 0.339466, -0.842350,
		-0.599233, 0.800193, 0.024707,
		0.682430, 0.494423, 0.538364,
		33.686863, 22.941486, 32.274883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249542, 23.410452, 31.705942>,  <33.209164, 22.595390, 31.898027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249542, 23.410452, 31.705942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593548, 23.285461, 31.867306>,  <33.799950, 23.210468, 31.964125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.593548, 23.285461, 31.867306>,  <33.249542, 23.410452, 31.705942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593548, 23.285461, 31.867306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507513, 0.441663, -0.739841,
		0.053011, 0.841008, 0.538420,
		0.860012, -0.312474, 0.403409,
		33.851551, 23.191719, 31.988329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.637554, 23.916704, 31.694122>,  <33.249542, 23.410452, 31.705942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.637554, 23.916704, 31.694122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916710, 23.632679, 31.731571>,  <34.084202, 23.462263, 31.754040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.916710, 23.632679, 31.731571>,  <33.637554, 23.916704, 31.694122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.916710, 23.632679, 31.731571> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570173, 0.471710, -0.672602,
		0.433428, 0.522779, 0.734059,
		0.697885, -0.710065, 0.093622,
		34.126076, 23.419659, 31.759657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233738, 24.266888, 31.844952>,  <33.637554, 23.916704, 31.694122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233738, 24.266888, 31.844952> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351933, 23.914024, 31.698265>,  <34.422852, 23.702307, 31.610252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.351933, 23.914024, 31.698265>,  <34.233738, 24.266888, 31.844952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351933, 23.914024, 31.698265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522130, 0.470580, -0.711291,
		0.800041, 0.018706, 0.599654,
		0.295491, -0.882159, -0.366716,
		34.440578, 23.649376, 31.588249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.854164, 24.420919, 31.519516>,  <34.233738, 24.266888, 31.844952>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.854164, 24.420919, 31.519516> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822418, 24.046856, 31.381424>,  <34.803371, 23.822418, 31.298569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.822418, 24.046856, 31.381424>,  <34.854164, 24.420919, 31.519516>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.822418, 24.046856, 31.381424> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589817, 0.235144, -0.772544,
		0.803628, -0.264932, 0.532910,
		-0.079361, -0.935157, -0.345230,
		34.798611, 23.766310, 31.277855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.552944, 24.304266, 31.290552>,  <34.854164, 24.420919, 31.519516>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.552944, 24.304266, 31.290552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297943, 24.071312, 31.088791>,  <35.144943, 23.931540, 30.967733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.297943, 24.071312, 31.088791>,  <35.552944, 24.304266, 31.290552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297943, 24.071312, 31.088791> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364556, 0.348742, -0.863411,
		0.678742, -0.734308, -0.010012,
		-0.637501, -0.582383, -0.504402,
		35.106693, 23.896597, 30.937469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.945805, 24.032785, 30.782286>,  <35.552944, 24.304266, 31.290552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.945805, 24.032785, 30.782286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574810, 23.962757, 30.650154>,  <35.352215, 23.920740, 30.570875>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.574810, 23.962757, 30.650154>,  <35.945805, 24.032785, 30.782286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574810, 23.962757, 30.650154> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222282, 0.452198, -0.863775,
		0.300597, -0.874566, -0.380493,
		-0.927487, -0.175071, -0.330330,
		35.296562, 23.910236, 30.551056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<30.706680, 22.029917, 34.110310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.311243, 21.982628, 34.072990>,  <30.073980, 21.954254, 34.050598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.311243, 21.982628, 34.072990>,  <30.706680, 22.029917, 34.110310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.311243, 21.982628, 34.072990> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062869, 0.886894, -0.457675,
		0.136853, -0.446589, -0.884211,
		-0.988595, -0.118223, -0.093297,
		30.014666, 21.947161, 34.045002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.484501, 22.341650, 33.505089>,  <30.706680, 22.029917, 34.110310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.484501, 22.341650, 33.505089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109974, 22.300167, 33.639286>,  <29.885258, 22.275278, 33.719807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.109974, 22.300167, 33.639286>,  <30.484501, 22.341650, 33.505089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.109974, 22.300167, 33.639286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203094, 0.939326, -0.276442,
		-0.286471, -0.326974, -0.900568,
		-0.936316, -0.103707, 0.335497,
		29.829079, 22.269054, 33.739937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.109169, 22.698586, 33.058441>,  <30.484501, 22.341650, 33.505089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.109169, 22.698586, 33.058441> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865845, 22.682182, 33.375496>,  <29.719851, 22.672340, 33.565731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.865845, 22.682182, 33.375496>,  <30.109169, 22.698586, 33.058441>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865845, 22.682182, 33.375496> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284705, 0.943478, -0.169683,
		-0.740880, -0.328888, -0.585601,
		-0.608309, -0.041008, 0.792640,
		29.683352, 22.669880, 33.613289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402481, 22.927229, 32.815311>,  <30.109169, 22.698586, 33.058441>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402481, 22.927229, 32.815311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.445560, 22.984711, 33.208809>,  <29.471409, 23.019199, 33.444908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.445560, 22.984711, 33.208809>,  <29.402481, 22.927229, 32.815311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.445560, 22.984711, 33.208809> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181350, 0.975736, -0.122681,
		-0.977503, -0.165189, 0.131148,
		0.107701, 0.143705, 0.983742,
		29.477871, 23.027822, 33.503933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.771049, 23.223309, 32.968578>,  <29.402481, 22.927229, 32.815311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.771049, 23.223309, 32.968578> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.026489, 23.316532, 33.261940>,  <29.179752, 23.372467, 33.437958>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.026489, 23.316532, 33.261940>,  <28.771049, 23.223309, 32.968578>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026489, 23.316532, 33.261940> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280331, 0.958005, -0.060339,
		-0.716664, -0.167063, 0.677113,
		0.638598, 0.233059, 0.733401,
		29.218069, 23.386450, 33.481960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400187, 23.706680, 33.391075>,  <28.771049, 23.223309, 32.968578>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400187, 23.706680, 33.391075> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.779877, 23.759338, 33.505367>,  <29.007690, 23.790934, 33.573940>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.779877, 23.759338, 33.505367>,  <28.400187, 23.706680, 33.391075>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.779877, 23.759338, 33.505367> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134573, 0.990859, -0.009454,
		-0.284361, -0.029477, 0.958264,
		0.949226, 0.131645, 0.285728,
		29.064644, 23.798832, 33.591087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.337202, 23.953533, 34.055969>,  <28.400187, 23.706680, 33.391075>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.337202, 23.953533, 34.055969> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.679003, 24.066921, 33.881855>,  <28.884083, 24.134954, 33.777386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.679003, 24.066921, 33.881855>,  <28.337202, 23.953533, 34.055969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.679003, 24.066921, 33.881855> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260650, 0.958827, 0.112743,
		0.449319, 0.017117, 0.893207,
		0.854502, 0.283472, -0.435281,
		28.935354, 24.151962, 33.751270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.419655, 24.501223, 34.429455>,  <28.337202, 23.953533, 34.055969>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.419655, 24.501223, 34.429455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.681028, 24.553425, 34.131195>,  <28.837852, 24.584747, 33.952240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.681028, 24.553425, 34.131195>,  <28.419655, 24.501223, 34.429455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.681028, 24.553425, 34.131195> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122529, 0.990272, 0.065947,
		0.747003, 0.048272, 0.663066,
		0.653432, 0.130507, -0.745651,
		28.877058, 24.592577, 33.907501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.793961, 25.050396, 34.636341>,  <28.419655, 24.501223, 34.429455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.793961, 25.050396, 34.636341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860165, 25.051746, 34.241859>,  <28.899887, 25.052557, 34.005169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.860165, 25.051746, 34.241859>,  <28.793961, 25.050396, 34.636341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.860165, 25.051746, 34.241859> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001480, 0.999994, 0.003177,
		0.986207, 0.000934, 0.165513,
		0.165509, 0.003378, -0.986203,
		28.909817, 25.052759, 33.945999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.352978, 25.506205, 34.521313>,  <28.793961, 25.050396, 34.636341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.352978, 25.506205, 34.521313> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145422, 25.484585, 34.180061>,  <29.020887, 25.471613, 33.975311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.145422, 25.484585, 34.180061>,  <29.352978, 25.506205, 34.521313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.145422, 25.484585, 34.180061> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016374, 0.997188, -0.073134,
		0.854684, -0.051918, -0.516547,
		-0.518891, -0.054048, -0.853130,
		28.989754, 25.468370, 33.924122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.752283, 25.944332, 34.015327>,  <29.352978, 25.506205, 34.521313>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.752283, 25.944332, 34.015327> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.370003, 25.901634, 33.905605>,  <29.140635, 25.876015, 33.839771>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.370003, 25.901634, 33.905605>,  <29.752283, 25.944332, 34.015327>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.370003, 25.901634, 33.905605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039975, 0.970359, -0.238337,
		0.291619, -0.216813, -0.931638,
		-0.955699, -0.106746, -0.274308,
		29.083294, 25.869610, 33.823311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.778767, 26.278730, 33.453976>,  <29.752283, 25.944332, 34.015327>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.778767, 26.278730, 33.453976> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382669, 26.281322, 33.509655>,  <29.145012, 26.282877, 33.543064>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.382669, 26.281322, 33.509655>,  <29.778767, 26.278730, 33.453976>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.382669, 26.281322, 33.509655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048624, 0.920063, -0.388741,
		-0.130589, -0.391716, -0.910772,
		-0.990243, 0.006480, 0.139197,
		29.085596, 26.283266, 33.551414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.357246, 26.073513, 33.057201>,  <29.778767, 26.278730, 33.453976>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.357246, 26.073513, 33.057201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669537, 26.238789, 33.244705>,  <30.856911, 26.337954, 33.357208>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.669537, 26.238789, 33.244705>,  <30.357246, 26.073513, 33.057201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669537, 26.238789, 33.244705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004067, -0.753518, 0.657414,
		0.624860, -0.511355, -0.589972,
		0.780727, 0.413191, 0.468764,
		30.903755, 26.362745, 33.385334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.834694, 25.502756, 33.240047>,  <30.357246, 26.073513, 33.057201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.834694, 25.502756, 33.240047> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937201, 25.804203, 33.482166>,  <30.998705, 25.985071, 33.627438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.937201, 25.804203, 33.482166>,  <30.834694, 25.502756, 33.240047>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.937201, 25.804203, 33.482166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139038, -0.648439, 0.748462,
		0.956554, -0.107647, -0.270956,
		0.256268, 0.753617, 0.605300,
		31.014080, 26.030289, 33.663757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.539541, 25.437460, 33.383938>,  <30.834694, 25.502756, 33.240047>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.539541, 25.437460, 33.383938> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.389473, 25.680641, 33.663834>,  <31.299431, 25.826550, 33.831772>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.389473, 25.680641, 33.663834>,  <31.539541, 25.437460, 33.383938>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389473, 25.680641, 33.663834> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256545, -0.657297, 0.708622,
		0.890747, 0.445371, 0.090633,
		-0.375173, 0.607951, 0.699743,
		31.276920, 25.863026, 33.873756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.968115, 25.367683, 33.908546>,  <31.539541, 25.437460, 33.383938>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.968115, 25.367683, 33.908546> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.677553, 25.561302, 34.103703>,  <31.503216, 25.677473, 34.220795>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.677553, 25.561302, 34.103703>,  <31.968115, 25.367683, 33.908546>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677553, 25.561302, 34.103703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222517, -0.506015, 0.833327,
		0.650251, 0.713895, 0.259861,
		-0.726402, 0.484048, 0.487891,
		31.459633, 25.706516, 34.250069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213165, 25.633131, 34.586758>,  <31.968115, 25.367683, 33.908546>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213165, 25.633131, 34.586758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.816179, 25.628548, 34.635563>,  <31.577988, 25.625797, 34.664845>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.816179, 25.628548, 34.635563>,  <32.213165, 25.633131, 34.586758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.816179, 25.628548, 34.635563> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114676, -0.437929, 0.891665,
		0.043214, 0.898936, 0.435943,
		-0.992463, -0.011459, 0.122011,
		31.518440, 25.625111, 34.672165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.050434, 25.839878, 35.343735>,  <32.213165, 25.633131, 34.586758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.050434, 25.839878, 35.343735> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762022, 25.622581, 35.171688>,  <31.588974, 25.492205, 35.068459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.762022, 25.622581, 35.171688>,  <32.050434, 25.839878, 35.343735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.762022, 25.622581, 35.171688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016283, -0.633861, 0.773276,
		-0.692708, 0.550555, 0.465881,
		-0.721035, -0.543240, -0.430115,
		31.545712, 25.459610, 35.042652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.698618, 25.599323, 35.855015>,  <32.050434, 25.839878, 35.343735>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.698618, 25.599323, 35.855015> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557661, 25.368675, 35.560169>,  <31.473087, 25.230288, 35.383263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.557661, 25.368675, 35.560169>,  <31.698618, 25.599323, 35.855015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.557661, 25.368675, 35.560169> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070944, -0.801828, 0.593329,
		-0.933160, 0.156791, 0.323465,
		-0.352392, -0.576619, -0.737110,
		31.451944, 25.195690, 35.339035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.301739, 25.210585, 36.237438>,  <31.698618, 25.599323, 35.855015>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.301739, 25.210585, 36.237438> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334547, 25.019844, 35.887379>,  <31.354233, 24.905399, 35.677341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.334547, 25.019844, 35.887379>,  <31.301739, 25.210585, 36.237438>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.334547, 25.019844, 35.887379> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053158, -0.874763, 0.481626,
		-0.995212, -0.086025, -0.046401,
		0.082022, -0.476854, -0.875147,
		31.359154, 24.876787, 35.624836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.839508, 24.595671, 36.295090>,  <31.301739, 25.210585, 36.237438>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.839508, 24.595671, 36.295090> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.090096, 24.517479, 35.993275>,  <31.240448, 24.470564, 35.812187>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.090096, 24.517479, 35.993275>,  <30.839508, 24.595671, 36.295090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090096, 24.517479, 35.993275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024802, -0.962552, 0.269961,
		-0.779051, -0.187836, -0.598162,
		0.626470, -0.195478, -0.754535,
		31.278036, 24.458836, 35.766914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.604136, 24.040020, 35.939037>,  <30.839508, 24.595671, 36.295090>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.604136, 24.040020, 35.939037> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997072, 24.043728, 35.864296>,  <31.232834, 24.045952, 35.819450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.997072, 24.043728, 35.864296>,  <30.604136, 24.040020, 35.939037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.997072, 24.043728, 35.864296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073902, -0.936770, 0.342054,
		-0.171868, -0.349823, -0.920915,
		0.982344, 0.009270, -0.186853,
		31.291775, 24.046509, 35.808239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.790581, 23.339106, 35.765217>,  <30.604136, 24.040020, 35.939037>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.790581, 23.339106, 35.765217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149439, 23.490608, 35.856144>,  <31.364754, 23.581509, 35.910702>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.149439, 23.490608, 35.856144>,  <30.790581, 23.339106, 35.765217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.149439, 23.490608, 35.856144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280307, -0.885852, 0.369721,
		0.341405, -0.267974, -0.900906,
		0.897146, 0.378755, 0.227320,
		31.418583, 23.604235, 35.924339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.255043, 22.866764, 35.611469>,  <30.790581, 23.339106, 35.765217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.255043, 22.866764, 35.611469> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474518, 23.087975, 35.862259>,  <31.606203, 23.220701, 36.012733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.474518, 23.087975, 35.862259>,  <31.255043, 22.866764, 35.611469>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474518, 23.087975, 35.862259> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521180, -0.812653, 0.260703,
		0.653691, 0.183723, -0.734121,
		0.548689, 0.553028, 0.626977,
		31.639124, 23.253883, 36.050350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.042110, 22.693134, 35.458206>,  <31.255043, 22.866764, 35.611469>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.042110, 22.693134, 35.458206> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114567, 22.885456, 35.801373>,  <32.158043, 23.000849, 36.007271>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.114567, 22.885456, 35.801373>,  <32.042110, 22.693134, 35.458206>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114567, 22.885456, 35.801373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401026, -0.832635, 0.381964,
		0.897978, 0.274854, -0.343643,
		0.181145, 0.480805, 0.857912,
		32.168911, 23.029697, 36.058746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.773056, 22.611181, 35.648952>,  <32.042110, 22.693134, 35.458206>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.773056, 22.611181, 35.648952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576458, 22.685768, 35.989227>,  <32.458500, 22.730520, 36.193394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.576458, 22.685768, 35.989227>,  <32.773056, 22.611181, 35.648952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.576458, 22.685768, 35.989227> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474311, -0.761910, 0.441046,
		0.730388, 0.620260, 0.286027,
		-0.491491, 0.186469, 0.850686,
		32.429012, 22.741709, 36.244434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.857140, 23.250654, 35.286758>,  <32.773056, 22.611181, 35.648952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.857140, 23.250654, 35.286758> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909687, 22.857662, 35.233883>,  <32.941216, 22.621866, 35.202156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.909687, 22.857662, 35.233883>,  <32.857140, 23.250654, 35.286758>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909687, 22.857662, 35.233883> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090907, 0.144721, -0.985288,
		0.987156, 0.117424, 0.108327,
		0.131373, -0.982480, -0.132187,
		32.949100, 22.562918, 35.194225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.478436, 23.267416, 35.009933>,  <32.857140, 23.250654, 35.286758>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.478436, 23.267416, 35.009933> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320530, 22.916866, 34.899567>,  <33.225788, 22.706537, 34.833347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320530, 22.916866, 34.899567>,  <33.478436, 23.267416, 35.009933>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320530, 22.916866, 34.899567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431526, 0.088272, -0.897771,
		0.811139, -0.473473, 0.343332,
		-0.394764, -0.876374, -0.275917,
		33.202099, 22.653954, 34.816792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034908, 22.853239, 34.757652>,  <33.478436, 23.267416, 35.009933>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034908, 22.853239, 34.757652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700371, 22.720261, 34.583294>,  <33.499649, 22.640472, 34.478680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.700371, 22.720261, 34.583294>,  <34.034908, 22.853239, 34.757652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700371, 22.720261, 34.583294> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461840, 0.001111, -0.886962,
		0.295353, -0.943121, 0.152608,
		-0.836343, -0.332448, -0.435899,
		33.449467, 22.620525, 34.452522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.290260, 22.567207, 34.127899>,  <34.034908, 22.853239, 34.757652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.290260, 22.567207, 34.127899> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900291, 22.548252, 34.040916>,  <33.666309, 22.536879, 33.988728>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.900291, 22.548252, 34.040916>,  <34.290260, 22.567207, 34.127899>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.900291, 22.548252, 34.040916> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202737, 0.214033, -0.955556,
		0.091826, -0.975676, -0.199057,
		-0.974918, -0.047388, -0.217460,
		33.607815, 22.534035, 33.975677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.120197, 22.024065, 33.610832>,  <34.290260, 22.567207, 34.127899>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.120197, 22.024065, 33.610832> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867191, 22.332401, 33.580540>,  <33.715389, 22.517403, 33.562363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.867191, 22.332401, 33.580540>,  <34.120197, 22.024065, 33.610832>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.867191, 22.332401, 33.580540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180514, 0.051617, -0.982217,
		-0.753223, -0.634934, -0.171795,
		-0.632510, 0.770840, -0.075735,
		33.677437, 22.563654, 33.557819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.919857, 21.879675, 32.910324>,  <34.120197, 22.024065, 33.610832>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.919857, 21.879675, 32.910324> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770554, 22.240154, 32.998432>,  <33.680973, 22.456442, 33.051296>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.770554, 22.240154, 32.998432>,  <33.919857, 21.879675, 32.910324>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770554, 22.240154, 32.998432> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181580, 0.303803, -0.935271,
		-0.909784, -0.309101, -0.277036,
		-0.373258, 0.901199, 0.220269,
		33.658577, 22.510513, 33.064514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.487812, 22.014767, 32.410656>,  <33.919857, 21.879675, 32.910324>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.487812, 22.014767, 32.410656> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601997, 22.372028, 32.549675>,  <33.670509, 22.586386, 32.633087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.601997, 22.372028, 32.549675>,  <33.487812, 22.014767, 32.410656>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.601997, 22.372028, 32.549675> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227183, 0.289235, -0.929909,
		-0.931075, 0.344407, -0.120345,
		0.285459, 0.893156, 0.347543,
		33.687634, 22.639975, 32.653938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173691, 21.574131, 32.009068>,  <33.487812, 22.014767, 32.410656>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173691, 21.574131, 32.009068> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179516, 21.324131, 31.696873>,  <33.183010, 21.174131, 31.509556>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.179516, 21.324131, 31.696873>,  <33.173691, 21.574131, 32.009068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.179516, 21.324131, 31.696873> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183465, -0.768989, 0.612369,
		-0.982918, 0.134276, -0.125862,
		0.014560, -0.625000, -0.780489,
		33.183884, 21.136631, 31.462727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.474754, 21.161093, 31.919447>,  <33.173691, 21.574131, 32.009068>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.474754, 21.161093, 31.919447> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787136, 20.956841, 31.775578>,  <32.974564, 20.834290, 31.689257>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.787136, 20.956841, 31.775578>,  <32.474754, 21.161093, 31.919447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.787136, 20.956841, 31.775578> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269261, -0.794843, 0.543805,
		-0.563568, -0.327840, -0.758229,
		0.780954, -0.510633, -0.359673,
		33.021423, 20.803650, 31.667675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.212566, 20.515732, 31.575281>,  <32.474754, 21.161093, 31.919447>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.212566, 20.515732, 31.575281> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594498, 20.474972, 31.686943>,  <32.823654, 20.450516, 31.753941>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.594498, 20.474972, 31.686943>,  <32.212566, 20.515732, 31.575281>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.594498, 20.474972, 31.686943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217616, -0.879464, 0.423305,
		0.202371, -0.464930, -0.861908,
		0.954824, -0.101900, 0.279154,
		32.880943, 20.444401, 31.770689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.400524, 19.831673, 31.379440>,  <32.212566, 20.515732, 31.575281>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.400524, 19.831673, 31.379440> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626278, 19.951904, 31.686977>,  <32.761730, 20.024042, 31.871500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.626278, 19.951904, 31.686977>,  <32.400524, 19.831673, 31.379440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.626278, 19.951904, 31.686977> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327939, -0.773075, 0.542965,
		0.757576, -0.558577, -0.337744,
		0.564389, 0.300577, 0.768842,
		32.795593, 20.042078, 31.917629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514389, 19.248884, 31.711414>,  <32.400524, 19.831673, 31.379440>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514389, 19.248884, 31.711414> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620388, 19.513279, 31.992233>,  <32.683987, 19.671915, 32.160725>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.620388, 19.513279, 31.992233>,  <32.514389, 19.248884, 31.711414>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.620388, 19.513279, 31.992233> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312113, -0.630084, 0.711041,
		0.912339, -0.407541, 0.039333,
		0.264995, 0.660987, 0.702050,
		32.699886, 19.711575, 32.202847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.887569, 18.813391, 32.192741>,  <32.514389, 19.248884, 31.711414>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.887569, 18.813391, 32.192741> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791862, 19.149776, 32.386868>,  <32.734436, 19.351608, 32.503342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.791862, 19.149776, 32.386868>,  <32.887569, 18.813391, 32.192741>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.791862, 19.149776, 32.386868> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234984, -0.535127, 0.811432,
		0.942089, 0.080111, 0.325653,
		-0.239271, 0.840965, 0.485313,
		32.720081, 19.402065, 32.532463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.164436, 18.769867, 32.956520>,  <32.887569, 18.813391, 32.192741>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.164436, 18.769867, 32.956520> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.877998, 19.048737, 32.970150>,  <32.706135, 19.216059, 32.978329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.877998, 19.048737, 32.970150>,  <33.164436, 18.769867, 32.956520>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.877998, 19.048737, 32.970150> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364680, -0.415304, 0.833385,
		0.595166, 0.584353, 0.551641,
		-0.716090, 0.697175, 0.034073,
		32.663170, 19.257889, 32.980373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.108536, 18.922991, 33.650822>,  <33.164436, 18.769867, 32.956520>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.108536, 18.922991, 33.650822> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773422, 19.073257, 33.492332>,  <32.572353, 19.163418, 33.397240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.773422, 19.073257, 33.492332>,  <33.108536, 18.922991, 33.650822>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773422, 19.073257, 33.492332> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535458, -0.423365, 0.730785,
		0.106787, 0.824400, 0.555843,
		-0.837784, 0.375669, -0.396221,
		32.522087, 19.185959, 33.373466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.759953, 19.304005, 34.173687>,  <33.108536, 18.922991, 33.650822>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.759953, 19.304005, 34.173687> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486282, 19.210930, 33.897205>,  <32.322079, 19.155085, 33.731316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.486282, 19.210930, 33.897205>,  <32.759953, 19.304005, 34.173687>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486282, 19.210930, 33.897205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498008, -0.543330, 0.675855,
		-0.532811, 0.806629, 0.255855,
		-0.684178, -0.232685, -0.691200,
		32.281029, 19.141125, 33.689846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<31.925837, 31.601450, 23.878603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570297, 31.418201, 23.875267>,  <31.356974, 31.308252, 23.873266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.570297, 31.418201, 23.875267>,  <31.925837, 31.601450, 23.878603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570297, 31.418201, 23.875267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414033, -0.810840, 0.413661,
		-0.196269, 0.364230, 0.910393,
		-0.888850, -0.458122, -0.008340,
		31.303642, 31.280766, 23.872765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657074, 31.370649, 24.685711>,  <31.925837, 31.601450, 23.878603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657074, 31.370649, 24.685711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475908, 31.142475, 24.411640>,  <31.367208, 31.005569, 24.247198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.475908, 31.142475, 24.411640>,  <31.657074, 31.370649, 24.685711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475908, 31.142475, 24.411640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195095, -0.813308, 0.548150,
		-0.869945, 0.114591, 0.479650,
		-0.452916, -0.570438, -0.685177,
		31.340033, 30.971344, 24.206087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.378016, 30.847813, 25.134607>,  <31.657074, 31.370649, 24.685711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.378016, 30.847813, 25.134607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370274, 30.686466, 24.768673>,  <31.365629, 30.589659, 24.549112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.370274, 30.686466, 24.768673>,  <31.378016, 30.847813, 25.134607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.370274, 30.686466, 24.768673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245578, -0.888892, 0.386733,
		-0.969184, -0.217178, 0.116263,
		-0.019355, -0.403367, -0.914834,
		31.364468, 30.565456, 24.494223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.830484, 30.216036, 25.072481>,  <31.378016, 30.847813, 25.134607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.830484, 30.216036, 25.072481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136396, 30.168823, 24.819126>,  <31.319944, 30.140495, 24.667112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.136396, 30.168823, 24.819126>,  <30.830484, 30.216036, 25.072481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.136396, 30.168823, 24.819126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126645, -0.936359, 0.327404,
		-0.631722, -0.330607, -0.701161,
		0.764780, -0.118030, -0.633388,
		31.365829, 30.133415, 24.629110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.753820, 29.519730, 24.924299>,  <30.830484, 30.216036, 25.072481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.753820, 29.519730, 24.924299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119915, 29.633823, 24.810471>,  <31.339573, 29.702280, 24.742172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.119915, 29.633823, 24.810471>,  <30.753820, 29.519730, 24.924299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119915, 29.633823, 24.810471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378314, -0.851377, 0.363368,
		-0.138633, -0.440225, -0.887120,
		0.915237, 0.285236, -0.284572,
		31.394485, 29.719395, 24.725100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.996410, 29.060884, 24.519341>,  <30.753820, 29.519730, 24.924299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.996410, 29.060884, 24.519341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354933, 29.219269, 24.599190>,  <31.570045, 29.314299, 24.647100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354933, 29.219269, 24.599190>,  <30.996410, 29.060884, 24.519341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354933, 29.219269, 24.599190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331126, -0.897069, 0.292614,
		0.294941, -0.196171, -0.935161,
		0.896307, 0.395960, 0.199625,
		31.623825, 29.338057, 24.659077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.421764, 28.510773, 24.397253>,  <30.996410, 29.060884, 24.519341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.421764, 28.510773, 24.397253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659927, 28.772480, 24.583767>,  <31.802826, 28.929504, 24.695675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.659927, 28.772480, 24.583767>,  <31.421764, 28.510773, 24.397253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659927, 28.772480, 24.583767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631543, -0.739894, 0.231754,
		0.496631, 0.156491, -0.853738,
		0.595408, 0.654268, 0.466286,
		31.838551, 28.968761, 24.723652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.093193, 28.459358, 24.163794>,  <31.421764, 28.510773, 24.397253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.093193, 28.459358, 24.163794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114693, 28.585110, 24.542904>,  <32.127590, 28.660561, 24.770370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114693, 28.585110, 24.542904>,  <32.093193, 28.459358, 24.163794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114693, 28.585110, 24.542904> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471818, -0.844506, 0.253371,
		0.880057, 0.433560, -0.193718,
		0.053745, 0.314380, 0.947775,
		32.130817, 28.679424, 24.827236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774857, 28.287937, 24.401453>,  <32.093193, 28.459358, 24.163794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774857, 28.287937, 24.401453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558662, 28.348366, 24.732525>,  <32.428944, 28.384623, 24.931168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.558662, 28.348366, 24.732525>,  <32.774857, 28.287937, 24.401453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.558662, 28.348366, 24.732525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337682, -0.862084, 0.377865,
		0.770613, 0.483723, 0.414932,
		-0.540488, 0.151073, 0.827678,
		32.396515, 28.393688, 24.980827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252670, 28.214571, 24.950323>,  <32.774857, 28.287937, 24.401453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252670, 28.214571, 24.950323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897564, 28.160473, 25.126312>,  <32.684502, 28.128014, 25.231907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.897564, 28.160473, 25.126312>,  <33.252670, 28.214571, 24.950323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.897564, 28.160473, 25.126312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294892, -0.901046, 0.318048,
		0.353422, 0.412097, 0.839802,
		-0.887767, -0.135246, 0.439974,
		32.631233, 28.119900, 25.258305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.387707, 28.006832, 25.591511>,  <33.252670, 28.214571, 24.950323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.387707, 28.006832, 25.591511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005474, 27.891151, 25.568771>,  <32.776134, 27.821743, 25.555128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.005474, 27.891151, 25.568771>,  <33.387707, 28.006832, 25.591511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.005474, 27.891151, 25.568771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199515, -0.776681, 0.597462,
		-0.216939, 0.559580, 0.799880,
		-0.955579, -0.289201, -0.056848,
		32.718800, 27.804392, 25.551718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117676, 27.969847, 26.247047>,  <33.387707, 28.006832, 25.591511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117676, 27.969847, 26.247047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864174, 27.741009, 26.038792>,  <32.712074, 27.603706, 25.913837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.864174, 27.741009, 26.038792>,  <33.117676, 27.969847, 26.247047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864174, 27.741009, 26.038792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111764, -0.733724, 0.670192,
		-0.765420, 0.366546, 0.528938,
		-0.633751, -0.572095, -0.520640,
		32.674049, 27.569380, 25.882599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.189236, 28.333187, 26.890692>,  <33.117676, 27.969847, 26.247047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.189236, 28.333187, 26.890692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528625, 28.457283, 27.062202>,  <33.732258, 28.531740, 27.165110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.528625, 28.457283, 27.062202>,  <33.189236, 28.333187, 26.890692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.528625, 28.457283, 27.062202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118212, 0.900793, -0.417849,
		-0.515873, 0.303846, 0.800970,
		0.848470, 0.310241, 0.428777,
		33.783165, 28.550356, 27.190836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.070431, 28.959547, 27.292423>,  <33.189236, 28.333187, 26.890692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.070431, 28.959547, 27.292423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461021, 28.960426, 27.206181>,  <33.695377, 28.960955, 27.154436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.461021, 28.960426, 27.206181>,  <33.070431, 28.959547, 27.292423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.461021, 28.960426, 27.206181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075106, 0.940789, -0.330568,
		0.202113, 0.338985, 0.918825,
		0.976478, 0.002198, -0.215606,
		33.753963, 28.961086, 27.141499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285084, 29.511786, 27.632566>,  <33.070431, 28.959547, 27.292423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285084, 29.511786, 27.632566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561214, 29.455727, 27.348648>,  <33.726891, 29.422091, 27.178297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.561214, 29.455727, 27.348648>,  <33.285084, 29.511786, 27.632566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.561214, 29.455727, 27.348648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021024, 0.984531, -0.173947,
		0.723195, 0.105157, 0.682591,
		0.690323, -0.140149, -0.709797,
		33.768311, 29.413683, 27.135710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771309, 30.027477, 27.707411>,  <33.285084, 29.511786, 27.632566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771309, 30.027477, 27.707411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833656, 29.897423, 27.334316>,  <33.871063, 29.819391, 27.110460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.833656, 29.897423, 27.334316>,  <33.771309, 30.027477, 27.707411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.833656, 29.897423, 27.334316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141583, 0.941878, -0.304662,
		0.977579, -0.084574, 0.192839,
		0.155864, -0.325134, -0.932735,
		33.880417, 29.799883, 27.054497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397442, 30.358889, 27.539444>,  <33.771309, 30.027477, 27.707411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397442, 30.358889, 27.539444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213516, 30.275715, 27.194115>,  <34.103161, 30.225811, 26.986917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.213516, 30.275715, 27.194115>,  <34.397442, 30.358889, 27.539444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.213516, 30.275715, 27.194115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239328, 0.907208, -0.345971,
		0.855154, -0.365703, -0.367388,
		-0.459820, -0.207932, -0.863325,
		34.075569, 30.213335, 26.935118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.838287, 30.651363, 26.916262>,  <34.397442, 30.358889, 27.539444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.838287, 30.651363, 26.916262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468563, 30.613247, 26.768444>,  <34.246727, 30.590376, 26.679754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.468563, 30.613247, 26.768444>,  <34.838287, 30.651363, 26.916262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.468563, 30.613247, 26.768444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107863, 0.863609, -0.492488,
		0.366070, -0.495074, -0.787968,
		-0.924315, -0.095292, -0.369542,
		34.191269, 30.584660, 26.657581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.882038, 30.925610, 26.313976>,  <34.838287, 30.651363, 26.916262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.882038, 30.925610, 26.313976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489834, 30.854431, 26.280674>,  <34.254513, 30.811724, 26.260693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.489834, 30.854431, 26.280674>,  <34.882038, 30.925610, 26.313976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.489834, 30.854431, 26.280674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115096, 0.863742, -0.490614,
		0.159214, -0.471470, -0.867390,
		-0.980512, -0.177946, -0.083255,
		34.195679, 30.801046, 26.255697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680313, 30.936127, 25.601694>,  <34.882038, 30.925610, 26.313976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680313, 30.936127, 25.601694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364666, 31.024624, 25.830898>,  <34.175278, 31.077723, 25.968420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.364666, 31.024624, 25.830898>,  <34.680313, 30.936127, 25.601694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.364666, 31.024624, 25.830898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043356, 0.910489, -0.411255,
		-0.612705, -0.349374, -0.708894,
		-0.789122, 0.221243, 0.573008,
		34.127930, 31.090996, 26.002800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200783, 31.192377, 25.143913>,  <34.680313, 30.936127, 25.601694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200783, 31.192377, 25.143913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108280, 31.341381, 25.503414>,  <34.052776, 31.430784, 25.719114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108280, 31.341381, 25.503414>,  <34.200783, 31.192377, 25.143913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108280, 31.341381, 25.503414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157860, 0.897184, -0.412482,
		-0.960000, -0.237267, -0.148677,
		-0.231259, 0.372512, 0.898751,
		34.038902, 31.453135, 25.773039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658413, 31.679255, 25.043047>,  <34.200783, 31.192377, 25.143913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658413, 31.679255, 25.043047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826710, 31.774147, 25.393291>,  <33.927689, 31.831083, 25.603437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.826710, 31.774147, 25.393291>,  <33.658413, 31.679255, 25.043047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.826710, 31.774147, 25.393291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111151, 0.971411, -0.209778,
		-0.900344, -0.009062, 0.435084,
		0.420744, 0.237232, 0.875611,
		33.952934, 31.845316, 25.655975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.455837, 32.367691, 25.245155>,  <33.658413, 31.679255, 25.043047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.455837, 32.367691, 25.245155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738743, 32.330318, 25.525455>,  <33.908485, 32.307896, 25.693636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.738743, 32.330318, 25.525455>,  <33.455837, 32.367691, 25.245155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.738743, 32.330318, 25.525455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040727, 0.994967, 0.091558,
		-0.705777, -0.036216, 0.707508,
		0.707263, -0.093434, 0.700750,
		33.950920, 32.302288, 25.735680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202179, 32.872810, 25.755381>,  <33.455837, 32.367691, 25.245155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202179, 32.872810, 25.755381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593796, 32.802387, 25.796345>,  <33.828766, 32.760132, 25.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.593796, 32.802387, 25.796345>,  <33.202179, 32.872810, 25.755381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593796, 32.802387, 25.796345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164081, 0.979652, 0.115584,
		-0.120676, -0.096357, 0.988004,
		0.979038, -0.176061, 0.102410,
		33.887508, 32.749569, 25.827068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.348717, 33.318924, 26.135366>,  <33.202179, 32.872810, 25.755381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.348717, 33.318924, 26.135366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734222, 33.239613, 26.063988>,  <33.965527, 33.192024, 26.021160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.734222, 33.239613, 26.063988>,  <33.348717, 33.318924, 26.135366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.734222, 33.239613, 26.063988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224744, 0.963900, 0.142782,
		0.143692, -0.177713, 0.973535,
		0.963765, -0.198279, -0.178445,
		34.023354, 33.180130, 26.010454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.754818, 33.694206, 26.680696>,  <33.348717, 33.318924, 26.135366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.754818, 33.694206, 26.680696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993370, 33.630909, 26.365917>,  <34.136501, 33.592930, 26.177050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.993370, 33.630909, 26.365917>,  <33.754818, 33.694206, 26.680696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.993370, 33.630909, 26.365917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032459, 0.984328, -0.173333,
		0.802042, 0.077829, 0.592174,
		0.596384, -0.158242, -0.786947,
		34.172287, 33.583435, 26.129833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184830, 34.249847, 26.585091>,  <33.754818, 33.694206, 26.680696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184830, 34.249847, 26.585091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896175, 34.496643, 26.710674>,  <32.722984, 34.644722, 26.786024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.896175, 34.496643, 26.710674>,  <33.184830, 34.249847, 26.585091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.896175, 34.496643, 26.710674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070095, -0.516309, 0.853529,
		0.688718, 0.593928, 0.415833,
		-0.721633, 0.616989, 0.313960,
		32.679684, 34.681740, 26.804863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360275, 34.536770, 27.228073>,  <33.184830, 34.249847, 26.585091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360275, 34.536770, 27.228073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961285, 34.565147, 27.229031>,  <32.721889, 34.582172, 27.229605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.961285, 34.565147, 27.229031>,  <33.360275, 34.536770, 27.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961285, 34.565147, 27.229031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034675, -0.516398, 0.855647,
		0.061940, 0.853405, 0.517555,
		-0.997477, 0.070945, 0.002393,
		32.662041, 34.586430, 27.229748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122330, 34.834187, 27.892332>,  <33.360275, 34.536770, 27.228073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122330, 34.834187, 27.892332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847309, 34.603863, 27.715370>,  <32.682297, 34.465668, 27.609194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.847309, 34.603863, 27.715370>,  <33.122330, 34.834187, 27.892332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847309, 34.603863, 27.715370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178195, -0.456834, 0.871522,
		-0.703933, 0.678049, 0.211490,
		-0.687550, -0.575807, -0.442405,
		32.641045, 34.431122, 27.582649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588882, 34.901894, 28.320921>,  <33.122330, 34.834187, 27.892332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588882, 34.901894, 28.320921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544773, 34.562679, 28.113586>,  <32.518307, 34.359150, 27.989185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.544773, 34.562679, 28.113586>,  <32.588882, 34.901894, 28.320921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.544773, 34.562679, 28.113586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216480, -0.488504, 0.845281,
		-0.970039, 0.205423, -0.129712,
		-0.110276, -0.848036, -0.518338,
		32.511692, 34.308270, 27.958086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.016495, 34.641369, 28.596539>,  <32.588882, 34.901894, 28.320921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.016495, 34.641369, 28.596539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202454, 34.330856, 28.426239>,  <32.314030, 34.144550, 28.324059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.202454, 34.330856, 28.426239>,  <32.016495, 34.641369, 28.596539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.202454, 34.330856, 28.426239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104572, -0.525652, 0.844248,
		-0.879167, -0.347967, -0.325551,
		0.464898, -0.776279, -0.425748,
		32.341923, 34.097973, 28.298515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.551006, 34.053761, 28.696999>,  <32.016495, 34.641369, 28.596539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.551006, 34.053761, 28.696999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922277, 33.920437, 28.630798>,  <32.145039, 33.840443, 28.591078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.922277, 33.920437, 28.630798>,  <31.551006, 34.053761, 28.696999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922277, 33.920437, 28.630798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052251, -0.557057, 0.828829,
		-0.368449, -0.760653, -0.534464,
		0.928179, -0.333307, -0.165502,
		32.200729, 33.820446, 28.581148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537863, 33.288307, 28.741983>,  <31.551006, 34.053761, 28.696999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537863, 33.288307, 28.741983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921225, 33.387032, 28.799313>,  <32.151241, 33.446266, 28.833710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.921225, 33.387032, 28.799313>,  <31.537863, 33.288307, 28.741983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.921225, 33.387032, 28.799313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094759, -0.748853, 0.655927,
		0.269218, -0.615064, -0.741093,
		0.958406, 0.246812, 0.143322,
		32.208748, 33.461075, 28.842310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.764772, 32.640469, 28.662819>,  <31.537863, 33.288307, 28.741983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.764772, 32.640469, 28.662819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037117, 32.855347, 28.861958>,  <32.200523, 32.984272, 28.981440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.037117, 32.855347, 28.861958>,  <31.764772, 32.640469, 28.662819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.037117, 32.855347, 28.861958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356074, -0.836782, 0.415942,
		0.640028, -0.105930, -0.761014,
		0.680863, 0.537192, 0.497845,
		32.241375, 33.016502, 29.011311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.278217, 32.111950, 28.886900>,  <31.764772, 32.640469, 28.662819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.278217, 32.111950, 28.886900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387215, 32.437748, 29.091778>,  <32.452614, 32.633228, 29.214705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.387215, 32.437748, 29.091778>,  <32.278217, 32.111950, 28.886900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.387215, 32.437748, 29.091778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443700, -0.578735, 0.684249,
		0.853743, 0.040808, -0.519093,
		0.272495, 0.814494, 0.512197,
		32.468964, 32.682095, 29.245438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.969730, 32.187103, 28.933834>,  <32.278217, 32.111950, 28.886900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.969730, 32.187103, 28.933834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828175, 32.375179, 29.257236>,  <32.743240, 32.488026, 29.451279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828175, 32.375179, 29.257236>,  <32.969730, 32.187103, 28.933834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828175, 32.375179, 29.257236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423629, -0.690110, 0.586759,
		0.833845, 0.550158, 0.045041,
		-0.353893, 0.470186, 0.808508,
		32.722008, 32.516235, 29.499788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543385, 32.148315, 29.487385>,  <32.969730, 32.187103, 28.933834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543385, 32.148315, 29.487385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191574, 32.208500, 29.667957>,  <32.980488, 32.244610, 29.776300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.191574, 32.208500, 29.667957>,  <33.543385, 32.148315, 29.487385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.191574, 32.208500, 29.667957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198176, -0.746684, 0.634972,
		0.432612, 0.647940, 0.626914,
		-0.879530, 0.150457, 0.451430,
		32.927715, 32.253635, 29.803387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.629082, 31.979088, 30.228079>,  <33.543385, 32.148315, 29.487385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.629082, 31.979088, 30.228079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229481, 31.987446, 30.212318>,  <32.989719, 31.992460, 30.202862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.229481, 31.987446, 30.212318>,  <33.629082, 31.979088, 30.228079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.229481, 31.987446, 30.212318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043335, -0.663487, 0.746932,
		-0.010534, 0.747896, 0.663732,
		-0.999005, 0.020895, -0.039399,
		32.929779, 31.993715, 30.200499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.367699, 31.951778, 30.894270>,  <33.629082, 31.979088, 30.228079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.367699, 31.951778, 30.894270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051701, 31.836491, 30.677814>,  <32.862103, 31.767319, 30.547941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.051701, 31.836491, 30.677814>,  <33.367699, 31.951778, 30.894270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.051701, 31.836491, 30.677814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236659, -0.670864, 0.702805,
		-0.565594, 0.683280, 0.461771,
		-0.789998, -0.288219, -0.541141,
		32.814701, 31.750025, 30.515472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.894371, 31.898031, 31.380463>,  <33.367699, 31.951778, 30.894270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.894371, 31.898031, 31.380463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738033, 31.689480, 31.077042>,  <32.644230, 31.564350, 30.894989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.738033, 31.689480, 31.077042>,  <32.894371, 31.898031, 31.380463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.738033, 31.689480, 31.077042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198242, -0.757086, 0.622512,
		-0.898854, 0.393684, 0.192546,
		-0.390847, -0.521377, -0.758554,
		32.620781, 31.533066, 30.849476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.338867, 31.514444, 31.645540>,  <32.894371, 31.898031, 31.380463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.338867, 31.514444, 31.645540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433125, 31.305008, 31.318047>,  <32.489681, 31.179346, 31.121552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.433125, 31.305008, 31.318047>,  <32.338867, 31.514444, 31.645540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.433125, 31.305008, 31.318047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134456, -0.851920, 0.506117,
		-0.962493, -0.009181, -0.271152,
		0.235647, -0.523592, -0.818732,
		32.503819, 31.147930, 31.072428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.660091, 31.102009, 31.538021>,  <32.338867, 31.514444, 31.645540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.660091, 31.102009, 31.538021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972197, 30.948395, 31.340553>,  <32.159458, 30.856226, 31.222073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.972197, 30.948395, 31.340553>,  <31.660091, 31.102009, 31.538021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.972197, 30.948395, 31.340553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114385, -0.863605, 0.491022,
		-0.614905, -0.326657, -0.717766,
		0.780262, -0.384033, -0.493670,
		32.206276, 30.833185, 31.192451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.446695, 30.479353, 31.488266>,  <31.660091, 31.102009, 31.538021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.446695, 30.479353, 31.488266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839067, 30.443829, 31.419113>,  <32.074490, 30.422514, 31.377623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.839067, 30.443829, 31.419113>,  <31.446695, 30.479353, 31.488266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.839067, 30.443829, 31.419113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036075, -0.957233, 0.287059,
		-0.190980, -0.275348, -0.942183,
		0.980931, -0.088811, -0.172880,
		32.133347, 30.417185, 31.367249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.556873, 29.947702, 30.919147>,  <31.446695, 30.479353, 31.488266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.556873, 29.947702, 30.919147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897581, 29.967873, 31.127743>,  <32.102005, 29.979975, 31.252899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.897581, 29.967873, 31.127743>,  <31.556873, 29.947702, 30.919147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.897581, 29.967873, 31.127743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085872, -0.968460, 0.233905,
		0.516835, -0.244014, -0.820572,
		0.851767, 0.050427, 0.521488,
		32.153111, 29.983000, 31.284189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.991737, 29.370802, 30.700129>,  <31.556873, 29.947702, 30.919147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.991737, 29.370802, 30.700129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122749, 29.491390, 31.058311>,  <32.201355, 29.563744, 31.273220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.122749, 29.491390, 31.058311>,  <31.991737, 29.370802, 30.700129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.122749, 29.491390, 31.058311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153486, -0.918166, 0.365257,
		0.932291, -0.257072, -0.254455,
		0.327530, 0.301470, 0.895455,
		32.221008, 29.581831, 31.326948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.389393, 28.848400, 30.819576>,  <31.991737, 29.370802, 30.700129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.389393, 28.848400, 30.819576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344261, 29.040138, 31.167713>,  <32.317181, 29.155182, 31.376596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.344261, 29.040138, 31.167713>,  <32.389393, 28.848400, 30.819576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.344261, 29.040138, 31.167713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363975, -0.834991, 0.412689,
		0.924549, -0.270219, 0.268682,
		-0.112830, 0.479345, 0.870344,
		32.310413, 29.183941, 31.428816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.776749, 28.475138, 31.201841>,  <32.389393, 28.848400, 30.819576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.776749, 28.475138, 31.201841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528885, 28.678150, 31.441319>,  <32.380165, 28.799957, 31.585005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.528885, 28.678150, 31.441319>,  <32.776749, 28.475138, 31.201841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.528885, 28.678150, 31.441319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314152, -0.859408, 0.403395,
		0.719256, 0.061887, 0.691983,
		-0.619660, 0.507532, 0.598693,
		32.342987, 28.830410, 31.620926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.816154, 28.216484, 31.899315>,  <32.776749, 28.475138, 31.201841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.816154, 28.216484, 31.899315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453316, 28.383678, 31.919186>,  <32.235615, 28.483995, 31.931108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.453316, 28.383678, 31.919186>,  <32.816154, 28.216484, 31.899315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.453316, 28.383678, 31.919186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350069, -0.814652, 0.462378,
		0.233738, 0.402029, 0.885291,
		-0.907093, 0.417988, 0.049677,
		32.181187, 28.509075, 31.934088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570580, 27.965025, 32.481850>,  <32.816154, 28.216484, 31.899315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570580, 27.965025, 32.481850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228760, 28.094021, 32.319004>,  <32.023666, 28.171417, 32.221294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.228760, 28.094021, 32.319004>,  <32.570580, 27.965025, 32.481850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.228760, 28.094021, 32.319004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512468, -0.650907, 0.560086,
		-0.084373, 0.687257, 0.721498,
		-0.854551, 0.322488, -0.407116,
		31.972395, 28.190767, 32.196869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163372, 28.204803, 33.011112>,  <32.570580, 27.965025, 32.481850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163372, 28.204803, 33.011112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917696, 28.096420, 32.714638>,  <31.770290, 28.031391, 32.536755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.917696, 28.096420, 32.714638>,  <32.163372, 28.204803, 33.011112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.917696, 28.096420, 32.714638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447227, -0.654320, 0.609798,
		-0.650202, 0.706008, 0.280695,
		-0.614187, -0.270957, -0.741186,
		31.733440, 28.015133, 32.492283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.504091, 28.086449, 33.265705>,  <32.163372, 28.204803, 33.011112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.504091, 28.086449, 33.265705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444567, 27.886387, 32.924484>,  <31.408852, 27.766350, 32.719753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444567, 27.886387, 32.924484>,  <31.504091, 28.086449, 33.265705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444567, 27.886387, 32.924484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570290, -0.661340, 0.487236,
		-0.807852, 0.558994, -0.186819,
		-0.148811, -0.500155, -0.853053,
		31.399923, 27.736340, 32.668568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.700083, 28.001171, 33.157234>,  <31.504091, 28.086449, 33.265705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.700083, 28.001171, 33.157234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914841, 27.736252, 32.948196>,  <31.043695, 27.577301, 32.822773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.914841, 27.736252, 32.948196>,  <30.700083, 28.001171, 33.157234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914841, 27.736252, 32.948196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325991, -0.734196, 0.595555,
		-0.778126, -0.149385, -0.610086,
		0.536890, -0.662299, -0.522598,
		31.075909, 27.537561, 32.791416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.257669, 27.532101, 33.122093>,  <30.700083, 28.001171, 33.157234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.257669, 27.532101, 33.122093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603498, 27.346096, 33.045906>,  <30.810997, 27.234493, 33.000195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.603498, 27.346096, 33.045906>,  <30.257669, 27.532101, 33.122093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.603498, 27.346096, 33.045906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274789, -0.754849, 0.595562,
		-0.420717, -0.462569, -0.780402,
		0.864574, -0.465009, -0.190469,
		30.862871, 27.206593, 32.988766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.107950, 26.766287, 32.998638>,  <30.257669, 27.532101, 33.122093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.107950, 26.766287, 32.998638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500626, 26.768471, 33.074806>,  <30.736231, 26.769781, 33.120506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.500626, 26.768471, 33.074806>,  <30.107950, 26.766287, 32.998638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.500626, 26.768471, 33.074806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117074, -0.771252, 0.625670,
		0.150277, -0.636506, -0.756490,
		0.981687, 0.005458, 0.190420,
		30.795132, 26.770107, 33.131931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.407843, 26.377541, 32.823704>,  <30.107950, 26.766287, 32.998638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.407843, 26.377541, 32.823704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114868, 26.474461, 33.078209>,  <28.939083, 26.532612, 33.230911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.114868, 26.474461, 33.078209>,  <29.407843, 26.377541, 32.823704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.114868, 26.474461, 33.078209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246918, 0.776370, -0.579898,
		-0.634482, -0.581843, -0.508814,
		-0.732437, 0.242299, 0.636260,
		28.895138, 26.547150, 33.269089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.762564, 26.577297, 32.451477>,  <29.407843, 26.377541, 32.823704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.762564, 26.577297, 32.451477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667515, 26.739552, 32.804520>,  <28.610485, 26.836905, 33.016346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.667515, 26.739552, 32.804520>,  <28.762564, 26.577297, 32.451477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667515, 26.739552, 32.804520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412054, 0.780733, -0.469753,
		-0.879629, -0.475305, -0.018376,
		-0.237622, 0.405636, 0.882607,
		28.596228, 26.861242, 33.069302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.093687, 26.890087, 32.279243>,  <28.762564, 26.577297, 32.451477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.093687, 26.890087, 32.279243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244276, 27.068424, 32.604080>,  <28.334629, 27.175426, 32.798981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.244276, 27.068424, 32.604080>,  <28.093687, 26.890087, 32.279243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.244276, 27.068424, 32.604080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167109, 0.894886, -0.413828,
		-0.911231, 0.020088, 0.411404,
		0.376473, 0.445842, 0.812091,
		28.357218, 27.202177, 32.847706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750048, 27.489784, 32.270271>,  <28.093687, 26.890087, 32.279243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750048, 27.489784, 32.270271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075327, 27.546150, 32.496140>,  <28.270494, 27.579969, 32.631660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.075327, 27.546150, 32.496140>,  <27.750048, 27.489784, 32.270271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.075327, 27.546150, 32.496140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068570, 0.940287, -0.333403,
		-0.577935, 0.309842, 0.754977,
		0.813197, 0.140917, 0.564671,
		28.319286, 27.588425, 32.665539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.721519, 28.123863, 32.561394>,  <27.750048, 27.489784, 32.270271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.721519, 28.123863, 32.561394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115059, 28.058613, 32.590870>,  <28.351183, 28.019463, 32.608555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.115059, 28.058613, 32.590870>,  <27.721519, 28.123863, 32.561394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.115059, 28.058613, 32.590870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178976, 0.890073, -0.419211,
		0.002792, 0.425629, 0.904893,
		0.983850, -0.163125, 0.073693,
		28.410213, 28.009676, 32.612976>
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
