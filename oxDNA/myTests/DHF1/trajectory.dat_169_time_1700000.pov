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
	<1.137409, 1.776613, 5.598516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327744, 2.079880, 5.776848>,  <1.441944, 2.261840, 5.883847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.327744, 2.079880, 5.776848>,  <1.137409, 1.776613, 5.598516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.327744, 2.079880, 5.776848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264930, 0.606901, -0.749322,
		-0.838685, 0.238441, 0.489647,
		0.475836, 0.758167, 0.445829,
		1.470494, 2.307330, 5.910596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.792378, 2.427197, 5.281243>,  <1.137409, 1.776613, 5.598516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.792378, 2.427197, 5.281243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145836, 2.524139, 5.441460>,  <1.357911, 2.582304, 5.537590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.145836, 2.524139, 5.441460>,  <0.792378, 2.427197, 5.281243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.145836, 2.524139, 5.441460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138584, 0.681815, -0.718277,
		-0.447174, 0.690211, 0.568897,
		0.883646, 0.242355, 0.400542,
		1.410930, 2.596846, 5.561623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.895090, 3.147905, 5.415111>,  <0.792378, 2.427197, 5.281243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.895090, 3.147905, 5.415111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.221825, 2.949684, 5.296989>,  <1.417866, 2.830751, 5.226117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.221825, 2.949684, 5.296989>,  <0.895090, 3.147905, 5.415111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.221825, 2.949684, 5.296989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055896, 0.577489, -0.814482,
		0.574153, 0.648793, 0.499415,
		0.816837, -0.495553, -0.295303,
		1.466876, 2.801018, 5.208399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.643362, 3.496860, 5.226016>,  <0.895090, 3.147905, 5.415111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.643362, 3.496860, 5.226016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549232, 3.179329, 5.001709>,  <1.492755, 2.988810, 4.867125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.549232, 3.179329, 5.001709>,  <1.643362, 3.496860, 5.226016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.549232, 3.179329, 5.001709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050311, 0.566248, -0.822698,
		0.970614, -0.221813, -0.093314,
		-0.235324, -0.793827, -0.560768,
		1.478635, 2.941181, 4.833478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.107037, 3.514898, 4.664997>,  <1.643362, 3.496860, 5.226016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.107037, 3.514898, 4.664997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.748497, 3.344963, 4.614288>,  <1.533373, 3.243002, 4.583863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.748497, 3.344963, 4.614288>,  <2.107037, 3.514898, 4.664997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.748497, 3.344963, 4.614288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183828, 0.616342, -0.765721,
		0.403441, -0.663050, -0.630556,
		-0.896349, -0.424837, -0.126770,
		1.479592, 3.217512, 4.576257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.921633, 3.160750, 4.005415>,  <2.107037, 3.514898, 4.664997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.921633, 3.160750, 4.005415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.574638, 3.287971, 4.158417>,  <1.366442, 3.364305, 4.250218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.574638, 3.287971, 4.158417>,  <1.921633, 3.160750, 4.005415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.574638, 3.287971, 4.158417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092983, 0.651691, -0.752763,
		-0.488695, -0.688578, -0.535759,
		-0.867486, 0.318055, 0.382505,
		1.314393, 3.383388, 4.273168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.491083, 3.202591, 3.406719>,  <1.921633, 3.160750, 4.005415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.491083, 3.202591, 3.406719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.351967, 3.452568, 3.686287>,  <1.268497, 3.602554, 3.854028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.351967, 3.452568, 3.686287>,  <1.491083, 3.202591, 3.406719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.351967, 3.452568, 3.686287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201361, 0.678274, -0.706681,
		-0.915694, -0.386512, -0.110058,
		-0.347790, 0.624942, 0.698920,
		1.247630, 3.640051, 3.895963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.876782, 3.489464, 3.118387>,  <1.491083, 3.202591, 3.406719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.876782, 3.489464, 3.118387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.039024, 3.719536, 3.402542>,  <1.136369, 3.857579, 3.573035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.039024, 3.719536, 3.402542>,  <0.876782, 3.489464, 3.118387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.039024, 3.719536, 3.402542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107882, 0.741633, -0.662074,
		-0.907660, 0.345178, 0.238758,
		0.405605, 0.575180, 0.710389,
		1.160706, 3.892090, 3.615659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.574557, 5.617343, 2.559381> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.721928, 5.639679, 2.930573>,  <1.810350, 5.653080, 3.153287>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.721928, 5.639679, 2.930573>,  <1.574557, 5.617343, 2.559381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.721928, 5.639679, 2.930573> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480887, -0.842828, 0.241637,
		0.795620, -0.535278, -0.283667,
		0.368426, 0.055839, 0.927979,
		1.832455, 5.656431, 3.208966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.755129, 5.019152, 2.756006>,  <1.574557, 5.617343, 2.559381>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.755129, 5.019152, 2.756006> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.661507, 5.197800, 3.101433>,  <1.605333, 5.304988, 3.308689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.661507, 5.197800, 3.101433>,  <1.755129, 5.019152, 2.756006>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.661507, 5.197800, 3.101433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491769, -0.820617, 0.291120,
		0.838678, -0.356538, 0.411703,
		-0.234056, 0.446619, 0.863568,
		1.591290, 5.331785, 3.360503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.092220, 4.711869, 3.366931>,  <1.755129, 5.019152, 2.756006>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.092220, 4.711869, 3.366931> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.747711, 4.857407, 3.508820>,  <1.541006, 4.944729, 3.593953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.747711, 4.857407, 3.508820>,  <2.092220, 4.711869, 3.366931>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.747711, 4.857407, 3.508820> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185907, -0.875298, 0.446422,
		0.472915, 0.318545, 0.821511,
		-0.861273, 0.363844, 0.354722,
		1.489329, 4.966560, 3.615236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.014766, 4.494158, 4.063344>,  <2.092220, 4.711869, 3.366931>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.014766, 4.494158, 4.063344> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637459, 4.556564, 3.946106>,  <1.411075, 4.594008, 3.875763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.637459, 4.556564, 3.946106>,  <2.014766, 4.494158, 4.063344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.637459, 4.556564, 3.946106> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309308, -0.733842, 0.604817,
		-0.120726, 0.661162, 0.740467,
		-0.943268, 0.156015, -0.293097,
		1.354478, 4.603369, 3.858177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.540309, 4.688006, 4.716485>,  <2.014766, 4.494158, 4.063344>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.540309, 4.688006, 4.716485> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.397263, 4.476578, 4.408531>,  <1.311435, 4.349720, 4.223759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.397263, 4.476578, 4.408531>,  <1.540309, 4.688006, 4.716485>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.397263, 4.476578, 4.408531> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232394, -0.748099, 0.621563,
		-0.904491, 0.401197, 0.144695,
		-0.357615, -0.528572, -0.769885,
		1.289978, 4.318007, 4.177566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.811125, 4.478937, 4.857267>,  <1.540309, 4.688006, 4.716485>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.811125, 4.478937, 4.857267> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.947460, 4.233810, 4.572090>,  <1.029261, 4.086735, 4.400984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.947460, 4.233810, 4.572090>,  <0.811125, 4.478937, 4.857267>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.947460, 4.233810, 4.572090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388168, -0.782425, 0.486968,
		-0.856245, 0.110765, -0.504555,
		0.340838, -0.612816, -0.712942,
		1.049712, 4.049966, 4.358208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.310369, 4.058311, 4.763655>,  <0.811125, 4.478937, 4.857267>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.310369, 4.058311, 4.763655> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.625446, 3.852158, 4.628647>,  <0.814493, 3.728466, 4.547642>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.625446, 3.852158, 4.628647>,  <0.310369, 4.058311, 4.763655>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.625446, 3.852158, 4.628647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248939, -0.767414, 0.590851,
		-0.563532, -0.381388, -0.732786,
		0.787693, -0.515382, -0.337520,
		0.861754, 3.697543, 4.527390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.089021, 3.380253, 4.647021>,  <0.310369, 4.058311, 4.763655>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.089021, 3.380253, 4.647021> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485626, 3.389374, 4.698219>,  <0.723589, 3.394846, 4.728938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.485626, 3.389374, 4.698219>,  <0.089021, 3.380253, 4.647021>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.485626, 3.389374, 4.698219> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049513, -0.844085, 0.533918,
		0.120212, -0.535724, -0.835793,
		0.991513, 0.022801, 0.127995,
		0.783080, 3.396214, 4.736618>
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
